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
CMAKE_SOURCE_DIR = /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta-build

# Include any dependencies generated for this target.
include example/CMakeFiles/tuple_cat.dir/depend.make

# Include the progress variables for this target.
include example/CMakeFiles/tuple_cat.dir/progress.make

# Include the compile flags for this target's objects.
include example/CMakeFiles/tuple_cat.dir/flags.make

example/CMakeFiles/tuple_cat.dir/tuple_cat.cpp.o: example/CMakeFiles/tuple_cat.dir/flags.make
example/CMakeFiles/tuple_cat.dir/tuple_cat.cpp.o: /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta/example/tuple_cat.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object example/CMakeFiles/tuple_cat.dir/tuple_cat.cpp.o"
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta-build/example && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tuple_cat.dir/tuple_cat.cpp.o -c /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta/example/tuple_cat.cpp

example/CMakeFiles/tuple_cat.dir/tuple_cat.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tuple_cat.dir/tuple_cat.cpp.i"
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta-build/example && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta/example/tuple_cat.cpp > CMakeFiles/tuple_cat.dir/tuple_cat.cpp.i

example/CMakeFiles/tuple_cat.dir/tuple_cat.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tuple_cat.dir/tuple_cat.cpp.s"
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta-build/example && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta/example/tuple_cat.cpp -o CMakeFiles/tuple_cat.dir/tuple_cat.cpp.s

# Object files for target tuple_cat
tuple_cat_OBJECTS = \
"CMakeFiles/tuple_cat.dir/tuple_cat.cpp.o"

# External object files for target tuple_cat
tuple_cat_EXTERNAL_OBJECTS =

example/tuple_cat: example/CMakeFiles/tuple_cat.dir/tuple_cat.cpp.o
example/tuple_cat: example/CMakeFiles/tuple_cat.dir/build.make
example/tuple_cat: example/CMakeFiles/tuple_cat.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable tuple_cat"
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta-build/example && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tuple_cat.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
example/CMakeFiles/tuple_cat.dir/build: example/tuple_cat

.PHONY : example/CMakeFiles/tuple_cat.dir/build

example/CMakeFiles/tuple_cat.dir/clean:
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta-build/example && $(CMAKE_COMMAND) -P CMakeFiles/tuple_cat.dir/cmake_clean.cmake
.PHONY : example/CMakeFiles/tuple_cat.dir/clean

example/CMakeFiles/tuple_cat.dir/depend:
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta/example /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta-build /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta-build/example /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta-build/example/CMakeFiles/tuple_cat.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : example/CMakeFiles/tuple_cat.dir/depend

