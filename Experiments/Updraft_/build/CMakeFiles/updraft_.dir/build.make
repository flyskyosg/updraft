# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canoncical targets will work.
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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake 2.8\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake 2.8\bin\cmake.exe" -E remove -f

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = "C:\Program Files\CMake 2.8\bin\cmake-gui.exe"

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Documents and Settings\Mcc\My Documents\Mff Uk\SW Projekt\GIT\updraft\Experiments\Updraft_"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Documents and Settings\Mcc\My Documents\Mff Uk\SW Projekt\GIT\updraft\Experiments\Updraft_\build"

# Include any dependencies generated for this target.
include CMakeFiles/updraft_.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/updraft_.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/updraft_.dir/flags.make

CMakeFiles/updraft_.dir/src/main.cpp.obj: CMakeFiles/updraft_.dir/flags.make
CMakeFiles/updraft_.dir/src/main.cpp.obj: ../src/main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report "C:\Documents and Settings\Mcc\My Documents\Mff Uk\SW Projekt\GIT\updraft\Experiments\Updraft_\build\CMakeFiles" $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/updraft_.dir/src/main.cpp.obj"
	C:\MinGW\bin\g++.exe   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles\updraft_.dir\src\main.cpp.obj -c "C:\Documents and Settings\Mcc\My Documents\Mff Uk\SW Projekt\GIT\updraft\Experiments\Updraft_\src\main.cpp"

CMakeFiles/updraft_.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/updraft_.dir/src/main.cpp.i"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_FLAGS) -E "C:\Documents and Settings\Mcc\My Documents\Mff Uk\SW Projekt\GIT\updraft\Experiments\Updraft_\src\main.cpp" > CMakeFiles\updraft_.dir\src\main.cpp.i

CMakeFiles/updraft_.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/updraft_.dir/src/main.cpp.s"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_FLAGS) -S "C:\Documents and Settings\Mcc\My Documents\Mff Uk\SW Projekt\GIT\updraft\Experiments\Updraft_\src\main.cpp" -o CMakeFiles\updraft_.dir\src\main.cpp.s

CMakeFiles/updraft_.dir/src/main.cpp.obj.requires:
.PHONY : CMakeFiles/updraft_.dir/src/main.cpp.obj.requires

CMakeFiles/updraft_.dir/src/main.cpp.obj.provides: CMakeFiles/updraft_.dir/src/main.cpp.obj.requires
	$(MAKE) -f CMakeFiles\updraft_.dir\build.make CMakeFiles/updraft_.dir/src/main.cpp.obj.provides.build
.PHONY : CMakeFiles/updraft_.dir/src/main.cpp.obj.provides

CMakeFiles/updraft_.dir/src/main.cpp.obj.provides.build: CMakeFiles/updraft_.dir/src/main.cpp.obj
.PHONY : CMakeFiles/updraft_.dir/src/main.cpp.obj.provides.build

CMakeFiles/updraft_.dir/src/ui/mainwindow.cpp.obj: CMakeFiles/updraft_.dir/flags.make
CMakeFiles/updraft_.dir/src/ui/mainwindow.cpp.obj: ../src/ui/mainwindow.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report "C:\Documents and Settings\Mcc\My Documents\Mff Uk\SW Projekt\GIT\updraft\Experiments\Updraft_\build\CMakeFiles" $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/updraft_.dir/src/ui/mainwindow.cpp.obj"
	C:\MinGW\bin\g++.exe   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles\updraft_.dir\src\ui\mainwindow.cpp.obj -c "C:\Documents and Settings\Mcc\My Documents\Mff Uk\SW Projekt\GIT\updraft\Experiments\Updraft_\src\ui\mainwindow.cpp"

CMakeFiles/updraft_.dir/src/ui/mainwindow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/updraft_.dir/src/ui/mainwindow.cpp.i"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_FLAGS) -E "C:\Documents and Settings\Mcc\My Documents\Mff Uk\SW Projekt\GIT\updraft\Experiments\Updraft_\src\ui\mainwindow.cpp" > CMakeFiles\updraft_.dir\src\ui\mainwindow.cpp.i

CMakeFiles/updraft_.dir/src/ui/mainwindow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/updraft_.dir/src/ui/mainwindow.cpp.s"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_FLAGS) -S "C:\Documents and Settings\Mcc\My Documents\Mff Uk\SW Projekt\GIT\updraft\Experiments\Updraft_\src\ui\mainwindow.cpp" -o CMakeFiles\updraft_.dir\src\ui\mainwindow.cpp.s

CMakeFiles/updraft_.dir/src/ui/mainwindow.cpp.obj.requires:
.PHONY : CMakeFiles/updraft_.dir/src/ui/mainwindow.cpp.obj.requires

CMakeFiles/updraft_.dir/src/ui/mainwindow.cpp.obj.provides: CMakeFiles/updraft_.dir/src/ui/mainwindow.cpp.obj.requires
	$(MAKE) -f CMakeFiles\updraft_.dir\build.make CMakeFiles/updraft_.dir/src/ui/mainwindow.cpp.obj.provides.build
.PHONY : CMakeFiles/updraft_.dir/src/ui/mainwindow.cpp.obj.provides

CMakeFiles/updraft_.dir/src/ui/mainwindow.cpp.obj.provides.build: CMakeFiles/updraft_.dir/src/ui/mainwindow.cpp.obj
.PHONY : CMakeFiles/updraft_.dir/src/ui/mainwindow.cpp.obj.provides.build

CMakeFiles/updraft_.dir/src/ui/moc_mainwindow.cxx.obj: CMakeFiles/updraft_.dir/flags.make
CMakeFiles/updraft_.dir/src/ui/moc_mainwindow.cxx.obj: src/ui/moc_mainwindow.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report "C:\Documents and Settings\Mcc\My Documents\Mff Uk\SW Projekt\GIT\updraft\Experiments\Updraft_\build\CMakeFiles" $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/updraft_.dir/src/ui/moc_mainwindow.cxx.obj"
	C:\MinGW\bin\g++.exe   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles\updraft_.dir\src\ui\moc_mainwindow.cxx.obj -c "C:\Documents and Settings\Mcc\My Documents\Mff Uk\SW Projekt\GIT\updraft\Experiments\Updraft_\build\src\ui\moc_mainwindow.cxx"

CMakeFiles/updraft_.dir/src/ui/moc_mainwindow.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/updraft_.dir/src/ui/moc_mainwindow.cxx.i"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_FLAGS) -E "C:\Documents and Settings\Mcc\My Documents\Mff Uk\SW Projekt\GIT\updraft\Experiments\Updraft_\build\src\ui\moc_mainwindow.cxx" > CMakeFiles\updraft_.dir\src\ui\moc_mainwindow.cxx.i

CMakeFiles/updraft_.dir/src/ui/moc_mainwindow.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/updraft_.dir/src/ui/moc_mainwindow.cxx.s"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_FLAGS) -S "C:\Documents and Settings\Mcc\My Documents\Mff Uk\SW Projekt\GIT\updraft\Experiments\Updraft_\build\src\ui\moc_mainwindow.cxx" -o CMakeFiles\updraft_.dir\src\ui\moc_mainwindow.cxx.s

CMakeFiles/updraft_.dir/src/ui/moc_mainwindow.cxx.obj.requires:
.PHONY : CMakeFiles/updraft_.dir/src/ui/moc_mainwindow.cxx.obj.requires

CMakeFiles/updraft_.dir/src/ui/moc_mainwindow.cxx.obj.provides: CMakeFiles/updraft_.dir/src/ui/moc_mainwindow.cxx.obj.requires
	$(MAKE) -f CMakeFiles\updraft_.dir\build.make CMakeFiles/updraft_.dir/src/ui/moc_mainwindow.cxx.obj.provides.build
.PHONY : CMakeFiles/updraft_.dir/src/ui/moc_mainwindow.cxx.obj.provides

CMakeFiles/updraft_.dir/src/ui/moc_mainwindow.cxx.obj.provides.build: CMakeFiles/updraft_.dir/src/ui/moc_mainwindow.cxx.obj
.PHONY : CMakeFiles/updraft_.dir/src/ui/moc_mainwindow.cxx.obj.provides.build

CMakeFiles/updraft_.dir/qrc_resources.cxx.obj: CMakeFiles/updraft_.dir/flags.make
CMakeFiles/updraft_.dir/qrc_resources.cxx.obj: qrc_resources.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report "C:\Documents and Settings\Mcc\My Documents\Mff Uk\SW Projekt\GIT\updraft\Experiments\Updraft_\build\CMakeFiles" $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/updraft_.dir/qrc_resources.cxx.obj"
	C:\MinGW\bin\g++.exe   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles\updraft_.dir\qrc_resources.cxx.obj -c "C:\Documents and Settings\Mcc\My Documents\Mff Uk\SW Projekt\GIT\updraft\Experiments\Updraft_\build\qrc_resources.cxx"

CMakeFiles/updraft_.dir/qrc_resources.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/updraft_.dir/qrc_resources.cxx.i"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_FLAGS) -E "C:\Documents and Settings\Mcc\My Documents\Mff Uk\SW Projekt\GIT\updraft\Experiments\Updraft_\build\qrc_resources.cxx" > CMakeFiles\updraft_.dir\qrc_resources.cxx.i

CMakeFiles/updraft_.dir/qrc_resources.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/updraft_.dir/qrc_resources.cxx.s"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_FLAGS) -S "C:\Documents and Settings\Mcc\My Documents\Mff Uk\SW Projekt\GIT\updraft\Experiments\Updraft_\build\qrc_resources.cxx" -o CMakeFiles\updraft_.dir\qrc_resources.cxx.s

CMakeFiles/updraft_.dir/qrc_resources.cxx.obj.requires:
.PHONY : CMakeFiles/updraft_.dir/qrc_resources.cxx.obj.requires

CMakeFiles/updraft_.dir/qrc_resources.cxx.obj.provides: CMakeFiles/updraft_.dir/qrc_resources.cxx.obj.requires
	$(MAKE) -f CMakeFiles\updraft_.dir\build.make CMakeFiles/updraft_.dir/qrc_resources.cxx.obj.provides.build
.PHONY : CMakeFiles/updraft_.dir/qrc_resources.cxx.obj.provides

CMakeFiles/updraft_.dir/qrc_resources.cxx.obj.provides.build: CMakeFiles/updraft_.dir/qrc_resources.cxx.obj
.PHONY : CMakeFiles/updraft_.dir/qrc_resources.cxx.obj.provides.build

src/ui/moc_mainwindow.cxx: ../src/ui/mainwindow.h
	$(CMAKE_COMMAND) -E cmake_progress_report "C:\Documents and Settings\Mcc\My Documents\Mff Uk\SW Projekt\GIT\updraft\Experiments\Updraft_\build\CMakeFiles" $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating src/ui/moc_mainwindow.cxx"
	cd C:\DOCUME~1\Mcc\MYDOCU~1\MFFUK~1\SWPROJ~1\GIT\updraft\EXPERI~1\Updraft_\build\src\ui && C:\QtSDK\Desktop\Qt\4.7.4\mingw\bin\moc.exe @moc_mainwindow.cxx_parameters

ui_mainwindow.h: ../src/ui/mainwindow.ui
	$(CMAKE_COMMAND) -E cmake_progress_report "C:\Documents and Settings\Mcc\My Documents\Mff Uk\SW Projekt\GIT\updraft\Experiments\Updraft_\build\CMakeFiles" $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating ui_mainwindow.h"
	C:\QtSDK\Desktop\Qt\4.7.4\mingw\bin\uic.exe -o "C:/Documents and Settings/Mcc/My Documents/Mff Uk/SW Projekt/GIT/updraft/Experiments/Updraft_/build/ui_mainwindow.h" "C:/Documents and Settings/Mcc/My Documents/Mff Uk/SW Projekt/GIT/updraft/Experiments/Updraft_/src/ui/mainwindow.ui"

qrc_resources.cxx: ../src/../data/sky_rendering2.jpg
qrc_resources.cxx: ../src/../data/igc.png
qrc_resources.cxx: ../src/resources.qrc
	$(CMAKE_COMMAND) -E cmake_progress_report "C:\Documents and Settings\Mcc\My Documents\Mff Uk\SW Projekt\GIT\updraft\Experiments\Updraft_\build\CMakeFiles" $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating qrc_resources.cxx"
	C:\QtSDK\Desktop\Qt\4.7.4\mingw\bin\rcc.exe -name resources -o "C:/Documents and Settings/Mcc/My Documents/Mff Uk/SW Projekt/GIT/updraft/Experiments/Updraft_/build/qrc_resources.cxx" "C:/Documents and Settings/Mcc/My Documents/Mff Uk/SW Projekt/GIT/updraft/Experiments/Updraft_/src/resources.qrc"

# Object files for target updraft_
updraft__OBJECTS = \
"CMakeFiles/updraft_.dir/src/main.cpp.obj" \
"CMakeFiles/updraft_.dir/src/ui/mainwindow.cpp.obj" \
"CMakeFiles/updraft_.dir/src/ui/moc_mainwindow.cxx.obj" \
"CMakeFiles/updraft_.dir/qrc_resources.cxx.obj"

# External object files for target updraft_
updraft__EXTERNAL_OBJECTS =

updraft_.exe: CMakeFiles/updraft_.dir/src/main.cpp.obj
updraft_.exe: CMakeFiles/updraft_.dir/src/ui/mainwindow.cpp.obj
updraft_.exe: CMakeFiles/updraft_.dir/src/ui/moc_mainwindow.cxx.obj
updraft_.exe: CMakeFiles/updraft_.dir/qrc_resources.cxx.obj
updraft_.exe: C:/QtSDK/Desktop/Qt/4.7.4/mingw/lib/libQtOpenGL4.a
updraft_.exe: C:/QtSDK/Desktop/Qt/4.7.4/mingw/lib/libQtGui4.a
updraft_.exe: C:/QtSDK/Desktop/Qt/4.7.4/mingw/lib/libQtCore4.a
updraft_.exe: CMakeFiles/updraft_.dir/build.make
updraft_.exe: CMakeFiles/updraft_.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable updraft_.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\updraft_.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/updraft_.dir/build: updraft_.exe
.PHONY : CMakeFiles/updraft_.dir/build

CMakeFiles/updraft_.dir/requires: CMakeFiles/updraft_.dir/src/main.cpp.obj.requires
CMakeFiles/updraft_.dir/requires: CMakeFiles/updraft_.dir/src/ui/mainwindow.cpp.obj.requires
CMakeFiles/updraft_.dir/requires: CMakeFiles/updraft_.dir/src/ui/moc_mainwindow.cxx.obj.requires
CMakeFiles/updraft_.dir/requires: CMakeFiles/updraft_.dir/qrc_resources.cxx.obj.requires
.PHONY : CMakeFiles/updraft_.dir/requires

CMakeFiles/updraft_.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\updraft_.dir\cmake_clean.cmake
.PHONY : CMakeFiles/updraft_.dir/clean

CMakeFiles/updraft_.dir/depend: src/ui/moc_mainwindow.cxx
CMakeFiles/updraft_.dir/depend: ui_mainwindow.h
CMakeFiles/updraft_.dir/depend: qrc_resources.cxx
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Documents and Settings\Mcc\My Documents\Mff Uk\SW Projekt\GIT\updraft\Experiments\Updraft_" "C:\Documents and Settings\Mcc\My Documents\Mff Uk\SW Projekt\GIT\updraft\Experiments\Updraft_" "C:\Documents and Settings\Mcc\My Documents\Mff Uk\SW Projekt\GIT\updraft\Experiments\Updraft_\build" "C:\Documents and Settings\Mcc\My Documents\Mff Uk\SW Projekt\GIT\updraft\Experiments\Updraft_\build" "C:\Documents and Settings\Mcc\My Documents\Mff Uk\SW Projekt\GIT\updraft\Experiments\Updraft_\build\CMakeFiles\updraft_.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/updraft_.dir/depend

