@echo off
D:
cd D:\rtsnews\rtsflb
call npm run build:package
D:
cd D:\rtsnews\rtsfnt\node_modules\@nebular
del /S /Q /F D:\rtsnews\rtsfnt\node_modules\@nebular\auth
del /S /Q /F D:\rtsnews\rtsfnt\node_modules\@nebular\icons
del /S /Q /F D:\rtsnews\rtsfnt\node_modules\@nebular\theme
xcopy /S /E D:\rtsnews\rtsflb\src\.lib D:\rtsnews\rtsfnt\node_modules\@nebular
D:
cd D:\rtsnews\rtsfnt
call npm run build:prod -- --aot
call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\Tools\VsDevCmd.bat"
D:
cd D:\rtsnews\rtsweb
devenv rtsweb.sln /Build "Release"
del /S /Q /F D:\rtsnews\publish
rd /S /Q D:\rtsnews\publish
msbuild rtsweb.sln /p:DeployOnBuild=true /p:PublishProfile=FolderProfile.pubxml /p:Configuration=Release
xcopy /S /E /Y D:\rtsnews\rtsweb\rtsweb\Html D:\rtsnews\publish\rtsweb
@echo on
