# 重複行を削除する。（手作業で作成したTSVからミスによる重複行を削除する）
Run() {
	THIS="$(realpath "${BASH_SOURCE:-0}")"; HERE="$(dirname "$THIS")"; THIS_NAME="$(basename "$THIS")"; APP_ROOT="$(dirname "$HERE")";
	cd "$THIS"
	PATH_M="$(dirname "$HERE")/00_src/male.tsv"
	PATH_F="$(dirname "$HERE")/00_src/female.tsv"
	cat "$PATH_M" | sort | uniq > m.tsv
	cat "$PATH_F" | sort | uniq > f.tsv
	. "$(dirname "$HERE")/00_src/read_only_func.sh"
}
Run "$@"
