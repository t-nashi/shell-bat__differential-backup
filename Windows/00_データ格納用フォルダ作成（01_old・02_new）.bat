@echo off
rem ===
rem  00_データ格納用フォルダ作成（01_old・02_new）
rem ===
rem //--ドライブ文字とパス
set _root=%~dp0

rem //--作成するディレクトリ名
set createDir1=01_old
set createDir2=02_new
rem ==

rem //--フォルダを移動
pushd %_root%

mkdir %createDir1%
mkdir %createDir2%
