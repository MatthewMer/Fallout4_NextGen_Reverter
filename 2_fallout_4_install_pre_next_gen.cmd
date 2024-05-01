@echo off

if exist "steamcmd/steamapps/content/app_377160" (
	if exist "%~1" (
		echo copying files to Fallout 4 directory "%~1"
		pushd .

		cd /d "%~1"
		rmdir /s /q Data
		popd
		pushd .
		
		cd steamcmd/steamapps/content/app_377160
		FOR /D /r %%G in ("depot_*") DO (
			cd %%~nxG
			REM robocopy .\ "%~1" /e /copyall /mt:32
			xcopy .\ "%~1" /s /e /y /f /x
			cd ..
		)

		cd /d "%~1"
		cd ..\..\
		if exist appmanifest_377160.acf (
			attrib +r appmanifest_377160.acf
			echo Update for Fallout 4 disabled
		) else (
			echo Fallout 4 appmanifest not found
		)
		
		popd

		echo Finished !
	) else (
		echo Fallout 4 directory not given !
	)
) else (
	echo "Fallout 4 files (pre next gen) not yet downloaded"
	echo "Please run \"1_fallout_4_download_pre_next_gen.cmd\" first !"
)