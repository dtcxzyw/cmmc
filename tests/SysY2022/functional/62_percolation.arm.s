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
	movw r5, #:lower16:array
	mov r4, r0
	movt r5, #:upper16:array
	ldr r6, [r5, r0, lsl #2]
	cmp r0, r6
	beq label22
	ldr r7, [r5, r6, lsl #2]
	cmp r6, r7
	beq label29
	b label28
label22:
	mov r0, r4
	b label12
label28:
	ldr r8, [r5, r7, lsl #2]
	cmp r7, r8
	beq label36
	b label35
label29:
	mov r0, r6
	b label10
label35:
	ldr r0, [r5, r8, lsl #2]
	cmp r8, r0
	beq label45
	b label9
label36:
	mov r0, r7
label4:
	str r0, [r5, r6, lsl #2]
	b label10
label45:
	mov r0, r8
label7:
	str r0, [r5, r7, lsl #2]
	b label4
label9:
	bl findfa
	str r0, [r5, r8, lsl #2]
	b label7
label10:
	str r0, [r5, r4, lsl #2]
label12:
	pop { r4, r5, r6, r7, r8, pc }
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, lr }
	mov r5, #1
	movw r4, #:lower16:array
	sub sp, sp, #4
	movt r4, #:upper16:array
label66:
	cmp r5, #0
	beq label107
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
label69:
	cmp r6, #10
	blt label74
	cmp r7, #0
	bne label66
	mvn r0, #0
	bl putint
	mov r0, #10
	bl putch
	b label66
label74:
	bl getint
	mov r8, r0
	bl getint
	cmp r7, #0
	mov r2, r0
	beq label77
label75:
	add r6, r6, #1
	b label69
label77:
	sub r0, r8, #1
	cmp r8, #1
	add r1, r2, r0, lsl #2
	str r1, [r4, r1, lsl #2]
	beq label78
label80:
	cmp r8, #4
	beq label81
label83:
	cmp r2, #4
	blt label104
label84:
	cmp r2, #1
	bgt label101
label85:
	cmp r8, #4
	blt label86
label89:
	cmp r8, #1
	bgt label90
label93:
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label94
	mov r0, #0
	b label95
label101:
	sub r2, r1, #1
	ldr r0, [r4, r2, lsl #2]
	cmn r0, #1
	bne label102
	b label85
label104:
	add r3, r1, #1
	ldr r0, [r4, r3, lsl #2]
	cmn r0, #1
	bne label105
	b label84
label107:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, pc }
label78:
	mov r9, #0
	str r9, [r4, #0]
	mov r0, r1
	bl findfa
	mov r3, r0
	mov r0, r9
	bl findfa
	cmp r3, r0
	bne label79
	b label80
label90:
	sub r2, r1, #4
	ldr r0, [r4, r2, lsl #2]
	cmn r0, #1
	beq label93
	mov r0, r1
	bl findfa
	mov r1, r0
	mov r0, r2
	bl findfa
	cmp r1, r0
	beq label93
	str r0, [r4, r1, lsl #2]
	b label93
label79:
	str r0, [r4, r3, lsl #2]
	b label80
label102:
	mov r0, r1
	bl findfa
	mov r3, r0
	mov r0, r2
	bl findfa
	cmp r3, r0
	bne label103
	b label85
label86:
	add r2, r1, #4
	ldr r0, [r4, r2, lsl #2]
	cmn r0, #1
	beq label89
	mov r0, r1
	bl findfa
	mov r3, r0
	mov r0, r2
	bl findfa
	cmp r3, r0
	beq label89
	str r0, [r4, r3, lsl #2]
	b label89
label81:
	mov r9, #17
	str r9, [r4, #68]
	mov r0, r1
	bl findfa
	mov r3, r0
	mov r0, r9
	bl findfa
	cmp r3, r0
	beq label83
	str r0, [r4, r3, lsl #2]
	b label83
label105:
	mov r0, r1
	bl findfa
	mov r9, r0
	mov r0, r3
	bl findfa
	cmp r9, r0
	beq label84
	str r0, [r4, r9, lsl #2]
	b label84
label94:
	ldr r0, [r4, #68]
	cmn r0, #1
	mov r0, #0
	movwne r0, #1
label95:
	cmp r0, #0
	bne label97
	mov r0, #0
	b label98
label103:
	str r0, [r4, r3, lsl #2]
	b label85
label97:
	mov r0, #0
	bl findfa
	mov r1, r0
	mov r0, #17
	bl findfa
	sub r0, r1, r0
	clz r0, r0
	lsr r0, r0, #5
label98:
	cmp r0, #0
	beq label75
	add r0, r6, #1
	bl putint
	mov r0, #10
	bl putch
	mov r7, #1
	b label75
