@echo off

cd /d %~dp0

set /p user=Enter Steam username: 
set /p pw=Enter Steam password: 
set /p hd=Download HD textures (y/n): 

pushd .

if not exist "steamcmd\steamcmd.exe" ( 
	mkdir steamcmd
	curl https://steamcdn-a.akamaihd.net/client/installer/steamcmd.zip --output steamcmd.zip
	tar -xf steamcmd.zip -C steamcmd
)

cd steamcmd

if exist "steamapps\content\app_377160" (
	rmdir /s /q steamapps\content\app_377160
)

IF "%hd%"=="y" (
	steamcmd.exe +login %user% %pw% +runscript ../download_depots_hd.txt
) ELSE (
	steamcmd.exe +login %user% %pw% +runscript ../download_depots_no_hd.txt
)

popd

echo Finished !
pause