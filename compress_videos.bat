@echo off

@REM create output folder
if not exist "compressed" ( 
    mkdir "compressed"
)

@REM get folders
for /d %%f in ("take*") do ( 
	echo - recording %%f -

	@REM create merged videos
	for %%n in ("%%f/*.avi") do (
		@REM line 1: remove ffmpeg info text
		@REM line 2: get input files - video and audio
		@REM line 3: use video from the first file, (optional) audio from the second
		@REM line 4: copy the video, don't re-encode
		@REM line 5: output file
		ffmpeg ^
			-loglevel error -hide_banner -stats ^
			-i "%%f/%%n" -i "%%f/audio.wav" ^
			-map 0:v -map 1:a? ^
			-crf 12 ^
			-preset fast ^
			compressed/%%f.mp4
	)
)

pause