.arch armv7ve
.data
.bss
.align 8
array:
	.zero	440
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
findfa:
	push { r4, r5, r6, r7, r8, lr }
	movw r7, #:lower16:array
	movt r7, #:upper16:array
	mov r4, r0
	ldr r5, [r7, r0, lsl #2]
	cmp r0, r5
	beq label22
	ldr r6, [r7, r5, lsl #2]
	cmp r5, r6
	bne label5
	mov r0, r5
	str r5, [r7, r4, lsl #2]
	b label12
label22:
	mov r0, r4
label12:
	pop { r4, r5, r6, r7, r8, pc }
label5:
	ldr r8, [r7, r6, lsl #2]
	cmp r6, r8
	beq label38
	ldr r0, [r7, r8, lsl #2]
	cmp r8, r0
	bne label11
	mov r0, r8
	str r8, [r7, r6, lsl #2]
	str r8, [r7, r5, lsl #2]
	str r8, [r7, r4, lsl #2]
	b label12
label38:
	mov r0, r6
	str r6, [r7, r5, lsl #2]
	str r6, [r7, r4, lsl #2]
	b label12
label11:
	bl findfa
	str r0, [r7, r8, lsl #2]
	str r0, [r7, r6, lsl #2]
	str r0, [r7, r5, lsl #2]
	str r0, [r7, r4, lsl #2]
	b label12
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r6, #17
	mov r7, #1
	mov r5, #0
	movw r4, #:lower16:array
	movt r4, #:upper16:array
	sub sp, sp, #4
	cmp r7, #0
	beq label109
.p2align 4
label75:
	sub r7, r7, #1
	mvn r0, #0
	mov r9, r5
	mov r8, r5
	str r0, [r4, #4]
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
	b label76
.p2align 4
label317:
	cmp r8, #0
	bne label340
.p2align 4
label108:
	mvn r0, #0
	bl putint
	mov r0, #10
	bl putch
	cmp r7, #0
	bne label75
label109:
	mov r0, r5
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label76:
	bl getint
	mov r10, r0
	bl getint
	cmp r8, #0
	add r9, r9, #1
	mov r2, r0
	beq label79
	cmp r9, #10
	blt label76
	b label317
.p2align 4
label79:
	sub r0, r10, #1
	cmp r10, #1
	add r1, r2, r0, lsl #2
	str r1, [r4, r1, lsl #2]
	beq label80
	cmp r10, #4
	bne label318
.p2align 4
label83:
	str r6, [r4, #68]
	mov r0, r1
	bl findfa
	mov r3, r0
	mov r0, r6
	bl findfa
	cmp r3, r0
	beq label166
	str r0, [r4, r3, lsl #2]
	cmp r2, #4
	blt label102
	cmp r2, #1
	bgt label87
	cmp r10, #4
	blt label99
	cmp r10, #1
	bgt label96
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label93
	cmp r9, #10
	blt label76
	b label325
.p2align 4
label99:
	add r2, r1, #4
	ldr r0, [r4, r2, lsl #2]
	cmn r0, #1
	beq label241
	mov r0, r1
	bl findfa
	mov r3, r0
	mov r0, r2
	bl findfa
	cmp r3, r0
	beq label247
	str r0, [r4, r3, lsl #2]
	cmp r10, #1
	bgt label96
	b label334
.p2align 4
label257:
	cmp r2, #1
	bgt label87
	cmp r10, #4
	blt label99
	cmp r10, #1
	bgt label96
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label93
	cmp r9, #10
	blt label76
	b label325
.p2align 4
label318:
	cmp r2, #4
	bge label341
.p2align 4
label102:
	add r3, r1, #1
	ldr r0, [r4, r3, lsl #2]
	cmn r0, #1
	beq label257
	mov r0, r1
	bl findfa
	mov r11, r0
	mov r0, r3
	bl findfa
	cmp r11, r0
	beq label263
	str r0, [r4, r11, lsl #2]
	cmp r2, #1
	bgt label87
	cmp r10, #4
	blt label99
	cmp r10, #1
	bgt label96
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label93
	cmp r9, #10
	blt label76
	b label325
.p2align 4
label80:
	str r5, [r4, #0]
	mov r0, r1
	bl findfa
	mov r3, r0
	mov r0, r5
	bl findfa
	cmp r3, r0
	beq label153
	str r0, [r4, r3, lsl #2]
	cmp r10, #4
	beq label83
	cmp r2, #4
	blt label102
	cmp r2, #1
	bgt label87
	cmp r10, #4
	blt label99
	cmp r10, #1
	bgt label96
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label93
label394:
	cmp r9, #10
	blt label76
	b label325
.p2align 4
label341:
	cmp r2, #1
	ble label362
.p2align 4
label87:
	sub r2, r1, #1
	ldr r0, [r4, r2, lsl #2]
	cmn r0, #1
	bne label88
	cmp r10, #4
	blt label99
	cmp r10, #1
	bgt label96
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label93
	cmp r9, #10
	blt label76
	b label325
.p2align 4
label93:
	ldr r0, [r4, #68]
	cmn r0, #1
	beq label211
	mov r0, r5
	bl findfa
	mov r1, r0
	mov r0, r6
	bl findfa
	cmp r1, r0
	beq label95
	cmp r9, #10
	blt label76
	b label327
.p2align 4
label225:
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label93
	cmp r9, #10
	blt label76
	cmp r8, #0
	beq label108
	b label348
.p2align 4
label96:
	sub r2, r1, #4
	ldr r0, [r4, r2, lsl #2]
	cmn r0, #1
	beq label225
	mov r0, r1
	bl findfa
	mov r1, r0
	mov r0, r2
	bl findfa
	cmp r1, r0
	bne label98
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label93
	cmp r9, #10
	blt label76
	b label353
.p2align 4
label247:
	cmp r10, #1
	bgt label96
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label93
	cmp r9, #10
	blt label76
	b label325
.p2align 4
label166:
	cmp r2, #4
	blt label102
	cmp r2, #1
	bgt label87
	cmp r10, #4
	blt label99
	cmp r10, #1
	bgt label96
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label93
	cmp r9, #10
	blt label76
	b label325
.p2align 4
label88:
	mov r0, r1
	bl findfa
	mov r3, r0
	mov r0, r2
	bl findfa
	cmp r3, r0
	beq label190
	str r0, [r4, r3, lsl #2]
	cmp r10, #4
	blt label99
	cmp r10, #1
	bgt label96
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label93
	cmp r9, #10
	blt label76
.p2align 4
label325:
	cmp r8, #0
	beq label108
.p2align 4
label348:
	cmp r7, #0
	bne label75
	b label109
.p2align 4
label241:
	cmp r10, #1
	bgt label96
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label93
	cmp r9, #10
	blt label76
	b label325
.p2align 4
label153:
	cmp r10, #4
	beq label83
	cmp r2, #4
	blt label102
	cmp r2, #1
	bgt label87
	cmp r10, #4
	blt label99
	cmp r10, #1
	bgt label96
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label93
	b label394
.p2align 4
label263:
	cmp r2, #1
	bgt label87
	cmp r10, #4
	blt label99
	cmp r10, #1
	bgt label96
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label93
	cmp r9, #10
	blt label76
	b label325
.p2align 4
label190:
	cmp r10, #4
	blt label99
	cmp r10, #1
	bgt label96
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label93
	cmp r9, #10
	blt label76
	b label325
.p2align 4
label98:
	str r0, [r4, r1, lsl #2]
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label93
	cmp r9, #10
	blt label76
	cmp r8, #0
	beq label108
	b label348
.p2align 4
label362:
	cmp r10, #4
	blt label99
	cmp r10, #1
	bgt label96
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label93
	cmp r9, #10
	blt label76
	b label325
.p2align 4
label334:
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label93
	cmp r9, #10
	blt label76
	b label325
.p2align 4
label211:
	cmp r9, #10
	blt label76
	cmp r8, #0
	beq label108
	cmp r7, #0
	bne label75
	b label109
.p2align 4
label95:
	mov r0, r9
	bl putint
	mov r0, #10
	bl putch
	cmp r9, #10
	mov r8, #1
	blt label76
	cmp r8, #0
	beq label108
	cmp r7, #0
	bne label75
	b label109
.p2align 4
label327:
	cmp r8, #0
	beq label108
	cmp r7, #0
	bne label75
	b label109
label353:
	cmp r8, #0
	beq label108
	b label348
.p2align 4
label340:
	cmp r7, #0
	bne label75
	b label109
