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

# Utility rule file for meta.

# Include the progress variables for this target.
include CMakeFiles/meta.dir/progress.make

CMakeFiles/meta: CMakeFiles/meta-complete


CMakeFiles/meta-complete: src/meta-stamp/meta-install
CMakeFiles/meta-complete: src/meta-stamp/meta-mkdir
CMakeFiles/meta-complete: src/meta-stamp/meta-download
CMakeFiles/meta-complete: src/meta-stamp/meta-update
CMakeFiles/meta-complete: src/meta-stamp/meta-patch
CMakeFiles/meta-complete: src/meta-stamp/meta-configure
CMakeFiles/meta-complete: src/meta-stamp/meta-build
CMakeFiles/meta-complete: src/meta-stamp/meta-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'meta'"
	/opt/cmake-3.17.0-Linux-x86_64/bin/cmake -E make_directory /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/CMakeFiles
	/opt/cmake-3.17.0-Linux-x86_64/bin/cmake -E touch /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/CMakeFiles/meta-complete
	/opt/cmake-3.17.0-Linux-x86_64/bin/cmake -E touch /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta-stamp/meta-done

src/meta-stamp/meta-install: src/meta-stamp/meta-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "No install step for 'meta'"
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta-build && /opt/cmake-3.17.0-Linux-x86_64/bin/cmake -E echo_append
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta-build && /opt/cmake-3.17.0-Linux-x86_64/bin/cmake -E touch /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta-stamp/meta-install

src/meta-stamp/meta-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Creating directories for 'meta'"
	/opt/cmake-3.17.0-Linux-x86_64/bin/cmake -E make_directory /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta
	/opt/cmake-3.17.0-Linux-x86_64/bin/cmake -E make_directory /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta-build
	/opt/cmake-3.17.0-Linux-x86_64/bin/cmake -E make_directory /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build
	/opt/cmake-3.17.0-Linux-x86_64/bin/cmake -E make_directory /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/tmp
	/opt/cmake-3.17.0-Linux-x86_64/bin/cmake -E make_directory /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta-stamp
	/opt/cmake-3.17.0-Linux-x86_64/bin/cmake -E make_directory /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src
	/opt/cmake-3.17.0-Linux-x86_64/bin/cmake -E make_directory /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta-stamp
	/opt/cmake-3.17.0-Linux-x86_64/bin/cmake -E touch /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta-stamp/meta-mkdir

src/meta-stamp/meta-download: src/meta-stamp/meta-gitinfo.txt
src/meta-stamp/meta-download: src/meta-stamp/meta-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (git clone) for 'meta'"
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src && /opt/cmake-3.17.0-Linux-x86_64/bin/cmake -P /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/tmp/meta-gitclone.cmake
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src && /opt/cmake-3.17.0-Linux-x86_64/bin/cmake -E touch /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta-stamp/meta-download

src/meta-stamp/meta-update: src/meta-stamp/meta-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Performing update step for 'meta'"
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta && /opt/cmake-3.17.0-Linux-x86_64/bin/cmake -P /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/tmp/meta-gitupdate.cmake

src/meta-stamp/meta-patch: src/meta-stamp/meta-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "No patch step for 'meta'"
	/opt/cmake-3.17.0-Linux-x86_64/bin/cmake -E echo_append
	/opt/cmake-3.17.0-Linux-x86_64/bin/cmake -E touch /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta-stamp/meta-patch

src/meta-stamp/meta-configure: tmp/meta-cfgcmd.txt
src/meta-stamp/meta-configure: src/meta-stamp/meta-update
src/meta-stamp/meta-configure: src/meta-stamp/meta-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Performing configure step for 'meta'"
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta-build && /opt/cmake-3.17.0-Linux-x86_64/bin/cmake -DCMAKE_CXX_COMPILER=/usr/bin/c++ -DCMAKE_CXX_FLAGS= "-GUnix Makefiles" /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta-build && /opt/cmake-3.17.0-Linux-x86_64/bin/cmake -E touch /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta-stamp/meta-configure

src/meta-stamp/meta-build: src/meta-stamp/meta-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "No build step for 'meta'"
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta-build && /opt/cmake-3.17.0-Linux-x86_64/bin/cmake -E echo_append
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta-build && /opt/cmake-3.17.0-Linux-x86_64/bin/cmake -E touch /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/src/meta-stamp/meta-build

meta: CMakeFiles/meta
meta: CMakeFiles/meta-complete
meta: src/meta-stamp/meta-install
meta: src/meta-stamp/meta-mkdir
meta: src/meta-stamp/meta-download
meta: src/meta-stamp/meta-update
meta: src/meta-stamp/meta-patch
meta: src/meta-stamp/meta-configure
meta: src/meta-stamp/meta-build
meta: CMakeFiles/meta.dir/build.make

.PHONY : meta

# Rule to build all files generated by this target.
CMakeFiles/meta.dir/build: meta

.PHONY : CMakeFiles/meta.dir/build

CMakeFiles/meta.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/meta.dir/cmake_clean.cmake
.PHONY : CMakeFiles/meta.dir/clean

CMakeFiles/meta.dir/depend:
	cd /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_src/ApproxMVBB /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_src/ApproxMVBB /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build /home/flw/master_thesis/automated_labeling/approxmvbb_implementation/approxmvbb_build/CMakeFiles/meta.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/meta.dir/depend
