# ===
#  02_バージョンの新しいデータを「02_new」へ複製
# ===
# バッチファイル実行場所のパスを取得
$current_dir = Convert-Path .

# 複製対象フォルダの指定
$duplicate_dir = $current_dir + '\__SampleHTMLdata\20230105_html\*'

# 複製除外対象ファイルの指定
$ignore_files = 'ignore01.txt', 'ignore02.txt'
# この書き方でもok
# $ignore_files = 'ignore*'

# 複製先フォルダの指定
$destination_dir = $current_dir + '\02_new\'

# 複製処理の実行
New-Item $destination_dir -type directory -Force
Copy-Item -Path (Get-Item -Path $duplicate_dir -Exclude ($ignore_files)).FullName -Destination $destination_dir -Recurse -Force
