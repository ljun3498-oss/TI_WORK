@echo off
REM =========================================================================
REM Build motion_control.dll for Windows Testing
REM =========================================================================

echo Building motion_control.dll...

REM Check if MinGW-w64 gcc is available
where gcc >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: gcc not found in PATH
    echo Please install MinGW-w64 or MSYS2 and add to PATH
    echo Download from: https://www.msys2.org/
    pause
    exit /b 1
)

REM Set paths
set SOURCE_DIR=..\f2837x_cpu1\source
set INCLUDE_DIR=..\f2837x_cpu1\include
set OUTPUT_DLL=motion_control.dll

REM Compile the DLL
gcc -shared -o %OUTPUT_DLL% ^
    %SOURCE_DIR%\motion_control.c ^
    -I%INCLUDE_DIR% ^
    -lm ^
    -O2 ^
    -DWIN32 ^
    -D_WIN32 ^
    -Dfloat32_t=float ^
    -Duint16_t="unsigned short" ^
    -Duint32_t="unsigned int"

if %ERRORLEVEL% EQU 0 (
    echo.
    echo SUCCESS: %OUTPUT_DLL% built successfully!
    echo Location: %CD%\%OUTPUT_DLL%
    dir %OUTPUT_DLL%
) else (
    echo.
    echo ERROR: Build failed!
    pause
    exit /b 1
)

echo.
pause


