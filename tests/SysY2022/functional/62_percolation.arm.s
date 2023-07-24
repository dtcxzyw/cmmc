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
.p2align 4
	push { r4, r5, r6, r7, r8, lr }
	movw r5, #:lower16:array
	mov r4, r0
	movt r5, #:upper16:array
	ldr r6, [r5, r0, lsl #2]
	cmp r0, r6
	beq label12
	ldr r7, [r5, r6, lsl #2]
	cmp r6, r7
	bne label3
	mov r0, r6
	str r6, [r5, r4, lsl #2]
	b label12
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
label12:
	pop { r4, r5, r6, r7, r8, pc }
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, lr }
	mov r5, #1
	movw r4, #:lower16:array
	sub sp, sp, #4
	movt r4, #:upper16:array
	cmp r5, #0
	beq label104
label65:
.p2align 4
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
	blt label71
	cmp r7, #0
	beq label70
	cmp r5, #0
	bne label65
	b label104
label71:
.p2align 4
	bl getint
	mov r8, r0
	bl getint
	cmp r7, #0
	mov r2, r0
	beq label74
	add r6, r6, #1
	cmp r6, #10
	blt label71
	cmp r7, #0
	beq label70
	cmp r5, #0
	bne label65
	b label104
label74:
.p2align 4
	sub r0, r8, #1
	cmp r8, #1
	add r1, r2, r0, lsl #2
	str r1, [r4, r1, lsl #2]
	beq label75
	cmp r8, #4
	beq label78
	cmp r2, #4
	blt label101
	cmp r2, #1
	bgt label98
	cmp r8, #4
	blt label83
	cmp r8, #1
	bgt label87
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label91
	mov r0, #0
	cmp r0, #0
	bne label94
	add r6, r6, #1
	cmp r6, #10
	blt label71
	cmp r7, #0
	beq label70
	b label486
label97:
.p2align 4
	add r0, r6, #1
	bl putint
	mov r0, #10
	bl putch
	mov r7, #1
	add r6, r6, #1
	cmp r6, #10
	blt label71
	cmp r7, #0
	beq label70
	cmp r5, #0
	bne label65
	b label104
label70:
.p2align 4
	mvn r0, #0
	bl putint
	mov r0, #10
	bl putch
	cmp r5, #0
	bne label65
	b label104
label85:
.p2align 4
	str r0, [r4, r3, lsl #2]
	cmp r8, #1
	bgt label87
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label91
	mov r0, #0
	cmp r0, #0
	bne label94
	add r6, r6, #1
	cmp r6, #10
	blt label71
	cmp r7, #0
	beq label70
	cmp r5, #0
	bne label65
	b label104
label75:
.p2align 4
	mov r9, #0
	str r9, [r4, #0]
	mov r0, r1
	bl findfa
	mov r3, r0
	mov r0, r9
	bl findfa
	cmp r3, r0
	bne label76
	cmp r8, #4
	beq label78
	cmp r2, #4
	blt label101
	cmp r2, #1
	bgt label98
	cmp r8, #4
	blt label83
	cmp r8, #1
	bgt label87
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label91
	mov r0, #0
	cmp r0, #0
	bne label94
	add r6, r6, #1
	cmp r6, #10
	blt label71
	cmp r7, #0
	beq label70
	b label486
label87:
.p2align 4
	sub r2, r1, #4
	ldr r0, [r4, r2, lsl #2]
	cmn r0, #1
	bne label88
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label91
	mov r0, #0
	cmp r0, #0
	bne label94
	add r6, r6, #1
	cmp r6, #10
	blt label71
	cmp r7, #0
	beq label70
	cmp r5, #0
	bne label65
	b label104
label76:
.p2align 4
	str r0, [r4, r3, lsl #2]
	cmp r8, #4
	beq label78
	cmp r2, #4
	blt label101
	cmp r2, #1
	bgt label98
	cmp r8, #4
	blt label83
	cmp r8, #1
	bgt label87
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label91
	mov r0, #0
	cmp r0, #0
	bne label94
	add r6, r6, #1
	cmp r6, #10
	blt label71
	cmp r7, #0
	beq label70
label486:
.p2align 4
	cmp r5, #0
	bne label65
	b label104
label88:
.p2align 4
	mov r0, r1
	bl findfa
	mov r1, r0
	mov r0, r2
	bl findfa
	cmp r1, r0
	bne label89
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label91
	mov r0, #0
	cmp r0, #0
	bne label94
	add r6, r6, #1
	cmp r6, #10
	blt label71
	cmp r7, #0
	beq label70
	cmp r5, #0
	bne label65
	b label104
label98:
.p2align 4
	sub r2, r1, #1
	ldr r0, [r4, r2, lsl #2]
	cmn r0, #1
	bne label99
	cmp r8, #4
	blt label83
	cmp r8, #1
	bgt label87
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label91
	mov r0, #0
	cmp r0, #0
	bne label94
	add r6, r6, #1
	cmp r6, #10
	blt label71
	cmp r7, #0
	beq label70
	cmp r5, #0
	bne label65
	b label104
label99:
.p2align 4
	mov r0, r1
	bl findfa
	mov r3, r0
	mov r0, r2
	bl findfa
	cmp r3, r0
	bne label100
	cmp r8, #4
	blt label83
	cmp r8, #1
	bgt label87
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label91
	mov r0, #0
	cmp r0, #0
	bne label94
	add r6, r6, #1
	cmp r6, #10
	blt label71
	cmp r7, #0
	beq label70
	cmp r5, #0
	bne label65
	b label104
label89:
.p2align 4
	str r0, [r4, r1, lsl #2]
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label91
	mov r0, #0
	cmp r0, #0
	bne label94
	add r6, r6, #1
	cmp r6, #10
	blt label71
	cmp r7, #0
	beq label70
	cmp r5, #0
	bne label65
	b label104
label83:
.p2align 4
	add r2, r1, #4
	ldr r0, [r4, r2, lsl #2]
	cmn r0, #1
	bne label84
	cmp r8, #1
	bgt label87
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label91
	mov r0, #0
	cmp r0, #0
	bne label94
	add r6, r6, #1
	cmp r6, #10
	blt label71
	cmp r7, #0
	beq label70
	cmp r5, #0
	bne label65
	b label104
label84:
.p2align 4
	mov r0, r1
	bl findfa
	mov r3, r0
	mov r0, r2
	bl findfa
	cmp r3, r0
	bne label85
	cmp r8, #1
	bgt label87
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label91
	mov r0, #0
	cmp r0, #0
	bne label94
	add r6, r6, #1
	cmp r6, #10
	blt label71
	cmp r7, #0
	beq label70
	cmp r5, #0
	bne label65
	b label104
label100:
.p2align 4
	str r0, [r4, r3, lsl #2]
	cmp r8, #4
	blt label83
	cmp r8, #1
	bgt label87
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label91
	mov r0, #0
	cmp r0, #0
	bne label94
	add r6, r6, #1
	cmp r6, #10
	blt label71
	cmp r7, #0
	beq label70
	cmp r5, #0
	bne label65
	b label104
label79:
.p2align 4
	str r0, [r4, r3, lsl #2]
	cmp r2, #4
	blt label101
	cmp r2, #1
	bgt label98
	cmp r8, #4
	blt label83
	cmp r8, #1
	bgt label87
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label91
	mov r0, #0
	cmp r0, #0
	bne label94
	add r6, r6, #1
	cmp r6, #10
	blt label71
	cmp r7, #0
	beq label70
	cmp r5, #0
	bne label65
	b label104
label101:
.p2align 4
	add r3, r1, #1
	ldr r0, [r4, r3, lsl #2]
	cmn r0, #1
	bne label102
	cmp r2, #1
	bgt label98
	cmp r8, #4
	blt label83
	cmp r8, #1
	bgt label87
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label91
	mov r0, #0
	cmp r0, #0
	bne label94
	add r6, r6, #1
	cmp r6, #10
	blt label71
	cmp r7, #0
	beq label70
	cmp r5, #0
	bne label65
	b label104
label102:
.p2align 4
	mov r0, r1
	bl findfa
	mov r9, r0
	mov r0, r3
	bl findfa
	cmp r9, r0
	bne label103
	cmp r2, #1
	bgt label98
	cmp r8, #4
	blt label83
	cmp r8, #1
	bgt label87
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label91
	mov r0, #0
	cmp r0, #0
	bne label94
	add r6, r6, #1
	cmp r6, #10
	blt label71
	cmp r7, #0
	beq label70
	cmp r5, #0
	bne label65
	b label104
label78:
.p2align 4
	mov r9, #17
	str r9, [r4, #68]
	mov r0, r1
	bl findfa
	mov r3, r0
	mov r0, r9
	bl findfa
	cmp r3, r0
	bne label79
	cmp r2, #4
	blt label101
	cmp r2, #1
	bgt label98
	cmp r8, #4
	blt label83
	cmp r8, #1
	bgt label87
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label91
	mov r0, #0
	cmp r0, #0
	bne label94
	add r6, r6, #1
	cmp r6, #10
	blt label71
	cmp r7, #0
	beq label70
	cmp r5, #0
	bne label65
	b label104
label91:
.p2align 4
	ldr r0, [r4, #68]
	cmn r0, #1
	mov r0, #0
	movwne r0, #1
	cmp r0, #0
	bne label94
	mov r0, #0
	cmp r0, #0
	bne label97
	add r6, r6, #1
	cmp r6, #10
	blt label71
	cmp r7, #0
	beq label70
	cmp r5, #0
	bne label65
	b label104
label94:
.p2align 4
	mov r0, #0
	bl findfa
	mov r1, r0
	mov r0, #17
	bl findfa
	sub r0, r1, r0
	clz r0, r0
	lsr r0, r0, #5
	cmp r0, #0
	bne label97
	add r6, r6, #1
	cmp r6, #10
	blt label71
	cmp r7, #0
	beq label70
	cmp r5, #0
	bne label65
	b label104
label103:
.p2align 4
	str r0, [r4, r9, lsl #2]
	cmp r2, #1
	bgt label98
	cmp r8, #4
	blt label83
	cmp r8, #1
	bgt label87
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label91
	mov r0, #0
	cmp r0, #0
	bne label94
	add r6, r6, #1
	cmp r6, #10
	blt label71
	cmp r7, #0
	beq label70
	cmp r5, #0
	bne label65
label104:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, pc }
