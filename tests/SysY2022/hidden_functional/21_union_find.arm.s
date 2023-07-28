.arch armv7ve
.data
.bss
.align 4
parent:
	.zero	4020
.text
.syntax unified
.arm
.fpu vfpv4
find:
.p2align 4
	push { r4, r5, r6, r7, r8, lr }
	movw r5, #:lower16:parent
	mov r4, r0
	movt r5, #:upper16:parent
	ldr r6, [r5, r0, lsl #2]
	cmp r0, r6
	bne label4
label2:
	pop { r4, r5, r6, r7, r8, pc }
label4:
	ldr r7, [r5, r6, lsl #2]
	cmp r6, r7
	bne label7
	mov r0, r6
	str r6, [r5, r4, lsl #2]
	b label2
label7:
	ldr r8, [r5, r7, lsl #2]
	cmp r7, r8
	bne label10
	mov r0, r7
	str r7, [r5, r6, lsl #2]
	str r7, [r5, r4, lsl #2]
	b label2
label10:
	ldr r0, [r5, r8, lsl #2]
	cmp r8, r0
	bne label13
	mov r0, r8
	str r8, [r5, r7, lsl #2]
	str r8, [r5, r6, lsl #2]
	str r8, [r5, r4, lsl #2]
	b label2
label13:
	bl find
	str r0, [r5, r8, lsl #2]
	str r0, [r5, r7, lsl #2]
	str r0, [r5, r6, lsl #2]
	str r0, [r5, r4, lsl #2]
	b label2
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, lr }
	bl getint
	mov r5, r0
	bl getint
	cmp r5, #0
	movw r4, #:lower16:parent
	mov r6, r0
	movt r4, #:upper16:parent
	ble label76
	cmp r5, #4
	bgt label96
	mov r0, #0
	b label74
label96:
	mov r0, #0
label72:
	add r1, r4, r0, lsl #2
	str r0, [r4, r0, lsl #2]
	add r2, r0, #1
	str r2, [r1, #4]
	add r2, r0, #2
	str r2, [r1, #8]
	add r2, r0, #3
	str r2, [r1, #12]
	add r1, r0, #8
	cmp r5, r1
	add r0, r0, #4
	bgt label72
label74:
	str r0, [r4, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	bgt label74
label76:
	cmp r6, #0
	bgt label121
	mov r0, #0
	mov r1, r0
	cmp r5, r0
	bgt label84
	b label85
.p2align 4
label121:
	mov r7, #0
.p2align 4
label77:
	bl getint
	mov r8, r0
	bl getint
	mov r2, r0
	mov r0, r8
	bl find
	mov r1, r0
	mov r0, r2
	bl find
	cmp r1, r0
	bne label79
	add r7, r7, #1
	cmp r6, r7
	bgt label77
	mov r0, #0
	mov r1, r0
	cmp r5, r0
	bgt label84
	b label85
.p2align 4
label79:
	str r1, [r4, r0, lsl #2]
	add r7, r7, #1
	cmp r6, r7
	bgt label77
	mov r0, #0
	mov r1, r0
	cmp r5, r0
	bgt label84
	b label85
.p2align 4
label81:
	cmp r5, r1
	ble label85
.p2align 4
label84:
	ldr r2, [r4, r1, lsl #2]
	sub r2, r1, r2
	add r1, r1, #1
	clz r2, r2
	lsr r2, r2, #5
	add r0, r0, r2
	b label81
label85:
	bl putint
	mov r0, #0
	pop { r4, r5, r6, r7, r8, pc }
