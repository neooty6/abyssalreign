@echo off
setlocal
cd /d "%~dp0"

echo ==========================================
echo Abyssal Reign - Minecraft 1.20.1 Fabric
echo ==========================================
echo.

where java >nul 2>nul
if errorlevel 1 (
  echo ERROR: Java was not found in PATH.
  echo Minecraft 1.20.1 development requires Java 17.
  pause
  exit /b 1
)

java -version
if errorlevel 1 (
  echo ERROR: Java could not be started.
  pause
  exit /b 1
)

echo.
echo Building mod...
call gradlew.bat clean build --no-daemon
set BUILD_RESULT=%ERRORLEVEL%

echo.
if not "%BUILD_RESULT%"=="0" (
  echo BUILD FAILED. The window will stay open so the error can be read.
  pause
  exit /b %BUILD_RESULT%
)

echo BUILD SUCCESSFUL!
echo JAR files are in:
echo %~dp0build\libs
if exist "%~dp0build\libs" explorer "%~dp0build\libs"
pause
exit /b 0
