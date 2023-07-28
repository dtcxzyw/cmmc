.arch armv7ve
.data
.bss
.align 4
f:
	.zero	800400
.align 4
dep:
	.zero	40020
.align 4
to:
	.zero	40020
.align 4
next:
	.zero	40020
.align 4
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
	movw r5, #:lower16:to
	mov r3, r1
	movt r6, #:upper16:next
	lsl r4, r2, #4
	movt r5, #:upper16:to
	movw r1, #:lower16:dep
	movt r1, #:upper16:dep
	str r3, [r1, r0, lsl #2]
	movw r1, #:lower16:f
	movt r1, #:upper16:f
	ldr r7, [r1, r4]
	add r2, r1, r2, lsl #4
	add r4, r3, #1
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
	movw r6, #:lower16:dep
	movw r9, #:lower16:f
	cmp r0, #48
	mov r1, #0
	mov r2, #0
	movw r3, #:lower16:next
	movt r6, #:upper16:dep
	movt r9, #:upper16:f
	movwlt r1, #1
	movt r3, #:upper16:next
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	movw r1, #:lower16:to
	movt r1, #:upper16:to
	str r1, [sp, #8]
	movw r1, #:lower16:head
	str r3, [sp, #12]
	movt r1, #:upper16:head
	str r1, [sp, #16]
	str r9, [sp, #0]
	str r6, [sp, #4]
	bne label183
	mov r4, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label197
	b label607
label183:
	mov r5, r0
	mov r4, #0
.p2align 4
label77:
	bl getch
	mov r2, #1
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r5, #45
	moveq r4, r2
	cmp r1, #0
	bne label192
	sub r1, r0, #48
	cmp r1, #10
	blo label197
	b label607
label192:
	mov r5, r0
	b label77
label197:
	mov r5, r0
	mov r6, #0
	b label165
label83:
	bl getch
	rsb r2, r6, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r4, #0
	mov r4, r6
	movne r4, r2
	cmp r1, #0
	bne label207
	mov r5, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label221
	b label220
label207:
	mov r6, r0
	mov r5, #0
.p2align 4
label85:
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
	bne label216
	sub r1, r0, #48
	cmp r1, #10
	blo label221
	b label220
label216:
	mov r6, r0
	b label85
.p2align 4
label220:
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
	bgt label237
	cmp r4, #1
	bne label248
	b label124
label221:
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
	blo label230
	cmp r5, #0
	rsb r0, r7, #0
	ldr r6, [sp, #4]
	mov r5, r7
	movne r5, r0
	cmp r4, #0
	movw r0, #16191
	movt r0, #16191
	str r0, [r6, #0]
	bgt label237
	cmp r4, #1
	bne label248
	b label124
label230:
	mov r6, r0
	b label91
label237:
	mov r0, #1
.p2align 4
label96:
	mvn r2, #0
	ldr r1, [sp, #16]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	bge label96
	cmp r4, #1
	beq label124
label248:
	mov r6, #0
	mov r7, #1
	b label99
label124:
	mov r0, #1
	mov r1, #1
	bl tree
	cmp r5, #0
	beq label125
	mov r4, r5
	b label126
label125:
	mov r0, #0
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label165:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label83
	mov r5, r0
	b label165
.p2align 4
label126:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label340
	mov r5, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label345
.p2align 4
label619:
	mov r6, #0
	b label134
.p2align 4
label340:
	mov r6, r0
	mov r5, #0
	b label162
.p2align 4
label345:
	mov r6, r0
	mov r7, #0
.p2align 4
label131:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	blo label354
	mov r6, r7
	b label134
.p2align 4
label354:
	mov r6, r0
	b label131
.p2align 4
label134:
	bl getch
	rsb r2, r6, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	orrgt r1, r1, #1
	cmp r5, #0
	mov r5, r6
	movne r5, r2
	cmp r1, #0
	bne label364
	mov r6, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label378
	b label620
.p2align 4
label364:
	mov r7, r0
	mov r6, #0
.p2align 4
label136:
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
	bne label373
	sub r1, r0, #48
	cmp r1, #10
	blo label378
	b label620
.p2align 4
label373:
	mov r7, r0
	b label136
.p2align 4
label378:
	mov r7, r0
	mov r8, #0
.p2align 4
label142:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	blo label387
	mov r0, r8
	b label145
.p2align 4
label387:
	mov r7, r0
	b label142
.p2align 4
label145:
	cmp r6, #0
	rsb r2, r0, #0
	mov r1, r0
	ldr r6, [sp, #4]
	movne r1, r2
	ldr r0, [r6, r5, lsl #2]
	ldr r2, [r6, r1, lsl #2]
	cmp r0, r2
	mov r2, r5
	mov r0, r1
	movlt r2, r1
	movlt r0, r5
	mov r1, #19
	ldr r5, [r6, r2, lsl #2]
	ldr r3, [r6, r0, lsl #2]
	cmp r5, r3
	bgt label150
	cmp r0, r2
	beq label155
.p2align 4
label622:
	mov r1, #19
	b label157
.p2align 4
label150:
	add r5, r2, r2, lsl #2
	ldr r9, [sp, #0]
	add r5, r9, r5, lsl #4
	ldr r5, [r5, r1, lsl #2]
	cmp r5, #0
	bne label151
	mov r3, #0
	cmp r3, #0
	sub r1, r1, #1
	movne r2, r5
	ldr r6, [sp, #4]
	ldr r5, [r6, r2, lsl #2]
	ldr r3, [r6, r0, lsl #2]
	cmp r5, r3
	bgt label150
	cmp r0, r2
	bne label622
.p2align 4
label155:
	mov r0, r2
	bl putint
	mov r0, #10
	bl putch
	subs r4, r4, #1
	bne label126
	b label125
.p2align 4
label157:
	add r3, r2, r2, lsl #2
	ldr r9, [sp, #0]
	sub r7, r1, #1
	add r5, r0, r0, lsl #2
	add r3, r9, r3, lsl #4
	add r5, r9, r5, lsl #4
	ldr r3, [r3, r1, lsl #2]
	ldr r5, [r5, r1, lsl #2]
	cmp r3, r5
	movne r2, r3
	add r3, r2, r2, lsl #2
	add r3, r9, r3, lsl #4
	ldr r6, [r3, r7, lsl #2]
	mov r3, r0
	movne r3, r5
	add r0, r3, r3, lsl #2
	add r0, r9, r0, lsl #4
	ldr r5, [r0, r7, lsl #2]
	sub r7, r1, #2
	mov r0, r2
	cmp r6, r5
	movne r0, r6
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r6, [r2, r7, lsl #2]
	mov r2, r3
	movne r2, r5
	add r3, r2, r2, lsl #2
	add r3, r9, r3, lsl #4
	ldr r5, [r3, r7, lsl #2]
	cmp r6, r5
	movne r2, r5
	movne r0, r6
	add r5, r2, r2, lsl #2
	sub r6, r1, #3
	add r3, r0, r0, lsl #2
	sub r1, r1, #4
	add r5, r9, r5, lsl #4
	add r3, r9, r3, lsl #4
	ldr r3, [r3, r6, lsl #2]
	ldr r6, [r5, r6, lsl #2]
	mov r5, r2
	cmp r3, r6
	movne r5, r6
	mov r2, r0
	movne r2, r3
	cmn r1, #1
	ble label492
	mov r0, r5
	b label157
.p2align 4
label162:
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
	bne label505
	sub r1, r0, #48
	cmp r1, #10
	blo label345
	b label619
.p2align 4
label505:
	mov r6, r0
	b label162
.p2align 4
label620:
	mov r0, #0
	b label145
.p2align 4
label151:
	ldr r6, [sp, #4]
	ldr r6, [r6, r5, lsl #2]
	cmp r3, r6
	mov r3, #0
	movwle r3, #1
	cmp r3, #0
	sub r1, r1, #1
	movne r2, r5
	ldr r6, [sp, #4]
	ldr r5, [r6, r2, lsl #2]
	ldr r3, [r6, r0, lsl #2]
	cmp r5, r3
	bgt label150
	cmp r0, r2
	beq label155
	b label622
.p2align 4
label99:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	orrs r1, r1, r2
	bne label255
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label260
.p2align 4
label615:
	mov r9, #0
	b label108
.p2align 4
label255:
	mov r9, r0
	mov r8, #0
	b label121
.p2align 4
label260:
	mov r9, r0
	mov r10, #0
.p2align 4
label105:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	blo label269
	mov r9, r10
	b label108
.p2align 4
label269:
	mov r9, r0
	b label105
.p2align 4
label108:
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
	bne label279
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label284
.p2align 4
label616:
	mov r0, #0
	b label113
.p2align 4
label279:
	mov r10, r0
	mov r9, #0
	b label118
.p2align 4
label284:
	mov r10, r0
	mov r11, #0
	b label115
.p2align 4
label113:
	cmp r9, #0
	rsb r1, r0, #0
	add r7, r7, #1
	movne r0, r1
	cmp r4, r7
	ldr r1, [sp, #8]
	str r0, [r1, r6, lsl #2]
	ldr r1, [sp, #16]
	add r0, r0, r0, lsl #2
	lsl r0, r0, #4
	ldr r2, [r1, r8, lsl #2]
	ldr r3, [sp, #12]
	str r2, [r3, r6, lsl #2]
	str r6, [r1, r8, lsl #2]
	add r6, r6, #1
	ldr r9, [sp, #0]
	str r8, [r9, r0]
	bne label99
	b label124
.p2align 4
label115:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label311
	mov r0, r11
	b label113
.p2align 4
label311:
	mov r10, r0
	b label115
.p2align 4
label118:
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
	bne label320
	sub r1, r0, #48
	cmp r1, #10
	blo label284
	b label616
.p2align 4
label320:
	mov r10, r0
	b label118
.p2align 4
label121:
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
	bne label329
	sub r1, r0, #48
	cmp r1, #10
	blo label260
	b label615
.p2align 4
label329:
	mov r9, r0
	b label121
.p2align 4
label607:
	mov r6, #0
	b label83
.p2align 4
label492:
	add r0, r2, r2, lsl #2
	ldr r9, [sp, #0]
	lsl r0, r0, #4
	ldr r2, [r9, r0]
	b label155
