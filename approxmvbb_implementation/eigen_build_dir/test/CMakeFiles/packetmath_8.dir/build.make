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
include test/CMakeFiles/packetmath_8.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/packetmath_8.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/packetmath_8.dir/flags.make

test/CMakeFiles/packetmath_8.dir/packetmath.cpp.o: test/CMakeFiles/packetmath_8.dir/flags.make
test/CMakeFiles/packetmath_8.dir/packetmath.cpp.o: /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen/test/packetmath.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen_build_dir/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/packetmath_8.dir/packetmath.cpp.o"
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen_build_dir/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/packetmath_8.dir/packetmath.cpp.o -c /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen/test/packetmath.cpp

test/CMakeFiles/packetmath_8.dir/packetmath.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/packetmath_8.dir/packetmath.cpp.i"
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen_build_dir/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen/test/packetmath.cpp > CMakeFiles/packetmath_8.dir/packetmath.cpp.i

test/CMakeFiles/packetmath_8.dir/packetmath.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/packetmath_8.dir/packetmath.cpp.s"
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen_build_dir/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen/test/packetmath.cpp -o CMakeFiles/packetmath_8.dir/packetmath.cpp.s

test/CMakeFiles/packetmath_8.dir/packetmath.cpp.o.requires:

.PHONY : test/CMakeFiles/packetmath_8.dir/packetmath.cpp.o.requires

test/CMakeFiles/packetmath_8.dir/packetmath.cpp.o.provides: test/CMakeFiles/packetmath_8.dir/packetmath.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/packetmath_8.dir/build.make test/CMakeFiles/packetmath_8.dir/packetmath.cpp.o.provides.build
.PHONY : test/CMakeFiles/packetmath_8.dir/packetmath.cpp.o.provides

test/CMakeFiles/packetmath_8.dir/packetmath.cpp.o.provides.build: test/CMakeFiles/packetmath_8.dir/packetmath.cpp.o


# Object files for target packetmath_8
packetmath_8_OBJECTS = \
"CMakeFiles/packetmath_8.dir/packetmath.cpp.o"

# External object files for target packetmath_8
packetmath_8_EXTERNAL_OBJECTS =

test/packetmath_8: test/CMakeFiles/packetmath_8.dir/packetmath.cpp.o
test/packetmath_8: test/CMakeFiles/packetmath_8.dir/build.make
test/packetmath_8: test/CMakeFiles/packetmath_8.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen_build_dir/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable packetmath_8"
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen_build_dir/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/packetmath_8.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/packetmath_8.dir/build: test/packetmath_8

.PHONY : test/CMakeFiles/packetmath_8.dir/build

test/CMakeFiles/packetmath_8.dir/requires: test/CMakeFiles/packetmath_8.dir/packetmath.cpp.o.requires

.PHONY : test/CMakeFiles/packetmath_8.dir/requires

test/CMakeFiles/packetmath_8.dir/clean:
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen_build_dir/test && $(CMAKE_COMMAND) -P CMakeFiles/packetmath_8.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/packetmath_8.dir/clean

test/CMakeFiles/packetmath_8.dir/depend:
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen_build_dir && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen/test /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen_build_dir /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen_build_dir/test /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen_build_dir/test/CMakeFiles/packetmath_8.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/packetmath_8.dir/depend

