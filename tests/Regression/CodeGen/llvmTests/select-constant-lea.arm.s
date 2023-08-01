.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl select_unsigned_lt_10_8_13
select_unsigned_lt_10_8_13:
	cmp r0, #10
	mov r0, #13
	movlo r0, #8
	bx lr
