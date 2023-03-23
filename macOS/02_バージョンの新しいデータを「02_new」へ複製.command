#!/bin/bash

# 変数定義 ##########
# カレントディレクトリ（.commandファイル実行時）
CURRENT_DIR=$(cd $(dirname $0);pwd)

# 複製対象のフォルダ指定
DUPLICATE_DIR="${CURRENT_DIR}/__SampleHTMLdata/20230105_html/"

# 複製先フォルダの指定
DESTINATION_DIR="${CURRENT_DIR}/02_new/"


# カレントディレクトリへ移動
cd $CURRENT_DIR

echo -e "\n--コマンドstart--\n"
# メイン処理 start ##########

# 除外リスト適用で対象を複製
rsync --exclude-from='ignore_list.txt' -atuv --delete $DUPLICATE_DIR $DESTINATION_DIR

# メイン処理 end ##########
echo -e "\n--コマンドend--\n"

# プロセスを終了（バッチファイル実行後にウィンドウを消したい時に有効にする）
# osascript -e 'tell application "Terminal" to close first window'
