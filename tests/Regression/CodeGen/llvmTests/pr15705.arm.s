.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl PR15705
PR15705:
	cmp r0, r1
	bne label11
	mov r0, r2
	b label2
label11:
	cmp r0, r2
	mov r0, r1
	moveq r0, r3
label2:
	bx lr
