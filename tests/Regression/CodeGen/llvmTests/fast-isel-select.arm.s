.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl fastisel_select
fastisel_select:
	sub r0, r0, r1
	cmp r0, #0
	mov r0, #0
	movwne r0, #1
	rsb r0, r0, #0
	movw r1, #56279
	movt r1, #18378
	and r0, r0, r1
	bx lr
