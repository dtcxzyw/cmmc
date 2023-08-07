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
	ble label100
	ldr r6, [r5, r4, lsl #2]
	cmn r6, #1
	beq label83
	ldr r0, [r2, r6, lsl #2]
	cmp r1, r0
	bgt label85
	movw r7, #:lower16:left_child
	movt r7, #:upper16:left_child
	bge label90
label89:
	add r7, r7, r6, lsl #2
	ldr r0, [r7, #0]
	bl delete
	str r0, [r7, #0]
	mov r0, r4
	str r6, [r5, r4, lsl #2]
	b label79
label149:
	mvn r0, #0
label79:
	pop { r4, r5, r6, r7, r8, pc }
label120:
	ldr r0, [r5, r4, lsl #2]
	cmn r0, #1
	beq label149
	ldr r0, [r5, r4, lsl #2]
	b label79
label100:
	movw r7, #:lower16:left_child
	movt r7, #:upper16:left_child
	cmp r1, r0
	bge label119
	ldr r6, [r7, r4, lsl #2]
	cmn r6, #1
	bne label103
label102:
	mvn r0, #0
	str r0, [r7, r4, lsl #2]
	mov r0, r4
	b label79
label119:
	ldr r0, [r7, r4, lsl #2]
	cmn r0, #1
	beq label120
	ldr r1, [r5, r4, lsl #2]
	cmn r1, #1
	beq label79
	ldr r6, [r5, r4, lsl #2]
	mov r0, r6
label124:
	cmn r0, #1
	beq label353
	ldr r1, [r7, r0, lsl #2]
	cmn r1, #1
	bne label438
	b label126
label103:
	ldr r0, [r2, r6, lsl #2]
	cmp r1, r0
	bgt label118
	movw r8, #:lower16:left_child
	movt r8, #:upper16:left_child
	bge label108
	add r5, r8, r6, lsl #2
	ldr r0, [r5, #0]
	bl delete
	str r0, [r5, #0]
	mov r0, r4
	str r6, [r7, r4, lsl #2]
	b label79
label85:
	add r7, r5, r6, lsl #2
	ldr r0, [r7, #0]
	bl delete
	str r0, [r7, #0]
	mov r0, r6
label86:
	str r0, [r5, r4, lsl #2]
	mov r0, r4
	b label79
label90:
	ldr r0, [r7, r6, lsl #2]
	cmn r0, #1
	beq label91
	ldr r1, [r5, r6, lsl #2]
	cmn r1, #1
	beq label86
	ldr r1, [r5, r6, lsl #2]
	mov r0, r1
label95:
	cmn r0, #1
	bne label99
	mvn r0, #0
label97:
	ldr r3, [r2, r0, lsl #2]
	str r3, [r2, r6, lsl #2]
	mov r0, r1
	mov r1, r3
	bl delete
	str r0, [r5, r6, lsl #2]
	mov r0, r4
	str r6, [r5, r4, lsl #2]
	b label79
label83:
	mvn r0, #0
	str r0, [r5, r4, lsl #2]
	mov r0, r4
	b label79
label353:
	mvn r0, #0
label126:
	ldr r1, [r2, r0, lsl #2]
	cmn r6, #1
	str r1, [r2, r4, lsl #2]
	beq label83
	ldr r0, [r2, r6, lsl #2]
	cmp r1, r0
	ble label129
	add r7, r5, r6, lsl #2
	ldr r0, [r7, #0]
	bl delete
	str r0, [r7, #0]
	mov r0, r6
	b label86
label108:
	ldr r0, [r8, r6, lsl #2]
	cmn r0, #1
	bne label111
	ldr r0, [r5, r6, lsl #2]
	cmn r0, #1
	beq label102
	ldr r0, [r5, r6, lsl #2]
	str r0, [r7, r4, lsl #2]
	mov r0, r4
	b label79
label91:
	ldr r0, [r5, r6, lsl #2]
	cmn r0, #1
	beq label83
label205:
	ldr r0, [r5, r6, lsl #2]
	str r0, [r5, r4, lsl #2]
	mov r0, r4
	b label79
label104:
	str r0, [r7, r4, lsl #2]
	mov r0, r4
	b label79
label111:
	ldr r1, [r5, r6, lsl #2]
	cmn r1, #1
	beq label104
	ldr r1, [r5, r6, lsl #2]
	mov r0, r1
label113:
	cmn r0, #1
	bne label117
	mvn r0, #0
label115:
	ldr r3, [r2, r0, lsl #2]
	str r3, [r2, r6, lsl #2]
	mov r0, r1
	mov r1, r3
	bl delete
	str r0, [r5, r6, lsl #2]
	mov r0, r4
	str r6, [r7, r4, lsl #2]
	b label79
label129:
	movw r7, #:lower16:left_child
	movt r7, #:upper16:left_child
	cmp r1, r0
	blt label89
	ldr r0, [r7, r6, lsl #2]
	cmn r0, #1
	bne label132
	ldr r0, [r5, r6, lsl #2]
	cmn r0, #1
	beq label83
	b label205
label99:
	ldr r3, [r7, r0, lsl #2]
	cmn r3, #1
	beq label97
	mov r0, r3
	b label95
label117:
	ldr r3, [r8, r0, lsl #2]
	cmn r3, #1
	beq label115
	mov r0, r3
	b label113
label132:
	ldr r1, [r5, r6, lsl #2]
	cmn r1, #1
	beq label86
	ldr r1, [r5, r6, lsl #2]
	mov r0, r1
label134:
	cmn r0, #1
	bne label138
	mvn r0, #0
	b label97
label138:
	ldr r3, [r7, r0, lsl #2]
	cmn r3, #1
	beq label97
	mov r0, r3
	b label134
label438:
	mov r0, r1
	b label124
label118:
	add r5, r5, r6, lsl #2
	ldr r0, [r5, #0]
	bl delete
	str r0, [r5, #0]
	mov r0, r4
	str r6, [r7, r4, lsl #2]
	b label79
.p2align 4
inorder:
	push { r4, lr }
	cmn r0, #1
	beq label551
	mov r4, r0
label549:
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
	bne label549
label551:
	pop { r4, pc }
.p2align 4
.globl main
main:
	push { r4, r5, r6, lr }
	sub sp, sp, #8
	mov r4, sp
	bl getint
	cmp r0, #0
	mov r5, r0
	beq label581
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
	ble label585
	mov r6, #1
.p2align 4
label583:
	bl getint
	mov r2, r4
	mov r1, r0
	mov r0, #0
	bl insert
	add r6, r6, #1
	cmp r5, r6
	bgt label583
label585:
	mov r0, #0
	bl inorder
	mov r0, #10
	bl putch
	bl getint
	cmp r0, #0
	mov r4, r0
	ble label618
	mov r5, #0
	mov r6, r5
.p2align 4
label586:
	bl getint
	mov r1, r0
	mov r0, r6
	bl delete
	add r5, r5, #1
	cmp r4, r5
	ble label589
	mov r6, r0
	b label586
label581:
	mov r0, #0
	add sp, sp, #8
	pop { r4, r5, r6, pc }
label589:
	bl inorder
	mov r0, #10
	bl putch
	b label581
label618:
	mov r0, #0
	b label589
