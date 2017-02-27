# neovim
My Neovim setup

I use macOS, and install Neovim as follow :

```
brew update
brew install neovim/neovim/neovim
```

For other platform see
https://github.com/neovim/neovim/wiki/Installing-Neovim

After the install, open Neovim with the nvim command and run

```
:CheckHealth
```

And fix as needed.

#### Setup configuration file

```
mkdir $HOME/.config/init.vim
```

Install `dein` (https://github.com/Shougo/dein.vim)

#### Dependencies

ag for code searching using fzf
```
brew install the_silver_searcher
```
