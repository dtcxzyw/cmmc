.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl i32_select_0_or_neg1
i32_select_0_or_neg1:
	cmp r0, #0
	mov r0, #0
	movwne r0, #1
	rsb r0, r0, #0
	bx lr
