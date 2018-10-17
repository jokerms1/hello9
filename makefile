main:main.c
	ar rsv ./RELEASE/libadd.a ./RELEASE/*.o
	gcc -o main main.c -I ./Include/ -L ./RELEASE -ladd







