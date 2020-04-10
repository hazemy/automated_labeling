
import pcl
from pcl.pcl_visualization import *
from pyquaternion import Quaternion
import numpy as np


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

    corner_1 = min_point_OBB[0]
    corner_2 = [min_point_OBB_x, max_point_OBB_y, min_point_OBB_z]
    corner_3 = [min_point_OBB_x, max_point_OBB_y, max_point_OBB_z]
    corner_4 = [min_point_OBB_x, min_point_OBB_y, max_point_OBB_z]
    corner_5 = [max_point_OBB_x, min_point_OBB_y, min_point_OBB_z]
    corner_6 = [max_point_OBB_x, max_point_OBB_y, min_point_OBB_z]
    corner_7 = max_point_OBB[0]
    corner_8 = [max_point_OBB_x, min_point_OBB_y, max_point_OBB_z]
    
    corners = np.array([corner_1, corner_2, corner_3, corner_4, corner_5, corner_6, corner_7, corner_8]).reshape((8,3))
    print('corners = {}'.format(corners))
    corners_rot = np.matmul(corners, rotational_matrix_OBB)
    print('corners_rot = {}'.format(corners_rot))
    corners_obb = corners_rot + position_OBB
    print('position obb = {}'.format(position_OBB))
    print('corners_obb = {}'.format(corners_obb))

    obb = pcl.PointCloud(corners_obb)
    viewer.SetPointCloudRenderingProperties(pcl.pcl_visualization.PCLVISUALIZER_POINT_SIZE, 17, bytes(1))
    pccolor = pcl.pcl_visualization.PointCloudColorHandleringCustom(obb, 0,255,0)
    viewer.AddPointCloud_ColorHandler(obb, pccolor, bytes(4))

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