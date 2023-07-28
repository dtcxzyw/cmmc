.arch armv7ve
.data
.bss
.align 4
value:
	.zero	40000
.align 4
left_child:
	.zero	40000
.align 4
right_child:
	.zero	40000
.text
.syntax unified
.arm
.fpu vfpv4
insert:
.p2align 4
	push { r4, r5, r6, r7, lr }
	cmn r0, #1
	mov r4, r0
	sub sp, sp, #4
	bne label5
	ldr r0, [r2, #0]
	movw r3, #:lower16:value
	movt r3, #:upper16:value
	str r1, [r3, r0, lsl #2]
	mvn r1, #0
	movw r3, #:lower16:left_child
	movt r3, #:upper16:left_child
	str r1, [r3, r0, lsl #2]
	movw r3, #:lower16:right_child
	movt r3, #:upper16:right_child
	str r1, [r3, r0, lsl #2]
	add r1, r0, #1
	str r1, [r2, #0]
label3:
	add sp, sp, #4
	pop { r4, r5, r6, r7, pc }
label5:
	movw r0, #:lower16:value
	movw r3, #:lower16:left_child
	movt r0, #:upper16:value
	movt r3, #:upper16:left_child
	ldr r0, [r0, r4, lsl #2]
	mov r5, r3
	cmp r1, r0
	movw r0, #:lower16:right_child
	movt r0, #:upper16:right_child
	movgt r5, r0
	ldr r6, [r5, r4, lsl #2]
	cmn r6, #1
	bne label7
	ldr r0, [r2, #0]
	movw r3, #:lower16:value
	movt r3, #:upper16:value
	str r1, [r3, r0, lsl #2]
	mvn r1, #0
	movw r3, #:lower16:left_child
	movt r3, #:upper16:left_child
	str r1, [r3, r0, lsl #2]
	movw r3, #:lower16:right_child
	movt r3, #:upper16:right_child
	str r1, [r3, r0, lsl #2]
	add r1, r0, #1
	str r1, [r2, #0]
	str r0, [r5, r4, lsl #2]
	mov r0, r4
	b label3
label7:
	movw r0, #:lower16:value
	movw r3, #:lower16:left_child
	movt r0, #:upper16:value
	movt r3, #:upper16:left_child
	ldr r0, [r0, r6, lsl #2]
	mov r7, r3
	cmp r1, r0
	movw r0, #:lower16:right_child
	movt r0, #:upper16:right_child
	movgt r7, r0
	ldr r0, [r7, r6, lsl #2]
	bl insert
	str r0, [r7, r6, lsl #2]
	mov r0, r4
	str r6, [r5, r4, lsl #2]
	b label3
delete:
.p2align 4
	push { r4, r5, lr }
	cmn r0, #1
	mov r4, r0
	sub sp, sp, #4
	bne label95
label118:
	mvn r0, #0
	b label112
label95:
	movw r2, #:lower16:value
	movt r2, #:upper16:value
	ldr r0, [r2, r4, lsl #2]
	cmp r1, r0
	ble label97
	movw r5, #:lower16:right_child
	movt r5, #:upper16:right_child
	ldr r0, [r5, r4, lsl #2]
	bl delete
	str r0, [r5, r4, lsl #2]
	mov r0, r4
	b label112
label97:
	cmp r1, r0
	blt label111
	movw r0, #:lower16:left_child
	movt r0, #:upper16:left_child
	ldr r0, [r0, r4, lsl #2]
	cmn r0, #1
	beq label110
	b label99
label112:
	add sp, sp, #4
	pop { r4, r5, pc }
label99:
	movw r0, #:lower16:left_child
	movt r0, #:upper16:left_child
	ldr r0, [r0, r4, lsl #2]
	cmn r0, #1
	beq label100
	movw r0, #:lower16:right_child
	movt r0, #:upper16:right_child
	ldr r0, [r0, r4, lsl #2]
	cmn r0, #1
	beq label100
	b label182
label110:
	movw r0, #:lower16:right_child
	movt r0, #:upper16:right_child
	ldr r0, [r0, r4, lsl #2]
	cmn r0, #1
	beq label118
	b label99
label111:
	movw r5, #:lower16:left_child
	movt r5, #:upper16:left_child
	ldr r0, [r5, r4, lsl #2]
	bl delete
	str r0, [r5, r4, lsl #2]
	mov r0, r4
	b label112
label182:
	movw r5, #:lower16:right_child
	movt r5, #:upper16:right_child
	ldr r1, [r5, r4, lsl #2]
	mov r0, r1
label105:
	cmn r0, #1
	bne label107
	mvn r0, #0
	b label108
label107:
	movw r3, #:lower16:left_child
	movt r3, #:upper16:left_child
	ldr r3, [r3, r0, lsl #2]
	cmn r3, #1
	beq label108
	mov r0, r3
	b label105
label108:
	ldr r3, [r2, r0, lsl #2]
	str r3, [r2, r4, lsl #2]
	mov r0, r1
	mov r1, r3
	bl delete
	str r0, [r5, r4, lsl #2]
	mov r0, r4
	b label112
label100:
	movw r0, #:lower16:left_child
	movt r0, #:upper16:left_child
	ldr r0, [r0, r4, lsl #2]
	cmn r0, #1
	bne label163
	movw r0, #:lower16:right_child
	movt r0, #:upper16:right_child
	ldr r0, [r0, r4, lsl #2]
	b label112
label163:
	movw r0, #:lower16:left_child
	movt r0, #:upper16:left_child
	ldr r0, [r0, r4, lsl #2]
	b label112
inorder:
.p2align 4
	push { r4, lr }
	cmn r0, #1
	beq label260
	mov r4, r0
label258:
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
	bne label258
label260:
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
	bne label290
label289:
	mov r0, #0
	add sp, sp, #8
	pop { r4, r5, r6, pc }
label290:
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
	ble label293
	mov r6, #1
	b label291
label293:
	mov r0, #0
	bl inorder
	mov r0, #10
	bl putch
	bl getint
	cmp r0, #0
	mov r4, r0
	bgt label327
	mov r0, #0
	b label297
label327:
	mov r5, #0
	mov r6, r5
.p2align 4
label294:
	bl getint
	mov r1, r0
	mov r0, r6
	bl delete
	add r5, r5, #1
	cmp r4, r5
	ble label297
	mov r6, r0
	b label294
label297:
	bl inorder
	mov r0, #10
	bl putch
	b label289
.p2align 4
label291:
	bl getint
	mov r2, r4
	mov r1, r0
	mov r0, #0
	bl insert
	add r6, r6, #1
	cmp r5, r6
	bgt label291
	b label293
