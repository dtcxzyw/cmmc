.data
.section .rodata
.bss
.text
.globl f1
f1:
	li a0, -1
	ret
.globl f10
f10:
	xori a0, a0, -2
	sltiu a0, a0, 1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl f2
f2:
	xori a0, a0, -1
	ret
.globl f3
f3:
	slliw a0, a0, 2
	xori a0, a0, -1
	ret
.globl f4
f4:
	andi a1, a1, 255
	sllw a0, a0, a1
	xori a0, a0, -1
	ret
.globl f5
f5:
	srliw a0, a0, 2
	xori a0, a0, -1
	ret
.globl f6
f6:
	andi a1, a1, 255
	srlw a0, a0, a1
	xori a0, a0, -1
	ret
.globl f7
f7:
	srliw a0, a0, 2
	xori a0, a0, -1
	ret
.globl f8
f8:
	andi a1, a1, 255
	srlw a0, a0, a1
	xori a0, a0, -1
	ret
.globl f9
f9:
	li a0, -3
	ret
