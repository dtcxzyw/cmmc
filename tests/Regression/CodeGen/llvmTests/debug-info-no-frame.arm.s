.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl need_cfi_def_cfa_offset
need_cfi_def_cfa_offset:
	bx lr
