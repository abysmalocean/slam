# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_SOURCE_DIR = /home/liangxu/GT/slam/homework/homework1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/liangxu/GT/slam/homework/homework1

# Include any dependencies generated for this target.
include CMakeFiles/hello.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/hello.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/hello.dir/flags.make

CMakeFiles/hello.dir/src/hello.cpp.o: CMakeFiles/hello.dir/flags.make
CMakeFiles/hello.dir/src/hello.cpp.o: src/hello.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/liangxu/GT/slam/homework/homework1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/hello.dir/src/hello.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hello.dir/src/hello.cpp.o -c /home/liangxu/GT/slam/homework/homework1/src/hello.cpp

CMakeFiles/hello.dir/src/hello.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hello.dir/src/hello.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/liangxu/GT/slam/homework/homework1/src/hello.cpp > CMakeFiles/hello.dir/src/hello.cpp.i

CMakeFiles/hello.dir/src/hello.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hello.dir/src/hello.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/liangxu/GT/slam/homework/homework1/src/hello.cpp -o CMakeFiles/hello.dir/src/hello.cpp.s

CMakeFiles/hello.dir/src/hello.cpp.o.requires:

.PHONY : CMakeFiles/hello.dir/src/hello.cpp.o.requires

CMakeFiles/hello.dir/src/hello.cpp.o.provides: CMakeFiles/hello.dir/src/hello.cpp.o.requires
	$(MAKE) -f CMakeFiles/hello.dir/build.make CMakeFiles/hello.dir/src/hello.cpp.o.provides.build
.PHONY : CMakeFiles/hello.dir/src/hello.cpp.o.provides

CMakeFiles/hello.dir/src/hello.cpp.o.provides.build: CMakeFiles/hello.dir/src/hello.cpp.o


# Object files for target hello
hello_OBJECTS = \
"CMakeFiles/hello.dir/src/hello.cpp.o"

# External object files for target hello
hello_EXTERNAL_OBJECTS =

libhello.so: CMakeFiles/hello.dir/src/hello.cpp.o
libhello.so: CMakeFiles/hello.dir/build.make
libhello.so: CMakeFiles/hello.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/liangxu/GT/slam/homework/homework1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libhello.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hello.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/hello.dir/build: libhello.so

.PHONY : CMakeFiles/hello.dir/build

CMakeFiles/hello.dir/requires: CMakeFiles/hello.dir/src/hello.cpp.o.requires

.PHONY : CMakeFiles/hello.dir/requires

CMakeFiles/hello.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/hello.dir/cmake_clean.cmake
.PHONY : CMakeFiles/hello.dir/clean

CMakeFiles/hello.dir/depend:
	cd /home/liangxu/GT/slam/homework/homework1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/liangxu/GT/slam/homework/homework1 /home/liangxu/GT/slam/homework/homework1 /home/liangxu/GT/slam/homework/homework1 /home/liangxu/GT/slam/homework/homework1 /home/liangxu/GT/slam/homework/homework1/CMakeFiles/hello.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/hello.dir/depend

