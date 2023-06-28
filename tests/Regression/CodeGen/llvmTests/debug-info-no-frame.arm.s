.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl need_cfi_def_cfa_offset
need_cfi_def_cfa_offset:
	bx lr
