.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl foo
foo:
	cmp r0, #0
	beq label9
	mov r0, #1
	b label2
label9:
	cmp r1, #0
	mov r0, #0
	movwne r0, #1
	rsb r0, r0, #0
	and r0, r0, #2
label2:
	bx lr
