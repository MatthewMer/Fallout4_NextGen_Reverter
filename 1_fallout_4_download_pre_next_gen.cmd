@echo off

pushd .

mkdir steamcmd
curl https://steamcdn-a.akamaihd.net/client/installer/steamcmd.zip --output steamcmd.zip
tar -xf steamcmd.zip -C steamcmd
cd steamcmd

set /p pw=Enter Steam password:

IF "%~2"=="hd" (
	steamcmd.exe +login %1 %pw% +runscript ../download_depots_hd.txt
) ELSE (
	steamcmd.exe +login %1 %pw% +runscript ../download_depots_no_hd.txt
)

popd

echo Finished !