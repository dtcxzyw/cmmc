.arch armv7ve
.data
.bss
.align 8
parent:
	.zero	4020
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
find:
	push { r4, r5, r6, r7, r8, lr }
	movw r7, #:lower16:parent
	movt r7, #:upper16:parent
	mov r4, r0
	ldr r5, [r7, r0, lsl #2]
	cmp r0, r5
	beq label22
	ldr r6, [r7, r5, lsl #2]
	cmp r5, r6
	bne label7
	mov r0, r5
	str r5, [r7, r4, lsl #2]
	b label2
label22:
	mov r0, r4
label2:
	pop { r4, r5, r6, r7, r8, pc }
label7:
	ldr r8, [r7, r6, lsl #2]
	cmp r6, r8
	beq label38
	ldr r0, [r7, r8, lsl #2]
	cmp r8, r0
	bne label13
	mov r0, r8
	str r8, [r7, r6, lsl #2]
	str r8, [r7, r5, lsl #2]
	str r8, [r7, r4, lsl #2]
	b label2
label38:
	mov r0, r6
	str r6, [r7, r5, lsl #2]
	str r6, [r7, r4, lsl #2]
	b label2
label13:
	bl find
	str r0, [r7, r8, lsl #2]
	str r0, [r7, r6, lsl #2]
	str r0, [r7, r5, lsl #2]
	str r0, [r7, r4, lsl #2]
	b label2
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, lr }
	bl getint
	mov r4, r0
	bl getint
	cmp r4, #0
	movw r5, #:lower16:parent
	movt r5, #:upper16:parent
	mov r6, r0
	ble label78
	sub r1, r4, #4
	cmp r4, #4
	ble label98
	mov r0, #0
.p2align 4
label74:
	add r2, r5, r0, lsl #2
	add r3, r0, #1
	str r0, [r2, #0]
	str r3, [r2, #4]
	add r3, r0, #2
	str r3, [r2, #8]
	add r3, r0, #3
	add r0, r0, #4
	str r3, [r2, #12]
	cmp r1, r0
	bgt label74
label76:
	str r0, [r5, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	bgt label76
label78:
	cmp r6, #0
	ble label122
	mov r7, #0
	b label79
label122:
	mov r1, #0
	mov r0, r1
	b label83
.p2align 4
label79:
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
	bne label81
	add r7, r7, #1
	cmp r6, r7
	bgt label79
	b label122
.p2align 4
label81:
	str r1, [r5, r0, lsl #2]
	add r7, r7, #1
	cmp r6, r7
	bgt label79
	b label122
.p2align 4
label83:
	cmp r4, r0
	ble label87
	ldr r2, [r5, r0, lsl #2]
	sub r2, r0, r2
	add r0, r0, #1
	clz r2, r2
	lsr r2, r2, #5
	add r1, r1, r2
	b label83
label87:
	mov r0, r1
	bl putint
	mov r0, #0
	pop { r4, r5, r6, r7, r8, pc }
label98:
	mov r0, #0
	b label76
