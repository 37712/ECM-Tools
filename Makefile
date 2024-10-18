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

install:
	install -dm 755 $(DESTDIR)/usr/bin
	install -m 755 ecm $(DESTDIR)/usr/bin/
	install -m 755 unecm $(DESTDIR)/usr/bin/

# Clean up executables
clean:
	-rm -f ecm unecm

.PHONY: all clean

