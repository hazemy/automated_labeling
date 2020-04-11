o3d_aabb_corners_rot = np.matmul(o3d_aabb_corners, desired_rot)
    # print(np.asarray(o3d_aabb_corners))
    # print(o3d_aabb_corners_rot)
    # colors_aabb_rot = [[0, 1, 0] for i in range(len(pcl_lines))]
    # o3d_aabb_rot_line_set = o3d.geometry.LineSet(
    #     points=o3d.utility.Vector3dVector(o3d_aabb_corners_rot),
    #     lines=o3d.utility.Vector2iVector(pcl_lines),
    # )
    # o3d_aabb_rot_line_set.colors = o3d.utility.Vector3dVector(colors_aabb_rot)
    # o3d.visualization.draw_geometries([cloud_test, o3d_aabb_rot_line_set, o3d_aabb, mesh_frame])
