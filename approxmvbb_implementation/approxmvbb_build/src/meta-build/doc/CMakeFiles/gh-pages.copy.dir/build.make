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

# Utility rule file for gh-pages.copy.

# Include the progress variables for this target.
include doc/CMakeFiles/gh-pages.copy.dir/progress.make

doc/CMakeFiles/gh-pages.copy:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Copying the documentation from /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta-build/doc/html to doc/gh-pages"
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta/doc/gh-pages && /opt/cmake-3.17.0-Linux-x86_64/bin/cmake -E copy_directory /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta-build/doc/html /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta/doc/gh-pages

gh-pages.copy: doc/CMakeFiles/gh-pages.copy
gh-pages.copy: doc/CMakeFiles/gh-pages.copy.dir/build.make

.PHONY : gh-pages.copy

# Rule to build all files generated by this target.
doc/CMakeFiles/gh-pages.copy.dir/build: gh-pages.copy

.PHONY : doc/CMakeFiles/gh-pages.copy.dir/build

doc/CMakeFiles/gh-pages.copy.dir/clean:
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta-build/doc && $(CMAKE_COMMAND) -P CMakeFiles/gh-pages.copy.dir/cmake_clean.cmake
.PHONY : doc/CMakeFiles/gh-pages.copy.dir/clean

doc/CMakeFiles/gh-pages.copy.dir/depend:
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta/doc /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta-build /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta-build/doc /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta-build/doc/CMakeFiles/gh-pages.copy.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : doc/CMakeFiles/gh-pages.copy.dir/depend
