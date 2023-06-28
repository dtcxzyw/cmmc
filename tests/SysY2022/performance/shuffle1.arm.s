.arch armv7ve
.data
.align 4
head:
	.zero	40000000
.align 4
next:
	.zero	40000000
.align 4
nextvalue:
	.zero	40000000
.align 4
key:
	.zero	40000000
.align 4
value:
	.zero	40000000
.align 4
keys:
	.zero	40000000
.align 4
values:
	.zero	40000000
.align 4
requests:
	.zero	40000000
.align 4
ans:
	.zero	40000000
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #36
	bl getint
	mov r8, r0
	str r0, [sp, #0]
	movw r0, #:lower16:keys
	movt r0, #:upper16:keys
	mov r4, r0
	bl getarray
	mov r5, r0
	movw r0, #:lower16:values
	movt r0, #:upper16:values
	mov r6, r0
	bl getarray
	movw r0, #:lower16:requests
	movt r0, #:upper16:requests
	mov r1, r0
	str r0, [sp, #4]
	bl getarray
	str r0, [sp, #8]
	mov r0, #78
	bl _sysy_starttime
	movw r1, #:lower16:ans
	movt r1, #:upper16:ans
	str r1, [sp, #12]
	movw r8, #:lower16:head
	movt r8, #:upper16:head
	str r8, [sp, #16]
	movw r8, #:lower16:key
	movt r8, #:upper16:key
	str r8, [sp, #20]
	movw r8, #:lower16:value
	movt r8, #:upper16:value
	str r8, [sp, #24]
	movw r3, #:lower16:nextvalue
	movt r3, #:upper16:nextvalue
	movw r7, #:lower16:next
	movt r7, #:upper16:next
	cmp r5, #0
	ble label2
	mov r0, #0
	mov r1, r0
	ldr r9, [r4, r0, lsl #2]
	ldr r8, [sp, #0]
	sdiv r2, r9, r8
	ldr r8, [sp, #0]
	mls r11, r2, r8, r9
	ldr r10, [r6, r0, lsl #2]
	ldr r8, [sp, #16]
	ldr r2, [r8, r11, lsl #2]
	cmp r2, #0
	bne label23
	b label29
label23:
	cmp r2, #0
	beq label25
	ldr r8, [sp, #20]
	ldr r8, [r8, r2, lsl #2]
	cmp r8, r9
	bne label27
	add r0, r0, #1
	ldr r8, [r3, r2, lsl #2]
	str r8, [r3, r0, lsl #2]
	str r0, [r3, r2, lsl #2]
	ldr r8, [sp, #24]
	str r10, [r8, r0, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label2
	ldr r9, [r4, r1, lsl #2]
	ldr r8, [sp, #0]
	sdiv r2, r9, r8
	ldr r8, [sp, #0]
	mls r11, r2, r8, r9
	ldr r10, [r6, r1, lsl #2]
	ldr r8, [sp, #16]
	ldr r2, [r8, r11, lsl #2]
	cmp r2, #0
	bne label23
	b label29
label27:
	ldr r2, [r7, r2, lsl #2]
	cmp r2, #0
	beq label25
	ldr r8, [sp, #20]
	ldr r8, [r8, r2, lsl #2]
	cmp r8, r9
	bne label27
	add r0, r0, #1
	ldr r8, [r3, r2, lsl #2]
	str r8, [r3, r0, lsl #2]
	str r0, [r3, r2, lsl #2]
	ldr r8, [sp, #24]
	str r10, [r8, r0, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label2
	ldr r9, [r4, r1, lsl #2]
	ldr r8, [sp, #0]
	sdiv r2, r9, r8
	ldr r8, [sp, #0]
	mls r11, r2, r8, r9
	ldr r10, [r6, r1, lsl #2]
	ldr r8, [sp, #16]
	ldr r2, [r8, r11, lsl #2]
	cmp r2, #0
	bne label23
label29:
	add r0, r0, #1
	ldr r8, [sp, #16]
	str r0, [r8, r11, lsl #2]
	ldr r8, [sp, #20]
	str r9, [r8, r0, lsl #2]
	ldr r8, [sp, #24]
	str r10, [r8, r0, lsl #2]
	mov r2, #0
	str r2, [r7, r0, lsl #2]
	str r2, [r3, r0, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label2
	ldr r9, [r4, r1, lsl #2]
	ldr r8, [sp, #0]
	sdiv r2, r9, r8
	ldr r8, [sp, #0]
	mls r11, r2, r8, r9
	ldr r10, [r6, r1, lsl #2]
	ldr r8, [sp, #16]
	ldr r2, [r8, r11, lsl #2]
	cmp r2, #0
	bne label23
	b label29
label25:
	add r0, r0, #1
	ldr r8, [sp, #16]
	ldr r2, [r8, r11, lsl #2]
	str r2, [r7, r0, lsl #2]
	ldr r8, [sp, #16]
	str r0, [r8, r11, lsl #2]
	ldr r8, [sp, #20]
	str r9, [r8, r0, lsl #2]
	ldr r8, [sp, #24]
	str r10, [r8, r0, lsl #2]
	mov r2, #0
	str r2, [r3, r0, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label2
	ldr r9, [r4, r1, lsl #2]
	ldr r8, [sp, #0]
	sdiv r2, r9, r8
	ldr r8, [sp, #0]
	mls r11, r2, r8, r9
	ldr r10, [r6, r1, lsl #2]
	ldr r8, [sp, #16]
	ldr r2, [r8, r11, lsl #2]
	cmp r2, #0
	bne label23
	b label29
label2:
	ldr r0, [sp, #8]
	cmp r0, #0
	ble label17
	mov r2, #0
	ldr r1, [sp, #4]
	ldr r1, [r1, r2, lsl #2]
	ldr r8, [sp, #0]
	sdiv r0, r1, r8
	ldr r8, [sp, #0]
	mls r0, r0, r8, r1
	ldr r8, [sp, #16]
	ldr r0, [r8, r0, lsl #2]
	cmp r0, #0
	beq label69
	ldr r8, [sp, #20]
	ldr r4, [r8, r0, lsl #2]
	cmp r4, r1
	bne label10
	cmp r0, #0
	beq label89
	mov r1, #0
	ldr r8, [sp, #24]
	ldr r4, [r8, r0, lsl #2]
	add r1, r1, r4
	ldr r0, [r3, r0, lsl #2]
	cmp r0, #0
	beq label15
	ldr r8, [sp, #24]
	ldr r4, [r8, r0, lsl #2]
	add r1, r1, r4
	ldr r0, [r3, r0, lsl #2]
	cmp r0, #0
	beq label15
	ldr r8, [sp, #24]
	ldr r4, [r8, r0, lsl #2]
	add r1, r1, r4
	ldr r0, [r3, r0, lsl #2]
	cmp r0, #0
	beq label15
	ldr r8, [sp, #24]
	ldr r4, [r8, r0, lsl #2]
	add r1, r1, r4
	ldr r0, [r3, r0, lsl #2]
	cmp r0, #0
	beq label15
	ldr r8, [sp, #24]
	ldr r4, [r8, r0, lsl #2]
	add r1, r1, r4
	ldr r0, [r3, r0, lsl #2]
	cmp r0, #0
	beq label15
	ldr r8, [sp, #24]
	ldr r4, [r8, r0, lsl #2]
	add r1, r1, r4
	ldr r0, [r3, r0, lsl #2]
	cmp r0, #0
	beq label15
label263:
	ldr r8, [sp, #24]
	ldr r4, [r8, r0, lsl #2]
	add r1, r1, r4
	ldr r0, [r3, r0, lsl #2]
	cmp r0, #0
	beq label15
	b label272
label273:
	ldr r8, [sp, #24]
	ldr r4, [r8, r0, lsl #2]
	add r1, r1, r4
	ldr r0, [r3, r0, lsl #2]
	cmp r0, #0
	beq label15
	b label263
label89:
	mov r1, #0
	mov r0, r1
	ldr r1, [sp, #12]
	str r0, [r1, r2, lsl #2]
	add r2, r2, #1
	ldr r0, [sp, #8]
	cmp r2, r0
	bge label17
	ldr r1, [sp, #4]
	ldr r1, [r1, r2, lsl #2]
	ldr r8, [sp, #0]
	sdiv r0, r1, r8
	ldr r8, [sp, #0]
	mls r0, r0, r8, r1
	ldr r8, [sp, #16]
	ldr r0, [r8, r0, lsl #2]
	cmp r0, #0
	beq label69
	ldr r8, [sp, #20]
	ldr r4, [r8, r0, lsl #2]
	cmp r4, r1
	bne label10
	cmp r0, #0
	beq label89
	mov r1, #0
	ldr r8, [sp, #24]
	ldr r4, [r8, r0, lsl #2]
	add r1, r1, r4
	ldr r0, [r3, r0, lsl #2]
	cmp r0, #0
	beq label15
	ldr r8, [sp, #24]
	ldr r4, [r8, r0, lsl #2]
	add r1, r1, r4
	ldr r0, [r3, r0, lsl #2]
	cmp r0, #0
	beq label15
	ldr r8, [sp, #24]
	ldr r4, [r8, r0, lsl #2]
	add r1, r1, r4
	ldr r0, [r3, r0, lsl #2]
	cmp r0, #0
	beq label15
	ldr r8, [sp, #24]
	ldr r4, [r8, r0, lsl #2]
	add r1, r1, r4
	ldr r0, [r3, r0, lsl #2]
	cmp r0, #0
	beq label15
	ldr r8, [sp, #24]
	ldr r4, [r8, r0, lsl #2]
	add r1, r1, r4
	ldr r0, [r3, r0, lsl #2]
	cmp r0, #0
	beq label15
	b label273
label15:
	mov r0, r1
	ldr r1, [sp, #12]
	str r0, [r1, r2, lsl #2]
	add r2, r2, #1
	ldr r0, [sp, #8]
	cmp r2, r0
	bge label17
	ldr r1, [sp, #4]
	ldr r1, [r1, r2, lsl #2]
	ldr r8, [sp, #0]
	sdiv r0, r1, r8
	ldr r8, [sp, #0]
	mls r0, r0, r8, r1
	ldr r8, [sp, #16]
	ldr r0, [r8, r0, lsl #2]
	cmp r0, #0
	beq label69
	ldr r8, [sp, #20]
	ldr r4, [r8, r0, lsl #2]
	cmp r4, r1
	bne label10
	cmp r0, #0
	beq label89
	mov r1, #0
	ldr r8, [sp, #24]
	ldr r4, [r8, r0, lsl #2]
	add r1, r1, r4
	ldr r0, [r3, r0, lsl #2]
	cmp r0, #0
	beq label15
	ldr r8, [sp, #24]
	ldr r4, [r8, r0, lsl #2]
	add r1, r1, r4
	ldr r0, [r3, r0, lsl #2]
	cmp r0, #0
	beq label15
	ldr r8, [sp, #24]
	ldr r4, [r8, r0, lsl #2]
	add r1, r1, r4
	ldr r0, [r3, r0, lsl #2]
	cmp r0, #0
	beq label15
	ldr r8, [sp, #24]
	ldr r4, [r8, r0, lsl #2]
	add r1, r1, r4
	ldr r0, [r3, r0, lsl #2]
	cmp r0, #0
	beq label15
	ldr r8, [sp, #24]
	ldr r4, [r8, r0, lsl #2]
	add r1, r1, r4
	ldr r0, [r3, r0, lsl #2]
	cmp r0, #0
	beq label15
	ldr r8, [sp, #24]
	ldr r4, [r8, r0, lsl #2]
	add r1, r1, r4
	ldr r0, [r3, r0, lsl #2]
	cmp r0, #0
	beq label15
	b label263
label272:
	ldr r8, [sp, #24]
	ldr r4, [r8, r0, lsl #2]
	add r1, r1, r4
	ldr r0, [r3, r0, lsl #2]
	cmp r0, #0
	beq label15
	b label274
label69:
	mov r0, #0
	ldr r1, [sp, #12]
	str r0, [r1, r2, lsl #2]
	add r2, r2, #1
	ldr r0, [sp, #8]
	cmp r2, r0
	bge label17
	ldr r1, [sp, #4]
	ldr r1, [r1, r2, lsl #2]
	ldr r8, [sp, #0]
	sdiv r0, r1, r8
	ldr r8, [sp, #0]
	mls r0, r0, r8, r1
	ldr r8, [sp, #16]
	ldr r0, [r8, r0, lsl #2]
	cmp r0, #0
	beq label69
	ldr r8, [sp, #20]
	ldr r4, [r8, r0, lsl #2]
	cmp r4, r1
	bne label10
	cmp r0, #0
	beq label89
	mov r1, #0
	ldr r8, [sp, #24]
	ldr r4, [r8, r0, lsl #2]
	add r1, r1, r4
	ldr r0, [r3, r0, lsl #2]
	cmp r0, #0
	beq label15
	ldr r8, [sp, #24]
	ldr r4, [r8, r0, lsl #2]
	add r1, r1, r4
	ldr r0, [r3, r0, lsl #2]
	cmp r0, #0
	beq label15
	ldr r8, [sp, #24]
	ldr r4, [r8, r0, lsl #2]
	add r1, r1, r4
	ldr r0, [r3, r0, lsl #2]
	cmp r0, #0
	beq label15
	ldr r8, [sp, #24]
	ldr r4, [r8, r0, lsl #2]
	add r1, r1, r4
	ldr r0, [r3, r0, lsl #2]
	cmp r0, #0
	beq label15
	ldr r8, [sp, #24]
	ldr r4, [r8, r0, lsl #2]
	add r1, r1, r4
	ldr r0, [r3, r0, lsl #2]
	cmp r0, #0
	beq label15
	b label273
label274:
	ldr r8, [sp, #24]
	ldr r4, [r8, r0, lsl #2]
	add r1, r1, r4
	ldr r0, [r3, r0, lsl #2]
	cmp r0, #0
	beq label15
	b label276
label10:
	ldr r0, [r7, r0, lsl #2]
	cmp r0, #0
	beq label69
	ldr r8, [sp, #20]
	ldr r4, [r8, r0, lsl #2]
	cmp r4, r1
	bne label10
	cmp r0, #0
	beq label89
	mov r1, #0
	ldr r8, [sp, #24]
	ldr r4, [r8, r0, lsl #2]
	add r1, r1, r4
	ldr r0, [r3, r0, lsl #2]
	cmp r0, #0
	beq label15
	ldr r8, [sp, #24]
	ldr r4, [r8, r0, lsl #2]
	add r1, r1, r4
	ldr r0, [r3, r0, lsl #2]
	cmp r0, #0
	beq label15
	ldr r8, [sp, #24]
	ldr r4, [r8, r0, lsl #2]
	add r1, r1, r4
	ldr r0, [r3, r0, lsl #2]
	cmp r0, #0
	beq label15
	ldr r8, [sp, #24]
	ldr r4, [r8, r0, lsl #2]
	add r1, r1, r4
	ldr r0, [r3, r0, lsl #2]
	cmp r0, #0
	beq label15
	ldr r8, [sp, #24]
	ldr r4, [r8, r0, lsl #2]
	add r1, r1, r4
	ldr r0, [r3, r0, lsl #2]
	cmp r0, #0
	beq label15
	ldr r8, [sp, #24]
	ldr r4, [r8, r0, lsl #2]
	add r1, r1, r4
	ldr r0, [r3, r0, lsl #2]
	cmp r0, #0
	beq label15
	ldr r8, [sp, #24]
	ldr r4, [r8, r0, lsl #2]
	add r1, r1, r4
	ldr r0, [r3, r0, lsl #2]
	cmp r0, #0
	beq label15
	b label272
label276:
	ldr r8, [sp, #24]
	ldr r4, [r8, r0, lsl #2]
	add r1, r1, r4
	ldr r0, [r3, r0, lsl #2]
	cmp r0, #0
	beq label15
label278:
	ldr r8, [sp, #24]
	ldr r4, [r8, r0, lsl #2]
	add r1, r1, r4
	ldr r0, [r3, r0, lsl #2]
	cmp r0, #0
	beq label15
	b label278
label17:
	mov r0, #90
	bl _sysy_stoptime
	ldr r0, [sp, #8]
	ldr r1, [sp, #12]
	bl putarray
	mov r0, #0
	add sp, sp, #36
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
