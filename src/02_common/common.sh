# 男女ファイルにおける共通行を抽出する（「読み」と「表記」が男女間で完全一致する行のみ抽出する）
Run() {
	THIS="$(realpath "${BASH_SOURCE:-0}")"; HERE="$(dirname "$THIS")"; THIS_NAME="$(basename "$THIS")"; APP_ROOT="$(dirname "$HERE")";
	PATH_M="$(dirname "$HERE")/01_uniq/m.tsv"
	PATH_F="$(dirname "$HERE")/01_uniq/f.tsv"
	grep -x -i -f "$PATH_M" "$PATH_F" > c.tsv
	. "$(dirname "$HERE")/00_src/read_only_func.sh"
}
Run "$@"
