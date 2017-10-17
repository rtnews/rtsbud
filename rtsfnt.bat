@echo off
D:
cd D:\rtsnews\rtsfnt
call npm run build:prod -- --aot
@echo on
