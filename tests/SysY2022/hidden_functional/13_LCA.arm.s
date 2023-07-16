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
	push { r4, r5, r6, r7, r8, lr }
	movw r6, #:lower16:next
	mov r3, r1
	movw r4, #:lower16:f
	mov r2, #80
	movt r6, #:upper16:next
	movw r1, #:lower16:dep
	mul r5, r0, r2
	movt r4, #:upper16:f
	movt r1, #:upper16:dep
	mla r2, r0, r2, r4
	str r3, [r1, r0, lsl #2]
	ldr r7, [r4, r5]
	mov r1, r4
	movw r5, #:lower16:to
	add r4, r3, #1
	movt r5, #:upper16:to
	cmp r7, #0
	beq label4
	mov r3, #0
	ldr r7, [r2, r3, lsl #2]
	mov r8, #80
	mla r7, r7, r8, r1
	ldr r7, [r7, r3, lsl #2]
	add r3, r3, #1
	cmp r7, #0
	str r7, [r2, r3, lsl #2]
	beq label4
	ldr r7, [r2, r3, lsl #2]
	mla r7, r7, r8, r1
	ldr r7, [r7, r3, lsl #2]
	add r3, r3, #1
	cmp r7, #0
	str r7, [r2, r3, lsl #2]
	beq label4
	ldr r7, [r2, r3, lsl #2]
	mla r7, r7, r8, r1
	ldr r7, [r7, r3, lsl #2]
	add r3, r3, #1
	cmp r7, #0
	str r7, [r2, r3, lsl #2]
	beq label4
	ldr r7, [r2, r3, lsl #2]
	mla r7, r7, r8, r1
	ldr r7, [r7, r3, lsl #2]
	add r3, r3, #1
	cmp r7, #0
	str r7, [r2, r3, lsl #2]
	beq label4
	ldr r7, [r2, r3, lsl #2]
	mla r7, r7, r8, r1
	ldr r7, [r7, r3, lsl #2]
	add r3, r3, #1
	cmp r7, #0
	str r7, [r2, r3, lsl #2]
	beq label4
	ldr r7, [r2, r3, lsl #2]
	mla r7, r7, r8, r1
	ldr r7, [r7, r3, lsl #2]
	add r3, r3, #1
	cmp r7, #0
	str r7, [r2, r3, lsl #2]
	beq label4
	ldr r7, [r2, r3, lsl #2]
	mla r7, r7, r8, r1
	ldr r7, [r7, r3, lsl #2]
	add r3, r3, #1
	cmp r7, #0
	str r7, [r2, r3, lsl #2]
	beq label4
	ldr r7, [r2, r3, lsl #2]
	mla r7, r7, r8, r1
	ldr r7, [r7, r3, lsl #2]
	add r3, r3, #1
	cmp r7, #0
	str r7, [r2, r3, lsl #2]
	beq label4
	ldr r7, [r2, r3, lsl #2]
	mla r7, r7, r8, r1
	ldr r7, [r7, r3, lsl #2]
	add r3, r3, #1
	cmp r7, #0
	str r7, [r2, r3, lsl #2]
	beq label4
	ldr r7, [r2, r3, lsl #2]
	mla r7, r7, r8, r1
	ldr r7, [r7, r3, lsl #2]
	add r3, r3, #1
	cmp r7, #0
	str r7, [r2, r3, lsl #2]
	beq label4
label2:
	ldr r7, [r2, r3, lsl #2]
	mov r8, #80
	mla r7, r7, r8, r1
	ldr r7, [r7, r3, lsl #2]
	add r3, r3, #1
	cmp r7, #0
	str r7, [r2, r3, lsl #2]
	beq label4
	b label2
label4:
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	ldr r7, [r1, r0, lsl #2]
	cmn r7, #1
	beq label7
label5:
	ldr r0, [r5, r7, lsl #2]
	mov r1, r4
	bl tree
	ldr r7, [r6, r7, lsl #2]
	cmn r7, #1
	beq label7
	b label5
label7:
	pop { r4, r5, r6, r7, r8, pc }
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #28
	bl getch
	movw r6, #:lower16:dep
	cmp r0, #48
	mov r4, r0
	movw r3, #:lower16:next
	mov r1, #0
	movt r6, #:upper16:dep
	mov r0, #0
	movt r3, #:upper16:next
	movwlt r0, #1
	cmp r4, #57
	movwgt r1, #1
	orrs r0, r0, r1
	movw r1, #:lower16:to
	movt r1, #:upper16:to
	str r1, [sp, #8]
	movw r1, #:lower16:head
	str r3, [sp, #12]
	movt r1, #:upper16:head
	movw r3, #:lower16:f
	str r1, [sp, #16]
	movt r3, #:upper16:f
	str r3, [sp, #0]
	str r6, [sp, #4]
	beq label190
	mov r5, #0
	b label172
label190:
	mov r0, r4
	mov r4, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label195
	b label194
label195:
	mov r6, #0
	b label87
label194:
	mov r5, r0
	mov r6, #0
	b label169
label172:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	cmp r4, #45
	orr r1, r1, r2
	mov r2, #1
	moveq r5, r2
	cmp r1, #0
	beq label533
	mov r4, r0
	b label172
label533:
	mov r4, r5
	sub r1, r0, #48
	cmp r1, #10
	bhs label195
	b label194
label169:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label87
	mov r5, r0
	b label169
label87:
	bl getch
	mov r5, r0
	cmp r0, #48
	mov r1, #0
	mov r0, #0
	movwlt r0, #1
	cmp r5, #57
	movwgt r1, #1
	cmp r4, #0
	orr r0, r0, r1
	mov r4, r6
	rsb r1, r6, #0
	movne r4, r1
	cmp r0, #0
	beq label205
	mov r6, #0
	b label89
label205:
	mov r0, r5
	mov r5, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label219
label601:
	mov r6, r0
	mov r7, #0
	b label95
label89:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	cmp r5, #45
	orr r1, r1, r2
	mov r2, #1
	moveq r6, r2
	cmp r1, #0
	beq label214
	mov r5, r0
	b label89
label214:
	mov r5, r6
	sub r1, r0, #48
	cmp r1, #10
	bhs label219
	b label601
label219:
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
	ble label102
	mov r0, #1
	mvn r2, #0
	ldr r1, [sp, #16]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	blt label102
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	blt label102
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	blt label102
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	blt label102
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	blt label102
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	blt label102
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	blt label102
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	blt label102
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	blt label102
	b label635
label95:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	bhs label98
	mov r6, r0
	b label95
label635:
	mvn r2, #0
	ldr r1, [sp, #16]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	blt label102
label100:
	mvn r2, #0
	ldr r1, [sp, #16]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	blt label102
	b label100
label604:
	mov r6, #0
	mov r7, #1
	b label103
label102:
	cmp r4, #1
	beq label128
	b label604
label103:
	bl getch
	cmp r0, #48
	mov r1, #0
	mov r8, r0
	mov r0, #0
	movwlt r0, #1
	cmp r8, #57
	movwgt r1, #1
	orrs r0, r0, r1
	beq label255
	mov r9, #0
	b label125
label255:
	mov r0, r8
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label260
	b label259
label117:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	add r7, r7, #1
	movne r0, r1
	cmp r4, r7
	ldr r1, [sp, #8]
	str r0, [r1, r6, lsl #2]
	mov r1, #80
	mul r0, r0, r1
	ldr r1, [sp, #16]
	ldr r2, [r1, r8, lsl #2]
	ldr r3, [sp, #12]
	str r2, [r3, r6, lsl #2]
	str r6, [r1, r8, lsl #2]
	add r6, r6, #1
	ldr r3, [sp, #0]
	str r8, [r3, r0]
	beq label128
	b label103
label259:
	mov r9, r0
	mov r10, #0
	b label109
label260:
	mov r10, #0
label112:
	bl getch
	mov r9, r0
	cmp r0, #48
	mov r1, #0
	mov r0, #0
	movwlt r0, #1
	cmp r9, #57
	movwgt r1, #1
	cmp r8, #0
	orr r0, r0, r1
	mov r8, r10
	rsb r1, r10, #0
	movne r8, r1
	cmp r0, #0
	beq label281
	mov r10, #0
	b label122
label281:
	mov r0, r9
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label286
	b label285
label125:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	cmp r8, #45
	orr r1, r1, r2
	mov r2, #1
	moveq r9, r2
	cmp r1, #0
	beq label333
	mov r8, r0
	b label125
label333:
	mov r8, r9
	sub r1, r0, #48
	cmp r1, #10
	bhs label260
	b label259
label109:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label112
	mov r9, r0
	b label109
label285:
	mov r10, r0
	mov r11, #0
	b label119
label286:
	mov r11, #0
	b label117
label122:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	cmp r9, #45
	orr r1, r1, r2
	mov r2, #1
	moveq r10, r2
	cmp r1, #0
	beq label324
	mov r9, r0
	b label122
label324:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label286
	b label285
label119:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label117
	mov r10, r0
	b label119
label98:
	cmp r5, #0
	rsb r0, r7, #0
	ldr r6, [sp, #4]
	mov r5, r7
	movne r5, r0
	cmp r4, #0
	movw r0, #16191
	movt r0, #16191
	str r0, [r6, #0]
	ble label102
	mov r0, #1
	mvn r2, #0
	ldr r1, [sp, #16]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	blt label102
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	blt label102
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	blt label102
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	blt label102
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	blt label102
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	blt label102
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	blt label102
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	blt label102
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	blt label102
	b label635
label128:
	mov r0, #1
	mov r1, #1
	bl tree
	cmp r5, #0
	beq label168
	mov r4, r5
label129:
	bl getch
	mov r1, #0
	cmp r0, #48
	mov r5, r0
	mov r0, #0
	movwlt r0, #1
	cmp r5, #57
	movwgt r1, #1
	orrs r0, r0, r1
	beq label344
	mov r6, #0
	b label165
label344:
	mov r0, r5
	mov r5, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label349
	b label348
label349:
	mov r7, #0
label137:
	bl getch
	mov r6, r0
	cmp r0, #48
	mov r1, #0
	mov r0, #0
	movwlt r0, #1
	cmp r6, #57
	movwgt r1, #1
	cmp r5, #0
	orr r0, r0, r1
	mov r5, r7
	rsb r1, r7, #0
	movne r5, r1
	cmp r0, #0
	beq label370
	mov r7, #0
	b label139
label370:
	mov r0, r6
	mov r6, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label384
	b label607
label436:
	mov r1, #19
	mov r5, r2
	mov r2, r0
	b label160
label158:
	mov r0, r2
	bl putint
	mov r0, #10
	bl putch
	subs r4, r4, #1
	beq label168
	b label129
label607:
	mov r7, r0
	mov r8, #0
	b label145
label139:
	bl getch
	mov r1, #0
	mov r2, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	cmp r6, #45
	orr r1, r1, r2
	mov r2, #1
	moveq r7, r2
	cmp r1, #0
	beq label379
	mov r6, r0
	b label139
label379:
	mov r6, r7
	sub r1, r0, #48
	cmp r1, #10
	bhs label384
	b label607
label384:
	mov r8, #0
label148:
	cmp r6, #0
	rsb r0, r8, #0
	mov r1, r8
	ldr r6, [sp, #4]
	movne r1, r0
	ldr r0, [r6, r5, lsl #2]
	ldr r2, [r6, r1, lsl #2]
	cmp r0, r2
	mov r2, r5
	mov r0, r1
	movlt r2, r1
	movlt r0, r5
	mov r1, #19
	ldr r3, [r6, r2, lsl #2]
	ldr r5, [r6, r0, lsl #2]
	cmp r3, r5
	ble label157
	mov r6, #80
	ldr r3, [sp, #0]
	mla r3, r2, r6, r3
	ldr r3, [r3, r1, lsl #2]
	cmp r3, #0
	beq label426
	b label608
label157:
	cmp r0, r2
	bne label436
	b label158
label145:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label148
	mov r7, r0
	b label145
label348:
	mov r6, r0
	mov r7, #0
	b label134
label165:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	cmp r5, #45
	orr r1, r1, r2
	mov r2, #1
	moveq r6, r2
	cmp r1, #0
	beq label513
	mov r5, r0
	b label165
label513:
	mov r5, r6
	sub r1, r0, #48
	cmp r1, #10
	bhs label349
	b label348
label134:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	bhs label137
	mov r6, r0
	b label134
label608:
	ldr r6, [sp, #4]
	ldr r6, [r6, r3, lsl #2]
	cmp r5, r6
	mov r5, #0
	movwle r5, #1
	cmp r5, #0
	sub r1, r1, #1
	movne r2, r3
	ldr r6, [sp, #4]
	ldr r3, [r6, r2, lsl #2]
	ldr r5, [r6, r0, lsl #2]
	cmp r3, r5
	ble label157
	mov r6, #80
	ldr r3, [sp, #0]
	mla r3, r2, r6, r3
	ldr r3, [r3, r1, lsl #2]
	cmp r3, #0
	beq label426
	b label608
label426:
	mov r5, #0
	cmp r5, #0
	sub r1, r1, #1
	movne r2, r3
	ldr r6, [sp, #4]
	ldr r3, [r6, r2, lsl #2]
	ldr r5, [r6, r0, lsl #2]
	cmp r3, r5
	ble label157
	mov r6, #80
	ldr r3, [sp, #0]
	mla r3, r2, r6, r3
	ldr r3, [r3, r1, lsl #2]
	cmp r3, #0
	beq label426
	b label608
label160:
	mov r0, #80
	ldr r3, [sp, #0]
	sub r9, r1, #1
	mla r7, r2, r0, r3
	mla r6, r5, r0, r3
	ldr r6, [r6, r1, lsl #2]
	ldr r7, [r7, r1, lsl #2]
	cmp r6, r7
	movne r5, r6
	mla r6, r5, r0, r3
	ldr r8, [r6, r9, lsl #2]
	mov r6, r2
	movne r6, r7
	mla r2, r6, r0, r3
	ldr r7, [r2, r9, lsl #2]
	sub r9, r1, #2
	mov r2, r5
	cmp r8, r7
	movne r2, r8
	mla r5, r2, r0, r3
	ldr r8, [r5, r9, lsl #2]
	mov r5, r6
	movne r5, r7
	mla r6, r5, r0, r3
	ldr r7, [r6, r9, lsl #2]
	cmp r8, r7
	movne r5, r7
	movne r2, r8
	sub r8, r1, #3
	mla r6, r2, r0, r3
	sub r1, r1, #4
	mla r0, r5, r0, r3
	ldr r6, [r6, r8, lsl #2]
	ldr r3, [r0, r8, lsl #2]
	mov r0, r5
	cmp r6, r3
	movne r0, r3
	mov r5, r2
	movne r5, r6
	cmn r1, #1
	ble label164
	mov r2, r0
	b label160
label164:
	mov r0, #80
	ldr r3, [sp, #0]
	mul r0, r5, r0
	ldr r2, [r3, r0]
	b label158
label168:
	mov r0, #0
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
