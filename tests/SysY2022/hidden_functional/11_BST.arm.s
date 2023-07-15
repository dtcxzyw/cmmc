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
	push { r4, r5, r6, r7, lr }
	cmn r0, #1
	mov r4, r0
	sub sp, sp, #4
	bne label4
	b label7
label2:
	add sp, sp, #4
	pop { r4, r5, r6, r7, pc }
label4:
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
	bne label6
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
	b label2
label6:
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
	b label2
label7:
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
	b label2
delete:
	push { r4, r5, lr }
	cmn r0, #1
	mov r4, r0
	sub sp, sp, #4
	bne label87
	b label107
label87:
	movw r0, #:lower16:value
	movt r0, #:upper16:value
	mov r2, r0
	ldr r0, [r0, r4, lsl #2]
	cmp r1, r0
	ble label89
	b label88
label107:
	mvn r0, #0
label85:
	add sp, sp, #4
	pop { r4, r5, pc }
label88:
	movw r5, #:lower16:right_child
	movt r5, #:upper16:right_child
	ldr r0, [r5, r4, lsl #2]
	bl delete
	str r0, [r5, r4, lsl #2]
	mov r0, r4
	b label85
label89:
	cmp r1, r0
	bge label90
	movw r5, #:lower16:left_child
	movt r5, #:upper16:left_child
	ldr r0, [r5, r4, lsl #2]
	bl delete
	str r0, [r5, r4, lsl #2]
	mov r0, r4
	b label85
label90:
	movw r0, #:lower16:left_child
	movt r0, #:upper16:left_child
	ldr r0, [r0, r4, lsl #2]
	cmn r0, #1
	bne label91
	movw r0, #:lower16:right_child
	movt r0, #:upper16:right_child
	ldr r0, [r0, r4, lsl #2]
	cmn r0, #1
	bne label91
	b label107
label91:
	movw r0, #:lower16:left_child
	movt r0, #:upper16:left_child
	ldr r0, [r0, r4, lsl #2]
	cmn r0, #1
	bne label95
	movw r0, #:lower16:left_child
	movt r0, #:upper16:left_child
	ldr r0, [r0, r4, lsl #2]
	cmn r0, #1
	bne label154
	b label221
label95:
	movw r0, #:lower16:right_child
	movt r0, #:upper16:right_child
	ldr r0, [r0, r4, lsl #2]
	cmn r0, #1
	bne label96
	movw r0, #:lower16:left_child
	movt r0, #:upper16:left_child
	ldr r0, [r0, r4, lsl #2]
	cmn r0, #1
	bne label154
	b label221
label96:
	movw r0, #:lower16:right_child
	movt r0, #:upper16:right_child
	ldr r1, [r0, r4, lsl #2]
	mov r5, r0
	mov r0, r1
	cmn r1, #1
	bne label99
label181:
	mvn r0, #0
	b label100
label99:
	movw r3, #:lower16:left_child
	movt r3, #:upper16:left_child
	ldr r3, [r3, r0, lsl #2]
	cmn r3, #1
	beq label100
	mov r0, r3
	bne label99
	b label181
label221:
	movw r0, #:lower16:right_child
	movt r0, #:upper16:right_child
	ldr r0, [r0, r4, lsl #2]
	b label85
label154:
	movw r0, #:lower16:left_child
	movt r0, #:upper16:left_child
	ldr r0, [r0, r4, lsl #2]
	b label85
label100:
	ldr r3, [r2, r0, lsl #2]
	str r3, [r2, r4, lsl #2]
	mov r0, r1
	mov r1, r3
	bl delete
	str r0, [r5, r4, lsl #2]
	mov r0, r4
	b label85
inorder:
	push { r4, lr }
	cmn r0, #1
	beq label233
	mov r4, r0
label231:
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
	beq label233
	b label231
label233:
	pop { r4, pc }
.globl main
main:
	push { r4, r5, r6, lr }
	sub sp, sp, #8
	mov r4, sp
	bl getint
	cmp r0, #0
	mov r5, r0
	bne label263
	b label272
label263:
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
	ble label266
	mov r6, #1
label264:
	bl getint
	mov r2, r4
	mov r1, r0
	mov r0, #0
	bl insert
	add r6, r6, #1
	cmp r5, r6
	ble label266
	b label264
label272:
	mov r0, #0
	add sp, sp, #8
	pop { r4, r5, r6, pc }
label266:
	mov r0, #0
	bl inorder
	mov r0, #10
	bl putch
	bl getint
	cmp r0, #0
	mov r4, r0
	ble label301
	mov r5, #0
	mov r6, r5
	b label267
label301:
	mov r0, #0
	b label270
label267:
	bl getint
	mov r1, r0
	mov r0, r6
	bl delete
	add r5, r5, #1
	cmp r4, r5
	ble label270
	mov r6, r0
	b label267
label270:
	bl inorder
	mov r0, #10
	bl putch
	b label272
