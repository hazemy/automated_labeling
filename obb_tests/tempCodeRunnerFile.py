import pcl
from pcl.pcl_visualization import *
from pyquaternion import Quaternion


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
    viewer.AddCoordinateSystem(0.2)
    viewer.AddPointCloud(pc)
    # viewer->InitCameraParameters()
    # viewer->AddPointCloud (cloud, 'sample cloud', 0)
    # viewer->AddPointCloud(cloud)
    # viewer.AddCube(min_point_AABB.x, max_point_AABB.x, min_point_AABB.y,
    #                max_point_AABB.y, min_point_AABB.z, max_point_AABB.z, 1.0, 1.0, 0.0, "AABB")
    # print(min_point_AABB)
    viewer.AddCube(min_point_AABB[0][0], max_point_AABB[0][0], min_point_AABB[0][1],
                    max_point_AABB[0][1], min_point_AABB[0][2], max_point_AABB[0][2], 1.0, 1.0, 0.0, "AABB")