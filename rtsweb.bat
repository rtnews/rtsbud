@echo off
call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\Tools\VsDevCmd.bat"
D:
cd D:\rtsnews\rtsweb
devenv rtsweb.sln /Build "Release"
del /S /Q /F D:\rtsnews\publish
rd /S /Q D:\rtsnews\publish
msbuild rtsweb.sln /p:DeployOnBuild=true /p:PublishProfile=FolderProfile.pubxml /p:Configuration=Release
xcopy /S /E /Y D:\rtsnews\rtsweb\rtsweb\Html D:\rtsnews\publish\rtsweb
cd D:\rtsnews\publish\rtsweb
if not exist Upload (
	cd Upload
	mkdir ImageNews
	mkdir NewsTmp
	mkdir Clerk
)
pause
@echo on
