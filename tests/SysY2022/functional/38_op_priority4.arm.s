.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, lr }
	sub sp, sp, #4
	bl getint
	mov r4, r0
	bl getint
	mov r5, r0
	bl getint
	sdiv r9, r4, r0
	mov r6, r0
	mls r8, r5, r0, r4
	bl getint
	sub r9, r0, r9
	mov r7, r0
	bl getint
	cmp r8, r9
	beq label4
	mov r0, #1
label2:
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, pc }
label4:
	mul r1, r4, r5
	add r0, r7, r0
	add r2, r4, r5
	add r2, r6, r2
	sdiv r1, r1, r6
	sub r1, r1, r0
	sub r0, r0, r2
	clz r1, r1
	clz r0, r0
	lsr r1, r1, #5
	lsr r0, r0, #5
	orr r0, r1, r0
	b label2
