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
	movw r7, #:lower16:right_child
	movt r7, #:upper16:right_child
	movw r8, #:lower16:value
	movt r8, #:upper16:value
	movw r3, #:lower16:left_child
	movt r3, #:upper16:left_child
	mov r4, r0
	beq label4
	b label5
label2:
	pop { r4, r5, r6, r7, r8, pc }
label4:
	ldr r0, [r2, #0]
	str r1, [r8, r0, lsl #2]
	mvn r1, #0
	str r1, [r3, r0, lsl #2]
	str r1, [r7, r0, lsl #2]
	add r1, r0, #1
	str r1, [r2, #0]
	b label2
label5:
	ldr r0, [r8, r4, lsl #2]
	mov r5, r3
	cmp r1, r0
	movgt r5, r7
	ldr r6, [r5, r4, lsl #2]
	cmn r6, #1
	bne label7
	ldr r0, [r2, #0]
	str r1, [r8, r0, lsl #2]
	mvn r1, #0
	str r1, [r3, r0, lsl #2]
	str r1, [r7, r0, lsl #2]
	add r1, r0, #1
	str r1, [r2, #0]
	str r0, [r5, r4, lsl #2]
	mov r0, r4
	b label2
label7:
	ldr r0, [r8, r6, lsl #2]
	cmp r1, r0
	mov r0, r3
	movgt r0, r7
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
label125:
	ldr r0, [r5, r4, lsl #2]
	cmn r0, #1
	beq label149
	ldr r0, [r5, r4, lsl #2]
	b label79
label100:
	movw r7, #:lower16:left_child
	movt r7, #:upper16:left_child
	cmp r1, r0
	bge label101
	ldr r6, [r7, r4, lsl #2]
	cmn r6, #1
	bne label129
label128:
	mvn r0, #0
	str r0, [r7, r4, lsl #2]
	mov r0, r4
	b label79
label84:
	ldr r0, [r2, r6, lsl #2]
	cmp r1, r0
	ble label88
	add r7, r5, r6, lsl #2
	ldr r0, [r7, #0]
	bl delete
	str r0, [r7, #0]
	mov r0, r6
label86:
	str r0, [r5, r4, lsl #2]
	mov r0, r4
	b label79
label101:
	ldr r0, [r7, r4, lsl #2]
	cmn r0, #1
	beq label125
	ldr r1, [r5, r4, lsl #2]
	cmn r1, #1
	beq label79
	ldr r6, [r5, r4, lsl #2]
	mov r0, r6
label104:
	cmn r0, #1
	beq label265
	ldr r1, [r7, r0, lsl #2]
	cmn r1, #1
	bne label272
	b label107
label129:
	ldr r0, [r2, r6, lsl #2]
	cmp r1, r0
	bgt label130
	movw r8, #:lower16:left_child
	movt r8, #:upper16:left_child
	bge label135
	add r5, r8, r6, lsl #2
	ldr r0, [r5, #0]
	bl delete
	str r0, [r5, #0]
	mov r0, r4
	str r6, [r7, r4, lsl #2]
	b label79
label88:
	movw r7, #:lower16:left_child
	movt r7, #:upper16:left_child
	cmp r1, r0
	bge label90
label89:
	add r7, r7, r6, lsl #2
	ldr r0, [r7, #0]
	bl delete
	str r0, [r7, #0]
	mov r0, r4
	str r6, [r5, r4, lsl #2]
	b label79
label130:
	add r5, r5, r6, lsl #2
	ldr r0, [r5, #0]
	bl delete
	str r0, [r5, #0]
	mov r0, r6
label131:
	str r0, [r7, r4, lsl #2]
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
label265:
	mvn r0, #0
label107:
	ldr r1, [r2, r0, lsl #2]
	cmn r6, #1
	str r1, [r2, r4, lsl #2]
	beq label83
	ldr r0, [r2, r6, lsl #2]
	cmp r1, r0
	ble label111
	add r7, r5, r6, lsl #2
	ldr r0, [r7, #0]
	bl delete
	str r0, [r7, #0]
	mov r0, r4
	str r6, [r5, r4, lsl #2]
	b label79
label135:
	ldr r0, [r8, r6, lsl #2]
	cmn r0, #1
	bne label136
	ldr r0, [r5, r6, lsl #2]
	cmn r0, #1
	beq label128
	ldr r0, [r5, r6, lsl #2]
	str r0, [r7, r4, lsl #2]
	mov r0, r4
	b label79
label136:
	ldr r1, [r5, r6, lsl #2]
	cmn r1, #1
	beq label131
	ldr r1, [r5, r6, lsl #2]
	mov r0, r1
label138:
	cmn r0, #1
	bne label140
	mvn r0, #0
label141:
	ldr r3, [r2, r0, lsl #2]
	str r3, [r2, r6, lsl #2]
	mov r0, r1
	mov r1, r3
	bl delete
	str r0, [r5, r6, lsl #2]
	mov r0, r4
	str r6, [r7, r4, lsl #2]
	b label79
label111:
	movw r7, #:lower16:left_child
	movt r7, #:upper16:left_child
	cmp r1, r0
	blt label89
	ldr r0, [r7, r6, lsl #2]
	cmn r0, #1
	bne label116
	ldr r0, [r5, r6, lsl #2]
	cmn r0, #1
	beq label83
	b label205
label91:
	ldr r0, [r5, r6, lsl #2]
	cmn r0, #1
	beq label83
label205:
	ldr r0, [r5, r6, lsl #2]
	str r0, [r5, r4, lsl #2]
	mov r0, r4
	b label79
label99:
	ldr r3, [r7, r0, lsl #2]
	cmn r3, #1
	bne label238
	b label97
label140:
	ldr r3, [r8, r0, lsl #2]
	cmn r3, #1
	beq label141
	mov r0, r3
	b label138
label116:
	ldr r1, [r5, r6, lsl #2]
	cmn r1, #1
	beq label86
	ldr r1, [r5, r6, lsl #2]
	mov r0, r1
label118:
	cmn r0, #1
	bne label120
	mvn r0, #0
label121:
	ldr r3, [r2, r0, lsl #2]
	str r3, [r2, r6, lsl #2]
	mov r0, r1
	mov r1, r3
	bl delete
	str r0, [r5, r6, lsl #2]
	mov r0, r6
	b label86
label120:
	ldr r3, [r7, r0, lsl #2]
	cmn r3, #1
	beq label121
	mov r0, r3
	b label118
label238:
	mov r0, r3
	b label95
label272:
	mov r0, r1
	b label104
.p2align 4
inorder:
	push { r4, lr }
	cmn r0, #1
	beq label552
	mov r4, r0
label550:
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
	bne label550
label552:
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
	beq label582
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
	ble label586
	mov r6, #1
.p2align 4
label584:
	bl getint
	mov r2, r4
	mov r1, r0
	mov r0, #0
	bl insert
	add r6, r6, #1
	cmp r5, r6
	bgt label584
label586:
	mov r0, #0
	bl inorder
	mov r0, #10
	bl putch
	bl getint
	cmp r0, #0
	mov r4, r0
	ble label619
	mov r5, #0
	mov r6, r5
.p2align 4
label587:
	bl getint
	mov r1, r0
	mov r0, r6
	bl delete
	add r5, r5, #1
	cmp r4, r5
	ble label590
	mov r6, r0
	b label587
label582:
	mov r0, #0
	add sp, sp, #8
	pop { r4, r5, r6, pc }
label590:
	bl inorder
	mov r0, #10
	bl putch
	b label582
label619:
	mov r0, #0
	b label590
