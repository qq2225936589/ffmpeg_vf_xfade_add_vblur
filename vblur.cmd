ffmpeg -hide_banner -i "01.mp4" -i "02.mp4" -filter_complex_script "_vfstr_vblur.txt" -map [outv] -map [outa] -look_ahead 0 -ac 2 -c:v h264_qsv -c:a aac -profile:v high -level 3.1 -preset:v veryfast -keyint_min 12 -g 12 -sc_threshold 0 -b:v 3000k -minrate 3000k -maxrate 6000k -bufsize 6000k -b:a 128k -avoid_negative_ts make_zero -fflags +genpts -y ffmpeg-xfade-concat-drawtext-vblur.mp4
pause
