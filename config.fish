# Path to Oh My Fish install.
set -gx OMF_PATH "/home/termninja/.local/share/omf"

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "/home/termninja/.config/omf"

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

export TERM="xterm-256color"

# start X at login (if using fish as default shell, which you shouldn't)
# if status --is-login
#     if test -z "$DISPLAY" -a "$XDG_VTNR" -eq "1"
#         exec startx -- -keeptty
#     end
# end

# aliases
function vimrc
	vim ~/.vimrc
end

function i3rc
	vim ~/.i3/config
end

function fishrc
	vim ~/.config/fish/config.fish
end

function catx
	pygmentize -g $argv
end

tabs -4

screenfetch
