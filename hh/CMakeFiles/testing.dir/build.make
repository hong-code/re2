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
include CMakeFiles/testing.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/testing.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/testing.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/testing.dir/flags.make

CMakeFiles/testing.dir/re2/testing/backtrack.cc.o: CMakeFiles/testing.dir/flags.make
CMakeFiles/testing.dir/re2/testing/backtrack.cc.o: /Users/huanghong/Downloads/re2-main/re2/testing/backtrack.cc
CMakeFiles/testing.dir/re2/testing/backtrack.cc.o: CMakeFiles/testing.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/huanghong/Downloads/re2-main/hh/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/testing.dir/re2/testing/backtrack.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/testing.dir/re2/testing/backtrack.cc.o -MF CMakeFiles/testing.dir/re2/testing/backtrack.cc.o.d -o CMakeFiles/testing.dir/re2/testing/backtrack.cc.o -c /Users/huanghong/Downloads/re2-main/re2/testing/backtrack.cc

CMakeFiles/testing.dir/re2/testing/backtrack.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testing.dir/re2/testing/backtrack.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/huanghong/Downloads/re2-main/re2/testing/backtrack.cc > CMakeFiles/testing.dir/re2/testing/backtrack.cc.i

CMakeFiles/testing.dir/re2/testing/backtrack.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testing.dir/re2/testing/backtrack.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/huanghong/Downloads/re2-main/re2/testing/backtrack.cc -o CMakeFiles/testing.dir/re2/testing/backtrack.cc.s

CMakeFiles/testing.dir/re2/testing/dump.cc.o: CMakeFiles/testing.dir/flags.make
CMakeFiles/testing.dir/re2/testing/dump.cc.o: /Users/huanghong/Downloads/re2-main/re2/testing/dump.cc
CMakeFiles/testing.dir/re2/testing/dump.cc.o: CMakeFiles/testing.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/huanghong/Downloads/re2-main/hh/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/testing.dir/re2/testing/dump.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/testing.dir/re2/testing/dump.cc.o -MF CMakeFiles/testing.dir/re2/testing/dump.cc.o.d -o CMakeFiles/testing.dir/re2/testing/dump.cc.o -c /Users/huanghong/Downloads/re2-main/re2/testing/dump.cc

CMakeFiles/testing.dir/re2/testing/dump.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testing.dir/re2/testing/dump.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/huanghong/Downloads/re2-main/re2/testing/dump.cc > CMakeFiles/testing.dir/re2/testing/dump.cc.i

CMakeFiles/testing.dir/re2/testing/dump.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testing.dir/re2/testing/dump.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/huanghong/Downloads/re2-main/re2/testing/dump.cc -o CMakeFiles/testing.dir/re2/testing/dump.cc.s

CMakeFiles/testing.dir/re2/testing/exhaustive_tester.cc.o: CMakeFiles/testing.dir/flags.make
CMakeFiles/testing.dir/re2/testing/exhaustive_tester.cc.o: /Users/huanghong/Downloads/re2-main/re2/testing/exhaustive_tester.cc
CMakeFiles/testing.dir/re2/testing/exhaustive_tester.cc.o: CMakeFiles/testing.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/huanghong/Downloads/re2-main/hh/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/testing.dir/re2/testing/exhaustive_tester.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/testing.dir/re2/testing/exhaustive_tester.cc.o -MF CMakeFiles/testing.dir/re2/testing/exhaustive_tester.cc.o.d -o CMakeFiles/testing.dir/re2/testing/exhaustive_tester.cc.o -c /Users/huanghong/Downloads/re2-main/re2/testing/exhaustive_tester.cc

CMakeFiles/testing.dir/re2/testing/exhaustive_tester.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testing.dir/re2/testing/exhaustive_tester.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/huanghong/Downloads/re2-main/re2/testing/exhaustive_tester.cc > CMakeFiles/testing.dir/re2/testing/exhaustive_tester.cc.i

CMakeFiles/testing.dir/re2/testing/exhaustive_tester.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testing.dir/re2/testing/exhaustive_tester.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/huanghong/Downloads/re2-main/re2/testing/exhaustive_tester.cc -o CMakeFiles/testing.dir/re2/testing/exhaustive_tester.cc.s

CMakeFiles/testing.dir/re2/testing/null_walker.cc.o: CMakeFiles/testing.dir/flags.make
CMakeFiles/testing.dir/re2/testing/null_walker.cc.o: /Users/huanghong/Downloads/re2-main/re2/testing/null_walker.cc
CMakeFiles/testing.dir/re2/testing/null_walker.cc.o: CMakeFiles/testing.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/huanghong/Downloads/re2-main/hh/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/testing.dir/re2/testing/null_walker.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/testing.dir/re2/testing/null_walker.cc.o -MF CMakeFiles/testing.dir/re2/testing/null_walker.cc.o.d -o CMakeFiles/testing.dir/re2/testing/null_walker.cc.o -c /Users/huanghong/Downloads/re2-main/re2/testing/null_walker.cc

CMakeFiles/testing.dir/re2/testing/null_walker.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testing.dir/re2/testing/null_walker.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/huanghong/Downloads/re2-main/re2/testing/null_walker.cc > CMakeFiles/testing.dir/re2/testing/null_walker.cc.i

CMakeFiles/testing.dir/re2/testing/null_walker.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testing.dir/re2/testing/null_walker.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/huanghong/Downloads/re2-main/re2/testing/null_walker.cc -o CMakeFiles/testing.dir/re2/testing/null_walker.cc.s

CMakeFiles/testing.dir/re2/testing/regexp_generator.cc.o: CMakeFiles/testing.dir/flags.make
CMakeFiles/testing.dir/re2/testing/regexp_generator.cc.o: /Users/huanghong/Downloads/re2-main/re2/testing/regexp_generator.cc
CMakeFiles/testing.dir/re2/testing/regexp_generator.cc.o: CMakeFiles/testing.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/huanghong/Downloads/re2-main/hh/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/testing.dir/re2/testing/regexp_generator.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/testing.dir/re2/testing/regexp_generator.cc.o -MF CMakeFiles/testing.dir/re2/testing/regexp_generator.cc.o.d -o CMakeFiles/testing.dir/re2/testing/regexp_generator.cc.o -c /Users/huanghong/Downloads/re2-main/re2/testing/regexp_generator.cc

CMakeFiles/testing.dir/re2/testing/regexp_generator.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testing.dir/re2/testing/regexp_generator.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/huanghong/Downloads/re2-main/re2/testing/regexp_generator.cc > CMakeFiles/testing.dir/re2/testing/regexp_generator.cc.i

CMakeFiles/testing.dir/re2/testing/regexp_generator.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testing.dir/re2/testing/regexp_generator.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/huanghong/Downloads/re2-main/re2/testing/regexp_generator.cc -o CMakeFiles/testing.dir/re2/testing/regexp_generator.cc.s

CMakeFiles/testing.dir/re2/testing/string_generator.cc.o: CMakeFiles/testing.dir/flags.make
CMakeFiles/testing.dir/re2/testing/string_generator.cc.o: /Users/huanghong/Downloads/re2-main/re2/testing/string_generator.cc
CMakeFiles/testing.dir/re2/testing/string_generator.cc.o: CMakeFiles/testing.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/huanghong/Downloads/re2-main/hh/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/testing.dir/re2/testing/string_generator.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/testing.dir/re2/testing/string_generator.cc.o -MF CMakeFiles/testing.dir/re2/testing/string_generator.cc.o.d -o CMakeFiles/testing.dir/re2/testing/string_generator.cc.o -c /Users/huanghong/Downloads/re2-main/re2/testing/string_generator.cc

CMakeFiles/testing.dir/re2/testing/string_generator.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testing.dir/re2/testing/string_generator.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/huanghong/Downloads/re2-main/re2/testing/string_generator.cc > CMakeFiles/testing.dir/re2/testing/string_generator.cc.i

CMakeFiles/testing.dir/re2/testing/string_generator.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testing.dir/re2/testing/string_generator.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/huanghong/Downloads/re2-main/re2/testing/string_generator.cc -o CMakeFiles/testing.dir/re2/testing/string_generator.cc.s

CMakeFiles/testing.dir/re2/testing/tester.cc.o: CMakeFiles/testing.dir/flags.make
CMakeFiles/testing.dir/re2/testing/tester.cc.o: /Users/huanghong/Downloads/re2-main/re2/testing/tester.cc
CMakeFiles/testing.dir/re2/testing/tester.cc.o: CMakeFiles/testing.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/huanghong/Downloads/re2-main/hh/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/testing.dir/re2/testing/tester.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/testing.dir/re2/testing/tester.cc.o -MF CMakeFiles/testing.dir/re2/testing/tester.cc.o.d -o CMakeFiles/testing.dir/re2/testing/tester.cc.o -c /Users/huanghong/Downloads/re2-main/re2/testing/tester.cc

CMakeFiles/testing.dir/re2/testing/tester.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testing.dir/re2/testing/tester.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/huanghong/Downloads/re2-main/re2/testing/tester.cc > CMakeFiles/testing.dir/re2/testing/tester.cc.i

CMakeFiles/testing.dir/re2/testing/tester.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testing.dir/re2/testing/tester.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/huanghong/Downloads/re2-main/re2/testing/tester.cc -o CMakeFiles/testing.dir/re2/testing/tester.cc.s

CMakeFiles/testing.dir/util/pcre.cc.o: CMakeFiles/testing.dir/flags.make
CMakeFiles/testing.dir/util/pcre.cc.o: /Users/huanghong/Downloads/re2-main/util/pcre.cc
CMakeFiles/testing.dir/util/pcre.cc.o: CMakeFiles/testing.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/huanghong/Downloads/re2-main/hh/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/testing.dir/util/pcre.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/testing.dir/util/pcre.cc.o -MF CMakeFiles/testing.dir/util/pcre.cc.o.d -o CMakeFiles/testing.dir/util/pcre.cc.o -c /Users/huanghong/Downloads/re2-main/util/pcre.cc

CMakeFiles/testing.dir/util/pcre.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testing.dir/util/pcre.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/huanghong/Downloads/re2-main/util/pcre.cc > CMakeFiles/testing.dir/util/pcre.cc.i

CMakeFiles/testing.dir/util/pcre.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testing.dir/util/pcre.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/huanghong/Downloads/re2-main/util/pcre.cc -o CMakeFiles/testing.dir/util/pcre.cc.s

# Object files for target testing
testing_OBJECTS = \
"CMakeFiles/testing.dir/re2/testing/backtrack.cc.o" \
"CMakeFiles/testing.dir/re2/testing/dump.cc.o" \
"CMakeFiles/testing.dir/re2/testing/exhaustive_tester.cc.o" \
"CMakeFiles/testing.dir/re2/testing/null_walker.cc.o" \
"CMakeFiles/testing.dir/re2/testing/regexp_generator.cc.o" \
"CMakeFiles/testing.dir/re2/testing/string_generator.cc.o" \
"CMakeFiles/testing.dir/re2/testing/tester.cc.o" \
"CMakeFiles/testing.dir/util/pcre.cc.o"

# External object files for target testing
testing_EXTERNAL_OBJECTS =

libtesting.a: CMakeFiles/testing.dir/re2/testing/backtrack.cc.o
libtesting.a: CMakeFiles/testing.dir/re2/testing/dump.cc.o
libtesting.a: CMakeFiles/testing.dir/re2/testing/exhaustive_tester.cc.o
libtesting.a: CMakeFiles/testing.dir/re2/testing/null_walker.cc.o
libtesting.a: CMakeFiles/testing.dir/re2/testing/regexp_generator.cc.o
libtesting.a: CMakeFiles/testing.dir/re2/testing/string_generator.cc.o
libtesting.a: CMakeFiles/testing.dir/re2/testing/tester.cc.o
libtesting.a: CMakeFiles/testing.dir/util/pcre.cc.o
libtesting.a: CMakeFiles/testing.dir/build.make
libtesting.a: CMakeFiles/testing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/huanghong/Downloads/re2-main/hh/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX static library libtesting.a"
	$(CMAKE_COMMAND) -P CMakeFiles/testing.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testing.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/testing.dir/build: libtesting.a
.PHONY : CMakeFiles/testing.dir/build

CMakeFiles/testing.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/testing.dir/cmake_clean.cmake
.PHONY : CMakeFiles/testing.dir/clean

CMakeFiles/testing.dir/depend:
	cd /Users/huanghong/Downloads/re2-main/hh && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/huanghong/Downloads/re2-main /Users/huanghong/Downloads/re2-main /Users/huanghong/Downloads/re2-main/hh /Users/huanghong/Downloads/re2-main/hh /Users/huanghong/Downloads/re2-main/hh/CMakeFiles/testing.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/testing.dir/depend
