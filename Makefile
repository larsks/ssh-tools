prefix = $(HOME)
bindir = $(prefix)/bin

SCRIPTS = \
	ssh-add-keys \
	ssh-hostkey-remove

INSTALL = install

all:

install: all
	install -d -m 755 $(bindir); \
	for script in $(SCRIPTS); do \
		$(INSTALL) -m 755 $$script $(bindir); \
	done
