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
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #36
	bl getint
	movw r4, #:lower16:keys
	str r0, [sp, #0]
	mov r7, r0
	movt r4, #:upper16:keys
	mov r0, r4
	bl getarray
	movw r5, #:lower16:values
	mov r6, r0
	movt r5, #:upper16:values
	mov r0, r5
	bl getarray
	movw r3, #:lower16:requests
	movt r3, #:upper16:requests
	str r3, [sp, #8]
	mov r0, r3
	bl getarray
	str r0, [sp, #4]
	mov r2, r0
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
	str r11, [sp, #16]
	movw r11, #:lower16:next
	str r8, [sp, #20]
	movt r11, #:upper16:next
	str r11, [sp, #24]
	bgt label50
	ldr r2, [sp, #4]
	cmp r2, #0
	bgt label16
	b label15
label50:
	mov r3, #0
	mov r1, r3
	b label2
label16:
	movw r1, #:lower16:ans
	mov r2, #0
	movt r1, #:upper16:ans
	ldr r3, [sp, #8]
	ldr r3, [r3, r2, lsl #2]
	ldr r7, [sp, #0]
	ldr r9, [sp, #12]
	sdiv r4, r3, r7
	mls r4, r4, r7, r3
	ldr r4, [r9, r4, lsl #2]
.p2align 4
label19:
	cmp r4, #0
	bne label21
	mov r3, #0
	add r4, r2, #1
	str r3, [r1, r2, lsl #2]
	ldr r2, [sp, #4]
	cmp r2, r4
	bgt label160
	b label15
.p2align 4
label23:
	ldr r8, [sp, #20]
	ldr r5, [r8, r4, lsl #2]
	ldr r4, [r0, r4, lsl #2]
	add r3, r3, r5
	cmp r4, #0
	bne label23
	add r4, r2, #1
	str r3, [r1, r2, lsl #2]
	ldr r2, [sp, #4]
	cmp r2, r4
	ble label15
label160:
	mov r2, r4
	ldr r3, [sp, #8]
	ldr r3, [r3, r4, lsl #2]
	ldr r7, [sp, #0]
	ldr r9, [sp, #12]
	sdiv r4, r3, r7
	mls r4, r4, r7, r3
	ldr r4, [r9, r4, lsl #2]
	b label19
label15:
	mov r0, #90
	bl _sysy_stoptime
	ldr r2, [sp, #4]
	movw r1, #:lower16:ans
	movt r1, #:upper16:ans
	mov r0, r2
	bl putarray
	add sp, sp, #36
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label21:
	ldr r11, [sp, #16]
	ldr r5, [r11, r4, lsl #2]
	cmp r3, r5
	beq label139
	ldr r11, [sp, #24]
	ldr r4, [r11, r4, lsl #2]
	cmp r4, #0
	bne label21
	mov r3, #0
	add r4, r2, #1
	str r3, [r1, r2, lsl #2]
	ldr r2, [sp, #4]
	cmp r2, r4
	bgt label160
	b label15
.p2align 4
label139:
	mov r3, #0
	ldr r8, [sp, #20]
	ldr r5, [r8, r4, lsl #2]
	ldr r4, [r0, r4, lsl #2]
	add r3, r3, r5
	cmp r4, #0
	bne label23
	add r4, r2, #1
	str r3, [r1, r2, lsl #2]
	ldr r2, [sp, #4]
	cmp r2, r4
	bgt label160
	b label15
.p2align 4
label2:
	ldr r2, [r4, r1, lsl #2]
	ldr r7, [sp, #0]
	sdiv r8, r2, r7
	mls r8, r8, r7, r2
	ldr r7, [r5, r1, lsl #2]
	ldr r9, [sp, #12]
	ldr r9, [r9, r8, lsl #2]
	cmp r9, #0
	beq label5
	mov r10, r9
	bne label11
	b label10
.p2align 4
label5:
	add r3, r3, #1
	ldr r9, [sp, #12]
	str r3, [r9, r8, lsl #2]
	ldr r11, [sp, #16]
	str r2, [r11, r3, lsl #2]
	mov r2, #0
	ldr r8, [sp, #20]
	str r7, [r8, r3, lsl #2]
	ldr r11, [sp, #24]
	str r2, [r11, r3, lsl #2]
	str r2, [r0, r3, lsl #2]
.p2align 4
label6:
	add r1, r1, #1
	cmp r6, r1
	bgt label2
	ldr r2, [sp, #4]
	cmp r2, #0
	bgt label16
	b label15
label10:
	add r3, r3, #1
	ldr r11, [sp, #24]
	str r9, [r11, r3, lsl #2]
	ldr r9, [sp, #12]
	str r3, [r9, r8, lsl #2]
	ldr r11, [sp, #16]
	str r2, [r11, r3, lsl #2]
	mov r2, #0
	ldr r8, [sp, #20]
	str r7, [r8, r3, lsl #2]
	str r2, [r0, r3, lsl #2]
	b label6
.p2align 4
label11:
	ldr r11, [sp, #16]
	ldr r11, [r11, r10, lsl #2]
	cmp r2, r11
	beq label12
	ldr r11, [sp, #24]
	ldr r10, [r11, r10, lsl #2]
	cmp r10, #0
	bne label11
	b label10
.p2align 4
label12:
	add r3, r3, #1
	ldr r2, [r0, r10, lsl #2]
	str r2, [r0, r3, lsl #2]
	str r3, [r0, r10, lsl #2]
	ldr r8, [sp, #20]
	str r7, [r8, r3, lsl #2]
	add r1, r1, #1
	cmp r6, r1
	bgt label2
	ldr r2, [sp, #4]
	cmp r2, #0
	bgt label16
	b label15
