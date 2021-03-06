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
include thirdparty/googletest-build/googlemock/CMakeFiles/gmock.dir/depend.make

# Include the progress variables for this target.
include thirdparty/googletest-build/googlemock/CMakeFiles/gmock.dir/progress.make

# Include the compile flags for this target's objects.
include thirdparty/googletest-build/googlemock/CMakeFiles/gmock.dir/flags.make

thirdparty/googletest-build/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.o: thirdparty/googletest-build/googlemock/CMakeFiles/gmock.dir/flags.make
thirdparty/googletest-build/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.o: thirdparty/googletest-src/googlemock/src/gmock-all.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object thirdparty/googletest-build/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.o"
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/thirdparty/googletest-build/googlemock && ccache /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gmock.dir/src/gmock-all.cc.o -c /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/thirdparty/googletest-src/googlemock/src/gmock-all.cc

thirdparty/googletest-build/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gmock.dir/src/gmock-all.cc.i"
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/thirdparty/googletest-build/googlemock && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/thirdparty/googletest-src/googlemock/src/gmock-all.cc > CMakeFiles/gmock.dir/src/gmock-all.cc.i

thirdparty/googletest-build/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gmock.dir/src/gmock-all.cc.s"
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/thirdparty/googletest-build/googlemock && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/thirdparty/googletest-src/googlemock/src/gmock-all.cc -o CMakeFiles/gmock.dir/src/gmock-all.cc.s

# Object files for target gmock
gmock_OBJECTS = \
"CMakeFiles/gmock.dir/src/gmock-all.cc.o"

# External object files for target gmock
gmock_EXTERNAL_OBJECTS =

lib/libgmock.a: thirdparty/googletest-build/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.o
lib/libgmock.a: thirdparty/googletest-build/googlemock/CMakeFiles/gmock.dir/build.make
lib/libgmock.a: thirdparty/googletest-build/googlemock/CMakeFiles/gmock.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../../../lib/libgmock.a"
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/thirdparty/googletest-build/googlemock && $(CMAKE_COMMAND) -P CMakeFiles/gmock.dir/cmake_clean_target.cmake
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/thirdparty/googletest-build/googlemock && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gmock.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
thirdparty/googletest-build/googlemock/CMakeFiles/gmock.dir/build: lib/libgmock.a

.PHONY : thirdparty/googletest-build/googlemock/CMakeFiles/gmock.dir/build

thirdparty/googletest-build/googlemock/CMakeFiles/gmock.dir/clean:
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/thirdparty/googletest-build/googlemock && $(CMAKE_COMMAND) -P CMakeFiles/gmock.dir/cmake_clean.cmake
.PHONY : thirdparty/googletest-build/googlemock/CMakeFiles/gmock.dir/clean

thirdparty/googletest-build/googlemock/CMakeFiles/gmock.dir/depend:
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_src/ApproxMVBB /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/thirdparty/googletest-src/googlemock /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/thirdparty/googletest-build/googlemock /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/thirdparty/googletest-build/googlemock/CMakeFiles/gmock.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : thirdparty/googletest-build/googlemock/CMakeFiles/gmock.dir/depend

