ZSH_THEME="geoffgarside"

aliases="$(pwd)/alias"
if [ -f "$aliases" ] && [ -r "$aliases" ]; then
	source $aliases
fi

functions="$(pwd)/functions"

if [ -f "$functions" ] && [ -r "$functions" ]; then
	source $functions
fi
