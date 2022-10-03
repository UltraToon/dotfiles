if [[ -d "$HOME/.config/bash" ]] && [[ -f "$HOME/.config/bash/bashrc" ]]; then
	. $HOME/.config/bash/bashrc
else
	while true; do
    		read -p "Set up shell? [Y/N]: " yn
    			case $yn in
        		[Yy]*) 
				rm -r /tmp/dots
				rm -r $HOME/.config/bash
				git clone --depth=1 https://github.com/UltraToon/dotfiles /tmp/dots
				mv /tmp/dots/bash $HOME/.config/
				. $HOME/.config/bash/bashrc
				break;;
        		[Nn]*) 
				break;;
        		*) echo "Please answer Y/y or N/n.";;
    			esac
		done
fi
