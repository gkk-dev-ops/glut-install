![OpenGL Logo](/images/opengl_logo.jpg?raw=true "OpenGL")

# Glut Installer

A simple batch script that installs _OpenGL Utility Toolkit (GLUT)_ over CodeBlocks.

- Run `installglut.bat`

If you want to install it for MSVC you need to change properly variables in `installglut-msvc.bat` and then run it with administrator privileges.

## Manual Installation

If the script fails for any reason, install manually:

1. Copy `glut.h` to CodeBlocks\MinGW\include\GL folder.
1. Copy `glut32.lib` to CodeBlocks\MinGW\lib folder.
1. Copy `glut32.dll` to CodeBlocks\MinGW\bin folder.

for MSVC checkout: https://blog.albertarmea.com/post/40667525183/installing-glut-on-windows

## Known Issues

### Multiple undefined references

- Add `#include <windows.h>`
  _(make sure its the **first** declaration)_.

### Entry Point Not Found

If you encounter the following message:

![Entry Point Error](/images/entry_point_error.png?raw=true "Entry Point Error")

- Paste a copy of `glut32.dll` beside your executable (.exe) usually found in {ProjectName}\bin\Debug.
