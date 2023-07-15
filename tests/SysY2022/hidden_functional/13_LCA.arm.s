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
	mov r1, #0
	mov r4, r0
	movw r3, #:lower16:next
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
	b label84
label190:
	mov r0, r4
	mov r4, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label204
label601:
	mov r5, r0
	mov r6, #0
	b label172
label84:
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
	beq label199
	mov r4, r0
	b label84
label199:
	mov r4, r5
	sub r1, r0, #48
	cmp r1, #10
	bhs label204
	b label601
label204:
	mov r6, #0
	b label90
label172:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label90
	mov r5, r0
	b label172
label90:
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
	beq label214
	mov r6, #0
	b label92
label214:
	mov r0, r5
	mov r5, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label228
label602:
	mov r6, r0
	mov r7, #0
	b label169
label92:
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
	beq label223
	mov r5, r0
	b label92
label223:
	mov r5, r6
	sub r1, r0, #48
	cmp r1, #10
	bhs label228
	b label602
label228:
	mov r7, #0
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
	b label634
label169:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	bhs label98
	mov r6, r0
	b label169
label634:
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
	b label144
label102:
	cmp r4, #1
	beq label103
	b label604
label103:
	mov r0, #1
	mov r1, #1
	bl tree
	cmp r5, #0
	beq label143
	mov r4, r5
label104:
	bl getch
	mov r1, #0
	cmp r0, #48
	mov r5, r0
	mov r0, #0
	movwlt r0, #1
	cmp r5, #57
	movwgt r1, #1
	orrs r0, r0, r1
	beq label257
	mov r6, #0
	b label140
label257:
	mov r0, r5
	mov r5, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label262
label261:
	mov r6, r0
	mov r7, #0
	b label109
label262:
	mov r7, #0
	b label112
label140:
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
	beq label426
	mov r5, r0
	b label140
label426:
	mov r5, r6
	sub r1, r0, #48
	cmp r1, #10
	bhs label262
	b label261
label109:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	bhs label112
	mov r6, r0
	b label109
label112:
	bl getch
	cmp r0, #48
	mov r6, r0
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
	beq label283
	mov r7, #0
	b label137
label283:
	mov r0, r6
	mov r6, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label288
	b label287
label288:
	mov r8, #0
label117:
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
	ble label126
	mov r6, #80
	ldr r3, [sp, #0]
	mla r3, r2, r6, r3
	ldr r3, [r3, r1, lsl #2]
	cmp r3, #0
	beq label319
	b label605
label126:
	cmp r0, r2
	bne label329
	b label127
label605:
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
	ble label126
	mov r6, #80
	ldr r3, [sp, #0]
	mla r3, r2, r6, r3
	ldr r3, [r3, r1, lsl #2]
	cmp r3, #0
	beq label319
	b label605
label319:
	mov r5, #0
	cmp r5, #0
	sub r1, r1, #1
	movne r2, r3
	ldr r6, [sp, #4]
	ldr r3, [r6, r2, lsl #2]
	ldr r5, [r6, r0, lsl #2]
	cmp r3, r5
	ble label126
	mov r6, #80
	ldr r3, [sp, #0]
	mla r3, r2, r6, r3
	ldr r3, [r3, r1, lsl #2]
	cmp r3, #0
	beq label319
	b label605
label287:
	mov r7, r0
	mov r8, #0
label134:
	bl getch
	add r2, r8, r8, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r8, r7, r2
	bhs label117
	mov r7, r0
	b label134
label137:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #48
	movwlt r1, #1
	cmp r0, #57
	movwgt r2, #1
	cmp r6, #45
	orr r1, r1, r2
	mov r2, #1
	moveq r7, r2
	cmp r1, #0
	beq label417
	mov r6, r0
	b label137
label417:
	mov r6, r7
	sub r1, r0, #48
	cmp r1, #10
	bhs label288
	b label287
label329:
	mov r1, #19
	mov r5, r2
	mov r2, r0
	b label129
label127:
	mov r0, r2
	bl putint
	mov r0, #10
	bl putch
	subs r4, r4, #1
	beq label143
	b label104
label129:
	mov r0, #80
	ldr r3, [sp, #0]
	sub r9, r1, #2
	mla r6, r5, r0, r3
	ldr r7, [r6, r1, lsl #2]
	mla r6, r2, r0, r3
	ldr r6, [r6, r1, lsl #2]
	cmp r7, r6
	movne r2, r6
	movne r5, r7
	mla r6, r2, r0, r3
	sub r7, r1, #1
	mla r8, r5, r0, r3
	ldr r8, [r8, r7, lsl #2]
	ldr r7, [r6, r7, lsl #2]
	mov r6, r5
	cmp r8, r7
	movne r6, r8
	mla r5, r6, r0, r3
	ldr r8, [r5, r9, lsl #2]
	mov r5, r2
	movne r5, r7
	mla r2, r5, r0, r3
	ldr r7, [r2, r9, lsl #2]
	mov r2, r6
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
	ble label133
	mov r2, r0
	b label129
label144:
	bl getch
	mov r1, #0
	cmp r0, #48
	mov r8, r0
	mov r0, #0
	movwlt r0, #1
	cmp r8, #57
	movwgt r1, #1
	orrs r0, r0, r1
	beq label433
	mov r9, #0
	b label166
label433:
	mov r0, r8
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label438
	b label437
label161:
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
	beq label103
	b label144
label437:
	mov r9, r0
	mov r10, #0
	b label150
label438:
	mov r10, #0
	b label153
label150:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	bhs label153
	mov r9, r0
	b label150
label166:
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
	beq label511
	mov r8, r0
	b label166
label511:
	mov r8, r9
	sub r1, r0, #48
	cmp r1, #10
	bhs label438
	b label437
label153:
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
	beq label459
	mov r10, #0
	b label163
label459:
	mov r0, r9
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	bhs label464
label463:
	mov r10, r0
	mov r11, #0
	b label158
label464:
	mov r11, #0
	b label161
label163:
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
	beq label502
	mov r9, r0
	b label163
label502:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label464
	b label463
label158:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label161
	mov r10, r0
	b label158
label100:
	mvn r2, #0
	ldr r1, [sp, #16]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	blt label102
	b label100
label133:
	mov r0, #80
	ldr r3, [sp, #0]
	mul r0, r5, r0
	ldr r2, [r3, r0]
	b label127
label143:
	mov r0, #0
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
