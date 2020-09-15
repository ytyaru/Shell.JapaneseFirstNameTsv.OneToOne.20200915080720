# 名前取得
# https://b-name.jp
# 空行とヘッダ行を削除する
data="$(cat /tmp/work/data.txt | sed  '/^$/d' | sed -e '/名前	よみ	使用漢字	字画数	姓名判断/d')"
# 1行目から順に3行ごとに取得する
max_line="$(echo -e "$data" | wc -l)"
line=1
result=()
while true; do
	result+="$(echo -e "$data" | awk 'NR=='"$line"';')""\n"
	line=$((line+3))
	[ $max_line -le $line ] && break
done
text="$(IFS="\n"; echo "${result[*]}")"
echo -e "$text"
echo -e "$text" | xsel -bi
