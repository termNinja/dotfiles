# Path to Oh My Fish install.
set -gx OMF_PATH "/home/termninja/.local/share/omf"

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "/home/termninja/.config/omf"

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

#export TERM="xterm-256color"

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

function cs
    cd $argv
    ls
end

function oopback
    cd /home/termninja/matf/nastava/oop/ispiti/2016.2017/02.jun1/radovi/2_zaostalo
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

function l
    ls $argv
end

tabs -4

# Add to path
# set PATH $PATH /home/termninja/.cabal/bin
set PATH $PATH /home/termninja/myscripts

function fish_user_key_bindings
    for mode in insert default visual
        bind -M $mode \cf forward-char
    end
end

function logo
    echo '                 '(set_color F00)'___
  ___======____='(set_color FF7F00)'-'(set_color FF0)'-'(set_color FF7F00)'-='(set_color F00)')
/T            \_'(set_color FF0)'--='(set_color FF7F00)'=='(set_color F00)')
[ \ '(set_color FF7F00)'('(set_color FF0)'0'(set_color FF7F00)')   '(set_color F00)'\~    \_'(set_color FF0)'-='(set_color FF7F00)'='(set_color F00)')
 \      / )J'(set_color FF7F00)'~~    \\'(set_color FF0)'-='(set_color F00)')
  \\\\___/  )JJ'(set_color FF7F00)'~'(set_color FF0)'~~   '(set_color F00)'\)
   \_____/JJJ'(set_color FF7F00)'~~'(set_color FF0)'~~    '(set_color F00)'\\
   '(set_color FF7F00)'/ '(set_color FF0)'\  '(set_color FF0)', \\'(set_color F00)'J'(set_color FF7F00)'~~~'(set_color FF0)'~~     '(set_color FF7F00)'\\
  (-'(set_color FF0)'\)'(set_color F00)'\='(set_color FF7F00)'|'(set_color FF0)'\\\\\\'(set_color FF7F00)'~~'(set_color FF0)'~~       '(set_color FF7F00)'L_'(set_color FF0)'_
  '(set_color FF7F00)'('(set_color F00)'\\'(set_color FF7F00)'\\)  ('(set_color FF0)'\\'(set_color FF7F00)'\\\)'(set_color F00)'_           '(set_color FF0)'\=='(set_color FF7F00)'__
   '(set_color F00)'\V    '(set_color FF7F00)'\\\\'(set_color F00)'\) =='(set_color FF7F00)'=_____   '(set_color FF0)'\\\\\\\\'(set_color FF7F00)'\\\\
          '(set_color F00)'\V)     \_) '(set_color FF7F00)'\\\\'(set_color FF0)'\\\\JJ\\'(set_color FF7F00)'J\)
                      '(set_color F00)'/'(set_color FF7F00)'J'(set_color FF0)'\\'(set_color FF7F00)'J'(set_color F00)'T\\'(set_color FF7F00)'JJJ'(set_color F00)'J)
                      (J'(set_color FF7F00)'JJ'(set_color F00)'| \UUU)
                       (UU)'(set_color normal)
end

function loveVim2
    echo '         '(set_color b4b4b4)'________ '(set_color 268626)'++     '(set_color b4b4b4)'________
        '(set_color b4b4b4)'/VVVVVVVV\\'(set_color 268626)'++++'(set_color b4b4b4)'  /VVVVVVVV\
        '(set_color b4b4b4)'\VVVVVVVV/'(set_color 268626)'++++++'(set_color b4b4b4)'\VVVVVVVV/
        '(set_color b4b4b4)'\|VVVVVV\|'(set_color 268626)'++++++++'(set_color b4b4b4)'/VVVVV/\'
        '(set_color b4b4b4)'\|VVVVVV\|'(set_color 268626)'++++++'(set_color b4b4b4)'/VVVVV/\'
       '(set_color 268626)'+'(set_color b4b4b4)'\|VVVVVV\|'(set_color 268626)'++++'(set_color b4b4b4)'/VVVVV/\''(set_color 268626)'+
     '(set_color 268626)'+++'(set_color b4b4b4)'\|VVVVVV\|'(set_color 268626)'++'(set_color b4b4b4)'/VVVVV/\''(set_color 268626)'+++++
   '(set_color 268626)'+++++'(set_color b4b4b4)'\|VVVVVV\|/VVVVV/\''(set_color 268626)'+++++++++
     '(set_color 268626)'+++'(set_color b4b4b4)'\|VVVVVVVVVVV/\''(set_color 268626)'+++++++++
       '(set_color 268626)'+'(set_color b4b4b4)'\|VVVVVVVVV/\''(set_color 268626)'+++++++++
        '(set_color b4b4b4)'\|VVVVVVV/\''(set_color 268626)'+++++++++
        '(set_color b4b4b4)'\|VVVVV/\''(set_color 268626)'+++++++++
        '(set_color b4b4b4)'\|VVV/\''(set_color 268626)'+++++++++
        '(set_color b4b4b4)'\'V/\''(set_color 268626)'   ++++++
                 '(set_color 268626)'++'
end

function loveVim1
    echo '                   '(set_color 268626)'+'(set_color 646f70)'
        ________'(set_color 268626)'  +++ '(set_color 646f70)' ________
       /VVVVVVVV\\'(set_color 268626)'+++++'(set_color 646f70)'/VVVVVVVV\
       \VVVVVVVV/'(set_color 268626)'+++++++'(set_color 646f70)'\VVVVVVVV/
        \|VVVVVV\|'(set_color 268626)'+++++++++'(set_color 646f70)'/VVVVV/\'
        \|VVVVVV\|'(set_color 268626)'+++++++'(set_color 646f70)'/VVVVV/\'
       '(set_color 268626)'++'(set_color 646f70)'/\|VVVVVV\|'(set_color 268626)'+++++'(set_color 646f70)'/VVVVV/\''(set_color 268626)'+
     '(set_color 268626)'++++'(set_color 646f70)'/\|VVVVVV\|'(set_color 268626)'+++'(set_color 646f70)'/VVVVV/\''(set_color 268626)'+++++
   '(set_color 268626)'++++++'(set_color 646f70)'/\|VVVVVV\|/VVV'(set_color 268626)'___++++++++++
     '(set_color 268626)'++++'(set_color 646f70)'/\|VVVVVVVVVV/##/'(set_color 268626)' +_+_+_+_
       '(set_color 268626)'++'(set_color 646f70)'/\|VVVVVVVVVVVV +/#_#,#_#,\
        \|VVVVVVV//##/+/#/+/#/\'/#/
        \|VVVVV/\'+/#/+/#/+/#/ /#/
        \|VVV/\'++/#/+/#/ /#/ /#/
        \'V/\'  /##//##//##//###/
                 ++'
end

function gclone
    git clone $argv
end

set fish_greeting "Roses are red, violets are blue, I suck at poetry, but I love C++."

#screenfetch
