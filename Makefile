CC = gcc
CFLAGS = -Wall -Wextra -pedantic -std=c99

all: analyze

analyze: code.c
    $(CC) $(CFLAGS) -o code code.c

check: your_source_file.c
    cppcheck --enable=all code.c
