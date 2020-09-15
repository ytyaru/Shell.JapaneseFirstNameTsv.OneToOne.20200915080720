# 名前取得
# https://b-name.jp
#data=/tmp/work/data.txt
#max_line="$(cat "$data" | wc -l)"
# 先頭2行を飛ばす
data="$(cat /tmp/work/data.txt | tail -n +3)"
max_line="$(echo -e "$data" | wc -l)"
line=1
result=()
while true; do
	result+="$(echo -e "$data" | awk 'NR=='"$line"';')""\n"
#	result+="$(cat "$data" | awk 'NR=='"$line"';')""\n"
#	line_text="$(cat "$data" | awk 'NR=='"$line"';')""\n"
#	[ '名前	よみ	使用漢字	字画数	姓名判断' == "$line_text" ] && continue;
#	[ '' == "$line_text" ] && continue;
#	result+="$line_text""\n"
	line=$((line+3))
	[ $max_line -le $line ] && break
done
text="$(IFS="\n"; echo "${result[*]}")"
echo -e "$text"
echo -e "$text" | xsel -bi
