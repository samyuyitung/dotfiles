#Dotfiles

These are my dotfiles from my Macbook Pro.

This repository includes:

* zshrc (ZSH shell)
* gitconfig (git aliases)
* vimrc (vim settings)


## Usage 

### zshrc
Add the following line to your main zshrc (~/.zshrc)  
`source < cloned location >/dotfiles/zshrc`

### Git config
Add the following line to your main gitconfig (~/.gitconfig)
```
[include]
	path = Documents/dotfiles/gitalias
```
### Vimrc
Add the following line to your main vimrc (~/.vimrc)  
`source < cloned location >/dotfiles/vimrc`

Also you must make the backup directory, I called mine (~/.vimbackup)  
`mkdir ~/.vimbackup`

