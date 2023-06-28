.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl sext_16_32
sext_16_32:
	sxth r0, r0
	bx lr
.globl sext_1_16
sext_1_16:
	sxth r0, r0
	uxth r0, r0
	bx lr
.globl sext_1_32
sext_1_32:
	bx lr
.globl sext_1_8
sext_1_8:
	sxtb r0, r0
	uxtb r0, r0
	bx lr
.globl sext_8_16
sext_8_16:
	sxtb r0, r0
	uxth r0, r0
	bx lr
.globl sext_8_32
sext_8_32:
	sxtb r0, r0
	bx lr
.globl zext_16_32
zext_16_32:
	uxth r0, r0
	bx lr
.globl zext_1_16
zext_1_16:
	uxth r0, r0
	bx lr
.globl zext_1_32
zext_1_32:
	bx lr
.globl zext_1_8
zext_1_8:
	uxtb r0, r0
	bx lr
.globl zext_8_16
zext_8_16:
	uxtb r0, r0
	bx lr
.globl zext_8_32
zext_8_32:
	uxtb r0, r0
	bx lr
