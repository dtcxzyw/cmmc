.arch armv7ve
.data
.section .rodata
.bss
.align 4
.globl handler_installed_6144_b
handler_installed_6144_b:
	.zero	4
.text
.syntax unified
.arm
.fpu vfpv4
.globl __mf_sigusr1_respond
__mf_sigusr1_respond:
	bx lr
