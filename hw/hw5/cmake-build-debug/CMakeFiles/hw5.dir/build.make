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
CMAKE_COMMAND = "/Users/neverbehave/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/193.5233.10/CLion 2019.3 EAP.app/Contents/bin/cmake/mac/bin/cmake"

# The command to remove a file.
RM = "/Users/neverbehave/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/193.5233.10/CLion 2019.3 EAP.app/Contents/bin/cmake/mac/bin/cmake" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/neverbehave/Documents/CSCI2500/hw/hw5

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/neverbehave/Documents/CSCI2500/hw/hw5/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/hw5.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/hw5.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/hw5.dir/flags.make

CMakeFiles/hw5.dir/main.c.o: CMakeFiles/hw5.dir/flags.make
CMakeFiles/hw5.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/neverbehave/Documents/CSCI2500/hw/hw5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/hw5.dir/main.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/hw5.dir/main.c.o   -c /Users/neverbehave/Documents/CSCI2500/hw/hw5/main.c

CMakeFiles/hw5.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/hw5.dir/main.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/neverbehave/Documents/CSCI2500/hw/hw5/main.c > CMakeFiles/hw5.dir/main.c.i

CMakeFiles/hw5.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/hw5.dir/main.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/neverbehave/Documents/CSCI2500/hw/hw5/main.c -o CMakeFiles/hw5.dir/main.c.s

# Object files for target hw5
hw5_OBJECTS = \
"CMakeFiles/hw5.dir/main.c.o"

# External object files for target hw5
hw5_EXTERNAL_OBJECTS =

hw5: CMakeFiles/hw5.dir/main.c.o
hw5: CMakeFiles/hw5.dir/build.make
hw5: CMakeFiles/hw5.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/neverbehave/Documents/CSCI2500/hw/hw5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable hw5"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hw5.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/hw5.dir/build: hw5

.PHONY : CMakeFiles/hw5.dir/build

CMakeFiles/hw5.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/hw5.dir/cmake_clean.cmake
.PHONY : CMakeFiles/hw5.dir/clean

CMakeFiles/hw5.dir/depend:
	cd /Users/neverbehave/Documents/CSCI2500/hw/hw5/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/neverbehave/Documents/CSCI2500/hw/hw5 /Users/neverbehave/Documents/CSCI2500/hw/hw5 /Users/neverbehave/Documents/CSCI2500/hw/hw5/cmake-build-debug /Users/neverbehave/Documents/CSCI2500/hw/hw5/cmake-build-debug /Users/neverbehave/Documents/CSCI2500/hw/hw5/cmake-build-debug/CMakeFiles/hw5.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/hw5.dir/depend

