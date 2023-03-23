#!/bin/bash

# 変数定義 ##########
# カレントディレクトリ（.commandファイル実行時）
CURRENT_DIR=$(cd $(dirname $0);pwd)

dir_target="03_difference/"


# カレントディレクトリへ移動
cd $CURRENT_DIR

echo -e "\n--コマンドstart--\n"
# メイン処理 start ##########

# "*.DS_Store" "*__MACOSX*"
# 念の為余分な不可視ファイルを削除
find $dir_target -name ".DS_Store" -delete
# 空ディレクトリを再帰的に削除
find $dir_target -type d -empty -delete

# メイン処理 end ##########
echo -e "\n--コマンドend--\n"

# プロセスを終了（バッチファイル実行後にウィンドウを消したい時に有効にする）
# osascript -e 'tell application "Terminal" to close first window'
