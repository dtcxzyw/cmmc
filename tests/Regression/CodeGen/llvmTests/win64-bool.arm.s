.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl pass_bool
pass_bool:
	cmp r0, #0
	mov r0, #0
	movwne r0, #1
	rsb r0, r0, #0
	and r0, r0, #66
	bx lr
.globl ret_true
ret_true:
	mov r0, #1
	bx lr
