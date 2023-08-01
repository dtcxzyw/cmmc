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
	mov r4, r0
	movt r7, #:upper16:array
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
	mov r6, #17
	mov r5, #0
	mov r7, #1
	movw r4, #:lower16:array
	sub sp, sp, #4
	movt r4, #:upper16:array
	cmp r7, #0
	beq label112
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
	b label139
label326:
	cmp r8, #0
	beq label111
	b label350
.p2align 4
label371:
	movs r0, r5
	bne label96
	cmp r9, #10
	blt label79
	b label326
.p2align 4
label111:
	mvn r0, #0
	bl putint
	mov r0, #10
	bl putch
	cmp r7, #0
	bne label75
label112:
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
	b label320
.p2align 4
label96:
	mov r0, r9
	bl putint
	mov r0, #10
	bl putch
	mov r8, #1
	cmp r9, #10
	blt label79
	b label327
.p2align 4
label386:
	movs r0, r5
	bne label96
	cmp r9, #10
	blt label79
	b label326
.p2align 4
label80:
	sub r0, r10, #1
	cmp r10, #1
	add r1, r2, r0, lsl #2
	str r1, [r4, r1, lsl #2]
	bne label154
	str r5, [r4, #0]
	mov r0, r1
	bl findfa
	mov r3, r0
	mov r0, r5
	bl findfa
	cmp r3, r0
	bne label82
	cmp r10, #4
	beq label108
	b label322
.p2align 4
label98:
	ldr r0, [r4, #68]
	cmn r0, #1
	mov r0, #0
	movwne r0, #1
	cmp r0, #0
	bne label97
	movs r0, r5
	bne label96
	cmp r9, #10
	blt label79
	b label385
.p2align 4
label99:
	sub r2, r1, #4
	ldr r0, [r4, r2, lsl #2]
	cmn r0, #1
	bne label100
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label98
	movs r0, r5
	bne label97
	b label371
.p2align 4
label102:
	add r2, r1, #4
	ldr r0, [r4, r2, lsl #2]
	cmn r0, #1
	bne label103
	cmp r10, #1
	bgt label99
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label98
	movs r0, r5
	bne label97
	b label386
.p2align 4
label108:
	str r6, [r4, #68]
	mov r0, r1
	bl findfa
	mov r3, r0
	mov r0, r6
	bl findfa
	cmp r3, r0
	beq label270
	str r0, [r4, r3, lsl #2]
	cmp r2, #4
	blt label85
	cmp r2, #1
	bgt label105
	cmp r10, #4
	blt label102
	cmp r10, #1
	bgt label99
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label98
	movs r0, r5
	bne label97
	cmp r9, #10
	blt label79
	b label326
.p2align 4
label105:
	sub r2, r1, #1
	ldr r0, [r4, r2, lsl #2]
	cmn r0, #1
	beq label255
	mov r0, r1
	bl findfa
	mov r3, r0
	mov r0, r2
	bl findfa
	cmp r3, r0
	beq label261
	str r0, [r4, r3, lsl #2]
	cmp r10, #4
	blt label102
	b label338
.p2align 4
label270:
	cmp r2, #4
	blt label85
	cmp r2, #1
	bgt label105
	cmp r10, #4
	blt label102
	cmp r10, #1
	bgt label99
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label98
	movs r0, r5
	bne label97
	cmp r9, #10
	blt label79
	b label326
.p2align 4
label82:
	str r0, [r4, r3, lsl #2]
	cmp r10, #4
	beq label108
	cmp r2, #4
	bge label170
.p2align 4
label85:
	add r3, r1, #1
	ldr r0, [r4, r3, lsl #2]
	cmn r0, #1
	bne label86
	cmp r2, #1
	bgt label105
	cmp r10, #4
	blt label102
	cmp r10, #1
	bgt label99
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label98
	movs r0, r5
	beq label405
.p2align 4
label97:
	mov r0, r5
	bl findfa
	mov r1, r0
	mov r0, r6
	bl findfa
	sub r0, r1, r0
	clz r0, r0
	lsr r0, r0, #5
	cmp r0, #0
	bne label96
	cmp r9, #10
	blt label79
	cmp r8, #0
	beq label111
	cmp r7, #0
	bne label75
	b label112
.p2align 4
label154:
	cmp r10, #4
	beq label108
	cmp r2, #4
	blt label85
	cmp r2, #1
	bgt label105
	cmp r10, #4
	blt label102
	cmp r10, #1
	bgt label99
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label98
	movs r0, r5
	bne label97
	cmp r9, #10
	blt label79
	b label326
.p2align 4
label255:
	cmp r10, #4
	blt label102
	cmp r10, #1
	bgt label99
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label98
	movs r0, r5
	bne label97
	cmp r9, #10
	blt label79
	b label326
.p2align 4
label103:
	mov r0, r1
	bl findfa
	mov r3, r0
	mov r0, r2
	bl findfa
	cmp r3, r0
	bne label104
	cmp r10, #1
	bgt label99
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label98
	movs r0, r5
	bne label97
	cmp r9, #10
	blt label79
	b label326
.p2align 4
label86:
	mov r0, r1
	bl findfa
	mov r11, r0
	mov r0, r3
	bl findfa
	cmp r11, r0
	bne label87
	cmp r2, #1
	bgt label105
	cmp r10, #4
	blt label102
	cmp r10, #1
	bgt label99
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label98
	movs r0, r5
	bne label97
	cmp r9, #10
	blt label79
	b label326
.p2align 4
label87:
	str r0, [r4, r11, lsl #2]
	cmp r2, #1
	bgt label105
	cmp r10, #4
	blt label102
	cmp r10, #1
	bgt label99
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label98
	movs r0, r5
	bne label97
.p2align 4
label209:
	cmp r9, #10
	blt label79
	b label326
.p2align 4
label100:
	mov r0, r1
	bl findfa
	mov r1, r0
	mov r0, r2
	bl findfa
	cmp r1, r0
	beq label229
	str r0, [r4, r1, lsl #2]
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label98
	movs r0, r5
	bne label97
	cmp r9, #10
	blt label79
	b label326
.p2align 4
label322:
	cmp r2, #4
	blt label85
	cmp r2, #1
	bgt label105
	cmp r10, #4
	blt label102
	cmp r10, #1
	bgt label99
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label98
	movs r0, r5
	bne label97
	b label209
.p2align 4
label261:
	cmp r10, #4
	blt label102
	cmp r10, #1
	bgt label99
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label98
	movs r0, r5
	bne label97
	cmp r9, #10
	blt label79
	b label326
.p2align 4
label104:
	str r0, [r4, r3, lsl #2]
	cmp r10, #1
	bgt label99
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label98
	movs r0, r5
	bne label97
	cmp r9, #10
	blt label79
	b label326
.p2align 4
label229:
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label98
	movs r0, r5
	bne label97
	cmp r9, #10
	blt label79
	b label326
.p2align 4
label170:
	cmp r2, #1
	bgt label105
	cmp r10, #4
	blt label102
	cmp r10, #1
	bgt label99
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label98
	movs r0, r5
	bne label97
	b label209
.p2align 4
label338:
	cmp r10, #1
	bgt label99
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label98
	movs r0, r5
	bne label97
	cmp r9, #10
	blt label79
	b label326
.p2align 4
label320:
	cmp r8, #0
	beq label111
	cmp r7, #0
	bne label75
	b label112
.p2align 4
label405:
	movs r0, r5
	bne label96
	cmp r9, #10
	blt label79
	b label326
.p2align 4
label327:
	cmp r8, #0
	beq label111
	cmp r7, #0
	bne label75
	b label112
label350:
	cmp r7, #0
	bne label75
	b label112
label385:
	cmp r8, #0
	beq label111
	b label350
label139:
	cmp r8, #0
	beq label111
	cmp r7, #0
	bne label75
	b label112
