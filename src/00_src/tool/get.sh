# 名前取得
# https://mnamae.jp/p/b_30423044304d.html
data=/tmp/work/data.txt
max_line="$(cat "$data" | wc -l)"
#line=3
line=1
#result=()
result=()
while true; do
#	cat "$data" | awk 'NR=='"$line"';'
#	result+="$(cat "$data" | awk 'NR=='"$line"';')"
	result+="$(cat "$data" | awk 'NR=='"$line"';')""\n"
	line=$((line+4))
	[ $max_line -le $line ] && break
done
text="$(IFS="\n"; echo "${result[*]}")"
echo -e "$text"
echo -e "$text" | xsel -bi
#echo -e "$result"
#echo -e "$result" | xsel -bi
