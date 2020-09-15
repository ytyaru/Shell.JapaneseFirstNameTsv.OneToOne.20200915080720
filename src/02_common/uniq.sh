# 男女ファイルから共通行を削除する（「読み」と「表記」の両方が完全一致する行を、男女それぞれのファイルから削除する）
Run() {
	THIS="$(realpath "${BASH_SOURCE:-0}")"; HERE="$(dirname "$THIS")"; THIS_NAME="$(basename "$THIS")"; APP_ROOT="$(dirname "$HERE")";
	cd "$HERE"
	PATH_C="${HERE}/c.tsv"
#	PATH_M="$(dirname "$(dirname "$HERE")")/01_uniq/m.tsv"
#	PATH_F="$(dirname "$(dirname "$HERE")")/01_uniq/f.tsv"
	PATH_M="$(dirname "$HERE")/01_uniq/m.tsv"
	PATH_F="$(dirname "$HERE")/01_uniq/f.tsv"
	[ ! -f "$PATH_C" ] && "${HERE}/common.sh"
	grep -Fvxf "$PATH_C" "$PATH_M" > m.tsv
	grep -Fvxf "$PATH_C" "$PATH_F" > f.tsv
	. "$(dirname "$HERE")/00_src/read_only_func.sh"
}
Run "$@"
