.arch armv7ve
.data
.bss
.p2align 3
value:
	.zero	40000
.p2align 3
left_child:
	.zero	40000
.p2align 3
right_child:
	.zero	40000
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
insert:
	push { r4, r5, r6, r7, r8, lr }
	movw r3, #:lower16:right_child
	movt r3, #:upper16:right_child
	movw r7, #:lower16:left_child
	movt r7, #:upper16:left_child
	cmn r0, #1
	movw r8, #:lower16:value
	movt r8, #:upper16:value
	mov r4, r0
	bne label4
	ldr r0, [r2, #0]
	str r1, [r8, r0, lsl #2]
	mvn r1, #0
	str r1, [r7, r0, lsl #2]
	str r1, [r3, r0, lsl #2]
	add r1, r0, #1
	str r1, [r2, #0]
label2:
	pop { r4, r5, r6, r7, r8, pc }
label4:
	ldr r0, [r8, r4, lsl #2]
	mov r5, r7
	cmp r1, r0
	movgt r5, r3
	ldr r6, [r5, r4, lsl #2]
	cmn r6, #1
	bne label6
	ldr r0, [r2, #0]
	str r1, [r8, r0, lsl #2]
	mvn r1, #0
	str r1, [r7, r0, lsl #2]
	str r1, [r3, r0, lsl #2]
	add r1, r0, #1
	str r1, [r2, #0]
	str r0, [r5, r4, lsl #2]
	mov r0, r4
	b label2
label6:
	ldr r0, [r8, r6, lsl #2]
	cmp r1, r0
	mov r0, r7
	movgt r0, r3
	add r7, r0, r6, lsl #2
	ldr r0, [r7, #0]
	bl insert
	str r0, [r7, #0]
	mov r0, r4
	str r6, [r5, r4, lsl #2]
	b label2
.p2align 4
delete:
	push { r4, r5, r6, r7, r8, lr }
	cmn r0, #1
	mov r4, r0
	beq label132
	movw r2, #:lower16:value
	movt r2, #:upper16:value
	movw r6, #:lower16:right_child
	movt r6, #:upper16:right_child
	ldr r0, [r2, r0, lsl #2]
	cmp r1, r0
	ble label94
	ldr r5, [r6, r4, lsl #2]
	cmn r5, #1
	beq label81
	ldr r0, [r2, r5, lsl #2]
	cmp r1, r0
	ble label86
	add r7, r6, r5, lsl #2
	ldr r0, [r7, #0]
	bl delete
	str r0, [r7, #0]
	str r5, [r6, r4, lsl #2]
	mov r0, r4
	b label126
label132:
	mvn r0, #0
label126:
	pop { r4, r5, r6, r7, r8, pc }
label94:
	movw r7, #:lower16:left_child
	movt r7, #:upper16:left_child
	cmp r1, r0
	bge label95
	ldr r5, [r7, r4, lsl #2]
	cmn r5, #1
	beq label125
	ldr r0, [r2, r5, lsl #2]
	cmp r1, r0
	ble label114
	add r6, r6, r5, lsl #2
	ldr r0, [r6, #0]
	bl delete
	str r0, [r6, #0]
	mov r0, r4
	str r5, [r7, r4, lsl #2]
	b label126
label95:
	ldr r0, [r7, r4, lsl #2]
	cmn r0, #1
	beq label111
	ldr r5, [r6, r4, lsl #2]
	cmn r5, #1
	beq label126
	mov r0, r5
	b label97
label86:
	movw r7, #:lower16:left_child
	movt r7, #:upper16:left_child
	cmp r1, r0
	bge label88
label87:
	add r7, r7, r5, lsl #2
	ldr r0, [r7, #0]
	bl delete
	str r0, [r7, #0]
	mov r0, r4
	str r5, [r6, r4, lsl #2]
	b label126
label236:
	mov r0, r1
label97:
	ldr r1, [r7, r0, lsl #2]
	cmn r1, #1
	bne label236
	ldr r1, [r2, r0, lsl #2]
	str r1, [r2, r4, lsl #2]
	ldr r0, [r2, r5, lsl #2]
	cmp r1, r0
	bgt label110
	movw r7, #:lower16:left_child
	movt r7, #:upper16:left_child
	blt label87
	ldr r1, [r7, r5, lsl #2]
	cmn r1, #1
	beq label93
	ldr r0, [r6, r5, lsl #2]
	cmn r0, #1
	beq label189
	mov r1, r0
	b label106
label88:
	ldr r1, [r7, r5, lsl #2]
	cmn r1, #1
	bne label89
label93:
	ldr r0, [r6, r5, lsl #2]
	mvn r1, #0
	cmn r0, #1
	moveq r0, r1
	str r0, [r6, r4, lsl #2]
	mov r0, r4
	b label126
label114:
	movw r8, #:lower16:left_child
	movt r8, #:upper16:left_child
	cmp r1, r0
	blt label115
	ldr r1, [r8, r5, lsl #2]
	cmn r1, #1
	bne label117
	ldr r0, [r6, r5, lsl #2]
	mvn r1, #0
	cmn r0, #1
	moveq r0, r1
	str r0, [r7, r4, lsl #2]
	mov r0, r4
	b label126
label89:
	ldr r0, [r6, r5, lsl #2]
	cmn r0, #1
	bne label188
label189:
	str r1, [r6, r4, lsl #2]
	mov r0, r4
	b label126
label117:
	ldr r0, [r6, r5, lsl #2]
	cmn r0, #1
	beq label341
	mov r1, r0
	b label118
label188:
	mov r1, r0
label90:
	ldr r3, [r7, r1, lsl #2]
	cmn r3, #1
	beq label92
	mov r1, r3
	b label90
label92:
	ldr r1, [r2, r1, lsl #2]
	str r1, [r2, r5, lsl #2]
	bl delete
	str r0, [r6, r5, lsl #2]
	mov r0, r4
	str r5, [r6, r4, lsl #2]
	b label126
label348:
	mov r1, r3
label118:
	ldr r3, [r8, r1, lsl #2]
	cmn r3, #1
	bne label348
	ldr r1, [r2, r1, lsl #2]
	str r1, [r2, r5, lsl #2]
	bl delete
	str r0, [r6, r5, lsl #2]
	mov r0, r4
	str r5, [r7, r4, lsl #2]
	b label126
label281:
	mov r1, r3
label106:
	ldr r3, [r7, r1, lsl #2]
	cmn r3, #1
	bne label281
	b label92
label110:
	add r7, r6, r5, lsl #2
	ldr r0, [r7, #0]
	bl delete
	str r0, [r7, #0]
	mov r0, r4
	str r5, [r6, r4, lsl #2]
	b label126
label81:
	mvn r0, #0
	str r0, [r6, r4, lsl #2]
	mov r0, r4
	b label126
label115:
	add r6, r8, r5, lsl #2
	ldr r0, [r6, #0]
	bl delete
	str r0, [r6, #0]
	mov r0, r4
	str r5, [r7, r4, lsl #2]
	b label126
label341:
	str r1, [r7, r4, lsl #2]
	mov r0, r4
	b label126
label111:
	ldr r0, [r6, r4, lsl #2]
	mvn r1, #0
	cmn r0, #1
	moveq r0, r1
	b label126
label125:
	mvn r0, #0
	str r0, [r7, r4, lsl #2]
	mov r0, r4
	b label126
.p2align 4
inorder:
	push { r4, lr }
	cmn r0, #1
	beq label463
	mov r4, r0
label461:
	movw r0, #:lower16:left_child
	movt r0, #:upper16:left_child
	ldr r0, [r0, r4, lsl #2]
	bl inorder
	movw r0, #:lower16:value
	movt r0, #:upper16:value
	ldr r0, [r0, r4, lsl #2]
	bl putint
	mov r0, #32
	bl putch
	movw r0, #:lower16:right_child
	movt r0, #:upper16:right_child
	ldr r4, [r0, r4, lsl #2]
	cmn r4, #1
	bne label461
label463:
	pop { r4, pc }
.p2align 4
.globl main
main:
	@ stack usage: CalleeArg[0] Local[4] RegSpill[0] CalleeSaved[0]
	push { r4, r5, r6, lr }
	sub sp, sp, #8
	mov r4, sp
	bl getint
	cmp r0, #0
	mov r5, r0
	beq label493
	bl getint
	cmp r5, #1
	movw r1, #:lower16:value
	movt r1, #:upper16:value
	str r0, [r1, #0]
	mvn r0, #0
	movw r1, #:lower16:left_child
	movt r1, #:upper16:left_child
	str r0, [r1, #0]
	movw r1, #:lower16:right_child
	movt r1, #:upper16:right_child
	str r0, [r1, #0]
	mov r0, #1
	str r0, [sp, #0]
	ble label497
	mov r6, #1
.p2align 4
label495:
	bl getint
	mov r2, r4
	mov r1, r0
	mov r0, #0
	bl insert
	add r6, r6, #1
	cmp r5, r6
	bgt label495
label497:
	mov r0, #0
	bl inorder
	mov r0, #10
	bl putch
	bl getint
	cmp r0, #0
	mov r4, r0
	ble label530
	mov r5, #0
	mov r6, r5
	b label498
.p2align 4
label538:
	mov r6, r0
.p2align 4
label498:
	bl getint
	mov r1, r0
	mov r0, r6
	bl delete
	add r5, r5, #1
	cmp r4, r5
	bgt label538
label501:
	bl inorder
	mov r0, #10
	bl putch
label493:
	mov r0, #0
	add sp, sp, #8
	pop { r4, r5, r6, pc }
label530:
	mov r0, #0
	b label501
