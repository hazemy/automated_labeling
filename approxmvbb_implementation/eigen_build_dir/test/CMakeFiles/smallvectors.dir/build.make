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
include test/CMakeFiles/smallvectors.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/smallvectors.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/smallvectors.dir/flags.make

test/CMakeFiles/smallvectors.dir/smallvectors.cpp.o: test/CMakeFiles/smallvectors.dir/flags.make
test/CMakeFiles/smallvectors.dir/smallvectors.cpp.o: /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen/test/smallvectors.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen_build_dir/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/smallvectors.dir/smallvectors.cpp.o"
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen_build_dir/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/smallvectors.dir/smallvectors.cpp.o -c /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen/test/smallvectors.cpp

test/CMakeFiles/smallvectors.dir/smallvectors.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/smallvectors.dir/smallvectors.cpp.i"
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen_build_dir/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen/test/smallvectors.cpp > CMakeFiles/smallvectors.dir/smallvectors.cpp.i

test/CMakeFiles/smallvectors.dir/smallvectors.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/smallvectors.dir/smallvectors.cpp.s"
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen_build_dir/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen/test/smallvectors.cpp -o CMakeFiles/smallvectors.dir/smallvectors.cpp.s

test/CMakeFiles/smallvectors.dir/smallvectors.cpp.o.requires:

.PHONY : test/CMakeFiles/smallvectors.dir/smallvectors.cpp.o.requires

test/CMakeFiles/smallvectors.dir/smallvectors.cpp.o.provides: test/CMakeFiles/smallvectors.dir/smallvectors.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/smallvectors.dir/build.make test/CMakeFiles/smallvectors.dir/smallvectors.cpp.o.provides.build
.PHONY : test/CMakeFiles/smallvectors.dir/smallvectors.cpp.o.provides

test/CMakeFiles/smallvectors.dir/smallvectors.cpp.o.provides.build: test/CMakeFiles/smallvectors.dir/smallvectors.cpp.o


# Object files for target smallvectors
smallvectors_OBJECTS = \
"CMakeFiles/smallvectors.dir/smallvectors.cpp.o"

# External object files for target smallvectors
smallvectors_EXTERNAL_OBJECTS =

test/smallvectors: test/CMakeFiles/smallvectors.dir/smallvectors.cpp.o
test/smallvectors: test/CMakeFiles/smallvectors.dir/build.make
test/smallvectors: test/CMakeFiles/smallvectors.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen_build_dir/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable smallvectors"
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen_build_dir/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/smallvectors.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/smallvectors.dir/build: test/smallvectors

.PHONY : test/CMakeFiles/smallvectors.dir/build

test/CMakeFiles/smallvectors.dir/requires: test/CMakeFiles/smallvectors.dir/smallvectors.cpp.o.requires

.PHONY : test/CMakeFiles/smallvectors.dir/requires

test/CMakeFiles/smallvectors.dir/clean:
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen_build_dir/test && $(CMAKE_COMMAND) -P CMakeFiles/smallvectors.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/smallvectors.dir/clean

test/CMakeFiles/smallvectors.dir/depend:
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen_build_dir && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen/test /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen_build_dir /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen_build_dir/test /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/eigen_build_dir/test/CMakeFiles/smallvectors.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/smallvectors.dir/depend

