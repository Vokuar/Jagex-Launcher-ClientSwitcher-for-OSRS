@echo off
set "folderName=HiddenFolder"
set "folderPath=%userprofile%\%folderName%"

set "linkHDOS32=https://cdn.hdos.dev/launcher/latest/HDOSSetup32.exe"
set "linkHDOS64=https://cdn.hdos.dev/launcher/latest/HDOSSetup32.exe"

set "linkRunelite32=https://github.com/runelite/launcher/releases/latest/download/RuneLiteSetup32.exe"
set "linkRunelite64=https://github.com/runelite/launcher/releases/latest/download/RuneLiteSetup.exe"

echo Enter 32 or 64 for each installer version to download:
set /P "hdosver=HDOS version: "
set /P "runelitever=Runelite version: "

echo Downloading installers...
if %hdosver% == 32 (
 start "" "%linkHDOS32%"
) else (
 start "" "%linkHDOS64%"
)
if %runelitever% == latest (
 if %hdosver% == 32 (
  start "" "%linkRunelite32%"
 ) else (
  start "" "%linkRunelite64%"
 )
) else (
 if %hdosver% == 32 (
  start "" "%linkRunelite32%"
 ) else (
  start "" "%linkRunelite64%"
 )
)

if %hdosver% == 32 (
    start /wait "" "%userprofile%\downloads\RuneLiteSetup32.exe" /S /D="%folderPath%\Runelite"
) else (
    start /wait "" "%userprofile%\downloads\RuneLiteSetup.exe" /S /D="%folderPath%\Runelite"
)

attrib +h "%folderPath%"
