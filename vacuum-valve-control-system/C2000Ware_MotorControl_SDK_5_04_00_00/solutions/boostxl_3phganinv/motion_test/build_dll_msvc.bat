@echo off
REM =========================================================================
REM Build motion_control.dll using MSVC (Visual Studio)
REM =========================================================================

echo ========================================
echo Motion Control DLL Builder (MSVC)
echo ========================================
echo.

REM 查找 MSBuild
set MSBUILD_PATH=
for %%i in (2022 2019) do (
    if exist "C:\Program Files\Microsoft Visual Studio\%%i\Community\MSBuild\Current\Bin\MSBuild.exe" (
        set MSBUILD_PATH=C:\Program Files\Microsoft Visual Studio\%%i\Community\MSBuild\Current\Bin\MSBuild.exe
        goto :found
    )
    if exist "C:\Program Files\Microsoft Visual Studio\%%i\Professional\MSBuild\Current\Bin\MSBuild.exe" (
        set MSBUILD_PATH=C:\Program Files\Microsoft Visual Studio\%%i\Professional\MSBuild\Current\Bin\MSBuild.exe
        goto :found
    )
    if exist "C:\Program Files\Microsoft Visual Studio\%%i\Enterprise\MSBuild\Current\Bin\MSBuild.exe" (
        set MSBUILD_PATH=C:\Program Files\Microsoft Visual Studio\%%i\Enterprise\MSBuild\Current\Bin\MSBuild.exe
        goto :found
    )
)

echo ERROR: MSBuild not found!
echo.
echo Please install Visual Studio 2019 or 2022 with:
echo   - Desktop development with C++ workload
echo   - .NET desktop development workload
echo.
pause
exit /b 1

:found
echo Found MSBuild: %MSBUILD_PATH%
echo.

REM 选择构建配置
set BUILD_CONFIG=Release
if "%1"=="debug" set BUILD_CONFIG=Debug
if "%1"=="Debug" set BUILD_CONFIG=Debug

echo Building configuration: %BUILD_CONFIG%
echo.

REM 构建 DLL 项目
echo [1/2] Building MotionControlDLL (C)...
"%MSBUILD_PATH%" MotionControlDLL\MotionControlDLL.vcxproj /p:Configuration=%BUILD_CONFIG% /p:Platform=x64 /t:Rebuild /v:minimal

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo *** ERROR: DLL build failed! ***
    pause
    exit /b 1
)

echo.
echo [2/2] Building MotionAPI_Test (C#)...
"%MSBUILD_PATH%" MotionAPI_Test\MotionAPI_Test.csproj /p:Configuration=%BUILD_CONFIG% /p:Platform=x64 /t:Rebuild /v:minimal

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo *** ERROR: C# build failed! ***
    pause
    exit /b 1
)

echo.
echo ========================================
echo BUILD SUCCESS!
echo ========================================
echo.
echo Output files:
echo   DLL: bin\%BUILD_CONFIG%\motion_control.dll
echo   EXE: MotionAPI_Test\bin\%BUILD_CONFIG%\net6.0-windows\MotionAPI_Test.exe
echo.

if exist "bin\%BUILD_CONFIG%\motion_control.dll" (
    dir "bin\%BUILD_CONFIG%\motion_control.dll" | findstr /C:".dll"
)

echo.
echo You can now run MotionAPI_Test.exe
echo.
pause

