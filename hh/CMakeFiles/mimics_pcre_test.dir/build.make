# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.25.1/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.25.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/huanghong/Downloads/re2-main

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/huanghong/Downloads/re2-main/hh

# Include any dependencies generated for this target.
include CMakeFiles/mimics_pcre_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/mimics_pcre_test.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/mimics_pcre_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/mimics_pcre_test.dir/flags.make

CMakeFiles/mimics_pcre_test.dir/re2/testing/mimics_pcre_test.cc.o: CMakeFiles/mimics_pcre_test.dir/flags.make
CMakeFiles/mimics_pcre_test.dir/re2/testing/mimics_pcre_test.cc.o: /Users/huanghong/Downloads/re2-main/re2/testing/mimics_pcre_test.cc
CMakeFiles/mimics_pcre_test.dir/re2/testing/mimics_pcre_test.cc.o: CMakeFiles/mimics_pcre_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/huanghong/Downloads/re2-main/hh/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/mimics_pcre_test.dir/re2/testing/mimics_pcre_test.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/mimics_pcre_test.dir/re2/testing/mimics_pcre_test.cc.o -MF CMakeFiles/mimics_pcre_test.dir/re2/testing/mimics_pcre_test.cc.o.d -o CMakeFiles/mimics_pcre_test.dir/re2/testing/mimics_pcre_test.cc.o -c /Users/huanghong/Downloads/re2-main/re2/testing/mimics_pcre_test.cc

CMakeFiles/mimics_pcre_test.dir/re2/testing/mimics_pcre_test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mimics_pcre_test.dir/re2/testing/mimics_pcre_test.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/huanghong/Downloads/re2-main/re2/testing/mimics_pcre_test.cc > CMakeFiles/mimics_pcre_test.dir/re2/testing/mimics_pcre_test.cc.i

CMakeFiles/mimics_pcre_test.dir/re2/testing/mimics_pcre_test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mimics_pcre_test.dir/re2/testing/mimics_pcre_test.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/huanghong/Downloads/re2-main/re2/testing/mimics_pcre_test.cc -o CMakeFiles/mimics_pcre_test.dir/re2/testing/mimics_pcre_test.cc.s

CMakeFiles/mimics_pcre_test.dir/util/test.cc.o: CMakeFiles/mimics_pcre_test.dir/flags.make
CMakeFiles/mimics_pcre_test.dir/util/test.cc.o: /Users/huanghong/Downloads/re2-main/util/test.cc
CMakeFiles/mimics_pcre_test.dir/util/test.cc.o: CMakeFiles/mimics_pcre_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/huanghong/Downloads/re2-main/hh/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/mimics_pcre_test.dir/util/test.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/mimics_pcre_test.dir/util/test.cc.o -MF CMakeFiles/mimics_pcre_test.dir/util/test.cc.o.d -o CMakeFiles/mimics_pcre_test.dir/util/test.cc.o -c /Users/huanghong/Downloads/re2-main/util/test.cc

CMakeFiles/mimics_pcre_test.dir/util/test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mimics_pcre_test.dir/util/test.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/huanghong/Downloads/re2-main/util/test.cc > CMakeFiles/mimics_pcre_test.dir/util/test.cc.i

CMakeFiles/mimics_pcre_test.dir/util/test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mimics_pcre_test.dir/util/test.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/huanghong/Downloads/re2-main/util/test.cc -o CMakeFiles/mimics_pcre_test.dir/util/test.cc.s

# Object files for target mimics_pcre_test
mimics_pcre_test_OBJECTS = \
"CMakeFiles/mimics_pcre_test.dir/re2/testing/mimics_pcre_test.cc.o" \
"CMakeFiles/mimics_pcre_test.dir/util/test.cc.o"

# External object files for target mimics_pcre_test
mimics_pcre_test_EXTERNAL_OBJECTS =

mimics_pcre_test: CMakeFiles/mimics_pcre_test.dir/re2/testing/mimics_pcre_test.cc.o
mimics_pcre_test: CMakeFiles/mimics_pcre_test.dir/util/test.cc.o
mimics_pcre_test: CMakeFiles/mimics_pcre_test.dir/build.make
mimics_pcre_test: libtesting.a
mimics_pcre_test: libre2.a
mimics_pcre_test: CMakeFiles/mimics_pcre_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/huanghong/Downloads/re2-main/hh/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable mimics_pcre_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mimics_pcre_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/mimics_pcre_test.dir/build: mimics_pcre_test
.PHONY : CMakeFiles/mimics_pcre_test.dir/build

CMakeFiles/mimics_pcre_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mimics_pcre_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mimics_pcre_test.dir/clean

CMakeFiles/mimics_pcre_test.dir/depend:
	cd /Users/huanghong/Downloads/re2-main/hh && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/huanghong/Downloads/re2-main /Users/huanghong/Downloads/re2-main /Users/huanghong/Downloads/re2-main/hh /Users/huanghong/Downloads/re2-main/hh /Users/huanghong/Downloads/re2-main/hh/CMakeFiles/mimics_pcre_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/mimics_pcre_test.dir/depend
