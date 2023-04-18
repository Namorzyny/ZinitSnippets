ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#606060'
ZSH_AUTOSUGGEST_ACCEPT_WIDGETS=("${(@)ZSH_AUTOSUGGEST_ACCEPT_WIDGETS:#forward-char}")
ZSH_AUTOSUGGEST_ACCEPT_WIDGETS=("${(@)ZSH_AUTOSUGGEST_ACCEPT_WIDGETS:#vi-forward-char}")
ZSH_AUTOSUGGEST_PARTIAL_ACCEPT_WIDGETS+=(forward-char)
ZSH_AUTOSUGGEST_PARTIAL_ACCEPT_WIDGETS+=(vi-forward-char)
autosuggest_partial_wordwise () {
	if (( $CURSOR == $#BUFFER )); then
		zle forward-word
	else
		zle forward-char
	fi
}
zle -N autosuggest_partial_wordwise
bindkey "${terminfo[kcuf1]}" autosuggest_partial_wordwise
ZSH_AUTOSUGGEST_IGNORE_WIDGETS+=(autosuggest_partial_wordwise)
