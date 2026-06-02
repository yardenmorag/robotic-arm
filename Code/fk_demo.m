% demo_fk.m — minimal test for fk_move
urdf = "G:\My Drive\פרוייקטים\Robot Arm Project\SImulation\URDF_mesh3\urdf\URDF_mesh3.urdf";

% First call: load robot and move to a pose (degrees)
[T1, q1] = fk_move([0 -180 0 180 0 0], 'Units','deg', 'URDF', urdf, 'Animate', true);

% Move again (no URDF needed now)
[T2, q2] = fk_move([90 -180 0 180 0 0], 'Units','deg');

[T3, q3] = fk_move([-90 -180 0 180 0 0], 'Units','deg');

[T4, q4] = fk_move([0 0 0 0 0 0], 'Units','deg');

[T5, q5] = fk_move([0 -90 0 180 0 0], 'Units','deg');

fk_move(zeros(1,6), 'Units','deg');

disp('EE pose at first command:'); disp(T1);
disp('EE pose at last command:'); disp(T2);
disp('EE pose at last command:'); disp(T3);
disp('EE pose at last command:'); disp(T4);