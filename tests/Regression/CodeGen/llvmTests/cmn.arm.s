.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl compare_i_gt
compare_i_gt:
	cmn r0, #78
	mov r1, #42
	mov r0, #24
	movgt r0, r1
	bx lr
.globl compare_r_eq
compare_r_eq:
	rsb r1, r1, #0
	cmp r0, r1
	mov r1, #42
	mov r0, #24
	moveq r0, r1
	bx lr
