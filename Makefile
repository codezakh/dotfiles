#!/bin/bash

#run with make --always-make

all: VIM EMACS IPYTHON OCAML BASH GVIM TMUX

STOW_DIR=/usr/local/stow
U_TARGET=~/Source/dotfiles

TMUX:
	stow -t $(U_TARGET) tmux

VIM:
	stow -t $(U_TARGET) vim


EMACS:
	stow -t $(U_TARGET)/.emacs.d/ emacs

IPYTHON:
	stow -t $(U_TARGET)/.ipython/ ipython_profiles

OCAML:
	stow -t $(U_TARGET) ocaml

BASH:
	stow -t $(U_TARGET) bash

GVIM:
	stow -t $(U_TARGET) gvim
