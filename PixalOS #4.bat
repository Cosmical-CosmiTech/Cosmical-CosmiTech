 @echo off
color 0a
title CosmiTech Administrator Terminal

:Main
echo Finding Kernel.........
echo Kernel Found! Booting Terminal...
pause

cls            
echo Type Here Your Username
set/p name=
if %name% == CosmiTechFounder1! goto CAT_Menu

:BARRIER
goto Main

:CAT_Menu
cls
echo HELLO! %name%
echo.
pause
goto Main_Menu

:Main_Menu
cls
echo What Would You Like To Do %name%? Type the number.
echo.
echo 1.Info 2.Date of creation 3.TERMINAL

set /p input=
if %input% == 1 goto info
if %input% == 2 goto app
if %input% == 3 goto terminal


:info

cls
echo.=======================
echo     Pixal__OS
echo.=======================
echo     DETAILS:  
echo.----------------------- 
echo.   
echo    Kernel ver = 5.6.7
echo.  
echo    Build = 1
echo.
echo.============================
echo     @Copyright CosmiTech LTD
echo.============================
echo.
echo  1. Menu

set /p check= 

if %check% == 1 goto CAT_Menu


 
:app 
cls

echo. This Was Made At 16:21 (4:21) English Time On December The 20th In The Year 2024! 
echo.
pause
echo Type 3 to go back to the main CAT menu...
set /p check= 

if %check% == 3 goto menu

:Admin 
cls
@echo off

echo Welcome Administrator!
pause
echo What would you like to-do?

set /p input=
if %input% == Terminal goto terminal
if %input% == Reboot goto menu

:terminal
cls
echo Command list: 1. BootList
echo. and
echo. 2. Github File Download
pause
set /p input=
if %input% == BootList goto Bootlist


:BootList
cls

echo BootList: UNKNOWN and PixalOS
echo What would you like to boot? Type quit to shutdown

set /p input=
if %input% == UNKNOWN goto NeonOS
if %input% == PixalOS goto menu
if %input% == Quit goto AdminShutdown


:AdminShutdown
cls
echo Sad to see you go Administrator.
echo. Shutting down PixalOS
pause

:Github_File_Download
@echo off
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {gh repo clone Cosmical-CosmiTech/Cosmical-CosmiTech}"
pause





:NeonOS
title NeonOS
color 0f
@echo off

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
echo GRAPHICS CARD: UNKNOWN [VIRTUAL MACHINE DETECTED]
echo -----------------
echo -----------------
echo RAM: UNKNOWN [VIRTUAL MACHINE DETECTED]
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
