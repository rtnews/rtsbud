@echo off

set ELECTRON_MIRROR=http://npm.taobao.org/mirrors/electron/
set SQLITE3_BINARY_SITE=http://npm.taobao.org/mirrors/sqlite3
set SASS_BINARY_SITE=http://npm.taobao.org/mirrors/node-sass

npm --registry=https://registry.npm.taobao.org --cache=%HOMEDRIVE%%HOMEPATH%\.npm\.cache\cnpm --disturl=https://npm.taobao.org/dist --userconfig=%HOMEDRIVE%%HOMEPATH%\.cnpmrc %*