.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl test_movb
test_movb:
	bx lr
.globl test_movb_Os
test_movb_Os:
	bx lr
.globl test_movb_Oz
test_movb_Oz:
	bx lr
.globl test_movb_hreg
test_movb_hreg:
	uxth r1, r0
	asr r1, r1, #8
	uxtb r1, r1
	uxtb r1, r1
	uxtb r0, r0
	uxtb r0, r0
	add r0, r0, r1
	uxtb r0, r0
	bx lr
.globl test_movw
test_movw:
	bx lr
