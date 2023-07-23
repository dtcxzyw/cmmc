.arch armv7ve
.data
.bss
.align 4
to:
	.zero	20020
.align 4
next:
	.zero	20020
.align 4
head:
	.zero	4020
.align 4
vis:
	.zero	4020
.text
.syntax unified
.arm
.fpu vfpv4
same:
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	movw r7, #:lower16:vis
	mov r6, r1
	movt r7, #:upper16:vis
	cmp r0, r1
	mov r1, #1
	str r1, [r7, r0, lsl #2]
	beq label24
	movw r8, #:lower16:head
	movw r9, #:lower16:next
	movw r10, #:lower16:to
	movt r8, #:upper16:head
	movt r9, #:upper16:next
	movt r10, #:upper16:to
	ldr r4, [r8, r0, lsl #2]
	cmn r4, #1
	beq label93
label5:
	ldr r0, [r10, r4, lsl #2]
	ldr r1, [r7, r0, lsl #2]
	cmp r1, #0
	beq label6
	ldr r4, [r9, r4, lsl #2]
	cmn r4, #1
	bne label5
label93:
	mov r0, #0
label14:
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label24:
	mov r0, #1
	b label14
label6:
	mov r1, #1
	cmp r6, r0
	str r1, [r7, r0, lsl #2]
	beq label24
	ldr r5, [r8, r0, lsl #2]
	cmn r5, #1
	bne label10
	ldr r4, [r9, r4, lsl #2]
	cmn r4, #1
	bne label5
	b label93
label10:
	ldr r0, [r10, r5, lsl #2]
	ldr r1, [r7, r0, lsl #2]
	cmp r1, #0
	beq label11
	ldr r5, [r9, r5, lsl #2]
	cmn r5, #1
	bne label10
	ldr r4, [r9, r4, lsl #2]
	cmn r4, #1
	bne label5
	b label93
label11:
	mov r1, r6
	bl same
	cmp r0, #0
	bne label24
	ldr r5, [r9, r5, lsl #2]
	cmn r5, #1
	bne label10
	ldr r4, [r9, r4, lsl #2]
	cmn r4, #1
	bne label5
	b label93
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #20
	bl getch
	cmp r0, #48
	mov r1, #0
	mov r2, #0
	movw r4, #:lower16:head
	movw r3, #:lower16:vis
	movwlt r1, #1
	movt r4, #:upper16:head
	movt r3, #:upper16:vis
	cmp r0, #57
	str r3, [sp, #0]
	movwgt r2, #1
	movw r3, #:lower16:next
	orrs r1, r1, r2
	movt r3, #:upper16:next
	movw r2, #:lower16:to
	movt r2, #:upper16:to
	str r2, [sp, #4]
	str r3, [sp, #8]
	bne label198
	mov r5, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label212
	b label535
label198:
	mov r6, r0
	mov r5, #0
label105:
	bl getch
	mov r2, #1
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r6, #45
	moveq r5, r2
	cmp r1, #0
	bne label207
	sub r1, r0, #48
	cmp r1, #10
	blo label212
	b label535
label207:
	mov r6, r0
	b label105
label212:
	mov r6, r0
	mov r7, #0
	b label182
label111:
	bl getch
	rsb r2, r7, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r5, #0
	mov r5, r7
	movne r5, r2
	cmp r1, #0
	bne label223
	mov r6, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label237
label537:
	mov r8, #0
	cmp r6, #0
	rsb r0, r8, #0
	mov r2, #0
	mov r6, r8
	movne r6, r0
	b label124
label223:
	mov r7, r0
	mov r6, #0
label113:
	bl getch
	mov r2, #1
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r7, #45
	moveq r6, r2
	cmp r1, #0
	bne label232
	sub r1, r0, #48
	cmp r1, #10
	blo label237
	b label537
label232:
	mov r7, r0
	b label113
label237:
	mov r7, r0
	mov r8, #0
label119:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label247
	mov r7, r0
	b label119
label124:
	add r0, r4, r2, lsl #2
	mvn r1, #0
	str r1, [r4, r2, lsl #2]
	add r2, r2, #16
	str r1, [r0, #4]
	cmp r2, #992
	str r1, [r0, #8]
	str r1, [r0, #12]
	str r1, [r0, #16]
	str r1, [r0, #20]
	str r1, [r0, #24]
	str r1, [r0, #28]
	str r1, [r0, #32]
	str r1, [r0, #36]
	str r1, [r0, #40]
	str r1, [r0, #44]
	str r1, [r0, #48]
	str r1, [r0, #52]
	str r1, [r0, #56]
	str r1, [r0, #60]
	blt label124
	add r0, r4, r2, lsl #2
	mov r7, #0
	str r1, [r4, r2, lsl #2]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #12]
	str r1, [r0, #16]
	str r1, [r0, #20]
	str r1, [r0, #24]
	str r1, [r0, #28]
	str r1, [r0, #32]
	str r1, [r0, #36]
	str r1, [r0, #40]
	str r1, [r0, #44]
	str r1, [r0, #48]
	cmp r6, #0
	beq label130
label131:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #81
	movwne r1, #1
	cmp r0, #85
	movwne r2, #1
	ands r1, r1, r2
	bne label131
	cmp r0, #81
	beq label156
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label309
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label314
label540:
	mov r9, #0
	b label137
label309:
	mov r9, r0
	mov r8, #0
	b label153
label314:
	mov r9, r0
	mov r10, #0
	b label150
label137:
	bl getch
	rsb r2, r9, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r8, #0
	mov r8, r9
	movne r8, r2
	cmp r1, #0
	bne label324
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label338
label541:
	mov r11, #0
	b label145
label324:
	mov r10, r0
	mov r9, #0
label139:
	bl getch
	mov r2, #1
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r10, #45
	moveq r9, r2
	cmp r1, #0
	bne label333
	sub r1, r0, #48
	cmp r1, #10
	blo label338
	b label541
label333:
	mov r10, r0
	b label139
label338:
	mov r10, r0
	mov r11, #0
	b label147
label145:
	cmp r9, #0
	rsb r1, r11, #0
	ldr r2, [sp, #4]
	sub r6, r6, #1
	mov r0, r11
	movne r0, r1
	str r0, [r2, r7, lsl #2]
	add r1, r2, r7, lsl #2
	ldr r9, [r4, r8, lsl #2]
	ldr r3, [sp, #8]
	str r9, [r3, r7, lsl #2]
	add r2, r3, r7, lsl #2
	str r7, [r4, r8, lsl #2]
	str r8, [r1, #4]
	ldr r1, [r4, r0, lsl #2]
	str r1, [r2, #4]
	add r1, r7, #1
	add r7, r7, #2
	str r1, [r4, r0, lsl #2]
	cmp r6, #0
	bne label131
	b label130
label147:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label145
	mov r10, r0
	b label147
label150:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	blo label378
	mov r9, r10
	b label137
label378:
	mov r9, r0
	b label150
label153:
	bl getch
	mov r2, #1
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r9, #45
	moveq r8, r2
	cmp r1, #0
	bne label387
	sub r1, r0, #48
	cmp r1, #10
	blo label314
	b label540
label387:
	mov r9, r0
	b label153
label156:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label394
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label399
	b label545
label394:
	mov r9, r0
	mov r8, #0
	b label179
label399:
	mov r9, r0
	mov r10, #0
label176:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	blo label460
	mov r9, r10
	b label160
label460:
	mov r9, r0
	b label176
label179:
	bl getch
	mov r2, #1
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r9, #45
	moveq r8, r2
	cmp r1, #0
	bne label469
	sub r1, r0, #48
	cmp r1, #10
	blo label399
	b label545
label469:
	mov r9, r0
	b label179
label182:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	bhs label111
	mov r6, r0
	b label182
label130:
	mov r0, #0
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label545:
	mov r9, #0
label160:
	bl getch
	rsb r2, r9, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r8, #0
	mov r8, r9
	movne r8, r2
	cmp r1, #0
	bne label409
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label414
	mov r11, #0
	cmp r9, #0
	rsb r0, r11, #0
	mov r1, r11
	movne r1, r0
	cmp r5, #0
	bgt label420
	b label167
label409:
	mov r10, r0
	mov r9, #0
	b label173
label414:
	mov r10, r0
	mov r11, #0
	b label170
label420:
	mov r0, #1
	mov r2, #0
	ldr r3, [sp, #0]
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	bge label168
label167:
	mov r0, r8
	bl same
	bl putint
	mov r0, #10
	bl putch
	subs r6, r6, #1
	bne label131
	b label130
label170:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label440
	cmp r9, #0
	rsb r0, r11, #0
	mov r1, r11
	movne r1, r0
	cmp r5, #0
	bgt label420
	b label167
label440:
	mov r10, r0
	b label170
label173:
	bl getch
	mov r1, #0
	mov r2, #1
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r10, #45
	moveq r9, r2
	cmp r1, #0
	bne label449
	sub r1, r0, #48
	cmp r1, #10
	blo label414
	mov r11, #0
	cmp r9, #0
	rsb r0, r11, #0
	mov r1, r11
	movne r1, r0
	cmp r5, #0
	bgt label420
	b label167
label449:
	mov r10, r0
	b label173
label535:
	mov r7, #0
	b label111
label168:
	mov r2, #0
	ldr r3, [sp, #0]
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	bge label168
	b label167
label247:
	cmp r6, #0
	rsb r0, r8, #0
	mov r2, #0
	mov r6, r8
	movne r6, r0
	b label124
