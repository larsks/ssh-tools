prefix = /usr/local
bindir = $(prefix)/bin

SCRIPTS = \
	ssh-add-keys \
	ssh-hostkey-remove

INSTALL = install

all:

install: all
	for script in $(SCRIPTS); do \
		$(INSTALL) -m 755 $$script $(bindir); \
	done
