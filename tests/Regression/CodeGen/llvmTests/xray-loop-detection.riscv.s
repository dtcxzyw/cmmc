.data
.section .rodata
.bss
.text
.globl foo
foo:
	mv a1, a0
	sltu a0, zero, a0
	bne a0, zero, label9
	mv a0, zero
	j label2
label9:
	mv a0, zero
	addiw a0, zero, 1
	xor a2, a0, a1
	sltu a2, zero, a2
	bne a2, zero, label4
label2:
	ret
label4:
	addiw a0, a0, 1
	xor a2, a0, a1
	sltu a2, zero, a2
	bne a2, zero, label4
	j label2
