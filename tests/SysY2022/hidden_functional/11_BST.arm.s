.arch armv7ve
.data
.bss
.align 8
value:
	.zero	40000
.align 8
left_child:
	.zero	40000
.align 8
right_child:
	.zero	40000
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
insert:
	push { r4, r5, r6, r7, r8, lr }
	cmn r0, #1
	movw r3, #:lower16:right_child
	movt r3, #:upper16:right_child
	movw r8, #:lower16:value
	movt r8, #:upper16:value
	movw r7, #:lower16:left_child
	movt r7, #:upper16:left_child
	mov r4, r0
	bne label5
	ldr r0, [r2, #0]
	str r1, [r8, r0, lsl #2]
	mvn r1, #0
	str r1, [r7, r0, lsl #2]
	str r1, [r3, r0, lsl #2]
	add r1, r0, #1
	str r1, [r2, #0]
label3:
	pop { r4, r5, r6, r7, r8, pc }
label5:
	ldr r0, [r8, r4, lsl #2]
	mov r5, r7
	cmp r1, r0
	movgt r5, r3
	ldr r6, [r5, r4, lsl #2]
	cmn r6, #1
	bne label7
	ldr r0, [r2, #0]
	str r1, [r8, r0, lsl #2]
	mvn r1, #0
	str r1, [r7, r0, lsl #2]
	str r1, [r3, r0, lsl #2]
	add r1, r0, #1
	str r1, [r2, #0]
	str r0, [r5, r4, lsl #2]
	mov r0, r4
	b label3
label7:
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
	b label3
.p2align 4
delete:
	push { r4, r5, r6, r7, r8, lr }
	cmn r0, #1
	mov r4, r0
	beq label149
	movw r2, #:lower16:value
	movt r2, #:upper16:value
	movw r5, #:lower16:right_child
	movt r5, #:upper16:right_child
	ldr r0, [r2, r0, lsl #2]
	cmp r1, r0
	ble label82
	ldr r6, [r5, r4, lsl #2]
	cmn r6, #1
	bne label129
label262:
	mvn r0, #0
	str r0, [r5, r4, lsl #2]
	mov r0, r4
	b label79
label149:
	mvn r0, #0
label79:
	pop { r4, r5, r6, r7, r8, pc }
label82:
	movw r7, #:lower16:left_child
	movt r7, #:upper16:left_child
	cmp r1, r0
	blt label109
	ldr r0, [r7, r4, lsl #2]
	cmn r0, #1
	beq label107
	ldr r1, [r5, r4, lsl #2]
	cmn r1, #1
	beq label79
	ldr r6, [r5, r4, lsl #2]
	mov r0, r6
label86:
	cmn r0, #1
	beq label187
	ldr r1, [r7, r0, lsl #2]
	cmn r1, #1
	bne label272
	b label88
label129:
	ldr r0, [r2, r6, lsl #2]
	cmp r1, r0
	bgt label130
	movw r7, #:lower16:left_child
	movt r7, #:upper16:left_child
	bge label135
label95:
	add r7, r7, r6, lsl #2
	ldr r0, [r7, #0]
	bl delete
	str r0, [r7, #0]
	mov r0, r4
	str r6, [r5, r4, lsl #2]
	b label79
label130:
	add r7, r5, r6, lsl #2
	ldr r0, [r7, #0]
	bl delete
	str r0, [r7, #0]
	mov r0, r6
label90:
	str r0, [r5, r4, lsl #2]
	mov r0, r4
	b label79
label109:
	ldr r6, [r7, r4, lsl #2]
	cmn r6, #1
	bne label111
label110:
	mvn r0, #0
	str r0, [r7, r4, lsl #2]
	mov r0, r4
	b label79
label111:
	ldr r0, [r2, r6, lsl #2]
	cmp r1, r0
	ble label115
	add r5, r5, r6, lsl #2
	ldr r0, [r5, #0]
	bl delete
	str r0, [r5, #0]
	mov r0, r6
label113:
	str r0, [r7, r4, lsl #2]
	mov r0, r4
	b label79
label115:
	movw r8, #:lower16:left_child
	movt r8, #:upper16:left_child
	cmp r1, r0
	bge label116
	add r5, r8, r6, lsl #2
	ldr r0, [r5, #0]
	bl delete
	str r0, [r5, #0]
	mov r0, r4
	str r6, [r7, r4, lsl #2]
	b label79
label135:
	ldr r0, [r7, r6, lsl #2]
	cmn r0, #1
	beq label136
	ldr r1, [r5, r6, lsl #2]
	cmn r1, #1
	beq label90
	ldr r1, [r5, r6, lsl #2]
	mov r0, r1
label140:
	cmn r0, #1
	bne label144
	mvn r0, #0
label101:
	ldr r3, [r2, r0, lsl #2]
	str r3, [r2, r6, lsl #2]
	mov r0, r1
	mov r1, r3
	bl delete
	str r0, [r5, r6, lsl #2]
	mov r0, r4
	str r6, [r5, r4, lsl #2]
	b label79
label107:
	ldr r0, [r5, r4, lsl #2]
	cmn r0, #1
	beq label149
	ldr r0, [r5, r4, lsl #2]
	b label79
label187:
	mvn r0, #0
label88:
	ldr r1, [r2, r0, lsl #2]
	cmn r6, #1
	str r1, [r2, r4, lsl #2]
	beq label196
	ldr r0, [r2, r6, lsl #2]
	cmp r1, r0
	ble label94
	add r7, r5, r6, lsl #2
	ldr r0, [r7, #0]
	bl delete
	str r0, [r7, #0]
	mov r0, r4
	str r6, [r5, r4, lsl #2]
	b label79
label116:
	ldr r0, [r8, r6, lsl #2]
	cmn r0, #1
	beq label124
	ldr r1, [r5, r6, lsl #2]
	cmn r1, #1
	beq label113
	ldr r1, [r5, r6, lsl #2]
	mov r0, r1
label119:
	cmn r0, #1
	beq label331
	ldr r3, [r8, r0, lsl #2]
	cmn r3, #1
	bne label346
	b label121
label136:
	ldr r0, [r5, r6, lsl #2]
	cmn r0, #1
	beq label262
label261:
	ldr r0, [r5, r6, lsl #2]
	str r0, [r5, r4, lsl #2]
	mov r0, r4
	b label79
label94:
	movw r7, #:lower16:left_child
	movt r7, #:upper16:left_child
	cmp r1, r0
	blt label95
	ldr r0, [r7, r6, lsl #2]
	cmn r0, #1
	bne label97
	ldr r0, [r5, r6, lsl #2]
	cmn r0, #1
	beq label262
	b label261
label144:
	ldr r3, [r7, r0, lsl #2]
	cmn r3, #1
	beq label101
	mov r0, r3
	b label140
label124:
	ldr r0, [r5, r6, lsl #2]
	cmn r0, #1
	beq label110
	ldr r0, [r5, r6, lsl #2]
	str r0, [r7, r4, lsl #2]
	mov r0, r4
	b label79
label331:
	mvn r0, #0
label121:
	ldr r3, [r2, r0, lsl #2]
	str r3, [r2, r6, lsl #2]
	mov r0, r1
	mov r1, r3
	bl delete
	str r0, [r5, r6, lsl #2]
	mov r0, r4
	str r6, [r7, r4, lsl #2]
	b label79
label97:
	ldr r1, [r5, r6, lsl #2]
	cmn r1, #1
	beq label90
	ldr r1, [r5, r6, lsl #2]
	mov r0, r1
label99:
	cmn r0, #1
	beq label240
	ldr r3, [r7, r0, lsl #2]
	cmn r3, #1
	bne label255
	b label101
label346:
	mov r0, r3
	b label119
label255:
	mov r0, r3
	b label99
label240:
	mvn r0, #0
	b label101
label196:
	mvn r0, #0
	b label90
label272:
	mov r0, r1
	b label86
.p2align 4
inorder:
	push { r4, lr }
	cmn r0, #1
	beq label548
	mov r4, r0
label546:
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
	bne label546
label548:
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
	beq label578
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
	ble label582
	mov r6, #1
.p2align 4
label580:
	bl getint
	mov r2, r4
	mov r1, r0
	mov r0, #0
	bl insert
	add r6, r6, #1
	cmp r5, r6
	bgt label580
label582:
	mov r0, #0
	bl inorder
	mov r0, #10
	bl putch
	bl getint
	cmp r0, #0
	mov r4, r0
	ble label615
	mov r5, #0
	mov r6, r5
	b label583
.p2align 4
label623:
	mov r6, r0
.p2align 4
label583:
	bl getint
	mov r1, r0
	mov r0, r6
	bl delete
	add r5, r5, #1
	cmp r4, r5
	bgt label623
label586:
	bl inorder
	mov r0, #10
	bl putch
label578:
	mov r0, #0
	add sp, sp, #8
	pop { r4, r5, r6, pc }
label615:
	mov r0, #0
	b label586
