# Makefile to compile ecm.c and unecm.c

# Compiler
CC = gcc

# Compiler flags
CFLAGS = -Wall -O2

# Targets
TARGETS = ecm unecm

# Default target to build all
all: $(TARGETS)

# Rule to build ecm directly
ecm: ecm.c
	$(CC) $(CFLAGS) -o ecm ecm.c

# Rule to build unecm directly
unecm: unecm.c
	$(CC) $(CFLAGS) -o unecm unecm.c

# for linux only, install the files in to path
install:
	install -dm 755 $(DESTDIR)/usr/bin
	install -m 755 ecm $(DESTDIR)/usr/bin/
	install -m 755 unecm $(DESTDIR)/usr/bin/

#for linus only, remove files from path
uninstall:
	rm /usr/bin/ecm /usr/bin/unecm

# Clean up executables
clean:
	rm -f ecm unecm

.PHONY: all clean

