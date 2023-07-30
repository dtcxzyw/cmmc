.arch armv7ve
.data
.bss
.align 8
f:
	.zero	800400
.align 8
dep:
	.zero	40020
.align 8
to:
	.zero	40020
.align 8
next:
	.zero	40020
.align 8
head:
	.zero	40020
.text
.syntax unified
.arm
.fpu vfpv4
tree:
.p2align 4
	push { r4, r5, r6, r7, lr }
	movw r6, #:lower16:next
	sub sp, sp, #4
	add r2, r0, r0, lsl #2
	mov r3, r1
	movw r5, #:lower16:to
	movt r6, #:upper16:next
	add r4, r1, #1
	movw r1, #:lower16:dep
	movt r5, #:upper16:to
	movt r1, #:upper16:dep
	str r3, [r1, r0, lsl #2]
	movw r1, #:lower16:f
	movt r1, #:upper16:f
	add r2, r1, r2, lsl #4
	ldr r7, [r2, #0]
	cmp r7, #0
	bne label26
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	ldr r7, [r1, r0, lsl #2]
	cmn r7, #1
	bne label5
	b label7
label26:
	mov r3, #0
	b label2
.p2align 4
label5:
	ldr r0, [r5, r7, lsl #2]
	mov r1, r4
	bl tree
	ldr r7, [r6, r7, lsl #2]
	cmn r7, #1
	bne label5
label7:
	add sp, sp, #4
	pop { r4, r5, r6, r7, pc }
.p2align 4
label2:
	ldr r7, [r2, r3, lsl #2]
	add r7, r7, r7, lsl #2
	add r7, r1, r7, lsl #4
	ldr r7, [r7, r3, lsl #2]
	add r3, r3, #1
	cmp r7, #0
	str r7, [r2, r3, lsl #2]
	bne label2
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	ldr r7, [r1, r0, lsl #2]
	cmn r7, #1
	bne label5
	b label7
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #28
	bl getch
	sub r2, r0, #48
	movw r6, #:lower16:dep
	movw r1, #:lower16:to
	movw r9, #:lower16:f
	movw r3, #:lower16:next
	cmp r2, #9
	movt r6, #:upper16:dep
	movt r1, #:upper16:to
	movt r9, #:upper16:f
	movt r3, #:upper16:next
	str r1, [sp, #12]
	movw r1, #:lower16:head
	str r3, [sp, #16]
	movt r1, #:upper16:head
	str r1, [sp, #20]
	str r9, [sp, #0]
	str r6, [sp, #4]
	bhi label178
	mov r4, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label191
.p2align 4
label841:
	mov r6, #0
	b label83
label178:
	mov r5, r0
	mov r4, #0
.p2align 4
label77:
	bl getch
	cmp r5, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r4, r2
	cmp r1, #9
	bhi label186
	cmp r1, #10
	blo label191
	b label841
label186:
	mov r5, r0
	b label77
label191:
	mov r5, r0
	mov r6, #0
	b label161
label83:
	bl getch
	rsb r2, r6, #0
	cmp r4, #0
	sub r1, r0, #48
	mov r4, r6
	movne r4, r2
	cmp r1, #9
	bhi label200
	mov r5, #0
	cmp r1, #10
	blo label213
	b label212
label200:
	mov r6, r0
	mov r5, #0
.p2align 4
label85:
	bl getch
	cmp r6, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r5, r2
	cmp r1, #9
	bhi label208
	cmp r1, #10
	blo label213
	b label212
label208:
	mov r6, r0
	b label85
.p2align 4
label212:
	mov r7, #0
	cmp r5, #0
	rsb r0, r7, #0
	ldr r6, [sp, #4]
	mov r5, r7
	movne r5, r0
	cmp r4, #0
	movw r0, #16191
	movt r0, #16191
	str r0, [r6, #0]
	bgt label229
	cmp r4, #1
	bne label240
	b label124
label213:
	mov r6, r0
	mov r7, #0
.p2align 4
label91:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	blo label222
	cmp r5, #0
	rsb r0, r7, #0
	ldr r6, [sp, #4]
	mov r5, r7
	movne r5, r0
	cmp r4, #0
	movw r0, #16191
	movt r0, #16191
	str r0, [r6, #0]
	bgt label229
	cmp r4, #1
	bne label240
	b label124
label222:
	mov r6, r0
	b label91
label229:
	mov r0, #1
	b label96
label240:
	mov r6, #0
	mov r7, #1
	b label99
.p2align 4
label161:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label83
	mov r5, r0
	b label161
.p2align 4
label99:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label246
	mov r8, #0
	cmp r1, #10
	blo label259
.p2align 4
label849:
	mov r9, #0
	b label111
.p2align 4
label246:
	mov r9, r0
	mov r8, #0
.p2align 4
label102:
	bl getch
	cmp r9, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r8, r2
	cmp r1, #9
	bhi label254
	cmp r1, #10
	blo label259
	b label849
.p2align 4
label254:
	mov r9, r0
	b label102
.p2align 4
label259:
	mov r9, r0
	mov r10, #0
.p2align 4
label108:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	blo label268
	mov r9, r10
	b label111
.p2align 4
label268:
	mov r9, r0
	b label108
.p2align 4
label111:
	bl getch
	rsb r2, r9, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r9
	movne r8, r2
	cmp r1, #9
	bhi label277
	mov r9, #0
	cmp r1, #10
	blo label282
.p2align 4
label851:
	mov r0, #0
	b label116
.p2align 4
label277:
	mov r10, r0
	mov r9, #0
	b label121
.p2align 4
label282:
	mov r10, r0
	mov r11, #0
	b label118
.p2align 4
label116:
	cmp r9, #0
	rsb r1, r0, #0
	add r7, r7, #1
	movne r0, r1
	cmp r4, r7
	ldr r1, [sp, #12]
	str r0, [r1, r6, lsl #2]
	ldr r1, [sp, #20]
	add r0, r0, r0, lsl #2
	lsl r0, r0, #4
	add r1, r1, r8, lsl #2
	ldr r2, [r1, #0]
	ldr r3, [sp, #16]
	str r2, [r3, r6, lsl #2]
	str r6, [r1, #0]
	add r6, r6, #1
	ldr r9, [sp, #0]
	str r8, [r9, r0]
	bne label99
	b label124
.p2align 4
label118:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label309
	mov r0, r11
	b label116
.p2align 4
label309:
	mov r10, r0
	b label118
.p2align 4
label121:
	bl getch
	cmp r10, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r9, r2
	cmp r1, #9
	bhi label317
	cmp r1, #10
	blo label282
	b label851
.p2align 4
label317:
	mov r10, r0
	b label121
label124:
	mov r0, #1
	mov r1, #1
	bl tree
	cmp r5, #0
	bne label321
label160:
	mov r0, #0
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label321:
	str r5, [sp, #8]
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label327
	mov r4, #0
	cmp r1, #10
	blo label332
	b label853
.p2align 4
label327:
	mov r5, r0
	mov r4, #0
	b label157
.p2align 4
label332:
	mov r5, r0
	mov r6, #0
.p2align 4
label130:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	blo label341
	mov r5, r6
	b label133
.p2align 4
label341:
	mov r5, r0
	b label130
.p2align 4
label133:
	bl getch
	rsb r2, r5, #0
	cmp r4, #0
	sub r1, r0, #48
	mov r4, r5
	movne r4, r2
	cmp r1, #9
	bhi label350
	mov r5, #0
	cmp r1, #10
	blo label363
	b label854
.p2align 4
label350:
	mov r6, r0
	mov r5, #0
.p2align 4
label135:
	bl getch
	cmp r6, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r5, r2
	cmp r1, #9
	bhi label358
	cmp r1, #10
	blo label363
	b label854
.p2align 4
label358:
	mov r6, r0
	b label135
.p2align 4
label363:
	mov r6, r0
	mov r7, #0
.p2align 4
label141:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	blo label372
	mov r0, r7
	b label144
.p2align 4
label372:
	mov r6, r0
	b label141
.p2align 4
label144:
	cmp r5, #0
	rsb r2, r0, #0
	ldr r6, [sp, #4]
	mov r1, r0
	movne r1, r2
	ldr r0, [r6, r4, lsl #2]
	ldr r2, [r6, r1, lsl #2]
	cmp r0, r2
	mov r2, r4
	mov r0, r1
	movlt r2, r1
	movlt r0, r4
	mov r1, #19
	ldr r4, [r6, r2, lsl #2]
	ldr r3, [r6, r0, lsl #2]
	cmp r4, r3
	bgt label153
	cmp r0, r2
	bne label152
.p2align 4
label398:
	mov r0, r2
.p2align 4
label150:
	bl putint
	mov r0, #10
	bl putch
	ldr r5, [sp, #8]
	subs r5, r5, #1
	bne label321
	b label160
.p2align 4
label152:
	add r1, r2, r2, lsl #2
	ldr r9, [sp, #0]
	add r1, r9, r1, lsl #4
	ldr r4, [r1, #76]
	add r1, r0, r0, lsl #2
	add r1, r9, r1, lsl #4
	ldr r3, [r1, #76]
	mov r1, r2
	cmp r4, r3
	movne r0, r3
	movne r1, r4
	add r3, r0, r0, lsl #2
	add r2, r1, r1, lsl #2
	add r3, r9, r3, lsl #4
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #72]
	ldr r3, [r3, #72]
	cmp r2, r3
	movne r1, r2
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r4, [r2, #68]
	mov r2, r0
	movne r2, r3
	add r0, r2, r2, lsl #2
	add r0, r9, r0, lsl #4
	ldr r3, [r0, #68]
	mov r0, r1
	cmp r4, r3
	movne r0, r4
	add r1, r0, r0, lsl #2
	add r1, r9, r1, lsl #4
	ldr r4, [r1, #64]
	mov r1, r2
	movne r1, r3
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #64]
	cmp r4, r2
	movne r1, r2
	movne r0, r4
	add r2, r1, r1, lsl #2
	add r3, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r3, [r3, #60]
	ldr r4, [r2, #60]
	mov r2, r0
	cmp r3, r4
	movne r2, r3
	add r0, r2, r2, lsl #2
	add r0, r9, r0, lsl #4
	ldr r5, [r0, #56]
	mov r0, r1
	movne r0, r4
	add r1, r0, r0, lsl #2
	add r1, r9, r1, lsl #4
	ldr r3, [r1, #56]
	mov r1, r2
	cmp r5, r3
	movne r1, r5
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r5, [r2, #52]
	mov r2, r0
	movne r2, r3
	add r0, r2, r2, lsl #2
	add r0, r9, r0, lsl #4
	ldr r4, [r0, #52]
	mov r0, r1
	cmp r5, r4
	movne r0, r5
	add r1, r0, r0, lsl #2
	add r1, r9, r1, lsl #4
	ldr r3, [r1, #48]
	mov r1, r2
	movne r1, r4
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r4, [r2, #48]
	mov r2, r0
	cmp r3, r4
	movne r2, r3
	add r0, r2, r2, lsl #2
	add r0, r9, r0, lsl #4
	ldr r5, [r0, #44]
	mov r0, r1
	movne r0, r4
	add r1, r0, r0, lsl #2
	add r1, r9, r1, lsl #4
	ldr r3, [r1, #44]
	mov r1, r2
	cmp r5, r3
	movne r0, r3
	movne r1, r5
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r4, [r2, #40]
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r3, [r2, #40]
	mov r2, r1
	cmp r4, r3
	movne r2, r4
	add r1, r2, r2, lsl #2
	add r1, r9, r1, lsl #4
	ldr r4, [r1, #36]
	mov r1, r0
	movne r1, r3
	add r0, r1, r1, lsl #2
	add r0, r9, r0, lsl #4
	ldr r5, [r0, #36]
	mov r0, r2
	cmp r4, r5
	movne r1, r5
	movne r0, r4
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r3, [r2, #32]
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #32]
	cmp r3, r2
	movne r1, r2
	movne r0, r3
	add r2, r1, r1, lsl #2
	add r3, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r3, [r3, #28]
	ldr r2, [r2, #28]
	cmp r3, r2
	movne r1, r2
	movne r0, r3
	add r2, r1, r1, lsl #2
	add r3, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r4, [r3, #24]
	ldr r3, [r2, #24]
	cmp r4, r3
	movne r1, r3
	movne r0, r4
	add r3, r1, r1, lsl #2
	add r2, r0, r0, lsl #2
	add r3, r9, r3, lsl #4
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #20]
	ldr r3, [r3, #20]
	cmp r2, r3
	movne r0, r2
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r4, [r2, #16]
	mov r2, r1
	movne r2, r3
	add r1, r2, r2, lsl #2
	add r1, r9, r1, lsl #4
	ldr r3, [r1, #16]
	mov r1, r0
	cmp r4, r3
	movne r1, r4
	add r0, r1, r1, lsl #2
	add r0, r9, r0, lsl #4
	ldr r4, [r0, #12]
	mov r0, r2
	movne r0, r3
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r3, [r2, #12]
	cmp r4, r3
	movne r1, r4
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r4, [r2, #8]
	mov r2, r0
	movne r2, r3
	add r0, r2, r2, lsl #2
	add r0, r9, r0, lsl #4
	ldr r3, [r0, #8]
	mov r0, r1
	cmp r4, r3
	movne r0, r4
	add r1, r0, r0, lsl #2
	add r1, r9, r1, lsl #4
	ldr r4, [r1, #4]
	mov r1, r2
	movne r1, r3
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r3, [r2, #4]
	cmp r4, r3
	movne r1, r3
	movne r0, r4
	add r1, r1, r1, lsl #2
	add r2, r0, r0, lsl #2
	lsl r1, r1, #4
	lsl r2, r2, #4
	ldr r2, [r9, r2]
	ldr r1, [r9, r1]
	cmp r2, r1
	movne r0, r2
	add r0, r0, r0, lsl #2
	lsl r0, r0, #4
	ldr r0, [r9, r0]
	b label150
.p2align 4
label153:
	add r4, r2, r2, lsl #2
	ldr r9, [sp, #0]
	add r4, r9, r4, lsl #4
	ldr r4, [r4, r1, lsl #2]
	cmp r4, #0
	bne label154
	mov r3, #0
	cmp r3, #0
	sub r1, r1, #1
	movne r2, r4
	ldr r6, [sp, #4]
	ldr r4, [r6, r2, lsl #2]
	ldr r3, [r6, r0, lsl #2]
	cmp r4, r3
	bgt label153
	cmp r0, r2
	beq label398
	b label152
.p2align 4
label157:
	bl getch
	cmp r5, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r4, r2
	cmp r1, #9
	bhi label646
	cmp r1, #10
	blo label332
	b label853
.p2align 4
label646:
	mov r5, r0
	b label157
.p2align 4
label854:
	mov r0, #0
	b label144
.p2align 4
label154:
	ldr r6, [sp, #4]
	ldr r5, [r6, r4, lsl #2]
	cmp r3, r5
	mov r3, #0
	movwle r3, #1
	cmp r3, #0
	sub r1, r1, #1
	movne r2, r4
	ldr r4, [r6, r2, lsl #2]
	ldr r3, [r6, r0, lsl #2]
	cmp r4, r3
	bgt label153
	cmp r0, r2
	beq label398
	b label152
.p2align 4
label853:
	mov r5, #0
	b label133
.p2align 4
label96:
	mvn r2, #0
	ldr r1, [sp, #20]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	bge label96
	cmp r4, #1
	bne label240
	b label124
