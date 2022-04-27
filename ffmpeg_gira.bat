::Script para girar videos por Filipe Rivelli
::Criado em 27/07/2022
::Os arquivos de vídeo devem ser arrastados para o ícone desse script
@echo off
::Cria o diretorio Girado caso nao exista
for %%i in (%*) do if not exist  %%~piGirado\ (mkdir %%~piGirado\)
::Executa o ffmpeg para criar novos arquivos girados dentro da pasta Girado
for %%i in (%*) do ffmpeg -i %%i -map_metadata 0 -metadata:s:v rotate="90" -codec copy %%~piGirado\%%~ni%%~xi