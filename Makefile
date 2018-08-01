all:
	nasm -f elf ass2.s
	ld -m elf_i386 ass2.o -o ass2
clean:
	rm -rf ass2.o ass2


