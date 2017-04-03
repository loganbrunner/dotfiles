# Tyler Cloutier's dotfiles
Kaizen and Kaikaku

## Installation
```
git clone https://github.com/cloutiertyler/dotfiles.git ~/.dotfiles && ~/.dotfiles/install
```
The procedure will:
* Install the dotfiles in your home
* Upgrade all submodules
* Install vim plugins

## Components
* Editor: `vim`
* VCS: `git`

This configuration is well tuned for developing in the following languages:
* `C`
* `Javascript`
* `Python`
* `Scala`
* `Shellscript`
* `Swift`

## Managers
My dotfiles use the following managers:
* [Dotbot](https://github.com/anishathalye/dotbot) for dotfiles installation
* [Vundle](https://github.com/gmarik/Vundle.vim) for `vim` plugin management

## Prerequisites
The following packages need to be installed on the system before installing the dotfiles:

* `git`

## Making Local Customizations
You can make local customizations for some programs by editing these files:

* `vim` : `~/.vimrc_local`

## License
Copyright (c) 2017 Tyler Cloutier. Released under the MIT License. See
[LICENSE][license] for details.

[license]: LICENSE

Thank you to [@mlongob](https://github.com/mlongob) for the starting point and the inspiration.
