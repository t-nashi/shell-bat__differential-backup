@echo off
rem ===
rem  99_フォルダ削除（01_old・02_new・03_new_copy）
rem ===
rem //--バッチ実行時のカレントディレクトリ
set _root=%~dp0

rem //--作成するディレクトリ名
set deleteDir1=01_old
set deleteDir2=02_new
set deleteDir3=03_new_copy
rem ==

rem //--カレントディレクトリへ移動
pushd %_root%
echo moveTo: %_root%

echo --
echo --

rem //--特定のディレクトリ削除（確認： Y/N選択）
rmdir /s %deleteDir1%
rmdir /s %deleteDir2%
rmdir /s %deleteDir3%

rem //--特定のディレクトリ削除（確認無しで削除）
@REM rmdir /s /q %deleteDir1%
@REM rmdir /s /q %deleteDir2%
@REM rmdir /s /q %deleteDir3%
