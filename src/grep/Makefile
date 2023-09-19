.PHONY: all s21_grep rebuild test check clean build

CC=gcc
CFLAGS=-std=c11 -g -Wall -Werror -Wextra
EXECUTABLE=s21_grep
SOURCES=srcs/main.c srcs/s21_grep.c
OBJECTS=$(SOURCES:.c=.o)

HEADERS=-I ./includes


all: s21_grep

s21_grep: ./srcs/s21_grep.c ./srcs/main.c ./includes/s21_grep.h
	$(CC) $(CFLAGS) ./srcs/s21_grep.c ./srcs/main.c -o $(EXECUTABLE)

rebuild: clean all 

check:
	cp ../../materials/linters/CPPLINT.cfg ./
	python3 ../../materials/linters/cpplint.py --extensions=c includes/*.h srcs/*.c

test: rebuild
	cd ./tests && bash test_grep.sh

clean:
	rm -f CPPLINT.cfg ./tests/log.txt ./log.txt  \
		./tests/implementation-tests.o* \
		./tests/implementation-tests.g*\
		./srcs/main.o \
		./srcs/s21_grep.o \
		$(EXECUTABLE)
