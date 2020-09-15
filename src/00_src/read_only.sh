# 読取専用にする（手作業で作成したTSVファイルをすべて読取専用にする）
Run() {
	THIS="$(realpath "${BASH_SOURCE:-0}")"; HERE="$(dirname "$THIS")"; THIS_NAME="$(basename "$THIS")"; APP_ROOT="$(dirname "$HERE")";
	. "$HERE/read_only_func.sh"
}
Run "$@"
