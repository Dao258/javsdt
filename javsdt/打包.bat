@echo off
ECHO. ===============================================================================
echo. =                                                                             =
echo. =         [1]��� ����Jav321  [2]��� ����ini    [3] ��� javdbFc2            =
echo. =                                                                             =
echo. =         [4]��� Javbus����  [5]��� Javbus���� [6] ��� Javlib����          = 
echo. =                                                                             =
ECHO. ===============================================================================
echo.
:choice
set choice=
set /p choice= ������ѡ��:
if /i "%choice%"=="1" goto jav321
if /i "%choice%"=="2" goto Fc2
if /i "%choice%"=="3" goto Createini
if /i "%choice%"=="4" goto BusW
if /i "%choice%"=="5" goto BusY
if /i "%choice%"=="6" goto lib
echo. ������Ч
echo.
goto choice



:jav321
echo. ��ʼ���
pyinstller -F Jav321.py 
cd %~dp0\dist
move /y Jav321.exe �����ˡ�jav321�뷭ǽ.exe
goto end

:Fc2
echo. ��ʼ���
pyinstaller -F JavdbFc2.py
cd dist
move /y JavdbFc2.exe ��FC2��javdb.exe
goto end

:Createini
echo. ��ʼ���
pyinstaller -F CrateIni.py
cd dist
move /y CrateIni.exe ���´���ini.exe
goto end

:BusW
echo. ��ʼ���
pyinstaller -F -i favicon.ico JavBusWuma.py
cd dist
move /y JavBusWuma.exe �����롿Javbus.exe
goto end

:BusY
echo. ��ʼ���
pyinstaller -F -i favicon.ico JavBusYouma.py
cd dist
move /y JavBusYouma.exe �����롿Javbus.exe
goto end

:lib
echo. ��ʼ���
pyinstaller -F javlibrary.py
cd dist
move /y javlibrary.exe �����롿javlibrary.exe
goto end

:end
echo. ����
pause 1>nul 2>nul