# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ari/Desktop/BreezeEnhancedCatppuccin/Mocha

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ari/Desktop/BreezeEnhancedCatppuccin/Mocha/build

# Utility rule file for breezeenhancedcommon6_autogen.

# Include any custom commands dependencies for this target.
include libbreezecommon/CMakeFiles/breezeenhancedcommon6_autogen.dir/compiler_depend.make

# Include the progress variables for this target.
include libbreezecommon/CMakeFiles/breezeenhancedcommon6_autogen.dir/progress.make

libbreezecommon/CMakeFiles/breezeenhancedcommon6_autogen: libbreezecommon/breezeenhancedcommon6_autogen/timestamp

libbreezecommon/breezeenhancedcommon6_autogen/timestamp: /usr/lib/qt6/moc
libbreezecommon/breezeenhancedcommon6_autogen/timestamp: libbreezecommon/CMakeFiles/breezeenhancedcommon6_autogen.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/ari/Desktop/BreezeEnhancedCatppuccin/Mocha/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC for target breezeenhancedcommon6"
	cd /home/ari/Desktop/BreezeEnhancedCatppuccin/Mocha/build/libbreezecommon && /usr/bin/cmake -E cmake_autogen /home/ari/Desktop/BreezeEnhancedCatppuccin/Mocha/build/libbreezecommon/CMakeFiles/breezeenhancedcommon6_autogen.dir/AutogenInfo.json Release
	cd /home/ari/Desktop/BreezeEnhancedCatppuccin/Mocha/build/libbreezecommon && /usr/bin/cmake -E touch /home/ari/Desktop/BreezeEnhancedCatppuccin/Mocha/build/libbreezecommon/breezeenhancedcommon6_autogen/timestamp

breezeenhancedcommon6_autogen: libbreezecommon/CMakeFiles/breezeenhancedcommon6_autogen
breezeenhancedcommon6_autogen: libbreezecommon/breezeenhancedcommon6_autogen/timestamp
breezeenhancedcommon6_autogen: libbreezecommon/CMakeFiles/breezeenhancedcommon6_autogen.dir/build.make
.PHONY : breezeenhancedcommon6_autogen

# Rule to build all files generated by this target.
libbreezecommon/CMakeFiles/breezeenhancedcommon6_autogen.dir/build: breezeenhancedcommon6_autogen
.PHONY : libbreezecommon/CMakeFiles/breezeenhancedcommon6_autogen.dir/build

libbreezecommon/CMakeFiles/breezeenhancedcommon6_autogen.dir/clean:
	cd /home/ari/Desktop/BreezeEnhancedCatppuccin/Mocha/build/libbreezecommon && $(CMAKE_COMMAND) -P CMakeFiles/breezeenhancedcommon6_autogen.dir/cmake_clean.cmake
.PHONY : libbreezecommon/CMakeFiles/breezeenhancedcommon6_autogen.dir/clean

libbreezecommon/CMakeFiles/breezeenhancedcommon6_autogen.dir/depend:
	cd /home/ari/Desktop/BreezeEnhancedCatppuccin/Mocha/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ari/Desktop/BreezeEnhancedCatppuccin/Mocha /home/ari/Desktop/BreezeEnhancedCatppuccin/Mocha/libbreezecommon /home/ari/Desktop/BreezeEnhancedCatppuccin/Mocha/build /home/ari/Desktop/BreezeEnhancedCatppuccin/Mocha/build/libbreezecommon /home/ari/Desktop/BreezeEnhancedCatppuccin/Mocha/build/libbreezecommon/CMakeFiles/breezeenhancedcommon6_autogen.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : libbreezecommon/CMakeFiles/breezeenhancedcommon6_autogen.dir/depend
