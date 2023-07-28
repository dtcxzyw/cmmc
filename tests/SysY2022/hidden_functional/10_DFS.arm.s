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
.p2align 4
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
label3:
	cmn r4, #1
	bne label5
	mov r0, #0
label14:
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label5:
	ldr r0, [r10, r4, lsl #2]
	ldr r1, [r7, r0, lsl #2]
	cmp r1, #0
	beq label6
label46:
	ldr r4, [r9, r4, lsl #2]
	b label3
label6:
	mov r1, #1
	cmp r6, r0
	str r1, [r7, r0, lsl #2]
	beq label24
	ldr r5, [r8, r0, lsl #2]
label8:
	cmn r5, #1
	beq label46
	ldr r0, [r10, r5, lsl #2]
	ldr r1, [r7, r0, lsl #2]
	cmp r1, #0
	beq label11
label69:
	ldr r5, [r9, r5, lsl #2]
	b label8
label11:
	mov r1, r6
	bl same
	cmp r0, #0
	beq label69
label24:
	mov r0, #1
	b label14
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #20
	bl getch
	movw r4, #:lower16:head
	cmp r0, #48
	mov r1, #0
	movw r3, #:lower16:vis
	mov r2, #0
	movt r4, #:upper16:head
	movwlt r1, #1
	movt r3, #:upper16:vis
	cmp r0, #57
	str r3, [sp, #0]
	movwgt r2, #1
	movw r3, #:lower16:next
	movt r3, #:upper16:next
	orrs r1, r1, r2
	movw r2, #:lower16:to
	movt r2, #:upper16:to
	str r2, [sp, #4]
	str r3, [sp, #8]
	bne label195
	mov r5, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label209
	b label544
label195:
	mov r6, r0
	mov r5, #0
.p2align 4
label102:
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
	bne label204
	sub r1, r0, #48
	cmp r1, #10
	blo label209
	b label544
label204:
	mov r6, r0
	b label102
label209:
	mov r6, r0
	mov r7, #0
	b label179
label108:
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
	bne label220
	mov r6, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label234
.p2align 4
label546:
	mov r8, #0
	cmp r6, #0
	rsb r0, r8, #0
	mov r2, #0
	mov r6, r8
	movne r6, r0
	b label121
label220:
	mov r7, r0
	mov r6, #0
.p2align 4
label110:
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
	bne label229
	sub r1, r0, #48
	cmp r1, #10
	blo label234
	b label546
label229:
	mov r7, r0
	b label110
label234:
	mov r7, r0
	mov r8, #0
.p2align 4
label116:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label242
	mov r7, r0
	b label116
.p2align 4
label121:
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
	blt label121
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
	beq label127
.p2align 4
label128:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #81
	movwne r1, #1
	cmp r0, #85
	movwne r2, #1
	ands r1, r1, r2
	bne label128
	cmp r0, #81
	beq label153
	bl getch
	mov r1, #0
	mov r2, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label304
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label309
.p2align 4
label549:
	mov r9, #0
	b label134
.p2align 4
label304:
	mov r9, r0
	mov r8, #0
	b label150
.p2align 4
label309:
	mov r9, r0
	mov r10, #0
	b label147
.p2align 4
label134:
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
	bne label319
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label333
.p2align 4
label550:
	mov r11, #0
	b label142
.p2align 4
label319:
	mov r10, r0
	mov r9, #0
.p2align 4
label136:
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
	bne label328
	sub r1, r0, #48
	cmp r1, #10
	blo label333
	b label550
.p2align 4
label328:
	mov r10, r0
	b label136
.p2align 4
label333:
	mov r10, r0
	mov r11, #0
	b label144
.p2align 4
label142:
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
	bne label128
	b label127
.p2align 4
label144:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label142
	mov r10, r0
	b label144
.p2align 4
label147:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	blo label369
	mov r9, r10
	b label134
.p2align 4
label369:
	mov r9, r0
	b label147
.p2align 4
label150:
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
	bne label378
	sub r1, r0, #48
	cmp r1, #10
	blo label309
	b label549
.p2align 4
label378:
	mov r9, r0
	b label150
.p2align 4
label153:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label385
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label390
	b label554
.p2align 4
label385:
	mov r9, r0
	mov r8, #0
	b label176
.p2align 4
label390:
	mov r9, r0
	mov r10, #0
.p2align 4
label173:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	blo label447
	mov r9, r10
	b label157
.p2align 4
label447:
	mov r9, r0
	b label173
.p2align 4
label176:
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
	bne label456
	sub r1, r0, #48
	cmp r1, #10
	blo label390
	b label554
.p2align 4
label456:
	mov r9, r0
	b label176
.p2align 4
label179:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	bhs label108
	mov r6, r0
	b label179
label127:
	mov r0, #0
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label554:
	mov r9, #0
.p2align 4
label157:
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
	bne label400
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label405
	mov r11, #0
	cmp r9, #0
	rsb r0, r11, #0
	mov r1, r11
	movne r1, r0
	cmp r5, #0
	bgt label411
	b label164
.p2align 4
label400:
	mov r10, r0
	mov r9, #0
	b label170
.p2align 4
label405:
	mov r10, r0
	mov r11, #0
	b label167
.p2align 4
label411:
	mov r0, #1
	mov r2, #0
	ldr r3, [sp, #0]
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	bge label165
.p2align 4
label164:
	mov r0, r8
	bl same
	bl putint
	mov r0, #10
	bl putch
	subs r6, r6, #1
	bne label128
	b label127
.p2align 4
label167:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label429
	cmp r9, #0
	rsb r0, r11, #0
	mov r1, r11
	movne r1, r0
	cmp r5, #0
	bgt label411
	b label164
.p2align 4
label429:
	mov r10, r0
	b label167
.p2align 4
label170:
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
	bne label438
	sub r1, r0, #48
	cmp r1, #10
	blo label405
	mov r11, #0
	cmp r9, #0
	rsb r0, r11, #0
	mov r1, r11
	movne r1, r0
	cmp r5, #0
	bgt label411
	b label164
.p2align 4
label438:
	mov r10, r0
	b label170
.p2align 4
label544:
	mov r7, #0
	b label108
.p2align 4
label165:
	mov r2, #0
	ldr r3, [sp, #0]
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	bge label165
	b label164
.p2align 4
label242:
	cmp r6, #0
	rsb r0, r8, #0
	mov r2, #0
	mov r6, r8
	movne r6, r0
	b label121
