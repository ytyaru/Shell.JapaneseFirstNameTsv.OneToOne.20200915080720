# 読取専用にする（手作業で作成したTSVファイルをすべて読取専用にする）
while read file; do
	chmod -w "$file"
done < <(find "$HERE" -iname '*.tsv')
