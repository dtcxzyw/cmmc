.arch armv7ve
.data
.bss
.p2align 3
e:
	.zero	1024
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	@ stack usage: CalleeArg[0] Local[128] RegSpill[4] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r3, #0
	sub sp, sp, #140
	str r3, [sp, #8]
	add r5, sp, #8
	add r4, sp, #72
	str r3, [sp, #12]
	str r3, [sp, #16]
	str r3, [sp, #20]
	str r3, [sp, #24]
	str r3, [sp, #28]
	str r3, [sp, #32]
	str r3, [sp, #36]
	str r3, [sp, #40]
	str r3, [sp, #44]
	str r3, [sp, #48]
	str r3, [sp, #52]
	str r3, [sp, #56]
	str r3, [sp, #60]
	str r3, [sp, #64]
	str r3, [sp, #68]
	str r3, [sp, #72]
	str r3, [sp, #76]
	str r3, [sp, #80]
	str r3, [sp, #84]
	str r3, [sp, #88]
	str r3, [sp, #92]
	str r3, [sp, #96]
	str r3, [sp, #100]
	str r3, [sp, #104]
	str r3, [sp, #108]
	str r3, [sp, #112]
	str r3, [sp, #116]
	str r3, [sp, #120]
	str r3, [sp, #124]
	str r3, [sp, #128]
	str r3, [sp, #132]
	bl getint
	sub r8, r0, #17
	sub r7, r0, #2
	add r3, r0, #1
	mov r6, r0
	str r3, [sp, #0]
	bl getint
	cmp r6, #0
	mov r2, r0
	ble label29
	movw r3, #:lower16:e
	movt r3, #:upper16:e
	mov r0, #1
	add r1, r3, #64
	ldr r3, [sp, #0]
	cmp r3, #4
	bgt label15
	mov r10, #1
	cmp r3, r10
	bgt label8
	b label132
.p2align 4
label177:
	mov r10, r9
	ldr r3, [sp, #0]
	cmp r3, r9
	ble label512
.p2align 4
label8:
	add r9, r1, r10, lsl #2
	mov r3, r10
.p2align 4
label9:
	movw r10, #65535
	cmp r0, r3
	moveq r10, #0
	str r10, [r9, #0]
	add r10, r3, #1
	ldr r3, [sp, #0]
	cmp r3, r10
	ble label141
	add r9, r9, #4
	mov r3, r10
	b label9
.p2align 4
label141:
	add r0, r0, #1
	ldr r3, [sp, #0]
	cmp r3, r0
	ble label29
.p2align 4
label14:
	add r1, r1, #64
	ldr r3, [sp, #0]
	cmp r3, #4
	ble label510
.p2align 4
label15:
	cmp r7, #16
	ble label152
	add r3, r1, #4
	mov r9, #1
	b label25
.p2align 4
label28:
	add r3, r3, #64
.p2align 4
label25:
	movw r10, #65535
	cmp r0, r9
	mov r11, r10
	moveq r11, #0
	str r11, [r3, #0]
	add r11, r9, #1
	cmp r0, r11
	mov r11, r10
	moveq r11, #0
	str r11, [r3, #4]
	add r11, r9, #2
	cmp r0, r11
	mov r11, r10
	moveq r11, #0
	str r11, [r3, #8]
	add r11, r9, #3
	cmp r0, r11
	mov r11, r10
	moveq r11, #0
	str r11, [r3, #12]
	add r11, r9, #4
	cmp r0, r11
	mov r11, r10
	moveq r11, #0
	str r11, [r3, #16]
	add r11, r9, #5
	cmp r0, r11
	mov r11, r10
	moveq r11, #0
	str r11, [r3, #20]
	add r11, r9, #6
	cmp r0, r11
	mov r11, r10
	moveq r11, #0
	str r11, [r3, #24]
	add r11, r9, #7
	cmp r0, r11
	mov r11, r10
	moveq r11, #0
	str r11, [r3, #28]
	add r11, r9, #8
	cmp r0, r11
	mov r11, r10
	moveq r11, #0
	str r11, [r3, #32]
	add r11, r9, #9
	cmp r0, r11
	mov r11, r10
	moveq r11, #0
	str r11, [r3, #36]
	add r11, r9, #10
	cmp r0, r11
	mov r11, r10
	moveq r11, #0
	str r11, [r3, #40]
	add r11, r9, #11
	cmp r0, r11
	mov r11, r10
	moveq r11, #0
	str r11, [r3, #44]
	add r11, r9, #12
	cmp r0, r11
	mov r11, r10
	moveq r11, #0
	str r11, [r3, #48]
	add r11, r9, #13
	cmp r0, r11
	mov r11, r10
	moveq r11, #0
	str r11, [r3, #52]
	add r11, r9, #14
	cmp r0, r11
	mov r11, r10
	moveq r11, #0
	str r11, [r3, #56]
	add r11, r9, #15
	add r9, r9, #16
	cmp r0, r11
	moveq r10, #0
	cmp r8, r9
	str r10, [r3, #60]
	bgt label28
	mov r10, r9
	cmp r7, r9
	ble label513
.p2align 4
label19:
	add r3, r1, r10, lsl #2
	mov r9, r10
.p2align 4
label20:
	movw r10, #65535
	cmp r0, r9
	mov r11, r10
	moveq r11, #0
	str r11, [r3, #0]
	add r11, r9, #1
	cmp r0, r11
	mov r11, r10
	moveq r11, #0
	str r11, [r3, #4]
	add r11, r9, #2
	cmp r0, r11
	mov r11, r10
	moveq r11, #0
	str r11, [r3, #8]
	add r11, r9, #3
	add r9, r9, #4
	cmp r0, r11
	moveq r10, #0
	cmp r7, r9
	str r10, [r3, #12]
	ble label177
	add r3, r3, #16
	b label20
label29:
	cmp r2, #0
	ble label30
	add r8, r2, #1
	mov r9, #1
.p2align 4
label77:
	bl getint
	movw r3, #:lower16:e
	movt r3, #:upper16:e
	add r10, r3, r0, lsl #6
	bl getint
	mov r11, r0
	bl getint
	add r9, r9, #1
	str r0, [r10, r11, lsl #2]
	cmp r8, r9
	bgt label77
label30:
	cmp r6, #0
	ble label31
	movw r3, #:lower16:e
	movt r3, #:upper16:e
	add r1, r3, #64
	ldr r3, [sp, #0]
	cmp r3, #4
	ble label333
	add r0, r5, #4
	mov r2, #1
.p2align 4
label65:
	add r8, r1, r2, lsl #2
	add r9, r4, r2, lsl #2
	ldr r3, [r8, #0]
	add r2, r2, #4
	cmp r7, r2
	str r3, [r9, #0]
	mov r3, #0
	str r3, [r0, #0]
	ldr r10, [r8, #4]
	str r10, [r9, #4]
	str r3, [r0, #4]
	ldr r10, [r8, #8]
	str r10, [r9, #8]
	str r3, [r0, #8]
	ldr r8, [r8, #12]
	str r8, [r9, #12]
	str r3, [r0, #12]
	ble label69
	add r0, r0, #16
	b label65
label152:
	mov r10, #1
	mov r3, #0
	mov r9, r3
	cmp r7, r10
	bgt label19
	mov r10, r3
	ldr r3, [sp, #0]
	cmp r3, r9
	bgt label8
	add r0, r0, #1
	cmp r3, r0
	bgt label14
	b label29
.p2align 4
label513:
	mov r10, r9
	ldr r3, [sp, #0]
	cmp r3, r9
	bgt label8
	add r0, r0, #1
	cmp r3, r0
	bgt label14
	b label29
label510:
	mov r10, #1
	ldr r3, [sp, #0]
	cmp r3, r10
	bgt label8
label132:
	add r0, r0, #1
	ldr r3, [sp, #0]
	cmp r3, r0
	bgt label14
	b label29
label69:
	ldr r3, [sp, #0]
	cmp r3, r2
	ble label31
	add r0, r1, r2, lsl #2
	mov r1, r2
	b label72
label75:
	add r0, r0, #4
label72:
	ldr r2, [r0, #0]
	mov r3, #0
	str r2, [r4, r1, lsl #2]
	str r3, [r5, r1, lsl #2]
	ldr r3, [sp, #0]
	add r1, r1, #1
	cmp r3, r1
	bgt label75
label31:
	subs r0, r6, #1
	mov r0, #1
	str r0, [sp, #12]
	ble label32
	b label39
.p2align 4
label524:
	add r0, r0, #1
	cmp r6, r0
	ble label32
.p2align 4
label39:
	cmp r6, #0
	ble label274
	add r1, r4, #4
	mov r2, #1
	mov r3, #0
	movw r7, #65535
	mov r8, r3
	ldr r3, [r1, #0]
	cmp r7, r3
	bgt label62
	add r2, r2, #1
	ldr r3, [sp, #0]
	cmp r3, r2
	bgt label61
	mov r1, r8
	mov r2, #1
	movw r3, #:lower16:e
	movt r3, #:upper16:e
	cmp r6, #0
	str r2, [r5, r8, lsl #2]
	add r2, r3, r8, lsl #6
	bgt label43
	b label51
.p2align 4
label62:
	ldr r9, [r5, r2, lsl #2]
	cmp r9, #0
	moveq r8, r2
	moveq r7, r3
	ldr r3, [sp, #0]
	add r2, r2, #1
	cmp r3, r2
	ble label520
.p2align 4
label61:
	add r1, r1, #4
	ldr r3, [r1, #0]
	cmp r7, r3
	bgt label62
	add r2, r2, #1
	ldr r3, [sp, #0]
	cmp r3, r2
	bgt label61
	mov r1, r8
	mov r2, #1
	movw r3, #:lower16:e
	movt r3, #:upper16:e
	cmp r6, #0
	str r2, [r5, r8, lsl #2]
	add r2, r3, r8, lsl #6
	bgt label43
	b label51
.p2align 4
label520:
	mov r1, r8
	mov r2, #1
	movw r3, #:lower16:e
	movt r3, #:upper16:e
	cmp r6, #0
	str r2, [r5, r8, lsl #2]
	add r2, r3, r8, lsl #6
	ble label51
.p2align 4
label43:
	add r2, r2, #4
	mov r3, #1
	ldr r7, [r2, #0]
	movw r8, #65535
	cmp r7, r8
	blt label49
	add r7, r3, #1
	ldr r3, [sp, #0]
	cmp r3, r7
	bgt label48
	add r0, r0, #1
	cmp r6, r0
	bgt label39
	b label32
.p2align 4
label515:
	add r7, r3, #1
	ldr r3, [sp, #0]
	cmp r3, r7
	ble label524
.p2align 4
label48:
	add r2, r2, #4
	mov r3, r7
	movw r8, #65535
	ldr r7, [r2, #0]
	cmp r7, r8
	bge label515
.p2align 4
label49:
	ldr r8, [r4, r3, lsl #2]
	ldr r9, [r4, r1, lsl #2]
	add r7, r7, r9
	cmp r8, r7
	bgt label50
	add r7, r3, #1
	ldr r3, [sp, #0]
	cmp r3, r7
	bgt label48
	add r0, r0, #1
	cmp r6, r0
	bgt label39
label32:
	cmp r6, #0
	ble label38
	add r4, r4, #4
	mov r5, #1
.p2align 4
label34:
	ldr r0, [r4, #0]
	bl putint
	mov r0, #32
	bl putch
	ldr r3, [sp, #0]
	add r5, r5, #1
	cmp r3, r5
	ble label38
	add r4, r4, #4
	b label34
.p2align 4
label50:
	str r7, [r4, r3, lsl #2]
	add r7, r3, #1
	ldr r3, [sp, #0]
	cmp r3, r7
	bgt label48
	add r0, r0, #1
	cmp r6, r0
	bgt label39
	b label32
label38:
	mov r0, #10
	bl putch
	add sp, sp, #140
	mov r3, #0
	mov r0, r3
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label274:
	mov r3, #0
	mov r1, r3
	mov r2, #1
	movw r3, #:lower16:e
	movt r3, #:upper16:e
	cmp r6, #0
	str r2, [r5, r1, lsl #2]
	add r2, r3, r1, lsl #6
	bgt label43
label51:
	add r0, r0, #1
	cmp r6, r0
	bgt label39
	b label32
.p2align 4
label512:
	add r0, r0, #1
	ldr r3, [sp, #0]
	cmp r3, r0
	bgt label14
	b label29
label333:
	mov r2, #1
	b label69
