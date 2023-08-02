.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl imm1
imm1:
	mov r0, #0
	bx lr
.p2align 4
.globl imm2
imm2:
	mov r0, #1
	bx lr
.p2align 4
.globl imm3
imm3:
	mvn r0, #0
	bx lr
.p2align 4
.globl imm4
imm4:
	mov r0, #32000
	bx lr
.p2align 4
.globl test_large
test_large:
	movw r1, #16960
	movt r1, #15
	str r1, [r0, #0]
	movw r1, #33920
	movt r1, #30
	str r1, [r0, #4]
	movw r1, #50880
	movt r1, #45
	str r1, [r0, #8]
	movw r1, #2304
	movt r1, #61
	str r1, [r0, #12]
	movw r1, #19264
	movt r1, #76
	str r1, [r0, #16]
	movw r1, #36224
	movt r1, #91
	str r1, [r0, #20]
	movw r1, #53184
	movt r1, #106
	str r1, [r0, #24]
	movw r1, #4608
	movt r1, #122
	str r1, [r0, #28]
	movw r1, #21568
	movt r1, #137
	str r1, [r0, #32]
	movw r1, #38528
	movt r1, #152
	str r1, [r0, #36]
	bx lr
