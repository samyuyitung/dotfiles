alias chrome="open -a /Applications/Google\ Chrome.app"
alias x="exit"
alias vrc='vim ~/Documents/dotfiles/vimrc'
alias zrc='vim ~/.zshrc && source ~/.zshrc'
alias got='git'
alias work="cd ~/code"

eval $(thefuck --alias)
eval $(docker-machine env default)

mkcd () {
	mkdir "$1"
	cd "$1"
}

weather() {
	curl -k "http://wttr.in/${1:=toronto}"
}
