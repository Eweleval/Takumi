###############################################################
### Dotfiles install script
### Makefile
###
### Copyright (C) 2018 Cyberfee
###
### By: cyberfee
### Email: deltax.fluxion@gmail.com
###
### Any questions, comments, or bug reports may be sent to above
### email address. Enjoy, and keep on using Arch.
###
### License: GPL v3.0
###############################################################

all:
	bash ./install.sh

debug:
	bash -x ./install.sh

coverage:
	kcov /tmp/codecov install.sh
