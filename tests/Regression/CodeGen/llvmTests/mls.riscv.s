.data
.section .rodata
.bss
.text
.globl f1
f1:
	mulw a0, a0, a1
	subw a0, a2, a0
	ret
.globl f2
f2:
	mulw a0, a0, a1
	subw a0, a0, a2
	ret
