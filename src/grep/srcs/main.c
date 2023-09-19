#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "../includes/s21_grep.h"

#define SIZE_SPEC 100
#define ft_unuased(var) (void)var

/*
 * -e pattern
 * -i Ignore uppercase vs. lowercase.
 * -v Invert match.
 * -c Output count of matching lines only.
 * -l Output matching files only.
 * -n Precede each matching line with a line number.
 * -h Output matching lines without preceding them by file names.
 * -s Suppress error messages about nonexistent or unreadable files.
 * -f file Take regexes from a file.
 * -o Output the matched parts of a matching line.

 * Usage: grep [OPTION]... PATTERNS [FILE]...
*/
void s21_grep(int argc, char **argv);

// -------------------------------------------------------

int main(int argc, char *argv[]) {
  s21_grep(argc, argv);

  return 0;
}
