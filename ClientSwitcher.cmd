@echo off

REM Get the paths to the HDOS and RuneLite installations
set "hdos_path=C:\Users\USERNAME\hidden\hdos"
set "runelite_path=C:\Users\USERNAME\hidden\runelite"

REM Get the path to the local appdata folder for RuneLite
set "appdata_path=%LOCALAPPDATA%"
set "runelite_appdata_path=%appdata_path%\runelite"

REM Check which client the user wants to switch to
set /P client=Enter the client you want to switch to (hdos or runelite):

if "%client%" == "hdos" (
REM Copy the HDOS files to the local appdata folder for RuneLite
xcopy "%hdos_path%" "%runelite_appdata_path%" /E /I /Y
) else if "%client%" == "runelite" (
REM Copy the RuneLite files to the local appdata folder for RuneLite
xcopy "%runelite_path%" "%runelite_appdata_path%" /E /I /Y
) else (
echo Invalid client name
pause
exit /b 1
)

REM Backup the old installation to the hidden folder
set "backup_path="%~dp0backup""
mkdir "%backup_path%"
xcopy "%runelite_path%" "%backup_path%" /E /I /Y

REM Delete everything inside the RuneLite appdata folder
for /D %%i in ("%runelite_appdata_path%\*") do (
rmdir "%%i" /s /q
)
del /q "%runelite_appdata_path%\*.*"

REM Move the new installation to the RuneLite appdata folder
move /y "%runelite_appdata_path%\app" "%runelite_appdata_path%\backup"
move /y "%runelite_appdata_path%\backup\*" "%runelite_appdata_path%"

REM Rename the .exe and .cfg files to 'runelite'
for /R "%runelite_appdata_path%" %%f in (*.exe, *.cfg) do (
ren "%%f" "runelite%%~xf"
)

REM Write the client name to 'client.txt'
echo %client% > "%runelite_appdata_path%\client.txt"

REM Finished
echo Client switched successfully!
pause
