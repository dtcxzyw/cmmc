.arch armv7ve
.data
.bss
.align 8
cnt:
	.zero	1600080
.align 8
a:
	.zero	400020
.align 8
b:
	.zero	400020
.align 8
c:
	.zero	400020
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #12
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label120
	mov r4, r0
	mov r5, #0
	b label2
.p2align 4
label129:
	mov r4, r0
.p2align 4
label2:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r5, #1
	cmp r1, #9
	bhi label129
	mov r4, r5
label5:
	sub r1, r0, #48
	cmp r1, #10
	bhs label133
	mov r5, r0
	mov r6, #0
	b label114
.p2align 4
label420:
	mov r5, r0
.p2align 4
label114:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	blo label420
label8:
	cmp r4, #0
	rsb r0, r6, #0
	str r6, [sp, #0]
	movw r5, #:lower16:a
	movt r5, #:upper16:a
	mov r8, r6
	movw r4, #:lower16:c
	movt r4, #:upper16:c
	movne r8, r0
	cmp r8, #0
	sub r6, r8, #3
	str r8, [sp, #0]
	beq label147
	mov r7, r5
	mov r8, #0
	b label11
.p2align 4
label181:
	mov r10, r0
.p2align 4
label20:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label181
.p2align 4
label17:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	movne r0, r1
	str r0, [r7, #0]
	str r0, [r3, r8, lsl #2]
	str r0, [r4, r8, lsl #2]
	add r0, r8, #1
	ldr r8, [sp, #0]
	cmp r8, r0
	beq label147
	add r7, r7, #4
	mov r8, r0
.p2align 4
label11:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label153
	mov r9, r0
	mov r10, #0
.p2align 4
label23:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bls label188
	mov r9, r0
	b label23
.p2align 4
label188:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label158
.p2align 4
label159:
	mov r10, r0
	mov r11, #0
	b label20
label147:
	mov r0, r5
	mov r1, #0
label27:
	ldr r8, [sp, #0]
	cmp r8, r1
	bgt label104
	b label30
.p2align 4
label462:
	add r0, r0, #4
	ldr r8, [sp, #0]
	cmp r8, r1
	ble label30
.p2align 4
label104:
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r8, r1
	ble label394
	add r2, r5, r1, lsl #2
	mov r3, r1
	ldr r7, [r0, #0]
	ldr r8, [r2, #0]
	cmp r7, r8
	bgt label112
	add r3, r1, #1
	ldr r8, [sp, #0]
	cmp r8, r3
	bgt label111
	add r0, r0, #4
	cmp r8, r1
	bgt label104
	b label30
.p2align 4
label112:
	str r8, [r0, #0]
	add r3, r3, #1
	str r7, [r2, #0]
	ldr r8, [sp, #0]
	cmp r8, r3
	ble label462
.p2align 4
label111:
	add r2, r2, #4
	ldr r7, [r0, #0]
	ldr r8, [r2, #0]
	cmp r7, r8
	bgt label112
	add r3, r3, #1
	ldr r8, [sp, #0]
	cmp r8, r3
	bgt label111
	add r0, r0, #4
	cmp r8, r1
	bgt label104
label30:
	movw r2, #:lower16:cnt
	movt r2, #:upper16:cnt
	ldr r8, [sp, #0]
	cmp r8, #0
	ble label198
	cmp r8, #3
	ble label202
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	mov r1, #0
	mov r0, r3
	mvn r3, #99
	b label43
.p2align 4
label47:
	add r0, r0, #16
.p2align 4
label43:
	ldr r7, [r0, #0]
	add r1, r1, #4
	cmp r3, r7
	add r8, r2, r7, lsl #2
	movle r3, r7
	ldr r9, [r8, #0]
	add r9, r9, #1
	str r9, [r8, #0]
	ldr r8, [r0, #4]
	cmp r8, r3
	mov r7, r8
	add r9, r2, r8, lsl #2
	movle r7, r3
	ldr r10, [r9, #0]
	mov r3, r7
	add r10, r10, #1
	str r10, [r9, #0]
	ldr r8, [r0, #8]
	cmp r7, r8
	add r7, r2, r8, lsl #2
	movle r3, r8
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
	ldr r7, [r0, #12]
	cmp r3, r7
	movle r3, r7
	cmp r6, r1
	add r7, r2, r7, lsl #2
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
	bgt label47
	mov r7, r3
label32:
	ldr r8, [sp, #0]
	cmp r8, r1
	ble label206
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	add r0, r3, r1, lsl #2
	mov r3, r7
label37:
	ldr r7, [r0, #0]
	add r1, r1, #1
	cmp r3, r7
	add r8, r2, r7, lsl #2
	movle r3, r7
	ldr r9, [r8, #0]
	add r9, r9, #1
	str r9, [r8, #0]
	ldr r8, [sp, #0]
	cmp r8, r1
	ble label206
	add r0, r0, #4
	b label37
label206:
	mov r1, r3
	mov r8, #0
	mov r0, r8
label50:
	cmp r1, r0
	bge label54
	b label257
.p2align 4
label272:
	add r0, r0, #1
	add r2, r2, #4
	cmp r1, r0
	blt label257
.p2align 4
label54:
	ldr r7, [r2, #0]
	cmp r7, #0
	beq label55
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	add r3, r3, r8, lsl #2
.p2align 4
label58:
	str r0, [r3, #0]
	subs r7, r7, #1
	add r8, r8, #1
	beq label272
	add r3, r3, #4
	b label58
label55:
	add r0, r0, #1
	add r2, r2, #4
	cmp r1, r0
	bge label54
	b label257
label153:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label159
	b label158
label257:
	mov r0, r4
	mov r7, #0
	b label64
label325:
	mov r9, r7
	mov r3, r1
	ldr r8, [sp, #0]
	mov r7, #0
	cmp r8, r1
	bgt label96
label320:
	ldr r2, [r0, #0]
	add r3, r4, r7, lsl #2
	ldr r7, [r3, #0]
	str r7, [r0, #0]
	mov r7, r1
	add r0, r0, #4
	str r2, [r3, #0]
label64:
	ldr r8, [sp, #0]
	cmp r8, r7
	bgt label84
	b label67
.p2align 4
label91:
	add r2, r2, #16
.p2align 4
label87:
	ldr r8, [r2, #0]
	ldr r9, [r4, r7, lsl #2]
	cmp r8, r9
	add r8, r3, #1
	movlt r7, r3
	ldr r9, [r4, r8, lsl #2]
	ldr r10, [r4, r7, lsl #2]
	cmp r9, r10
	movlt r7, r8
	add r8, r3, #2
	ldr r9, [r4, r8, lsl #2]
	ldr r10, [r4, r7, lsl #2]
	cmp r9, r10
	movlt r7, r8
	add r8, r3, #3
	add r3, r3, #4
	ldr r9, [r4, r8, lsl #2]
	ldr r10, [r4, r7, lsl #2]
	cmp r9, r10
	movlt r7, r8
	cmp r6, r3
	bgt label91
	mov r9, r7
	ldr r8, [sp, #0]
	cmp r8, r3
	ble label458
.p2align 4
label96:
	add r2, r4, r3, lsl #2
	mov r7, r3
	mov r3, r9
.p2align 4
label97:
	ldr r8, [r2, #0]
	ldr r9, [r4, r3, lsl #2]
	cmp r8, r9
	ldr r8, [sp, #0]
	movlt r3, r7
	add r7, r7, #1
	cmp r8, r7
	ble label383
	add r2, r2, #4
	b label97
.p2align 4
label383:
	ldr r2, [r0, #0]
	add r3, r4, r3, lsl #2
	ldr r7, [r3, #0]
	str r7, [r0, #0]
	mov r7, r1
	add r0, r0, #4
	str r2, [r3, #0]
	ldr r8, [sp, #0]
	cmp r8, r1
	ble label67
.p2align 4
label84:
	add r1, r7, #1
	ldr r8, [sp, #0]
	cmp r8, r1
	ble label320
	add r2, r7, #4
	cmp r8, r2
	ble label325
	add r2, r4, r1, lsl #2
	mov r3, r1
	b label87
label67:
	ldr r8, [sp, #0]
	cmp r8, #0
	beq label68
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	mov r1, #0
	mov r0, r3
	b label79
.p2align 4
label82:
	add r0, r0, #4
.p2align 4
label79:
	ldr r3, [r0, #0]
	ldr r2, [r5, r1, lsl #2]
	sub r6, r3, r2
	add r3, r4, r1, lsl #2
	str r6, [r0, #0]
	add r1, r1, #1
	ldr r7, [r3, #0]
	sub r6, r7, r6
	sub r2, r6, r2
	str r2, [r3, #0]
	ldr r8, [sp, #0]
	subs r2, r8, r1
	bne label82
label68:
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	mov r0, #0
label69:
	ldr r8, [sp, #0]
	subs r1, r0, r8
	beq label285
	ldr r1, [r3, #0]
	cmp r1, #0
	beq label74
	mov r0, #1
label76:
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label158:
	mov r11, #0
	b label17
label74:
	ldr r1, [r4, #0]
	cmp r1, #0
	bne label296
	add r0, r0, #1
	add r3, r3, #4
	add r4, r4, #4
	b label69
.p2align 4
label458:
	ldr r2, [r0, #0]
	add r3, r4, r7, lsl #2
	ldr r7, [r3, #0]
	str r7, [r0, #0]
	mov r7, r1
	add r0, r0, #4
	str r2, [r3, #0]
	ldr r8, [sp, #0]
	cmp r8, r1
	bgt label84
	b label67
label198:
	mvn r1, #99
	mov r8, #0
	mov r0, r8
	b label50
label120:
	mov r4, #0
	b label5
label296:
	mov r0, #2
	b label76
label394:
	add r0, r0, #4
	b label27
label133:
	mov r6, #0
	b label8
label285:
	mvn r0, #122
	b label76
label202:
	mvn r7, #99
	mov r1, #0
	mov r3, r1
	b label32
