@ECHO OFF
SETLOCAL EnableDelayedExpansion
ECHO                      _____ _______    _____ _____ _____ _______ 
ECHO     /\        /\    / ____^|__   __^|  / ____/ ____^|_   _^|__   __^|
ECHO    /  \      /  \  ^| (___    ^| ^|    ^| ^|   ^| ^|      ^| ^|    ^| ^|   
ECHO   / /\ \    / /\ \  \___ \   ^| ^|    ^| ^|   ^| ^|      ^| ^|    ^| ^|   
ECHO  / ____ \  / ____ \ ____) ^|  ^| ^|    ^| ^|___^| ^|____ _^| ^|_   ^| ^|   
ECHO /_/    \_\/_/    \_\_____/   ^|_^|     \_____\_____^|_____^|  ^|_^|   
ECHO.                                                                 
ECHO [CS352] Computer Graphics
ECHO OpenGL Utility Toolkit (GLUT) installer v0.1 - 2017(c)

REM followed these guys instructions
REM https://w3.cs.jmu.edu/bernstdh/Web/common/help/cpp_mingw-glut-setup.php
REM http://www.codeincodeblock.com/2011/02/setup-openglglut-in-codeblock.html
PAUSE

REM Change the letter to any other drive (where CodeBlocks is installed)
SET DriveLetter=C
SET MSVC_VERSION="14.31.31103"
SET ARCH="x86"
SET VISUAL_STUDIO_VERSION="2022"

SET "MSVC=%DriveLetter%:\Program Files\Microsoft Visual Studio\%VISUAL_STUDIO_VERSION%\Community\VC\Tools\MSVC\%MSVC_VERSION%\"

SET "binary=%MSVC%\bin\Hostx64\%ARCH%\"
SET "library=%MSVC%\lib\%ARCH%\"
if not exist "includeGL=%MSVC%\include\GL\" mkdir "includeGL=%MSVC%\include\GL\"
SET "includeGL=%MSVC%\include\GL\"

REM Copy glut.dll to bin, glut.lib and glut32.lib to lib and glut.h to include
XCOPY glut.dll "%binary%" /F /Y /I
XCOPY glut.lib "%library%" /F /Y /I
XCOPY glut32.lib "%library%" /F /Y /I
XCOPY glut.h "%includeGL%" /F /Y /I
PAUSE
