.arch armv7ve
.data
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
	uxtb r1, r0
	uxth r0, r0
	asr r0, r0, #8
	uxtb r0, r0
	uxtb r1, r1
	uxtb r0, r0
	add r0, r1, r0
	uxtb r0, r0
	bx lr
.globl test_movw
test_movw:
	bx lr
