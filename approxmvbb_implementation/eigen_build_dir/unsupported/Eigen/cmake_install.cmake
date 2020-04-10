# Install script for directory: /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen/unsupported/Eigen

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Devel")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/unsupported/Eigen" TYPE FILE FILES
    "/home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen/unsupported/Eigen/AdolcForward"
    "/home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen/unsupported/Eigen/AlignedVector3"
    "/home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen/unsupported/Eigen/ArpackSupport"
    "/home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen/unsupported/Eigen/AutoDiff"
    "/home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen/unsupported/Eigen/BVH"
    "/home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen/unsupported/Eigen/EulerAngles"
    "/home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen/unsupported/Eigen/FFT"
    "/home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen/unsupported/Eigen/IterativeSolvers"
    "/home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen/unsupported/Eigen/KroneckerProduct"
    "/home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen/unsupported/Eigen/LevenbergMarquardt"
    "/home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen/unsupported/Eigen/MatrixFunctions"
    "/home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen/unsupported/Eigen/MoreVectorization"
    "/home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen/unsupported/Eigen/MPRealSupport"
    "/home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen/unsupported/Eigen/NonLinearOptimization"
    "/home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen/unsupported/Eigen/NumericalDiff"
    "/home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen/unsupported/Eigen/OpenGLSupport"
    "/home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen/unsupported/Eigen/Polynomials"
    "/home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen/unsupported/Eigen/Skyline"
    "/home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen/unsupported/Eigen/SparseExtra"
    "/home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen/unsupported/Eigen/SpecialFunctions"
    "/home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen/unsupported/Eigen/Splines"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Devel")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/unsupported/Eigen" TYPE DIRECTORY FILES "/home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen/unsupported/Eigen/src" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen_build_dir/unsupported/Eigen/CXX11/cmake_install.cmake")

endif()

