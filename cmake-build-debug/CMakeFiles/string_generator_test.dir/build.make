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
CMAKE_SOURCE_DIR = /home/huangh/re2-main

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/huangh/re2-main/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/string_generator_test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/string_generator_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/string_generator_test.dir/flags.make

CMakeFiles/string_generator_test.dir/re2/testing/string_generator_test.cc.o: CMakeFiles/string_generator_test.dir/flags.make
CMakeFiles/string_generator_test.dir/re2/testing/string_generator_test.cc.o: ../re2/testing/string_generator_test.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/huangh/re2-main/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/string_generator_test.dir/re2/testing/string_generator_test.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/string_generator_test.dir/re2/testing/string_generator_test.cc.o -c /home/huangh/re2-main/re2/testing/string_generator_test.cc

CMakeFiles/string_generator_test.dir/re2/testing/string_generator_test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/string_generator_test.dir/re2/testing/string_generator_test.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/huangh/re2-main/re2/testing/string_generator_test.cc > CMakeFiles/string_generator_test.dir/re2/testing/string_generator_test.cc.i

CMakeFiles/string_generator_test.dir/re2/testing/string_generator_test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/string_generator_test.dir/re2/testing/string_generator_test.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/huangh/re2-main/re2/testing/string_generator_test.cc -o CMakeFiles/string_generator_test.dir/re2/testing/string_generator_test.cc.s

CMakeFiles/string_generator_test.dir/util/test.cc.o: CMakeFiles/string_generator_test.dir/flags.make
CMakeFiles/string_generator_test.dir/util/test.cc.o: ../util/test.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/huangh/re2-main/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/string_generator_test.dir/util/test.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/string_generator_test.dir/util/test.cc.o -c /home/huangh/re2-main/util/test.cc

CMakeFiles/string_generator_test.dir/util/test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/string_generator_test.dir/util/test.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/huangh/re2-main/util/test.cc > CMakeFiles/string_generator_test.dir/util/test.cc.i

CMakeFiles/string_generator_test.dir/util/test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/string_generator_test.dir/util/test.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/huangh/re2-main/util/test.cc -o CMakeFiles/string_generator_test.dir/util/test.cc.s

# Object files for target string_generator_test
string_generator_test_OBJECTS = \
"CMakeFiles/string_generator_test.dir/re2/testing/string_generator_test.cc.o" \
"CMakeFiles/string_generator_test.dir/util/test.cc.o"

# External object files for target string_generator_test
string_generator_test_EXTERNAL_OBJECTS =

string_generator_test: CMakeFiles/string_generator_test.dir/re2/testing/string_generator_test.cc.o
string_generator_test: CMakeFiles/string_generator_test.dir/util/test.cc.o
string_generator_test: CMakeFiles/string_generator_test.dir/build.make
string_generator_test: libtesting.a
string_generator_test: libre2.a
string_generator_test: CMakeFiles/string_generator_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/huangh/re2-main/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable string_generator_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/string_generator_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/string_generator_test.dir/build: string_generator_test

.PHONY : CMakeFiles/string_generator_test.dir/build

CMakeFiles/string_generator_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/string_generator_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/string_generator_test.dir/clean

CMakeFiles/string_generator_test.dir/depend:
	cd /home/huangh/re2-main/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/huangh/re2-main /home/huangh/re2-main /home/huangh/re2-main/cmake-build-debug /home/huangh/re2-main/cmake-build-debug /home/huangh/re2-main/cmake-build-debug/CMakeFiles/string_generator_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/string_generator_test.dir/depend

