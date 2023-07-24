.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test_movb
test_movb:
.p2align 4
	bx lr
.globl test_movb_Os
test_movb_Os:
.p2align 4
	bx lr
.globl test_movb_Oz
test_movb_Oz:
.p2align 4
	bx lr
.globl test_movb_hreg
test_movb_hreg:
.p2align 4
	uxth r1, r0
	uxtb r0, r0
	asr r1, r1, #8
	uxtb r0, r0
	and r1, r1, #255
	add r0, r1, r0
	uxtb r0, r0
	bx lr
.globl test_movw
test_movw:
.p2align 4
	bx lr
