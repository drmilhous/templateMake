all: XX
XX: XX.o asm_io.o
	gcc -m32 -o $@ $+ driver.c

XX.o: XX.asm 
	nasm -f elf XX.asm -o XX.o

asm_io.o: asm_io.asm 
	nasm -f elf -d ELF_TYPE asm_io.asm -o asm_io.o

clean:
	rm XX *.o
