ZSH_THEME="geoffgarside"

files="aliases functions"

for file in $files; do
	f="$(pwd)/${file}"
	[ -r "$f" ] && source $f
done
