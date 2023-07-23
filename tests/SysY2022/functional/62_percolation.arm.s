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
	ldr r8, [r5, r7, lsl #2]
	cmp r7, r8
	beq label36
	ldr r0, [r5, r8, lsl #2]
	cmp r8, r0
	beq label45
	b label9
label22:
	mov r0, r4
	b label12
label29:
	mov r0, r6
	str r6, [r5, r4, lsl #2]
label12:
	pop { r4, r5, r6, r7, r8, pc }
label36:
	mov r0, r7
	str r7, [r5, r6, lsl #2]
	str r7, [r5, r4, lsl #2]
	b label12
label45:
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
	cmp r5, #0
	beq label110
label71:
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
	blt label77
	cmp r7, #0
	beq label76
	cmp r5, #0
	bne label71
	b label110
label77:
	bl getint
	mov r8, r0
	bl getint
	cmp r7, #0
	mov r2, r0
	beq label80
	add r6, r6, #1
	cmp r6, #10
	blt label77
	cmp r7, #0
	beq label76
	cmp r5, #0
	bne label71
	b label110
label80:
	sub r0, r8, #1
	cmp r8, #1
	add r1, r2, r0, lsl #2
	str r1, [r4, r1, lsl #2]
	beq label81
	cmp r8, #4
	beq label84
	cmp r2, #4
	blt label107
	cmp r2, #1
	bgt label104
	cmp r8, #4
	blt label89
	cmp r8, #1
	bgt label93
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label97
	mov r0, #0
	cmp r0, #0
	bne label100
	add r6, r6, #1
	cmp r6, #10
	blt label77
	cmp r7, #0
	beq label76
	b label492
label103:
	add r0, r6, #1
	bl putint
	mov r0, #10
	bl putch
	mov r7, #1
	add r6, r6, #1
	cmp r6, #10
	blt label77
	cmp r7, #0
	beq label76
	cmp r5, #0
	bne label71
	b label110
label76:
	mvn r0, #0
	bl putint
	mov r0, #10
	bl putch
	cmp r5, #0
	bne label71
	b label110
label91:
	str r0, [r4, r3, lsl #2]
	cmp r8, #1
	bgt label93
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label97
	mov r0, #0
	cmp r0, #0
	bne label100
	add r6, r6, #1
	cmp r6, #10
	blt label77
	cmp r7, #0
	beq label76
	cmp r5, #0
	bne label71
	b label110
label81:
	mov r9, #0
	str r9, [r4, #0]
	mov r0, r1
	bl findfa
	mov r3, r0
	mov r0, r9
	bl findfa
	cmp r3, r0
	bne label82
	cmp r8, #4
	beq label84
	cmp r2, #4
	blt label107
	cmp r2, #1
	bgt label104
	cmp r8, #4
	blt label89
	cmp r8, #1
	bgt label93
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label97
	mov r0, #0
	cmp r0, #0
	bne label100
	add r6, r6, #1
	cmp r6, #10
	blt label77
	cmp r7, #0
	beq label76
	b label492
label93:
	sub r2, r1, #4
	ldr r0, [r4, r2, lsl #2]
	cmn r0, #1
	bne label94
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label97
	mov r0, #0
	cmp r0, #0
	bne label100
	add r6, r6, #1
	cmp r6, #10
	blt label77
	cmp r7, #0
	beq label76
	cmp r5, #0
	bne label71
	b label110
label82:
	str r0, [r4, r3, lsl #2]
	cmp r8, #4
	beq label84
	cmp r2, #4
	blt label107
	cmp r2, #1
	bgt label104
	cmp r8, #4
	blt label89
	cmp r8, #1
	bgt label93
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label97
	mov r0, #0
	cmp r0, #0
	bne label100
	add r6, r6, #1
	cmp r6, #10
	blt label77
	cmp r7, #0
	beq label76
label492:
	cmp r5, #0
	bne label71
	b label110
label94:
	mov r0, r1
	bl findfa
	mov r1, r0
	mov r0, r2
	bl findfa
	cmp r1, r0
	bne label95
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label97
	mov r0, #0
	cmp r0, #0
	bne label100
	add r6, r6, #1
	cmp r6, #10
	blt label77
	cmp r7, #0
	beq label76
	cmp r5, #0
	bne label71
	b label110
label104:
	sub r2, r1, #1
	ldr r0, [r4, r2, lsl #2]
	cmn r0, #1
	bne label105
	cmp r8, #4
	blt label89
	cmp r8, #1
	bgt label93
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label97
	mov r0, #0
	cmp r0, #0
	bne label100
	add r6, r6, #1
	cmp r6, #10
	blt label77
	cmp r7, #0
	beq label76
	cmp r5, #0
	bne label71
	b label110
label105:
	mov r0, r1
	bl findfa
	mov r3, r0
	mov r0, r2
	bl findfa
	cmp r3, r0
	bne label106
	cmp r8, #4
	blt label89
	cmp r8, #1
	bgt label93
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label97
	mov r0, #0
	cmp r0, #0
	bne label100
	add r6, r6, #1
	cmp r6, #10
	blt label77
	cmp r7, #0
	beq label76
	cmp r5, #0
	bne label71
	b label110
label95:
	str r0, [r4, r1, lsl #2]
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label97
	mov r0, #0
	cmp r0, #0
	bne label100
	add r6, r6, #1
	cmp r6, #10
	blt label77
	cmp r7, #0
	beq label76
	cmp r5, #0
	bne label71
	b label110
label89:
	add r2, r1, #4
	ldr r0, [r4, r2, lsl #2]
	cmn r0, #1
	bne label90
	cmp r8, #1
	bgt label93
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label97
	mov r0, #0
	cmp r0, #0
	bne label100
	add r6, r6, #1
	cmp r6, #10
	blt label77
	cmp r7, #0
	beq label76
	cmp r5, #0
	bne label71
	b label110
label90:
	mov r0, r1
	bl findfa
	mov r3, r0
	mov r0, r2
	bl findfa
	cmp r3, r0
	bne label91
	cmp r8, #1
	bgt label93
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label97
	mov r0, #0
	cmp r0, #0
	bne label100
	add r6, r6, #1
	cmp r6, #10
	blt label77
	cmp r7, #0
	beq label76
	cmp r5, #0
	bne label71
	b label110
label106:
	str r0, [r4, r3, lsl #2]
	cmp r8, #4
	blt label89
	cmp r8, #1
	bgt label93
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label97
	mov r0, #0
	cmp r0, #0
	bne label100
	add r6, r6, #1
	cmp r6, #10
	blt label77
	cmp r7, #0
	beq label76
	cmp r5, #0
	bne label71
	b label110
label85:
	str r0, [r4, r3, lsl #2]
	cmp r2, #4
	blt label107
	cmp r2, #1
	bgt label104
	cmp r8, #4
	blt label89
	cmp r8, #1
	bgt label93
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label97
	mov r0, #0
	cmp r0, #0
	bne label100
	add r6, r6, #1
	cmp r6, #10
	blt label77
	cmp r7, #0
	beq label76
	cmp r5, #0
	bne label71
	b label110
label107:
	add r3, r1, #1
	ldr r0, [r4, r3, lsl #2]
	cmn r0, #1
	bne label108
	cmp r2, #1
	bgt label104
	cmp r8, #4
	blt label89
	cmp r8, #1
	bgt label93
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label97
	mov r0, #0
	cmp r0, #0
	bne label100
	add r6, r6, #1
	cmp r6, #10
	blt label77
	cmp r7, #0
	beq label76
	cmp r5, #0
	bne label71
	b label110
label108:
	mov r0, r1
	bl findfa
	mov r9, r0
	mov r0, r3
	bl findfa
	cmp r9, r0
	bne label109
	cmp r2, #1
	bgt label104
	cmp r8, #4
	blt label89
	cmp r8, #1
	bgt label93
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label97
	mov r0, #0
	cmp r0, #0
	bne label100
	add r6, r6, #1
	cmp r6, #10
	blt label77
	cmp r7, #0
	beq label76
	cmp r5, #0
	bne label71
	b label110
label84:
	mov r9, #17
	str r9, [r4, #68]
	mov r0, r1
	bl findfa
	mov r3, r0
	mov r0, r9
	bl findfa
	cmp r3, r0
	bne label85
	cmp r2, #4
	blt label107
	cmp r2, #1
	bgt label104
	cmp r8, #4
	blt label89
	cmp r8, #1
	bgt label93
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label97
	mov r0, #0
	cmp r0, #0
	bne label100
	add r6, r6, #1
	cmp r6, #10
	blt label77
	cmp r7, #0
	beq label76
	cmp r5, #0
	bne label71
	b label110
label97:
	ldr r0, [r4, #68]
	cmn r0, #1
	mov r0, #0
	movwne r0, #1
	cmp r0, #0
	bne label100
	mov r0, #0
	cmp r0, #0
	bne label103
	add r6, r6, #1
	cmp r6, #10
	blt label77
	cmp r7, #0
	beq label76
	cmp r5, #0
	bne label71
	b label110
label100:
	mov r0, #0
	bl findfa
	mov r1, r0
	mov r0, #17
	bl findfa
	sub r0, r1, r0
	clz r0, r0
	lsr r0, r0, #5
	cmp r0, #0
	bne label103
	add r6, r6, #1
	cmp r6, #10
	blt label77
	cmp r7, #0
	beq label76
	cmp r5, #0
	bne label71
	b label110
label109:
	str r0, [r4, r9, lsl #2]
	cmp r2, #1
	bgt label104
	cmp r8, #4
	blt label89
	cmp r8, #1
	bgt label93
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label97
	mov r0, #0
	cmp r0, #0
	bne label100
	add r6, r6, #1
	cmp r6, #10
	blt label77
	cmp r7, #0
	beq label76
	cmp r5, #0
	bne label71
label110:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, pc }
