zinit ice from'gh' as'program' \
	atclone'bash generate.sh > ~/.config/starship.toml' \
	atpull'%atclone'
zinit light Namorzyny/StarshipConfig

zinit ice from'gh-r' as'program' \
	atclone'./starship init zsh > init.zsh; ./starship completions zsh > _starship' \
	atpull'%atclone' src'init.zsh'
zinit light starship/starship
