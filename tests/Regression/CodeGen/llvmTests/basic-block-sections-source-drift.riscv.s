.data
.section .rodata
.bss
.text
.globl foo
foo:
	beq a0, zero, label9
	li a0, 1
	j label2
label9:
	sltu a0, zero, a1
	subw a0, zero, a0
	andi a0, a0, 2
	li a1, 4294967295
	and a0, a0, a1
label2:
	ret
