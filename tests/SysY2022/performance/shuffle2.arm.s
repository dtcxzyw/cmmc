.arch armv7ve
.data
.bss
.align 8
head:
	.zero	40000000
.align 8
next:
	.zero	40000000
.align 8
nextvalue:
	.zero	40000000
.align 8
key:
	.zero	40000000
.align 8
value:
	.zero	40000000
.align 8
keys:
	.zero	40000000
.align 8
values:
	.zero	40000000
.align 8
requests:
	.zero	40000000
.align 8
ans:
	.zero	40000000
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #12
	bl getint
	movw r4, #:lower16:keys
	movt r4, #:upper16:keys
	str r0, [sp, #0]
	mov r7, r0
	mov r0, r4
	bl getarray
	movw r6, #:lower16:values
	movt r6, #:upper16:values
	mov r5, r0
	mov r0, r6
	bl getarray
	movw r2, #:lower16:requests
	movt r2, #:upper16:requests
	mov r0, r2
	bl getarray
	str r0, [sp, #4]
	mov r1, r0
	mov r0, #78
	bl _sysy_starttime
	mov r2, #0
	movw r0, #:lower16:nextvalue
	movt r0, #:upper16:nextvalue
	mov r1, r2
.p2align 4
label2:
	ldr r3, [r4, r1, lsl #2]
	movw r9, #:lower16:head
	movt r9, #:upper16:head
	add r2, r2, #1
	ldr r7, [sp, #0]
	sdiv r8, r3, r7
	mls r8, r8, r7, r3
	ldr r7, [r6, r1, lsl #2]
	ldr r9, [r9, r8, lsl #2]
	cmp r9, #0
	bne label58
	movw r9, #:lower16:head
	movt r9, #:upper16:head
	movw r11, #:lower16:key
	movt r11, #:upper16:key
	str r2, [r9, r8, lsl #2]
	movw r8, #:lower16:value
	movt r8, #:upper16:value
	str r3, [r11, r2, lsl #2]
	movw r11, #:lower16:next
	movt r11, #:upper16:next
	mov r3, #0
	str r7, [r8, r2, lsl #2]
	str r3, [r11, r2, lsl #2]
	str r3, [r0, r2, lsl #2]
.p2align 4
label6:
	add r1, r1, #1
	cmp r5, r1
	bgt label2
	movw r4, #:lower16:ans
	movt r4, #:upper16:ans
	mov r1, #0
	movw r2, #:lower16:requests
	movt r2, #:upper16:requests
	movw r9, #:lower16:head
	movt r9, #:upper16:head
	ldr r2, [r2, r1, lsl #2]
	ldr r7, [sp, #0]
	sdiv r3, r2, r7
	mls r3, r3, r7, r2
	ldr r3, [r9, r3, lsl #2]
label10:
	cmp r3, #0
	bne label12
label86:
	mov r3, #0
	b label17
.p2align 4
label12:
	movw r11, #:lower16:key
	movt r11, #:upper16:key
	ldr r5, [r11, r3, lsl #2]
	cmp r2, r5
	beq label94
	movw r11, #:lower16:next
	movt r11, #:upper16:next
	ldr r3, [r11, r3, lsl #2]
	cmp r3, #0
	bne label12
	b label86
.p2align 4
label94:
	mov r2, r3
	mov r3, #0
	movw r8, #:lower16:value
	movt r8, #:upper16:value
	ldr r5, [r8, r2, lsl #2]
	ldr r2, [r0, r2, lsl #2]
	add r3, r3, r5
	cmp r2, #0
	beq label17
.p2align 4
label14:
	movw r8, #:lower16:value
	movt r8, #:upper16:value
	ldr r5, [r8, r2, lsl #2]
	ldr r2, [r0, r2, lsl #2]
	add r3, r3, r5
	cmp r2, #0
	bne label14
.p2align 4
label17:
	add r2, r1, #1
	str r3, [r4, r1, lsl #2]
	ldr r1, [sp, #4]
	cmp r1, r2
	ble label19
	mov r1, r2
	movw r2, #:lower16:requests
	movt r2, #:upper16:requests
	movw r9, #:lower16:head
	movt r9, #:upper16:head
	ldr r2, [r2, r1, lsl #2]
	ldr r7, [sp, #0]
	sdiv r3, r2, r7
	mls r3, r3, r7, r2
	ldr r3, [r9, r3, lsl #2]
	cmp r3, #0
	bne label12
	b label86
.p2align 4
label58:
	movs r10, r9
	beq label25
.p2align 4
label22:
	movw r11, #:lower16:key
	movt r11, #:upper16:key
	ldr r11, [r11, r10, lsl #2]
	cmp r3, r11
	bne label23
	add r3, r0, r10, lsl #2
	ldr r8, [r3, #0]
	str r8, [r0, r2, lsl #2]
	movw r8, #:lower16:value
	movt r8, #:upper16:value
	str r2, [r3, #0]
	str r7, [r8, r2, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	bgt label2
	movw r4, #:lower16:ans
	movt r4, #:upper16:ans
	mov r1, #0
	movw r2, #:lower16:requests
	movt r2, #:upper16:requests
	movw r9, #:lower16:head
	movt r9, #:upper16:head
	ldr r2, [r2, r1, lsl #2]
	ldr r7, [sp, #0]
	sdiv r3, r2, r7
	mls r3, r3, r7, r2
	ldr r3, [r9, r3, lsl #2]
	b label10
.p2align 4
label23:
	movw r11, #:lower16:next
	movt r11, #:upper16:next
	ldr r10, [r11, r10, lsl #2]
	cmp r10, #0
	bne label22
	b label25
label19:
	mov r0, #90
	bl _sysy_stoptime
	ldr r1, [sp, #4]
	mov r0, r1
	mov r1, r4
	bl putarray
	add sp, sp, #12
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label25:
	movw r11, #:lower16:next
	movt r11, #:upper16:next
	str r9, [r11, r2, lsl #2]
	movw r11, #:lower16:key
	movt r11, #:upper16:key
	movw r9, #:lower16:head
	movt r9, #:upper16:head
	str r2, [r9, r8, lsl #2]
	movw r8, #:lower16:value
	movt r8, #:upper16:value
	str r3, [r11, r2, lsl #2]
	mov r3, #0
	str r7, [r8, r2, lsl #2]
	str r3, [r0, r2, lsl #2]
	b label6
