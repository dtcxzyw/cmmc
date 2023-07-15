.arch armv7ve
.data
.bss
.align 4
array:
	.zero	440
.text
.syntax unified
.arm
.fpu vfpv4
findfa:
	push { r4, r5, r6, r7, r8, lr }
	mov r4, r0
	movw r0, #:lower16:array
	movt r0, #:upper16:array
	ldr r6, [r0, r4, lsl #2]
	mov r5, r0
	cmp r4, r6
	bne label2
	mov r0, r4
	b label12
label2:
	ldr r7, [r5, r6, lsl #2]
	cmp r6, r7
	bne label3
	mov r0, r6
	str r6, [r5, r4, lsl #2]
label12:
	pop { r4, r5, r6, r7, r8, pc }
label3:
	ldr r8, [r5, r7, lsl #2]
	cmp r7, r8
	bne label6
	mov r0, r7
	str r7, [r5, r6, lsl #2]
	str r7, [r5, r4, lsl #2]
	b label12
label6:
	ldr r0, [r5, r8, lsl #2]
	cmp r8, r0
	bne label9
	mov r0, r8
	str r8, [r5, r7, lsl #2]
	str r8, [r5, r6, lsl #2]
	str r8, [r5, r4, lsl #2]
	b label12
label9:
	bl findfa
	str r0, [r5, r8, lsl #2]
	str r0, [r5, r7, lsl #2]
	str r0, [r5, r6, lsl #2]
	str r0, [r5, r4, lsl #2]
	b label12
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, lr }
	mov r5, #1
	movw r4, #:lower16:array
	sub sp, sp, #4
	movt r4, #:upper16:array
label56:
	cmp r5, #0
	beq label97
label58:
	sub r5, r5, #1
	mvn r0, #0
	mov r7, #0
	str r0, [r4, #4]
	mov r6, r7
	str r0, [r4, #8]
	str r0, [r4, #12]
	str r0, [r4, #16]
	str r0, [r4, #20]
	str r0, [r4, #24]
	str r0, [r4, #28]
	str r0, [r4, #32]
	str r0, [r4, #36]
	str r0, [r4, #40]
	str r0, [r4, #44]
	str r0, [r4, #48]
	str r0, [r4, #52]
	str r0, [r4, #56]
	str r0, [r4, #60]
	str r0, [r4, #64]
	str r0, [r4, #68]
	cmp r7, #10
	bge label95
label62:
	bl getint
	mov r8, r0
	bl getint
	cmp r7, #0
	mov r2, r0
	bne label93
	sub r0, r8, #1
	cmp r8, #1
	add r1, r2, r0, lsl #2
	str r1, [r4, r1, lsl #2]
	bne label64
	b label91
label93:
	add r6, r6, #1
	cmp r6, #10
	bge label95
	b label62
label95:
	cmp r7, #0
	bne label56
	mvn r0, #0
	bl putint
	mov r0, #10
	bl putch
	cmp r5, #0
	beq label97
	b label58
label64:
	cmp r8, #4
	bne label67
label65:
	mov r9, #17
	str r9, [r4, #68]
	mov r0, r1
	bl findfa
	mov r3, r0
	mov r0, r9
	bl findfa
	cmp r3, r0
	beq label67
	str r0, [r4, r3, lsl #2]
	cmp r2, #4
	bge label68
	add r3, r1, #1
	ldr r0, [r4, r3, lsl #2]
	cmn r0, #1
	beq label68
	b label89
label91:
	mov r9, #0
	str r9, [r4, #0]
	mov r0, r1
	bl findfa
	mov r3, r0
	mov r0, r9
	bl findfa
	cmp r3, r0
	beq label64
	str r0, [r4, r3, lsl #2]
	cmp r8, #4
	bne label67
	b label65
label68:
	cmp r2, #1
	ble label72
	sub r2, r1, #1
	ldr r0, [r4, r2, lsl #2]
	cmn r0, #1
	beq label72
	b label70
label72:
	cmp r8, #4
	bge label73
	add r2, r1, #4
	ldr r0, [r4, r2, lsl #2]
	cmn r0, #1
	beq label73
	b label86
label73:
	cmp r8, #1
	ble label77
	sub r2, r1, #4
	ldr r0, [r4, r2, lsl #2]
	cmn r0, #1
	beq label77
	b label75
label77:
	ldr r0, [r4, #0]
	cmn r0, #1
	beq label205
	ldr r0, [r4, #68]
	cmn r0, #1
	mov r0, #0
	movwne r0, #1
	cmp r0, #0
	beq label211
	b label84
label205:
	mov r0, #0
	cmp r0, #0
	beq label211
	b label84
label211:
	mov r0, #0
	cmp r0, #0
	beq label93
label83:
	add r0, r6, #1
	bl putint
	mov r0, #10
	bl putch
	mov r7, #1
	add r6, r6, #1
	cmp r6, #10
	bge label95
	b label62
label84:
	mov r0, #0
	bl findfa
	mov r1, r0
	mov r0, #17
	bl findfa
	sub r0, r1, r0
	clz r0, r0
	lsr r0, r0, #5
	cmp r0, #0
	beq label93
	b label83
label67:
	cmp r2, #4
	bge label68
	add r3, r1, #1
	ldr r0, [r4, r3, lsl #2]
	cmn r0, #1
	beq label68
	b label89
label70:
	mov r0, r1
	bl findfa
	mov r3, r0
	mov r0, r2
	bl findfa
	cmp r3, r0
	beq label72
	str r0, [r4, r3, lsl #2]
	cmp r8, #4
	bge label73
	add r2, r1, #4
	ldr r0, [r4, r2, lsl #2]
	cmn r0, #1
	beq label73
	b label86
label75:
	mov r0, r1
	bl findfa
	mov r1, r0
	mov r0, r2
	bl findfa
	cmp r1, r0
	beq label77
	str r0, [r4, r1, lsl #2]
	ldr r0, [r4, #0]
	cmn r0, #1
	beq label205
	ldr r0, [r4, #68]
	cmn r0, #1
	mov r0, #0
	movwne r0, #1
	cmp r0, #0
	beq label211
	b label84
label89:
	mov r0, r1
	bl findfa
	mov r9, r0
	mov r0, r3
	bl findfa
	cmp r9, r0
	beq label68
	str r0, [r4, r9, lsl #2]
	cmp r2, #1
	ble label72
	sub r2, r1, #1
	ldr r0, [r4, r2, lsl #2]
	cmn r0, #1
	beq label72
	b label70
label86:
	mov r0, r1
	bl findfa
	mov r3, r0
	mov r0, r2
	bl findfa
	cmp r3, r0
	beq label73
	str r0, [r4, r3, lsl #2]
	cmp r8, #1
	ble label77
	sub r2, r1, #4
	ldr r0, [r4, r2, lsl #2]
	cmn r0, #1
	beq label77
	b label75
label97:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, pc }
