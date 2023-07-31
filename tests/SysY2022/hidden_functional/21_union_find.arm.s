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
find:
.p2align 4
	push { r4, r5, r6, r7, r8, lr }
	movw r5, #:lower16:parent
	mov r4, r0
	movt r5, #:upper16:parent
	ldr r6, [r5, r0, lsl #2]
	cmp r0, r6
	beq label22
	ldr r7, [r5, r6, lsl #2]
	cmp r6, r7
	bne label5
	mov r0, r6
	str r6, [r5, r4, lsl #2]
	b label12
label22:
	mov r0, r4
label12:
	pop { r4, r5, r6, r7, r8, pc }
label5:
	ldr r8, [r5, r7, lsl #2]
	cmp r7, r8
	beq label38
	ldr r0, [r5, r8, lsl #2]
	cmp r8, r0
	bne label11
	mov r0, r8
	str r8, [r5, r7, lsl #2]
	str r8, [r5, r6, lsl #2]
	str r8, [r5, r4, lsl #2]
	b label12
label11:
	bl find
	str r0, [r5, r8, lsl #2]
	str r0, [r5, r7, lsl #2]
	str r0, [r5, r6, lsl #2]
	str r0, [r5, r4, lsl #2]
	b label12
label38:
	mov r0, r7
	str r7, [r5, r6, lsl #2]
	str r7, [r5, r4, lsl #2]
	b label12
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
	ble label73
	cmp r5, #4
	ble label130
	sub r0, r5, #4
	sub r2, r5, #20
	cmp r0, #16
	ble label136
	mov r1, #0
label85:
	add r3, r4, r1, lsl #2
	add r7, r1, #1
	str r1, [r3, #0]
	str r7, [r3, #4]
	add r7, r1, #2
	str r7, [r3, #8]
	add r7, r1, #3
	str r7, [r3, #12]
	add r7, r1, #4
	str r7, [r3, #16]
	add r7, r1, #5
	str r7, [r3, #20]
	add r7, r1, #6
	str r7, [r3, #24]
	add r7, r1, #7
	str r7, [r3, #28]
	add r7, r1, #8
	str r7, [r3, #32]
	add r7, r1, #9
	str r7, [r3, #36]
	add r7, r1, #10
	str r7, [r3, #40]
	add r7, r1, #11
	str r7, [r3, #44]
	add r7, r1, #12
	str r7, [r3, #48]
	add r7, r1, #13
	str r7, [r3, #52]
	add r7, r1, #14
	str r7, [r3, #56]
	add r7, r1, #15
	add r1, r1, #16
	str r7, [r3, #60]
	cmp r2, r1
	bgt label85
	b label87
label73:
	cmp r6, #0
	bgt label101
	b label100
label136:
	mov r1, #0
label87:
	add r2, r4, r1, lsl #2
	add r3, r1, #1
	str r1, [r2, #0]
	str r3, [r2, #4]
	add r3, r1, #2
	str r3, [r2, #8]
	add r3, r1, #3
	add r1, r1, #4
	str r3, [r2, #12]
	cmp r0, r1
	bgt label87
	mov r0, r1
label89:
	str r0, [r4, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	bgt label89
	b label73
.p2align 4
label101:
	mov r7, #0
.p2align 4
label74:
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
	beq label108
	str r1, [r4, r0, lsl #2]
	add r7, r7, #1
	cmp r6, r7
	bgt label74
	mov r0, #0
	mov r1, r0
	b label78
.p2align 4
label108:
	add r7, r7, #1
	cmp r6, r7
	bgt label74
	mov r0, #0
	mov r1, r0
	cmp r5, r0
	bgt label81
label82:
	bl putint
	mov r0, #0
	pop { r4, r5, r6, r7, r8, pc }
.p2align 4
label100:
	mov r0, #0
	mov r1, r0
	cmp r5, r0
	bgt label81
	b label82
.p2align 4
label78:
	cmp r5, r1
	ble label82
.p2align 4
label81:
	ldr r2, [r4, r1, lsl #2]
	sub r2, r1, r2
	add r1, r1, #1
	clz r2, r2
	lsr r2, r2, #5
	add r0, r0, r2
	b label78
label130:
	mov r0, #0
	b label89
