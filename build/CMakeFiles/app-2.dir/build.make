# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/zeusdric/Dric/devs/ml-dl/cpp/app-1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zeusdric/Dric/devs/ml-dl/cpp/app-1/build

# Include any dependencies generated for this target.
include CMakeFiles/app-2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/app-2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/app-2.dir/flags.make

CMakeFiles/app-2.dir/app-2.cpp.o: CMakeFiles/app-2.dir/flags.make
CMakeFiles/app-2.dir/app-2.cpp.o: ../app-2.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zeusdric/Dric/devs/ml-dl/cpp/app-1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/app-2.dir/app-2.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/app-2.dir/app-2.cpp.o -c /home/zeusdric/Dric/devs/ml-dl/cpp/app-1/app-2.cpp

CMakeFiles/app-2.dir/app-2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/app-2.dir/app-2.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zeusdric/Dric/devs/ml-dl/cpp/app-1/app-2.cpp > CMakeFiles/app-2.dir/app-2.cpp.i

CMakeFiles/app-2.dir/app-2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/app-2.dir/app-2.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zeusdric/Dric/devs/ml-dl/cpp/app-1/app-2.cpp -o CMakeFiles/app-2.dir/app-2.cpp.s

# Object files for target app-2
app__2_OBJECTS = \
"CMakeFiles/app-2.dir/app-2.cpp.o"

# External object files for target app-2
app__2_EXTERNAL_OBJECTS =

app-2: CMakeFiles/app-2.dir/app-2.cpp.o
app-2: CMakeFiles/app-2.dir/build.make
app-2: /home/zeusdric/Dric/libtorch/lib/libtorch.so
app-2: /home/zeusdric/Dric/libtorch/lib/libc10.so
app-2: /usr/lib/x86_64-linux-gnu/libcuda.so
app-2: /usr/lib/x86_64-linux-gnu/libnvrtc.so
app-2: /usr/lib/x86_64-linux-gnu/libnvToolsExt.so
app-2: /usr/lib/x86_64-linux-gnu/libcudart.so
app-2: /home/zeusdric/Dric/libtorch/lib/libc10_cuda.so
app-2: /home/zeusdric/Dric/libtorch/lib/libc10_cuda.so
app-2: /home/zeusdric/Dric/libtorch/lib/libc10.so
app-2: /usr/lib/x86_64-linux-gnu/libcufft.so
app-2: /usr/lib/x86_64-linux-gnu/libcurand.so
app-2: /usr/lib/x86_64-linux-gnu/libcublas.so
app-2: /usr/lib/x86_64-linux-gnu/libcudnn.so
app-2: /usr/lib/x86_64-linux-gnu/libnvToolsExt.so
app-2: /usr/lib/x86_64-linux-gnu/libcudart.so
app-2: CMakeFiles/app-2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zeusdric/Dric/devs/ml-dl/cpp/app-1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable app-2"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/app-2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/app-2.dir/build: app-2

.PHONY : CMakeFiles/app-2.dir/build

CMakeFiles/app-2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/app-2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/app-2.dir/clean

CMakeFiles/app-2.dir/depend:
	cd /home/zeusdric/Dric/devs/ml-dl/cpp/app-1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zeusdric/Dric/devs/ml-dl/cpp/app-1 /home/zeusdric/Dric/devs/ml-dl/cpp/app-1 /home/zeusdric/Dric/devs/ml-dl/cpp/app-1/build /home/zeusdric/Dric/devs/ml-dl/cpp/app-1/build /home/zeusdric/Dric/devs/ml-dl/cpp/app-1/build/CMakeFiles/app-2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/app-2.dir/depend
