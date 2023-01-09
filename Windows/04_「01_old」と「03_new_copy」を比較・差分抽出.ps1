# ===
#  04_「01_old」と「03_new_copy」を比較・差分抽出
# ===
# バッチファイル実行場所のパスを取得
$current_dir = Convert-Path .

# 複製対象フォルダの指定
$dir01_old = $current_dir + '\01_old'
$dir03_new_copy = $current_dir + '\03_new_copy'

# 01_old と 03_new_copy を比較して、変更されたファイルのみが 03_new_copy に残る
robocopy $dir03_new_copy $dir01_old /xc /xn /xo /xx /xl /is /E /move
