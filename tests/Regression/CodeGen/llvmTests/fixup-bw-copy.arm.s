.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl test_movb
test_movb:
	bx lr
.p2align 4
.globl test_movb_Os
test_movb_Os:
	bx lr
.p2align 4
.globl test_movb_Oz
test_movb_Oz:
	bx lr
.p2align 4
.globl test_movb_hreg
test_movb_hreg:
	uxth r1, r0
	uxtb r0, r0
	asr r1, r1, #8
	uxtb r0, r0
	and r1, r1, #255
	add r0, r1, r0
	uxtb r0, r0
	bx lr
.p2align 4
.globl test_movw
test_movw:
	bx lr
