# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.15.5/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.15.5/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/jincao/Documents/11731-MT/fast_align-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/jincao/Documents/11731-MT/fast_align-master/build

# Include any dependencies generated for this target.
include CMakeFiles/atools.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/atools.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/atools.dir/flags.make

CMakeFiles/atools.dir/src/alignment_io.cc.o: CMakeFiles/atools.dir/flags.make
CMakeFiles/atools.dir/src/alignment_io.cc.o: ../src/alignment_io.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jincao/Documents/11731-MT/fast_align-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/atools.dir/src/alignment_io.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/atools.dir/src/alignment_io.cc.o -c /Users/jincao/Documents/11731-MT/fast_align-master/src/alignment_io.cc

CMakeFiles/atools.dir/src/alignment_io.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/atools.dir/src/alignment_io.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jincao/Documents/11731-MT/fast_align-master/src/alignment_io.cc > CMakeFiles/atools.dir/src/alignment_io.cc.i

CMakeFiles/atools.dir/src/alignment_io.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/atools.dir/src/alignment_io.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jincao/Documents/11731-MT/fast_align-master/src/alignment_io.cc -o CMakeFiles/atools.dir/src/alignment_io.cc.s

CMakeFiles/atools.dir/src/atools.cc.o: CMakeFiles/atools.dir/flags.make
CMakeFiles/atools.dir/src/atools.cc.o: ../src/atools.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jincao/Documents/11731-MT/fast_align-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/atools.dir/src/atools.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/atools.dir/src/atools.cc.o -c /Users/jincao/Documents/11731-MT/fast_align-master/src/atools.cc

CMakeFiles/atools.dir/src/atools.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/atools.dir/src/atools.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jincao/Documents/11731-MT/fast_align-master/src/atools.cc > CMakeFiles/atools.dir/src/atools.cc.i

CMakeFiles/atools.dir/src/atools.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/atools.dir/src/atools.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jincao/Documents/11731-MT/fast_align-master/src/atools.cc -o CMakeFiles/atools.dir/src/atools.cc.s

# Object files for target atools
atools_OBJECTS = \
"CMakeFiles/atools.dir/src/alignment_io.cc.o" \
"CMakeFiles/atools.dir/src/atools.cc.o"

# External object files for target atools
atools_EXTERNAL_OBJECTS =

atools: CMakeFiles/atools.dir/src/alignment_io.cc.o
atools: CMakeFiles/atools.dir/src/atools.cc.o
atools: CMakeFiles/atools.dir/build.make
atools: CMakeFiles/atools.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jincao/Documents/11731-MT/fast_align-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable atools"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/atools.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/atools.dir/build: atools

.PHONY : CMakeFiles/atools.dir/build

CMakeFiles/atools.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/atools.dir/cmake_clean.cmake
.PHONY : CMakeFiles/atools.dir/clean

CMakeFiles/atools.dir/depend:
	cd /Users/jincao/Documents/11731-MT/fast_align-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jincao/Documents/11731-MT/fast_align-master /Users/jincao/Documents/11731-MT/fast_align-master /Users/jincao/Documents/11731-MT/fast_align-master/build /Users/jincao/Documents/11731-MT/fast_align-master/build /Users/jincao/Documents/11731-MT/fast_align-master/build/CMakeFiles/atools.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/atools.dir/depend
