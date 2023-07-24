.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, lr }
	sub sp, sp, #4
	bl getint
	bl getint
	sub r6, r0, #8
	mov r4, r0
	bl getint
	add r7, r6, r0
	mov r5, r0
	bl getint
	add r7, r7, r0
	mov r6, r0
	bl getint
	add r2, r4, #2
	add r1, r7, r0
	sub r1, r1, r2
	add r2, r5, #4
	sub r1, r1, r2
	add r2, r6, #6
	sub r1, r1, r2
	add r2, r0, #8
	sub r1, r1, r2
	add r2, r4, #56
	add r2, r5, r2
	add r2, r6, r2
	add r2, r0, r2
	add r1, r1, r2
	add r2, r4, #18
	sub r1, r1, r2
	add r2, r5, #24
	sub r1, r1, r2
	add r2, r6, #30
	sub r1, r1, r2
	add r2, r0, #36
	sub r1, r1, r2
	add r2, r4, #176
	add r2, r5, r2
	add r2, r6, r2
	add r2, r0, r2
	add r1, r1, r2
	add r2, r4, #34
	sub r1, r1, r2
	add r2, r5, #44
	sub r1, r1, r2
	add r2, r6, #54
	sub r1, r1, r2
	add r2, r0, #64
	sub r1, r1, r2
	add r2, r4, #232
	add r2, r5, r2
	add r2, r6, r2
	add r2, r0, r2
	add r1, r1, r2
	add r2, r4, #50
	sub r1, r1, r2
	add r2, r5, #64
	sub r1, r1, r2
	add r2, r6, #78
	sub r1, r1, r2
	add r2, r0, #92
	sub r1, r1, r2
	add r2, r4, #336
	add r2, r5, r2
	add r2, r6, r2
	add r0, r0, r2
	add r4, r1, r0
	mov r0, r4
	bl putint
	add sp, sp, #4
	mov r0, r4
	pop { r4, r5, r6, r7, pc }
