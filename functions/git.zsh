cleanrepo() {
	git reset
	git checkout $(git rev-parse --show-toplevel)
	git clean -df
	git clean -Xdf
}

ffmerge() {
	git fetch . $1:$2
}

clone() {
	show_usage() {
		echo 'usage: clone <host> <repository> [<directory> [options]]'
	}
	git_host=$1
	git_repo=$2
	target_dir=$3
	if [ -z $git_host ]; then; show_usage; return 1; else; shift; fi
	if [ -z $git_repo ]; then; show_usage; return 1; else; shift; fi
	if [ ! -z $target_dir ]; then; shift; fi
	if [ ${git_repo:0:4} = 'git@' ]
	then
		git_path=$(echo $git_repo | awk -F ':' '{print $2}')
		git clone $* "git@${git_host}:${git_path}" $target_dir
	else
		git clone $* $git_repo $target_dir
	fi
}
