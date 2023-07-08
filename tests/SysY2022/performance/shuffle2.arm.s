.arch armv7ve
.data
.bss
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
	str r0, [sp, #0]
	mov r7, r0
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
	str r0, [sp, #4]
	mov r3, r0
	bl getarray
	str r0, [sp, #8]
	mov r2, r0
	mov r0, #78
	bl _sysy_starttime
	cmp r5, #0
	movw r9, #:lower16:head
	movw r0, #:lower16:nextvalue
	movw r8, #:lower16:value
	movw r11, #:lower16:key
	movt r9, #:upper16:head
	movt r0, #:upper16:nextvalue
	movt r8, #:upper16:value
	str r9, [sp, #12]
	movt r11, #:upper16:key
	str r11, [sp, #16]
	movw r11, #:lower16:next
	str r8, [sp, #20]
	movt r11, #:upper16:next
	str r11, [sp, #24]
	ble label14
	mov r2, #0
	mov r1, r2
	ldr r3, [r4, r2, lsl #2]
	ldr r7, [sp, #0]
	sdiv r8, r3, r7
	mls r8, r8, r7, r3
	ldr r7, [r6, r2, lsl #2]
	ldr r9, [r9, r8, lsl #2]
	cmp r9, #0
	bne label65
label5:
	add r2, r2, #1
	ldr r9, [sp, #12]
	str r2, [r9, r8, lsl #2]
	ldr r11, [sp, #16]
	str r3, [r11, r2, lsl #2]
	mov r3, #0
	ldr r8, [sp, #20]
	str r7, [r8, r2, lsl #2]
	ldr r11, [sp, #24]
	str r3, [r11, r2, lsl #2]
	str r3, [r0, r2, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	ble label14
	ldr r3, [r4, r1, lsl #2]
	ldr r7, [sp, #0]
	sdiv r8, r3, r7
	mls r8, r8, r7, r3
	ldr r7, [r6, r1, lsl #2]
	ldr r9, [r9, r8, lsl #2]
	cmp r9, #0
	bne label65
	b label5
label14:
	ldr r2, [sp, #8]
	cmp r2, #0
	ble label28
	movw r1, #:lower16:ans
	mov r2, #0
	movt r1, #:upper16:ans
	ldr r3, [sp, #4]
	ldr r4, [r3, r2, lsl #2]
	ldr r7, [sp, #0]
	ldr r9, [sp, #12]
	sdiv r3, r4, r7
	mls r3, r3, r7, r4
	ldr r3, [r9, r3, lsl #2]
	cmp r3, #0
	beq label131
	ldr r11, [sp, #16]
	ldr r5, [r11, r3, lsl #2]
	cmp r4, r5
	bne label25
	cmp r3, #0
	beq label141
	mov r4, #0
	ldr r8, [sp, #20]
	ldr r5, [r8, r3, lsl #2]
	ldr r3, [r0, r3, lsl #2]
	add r4, r4, r5
	cmp r3, #0
	beq label26
	ldr r5, [r8, r3, lsl #2]
	ldr r3, [r0, r3, lsl #2]
	add r4, r4, r5
	cmp r3, #0
	beq label26
	ldr r5, [r8, r3, lsl #2]
	ldr r3, [r0, r3, lsl #2]
	add r4, r4, r5
	cmp r3, #0
	beq label26
	ldr r5, [r8, r3, lsl #2]
	ldr r3, [r0, r3, lsl #2]
	add r4, r4, r5
	cmp r3, #0
	beq label26
	ldr r5, [r8, r3, lsl #2]
	ldr r3, [r0, r3, lsl #2]
	add r4, r4, r5
	cmp r3, #0
	beq label26
label265:
	ldr r8, [sp, #20]
	ldr r5, [r8, r3, lsl #2]
	ldr r3, [r0, r3, lsl #2]
	add r4, r4, r5
	cmp r3, #0
	beq label26
	b label277
label289:
	ldr r8, [sp, #20]
	ldr r5, [r8, r3, lsl #2]
	ldr r3, [r0, r3, lsl #2]
	add r4, r4, r5
	cmp r3, #0
	beq label26
	b label291
label131:
	mov r4, #0
	add r3, r2, #1
	str r4, [r1, r2, lsl #2]
	ldr r2, [sp, #8]
	cmp r2, r3
	ble label28
	mov r2, r3
	ldr r3, [sp, #4]
	ldr r4, [r3, r2, lsl #2]
	ldr r7, [sp, #0]
	ldr r9, [sp, #12]
	sdiv r3, r4, r7
	mls r3, r3, r7, r4
	ldr r3, [r9, r3, lsl #2]
	cmp r3, #0
	beq label131
	ldr r11, [sp, #16]
	ldr r5, [r11, r3, lsl #2]
	cmp r4, r5
	bne label25
	cmp r3, #0
	beq label141
	mov r4, #0
	ldr r8, [sp, #20]
	ldr r5, [r8, r3, lsl #2]
	ldr r3, [r0, r3, lsl #2]
	add r4, r4, r5
	cmp r3, #0
	beq label26
	ldr r5, [r8, r3, lsl #2]
	ldr r3, [r0, r3, lsl #2]
	add r4, r4, r5
	cmp r3, #0
	beq label26
	ldr r5, [r8, r3, lsl #2]
	ldr r3, [r0, r3, lsl #2]
	add r4, r4, r5
	cmp r3, #0
	beq label26
	ldr r5, [r8, r3, lsl #2]
	ldr r3, [r0, r3, lsl #2]
	add r4, r4, r5
	cmp r3, #0
	beq label26
	ldr r5, [r8, r3, lsl #2]
	ldr r3, [r0, r3, lsl #2]
	add r4, r4, r5
	cmp r3, #0
	beq label26
	b label265
label291:
	ldr r8, [sp, #20]
	ldr r5, [r8, r3, lsl #2]
	ldr r3, [r0, r3, lsl #2]
	add r4, r4, r5
	cmp r3, #0
	beq label26
	ldr r5, [r8, r3, lsl #2]
	ldr r3, [r0, r3, lsl #2]
	add r4, r4, r5
	cmp r3, #0
	beq label26
	b label22
label141:
	mov r4, #0
	add r3, r2, #1
	str r4, [r1, r2, lsl #2]
	ldr r2, [sp, #8]
	cmp r2, r3
	ble label28
	mov r2, r3
	ldr r3, [sp, #4]
	ldr r4, [r3, r2, lsl #2]
	ldr r7, [sp, #0]
	ldr r9, [sp, #12]
	sdiv r3, r4, r7
	mls r3, r3, r7, r4
	ldr r3, [r9, r3, lsl #2]
	cmp r3, #0
	beq label131
	ldr r11, [sp, #16]
	ldr r5, [r11, r3, lsl #2]
	cmp r4, r5
	bne label25
	cmp r3, #0
	beq label141
	mov r4, #0
	ldr r8, [sp, #20]
	ldr r5, [r8, r3, lsl #2]
	ldr r3, [r0, r3, lsl #2]
	add r4, r4, r5
	cmp r3, #0
	beq label26
	ldr r5, [r8, r3, lsl #2]
	ldr r3, [r0, r3, lsl #2]
	add r4, r4, r5
	cmp r3, #0
	beq label26
	ldr r5, [r8, r3, lsl #2]
	ldr r3, [r0, r3, lsl #2]
	add r4, r4, r5
	cmp r3, #0
	beq label26
	ldr r5, [r8, r3, lsl #2]
	ldr r3, [r0, r3, lsl #2]
	add r4, r4, r5
	cmp r3, #0
	beq label26
	ldr r5, [r8, r3, lsl #2]
	ldr r3, [r0, r3, lsl #2]
	add r4, r4, r5
	cmp r3, #0
	beq label26
	b label265
label22:
	ldr r8, [sp, #20]
	ldr r5, [r8, r3, lsl #2]
	ldr r3, [r0, r3, lsl #2]
	add r4, r4, r5
	cmp r3, #0
	beq label26
	b label22
label25:
	ldr r11, [sp, #24]
	ldr r3, [r11, r3, lsl #2]
	cmp r3, #0
	beq label131
	ldr r11, [sp, #16]
	ldr r5, [r11, r3, lsl #2]
	cmp r4, r5
	bne label25
	cmp r3, #0
	beq label141
	mov r4, #0
	ldr r8, [sp, #20]
	ldr r5, [r8, r3, lsl #2]
	ldr r3, [r0, r3, lsl #2]
	add r4, r4, r5
	cmp r3, #0
	beq label26
	ldr r5, [r8, r3, lsl #2]
	ldr r3, [r0, r3, lsl #2]
	add r4, r4, r5
	cmp r3, #0
	beq label26
	ldr r5, [r8, r3, lsl #2]
	ldr r3, [r0, r3, lsl #2]
	add r4, r4, r5
	cmp r3, #0
	beq label26
	ldr r5, [r8, r3, lsl #2]
	ldr r3, [r0, r3, lsl #2]
	add r4, r4, r5
	cmp r3, #0
	beq label26
	ldr r5, [r8, r3, lsl #2]
	ldr r3, [r0, r3, lsl #2]
	add r4, r4, r5
	cmp r3, #0
	beq label26
	ldr r5, [r8, r3, lsl #2]
	ldr r3, [r0, r3, lsl #2]
	add r4, r4, r5
	cmp r3, #0
	beq label26
	ldr r5, [r8, r3, lsl #2]
	ldr r3, [r0, r3, lsl #2]
	add r4, r4, r5
	cmp r3, #0
	beq label26
	b label289
label277:
	ldr r8, [sp, #20]
	ldr r5, [r8, r3, lsl #2]
	ldr r3, [r0, r3, lsl #2]
	add r4, r4, r5
	cmp r3, #0
	beq label26
	b label289
label26:
	add r3, r2, #1
	str r4, [r1, r2, lsl #2]
	ldr r2, [sp, #8]
	cmp r2, r3
	ble label28
	mov r2, r3
	ldr r3, [sp, #4]
	ldr r4, [r3, r2, lsl #2]
	ldr r7, [sp, #0]
	ldr r9, [sp, #12]
	sdiv r3, r4, r7
	mls r3, r3, r7, r4
	ldr r3, [r9, r3, lsl #2]
	cmp r3, #0
	beq label131
	ldr r11, [sp, #16]
	ldr r5, [r11, r3, lsl #2]
	cmp r4, r5
	bne label25
	cmp r3, #0
	beq label141
	mov r4, #0
	ldr r8, [sp, #20]
	ldr r5, [r8, r3, lsl #2]
	ldr r3, [r0, r3, lsl #2]
	add r4, r4, r5
	cmp r3, #0
	beq label26
	ldr r5, [r8, r3, lsl #2]
	ldr r3, [r0, r3, lsl #2]
	add r4, r4, r5
	cmp r3, #0
	beq label26
	ldr r5, [r8, r3, lsl #2]
	ldr r3, [r0, r3, lsl #2]
	add r4, r4, r5
	cmp r3, #0
	beq label26
	ldr r5, [r8, r3, lsl #2]
	ldr r3, [r0, r3, lsl #2]
	add r4, r4, r5
	cmp r3, #0
	beq label26
	ldr r5, [r8, r3, lsl #2]
	ldr r3, [r0, r3, lsl #2]
	add r4, r4, r5
	cmp r3, #0
	beq label26
	ldr r5, [r8, r3, lsl #2]
	ldr r3, [r0, r3, lsl #2]
	add r4, r4, r5
	cmp r3, #0
	beq label26
	b label277
label65:
	mov r10, r9
	cmp r9, #0
	beq label10
	ldr r11, [sp, #16]
	ldr r11, [r11, r9, lsl #2]
	cmp r3, r11
	bne label12
	add r2, r2, #1
	ldr r3, [r0, r9, lsl #2]
	str r3, [r0, r2, lsl #2]
	str r2, [r0, r9, lsl #2]
	ldr r8, [sp, #20]
	str r7, [r8, r2, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	ble label14
	ldr r3, [r4, r1, lsl #2]
	ldr r7, [sp, #0]
	sdiv r8, r3, r7
	mls r8, r8, r7, r3
	ldr r7, [r6, r1, lsl #2]
	ldr r9, [sp, #12]
	ldr r9, [r9, r8, lsl #2]
	cmp r9, #0
	bne label65
	b label5
label10:
	add r2, r2, #1
	ldr r11, [sp, #24]
	str r9, [r11, r2, lsl #2]
	ldr r9, [sp, #12]
	str r2, [r9, r8, lsl #2]
	ldr r11, [sp, #16]
	str r3, [r11, r2, lsl #2]
	mov r3, #0
	ldr r8, [sp, #20]
	str r7, [r8, r2, lsl #2]
	str r3, [r0, r2, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	ble label14
	ldr r3, [r4, r1, lsl #2]
	ldr r7, [sp, #0]
	sdiv r8, r3, r7
	mls r8, r8, r7, r3
	ldr r7, [r6, r1, lsl #2]
	ldr r9, [r9, r8, lsl #2]
	cmp r9, #0
	bne label65
	b label5
label12:
	ldr r11, [sp, #24]
	ldr r10, [r11, r10, lsl #2]
	cmp r10, #0
	beq label10
	ldr r11, [sp, #16]
	ldr r11, [r11, r10, lsl #2]
	cmp r3, r11
	bne label12
	add r2, r2, #1
	ldr r3, [r0, r10, lsl #2]
	str r3, [r0, r2, lsl #2]
	str r2, [r0, r10, lsl #2]
	ldr r8, [sp, #20]
	str r7, [r8, r2, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	ble label14
	ldr r3, [r4, r1, lsl #2]
	ldr r7, [sp, #0]
	sdiv r8, r3, r7
	mls r8, r8, r7, r3
	ldr r7, [r6, r1, lsl #2]
	ldr r9, [sp, #12]
	ldr r9, [r9, r8, lsl #2]
	cmp r9, #0
	bne label65
	b label5
label28:
	mov r0, #90
	bl _sysy_stoptime
	ldr r2, [sp, #8]
	movw r1, #:lower16:ans
	movt r1, #:upper16:ans
	mov r0, r2
	bl putarray
	add sp, sp, #36
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
