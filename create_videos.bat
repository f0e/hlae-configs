@echo off

REM create output folder
if not exist "compiled" ( 
    mkdir "compiled"
)

REM get folders
for /d %%f in ("take*") do ( 
	echo - recording %%f -

	REM get audio file
	for %%a in ("%%f/audio_*.wav") do (
		REM get videos
		for /d %%n in ("%%f/*") do (
			echo video: %%n
			REM create merged video
			for %%v in ("%%f/%%n/*") do (
				REM line 1: remove ffmpeg info text
				REM line 2: get input files - video and audio
				REM line 3: use video from the first file, (optional) audio from the second
				REM line 4: copy the video, don't re-encode
				REM line 5: output file (%%~xv = video extension)
				ffmpeg ^
					-loglevel error -hide_banner -stats ^
					-i "%%f/%%n/%%v" -i "%%f/%%a" ^
					-map 0:v -map 1:a? ^
					-c:v copy ^
					compiled/%%f_%%n%%~xv
			)
		)
	)
)

pause