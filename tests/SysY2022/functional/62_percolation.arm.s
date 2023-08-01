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
	bl findfa
	str r0, [r7, r8, lsl #2]
	str r0, [r7, r6, lsl #2]
	str r0, [r7, r5, lsl #2]
	str r0, [r7, r4, lsl #2]
	b label2
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r5, #0
	mov r6, #17
	mov r7, #1
	movw r4, #:lower16:array
	movt r4, #:upper16:array
	sub sp, sp, #4
	cmp r7, #0
	beq label108
.p2align 4
label75:
	sub r7, r7, #1
	mvn r0, #0
	mov r8, r5
	mov r9, r5
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
	cmp r5, #10
	blt label79
	b label135
.p2align 4
label322:
	cmp r8, #0
	beq label107
	b label346
.p2align 4
label327:
	cmp r9, #10
	blt label79
	b label322
.p2align 4
label107:
	mvn r0, #0
	bl putint
	mov r0, #10
	bl putch
	cmp r7, #0
	bne label75
label108:
	mov r0, r5
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label79:
	bl getint
	mov r10, r0
	bl getint
	cmp r8, #0
	add r9, r9, #1
	mov r2, r0
	beq label80
	cmp r9, #10
	blt label79
	b label316
.p2align 4
label80:
	sub r0, r10, #1
	cmp r10, #1
	add r1, r2, r0, lsl #2
	str r1, [r4, r1, lsl #2]
	beq label81
	cmp r10, #4
	beq label104
	cmp r2, #4
	blt label85
	cmp r2, #1
	bgt label101
	cmp r10, #4
	blt label98
	cmp r10, #1
	bgt label95
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label92
	cmp r9, #10
	blt label79
	b label322
.p2align 4
label85:
	add r3, r1, #1
	ldr r0, [r4, r3, lsl #2]
	cmn r0, #1
	beq label174
	mov r0, r1
	bl findfa
	mov r11, r0
	mov r0, r3
	bl findfa
	cmp r11, r0
	bne label87
	b label180
.p2align 4
label101:
	sub r2, r1, #1
	ldr r0, [r4, r2, lsl #2]
	cmn r0, #1
	beq label251
	mov r0, r1
	bl findfa
	mov r3, r0
	mov r0, r2
	bl findfa
	cmp r3, r0
	bne label103
	cmp r10, #4
	blt label98
	b label333
.p2align 4
label104:
	str r6, [r4, #68]
	mov r0, r1
	bl findfa
	mov r3, r0
	mov r0, r6
	bl findfa
	cmp r3, r0
	beq label266
	str r0, [r4, r3, lsl #2]
	cmp r2, #4
	blt label85
	cmp r2, #1
	bgt label101
	cmp r10, #4
	blt label98
	cmp r10, #1
	bgt label95
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label92
	cmp r9, #10
	blt label79
	b label322
.p2align 4
label98:
	add r2, r1, #4
	ldr r0, [r4, r2, lsl #2]
	cmn r0, #1
	beq label235
	mov r0, r1
	bl findfa
	mov r3, r0
	mov r0, r2
	bl findfa
	cmp r3, r0
	bne label100
	b label241
.p2align 4
label251:
	cmp r10, #4
	blt label98
	cmp r10, #1
	bgt label95
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label92
	cmp r9, #10
	blt label79
	b label322
.p2align 4
label81:
	str r5, [r4, #0]
	mov r0, r1
	bl findfa
	mov r3, r0
	mov r0, r5
	bl findfa
	cmp r3, r0
	bne label82
	cmp r10, #4
	beq label104
	cmp r2, #4
	blt label85
	cmp r2, #1
	bgt label101
	cmp r10, #4
	blt label98
	cmp r10, #1
	bgt label95
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label92
	cmp r9, #10
	blt label79
	b label322
.p2align 4
label82:
	str r0, [r4, r3, lsl #2]
	cmp r10, #4
	beq label104
	cmp r2, #4
	blt label85
	cmp r2, #1
	bgt label101
	cmp r10, #4
	blt label98
	cmp r10, #1
	bgt label95
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label92
	cmp r9, #10
	blt label79
	b label322
.p2align 4
label92:
	ldr r0, [r4, #68]
	cmn r0, #1
	bne label93
	cmp r9, #10
	blt label79
	b label323
.p2align 4
label97:
	str r0, [r4, r1, lsl #2]
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label92
	cmp r9, #10
	blt label79
	b label322
.p2align 4
label95:
	sub r2, r1, #4
	ldr r0, [r4, r2, lsl #2]
	cmn r0, #1
	beq label219
	mov r0, r1
	bl findfa
	mov r1, r0
	mov r0, r2
	bl findfa
	cmp r1, r0
	bne label97
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label92
	b label327
.p2align 4
label100:
	str r0, [r4, r3, lsl #2]
	cmp r10, #1
	bgt label95
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label92
	cmp r9, #10
	blt label79
	b label322
.p2align 4
label235:
	cmp r10, #1
	bgt label95
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label92
	cmp r9, #10
	blt label79
	b label322
.p2align 4
label87:
	str r0, [r4, r11, lsl #2]
	cmp r2, #1
	bgt label101
	cmp r10, #4
	blt label98
	cmp r10, #1
	bgt label95
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label92
	cmp r9, #10
	blt label79
	b label322
.p2align 4
label174:
	cmp r2, #1
	bgt label101
	cmp r10, #4
	blt label98
	cmp r10, #1
	bgt label95
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label92
	cmp r9, #10
	blt label79
	b label322
.p2align 4
label346:
	cmp r7, #0
	bne label75
	b label108
.p2align 4
label219:
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label92
	cmp r9, #10
	blt label79
	cmp r8, #0
	beq label107
	b label346
.p2align 4
label93:
	mov r0, r5
	bl findfa
	mov r1, r0
	mov r0, r6
	bl findfa
	cmp r1, r0
	bne label211
	mov r0, r9
	bl putint
	mov r0, #10
	bl putch
	mov r8, #1
	cmp r9, #10
	blt label79
	cmp r8, #0
	beq label107
	b label315
.p2align 4
label266:
	cmp r2, #4
	blt label85
	cmp r2, #1
	bgt label101
	cmp r10, #4
	blt label98
	cmp r10, #1
	bgt label95
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label92
	cmp r9, #10
	blt label79
	b label322
.p2align 4
label180:
	cmp r2, #1
	bgt label101
	cmp r10, #4
	blt label98
	cmp r10, #1
	bgt label95
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label92
	cmp r9, #10
	blt label79
	b label322
.p2align 4
label241:
	cmp r10, #1
	bgt label95
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label92
	cmp r9, #10
	blt label79
	b label322
.p2align 4
label103:
	str r0, [r4, r3, lsl #2]
	cmp r10, #4
	blt label98
	cmp r10, #1
	bgt label95
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label92
	cmp r9, #10
	blt label79
	b label322
.p2align 4
label333:
	cmp r10, #1
	bgt label95
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label92
	cmp r9, #10
	blt label79
	b label322
.p2align 4
label316:
	cmp r8, #0
	beq label107
	cmp r7, #0
	bne label75
	b label108
.p2align 4
label323:
	cmp r8, #0
	beq label107
	cmp r7, #0
	bne label75
	b label108
.p2align 4
label315:
	cmp r7, #0
	bne label75
	b label108
.p2align 4
label211:
	cmp r9, #10
	blt label79
	cmp r8, #0
	beq label107
	b label315
label135:
	cmp r8, #0
	beq label107
	b label315
