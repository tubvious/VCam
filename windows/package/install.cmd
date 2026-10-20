@echo off
rem Copies the test camera to Program Files and registers it. Run as administrator.
net session >nul 2>&1
if errorlevel 1 (
  echo Please right-click install.cmd and choose "Run as administrator".
  pause
  exit /b 1
)
set "DEST=%ProgramFiles%\VCam"
if not exist "%DEST%" mkdir "%DEST%"
copy /y "%~dp0VCamSampleSource.dll" "%DEST%\" >nul || goto :fail
copy /y "%~dp0VCamSample.exe" "%DEST%\" >nul || goto :fail
powershell -NoProfile -Command "Get-ChildItem -LiteralPath '%DEST%' | Unblock-File"
regsvr32 /s "%DEST%\VCamSampleSource.dll" || goto :fail
echo VCam test camera installed in %DEST%
echo Next: run "%DEST%\VCamSample.exe" and keep its window open.
pause
exit /b 0
:fail
echo Install failed.
pause
exit /b 1
