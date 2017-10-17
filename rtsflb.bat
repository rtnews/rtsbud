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
@echo on
