@echo off
setlocal

set fn=watchface\res\A100_001
del %fn%.bmp
ffmpeg -i %fn%.png -vf scale=126:238 -pix_fmt rgb565 %fn%.bmp
del %fn%.png
templatewatch .
