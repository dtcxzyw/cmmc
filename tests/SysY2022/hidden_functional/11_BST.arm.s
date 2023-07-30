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
	b label6
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
label6:
	add sp, sp, #4
	pop { r4, r5, r6, r7, pc }
delete:
.p2align 4
	push { r4, r5, r6, r7, r8, lr }
	cmn r0, #1
	mov r4, r0
	bne label79
label147:
	mvn r0, #0
label77:
	pop { r4, r5, r6, r7, r8, pc }
label79:
	movw r2, #:lower16:value
	movw r5, #:lower16:right_child
	movt r2, #:upper16:value
	movt r5, #:upper16:right_child
	ldr r0, [r2, r4, lsl #2]
	cmp r1, r0
	bgt label80
	movw r7, #:lower16:left_child
	movt r7, #:upper16:left_child
	bge label117
	ldr r6, [r7, r4, lsl #2]
	cmn r6, #1
	bne label101
label100:
	mvn r0, #0
	str r0, [r7, r4, lsl #2]
	mov r0, r4
	b label77
label101:
	ldr r0, [r2, r6, lsl #2]
	cmp r1, r0
	bgt label102
	movw r3, #:lower16:left_child
	movt r3, #:upper16:left_child
	blt label114
	ldr r0, [r3, r6, lsl #2]
	cmn r0, #1
	beq label112
	ldr r1, [r5, r6, lsl #2]
	cmn r1, #1
	beq label282
	ldr r1, [r5, r6, lsl #2]
	mov r0, r1
label107:
	cmn r0, #1
	bne label109
	mvn r0, #0
	b label110
label109:
	ldr r8, [r3, r0, lsl #2]
	cmn r8, #1
	beq label110
	mov r0, r8
	b label107
label110:
	ldr r3, [r2, r0, lsl #2]
	str r3, [r2, r6, lsl #2]
	mov r0, r1
	mov r1, r3
	bl delete
	str r0, [r5, r6, lsl #2]
	mov r0, r6
	str r6, [r7, r4, lsl #2]
	mov r0, r4
	b label77
label117:
	ldr r0, [r7, r4, lsl #2]
	cmn r0, #1
	beq label141
	ldr r1, [r5, r4, lsl #2]
	cmn r1, #1
	beq label77
	b label333
label141:
	ldr r0, [r5, r4, lsl #2]
	cmn r0, #1
	beq label147
	ldr r0, [r5, r4, lsl #2]
	b label77
label199:
	ldr r0, [r5, r6, lsl #2]
	str r0, [r5, r4, lsl #2]
	mov r0, r4
	b label77
label333:
	ldr r6, [r5, r4, lsl #2]
	mov r0, r6
label120:
	cmn r0, #1
	bne label122
	mvn r0, #0
	b label123
label122:
	ldr r1, [r7, r0, lsl #2]
	cmn r1, #1
	beq label123
	mov r0, r1
	b label120
label123:
	ldr r1, [r2, r0, lsl #2]
	cmn r6, #1
	str r1, [r2, r4, lsl #2]
	beq label81
	ldr r0, [r2, r6, lsl #2]
	cmp r1, r0
	bgt label97
	movw r3, #:lower16:left_child
	movt r3, #:upper16:left_child
	blt label86
	ldr r0, [r3, r6, lsl #2]
	cmn r0, #1
	bne label132
	ldr r0, [r5, r6, lsl #2]
	cmn r0, #1
	beq label81
	b label199
label132:
	ldr r1, [r5, r6, lsl #2]
	cmn r1, #1
	beq label83
	b label401
label80:
	ldr r6, [r5, r4, lsl #2]
	cmn r6, #1
	beq label81
	ldr r0, [r2, r6, lsl #2]
	cmp r1, r0
	bgt label97
	movw r3, #:lower16:left_child
	movt r3, #:upper16:left_child
	bge label87
label86:
	add r7, r3, r6, lsl #2
	ldr r0, [r7, #0]
	bl delete
	str r0, [r7, #0]
	mov r0, r6
	str r6, [r5, r4, lsl #2]
	mov r0, r4
	b label77
label87:
	ldr r0, [r3, r6, lsl #2]
	cmn r0, #1
	bne label90
	ldr r0, [r5, r6, lsl #2]
	cmn r0, #1
	beq label81
	b label199
label90:
	ldr r1, [r5, r6, lsl #2]
	cmn r1, #1
	beq label83
	ldr r1, [r5, r6, lsl #2]
	mov r0, r1
label92:
	cmn r0, #1
	bne label96
	mvn r0, #0
label94:
	ldr r3, [r2, r0, lsl #2]
	str r3, [r2, r6, lsl #2]
	mov r0, r1
	mov r1, r3
	bl delete
	str r0, [r5, r6, lsl #2]
	mov r0, r6
	str r6, [r5, r4, lsl #2]
	mov r0, r4
	b label77
label96:
	ldr r7, [r3, r0, lsl #2]
	cmn r7, #1
	beq label94
	mov r0, r7
	b label92
label81:
	mvn r0, #0
	str r0, [r5, r4, lsl #2]
	mov r0, r4
	b label77
label282:
	str r0, [r7, r4, lsl #2]
	mov r0, r4
	b label77
label97:
	add r7, r5, r6, lsl #2
	ldr r0, [r7, #0]
	bl delete
	str r0, [r7, #0]
	mov r0, r6
	str r6, [r5, r4, lsl #2]
	mov r0, r4
	b label77
label83:
	str r0, [r5, r4, lsl #2]
	mov r0, r4
	b label77
label401:
	ldr r1, [r5, r6, lsl #2]
	mov r0, r1
label134:
	cmn r0, #1
	bne label138
	mvn r0, #0
	b label94
label138:
	ldr r7, [r3, r0, lsl #2]
	cmn r7, #1
	beq label94
	mov r0, r7
	b label134
label102:
	add r5, r5, r6, lsl #2
	ldr r0, [r5, #0]
	bl delete
	str r0, [r5, #0]
	mov r0, r6
	str r6, [r7, r4, lsl #2]
	mov r0, r4
	b label77
label114:
	add r5, r3, r6, lsl #2
	ldr r0, [r5, #0]
	bl delete
	str r0, [r5, #0]
	mov r0, r6
	b label282
label112:
	ldr r0, [r5, r6, lsl #2]
	cmn r0, #1
	beq label100
	ldr r0, [r5, r6, lsl #2]
	str r0, [r7, r4, lsl #2]
	mov r0, r4
	b label77
inorder:
.p2align 4
	push { r4, lr }
	cmn r0, #1
	beq label538
	mov r4, r0
label536:
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
	bne label536
label538:
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
	beq label576
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
	ble label570
	mov r6, #1
	b label568
label570:
	mov r0, #0
	bl inorder
	mov r0, #10
	bl putch
	bl getint
	cmp r0, #0
	mov r4, r0
	bgt label605
	mov r0, #0
	b label574
label605:
	mov r5, #0
	mov r6, r5
.p2align 4
label571:
	bl getint
	mov r1, r0
	mov r0, r6
	bl delete
	add r5, r5, #1
	cmp r4, r5
	ble label574
	mov r6, r0
	b label571
label574:
	bl inorder
	mov r0, #10
	bl putch
label576:
	mov r0, #0
	add sp, sp, #8
	pop { r4, r5, r6, pc }
.p2align 4
label568:
	bl getint
	mov r2, r4
	mov r1, r0
	mov r0, #0
	bl insert
	add r6, r6, #1
	cmp r5, r6
	bgt label568
	b label570
