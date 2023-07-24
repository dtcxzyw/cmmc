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
	push { r4, r5, r6, r7, r8, lr }
	bl getint
	mov r5, r0
	bl getint
	cmp r5, #0
	movw r4, #:lower16:parent
	mov r6, r0
	movt r4, #:upper16:parent
	bgt label84
	cmp r0, #0
	bgt label108
	mov r0, #0
	mov r1, r0
	cmp r5, r0
	bgt label76
	b label77
label84:
	mov r0, #0
label63:
	add r1, r0, #4
	cmp r5, r1
	ble label66
	add r2, r4, r0, lsl #2
	str r0, [r4, r0, lsl #2]
	add r3, r0, #1
	str r3, [r2, #4]
	add r3, r0, #2
	add r0, r0, #3
	str r3, [r2, #8]
	str r0, [r2, #12]
	mov r0, r1
	b label63
label66:
	str r0, [r4, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	bgt label66
	cmp r6, #0
	bgt label108
	mov r0, #0
	mov r1, r0
	cmp r5, r0
	bgt label76
	b label77
label108:
	mov r7, #0
	b label69
label73:
	cmp r5, r1
	ble label77
label76:
	ldr r2, [r4, r1, lsl #2]
	sub r2, r1, r2
	add r1, r1, #1
	clz r2, r2
	lsr r2, r2, #5
	add r0, r0, r2
	b label73
label77:
	bl putint
	mov r0, #0
	pop { r4, r5, r6, r7, r8, pc }
label69:
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
	bne label71
	add r7, r7, #1
	cmp r6, r7
	bgt label69
	mov r0, #0
	mov r1, r0
	cmp r5, r0
	bgt label76
	b label77
label71:
	str r1, [r4, r0, lsl #2]
	add r7, r7, #1
	cmp r6, r7
	bgt label69
	mov r0, #0
	mov r1, r0
	cmp r5, r0
	bgt label76
	b label77
