@echo off

if exist "steamcmd/steamapps/content/app_377160" (
	if exist "%~1" (
		echo copying files to Fallout 4 directory "%~1"
		pushd .

		cd /d "%~1"
		REM rmdir /s /q Data

		echo Deleting Creation Club content
		if exist .\Data\ccBGSFO4046-TesCan* (
			del /f .\Data\ccBGSFO4046-TesCan*
		)
		if exist .\Data\ccBGSFO4096-AS_Enclave* (
			del /f .\Data\ccBGSFO4096-AS_Enclave*
		)
		if exist .\Data\ccBGSFO4110-WS_Enclave* (
			del /f .\Data\ccBGSFO4110-WS_Enclave*
		)
		if exist .\Data\ccBGSFO4115-X02* (
			del /f .\Data\ccBGSFO4115-X02*
		)
		if exist .\Data\ccBGSFO4116-HeavyFlamer* (
			del /f .\Data\ccBGSFO4116-HeavyFlamer*
		)
		if exist .\Data\ccFSVFO4007-Halloween* (
			del /f .\Data\ccFSVFO4007-Halloween*
		)
		if exist .\Data\ccOTMFO4001-Remnants* (
			del /f .\Data\ccOTMFO4001-Remnants*
		)
		if exist .\Data\ccSBJFO4003-Grenade* (
			del /f .\Data\ccSBJFO4003-Grenade*
		)
		
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
	echo Could not find Fallout 4 files ^(pre next gen^)
	echo Please run '1_fallout_4_download_pre_next_gen.cmd' first !
)