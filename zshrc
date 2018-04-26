ZSH_THEME="geoffgarside"

dotfolder="$HOME/.dotfiles"
files=( aliases functions )

for file in $files; do
	f="$dotfolder/$file"
	[ -r $f ] && source $f
done
