if [ -z $SSH_PATH ]; then; SSH_PATH=$(which ssh); fi

ssh() {
	credential_name="$1"
	credential_file="$HOME/.secrets/sshpass/$credential_name"
	if [ -f "$credential_file" ]; then
		echo "Found password file: $credential_name"
		shift
		if [ -z "$*" ]; then
			sshpass -f "$credential_file" $SSH_PATH $credential_name
		else
			sshpass -f "$credential_file" $SSH_PATH $*
		fi
	else
		$SSH_PATH $*
	fi
}
