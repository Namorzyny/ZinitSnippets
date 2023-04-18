setproxy() {
	export http_proxy="$1"
	export https_proxy="$1"
	export ftp_proxy="$1"
	export rsync_proxy="$1"
	export all_proxy="$1"
	export HTTP_PROXY="$1"
	export HTTPS_PROXY="$1"
	export FTP_PROXY="$1"
	export RSYNC_PROXY="$1"
	export ALL_PROXY="$1"
	if [[ -z "$2" ]]; then
		export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"
	else
		export no_proxy="$2"
	fi
	export NO_PROXY="$no_proxy"
}

unsetproxy() {
	unset http_proxy
	unset https_proxy
	unset ftp_proxy
	unset rsync_proxy
	unset all_proxy
	unset HTTP_PROXY
	unset HTTPS_PROXY
	unset FTP_PROXY
	unset RSYNC_PROXY
	unset ALL_PROXY
	unset no_proxy
	unset NO_proxy
}
