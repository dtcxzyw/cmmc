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
