function [T_0_ee, q_cmd] = fk_move(theta, varargin)
% fk_move  Move a URDF robot to given joint angles and return FK.
% Supports: 'Parent' axes, per-joint 'Sign' and 'OffsetDeg/OffsetRad',
% clamping, animation, and single-figure reuse.
%
% Example:
%   urdf = "C:\robot.urdf"; figure; ax = gca;
%   fk_move([30 0 45 0 0 0], 'Units','deg', 'URDF', urdf, 'Parent', ax);

persistent robot lims last_q ax eeName

% ---- Parse inputs ----
p = inputParser;
addParameter(p,'URDF','',@(s)isstring(s)||ischar(s));
addParameter(p,'Units','rad',@(s) any(strcmpi(s,{'rad','deg'})));
addParameter(p,'Clamp',true,@islogical);
addParameter(p,'Animate',true,@islogical);
addParameter(p,'Steps',50,@(x)isnumeric(x)&&isscalar(x)&&x>=1);
addParameter(p,'Figure',[],@(h) isempty(h) || ishghandle(h));   % legacy
addParameter(p,'Parent',[],@(h) isempty(h) || ishghandle(h));   % preferred
addParameter(p,'Fast',true,@islogical);
addParameter(p,'Sign',[],@(v) isnumeric(v));                    % scalar or 1×n
addParameter(p,'OffsetDeg',[],@(v) isnumeric(v));               % scalar or 1×n
addParameter(p,'OffsetRad',[],@(v) isnumeric(v));               % scalar or 1×n
parse(p,varargin{:});
opts = p.Results;

% ---- Load robot (first call or when URDF provided) ----
if isempty(robot) && isempty(opts.URDF)
    error('fk_move:NoRobot','First call must provide ''URDF'': fk_move(theta,''URDF'',''C:\robot.urdf'').');
end
if ~isempty(opts.URDF)
    robot = importrobot(string(opts.URDF), "DataFormat","row");
    if isprop(robot,'BodyNames'), eeName = robot.BodyNames{end};
    else, eeName = robot.Bodies{robot.NumBodies}.Name; end
    lims = localCollectLimits(robot);
    last_q = []; ax = [];
end

% ---- DOF / home ----
hc = homeConfiguration(robot);
if isstruct(hc) || isobject(hc), q_home = [hc.JointPosition]; else, q_home = hc; end
n = numel(q_home);

% ---- Validate theta ----
theta = reshape(theta,1,[]);
if numel(theta) ~= n
    error('fk_move:SizeMismatch','Expected %d joint values, got %d.', n, numel(theta));
end

% ---- Units -> radians (1×n) ----
if strcmpi(opts.Units,'deg'), q_cmd = deg2rad(theta);
else, q_cmd = theta; end
q_cmd = reshape(q_cmd,1,[]);

% ---- Build per-joint Sign and Offset (element-wise only) ----
% Sign
signv = ones(1,n);
if ~isempty(opts.Sign)
    s = reshape(opts.Sign,1,[]);
    if isscalar(s), signv = repmat(s,1,n);
    elseif numel(s)==n, signv = s;
    else, error('fk_move:SignSize','''Sign'' must be scalar or length %d.',n);
    end
end
% Offsets (prefer rad; convert deg if provided)
if ~isempty(opts.OffsetDeg), opts.OffsetRad = deg2rad(opts.OffsetDeg); end
offrad = zeros(1,n);
if ~isempty(opts.OffsetRad)
    o = reshape(opts.OffsetRad,1,[]);
    if isscalar(o), offrad = repmat(o,1,n);
    elseif numel(o)==n, offrad = o;
    else, error('fk_move:OffsetSize','Offset must be scalar or length %d.',n);
    end
end
% Apply element-wise (NO matrix multiply)
q_cmd = signv .* q_cmd + offrad;

% ---- Clamp to limits ----
if opts.Clamp && ~isempty(lims)
    q_cmd = min(max(q_cmd, lims(:,1).'), lims(:,2).');
end

% ---- Axes/figure selection ----
if ~isempty(opts.Parent) && ishghandle(opts.Parent)
    ax = opts.Parent;
elseif ~isempty(opts.Figure) && ishghandle(opts.Figure)
    figure(opts.Figure); ax = gca;
else
    if isempty(ax) || ~isvalid(ax)
        f = figure('Name','fk_move Robot','NumberTitle','off'); %#ok<NASGU>
        ax = gca;
    end
end

% ---- Initialize last_q ----
if isempty(last_q), last_q = q_home; end

% ---- Draw helper ----
    function localShow(q)
        if opts.Fast
            show(robot, q, 'Parent', ax, 'FastUpdate', true, 'PreservePlot', false);
        else
            show(robot, q, 'Parent', ax, 'PreservePlot', false);
        end
        axis(ax,'equal'); view(ax,3); drawnow;
    end

% ---- Animate or single draw ----
if opts.Animate
    steps = opts.Steps;
    for k = 1:steps
        qt = last_q + (q_cmd - last_q) * (k/steps);
        localShow(qt);
    end
else
    localShow(q_cmd);
end
last_q = q_cmd;

% ---- End-effector transform ----
T_0_ee = getTransform(robot, q_cmd, eeName);
end

% ===== helper: joint limits for movable joints =====
function lims = localCollectLimits(robot)
L = [];
for i = 1:robot.NumBodies
    jb = robot.Bodies{i}.Joint;
    if ~strcmpi(jb.Type,'fixed')
        try
            L = [L; reshape(jb.PositionLimits,1,2)]; %#ok<AGROW>
        catch
            if strcmpi(jb.Type,'revolute'),      L = [L; -pi, pi];
            elseif strcmpi(jb.Type,'prismatic'), L = [L; -inf, inf];
            else,                                 L = [L; -inf, inf];
            end
        end
    end
end
lims = L;
end
