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


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/jaykwok/Library/Mobile Documents/com~apple~CloudDocs/Projects/CPP Practice/Hamming-Code"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/jaykwok/Library/Mobile Documents/com~apple~CloudDocs/Projects/CPP Practice/Hamming-Code/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/Hamming.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Hamming.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Hamming.dir/flags.make

CMakeFiles/Hamming.dir/main.cpp.o: CMakeFiles/Hamming.dir/flags.make
CMakeFiles/Hamming.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/jaykwok/Library/Mobile Documents/com~apple~CloudDocs/Projects/CPP Practice/Hamming-Code/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Hamming.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Hamming.dir/main.cpp.o -c "/Users/jaykwok/Library/Mobile Documents/com~apple~CloudDocs/Projects/CPP Practice/Hamming-Code/main.cpp"

CMakeFiles/Hamming.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Hamming.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/jaykwok/Library/Mobile Documents/com~apple~CloudDocs/Projects/CPP Practice/Hamming-Code/main.cpp" > CMakeFiles/Hamming.dir/main.cpp.i

CMakeFiles/Hamming.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Hamming.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/jaykwok/Library/Mobile Documents/com~apple~CloudDocs/Projects/CPP Practice/Hamming-Code/main.cpp" -o CMakeFiles/Hamming.dir/main.cpp.s

CMakeFiles/Hamming.dir/Hamming.cpp.o: CMakeFiles/Hamming.dir/flags.make
CMakeFiles/Hamming.dir/Hamming.cpp.o: ../Hamming.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/jaykwok/Library/Mobile Documents/com~apple~CloudDocs/Projects/CPP Practice/Hamming-Code/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Hamming.dir/Hamming.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Hamming.dir/Hamming.cpp.o -c "/Users/jaykwok/Library/Mobile Documents/com~apple~CloudDocs/Projects/CPP Practice/Hamming-Code/Hamming.cpp"

CMakeFiles/Hamming.dir/Hamming.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Hamming.dir/Hamming.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/jaykwok/Library/Mobile Documents/com~apple~CloudDocs/Projects/CPP Practice/Hamming-Code/Hamming.cpp" > CMakeFiles/Hamming.dir/Hamming.cpp.i

CMakeFiles/Hamming.dir/Hamming.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Hamming.dir/Hamming.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/jaykwok/Library/Mobile Documents/com~apple~CloudDocs/Projects/CPP Practice/Hamming-Code/Hamming.cpp" -o CMakeFiles/Hamming.dir/Hamming.cpp.s

# Object files for target Hamming
Hamming_OBJECTS = \
"CMakeFiles/Hamming.dir/main.cpp.o" \
"CMakeFiles/Hamming.dir/Hamming.cpp.o"

# External object files for target Hamming
Hamming_EXTERNAL_OBJECTS =

Hamming: CMakeFiles/Hamming.dir/main.cpp.o
Hamming: CMakeFiles/Hamming.dir/Hamming.cpp.o
Hamming: CMakeFiles/Hamming.dir/build.make
Hamming: CMakeFiles/Hamming.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/jaykwok/Library/Mobile Documents/com~apple~CloudDocs/Projects/CPP Practice/Hamming-Code/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Hamming"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Hamming.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Hamming.dir/build: Hamming

.PHONY : CMakeFiles/Hamming.dir/build

CMakeFiles/Hamming.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Hamming.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Hamming.dir/clean

CMakeFiles/Hamming.dir/depend:
	cd "/Users/jaykwok/Library/Mobile Documents/com~apple~CloudDocs/Projects/CPP Practice/Hamming-Code/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/jaykwok/Library/Mobile Documents/com~apple~CloudDocs/Projects/CPP Practice/Hamming-Code" "/Users/jaykwok/Library/Mobile Documents/com~apple~CloudDocs/Projects/CPP Practice/Hamming-Code" "/Users/jaykwok/Library/Mobile Documents/com~apple~CloudDocs/Projects/CPP Practice/Hamming-Code/cmake-build-debug" "/Users/jaykwok/Library/Mobile Documents/com~apple~CloudDocs/Projects/CPP Practice/Hamming-Code/cmake-build-debug" "/Users/jaykwok/Library/Mobile Documents/com~apple~CloudDocs/Projects/CPP Practice/Hamming-Code/cmake-build-debug/CMakeFiles/Hamming.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Hamming.dir/depend

