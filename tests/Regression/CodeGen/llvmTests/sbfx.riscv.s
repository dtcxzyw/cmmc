.data
.section .rodata
.bss
.text
.globl f1
f1:
	slliw a0, a0, 12
	srliw a0, a0, 12
	ret
.globl f2
f2:
	slliw a0, a0, 12
	srliw a0, a0, 12
	ret
.globl f3
f3:
	slliw a0, a0, 24
	srliw a0, a0, 29
	ret
.globl f4
f4:
	slliw a0, a0, 24
	srliw a0, a0, 29
	ret
.globl f5
f5:
	slliw a0, a0, 3
	srliw a0, a0, 1
	ret
.globl f6
f6:
	srliw a0, a0, 23
	andi a0, a0, 255
	ret
.globl f7
f7:
	srliw a0, a0, 25
	andi a0, a0, 255
	ret
