@echo off

REM Get the path to the local appdata folder for RuneLite
set "appdata_path=%LOCALAPPDATA%"
set "runelite_appdata_path=%appdata_path%\runelite"

echo Uninstalling the Client Switcher utility...

REM Delete the HDOS and RuneLite files from the hidden folder
rd /s /q "C:\Users\USERNAME\hidden\hdos"
rd /s /q "C:\Users\USERNAME\hidden\runelite"

REM Delete HDOS and RuneLite files from the RuneLite appdata folder
rd /s /q "%runelite_appdata_path%\app\HDOS"
rd /s /q "%runelite_appdata_path%\app\RuneLite"

REM Restore the original RuneLite installation
move /y "%runelite_appdata_path%\backup\*" "%runelite_appdata_path%\"

REM Delete the backup folder
rd /s /q "%runelite_appdata_path%\backup"

REM Delete the 'client.txt' file
del /q "%runelite_appdata_path%\client.txt"

echo Uninstallation completed successfully!

pause
