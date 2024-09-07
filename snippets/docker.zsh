zinit ice as'completion'
zinit snippet 'https://raw.githubusercontent.com/docker/cli/master/contrib/completion/zsh/_docker'

zstyle ':completion:*:*:docker:*' option-stacking yes
zstyle ':completion:*:*:docker-*:*' option-stacking yes
