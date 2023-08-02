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
	ble label73
	cmp r4, #4
	ble label87
	sub r1, r4, #4
	sub r3, r4, #20
	cmp r1, #16
	ble label149
	mov r0, r5
	mov r2, #0
.p2align 4
label96:
	str r2, [r0, #0]
	add r7, r2, #1
	str r7, [r0, #4]
	add r7, r2, #2
	str r7, [r0, #8]
	add r7, r2, #3
	str r7, [r0, #12]
	add r7, r2, #4
	str r7, [r0, #16]
	add r7, r2, #5
	str r7, [r0, #20]
	add r7, r2, #6
	str r7, [r0, #24]
	add r7, r2, #7
	str r7, [r0, #28]
	add r7, r2, #8
	str r7, [r0, #32]
	add r7, r2, #9
	str r7, [r0, #36]
	add r7, r2, #10
	str r7, [r0, #40]
	add r7, r2, #11
	str r7, [r0, #44]
	add r7, r2, #12
	str r7, [r0, #48]
	add r7, r2, #13
	str r7, [r0, #52]
	add r7, r2, #14
	str r7, [r0, #56]
	add r7, r2, #15
	add r2, r2, #16
	str r7, [r0, #60]
	cmp r3, r2
	ble label198
	add r0, r0, #64
	b label96
label87:
	mov r0, r5
	mov r2, #0
label101:
	str r2, [r0, #0]
	add r2, r2, #1
	cmp r4, r2
	ble label73
	add r0, r0, #4
	b label101
label73:
	cmp r6, #0
	ble label114
	mov r7, #0
	b label81
label114:
	mov r1, #0
	mov r0, r1
.p2align 4
label75:
	cmp r4, r0
	ble label79
	ldr r2, [r5, #0]
	add r5, r5, #4
	sub r2, r0, r2
	add r0, r0, #1
	clz r2, r2
	lsr r2, r2, #5
	add r1, r1, r2
	b label75
.p2align 4
label81:
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
	bne label85
	add r7, r7, #1
	cmp r6, r7
	bgt label81
	b label114
.p2align 4
label85:
	str r1, [r5, r0, lsl #2]
	add r7, r7, #1
	cmp r6, r7
	bgt label81
	b label114
label79:
	mov r0, r1
	bl putint
	mov r0, #0
	pop { r4, r5, r6, r7, r8, pc }
label198:
	add r0, r5, r2, lsl #2
label89:
	str r2, [r0, #0]
	add r3, r2, #1
	str r3, [r0, #4]
	add r3, r2, #2
	str r3, [r0, #8]
	add r3, r2, #3
	add r2, r2, #4
	str r3, [r0, #12]
	cmp r1, r2
	ble label92
	add r0, r0, #16
	b label89
label92:
	add r0, r5, r2, lsl #2
	b label101
label149:
	mov r0, r5
	mov r2, #0
	b label89
