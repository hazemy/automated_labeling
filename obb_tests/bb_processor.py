
import pcl
from pcl.pcl_visualization import *
from pyquaternion import Quaternion
import numpy as np
import open3d as o3d
from math import sin, cos, tan

def main():
    points = [[1,2,3], [5,3,6], [6,4,3], [3,7,2], [2,3,1], [4,5,6]]
    pc = pcl.PointCloud(points)
    feature_extractor = pc.make_MomentOfInertiaEstimation()
    # feature_extractor.setInputCloud (cloud)
    feature_extractor.compute()

    # std::vector <float> moment_of_inertia;
    # std::vector <float> eccentricity;
    # pcl::PointXYZ min_point_AABB;
    # pcl::PointXYZ max_point_AABB;
    # pcl::PointXYZ min_point_OBB;
    # pcl::PointXYZ max_point_OBB;
    # pcl::PointXYZ position_OBB;
    # Eigen::Matrix3f rotational_matrix_OBB;
    # float major_value, middle_value, minor_value;
    # Eigen::Vector3f major_vector, middle_vector, minor_vector;
    # Eigen::Vector3f mass_center;
    #
    # feature_extractor.getMomentOfInertia (moment_of_inertia);
    # feature_extractor.getEccentricity (eccentricity);
    # feature_extractor.getAABB (min_point_AABB, max_point_AABB);
    # feature_extractor.getOBB (min_point_OBB, max_point_OBB, position_OBB, rotational_matrix_OBB);
    # feature_extractor.getEigenValues (major_value, middle_value, minor_value);
    # feature_extractor.getEigenVectors (major_vector, middle_vector, minor_vector);
    # feature_extractor.getMassCenter (mass_center);
    ###
    moment_of_inertia = feature_extractor.get_MomentOfInertia()
    eccentricity = feature_extractor.get_Eccentricity()
    [min_point_AABB, max_point_AABB] = feature_extractor.get_AABB()
    [min_point_OBB, max_point_OBB, position_OBB, rotational_matrix_OBB] = feature_extractor.get_OBB()
    [major_value, middle_value, minor_value] = feature_extractor.get_EigenValues()
    [major_vector, middle_vector, minor_vector] = feature_extractor.get_EigenVectors()
    mass_center = feature_extractor.get_MassCenter()

    # View
    # boost::shared_ptr<pcl::visualization::PCLVisualizer> viewer (new pcl::visualization::PCLVisualizer ("3D Viewer"));
    # viewer->setBackgroundColor (0, 0, 0);
    # viewer->addCoordinateSystem (1.0);
    # viewer->initCameraParameters ();
    # viewer->addPointCloud<pcl::PointXYZ> (cloud, "sample cloud");
    # viewer->addCube (min_point_AABB.x, max_point_AABB.x, min_point_AABB.y, max_point_AABB.y, min_point_AABB.z, max_point_AABB.z, 1.0, 1.0, 0.0, "AABB");
    ###
    viewer = pcl.pcl_visualization.PCLVisualizering()
    viewer.SetBackgroundColor(0, 0, 0)
    viewer.AddCoordinateSystem(1.0)
    viewer.SetPointCloudRenderingProperties(pcl.pcl_visualization.PCLVISUALIZER_POINT_SIZE, 17, bytes(0))
    pccolor = pcl.pcl_visualization.PointCloudColorHandleringCustom(pc, 255,255,255)
    viewer.AddPointCloud_ColorHandler(pc, pccolor, bytes(0))

    #viewer.AddPointCloud(pc)
    # viewer->InitCameraParameters()
    # viewer->AddPointCloud (cloud, 'sample cloud', 0)
    # viewer->AddPointCloud(cloud)
    # viewer.AddCube(min_point_AABB.x, max_point_AABB.x, min_point_AABB.y,
    #                max_point_AABB.y, min_point_AABB.z, max_point_AABB.z, 1.0, 1.0, 0.0, "AABB")
    # print(min_point_AABB)
    viewer.AddCube(min_point_AABB[0][0], max_point_AABB[0][0], min_point_AABB[0][1],
                    max_point_AABB[0][1], min_point_AABB[0][2], max_point_AABB[0][2], 0.0, 0.0, 1.0, "AABB")
    
    min_point_OBB_x = min_point_OBB[0][0]
    min_point_OBB_y = min_point_OBB[0][1]
    min_point_OBB_z = min_point_OBB[0][2]
    max_point_OBB_x = max_point_OBB[0][0]
    max_point_OBB_y = max_point_OBB[0][1]
    max_point_OBB_z = max_point_OBB[0][2]

    corner_1_obb = min_point_OBB[0]
    corner_2_obb = [min_point_OBB_x, max_point_OBB_y, min_point_OBB_z]
    corner_3_obb = [min_point_OBB_x, max_point_OBB_y, max_point_OBB_z]
    corner_4_obb = [min_point_OBB_x, min_point_OBB_y, max_point_OBB_z]
    corner_5_obb = [max_point_OBB_x, min_point_OBB_y, min_point_OBB_z]
    corner_6_obb = [max_point_OBB_x, max_point_OBB_y, min_point_OBB_z]
    corner_7_obb = max_point_OBB[0]
    corner_8_obb = [max_point_OBB_x, min_point_OBB_y, max_point_OBB_z]
    
    corners = np.array([corner_1_obb, corner_2_obb, corner_3_obb, corner_4_obb, corner_5_obb, corner_6_obb, corner_7_obb, corner_8_obb]).reshape((8,3))
    #print('corners = {}'.format(corners))
    corners_rot = np.matmul(corners, rotational_matrix_OBB)
    #print('corners_rot = {}'.format(corners_rot))
    corners_obb = corners_rot + position_OBB
    #print('position obb = {}'.format(position_OBB))
    #print('corners_obb = {}'.format(corners_obb))

    obb = pcl.PointCloud(corners_obb)
    viewer.SetPointCloudRenderingProperties(pcl.pcl_visualization.PCLVISUALIZER_POINT_SIZE, 17, bytes(1))
    pccolor = pcl.pcl_visualization.PointCloudColorHandleringCustom(obb, 0,255,0)
    viewer.AddPointCloud_ColorHandler(obb, pccolor, bytes(4))


    min_point_AABB_x = min_point_AABB[0][0]
    min_point_AABB_y = min_point_AABB[0][1]
    min_point_AABB_z = min_point_AABB[0][2]
    max_point_AABB_x = max_point_AABB[0][0]
    max_point_AABB_y = max_point_AABB[0][1]
    max_point_AABB_z = max_point_AABB[0][2]

    corner_1_aabb = min_point_AABB[0]
    corner_2_aabb = [min_point_AABB_x, max_point_AABB_y, min_point_AABB_z]
    corner_3_aabb = [min_point_AABB_x, max_point_AABB_y, max_point_AABB_z]
    corner_4_aabb = [min_point_AABB_x, min_point_AABB_y, max_point_AABB_z]
    corner_5_aabb = [max_point_AABB_x, min_point_AABB_y, min_point_AABB_z]
    corner_6_aabb = [max_point_AABB_x, max_point_AABB_y, min_point_AABB_z]
    corner_7_aabb = max_point_AABB[0]
    corner_8_aabb = [max_point_AABB_x, min_point_AABB_y, max_point_AABB_z]
    
    corners_aabb = np.array([corner_1_aabb, corner_2_aabb, corner_3_aabb, corner_4_aabb, \
        corner_5_aabb, corner_6_aabb, corner_7_aabb, corner_8_aabb]).reshape((8,3))

    ######


    cloud_test = o3d.geometry.PointCloud()
    cloud_test.points = o3d.utility.Vector3dVector(points)
    colors_arr = np.array([[255],[0],[255]])
    cloud_test.paint_uniform_color(colors_arr)
    o3d_obb_instance = o3d.geometry.OrientedBoundingBox()
    o3d_obb = o3d_obb_instance.create_from_points(cloud_test.points)
    o3d_obb_color = np.array([[0],[0],[255]])
    o3d_obb.color = o3d_obb_color
    o3d_aabb_instance = o3d.geometry.AxisAlignedBoundingBox()
    # aabb_color = (colors_arr.astype(float)) / 255.0
    # o3d_aabb_instance.color = aabb_color
    o3d_aabb = o3d_aabb_instance.create_from_points(cloud_test.points)
    o3d_aabb_color = np.array([[255],[0],[0]])
    o3d_aabb.color = o3d_aabb_color
    #o3d_aabb = cloud_test.get_axis_aligned_bounding_box()
    mesh_frame = o3d.geometry.TriangleMesh.create_coordinate_frame(size=0.8, origin=[0, 0, 0])


    pcl_lines = [
        [0, 1],
        [0, 3],
        [1, 2],
        [2, 3],
        [0, 4],
        [1, 5],
        [3, 7],
        [2, 6],
        [4, 5],
        [4, 7],
        [5, 6],
        [6, 7],
    ]
    colors_obb = [[1, 0, 0] for i in range(len(pcl_lines))]
    pcl_obb_line_set = o3d.geometry.LineSet(
        points=o3d.utility.Vector3dVector(corners_obb),
        lines=o3d.utility.Vector2iVector(pcl_lines),
    )
    pcl_obb_line_set.colors = o3d.utility.Vector3dVector(colors_obb)


    colors_aabb = [[0, 1, 0] for i in range(len(pcl_lines))]
    pcl_aabb_line_set = o3d.geometry.LineSet(
        points=o3d.utility.Vector3dVector(corners_aabb),
        lines=o3d.utility.Vector2iVector(pcl_lines),
    )
    pcl_aabb_line_set.colors = o3d.utility.Vector3dVector(colors_aabb)
    #o3d.visualization.draw_geometries([cloud_test, o3d_obb, o3d_aabb, pcl_aabb_line_set, pcl_obb_line_set, mesh_frame])


    desired_rot = np.array([[cos(0.78), -sin(0.78), 0], [sin(0.78), cos(0.78), 0], [0, 0, 1]])
    o3d_aabb_converted = o3d.geometry.OrientedBoundingBox().create_from_axis_aligned_bounding_box(o3d_aabb)
    o3d_aabb_rotated = o3d_aabb_converted.rotate(desired_rot)
    o3d.visualization.draw_geometries([cloud_test, o3d_aabb_rotated, o3d_aabb, mesh_frame])


    #o3d_aabb_instance_mod = o3d.geometry.AxisAlignedBoundingBox()
    #o3d_aabb_mod = o3d_aabb_instance_mod.create_from_points(cloud_test.points)
    #print(np.asarray(o3d_aabb_mod.get_box_points()))
    

    # o3d_aabb_corners = np.asarray(o3d_aabb.get_box_points())
    # o3d_aabb_corners_rot = np.matmul(o3d_aabb_corners, desired_rot)
    # aabb_lines = [
    #     [0, 1],
    #     [0, 2],
    #     [1, 3],
    #     [2, 3],
    #     [4, 5],
    #     [4, 6],
    #     [5, 7],
    #     [6, 7],
    #     [0, 4],
    #     [1, 5],
    #     [2, 6],
    #     [3, 7],
    # ]
    # o3d_aabb_rot_colors = [[0, 1, 0] for i in range(len(pcl_lines))]
    # o3d_aabb_rot_line_set = o3d.geometry.LineSet(
    #     points=o3d.utility.Vector3dVector(o3d_aabb_corners_rot),
    #     lines=o3d.utility.Vector2iVector(pcl_lines),
    # )
    # o3d_aabb_rot_line_set.colors = o3d.utility.Vector3dVector(o3d_aabb_rot_colors)
    # o3d.visualization.draw_geometries([cloud_test, o3d_aabb_rot_line_set, o3d_aabb, mesh_frame])



    #######

    # Eigen::Vector3f position (position_OBB.x, position_OBB.y, position_OBB.z);
    # Eigen::Quaternionf quat (rotational_matrix_OBB);
    # viewer->addCube (position, quat, max_point_OBB.x - min_point_OBB.x, max_point_OBB.y - min_point_OBB.y, max_point_OBB.z - min_point_OBB.z, "OBB");

    #print(rotational_matrix_OBB)
    #quat = Quaternion(matrix=rotational_matrix_OBB)
    # viewer.AddCube(position_OBB, quat, max_point_OBB[0][0] - min_point_OBB[0][0], max_point_OBB[0][1] - min_point_OBB[0][1],\
    #      max_point_OBB[0][2] - min_point_OBB[0][2], 1.0, 1.0, 0.0, "OBB")
    #min_point_OBB_mod = rotational_matrix_OBB.dot(np.transpose(min_point_OBB + position_OBB))
    #max_point_OBB_mod = rotational_matrix_OBB.dot(np.transpose(max_point_OBB + position_OBB))
    #print(rotational_matrix_OBB)
    #print(np.transpose(min_point_OBB + position_OBB))
    #print(min_point_OBB_mod)
    #print(max_point_OBB_mod)
    #viewer.AddCube(min_point_OBB_mod[0][0], max_point_OBB_mod[0][0], min_point_OBB_mod[1][0],
    #               max_point_OBB_mod[1][0], min_point_OBB_mod[2][0], max_point_OBB_mod[2][0], 1.0, 1.0, 0.0, "OBB")

    # pcl::PointXYZ center (mass_center (0), mass_center (1), mass_center (2));
    # pcl::PointXYZ x_axis (major_vector (0) + mass_center (0), major_vector (1) + mass_center (1), major_vector (2) + mass_center (2));
    # pcl::PointXYZ y_axis (middle_vector (0) + mass_center (0), middle_vector (1) + mass_center (1), middle_vector (2) + mass_center (2));
    # pcl::PointXYZ z_axis (minor_vector (0) + mass_center (0), minor_vector (1) + mass_center (1), minor_vector (2) + mass_center (2));
    # viewer->addLine (center, x_axis, 1.0f, 0.0f, 0.0f, "major eigen vector");
    # viewer->addLine (center, y_axis, 0.0f, 1.0f, 0.0f, "middle eigen vector");
    # viewer->addLine (center, z_axis, 0.0f, 0.0f, 1.0f, "minor eigen vector");

    # center = pcl.PointCloud(mass_center[0], mass_center[1], mass_center[2])
    # x_axis = pcl.PointCloud(
    #     major_vector[0] + mass_center[0], major_vector[1] + mass_center[1], major_vector[2] + mass_center[2])
    # y_axis = pcl.PointCloud(middle_vector[0] + mass_center[0],
    #                         middle_vector[1] + mass_center[1], middle_vector[2] + mass_center[2])
    # z_axis = pcl.PointCloud(
    #     minor_vector[0] + mass_center[0], minor_vector[1] + mass_center[1], minor_vector[2] + mass_center[2])

    #viewer.AddLine(center, x_axis, 1.0f, 0.0f, 0.0f, "major eigen vector")
    #viewer.AddLine(center, y_axis, 0.0f, 1.0f, 0.0f, "middle eigen vector")
    #viewer.AddLine(center, z_axis, 0.0f, 0.0f, 1.0f, "minor eigen vector")

    # while(!viewer->wasStopped())
    # {
    #     viewer->spinOnce (100);
    #     boost::this_thread::sleep (boost::posix_time::microseconds (100000));
    # }
    viewer.Spin()
    v = True
    while v:
        v = not(viewer.WasStopped())
    viewer.Close()
        # visual.spinOnce (100)
        # boost::this_thread::sleep (boost::posix_time::microseconds (100000));


if __name__ == "__main__":
    # import cProfile
    # cProfile.run('main()', sort='time')
    main()