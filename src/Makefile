.PHONY: s21_cat s21_cat_test s21_grep s21_grep_test  s21_grep_check clean check tests

all: s21_cat s21_grep

tests: s21_cat_test s21_grep_test
	

s21_cat: 
	cd ./cat && $(MAKE) ./s21_cat 

s21_cat_test:
	cd ./cat && make test

s21_cat_check:
	cd ./cat && make check

s21_grep: 
	cd ./grep && $(MAKE) ./s21_grep

s21_grep_test:
	cd ./grep && make test

s21_grep_check:
	cd ./grep && make check

clean:
	cd ./cat && $(MAKE) clean
	cd ./grep && $(MAKE) clean

fix:
	clang-format --Werror -i ./cat/includes/*.h
	clang-format --Werror -i ./grep/includes/*.h
	clang-format --Werror -i ./cat/srcs/*.c
	clang-format --Werror -i ./grep/srcs/*.c

check:
	cp ../materials/linters/.clang-format ./
	clang-format --Werror -n ./cat/includes/*.h
	clang-format --Werror -n ./grep/includes/*.h
	clang-format --Werror -n ./cat/srcs/*.c
	clang-format --Werror -n ./grep/srcs/*.c
