echo -e "segment .text\nglobal  aa\naa:\n" >/tmp/aa.asm
while read line; do
	echo -e "$line" >> /tmp/aa.asm
	nasm -f elf32 /tmp/aa.asm -o /tmp/aa.out
	gdb -batch -ex "file /tmp/aa.out" -ex 'disassemble /r aa'
done
