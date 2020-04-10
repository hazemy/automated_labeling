# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Produce verbose output by default.
VERBOSE = 1

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/cmake-3.17.0-Linux-x86_64/bin/cmake

# The command to remove a file.
RM = /opt/cmake-3.17.0-Linux-x86_64/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_src/ApproxMVBB

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build

# Include any dependencies generated for this target.
include tests/CMakeFiles/ApproxMVBBTest-ConvexHull.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/ApproxMVBBTest-ConvexHull.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/ApproxMVBBTest-ConvexHull.dir/flags.make

tests/CMakeFiles/ApproxMVBBTest-ConvexHull.dir/src/CommonFunctions.cpp.o: tests/CMakeFiles/ApproxMVBBTest-ConvexHull.dir/flags.make
tests/CMakeFiles/ApproxMVBBTest-ConvexHull.dir/src/CommonFunctions.cpp.o: /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_src/ApproxMVBB/tests/src/CommonFunctions.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/ApproxMVBBTest-ConvexHull.dir/src/CommonFunctions.cpp.o"
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/tests && ccache /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ApproxMVBBTest-ConvexHull.dir/src/CommonFunctions.cpp.o -c /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_src/ApproxMVBB/tests/src/CommonFunctions.cpp

tests/CMakeFiles/ApproxMVBBTest-ConvexHull.dir/src/CommonFunctions.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ApproxMVBBTest-ConvexHull.dir/src/CommonFunctions.cpp.i"
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_src/ApproxMVBB/tests/src/CommonFunctions.cpp > CMakeFiles/ApproxMVBBTest-ConvexHull.dir/src/CommonFunctions.cpp.i

tests/CMakeFiles/ApproxMVBBTest-ConvexHull.dir/src/CommonFunctions.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ApproxMVBBTest-ConvexHull.dir/src/CommonFunctions.cpp.s"
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_src/ApproxMVBB/tests/src/CommonFunctions.cpp -o CMakeFiles/ApproxMVBBTest-ConvexHull.dir/src/CommonFunctions.cpp.s

tests/CMakeFiles/ApproxMVBBTest-ConvexHull.dir/src/TestFunctions.cpp.o: tests/CMakeFiles/ApproxMVBBTest-ConvexHull.dir/flags.make
tests/CMakeFiles/ApproxMVBBTest-ConvexHull.dir/src/TestFunctions.cpp.o: /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_src/ApproxMVBB/tests/src/TestFunctions.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tests/CMakeFiles/ApproxMVBBTest-ConvexHull.dir/src/TestFunctions.cpp.o"
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/tests && ccache /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ApproxMVBBTest-ConvexHull.dir/src/TestFunctions.cpp.o -c /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_src/ApproxMVBB/tests/src/TestFunctions.cpp

tests/CMakeFiles/ApproxMVBBTest-ConvexHull.dir/src/TestFunctions.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ApproxMVBBTest-ConvexHull.dir/src/TestFunctions.cpp.i"
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_src/ApproxMVBB/tests/src/TestFunctions.cpp > CMakeFiles/ApproxMVBBTest-ConvexHull.dir/src/TestFunctions.cpp.i

tests/CMakeFiles/ApproxMVBBTest-ConvexHull.dir/src/TestFunctions.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ApproxMVBBTest-ConvexHull.dir/src/TestFunctions.cpp.s"
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_src/ApproxMVBB/tests/src/TestFunctions.cpp -o CMakeFiles/ApproxMVBBTest-ConvexHull.dir/src/TestFunctions.cpp.s

tests/CMakeFiles/ApproxMVBBTest-ConvexHull.dir/src/main_convexHullTests.cpp.o: tests/CMakeFiles/ApproxMVBBTest-ConvexHull.dir/flags.make
tests/CMakeFiles/ApproxMVBBTest-ConvexHull.dir/src/main_convexHullTests.cpp.o: /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_src/ApproxMVBB/tests/src/main_convexHullTests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object tests/CMakeFiles/ApproxMVBBTest-ConvexHull.dir/src/main_convexHullTests.cpp.o"
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/tests && ccache /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ApproxMVBBTest-ConvexHull.dir/src/main_convexHullTests.cpp.o -c /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_src/ApproxMVBB/tests/src/main_convexHullTests.cpp

tests/CMakeFiles/ApproxMVBBTest-ConvexHull.dir/src/main_convexHullTests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ApproxMVBBTest-ConvexHull.dir/src/main_convexHullTests.cpp.i"
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_src/ApproxMVBB/tests/src/main_convexHullTests.cpp > CMakeFiles/ApproxMVBBTest-ConvexHull.dir/src/main_convexHullTests.cpp.i

tests/CMakeFiles/ApproxMVBBTest-ConvexHull.dir/src/main_convexHullTests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ApproxMVBBTest-ConvexHull.dir/src/main_convexHullTests.cpp.s"
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_src/ApproxMVBB/tests/src/main_convexHullTests.cpp -o CMakeFiles/ApproxMVBBTest-ConvexHull.dir/src/main_convexHullTests.cpp.s

# Object files for target ApproxMVBBTest-ConvexHull
ApproxMVBBTest__ConvexHull_OBJECTS = \
"CMakeFiles/ApproxMVBBTest-ConvexHull.dir/src/CommonFunctions.cpp.o" \
"CMakeFiles/ApproxMVBBTest-ConvexHull.dir/src/TestFunctions.cpp.o" \
"CMakeFiles/ApproxMVBBTest-ConvexHull.dir/src/main_convexHullTests.cpp.o"

# External object files for target ApproxMVBBTest-ConvexHull
ApproxMVBBTest__ConvexHull_EXTERNAL_OBJECTS =

tests/ApproxMVBBTest-ConvexHull: tests/CMakeFiles/ApproxMVBBTest-ConvexHull.dir/src/CommonFunctions.cpp.o
tests/ApproxMVBBTest-ConvexHull: tests/CMakeFiles/ApproxMVBBTest-ConvexHull.dir/src/TestFunctions.cpp.o
tests/ApproxMVBBTest-ConvexHull: tests/CMakeFiles/ApproxMVBBTest-ConvexHull.dir/src/main_convexHullTests.cpp.o
tests/ApproxMVBBTest-ConvexHull: tests/CMakeFiles/ApproxMVBBTest-ConvexHull.dir/build.make
tests/ApproxMVBBTest-ConvexHull: lib/libApproxMVBBForTestsOnly.so.2.1.1
tests/ApproxMVBBTest-ConvexHull: lib/libgtest.a
tests/ApproxMVBBTest-ConvexHull: lib/libgmock_main.a
tests/ApproxMVBBTest-ConvexHull: lib/libgmock.a
tests/ApproxMVBBTest-ConvexHull: lib/libgtest.a
tests/ApproxMVBBTest-ConvexHull: tests/CMakeFiles/ApproxMVBBTest-ConvexHull.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable ApproxMVBBTest-ConvexHull"
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ApproxMVBBTest-ConvexHull.dir/link.txt --verbose=$(VERBOSE)
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/tests && /opt/cmake-3.17.0-Linux-x86_64/bin/cmake -E copy_directory /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_src/ApproxMVBB/tests/python/ /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build

# Rule to build all files generated by this target.
tests/CMakeFiles/ApproxMVBBTest-ConvexHull.dir/build: tests/ApproxMVBBTest-ConvexHull

.PHONY : tests/CMakeFiles/ApproxMVBBTest-ConvexHull.dir/build

tests/CMakeFiles/ApproxMVBBTest-ConvexHull.dir/clean:
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/tests && $(CMAKE_COMMAND) -P CMakeFiles/ApproxMVBBTest-ConvexHull.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/ApproxMVBBTest-ConvexHull.dir/clean

tests/CMakeFiles/ApproxMVBBTest-ConvexHull.dir/depend:
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_src/ApproxMVBB /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_src/ApproxMVBB/tests /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/tests /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/tests/CMakeFiles/ApproxMVBBTest-ConvexHull.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/ApproxMVBBTest-ConvexHull.dir/depend
