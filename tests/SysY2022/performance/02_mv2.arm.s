.arch armv7ve
.data
.bss
.align 8
A:
	.zero	16160400
.align 8
B:
	.zero	8040
.align 8
C:
	.zero	8040
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[8] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #12
	bl getint
	mov r8, #0
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	movw r6, #:lower16:B
	movt r6, #:upper16:B
	sub r3, r0, #3
	movw r5, #:lower16:C
	movt r5, #:upper16:C
	mov r4, r0
	str r3, [sp, #4]
	mov r7, r2
	sub r3, r0, #18
	str r3, [sp, #0]
	cmp r0, r8
	bgt label5
	b label11
.p2align 4
label117:
	add r8, r8, #1
	movw r0, #8040
	cmp r4, r8
	add r7, r7, r0
	ble label11
.p2align 4
label5:
	mov r9, r7
	mov r10, #0
.p2align 4
label6:
	bl getint
	str r0, [r9, #0]
	add r0, r10, #1
	cmp r4, r0
	ble label117
	add r9, r9, #4
	mov r10, r0
	b label6
label11:
	cmp r4, #0
	ble label17
	mov r7, r6
	mov r8, #0
	b label13
.p2align 4
label16:
	add r7, r7, #4
	mov r8, r0
.p2align 4
label13:
	bl getint
	str r0, [r7, #0]
	add r0, r8, #1
	cmp r4, r0
	bgt label16
label17:
	mov r0, #59
	bl _sysy_starttime
	mov r0, #0
	b label18
.p2align 4
label390:
	add r0, r0, #1
	cmp r0, #50
	bge label80
.p2align 4
label18:
	cmp r4, #0
	ble label20
	cmp r4, #3
	ble label137
	ldr r3, [sp, #4]
	cmp r3, #15
	ble label152
	mov r1, r5
	mov r2, #0
.p2align 4
label33:
	add r2, r2, #16
	mov r3, #0
	str r3, [r1, #0]
	str r3, [r1, #4]
	str r3, [r1, #8]
	str r3, [r1, #12]
	str r3, [r1, #16]
	str r3, [r1, #20]
	str r3, [r1, #24]
	str r3, [r1, #28]
	str r3, [r1, #32]
	str r3, [r1, #36]
	str r3, [r1, #40]
	str r3, [r1, #44]
	str r3, [r1, #48]
	str r3, [r1, #52]
	str r3, [r1, #56]
	str r3, [r1, #60]
	ldr r3, [sp, #0]
	cmp r3, r2
	ble label172
	add r1, r1, #64
	b label33
.p2align 4
label172:
	mov r7, r2
	ldr r3, [sp, #4]
	cmp r3, r2
	ble label366
.p2align 4
label40:
	add r1, r5, r7, lsl #2
	mov r2, r7
.p2align 4
label41:
	add r2, r2, #4
	mov r3, #0
	str r3, [r1, #0]
	str r3, [r1, #4]
	str r3, [r1, #8]
	str r3, [r1, #12]
	ldr r3, [sp, #4]
	cmp r3, r2
	ble label187
	add r1, r1, #16
	b label41
.p2align 4
label187:
	cmp r4, r2
	ble label368
.p2align 4
label25:
	add r1, r5, r2, lsl #2
.p2align 4
label26:
	add r2, r2, #1
	mov r3, #0
	cmp r4, r2
	str r3, [r1, #0]
	ble label29
	add r1, r1, #4
	b label26
.p2align 4
label29:
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r5
	mov r3, #0
	cmp r4, r3
	bgt label90
	b label49
.p2align 4
label297:
	add r3, r3, #1
	add r1, r1, #4
	movw r7, #8040
	cmp r4, r3
	add r2, r2, r7
	ble label379
.p2align 4
label90:
	cmp r4, #0
	ble label91
	mov r7, r2
	mov r8, #0
	ldr r9, [r2, #0]
	cmp r9, #0
	beq label96
	ldr r10, [r1, #0]
	ldr r11, [r6, r8, lsl #2]
	mla r9, r9, r11, r10
	str r9, [r1, #0]
.p2align 4
label96:
	add r8, r8, #1
	cmp r4, r8
	ble label297
.p2align 4
label97:
	add r7, r7, #4
	ldr r9, [r7, #0]
	cmp r9, #0
	beq label96
	ldr r10, [r1, #0]
	ldr r11, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	mla r9, r9, r11, r10
	str r9, [r1, #0]
	bgt label97
	add r3, r3, #1
	add r1, r1, #4
	movw r7, #8040
	cmp r4, r3
	add r2, r2, r7
	bgt label90
	cmp r4, #0
	bgt label51
	b label50
.p2align 4
label379:
	cmp r4, #0
	ble label50
.p2align 4
label51:
	cmp r4, #3
	ble label198
	ldr r3, [sp, #4]
	cmp r3, #15
	ble label201
	mov r1, r6
	mov r2, #0
.p2align 4
label54:
	add r2, r2, #16
	mov r3, #0
	str r3, [r1, #0]
	str r3, [r1, #4]
	str r3, [r1, #8]
	str r3, [r1, #12]
	str r3, [r1, #16]
	str r3, [r1, #20]
	str r3, [r1, #24]
	str r3, [r1, #28]
	str r3, [r1, #32]
	str r3, [r1, #36]
	str r3, [r1, #40]
	str r3, [r1, #44]
	str r3, [r1, #48]
	str r3, [r1, #52]
	str r3, [r1, #56]
	str r3, [r1, #60]
	ldr r3, [sp, #0]
	cmp r3, r2
	ble label221
	add r1, r1, #64
	b label54
.p2align 4
label91:
	add r3, r3, #1
	add r1, r1, #4
	movw r7, #8040
	cmp r4, r3
	add r2, r2, r7
	bgt label90
label49:
	cmp r4, #0
	bgt label51
	b label50
.p2align 4
label221:
	mov r7, r2
	ldr r3, [sp, #4]
	cmp r3, r2
	ble label371
.p2align 4
label61:
	add r1, r6, r7, lsl #2
	mov r2, r7
	b label62
.p2align 4
label65:
	add r1, r1, #16
.p2align 4
label62:
	add r2, r2, #4
	mov r3, #0
	str r3, [r1, #0]
	str r3, [r1, #4]
	str r3, [r1, #8]
	str r3, [r1, #12]
	ldr r3, [sp, #4]
	cmp r3, r2
	bgt label65
	cmp r4, r2
	ble label373
.p2align 4
label68:
	add r1, r6, r2, lsl #2
.p2align 4
label69:
	add r2, r2, #1
	mov r3, #0
	cmp r4, r2
	str r3, [r1, #0]
	ble label248
	add r1, r1, #4
	b label69
label137:
	mov r2, #0
	cmp r4, r2
	bgt label25
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r5
	mov r3, #0
	cmp r4, r3
	bgt label90
	b label49
.p2align 4
label366:
	cmp r4, r2
	bgt label25
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r5
	mov r3, #0
	cmp r4, r3
	bgt label90
	b label49
.p2align 4
label371:
	cmp r4, r2
	bgt label68
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r6
	mov r3, #0
	cmp r4, r3
	bgt label81
	b label79
.p2align 4
label271:
	add r3, r3, #1
	add r1, r1, #4
	movw r7, #8040
	cmp r4, r3
	add r2, r2, r7
	ble label390
.p2align 4
label81:
	cmp r4, #0
	ble label261
	mov r7, r2
	mov r8, #0
	ldr r9, [r2, #0]
	cmp r9, #0
	bne label266
.p2align 4
label86:
	add r8, r8, #1
	cmp r4, r8
	ble label271
.p2align 4
label87:
	add r7, r7, #4
	ldr r9, [r7, #0]
	cmp r9, #0
	beq label86
	ldr r10, [r1, #0]
	ldr r11, [r5, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	mla r9, r9, r11, r10
	str r9, [r1, #0]
	bgt label87
	add r3, r3, #1
	add r1, r1, #4
	movw r7, #8040
	cmp r4, r3
	add r2, r2, r7
	bgt label81
	add r0, r0, #1
	cmp r0, #50
	blt label18
	b label80
label198:
	mov r2, #0
	cmp r4, r2
	bgt label68
label50:
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r6
	mov r3, #0
	cmp r4, r3
	bgt label81
	b label79
label20:
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r5
	mov r3, #0
	cmp r4, r3
	bgt label90
	b label49
.p2align 4
label261:
	add r3, r3, #1
	add r1, r1, #4
	movw r7, #8040
	cmp r4, r3
	add r2, r2, r7
	bgt label81
label79:
	add r0, r0, #1
	cmp r0, #50
	blt label18
	b label80
label152:
	mov r7, #0
	ldr r3, [sp, #4]
	mov r2, r7
	cmp r3, r7
	bgt label40
	cmp r4, r7
	bgt label25
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r5
	mov r3, #0
	cmp r4, r3
	bgt label90
	b label49
label201:
	mov r7, #0
	ldr r3, [sp, #4]
	mov r2, r7
	cmp r3, r7
	bgt label61
	cmp r4, r7
	bgt label68
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r6
	mov r3, #0
	cmp r4, r3
	bgt label81
	b label79
.p2align 4
label248:
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r6
	mov r3, #0
	cmp r4, r3
	bgt label81
	b label79
label80:
	mov r0, #67
	bl _sysy_stoptime
	mov r0, r4
	mov r1, r5
	bl putarray
	add sp, sp, #12
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label368:
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r5
	mov r3, #0
	cmp r4, r3
	bgt label90
	b label49
.p2align 4
label373:
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r6
	mov r3, #0
	cmp r4, r3
	bgt label81
	b label79
.p2align 4
label266:
	ldr r10, [r1, #0]
	ldr r11, [r5, r8, lsl #2]
	mla r9, r9, r11, r10
	str r9, [r1, #0]
	b label86
