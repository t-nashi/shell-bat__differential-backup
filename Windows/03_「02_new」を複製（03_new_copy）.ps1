# ===
#  03_「02_new」を複製（03_new_copy）
# ===
# バッチファイル実行場所のパスを取得
$current_dir = Convert-Path .

# 複製対象フォルダの指定
$dir02_new = $current_dir + '\02_new'
$dir03_new_copy = $current_dir + '\03_new_copy'

# 02_new を 03_new_copy として複製
copy-item $dir02_new $dir03_new_copy -Recurse
