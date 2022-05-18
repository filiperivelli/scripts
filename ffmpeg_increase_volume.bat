::Script to increase volume sound por Filipe Rivelli
::Criado em 17/05/2022
::Usando o ffmpeg version 2022-04-25
::Os arquivos de vídeo devem ser arrastados para o ícone desse script
@echo off
::Cria o diretorio Volume
for %%i in (%*) do if not exist  .\Volume\ (mkdir .\Volume\)
::Executa o ffmpeg para criar novos arquivos com volume mais alto dentro da pasta Volume
for %%i in (%*) do ffmpeg -i %%i -filter:a "volume=1.5"  -vcodec copy ".\Volume\%%~ni%%~xi"
pause
