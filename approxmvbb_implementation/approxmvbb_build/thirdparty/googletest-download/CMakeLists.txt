cmake_minimum_required(VERSION 2.8.2)

project(googletest-download NONE)


include(ExternalProject)
ExternalProject_Add(googletest-download
                    GIT_REPOSITORY;https://github.com/google/googletest.git;GIT_TAG;master;UPDATE_DISCONNECTED;1
                    SOURCE_DIR          "/home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/thirdparty/googletest-src"
                    BINARY_DIR          "/home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/thirdparty/googletest-build"
                    CONFIGURE_COMMAND   ""
                    BUILD_COMMAND       ""
                    INSTALL_COMMAND     ""
                    TEST_COMMAND        ""
)
