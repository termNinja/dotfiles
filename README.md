# dotfiles

## VIM
In order to fully utilize my vimrc you should install Vundle plugin manager.
After that, open vim and type:
	`:PluginInstall`

It should install properly all of the plugins I have listed inside my vimrc.
I won't list the plugins I use here, you can check them our yourself inside the rc
file, they are listed in format for Vundle:
	`Plugin 'xxxx/yyyy'`

Where `xxxx` is the GitHub repo for the plugin, and `yyyy` the plugin name.

Please note that [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) plugin
requires additional steps in order to work. Make sure to read docs in order to set it up.

### Most used
Some of the cool stuff I use all the time:
* `ctrl+n` (allows you to select multiple occurences of symbol, you can rename it then with `c`)
* `ctrl+p` (opens up fuzzy search like in [sublime editor](http://docs.sublimetext.info/en/latest/file_management/file_management.html))
* `leader+f` (opens up nerd tree file system browser)
* `f2` (toggle paste mode)
* `f4` (switches between `.cpp` and `.hpp` files)
* `f5` (runs `make` and then executes the program)
* `ctrl+tab` and `ctrl+shift+tab` (if in gvim, to go through tabs (I prefer `:gt` and `:gT`))
* `leader+hl` (turns off highlighted item)
* `leader+rc` (reload vimrc)

### font
Font I use is called **Terminess Powerline** (modification of Terminus font with powerline symbols).
You can find github repo [here](https://github.com/powerline/fonts).

## i3
Make sure to have the following installed:
* i3blocks (additional status bar)
* sysstat (to show cpu usage)
* pulseaudio (to show volume)

I would recommend watching videos [1](https://www.youtube.com/watch?v=j1I63wGcvU4),
[2](https://www.youtube.com/watch?v=8-S0cWnLBKg) and [3](https://www.youtube.com/watch?v=ARKIwOlazKI)
in order to set up your own i3.
