::Script para transcodar videos h265 para h264
::Criado em 29/07/2022
::Os arquivos de vídeo devem ser arrastados para o ícone desse script
::@echo off
::Cria o diretorio mp4 caso nao exista
for %%i in (%*) do if not exist  %%~pih264\ (mkdir %%~pih264\)
::Executa o ffmpeg para criar novos arquivos mp4 dentro da pasta mp4
for %%i in (%*) do ffmpeg -hwaccel cuda -i %%i -c:v h264_nvenc -pix_fmt yuv420p -preset slow -rc constqp/cbr/vbr -b:v 8M -maxrate:v 10M -c:a aac -b:a 224k .\h264\%%~ni.mkv

::Executar sem aceleração de hardware
::for %%i in (%*) do ffmpeg -i %%i -vcodec h264 -acodec aac -strict -2 .\mp4\%%~ni.mp4
pause