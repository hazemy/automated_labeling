# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen_build_dir

# Include any dependencies generated for this target.
include test/CMakeFiles/redux_1.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/redux_1.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/redux_1.dir/flags.make

test/CMakeFiles/redux_1.dir/redux.cpp.o: test/CMakeFiles/redux_1.dir/flags.make
test/CMakeFiles/redux_1.dir/redux.cpp.o: /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen/test/redux.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen_build_dir/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/redux_1.dir/redux.cpp.o"
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen_build_dir/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/redux_1.dir/redux.cpp.o -c /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen/test/redux.cpp

test/CMakeFiles/redux_1.dir/redux.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/redux_1.dir/redux.cpp.i"
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen_build_dir/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen/test/redux.cpp > CMakeFiles/redux_1.dir/redux.cpp.i

test/CMakeFiles/redux_1.dir/redux.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/redux_1.dir/redux.cpp.s"
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen_build_dir/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen/test/redux.cpp -o CMakeFiles/redux_1.dir/redux.cpp.s

test/CMakeFiles/redux_1.dir/redux.cpp.o.requires:

.PHONY : test/CMakeFiles/redux_1.dir/redux.cpp.o.requires

test/CMakeFiles/redux_1.dir/redux.cpp.o.provides: test/CMakeFiles/redux_1.dir/redux.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/redux_1.dir/build.make test/CMakeFiles/redux_1.dir/redux.cpp.o.provides.build
.PHONY : test/CMakeFiles/redux_1.dir/redux.cpp.o.provides

test/CMakeFiles/redux_1.dir/redux.cpp.o.provides.build: test/CMakeFiles/redux_1.dir/redux.cpp.o


# Object files for target redux_1
redux_1_OBJECTS = \
"CMakeFiles/redux_1.dir/redux.cpp.o"

# External object files for target redux_1
redux_1_EXTERNAL_OBJECTS =

test/redux_1: test/CMakeFiles/redux_1.dir/redux.cpp.o
test/redux_1: test/CMakeFiles/redux_1.dir/build.make
test/redux_1: test/CMakeFiles/redux_1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen_build_dir/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable redux_1"
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen_build_dir/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/redux_1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/redux_1.dir/build: test/redux_1

.PHONY : test/CMakeFiles/redux_1.dir/build

test/CMakeFiles/redux_1.dir/requires: test/CMakeFiles/redux_1.dir/redux.cpp.o.requires

.PHONY : test/CMakeFiles/redux_1.dir/requires

test/CMakeFiles/redux_1.dir/clean:
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen_build_dir/test && $(CMAKE_COMMAND) -P CMakeFiles/redux_1.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/redux_1.dir/clean

test/CMakeFiles/redux_1.dir/depend:
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen_build_dir && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen/test /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen_build_dir /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen_build_dir/test /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen_build_dir/test/CMakeFiles/redux_1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/redux_1.dir/depend

