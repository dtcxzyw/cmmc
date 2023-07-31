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
insert:
.p2align 4
	push { r4, r5, r6, r7, lr }
	movw r5, #:lower16:right_child
	movw r3, #:lower16:left_child
	mov r4, r0
	sub sp, sp, #4
	movt r5, #:upper16:right_child
	movt r3, #:upper16:left_child
	cmn r0, #1
	movw r0, #:lower16:value
	movt r0, #:upper16:value
	bne label3
	ldr r4, [r2, #0]
	str r1, [r0, r4, lsl #2]
	mvn r0, #0
	str r0, [r3, r4, lsl #2]
	str r0, [r5, r4, lsl #2]
	add r0, r4, #1
	str r0, [r2, #0]
	mov r0, r4
label6:
	add sp, sp, #4
	pop { r4, r5, r6, r7, pc }
label3:
	ldr r6, [r0, r4, lsl #2]
	cmp r1, r6
	mov r6, r3
	movgt r6, r5
	ldr r7, [r6, r4, lsl #2]
	cmn r7, #1
	bne label5
	ldr r7, [r2, #0]
	str r1, [r0, r7, lsl #2]
	mvn r0, #0
	str r0, [r3, r7, lsl #2]
	str r0, [r5, r7, lsl #2]
	add r0, r7, #1
	str r0, [r2, #0]
	mov r0, r4
	str r7, [r6, r4, lsl #2]
	b label6
label5:
	ldr r0, [r0, r7, lsl #2]
	cmp r1, r0
	mov r0, r3
	movgt r0, r5
	add r5, r0, r7, lsl #2
	ldr r0, [r5, #0]
	bl insert
	str r0, [r5, #0]
	mov r0, r4
	str r7, [r6, r4, lsl #2]
	b label6
delete:
.p2align 4
	push { r4, r5, r6, r7, r8, lr }
	cmn r0, #1
	mov r4, r0
	beq label149
	movw r2, #:lower16:value
	movw r5, #:lower16:right_child
	movt r2, #:upper16:value
	movt r5, #:upper16:right_child
	ldr r0, [r2, r0, lsl #2]
	cmp r1, r0
	ble label100
	ldr r6, [r5, r4, lsl #2]
	cmn r6, #1
	bne label84
label83:
	mvn r0, #0
	str r0, [r5, r4, lsl #2]
	mov r0, r4
	b label79
label149:
	mvn r0, #0
label79:
	pop { r4, r5, r6, r7, r8, pc }
label100:
	movw r7, #:lower16:left_child
	cmp r1, r0
	movt r7, #:upper16:left_child
	bge label119
	ldr r6, [r7, r4, lsl #2]
	cmn r6, #1
	bne label103
label102:
	mvn r0, #0
	str r0, [r7, r4, lsl #2]
	mov r0, r4
	b label79
label84:
	ldr r0, [r2, r6, lsl #2]
	cmp r1, r0
	ble label87
label99:
	add r7, r5, r6, lsl #2
	ldr r0, [r7, #0]
	bl delete
	str r0, [r7, #0]
	mov r0, r6
	str r6, [r5, r4, lsl #2]
	mov r0, r4
	b label79
label119:
	ldr r0, [r7, r4, lsl #2]
	cmn r0, #1
	beq label143
	ldr r1, [r5, r4, lsl #2]
	cmn r1, #1
	beq label79
	ldr r6, [r5, r4, lsl #2]
	mov r0, r6
label122:
	cmn r0, #1
	beq label343
	ldr r1, [r7, r0, lsl #2]
	cmn r1, #1
	beq label125
	mov r0, r1
	b label122
label87:
	movw r3, #:lower16:left_child
	cmp r1, r0
	movt r3, #:upper16:left_child
	bge label89
label88:
	add r7, r3, r6, lsl #2
	ldr r0, [r7, #0]
	bl delete
	str r0, [r7, #0]
	mov r0, r6
	str r6, [r5, r4, lsl #2]
	mov r0, r4
	b label79
label103:
	ldr r0, [r2, r6, lsl #2]
	cmp r1, r0
	ble label105
	add r5, r5, r6, lsl #2
	ldr r0, [r5, #0]
	bl delete
	str r0, [r5, #0]
	mov r0, r6
	str r6, [r7, r4, lsl #2]
	mov r0, r4
	b label79
label105:
	movw r3, #:lower16:left_child
	cmp r1, r0
	movt r3, #:upper16:left_child
	blt label116
	ldr r0, [r3, r6, lsl #2]
	cmn r0, #1
	beq label114
	ldr r1, [r5, r6, lsl #2]
	cmn r1, #1
	beq label117
	ldr r1, [r5, r6, lsl #2]
	mov r0, r1
label109:
	cmn r0, #1
	beq label291
	ldr r8, [r3, r0, lsl #2]
	cmn r8, #1
	bne label298
	b label112
label143:
	ldr r0, [r5, r4, lsl #2]
	cmn r0, #1
	beq label149
	ldr r0, [r5, r4, lsl #2]
	b label79
label85:
	str r0, [r5, r4, lsl #2]
	mov r0, r4
	b label79
label89:
	ldr r0, [r3, r6, lsl #2]
	cmn r0, #1
	beq label90
	ldr r1, [r5, r6, lsl #2]
	cmn r1, #1
	beq label85
	ldr r1, [r5, r6, lsl #2]
	mov r0, r1
label94:
	cmn r0, #1
	bne label98
	mvn r0, #0
label96:
	ldr r3, [r2, r0, lsl #2]
	str r3, [r2, r6, lsl #2]
	mov r0, r1
	mov r1, r3
	bl delete
	str r0, [r5, r6, lsl #2]
	mov r0, r6
	str r6, [r5, r4, lsl #2]
	mov r0, r4
	b label79
label343:
	mvn r0, #0
label125:
	ldr r1, [r2, r0, lsl #2]
	cmn r6, #1
	str r1, [r2, r4, lsl #2]
	beq label83
	ldr r0, [r2, r6, lsl #2]
	cmp r1, r0
	bgt label99
	movw r3, #:lower16:left_child
	movt r3, #:upper16:left_child
	blt label88
	ldr r0, [r3, r6, lsl #2]
	cmn r0, #1
	bne label134
	ldr r0, [r5, r6, lsl #2]
	cmn r0, #1
	beq label83
	b label201
label116:
	add r5, r3, r6, lsl #2
	ldr r0, [r5, #0]
	bl delete
	str r0, [r5, #0]
	mov r0, r6
label117:
	str r0, [r7, r4, lsl #2]
	mov r0, r4
	b label79
label90:
	ldr r0, [r5, r6, lsl #2]
	cmn r0, #1
	beq label83
label201:
	ldr r0, [r5, r6, lsl #2]
	str r0, [r5, r4, lsl #2]
	mov r0, r4
	b label79
label98:
	ldr r7, [r3, r0, lsl #2]
	cmn r7, #1
	bne label234
	b label96
label114:
	ldr r0, [r5, r6, lsl #2]
	cmn r0, #1
	beq label102
	ldr r0, [r5, r6, lsl #2]
	str r0, [r7, r4, lsl #2]
	mov r0, r4
	b label79
label291:
	mvn r0, #0
label112:
	ldr r3, [r2, r0, lsl #2]
	str r3, [r2, r6, lsl #2]
	mov r0, r1
	mov r1, r3
	bl delete
	str r0, [r5, r6, lsl #2]
	mov r0, r6
	str r6, [r7, r4, lsl #2]
	mov r0, r4
	b label79
label134:
	ldr r1, [r5, r6, lsl #2]
	cmn r1, #1
	beq label85
	ldr r1, [r5, r6, lsl #2]
	mov r0, r1
label136:
	cmn r0, #1
	bne label140
	mvn r0, #0
	b label96
label140:
	ldr r7, [r3, r0, lsl #2]
	cmn r7, #1
	beq label96
	mov r0, r7
	b label136
label298:
	mov r0, r8
	b label109
label234:
	mov r0, r7
	b label94
inorder:
.p2align 4
	push { r4, lr }
	cmn r0, #1
	beq label549
	mov r4, r0
label547:
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
	bne label547
label549:
	pop { r4, pc }
.globl main
main:
.p2align 4
	push { r4, r5, r6, lr }
	sub sp, sp, #8
	mov r4, sp
	bl getint
	cmp r0, #0
	mov r5, r0
	beq label588
	bl getint
	movw r1, #:lower16:value
	cmp r5, #1
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
	ble label616
	mov r5, #0
	mov r6, r5
.p2align 4
label583:
	bl getint
	mov r1, r0
	mov r0, r6
	bl delete
	add r5, r5, #1
	cmp r4, r5
	ble label586
	mov r6, r0
	b label583
label586:
	bl inorder
	mov r0, #10
	bl putch
label588:
	mov r0, #0
	add sp, sp, #8
	pop { r4, r5, r6, pc }
label616:
	mov r0, #0
	b label586
