@echo off

set name=Skripsi
set dirout=%name%RealVtk_out

set gencase="GenCase4_win64.exe"
set dualsphysics="DualSPHysics4_win64.exe"
set boundaryvtk="BoundaryVTK4_win64.exe"
set partvtk="PartVTK4_win64.exe"
set partvtkout="PartVTKOut4_win64.exe"
set measuretool="MeasureTool4_win64.exe"
set computeforces="ComputeForces4_win64.exe"
set floatinginfo="FloatingInfo4_win64.exe"
set isosurface="IsoSurface4_win64.exe"

if exist %dirout% del /Q %dirout%\*.*
if not exist %dirout% mkdir %dirout%

%gencase% %name%_Def_Last %dirout%/%name% -save:all
if not "%ERRORLEVEL%" == "0" goto fail 

rem %dualsphysics% %dirout%/%name% %dirout% -svres -gpu -blocksize:2 
rem if not "%ERRORLEVEL%" == "0" goto fail

rem %boundaryvtk% -loadvtk %dirout%/%name%__Actual.vtk -filexml %dirout%/%name%.xml -savevtkdata %dirout%/%name%.vtk
rem if not "%ERRORLEVEL%" == "0" goto fail

rem %boundaryvtk% -loadvtk %dirout%/%name%__Dp.vtk -filexml %dirout%/%name%.xml -motiondata %dirout% -savevtkdata %dirout%/Basin.vtk -onlymk:111,131,151,161
rem if not "%ERRORLEVEL%" == "0" goto fail

rem %partvtk% -dirin %dirout% -savevtk %dirout%/PartFixed -onlytype:-all,+fixed vars:-all,+press
rem if not "%ERRORLEVEL%" == "0" goto fail

rem %partvtk% -dirin %dirout% -savevtk %dirout%/PartFluid -onlytype:-all,+fluid
rem if not "%ERRORLEVEL%" == "0" goto fail

rem %partvtk% -dirin %dirout% -savevtk %dirout%/PartPiston -onlytype:-all,+moving
rem if not "%ERRORLEVEL%" == "0" goto fail

rem %measuretool% -dirin %dirout% -points Skripsi_PointsWaterElevation.txt -onlytype:-all,+fluid -height -savecsv %dirout%/hc
rem if not "%ERRORLEVEL%" == "0" goto fail

rem %measuretool% -dirin %dirout% -points Skripsi_PointsVelVtk0.txt -onlytype:-all,+fluid vars:-all,+vel -savevtk %dirout%/vel0
rem if not "%ERRORLEVEL%" == "0" goto fail

rem %measuretool% -dirin %dirout% -points Skripsi_PointsVelVtk-0.09.txt -onlytype:-all,+fluid vars:-all,+vel -savevtk %dirout%/vel9
rem if not "%ERRORLEVEL%" == "0" goto fail

rem %measuretool% -dirin %dirout% -points Skripsi_PointsVelVtk-0.06.txt -onlytype:-all,+fluid vars:-all,+vel -savevtk %dirout%/vel6
rem if not "%ERRORLEVEL%" == "0" goto fail

rem %measuretool% -dirin %dirout% -points Skripsi_PointsVelVtk-0.03.txt -onlytype:-all,+fluid vars:-all,+vel -savevtk %dirout%/vel3
rem if not "%ERRORLEVEL%" == "0" goto fail

rem %measuretool% -dirin %dirout% -points Skripsi_PointsVelVtk-0.12.txt -onlytype:-all,+fluid vars:-all,+vel -savevtk %dirout%/vel12
rem if not "%ERRORLEVEL%" == "0" goto fail

rem %measuretool% -dirin %dirout% -points wavegage1.txt -onlytype:-all,+fluid -height -savecsv %dirout%/wg1
rem if not "%ERRORLEVEL%" == "0" goto fail

rem %measuretool% -dirin %dirout% -points wavegage2.txt -onlytype:-all,+fluid -height -savecsv %dirout%/wg2
rem if not "%ERRORLEVEL%" == "0" goto fail

rem %measuretool% -dirin %dirout% -points wavegage3.txt -onlytype:-all,+fluid -height -savecsv %dirout%/wg3
rem if not "%ERRORLEVEL%" == "0" goto fail

rem %measuretool% -dirin %dirout% -points wavegage4.txt -onlytype:-all,+fluid -height -savecsv %dirout%/wg4
rem if not "%ERRORLEVEL%" == "0" goto fail

rem %measuretool% -dirin %dirout% -points wavegage5.txt -onlytype:-all,+fluid -height -savecsv %dirout%/wg5
rem if not "%ERRORLEVEL%" == "0" goto fail

rem %measuretool% -dirin %dirout% -points wavegage6.txt -onlytype:-all,+fluid -height -savecsv %dirout%/wg6
rem if not "%ERRORLEVEL%" == "0" goto fail

rem %measuretool% -dirin %dirout% -points wavegage7.txt -onlytype:-all,+fluid -height -savecsv %dirout%/wg7
rem if not "%ERRORLEVEL%" == "0" goto fail

rem %measuretool% -dirin %dirout% -points wavegage8.txt -onlytype:-all,+fluid -height -savecsv %dirout%/wg8
rem if not "%ERRORLEVEL%" == "0" goto fail

rem %measuretool% -dirin %dirout% -points wavegage9.txt -onlytype:-all,+fluid -height -savecsv %dirout%/wg9
rem if not "%ERRORLEVEL%" == "0" goto fail

rem %measuretool% -dirin %dirout% -points wavegage10.txt -onlytype:-all,+fluid -height -savecsv %dirout%/wg10
rem if not "%ERRORLEVEL%" == "0" goto fail

rem %measuretool% -dirin %dirout% -points adv1.txt -onlytype:-all,+fluid vars:-all,+vel -savecsv %dirout%/adv1
rem if not "%ERRORLEVEL%" == "0" goto fail

rem %measuretool% -dirin %dirout% -points adv2.txt -onlytype:-all,+fluid vars:-all,+vel -savecsv %dirout%/adv2
rem if not "%ERRORLEVEL%" == "0" goto fail

rem %measuretool% -dirin %dirout% -points adv3.txt -onlytype:-all,+fluid vars:-all,+vel -savecsv %dirout%/adv3
rem if not "%ERRORLEVEL%" == "0" goto fail

rem %measuretool% -dirin %dirout% -points wavegage1.txt -savevtk %dirout%/wg1
rem if not "%ERRORLEVEL%" == "0" goto fail

rem %measuretool% -dirin %dirout% -points wavegage2.txt -savevtk %dirout%/wg2
rem if not "%ERRORLEVEL%" == "0" goto fail

rem %measuretool% -dirin %dirout% -points wavegage3.txt -savevtk %dirout%/wg3
rem if not "%ERRORLEVEL%" == "0" goto fail

rem %measuretool% -dirin %dirout% -points wavegage4.txt -savevtk %dirout%/wg4
rem if not "%ERRORLEVEL%" == "0" goto fail

rem %measuretool% -dirin %dirout% -points wavegage5.txt -savevtk %dirout%/wg5
rem if not "%ERRORLEVEL%" == "0" goto fail

rem %measuretool% -dirin %dirout% -points wavegage6.txt -savevtk %dirout%/wg6
rem if not "%ERRORLEVEL%" == "0" goto fail

rem %measuretool% -dirin %dirout% -points wavegage7.txt -savevtk %dirout%/wg7
rem if not "%ERRORLEVEL%" == "0" goto fail

rem %measuretool% -dirin %dirout% -points wavegage8.txt -savevtk %dirout%/wg8
rem if not "%ERRORLEVEL%" == "0" goto fail

rem %measuretool% -dirin %dirout% -points wavegage9.txt -savevtk %dirout%/wg9
rem if not "%ERRORLEVEL%" == "0" goto fail

rem %measuretool% -dirin %dirout% -points wavegage10.txt -savevtk %dirout%/wg10
rem if not "%ERRORLEVEL%" == "0" goto fail

%measuretool% -dirin %dirout% -points adv1.txt -savevtk %dirout%/adv1
if not "%ERRORLEVEL%" == "0" goto fail

%measuretool% -dirin %dirout% -points adv2.txt -savevtk %dirout%/adv2
if not "%ERRORLEVEL%" == "0" goto fail

%measuretool% -dirin %dirout% -points adv3.txt -savevtk %dirout%/adv3
if not "%ERRORLEVEL%" == "0" goto fail

rem %measuretool% -dirin %dirout% -points velanimasi.txt -onlytype:-all,+fluid vars:-all,+vel -savecsv %dirout%/velanimasi
rem if not "%ERRORLEVEL%" == "0" goto fail

rem %measuretool% -dirin %dirout% -points Skripsi_PointsVelocity_x10.txt -onlytype:-all,+fluid vars:-all,+vel.x,-vel.y,-vel.z,-rhop -savecsv %dirout%/velx_x10
rem if not "%ERRORLEVEL%" == "0" goto fail

rem %measuretool% -dirin %dirout% -points Skripsi_PointsVelocity_x11,1.txt -onlytype:-all,+fluid vars:-all,+vel.m,+vel.x -savecsv %dirout%/vel_x11,1
rem if not "%ERRORLEVEL%" == "0" goto fail

rem %measuretool% -dirin %dirout% -points Skripsi_PointsVelocity_x12,3.txt -onlytype:-all,+fluid vars:-all,+vel.m,+vel.x -savecsv %dirout%/vel_x12,3
rem if not "%ERRORLEVEL%" == "0" goto fail

rem %measuretool% -dirin %dirout% -points Skripsi_PointsVelocity_x13.txt -onlytype:-all,+fluid vars:-all,+vel.m,+vel.x -savecsv %dirout%/vel_x13
rem if not "%ERRORLEVEL%" == "0" goto fail

rem %measuretool% -dirin %dirout% -points Skripsi_PointsVelocity_x14.txt -onlytype:-all,+fluid vars:-all,+vel.m,+vel.x -savecsv %dirout%/vel_x14
rem if not "%ERRORLEVEL%" == "0" goto fail

rem %isosurface% -dirin %dirout% -saveiso %dirout%/Surface
rem if not "%ERRORLEVEL%" == "0" goto fail



:success
echo All done
goto end

:fail
echo Execution aborted.

:end
pause