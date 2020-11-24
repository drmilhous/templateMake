CC=gcc
all: XX 
XX: XX.c
	 ${CC} -O0 -m32 -o XX.binary XX.c

XX2: XX.c
	 ${CC} -m32 -o XX2.binary XX.c


clean:
	if [ -f XX.binary ]; then rm XX.binary; fi;
