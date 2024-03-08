CC = gcc
CFLAGS = -Wall -Wextra -pedantic -std=c99

all: analyze

analyze: code.c
    $(CC) $(CFLAGS) -o code code.c

check: code.c
    cppcheck --enable=all code.c
