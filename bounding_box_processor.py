import pcl
from pcl.pcl_visualization import *
import numpy as np


def show_wait_pc(pc, OBB=None):
    viewer = pcl.pcl_visualization.PCLVisualizering()
    viewer.AddCoordinateSystem(0.2)
    viewer.AddPointCloud(pc)
    if OBB:
        min_point_OBB = OBB[0]
        max_point_OBB = OBB[1]
        #viewer.AddCube(min_point_AABB[0][1], max_point_AABB[0][0], min_point_AABB[0][1],
        #           max_point_AABB[0][1], min_point_AABB[0][2], max_point_AABB[0][2], 1.0, 1.0, 0.0, "AABB")
        viewer.AddCube(min_point_OBB[0][1], max_point_OBB[0][0], min_point_OBB[0][1],
                   max_point_OBB[0][1], min_point_OBB[0][2], max_point_OBB[0][2], 1.0, 1.0, 0.0, "OBB")
    viewer.Spin()
    v = True
    while v:
        v = not(viewer.WasStopped())
    viewer.Close()

def main():
    points = [[1,2,3], [5,3,6], [6,4,3], [3,7,2], [2,3,1]]
    pc = pcl.PointCloud(points)
    feature_extractor = pc.make_MomentOfInertiaEstimation()
    feature_extractor.compute()
    ## extension (width) along major and minor axis
    #[min_point_AABB, max_point_AABB] = feature_extractor.get_AABB()
    [min_point_OBB, max_point_OBB, position_OBB, rotational_matrix_OBB] = feature_extractor.get_OBB()
    show_wait_pc(pc, (min_point_OBB, max_point_OBB))

if __name__ == "__main__":
    main()
