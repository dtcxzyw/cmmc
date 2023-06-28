.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl select_unsigned_lt_10_8_13
select_unsigned_lt_10_8_13:
	cmp r0, #10
	mov r1, #8
	mov r0, #13
	movlo r0, r1
	bx lr
