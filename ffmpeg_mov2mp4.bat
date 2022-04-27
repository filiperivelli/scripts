::Script para transformar videos mov em mp4 por Filipe Rivelli
::Criado em 27/07/2022
::Os arquivos de vídeo devem ser arrastados para o ícone desse script
@echo off
::Cria o diretorio mp4 caso nao exista
for %%i in (%*) do if not exist  %%~pimp4\ (mkdir %%~pimp4\)
::Executa o ffmpeg para criar novos arquivos mp4 dentro da pasta mp4
for %%i in (%*) do ffmpeg -y -vsync 0 -hwaccel cuda -hwaccel_output_format cuda -i %%i -vcodec h264_nvenc -acodec aac -strict -2 .\mp4\%%~ni.mp4

::Executar sem aceleração de hardware
::for %%i in (%*) do ffmpeg -i %%i -vcodec h264 -acodec aac -strict -2 .\mp4\%%~ni.mp4