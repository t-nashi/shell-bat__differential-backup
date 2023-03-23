#!/bin/bash

# 変数定義 ##########
# カレントディレクトリ（.commandファイル実行時）
CURRENT_DIR=$(cd $(dirname $0);pwd)

# ※compare-dest|比較対象のディレクトリパスは絶対パスで記述
dir01_old="${CURRENT_DIR}/01_old/"
dir02_new="02_new/"
dir03_difference="03_difference/"


# カレントディレクトリへ移動
cd $CURRENT_DIR

echo -e "\n--コマンドstart--\n"
# メイン処理 start ##########

# old と new を比較して new の差分を difference へバックアップ（除外リスト込み）
rsync --exclude-from='ignore_list.txt' --delete -atuvpm --compare-dest=$dir01_old $dir02_new $dir03_difference

# メイン処理 end ##########
echo -e "\n--コマンドend--\n"

# プロセスを終了（バッチファイル実行後にウィンドウを消したい時に有効にする）
# osascript -e 'tell application "Terminal" to close first window'
