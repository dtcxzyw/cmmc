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
	push { r4, r5, r6, r7, r8, lr }
	mov r4, r0
	movw r0, #:lower16:parent
	movt r0, #:upper16:parent
	ldr r6, [r0, r4, lsl #2]
	mov r5, r0
	cmp r4, r6
	bne label4
	mov r0, r4
	b label2
label54:
	mov r0, r6
	str r6, [r5, r4, lsl #2]
label2:
	pop { r4, r5, r6, r7, r8, pc }
label4:
	ldr r7, [r5, r6, lsl #2]
	cmp r6, r7
	bne label7
	b label54
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
	push { r4, r5, r6, r7, r8, lr }
	bl getint
	mov r5, r0
	bl getint
	cmp r5, #0
	movw r4, #:lower16:parent
	mov r6, r0
	movt r4, #:upper16:parent
	ble label58
	mov r0, #0
	add r1, r0, #4
	cmp r5, r1
	ble label70
	add r2, r4, r0, lsl #2
	str r0, [r4, r0, lsl #2]
	add r3, r0, #1
	str r3, [r2, #4]
	add r3, r0, #2
	add r0, r0, #3
	str r3, [r2, #8]
	str r0, [r2, #12]
	mov r0, r1
	add r1, r1, #4
	cmp r5, r1
	ble label70
	add r2, r4, r0, lsl #2
	str r0, [r4, r0, lsl #2]
	add r3, r0, #1
	str r3, [r2, #4]
	add r3, r0, #2
	add r0, r0, #3
	str r3, [r2, #8]
	str r0, [r2, #12]
	mov r0, r1
	add r1, r1, #4
	cmp r5, r1
	ble label70
	add r2, r4, r0, lsl #2
	str r0, [r4, r0, lsl #2]
	add r3, r0, #1
	str r3, [r2, #4]
	add r3, r0, #2
	add r0, r0, #3
	str r3, [r2, #8]
	str r0, [r2, #12]
	mov r0, r1
	add r1, r1, #4
	cmp r5, r1
	ble label70
	add r2, r4, r0, lsl #2
	str r0, [r4, r0, lsl #2]
	add r3, r0, #1
	str r3, [r2, #4]
	add r3, r0, #2
	add r0, r0, #3
	str r3, [r2, #8]
	str r0, [r2, #12]
	mov r0, r1
	add r1, r1, #4
	cmp r5, r1
	ble label70
label154:
	add r2, r4, r0, lsl #2
	str r0, [r4, r0, lsl #2]
	add r3, r0, #1
	str r3, [r2, #4]
	add r3, r0, #2
	add r0, r0, #3
	str r3, [r2, #8]
	str r0, [r2, #12]
	mov r0, r1
	add r1, r1, #4
	cmp r5, r1
	ble label70
	b label154
label70:
	str r0, [r4, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	ble label58
	b label70
label58:
	cmp r6, #0
	ble label83
	mov r7, #0
	b label59
label83:
	mov r0, #0
	mov r1, r0
	cmp r5, r0
	ble label67
	ldr r2, [r4, r0, lsl #2]
	sub r2, r0, r2
	add r1, r0, #1
	clz r2, r2
	lsr r2, r2, #5
	add r0, r0, r2
	cmp r5, r1
	ble label67
	ldr r2, [r4, r1, lsl #2]
	sub r2, r1, r2
	add r1, r1, #1
	clz r2, r2
	lsr r2, r2, #5
	add r0, r0, r2
	cmp r5, r1
	ble label67
	ldr r2, [r4, r1, lsl #2]
	sub r2, r1, r2
	add r1, r1, #1
	clz r2, r2
	lsr r2, r2, #5
	add r0, r0, r2
	cmp r5, r1
	ble label67
	ldr r2, [r4, r1, lsl #2]
	sub r2, r1, r2
	add r1, r1, #1
	clz r2, r2
	lsr r2, r2, #5
	add r0, r0, r2
	cmp r5, r1
	ble label67
	b label155
label59:
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
	beq label62
	str r1, [r4, r0, lsl #2]
	add r7, r7, #1
	cmp r6, r7
	ble label98
	b label59
label67:
	bl putint
	mov r0, #0
	pop { r4, r5, r6, r7, r8, pc }
label155:
	ldr r2, [r4, r1, lsl #2]
	sub r2, r1, r2
	add r1, r1, #1
	clz r2, r2
	lsr r2, r2, #5
	add r0, r0, r2
	b label63
label62:
	add r7, r7, #1
	cmp r6, r7
	ble label98
	b label59
label98:
	mov r0, #0
	mov r1, r0
label63:
	cmp r5, r1
	ble label67
	b label155