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
	push { r4, r5, lr }
	cmn r0, #1
	mov r4, r0
	sub sp, sp, #4
	beq label112
	movw r2, #:lower16:value
	movt r2, #:upper16:value
	ldr r0, [r2, r0, lsl #2]
	cmp r1, r0
	bgt label90
	b label91
label112:
	mvn r0, #0
	b label106
label90:
	movw r5, #:lower16:right_child
	movt r5, #:upper16:right_child
	ldr r0, [r5, r4, lsl #2]
	bl delete
	str r0, [r5, r4, lsl #2]
	mov r0, r4
	b label106
label91:
	cmp r1, r0
	blt label105
	movw r0, #:lower16:left_child
	movt r0, #:upper16:left_child
	ldr r0, [r0, r4, lsl #2]
	cmn r0, #1
	beq label104
	movw r0, #:lower16:left_child
	movt r0, #:upper16:left_child
	ldr r0, [r0, r4, lsl #2]
	cmn r0, #1
	beq label94
	b label148
label104:
	movw r0, #:lower16:right_child
	movt r0, #:upper16:right_child
	ldr r0, [r0, r4, lsl #2]
	cmn r0, #1
	beq label112
	b label211
label105:
	movw r5, #:lower16:left_child
	movt r5, #:upper16:left_child
	ldr r0, [r5, r4, lsl #2]
	bl delete
	str r0, [r5, r4, lsl #2]
	mov r0, r4
label106:
	add sp, sp, #4
	pop { r4, r5, pc }
label148:
	movw r0, #:lower16:right_child
	movt r0, #:upper16:right_child
	ldr r0, [r0, r4, lsl #2]
	cmn r0, #1
	bne label176
label94:
	movw r0, #:lower16:left_child
	movt r0, #:upper16:left_child
	ldr r0, [r0, r4, lsl #2]
	cmn r0, #1
	beq label96
	movw r0, #:lower16:left_child
	movt r0, #:upper16:left_child
	ldr r0, [r0, r4, lsl #2]
	b label106
label96:
	movw r0, #:lower16:right_child
	movt r0, #:upper16:right_child
	ldr r0, [r0, r4, lsl #2]
	b label106
label176:
	movw r5, #:lower16:right_child
	movt r5, #:upper16:right_child
	ldr r1, [r5, r4, lsl #2]
	mov r0, r1
	cmn r1, #1
	beq label186
	b label185
label99:
	cmn r0, #1
	beq label186
label185:
	movw r3, #:lower16:left_child
	movt r3, #:upper16:left_child
	ldr r3, [r3, r0, lsl #2]
	cmn r3, #1
	bne label195
	b label102
label186:
	mvn r0, #0
	b label102
label195:
	mov r0, r3
	b label99
label102:
	ldr r3, [r2, r0, lsl #2]
	str r3, [r2, r4, lsl #2]
	mov r0, r1
	mov r1, r3
	bl delete
	str r0, [r5, r4, lsl #2]
	mov r0, r4
	b label106
label211:
	movw r0, #:lower16:left_child
	movt r0, #:upper16:left_child
	ldr r0, [r0, r4, lsl #2]
	cmn r0, #1
	beq label94
	b label148
inorder:
	push { r4, lr }
	cmn r0, #1
	beq label245
	mov r4, r0
label243:
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
	bne label243
label245:
	pop { r4, pc }
.globl main
main:
	push { r4, r5, r6, lr }
	sub sp, sp, #8
	mov r4, sp
	bl getint
	cmp r0, #0
	mov r5, r0
	bne label272
label271:
	mov r0, #0
	add sp, sp, #8
	pop { r4, r5, r6, pc }
label272:
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
	ble label275
	mov r6, #1
	b label273
label275:
	mov r0, #0
	bl inorder
	mov r0, #10
	bl putch
	bl getint
	cmp r0, #0
	mov r4, r0
	bgt label309
	mov r0, #0
	b label279
label309:
	mov r5, #0
	mov r6, r5
label276:
	bl getint
	mov r1, r0
	mov r0, r6
	bl delete
	add r5, r5, #1
	cmp r4, r5
	ble label279
	mov r6, r0
	b label276
label279:
	bl inorder
	mov r0, #10
	bl putch
	b label271
label273:
	bl getint
	mov r2, r4
	mov r1, r0
	mov r0, #0
	bl insert
	add r6, r6, #1
	cmp r5, r6
	bgt label273
	b label275
