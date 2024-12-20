@echo off
title NeonOS
color 0f

echo Booting NeonOS...
pause
echo NeonOS Booted...
pause
cls
color 0c
echo ERROR LOADING MAIN SYSTEMS REBOOT REQUIRED
echo REBOOTING...
pause
cls
echo Reboot success Booting NeonOS
echo NeonOS booted Successfully
color 0f
pause
:homeScreen
cls
pause
echo Type 1 to view system details.  Type 2 to change your user.  Type 3 to power off NeonOS.
pause

set /p input=
if %input% == 1 goto Details
if %input% == 2 goto UserChange
if %input% == 3 goto PowerOff


:UserChange
cls
echo Do you want to change your name? Type 1 for yes Type 2 for no
set /p input=
if %input% == 1 goto FullNameChange
if %input% == 2 goto homeScreen


:FullNameChange
cls
set /p input=

echo %input%?
pause
goto homeScreen


:Details

cls
echo SYSTEM OS: NEONOS
echo -----------------
echo -----------------
echo GRAPHICS CARD: NIVIDIA RTX
echo -----------------
echo -----------------
echo RAM: G.Skill Trident Z5 RGB 6000MHz DDR5
echo -----------------
echo -----------------
echo SYSTEM VERSION: NEON31.5
echo -----------------
echo -----------------
echo Press 9 to go back

set /p input=
if %input% == 9 goto homeScreen


:PowerOff

cls
echo Powering Off...
color 4a
pause