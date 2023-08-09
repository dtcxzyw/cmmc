.arch armv7ve
.data
.bss
.align 8
a:
	.zero	40000
.align 8
b:
	.zero	40000
.align 8
res:
	.zero	40000
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[20] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #28
	bl getint
	str r0, [sp, #16]
	bl getint
	mov r6, #0
	movw r4, #:lower16:a
	movt r4, #:upper16:a
	str r0, [sp, #12]
	sub r7, r0, #3
	mov r8, r0
	mov r5, r4
	str r7, [sp, #4]
	ldr r0, [sp, #16]
	cmp r0, r6
	bgt label59
	b label5
.p2align 4
label65:
	add r7, r7, #4
	mov r8, r0
.p2align 4
label62:
	bl getint
	str r0, [r7, #0]
	add r0, r8, #1
	ldr r8, [sp, #12]
	cmp r8, r0
	bgt label65
	add r6, r6, #1
	add r5, r5, #400
	ldr r0, [sp, #16]
	cmp r0, r6
	ble label5
.p2align 4
label59:
	ldr r8, [sp, #12]
	cmp r8, #0
	ble label60
	mov r7, r5
	mov r8, #0
	b label62
label5:
	bl getint
	mov r5, r0
	bl getint
	mov r6, #0
	movw r8, #:lower16:b
	movt r8, #:upper16:b
	str r0, [sp, #8]
	mov r7, r0
	cmp r5, r6
	bgt label52
	b label9
.p2align 4
label58:
	add r9, r9, #4
	mov r7, r0
.p2align 4
label55:
	bl getint
	str r0, [r9, #0]
	add r0, r7, #1
	ldr r7, [sp, #8]
	cmp r7, r0
	bgt label58
	add r6, r6, #1
	add r8, r8, #400
	cmp r5, r6
	ble label9
.p2align 4
label52:
	ldr r7, [sp, #8]
	cmp r7, #0
	ble label53
	mov r9, r8
	mov r7, #0
	b label55
label9:
	mov r7, r4
	str r4, [sp, #0]
	mov r2, #0
	movw r4, #:lower16:res
	movt r4, #:upper16:res
	mov r1, r4
	ldr r0, [sp, #16]
	cmp r0, r2
	bgt label26
	b label14
.p2align 4
label222:
	add r2, r2, #1
	add r1, r1, #400
	ldr r7, [sp, #0]
	add r7, r7, #400
	str r7, [sp, #0]
	ldr r0, [sp, #16]
	cmp r0, r2
	ble label14
.p2align 4
label26:
	mov r3, r1
	mov r0, #0
	ldr r7, [sp, #8]
	cmp r7, r0
	bgt label31
label30:
	add r2, r2, #1
	add r1, r1, #400
	ldr r7, [sp, #0]
	add r7, r7, #400
	str r7, [sp, #0]
	ldr r0, [sp, #16]
	cmp r0, r2
	bgt label26
	b label14
.p2align 4
label138:
	str r5, [r3, #0]
	add r0, r0, #1
	ldr r7, [sp, #8]
	add r3, r3, #4
	cmp r7, r0
	ble label222
.p2align 4
label31:
	ldr r8, [sp, #12]
	cmp r8, #0
	ble label114
	ldr r6, [r3, #0]
	cmp r8, #3
	ble label119
	ldr r7, [sp, #0]
	mov r5, #0
	mov r4, r7
.p2align 4
label46:
	mov r7, #400
	movw r8, #:lower16:b
	movt r8, #:upper16:b
	mla r7, r5, r7, r8
	add r5, r5, #4
	ldr r8, [r4, #0]
	add r7, r7, r0, lsl #2
	ldr r9, [r7, #0]
	ldr r10, [r4, #4]
	ldr r11, [r7, #400]
	mul r10, r10, r11
	mla r8, r8, r9, r10
	ldr r9, [r4, #8]
	ldr r10, [r7, #800]
	mla r8, r9, r10, r8
	ldr r9, [r4, #12]
	ldr r7, [r7, #1200]
	mla r7, r9, r7, r8
	add r6, r6, r7
	ldr r7, [sp, #4]
	cmp r7, r5
	ble label170
	add r4, r4, #16
	b label46
.p2align 4
label170:
	mov r7, r5
	ldr r8, [sp, #12]
	mov r5, r6
	cmp r8, r7
	ble label214
.p2align 4
label39:
	mov r4, #400
	movw r8, #:lower16:b
	movt r8, #:upper16:b
	mov r6, r7
	mla r4, r7, r4, r8
.p2align 4
label40:
	ldr r7, [sp, #0]
	ldr r7, [r7, r6, lsl #2]
	add r6, r6, #1
	ldr r8, [r4, r0, lsl #2]
	mla r5, r7, r8, r5
	ldr r8, [sp, #12]
	cmp r8, r6
	ble label138
	add r4, r4, #400
	b label40
.p2align 4
label119:
	mov r7, #0
	mov r5, r6
	mov r6, r7
	ldr r8, [sp, #12]
	cmp r8, r7
	bgt label39
	mov r5, r7
	str r7, [r3, #0]
	add r0, r0, #1
	ldr r7, [sp, #8]
	add r3, r3, #4
	cmp r7, r0
	bgt label31
	add r2, r2, #1
	add r1, r1, #400
	ldr r7, [sp, #0]
	add r7, r7, #400
	str r7, [sp, #0]
	ldr r0, [sp, #16]
	cmp r0, r2
	bgt label26
	b label14
.p2align 4
label214:
	mov r5, r6
	str r6, [r3, #0]
	add r0, r0, #1
	ldr r7, [sp, #8]
	add r3, r3, #4
	cmp r7, r0
	bgt label31
	add r2, r2, #1
	add r1, r1, #400
	ldr r7, [sp, #0]
	add r7, r7, #400
	str r7, [sp, #0]
	ldr r0, [sp, #16]
	cmp r0, r2
	bgt label26
label14:
	movw r4, #:lower16:res
	movt r4, #:upper16:res
	mov r5, #0
	ldr r0, [sp, #16]
	cmp r0, r5
	bgt label18
	b label25
.p2align 4
label24:
	mov r0, #10
	bl putch
	ldr r0, [sp, #16]
	add r4, r4, #400
	add r5, r5, #1
	cmp r0, r5
	ble label25
.p2align 4
label18:
	ldr r7, [sp, #8]
	cmp r7, #0
	ble label24
	mov r6, r4
	mov r7, #0
.p2align 4
label20:
	ldr r0, [r6, #0]
	bl putint
	mov r0, #32
	bl putch
	add r0, r7, #1
	ldr r7, [sp, #8]
	cmp r7, r0
	ble label24
	add r6, r6, #4
	mov r7, r0
	b label20
label25:
	mov r0, #0
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label60:
	add r6, r6, #1
	add r5, r5, #400
	ldr r0, [sp, #16]
	cmp r0, r6
	bgt label59
	b label5
label53:
	add r6, r6, #1
	add r8, r8, #400
	cmp r5, r6
	bgt label52
	b label9
.p2align 4
label114:
	add r0, r0, #1
	add r3, r3, #4
	ldr r7, [sp, #8]
	cmp r7, r0
	bgt label31
	b label30
