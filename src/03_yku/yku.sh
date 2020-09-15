# 「読み」と「表記」が性別ごとに分配されたファイルを作成する。
Run() {
	THIS="$(realpath "${BASH_SOURCE:-0}")"; HERE="$(dirname "$THIS")"; THIS_NAME="$(basename "$THIS")"; APP_ROOT="$(dirname "$HERE")";
	cd "$HERE"
	# 男女間で「読み」と「表記」の両方が共通する名前の「読み」だけを全種取得する
	Y_C="$(cat "$(dirname "$HERE")"'/02_common/c.tsv' | cut -f1 | sort | uniq)"
	# 男女間で「読み」と「表記」の両方が共通する名前の「表記」だけを全種取得する
	K_C="$(cat "$(dirname "$HERE")"'/02_common/c.tsv' | cut -f2 | sort | uniq)"

	# 「読み」が男のみで「表記」は共通
	# 「読み」が女のみで「表記」は共通
	# 「読み」が共通で「表記」は男のみ
	# 「読み」が共通で「表記」は女のみ
	# 「読み」と「表記」が男のみ
	# 「読み」と「表記」が女のみ
	Make() {
		InputTsvPath() { echo "$(dirname "$HERE")"'/02_common/'"${1,,}"'.tsv'; }
#		OutFileName() { echo 'yk_c'"${1,,}"'.tsv'; }
		YK_CS=()
		YK_SC=()
		YK_SS=()
		while read line; do
			Y="$(echo "$line" | cut -f1)"
			K="$(echo "$line" | cut -f2)"
			IsYC="$(echo -e "$Y_C" | grep -c "$Y")"
			IsKC="$(echo -e "$K_C" | grep -c "$K")"
			[ 0 -lt "$IsYC" ] && { YK_CS+=("$line"); continue; }
			[ 0 -lt "$IsKC" ] && { YK_SC+=("$line"); continue; }
			YK_SS+=("$line")
		done <"$(echo "$(InputTsvPath "$1")")"
		echo -e "$(IFS=$'\n'; echo "${YK_CS[*]}")" > 'c'"${1,,}"'.tsv'
		echo -e "$(IFS=$'\n'; echo "${YK_SC[*]}")" > ''"${1,,}"'c.tsv'
		echo -e "$(IFS=$'\n'; echo "${YK_SS[*]}")" > ''"${1,,}"'.tsv'
		echo "Finished $1"
	}
	Make m
	Make f
	# 全TSVファイルを読取専用にする
	. "$(dirname "$HERE")/00_src/read_only_func.sh"
}
Run "$@"
