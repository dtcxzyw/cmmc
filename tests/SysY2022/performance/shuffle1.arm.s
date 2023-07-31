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
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #36
	bl getint
	movw r4, #:lower16:keys
	str r0, [sp, #24]
	mov r7, r0
	movt r4, #:upper16:keys
	mov r0, r4
	bl getarray
	movw r5, #:lower16:values
	mov r6, r0
	movt r5, #:upper16:values
	mov r0, r5
	bl getarray
	movw r2, #:lower16:requests
	movt r2, #:upper16:requests
	str r2, [sp, #20]
	mov r0, r2
	bl getarray
	str r0, [sp, #16]
	mov r1, r0
	mov r0, #78
	bl _sysy_starttime
	cmp r6, #0
	movw r9, #:lower16:head
	movw r11, #:lower16:key
	movw r8, #:lower16:value
	movw r0, #:lower16:nextvalue
	movt r9, #:upper16:head
	movt r11, #:upper16:key
	movt r8, #:upper16:value
	str r9, [sp, #12]
	movt r0, #:upper16:nextvalue
	str r11, [sp, #8]
	movw r11, #:lower16:next
	str r8, [sp, #4]
	movt r11, #:upper16:next
	str r11, [sp, #0]
	ble label47
	mov r2, #0
	mov r1, r2
	b label2
.p2align 4
label47:
	movw r4, #:lower16:ans
	ldr r1, [sp, #16]
	movt r4, #:upper16:ans
	cmp r1, #0
	ble label14
label115:
	mov r1, #0
	ldr r2, [sp, #20]
	ldr r2, [r2, r1, lsl #2]
	ldr r7, [sp, #24]
	ldr r9, [sp, #12]
	sdiv r3, r2, r7
	mls r3, r3, r7, r2
	ldr r3, [r9, r3, lsl #2]
.p2align 4
label17:
	cmp r3, #0
	bne label19
	mov r2, #0
	add r3, r1, #1
	str r2, [r4, r1, lsl #2]
	ldr r1, [sp, #16]
	cmp r1, r3
	bgt label154
	b label14
.p2align 4
label195:
	add r3, r1, #1
	str r2, [r4, r1, lsl #2]
	ldr r1, [sp, #16]
	cmp r1, r3
	ble label14
label154:
	mov r1, r3
	ldr r2, [sp, #20]
	ldr r2, [r2, r3, lsl #2]
	ldr r7, [sp, #24]
	ldr r9, [sp, #12]
	sdiv r3, r2, r7
	mls r3, r3, r7, r2
	ldr r3, [r9, r3, lsl #2]
	b label17
.p2align 4
label19:
	ldr r11, [sp, #8]
	ldr r5, [r11, r3, lsl #2]
	cmp r2, r5
	beq label133
	ldr r11, [sp, #0]
	ldr r3, [r11, r3, lsl #2]
	cmp r3, #0
	bne label19
	mov r2, #0
	add r3, r1, #1
	str r2, [r4, r1, lsl #2]
	ldr r1, [sp, #16]
	cmp r1, r3
	bgt label154
	b label14
.p2align 4
label133:
	mov r2, #0
	ldr r8, [sp, #4]
	ldr r5, [r8, r3, lsl #2]
	ldr r3, [r0, r3, lsl #2]
	add r2, r2, r5
	cmp r3, #0
	beq label195
.p2align 4
label21:
	ldr r8, [sp, #4]
	ldr r5, [r8, r3, lsl #2]
	ldr r3, [r0, r3, lsl #2]
	add r2, r2, r5
	cmp r3, #0
	bne label21
	add r3, r1, #1
	str r2, [r4, r1, lsl #2]
	ldr r1, [sp, #16]
	cmp r1, r3
	bgt label154
label14:
	mov r0, #90
	bl _sysy_stoptime
	ldr r1, [sp, #16]
	mov r0, r1
	mov r1, r4
	bl putarray
	add sp, sp, #36
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label2:
	ldr r3, [r4, r1, lsl #2]
	add r2, r2, #1
	ldr r7, [sp, #24]
	sdiv r8, r3, r7
	mls r8, r8, r7, r3
	ldr r7, [r5, r1, lsl #2]
	ldr r9, [sp, #12]
	ldr r9, [r9, r8, lsl #2]
	cmp r9, #0
	bne label62
	ldr r9, [sp, #12]
	str r2, [r9, r8, lsl #2]
	ldr r11, [sp, #8]
	str r3, [r11, r2, lsl #2]
	mov r3, #0
	ldr r8, [sp, #4]
	str r7, [r8, r2, lsl #2]
	ldr r11, [sp, #0]
	str r3, [r11, r2, lsl #2]
	str r3, [r0, r2, lsl #2]
.p2align 4
label6:
	add r1, r1, #1
	cmp r6, r1
	bgt label2
	movw r4, #:lower16:ans
	ldr r1, [sp, #16]
	movt r4, #:upper16:ans
	cmp r1, #0
	bgt label115
	b label14
.p2align 4
label62:
	movs r10, r9
	beq label9
.p2align 4
label10:
	ldr r11, [sp, #8]
	ldr r11, [r11, r10, lsl #2]
	cmp r3, r11
	beq label11
	ldr r11, [sp, #0]
	ldr r10, [r11, r10, lsl #2]
	cmp r10, #0
	bne label10
label9:
	ldr r11, [sp, #0]
	str r9, [r11, r2, lsl #2]
	ldr r9, [sp, #12]
	str r2, [r9, r8, lsl #2]
	ldr r11, [sp, #8]
	str r3, [r11, r2, lsl #2]
	mov r3, #0
	ldr r8, [sp, #4]
	str r7, [r8, r2, lsl #2]
	str r3, [r0, r2, lsl #2]
	b label6
.p2align 4
label11:
	add r3, r0, r10, lsl #2
	ldr r8, [r3, #0]
	str r8, [r0, r2, lsl #2]
	str r2, [r3, #0]
	ldr r8, [sp, #4]
	str r7, [r8, r2, lsl #2]
	add r1, r1, #1
	cmp r6, r1
	bgt label2
	movw r4, #:lower16:ans
	ldr r1, [sp, #16]
	movt r4, #:upper16:ans
	cmp r1, #0
	bgt label115
	b label14
