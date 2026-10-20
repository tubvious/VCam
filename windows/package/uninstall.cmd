@echo off
rem Unregisters the test camera and removes it from Program Files. Run as administrator.
net session >nul 2>&1
if errorlevel 1 (
  echo Please right-click uninstall.cmd and choose "Run as administrator".
  pause
  exit /b 1
)
set "DEST=%ProgramFiles%\VCam"
if exist "%DEST%\VCamSampleSource.dll" regsvr32 /s /u "%DEST%\VCamSampleSource.dll"
rmdir /s /q "%DEST%"
echo VCam test camera removed.
pause
