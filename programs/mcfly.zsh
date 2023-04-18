export MCFLY_FUZZY=2
export MCFLY_RESULTS=50

zinit ice id-as'mcfly' \
	cloneonly nocompile \
	atclone'sh mcfly --git cantino/mcfly --force --to $HOME/.local/bin' \
	atpull'%atclone'
zinit snippet 'https://raw.githubusercontent.com/cantino/mcfly/master/ci/install.sh'

eval "$(~/.local/bin/mcfly init zsh)"
