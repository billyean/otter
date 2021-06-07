NASM = nasm
DD = dd
all: boot.img loader.bin

boot.bin:	boot.asm
	$(NASM) $< -o $@

loader.bin:	loader.asm
	$(NASM) $< -o $@

boot.img: boot.bin
	$(DD) if=$< of=$@ bs=512 count=1 conv=notrunc

clean:
	$(RM) *.bin *.img