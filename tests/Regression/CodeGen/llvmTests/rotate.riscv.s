.data
.section .rodata
.bss
.text
.globl rot0
rot0:
	li a2, 32
	subw a2, a2, a1
	srlw a2, a0, a2
	sllw a0, a0, a1
	or a0, a2, a0
	ret
.globl rot1
rot1:
	slliw a1, a0, 10
	srliw a0, a0, 22
	or a0, a1, a0
	ret
.globl rot2
rot2:
	li a2, 32
	subw a2, a2, a1
	sllw a2, a0, a2
	srlw a0, a0, a1
	or a0, a2, a0
	ret
.globl rot3
rot3:
	srliw a1, a0, 10
	slliw a0, a0, 22
	or a0, a1, a0
	ret
