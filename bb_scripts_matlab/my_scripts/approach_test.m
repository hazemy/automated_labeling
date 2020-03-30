clc
clear
close all

%% Generate Points
num_points = 10;

X = rand(num_points,1)*10;
Y = rand(num_points,1)*10;
Z = rand(num_points,1)*10;
points3D = [X Y Z];

scatter3(X, Y, Z, 5, 'b', 'Marker', '.', 'SizeData', 100);

%% Min-Max Approach
offset_x = 1;
offset_y = 1;
offset_z = 1;

min_pt = min(points3D);
max_pt = max(points3D);

min_pt_mod = min_pt - [offset_x,offset_y,offset_z];
max_pt_mod = max_pt + [offset_x,offset_y,offset_z];
% min_pt_mod = min_pt;
% max_pt_mod = max_pt;
cube_size = max_pt - min_pt;
cube_size_mod = max_pt_mod - min_pt_mod;
% cube_size_mod = cube_size

corner_1 = min_pt_mod;
corner_2 = [min_pt_mod(1), min_pt_mod(2) + cube_size_mod(2), min_pt_mod(3)];
corner_3 = [min_pt_mod(1), min_pt_mod(2) + cube_size_mod(2), min_pt_mod(3) + cube_size_mod(3)];
corner_4 = [min_pt_mod(1), min_pt_mod(2), min_pt_mod(3) + cube_size_mod(3)];
corner_5 = [min_pt_mod(1) + cube_size_mod(1), min_pt_mod(2), min_pt_mod(3)];
corner_6 = [min_pt_mod(1) + cube_size_mod(1), min_pt_mod(2) + cube_size_mod(2), min_pt_mod(3)];
corner_7 = [min_pt_mod(1) + cube_size_mod(1), min_pt_mod(2) + cube_size_mod(2), min_pt_mod(3) + cube_size_mod(3)];
corner_8 = [min_pt_mod(1) + cube_size_mod(1), min_pt_mod(2), min_pt_mod(3) + cube_size_mod(3)];

corners_mat = [corner_1; corner_2; corner_3; corner_4; corner_5; corner_6; corner_7; corner_8];

% scatter3(corners_mat(:, 1), corners_mat(:, 2), corners_mat(:, 3), 5, 'y', 'Marker', '.', 'SizeData', 300);
plotcube(cube_size_mod, min_pt_mod, 0.5, [0, 1, 0]);

%% RANSAC
[model, CuboidParameters, inlierIndices, outlierIndices] = CuboidRANSAC( points3D );

scatter3(X(inlierIndices), Y(inlierIndices), Z(inlierIndices), 5, 'b', 'Marker', '.', 'SizeData', 100);
scatter3(X(outlierIndices), Y(outlierIndices), Z(outlierIndices), 5, 'r', 'Marker', '.', 'SizeData', 100);
DisplayModel(numel(inlierIndices), model);
% DisplayModel(numel(outlierIndices), model);

ransac_corners = model;

  