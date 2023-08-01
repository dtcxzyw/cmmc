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
	mov r5, #0
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
label97:
	mov r0, r5
	bl findfa
	mov r1, r0
	mov r0, r6
	bl findfa
	cmp r1, r0
	bne label235
	mov r0, r9
	bl putint
	mov r0, #10
	bl putch
	mov r8, #1
	cmp r9, #10
	blt label79
	cmp r8, #0
	bne label315
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
label326:
	cmp r8, #0
	beq label107
.p2align 4
label350:
	cmp r7, #0
	bne label75
	b label108
.p2align 4
label96:
	ldr r0, [r4, #68]
	cmn r0, #1
	bne label97
	cmp r9, #10
	blt label79
	b label327
.p2align 4
label100:
	mov r0, r1
	bl findfa
	mov r1, r0
	mov r0, r2
	bl findfa
	cmp r1, r0
	beq label249
	str r0, [r4, r1, lsl #2]
	ldr r0, [r4, #0]
	cmn r0, #1
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
	beq label104
	b label81
.p2align 4
label102:
	str r6, [r4, #68]
	mov r0, r1
	bl findfa
	mov r3, r0
	mov r0, r6
	bl findfa
	cmp r3, r0
	bne label103
	cmp r2, #4
	blt label83
	cmp r2, #1
	bgt label87
	b label357
.p2align 4
label104:
	str r5, [r4, #0]
	mov r0, r1
	bl findfa
	mov r3, r0
	mov r0, r5
	bl findfa
	cmp r3, r0
	bne label105
	cmp r10, #4
	beq label102
	cmp r2, #4
	blt label83
	cmp r2, #1
	bgt label87
	cmp r10, #4
	blt label91
	cmp r10, #1
	bgt label99
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label96
	cmp r9, #10
	blt label79
	b label368
.p2align 4
label81:
	cmp r10, #4
	beq label102
	cmp r2, #4
	blt label83
	cmp r2, #1
	bgt label87
	cmp r10, #4
	blt label91
	cmp r10, #1
	bgt label99
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label96
	cmp r9, #10
	blt label79
	b label368
.p2align 4
label89:
	str r0, [r4, r3, lsl #2]
	cmp r10, #4
	blt label91
	cmp r10, #1
	ble label323
.p2align 4
label99:
	sub r2, r1, #4
	ldr r0, [r4, r2, lsl #2]
	cmn r0, #1
	bne label100
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label96
	cmp r9, #10
	blt label79
	cmp r8, #0
	beq label107
	b label350
.p2align 4
label172:
	cmp r2, #1
	ble label319
.p2align 4
label87:
	sub r2, r1, #1
	ldr r0, [r4, r2, lsl #2]
	cmn r0, #1
	bne label88
	cmp r10, #4
	bge label321
.p2align 4
label91:
	add r2, r1, #4
	ldr r0, [r4, r2, lsl #2]
	cmn r0, #1
	beq label206
	mov r0, r1
	bl findfa
	mov r3, r0
	mov r0, r2
	bl findfa
	cmp r3, r0
	beq label212
	str r0, [r4, r3, lsl #2]
	cmp r10, #1
	bgt label99
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label96
	cmp r9, #10
	blt label79
	b label326
.p2align 4
label83:
	add r3, r1, #1
	ldr r0, [r4, r3, lsl #2]
	cmn r0, #1
	beq label166
	mov r0, r1
	bl findfa
	mov r11, r0
	mov r0, r3
	bl findfa
	cmp r11, r0
	beq label172
	str r0, [r4, r11, lsl #2]
	cmp r2, #1
	bgt label87
	b label178
.p2align 4
label103:
	str r0, [r4, r3, lsl #2]
	cmp r2, #4
	blt label83
	cmp r2, #1
	bgt label87
	cmp r10, #4
	blt label91
	cmp r10, #1
	bgt label99
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label96
	cmp r9, #10
	blt label79
	b label368
.p2align 4
label88:
	mov r0, r1
	bl findfa
	mov r3, r0
	mov r0, r2
	bl findfa
	cmp r3, r0
	bne label89
	cmp r10, #4
	blt label91
	cmp r10, #1
	bgt label99
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label96
	cmp r9, #10
	blt label79
	b label368
.p2align 4
label105:
	str r0, [r4, r3, lsl #2]
	cmp r10, #4
	beq label102
	cmp r2, #4
	blt label83
	cmp r2, #1
	bgt label87
	cmp r10, #4
	blt label91
	cmp r10, #1
	bgt label99
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label96
	cmp r9, #10
	blt label79
	b label368
.p2align 4
label206:
	cmp r10, #1
	bgt label99
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label96
	cmp r9, #10
	blt label79
	b label326
.p2align 4
label166:
	cmp r2, #1
	bgt label87
	cmp r10, #4
	blt label91
	cmp r10, #1
	bgt label99
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label96
	cmp r9, #10
	blt label79
	b label368
.p2align 4
label212:
	cmp r10, #1
	bgt label99
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label96
	cmp r9, #10
	blt label79
	b label326
.p2align 4
label249:
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label96
	cmp r9, #10
	blt label79
	b label326
.p2align 4
label321:
	cmp r10, #1
	bgt label99
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label96
	cmp r9, #10
	blt label79
label368:
	cmp r8, #0
	beq label107
	b label350
.p2align 4
label357:
	cmp r10, #4
	blt label91
	cmp r10, #1
	bgt label99
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label96
	cmp r9, #10
	blt label79
	b label368
.p2align 4
label178:
	cmp r10, #4
	blt label91
	cmp r10, #1
	bgt label99
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label96
	cmp r9, #10
	blt label79
	b label368
.p2align 4
label319:
	cmp r10, #4
	blt label91
	cmp r10, #1
	bgt label99
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label96
	cmp r9, #10
	blt label79
	b label368
.p2align 4
label323:
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label96
	cmp r9, #10
	blt label79
	b label368
.p2align 4
label316:
	cmp r8, #0
	beq label107
	cmp r7, #0
	bne label75
	b label108
.p2align 4
label327:
	cmp r8, #0
	beq label107
	cmp r7, #0
	bne label75
	b label108
.p2align 4
label235:
	cmp r9, #10
	blt label79
	cmp r8, #0
	beq label107
.p2align 4
label315:
	cmp r7, #0
	bne label75
	b label108
label135:
	cmp r8, #0
	beq label107
	b label315
