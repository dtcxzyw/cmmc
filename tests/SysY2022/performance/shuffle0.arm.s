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
	movw r7, #:lower16:keys
	movt r7, #:upper16:keys
	str r0, [sp, #0]
	mov r0, r7
	bl getarray
	movw r6, #:lower16:values
	movt r6, #:upper16:values
	mov r5, r0
	mov r0, r6
	bl getarray
	movw r4, #:lower16:requests
	movt r4, #:upper16:requests
	mov r0, r4
	bl getarray
	str r0, [sp, #4]
	mov r0, #78
	bl _sysy_starttime
	mov r2, #0
	mov r0, r7
	mov r1, r2
	ldr r3, [r7, #0]
	movw r9, #:lower16:head
	movt r9, #:upper16:head
	add r2, r2, #1
	ldr r7, [sp, #0]
	sdiv r8, r3, r7
	mls r8, r8, r7, r3
	ldr r7, [r6, r1, lsl #2]
	ldr r9, [r9, r8, lsl #2]
	cmp r9, #0
	beq label6
	mov r10, r9
	bne label26
	b label29
.p2align 4
label6:
	movw r9, #:lower16:head
	movt r9, #:upper16:head
	movw r11, #:lower16:key
	movt r11, #:upper16:key
	str r2, [r9, r8, lsl #2]
	str r3, [r11, r2, lsl #2]
	movw r11, #:lower16:next
	movt r11, #:upper16:next
	movw r3, #:lower16:value
	movt r3, #:upper16:value
	str r7, [r3, r2, lsl #2]
	movw r3, #:lower16:nextvalue
	movt r3, #:upper16:nextvalue
	mov r7, #0
	str r7, [r11, r2, lsl #2]
	str r7, [r3, r2, lsl #2]
.p2align 4
label7:
	add r1, r1, #1
	cmp r5, r1
	bgt label8
label75:
	movw r5, #:lower16:ans
	movt r5, #:upper16:ans
	mov r0, #0
	ldr r1, [r4, #0]
	movw r9, #:lower16:head
	movt r9, #:upper16:head
	ldr r7, [sp, #0]
	sdiv r2, r1, r7
	mls r2, r2, r7, r1
	ldr r2, [r9, r2, lsl #2]
	b label13
.p2align 4
label8:
	add r0, r0, #4
	movw r9, #:lower16:head
	movt r9, #:upper16:head
	add r2, r2, #1
	ldr r3, [r0, #0]
	ldr r7, [sp, #0]
	sdiv r8, r3, r7
	mls r8, r8, r7, r3
	ldr r7, [r6, r1, lsl #2]
	ldr r9, [r9, r8, lsl #2]
	cmp r9, #0
	beq label6
	mov r10, r9
	bne label26
	b label29
label13:
	cmp r2, #0
	bne label15
	b label87
.p2align 4
label26:
	movw r11, #:lower16:key
	movt r11, #:upper16:key
	ldr r11, [r11, r10, lsl #2]
	cmp r3, r11
	bne label127
	movw r3, #:lower16:nextvalue
	movt r3, #:upper16:nextvalue
	add r1, r1, #1
	add r8, r3, r10, lsl #2
	cmp r5, r1
	ldr r9, [r8, #0]
	str r9, [r3, r2, lsl #2]
	movw r3, #:lower16:value
	movt r3, #:upper16:value
	str r2, [r8, #0]
	str r7, [r3, r2, lsl #2]
	bgt label8
	b label75
label87:
	mov r2, #0
	b label20
.p2align 4
label15:
	movw r11, #:lower16:key
	movt r11, #:upper16:key
	ldr r3, [r11, r2, lsl #2]
	cmp r1, r3
	beq label95
	movw r11, #:lower16:next
	movt r11, #:upper16:next
	ldr r2, [r11, r2, lsl #2]
	cmp r2, #0
	bne label15
	b label87
.p2align 4
label95:
	mov r1, r2
	movw r3, #:lower16:value
	movt r3, #:upper16:value
	mov r2, #0
	ldr r3, [r3, r1, lsl #2]
	add r2, r2, r3
	movw r3, #:lower16:nextvalue
	movt r3, #:upper16:nextvalue
	ldr r1, [r3, r1, lsl #2]
	cmp r1, #0
	beq label20
.p2align 4
label17:
	movw r3, #:lower16:value
	movt r3, #:upper16:value
	ldr r3, [r3, r1, lsl #2]
	add r2, r2, r3
	movw r3, #:lower16:nextvalue
	movt r3, #:upper16:nextvalue
	ldr r1, [r3, r1, lsl #2]
	cmp r1, #0
	bne label17
.p2align 4
label20:
	add r1, r0, #1
	str r2, [r5, r0, lsl #2]
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label22
	add r4, r4, #4
	mov r0, r1
	movw r9, #:lower16:head
	movt r9, #:upper16:head
	ldr r1, [r4, #0]
	ldr r7, [sp, #0]
	sdiv r2, r1, r7
	mls r2, r2, r7, r1
	ldr r2, [r9, r2, lsl #2]
	cmp r2, #0
	bne label15
	b label87
label22:
	mov r0, #90
	bl _sysy_stoptime
	ldr r0, [sp, #4]
	mov r1, r5
	bl putarray
	add sp, sp, #12
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label29:
	movw r11, #:lower16:next
	movt r11, #:upper16:next
	str r9, [r11, r2, lsl #2]
	movw r11, #:lower16:key
	movt r11, #:upper16:key
	movw r9, #:lower16:head
	movt r9, #:upper16:head
	str r2, [r9, r8, lsl #2]
	str r3, [r11, r2, lsl #2]
	movw r3, #:lower16:value
	movt r3, #:upper16:value
	str r7, [r3, r2, lsl #2]
	movw r3, #:lower16:nextvalue
	movt r3, #:upper16:nextvalue
	mov r7, #0
	str r7, [r3, r2, lsl #2]
	b label7
.p2align 4
label127:
	movw r11, #:lower16:next
	movt r11, #:upper16:next
	ldr r10, [r11, r10, lsl #2]
	cmp r10, #0
	bne label26
	b label29
