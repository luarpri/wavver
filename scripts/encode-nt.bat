@echo off

ffmpeg -i wave.wav -vn -c:a pcm_u8 -ar 22050 -rematrix_maxval 1.0 -ac 1 wave_converted.wav
gba-wav-to-s3m-converter file -i wave_converted.wav -o audio/wave.s3m