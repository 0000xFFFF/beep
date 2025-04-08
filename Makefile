GCC = gcc
ARGS = -Wall -Wextra
PREFIX = /usr/local
BINDIR = $(PREFIX)/bin

beep:
	$(GCC) $(ARGS) $(ARGS) src/beep.c -o beep

beep-keyboard:
	$(GCC) $(ARGS) $(ARGS) src/beep-keyboard.c -o beep-keyboard

all: beep beep-keyboard
release: all

clean:
	rm -f beep
	rm -f beep-keyboard

install:
	install -m 755 beep $(BINDIR)
	install -m 755 beep-keyboard $(BINDIR)

uninstall:
	rm -f $(BINDIR)/$(EXEC)

