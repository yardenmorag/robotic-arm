% Simscape(TM) Multibody(TM) version: 25.1

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:smiData


%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(13).translation = [0.0 0.0 0.0];
smiData.RigidTransform(13).angle = 0.0;
smiData.RigidTransform(13).axis = [0.0 0.0 0.0];
smiData.RigidTransform(13).ID = "";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [7.9296874999999973 25.375000000000007 25.375000000000007];  % mm
smiData.RigidTransform(1).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(1).axis = [-0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(1).ID = "B[Lower arm-1:-:Lower joint-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [7.9296875000000249 76.124999999999972 25.374999999999986];  % mm
smiData.RigidTransform(2).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(2).axis = [-0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(2).ID = "F[Lower arm-1:-:Lower joint-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [54.596890984120499 25.375000000000007 76.125];  % mm
smiData.RigidTransform(3).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(3).axis = [0.57735026918962584 0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(3).ID = "B[Lower joint-1:-:Upper arm-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [54.596890984120506 25.374999997979444 25.374999999999972];  % mm
smiData.RigidTransform(4).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(4).axis = [0.57735026918962584 0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(4).ID = "F[Lower joint-1:-:Upper arm-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [0 0 99.049999999999997];  % mm
smiData.RigidTransform(5).angle = 0;  % rad
smiData.RigidTransform(5).axis = [0 0 0];
smiData.RigidTransform(5).ID = "B[Base frame-1:-:Base rotator-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(6).translation = [0 0 -1.7999999999999972];  % mm
smiData.RigidTransform(6).angle = 0;  % rad
smiData.RigidTransform(6).axis = [0 0 0];
smiData.RigidTransform(6).ID = "F[Base frame-1:-:Base rotator-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(7).translation = [31.263289242060303 0 33.774999999999999];  % mm
smiData.RigidTransform(7).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(7).axis = [0.57735026918962584 0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(7).ID = "B[Base rotator-2:-:Lower arm-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(8).translation = [-9.2370555648813024e-14 101.49999999999717 25.375000000000014];  % mm
smiData.RigidTransform(8).angle = 2.0943951023932001;  % rad
smiData.RigidTransform(8).axis = [-0.57735026918962262 -0.57735026918962729 0.57735026918962729];
smiData.RigidTransform(8).ID = "F[Base rotator-2:-:Lower arm-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(9).translation = [54.596890984120499 101.50000001487201 25.375000000000007];  % mm
smiData.RigidTransform(9).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(9).axis = [0.57735026918962584 0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(9).ID = "B[Upper arm-1:-:Upper joint-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(10).translation = [54.59689098412052 25.374999999999915 25.374999999999972];  % mm
smiData.RigidTransform(10).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(10).axis = [0.57735026918962584 0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(10).ID = "F[Upper arm-1:-:Upper joint-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(11).translation = [31.263289242060303 81.192187500000003 25.375000000000007];  % mm
smiData.RigidTransform(11).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(11).axis = [-0.57735026918962584 -0.57735026918962584 -0.57735026918962584];
smiData.RigidTransform(11).ID = "B[Upper joint-1:-:Gripper part-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(12).translation = [-8.5510471925935601e-14 -6.6613381477509392e-13 -6.1999999999999815];  % mm
smiData.RigidTransform(12).angle = 1.1102230246251565e-16;  % rad
smiData.RigidTransform(12).axis = [-1 1.8873791418627661e-15 -1.0477058897466563e-31];
smiData.RigidTransform(12).ID = "F[Upper joint-1:-:Gripper part-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(13).translation = [0 0 0];  % mm
smiData.RigidTransform(13).angle = 0;  % rad
smiData.RigidTransform(13).axis = [0 0 0];
smiData.RigidTransform(13).ID = "RootGround[Base frame-1]";


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(7).mass = 0.0;
smiData.Solid(7).CoM = [0.0 0.0 0.0];
smiData.Solid(7).MoI = [0.0 0.0 0.0];
smiData.Solid(7).PoI = [0.0 0.0 0.0];
smiData.Solid(7).color = [0.0 0.0 0.0];
smiData.Solid(7).opacity = 0.0;
smiData.Solid(7).ID = "";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 0.030825379210626027;  % kg
smiData.Solid(1).CoM = [32.425910333307883 55.388594002384615 25.226654393513456];  % mm
smiData.Solid(1).MoI = [24.905327309378318 20.937114654829109 30.852362108849803];  % kg*mm^2
smiData.Solid(1).PoI = [0.05319734044150725 -0.0058734584447453532 1.0746825066708299];  % kg*mm^2
smiData.Solid(1).color = [0.62745098039215685 0.62745098039215685 0.62745098039215685];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = "Upper joint*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 0.10564515338560983;  % kg
smiData.Solid(2).CoM = [33.270324474570906 65.161597121148731 18.909639975890482];  % mm
smiData.Solid(2).MoI = [153.97851336245435 62.955274826331461 159.77925701607987];  % kg*mm^2
smiData.Solid(2).PoI = [-1.5034318386616716 1.606391383748067 -12.540060006605934];  % kg*mm^2
smiData.Solid(2).color = [0.62745098039215685 0.62745098039215685 0.62745098039215685];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = "Lower arm*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 0.10166182234403043;  % kg
smiData.Solid(3).CoM = [-1.066921664015577 -0.0054441440761788043 14.34495714106024];  % mm
smiData.Solid(3).MoI = [179.86167325515771 241.88380303426018 363.63006378837639];  % kg*mm^2
smiData.Solid(3).PoI = [-0.0077322040530218589 2.1269373652546286 0.00016375570282834882];  % kg*mm^2
smiData.Solid(3).color = [0.62745098039215685 0.62745098039215685 0.62745098039215685];
smiData.Solid(3).opacity = 1;
smiData.Solid(3).ID = "Base rotator*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(4).mass = 0.056164122368797059;  % kg
smiData.Solid(4).CoM = [29.06875910420252 38.952097586541903 38.805548552125344];  % mm
smiData.Solid(4).MoI = [81.864260666178112 76.267039251329265 76.462629313151879];  % kg*mm^2
smiData.Solid(4).PoI = [10.555857887754213 1.3440677215006596 1.5822358098187568];  % kg*mm^2
smiData.Solid(4).color = [0.62745098039215685 0.62745098039215685 0.62745098039215685];
smiData.Solid(4).opacity = 1;
smiData.Solid(4).ID = "Lower joint*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(5).mass = 0.097760154215267819;  % kg
smiData.Solid(5).CoM = [31.262345682334221 63.435556187267288 18.32879240789682];  % mm
smiData.Solid(5).MoI = [140.61677985332227 47.760748211400056 137.5703736840214];  % kg*mm^2
smiData.Solid(5).PoI = [0.0013122125114753979 0.00055965930290999689 -7.5727656344853438];  % kg*mm^2
smiData.Solid(5).color = [0.62745098039215685 0.62745098039215685 0.62745098039215685];
smiData.Solid(5).opacity = 1;
smiData.Solid(5).ID = "Upper arm*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(6).mass = 0.2767694344912327;  % kg
smiData.Solid(6).CoM = [0.028884152945066934 -6.8063771332416492 54.219517412267358];  % mm
smiData.Solid(6).MoI = [1064.6267273992019 939.81031504649536 1270.2812552070491];  % kg*mm^2
smiData.Solid(6).PoI = [-52.075715417610482 -0.86905772187282393 0.46101297820537923];  % kg*mm^2
smiData.Solid(6).color = [0.62745098039215685 0.62745098039215685 0.62745098039215685];
smiData.Solid(6).opacity = 1;
smiData.Solid(6).ID = "Base frame*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(7).mass = 0.040809118440249675;  % kg
smiData.Solid(7).CoM = [4.3486672831825541e-10 -1.1506707363250304 16.379968354949014];  % mm
smiData.Solid(7).MoI = [14.288832612837972 10.672207086072847 11.990402902841147];  % kg*mm^2
smiData.Solid(7).PoI = [0.11090140039656715 -2.1954417564475546e-09 0];  % kg*mm^2
smiData.Solid(7).color = [0.62745098039215685 0.62745098039215685 0.62745098039215685];
smiData.Solid(7).opacity = 1;
smiData.Solid(7).ID = "Gripper part*:*Default";


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the RevoluteJoint structure array by filling in null values.
smiData.RevoluteJoint(6).Rz.Pos = 0.0;
smiData.RevoluteJoint(6).ID = "";

smiData.RevoluteJoint(1).Rz.Pos = 0;  % deg
smiData.RevoluteJoint(1).ID = "[Lower arm-1:-:Lower joint-1]";

smiData.RevoluteJoint(2).Rz.Pos = 180;  % deg
smiData.RevoluteJoint(2).ID = "[Lower joint-1:-:Upper arm-1]";

smiData.RevoluteJoint(3).Rz.Pos = 1800;  % deg
smiData.RevoluteJoint(3).ID = "[Base frame-1:-:Base rotator-2]";

smiData.RevoluteJoint(4).Rz.Pos = 0;  % deg
smiData.RevoluteJoint(4).ID = "[Base rotator-2:-:Lower arm-1]";

smiData.RevoluteJoint(5).Rz.Pos = 0;  % deg
smiData.RevoluteJoint(5).ID = "[Upper arm-1:-:Upper joint-1]";

smiData.RevoluteJoint(6).Rz.Pos = 180;  % deg
smiData.RevoluteJoint(6).ID = "[Upper joint-1:-:Gripper part-1]";

