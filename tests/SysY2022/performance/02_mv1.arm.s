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
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #12
	bl getint
	mov r8, #0
	movw r5, #:lower16:C
	movt r5, #:upper16:C
	movw r6, #:lower16:B
	movt r6, #:upper16:B
	sub r2, r0, #18
	sub r3, r0, #3
	mov r4, r0
	str r3, [sp, #4]
	str r2, [sp, #0]
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r7, r2
	cmp r0, r8
	bgt label5
	b label11
.p2align 4
label9:
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
	ble label9
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
label370:
	add r0, r0, #1
	cmp r0, #50
	bge label55
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
	mov r3, #0
.p2align 4
label33:
	mov r2, #0
	add r3, r3, #16
	str r2, [r1, #0]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #12]
	str r2, [r1, #16]
	str r2, [r1, #20]
	str r2, [r1, #24]
	str r2, [r1, #28]
	str r2, [r1, #32]
	str r2, [r1, #36]
	str r2, [r1, #40]
	str r2, [r1, #44]
	str r2, [r1, #48]
	str r2, [r1, #52]
	str r2, [r1, #56]
	str r2, [r1, #60]
	ldr r2, [sp, #0]
	cmp r2, r3
	ble label172
	add r1, r1, #64
	b label33
.p2align 4
label172:
	mov r2, r3
	mov r1, r3
	ldr r3, [sp, #4]
	cmp r3, r2
	ble label366
.p2align 4
label40:
	add r1, r5, r2, lsl #2
	b label41
.p2align 4
label44:
	add r1, r1, #16
.p2align 4
label41:
	mov r3, #0
	add r2, r2, #4
	str r3, [r1, #0]
	str r3, [r1, #4]
	str r3, [r1, #8]
	str r3, [r1, #12]
	ldr r3, [sp, #4]
	cmp r3, r2
	bgt label44
	cmp r4, r2
	ble label368
.p2align 4
label25:
	add r1, r5, r2, lsl #2
	b label26
.p2align 4
label29:
	add r1, r1, #4
.p2align 4
label26:
	mov r3, #0
	add r2, r2, #1
	str r3, [r1, #0]
	cmp r4, r2
	bgt label29
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r5
	cmp r4, r3
	bgt label90
	b label49
.p2align 4
label303:
	add r3, r3, #1
	add r1, r1, #4
	movw r7, #8040
	cmp r4, r3
	add r2, r2, r7
	ble label378
.p2align 4
label90:
	cmp r4, #0
	ble label91
	mov r7, r2
	mov r8, #0
	ldr r9, [r2, #0]
	cmp r9, #0
	beq label97
	ldr r10, [r1, #0]
	ldr r11, [r6, r8, lsl #2]
	mla r9, r9, r11, r10
	str r9, [r1, #0]
.p2align 4
label97:
	add r8, r8, #1
	cmp r4, r8
	ble label303
.p2align 4
label98:
	add r7, r7, #4
	ldr r9, [r7, #0]
	cmp r9, #0
	beq label97
	ldr r10, [r1, #0]
	ldr r11, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	mla r9, r9, r11, r10
	str r9, [r1, #0]
	bgt label98
	add r3, r3, #1
	add r1, r1, #4
	movw r7, #8040
	cmp r4, r3
	add r2, r2, r7
	bgt label90
	cmp r4, #0
	bgt label65
	b label195
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
	bgt label65
	b label195
.p2align 4
label378:
	cmp r4, #0
	ble label195
.p2align 4
label65:
	cmp r4, #3
	ble label230
	ldr r3, [sp, #4]
	cmp r3, #15
	ble label245
	mov r1, r6
	mov r3, #0
	b label85
.p2align 4
label88:
	add r1, r1, #64
.p2align 4
label85:
	mov r2, #0
	add r3, r3, #16
	str r2, [r1, #0]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #12]
	str r2, [r1, #16]
	str r2, [r1, #20]
	str r2, [r1, #24]
	str r2, [r1, #28]
	str r2, [r1, #32]
	str r2, [r1, #36]
	str r2, [r1, #40]
	str r2, [r1, #44]
	str r2, [r1, #48]
	str r2, [r1, #52]
	str r2, [r1, #56]
	str r2, [r1, #60]
	ldr r2, [sp, #0]
	cmp r2, r3
	bgt label88
	mov r2, r3
	mov r1, r3
	ldr r3, [sp, #4]
	cmp r3, r2
	ble label376
.p2align 4
label79:
	add r1, r6, r2, lsl #2
.p2align 4
label80:
	mov r3, #0
	add r2, r2, #4
	str r3, [r1, #0]
	str r3, [r1, #4]
	str r3, [r1, #8]
	str r3, [r1, #12]
	ldr r3, [sp, #4]
	cmp r3, r2
	ble label259
	add r1, r1, #16
	b label80
.p2align 4
label259:
	cmp r4, r2
	ble label375
.p2align 4
label68:
	add r1, r6, r2, lsl #2
.p2align 4
label69:
	mov r3, #0
	add r2, r2, #1
	str r3, [r1, #0]
	cmp r4, r2
	ble label241
	add r1, r1, #4
	b label69
label230:
	mov r2, #0
	cmp r4, r2
	bgt label68
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r6
	mov r3, #0
	cmp r4, r3
	bgt label56
	b label54
.p2align 4
label226:
	add r3, r3, #1
	add r1, r1, #4
	movw r7, #8040
	cmp r4, r3
	add r2, r2, r7
	ble label370
.p2align 4
label56:
	cmp r4, #0
	ble label57
	mov r7, r2
	mov r8, #0
	ldr r9, [r2, #0]
	cmp r9, #0
	beq label63
	ldr r10, [r1, #0]
	ldr r11, [r5, r8, lsl #2]
	mla r9, r9, r11, r10
	str r9, [r1, #0]
.p2align 4
label63:
	add r8, r8, #1
	cmp r4, r8
	ble label226
.p2align 4
label64:
	add r7, r7, #4
	ldr r9, [r7, #0]
	cmp r9, #0
	beq label63
	ldr r10, [r1, #0]
	ldr r11, [r5, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	mla r9, r9, r11, r10
	str r9, [r1, #0]
	bgt label64
	add r3, r3, #1
	add r1, r1, #4
	movw r7, #8040
	cmp r4, r3
	add r2, r2, r7
	bgt label56
	add r0, r0, #1
	cmp r0, #50
	blt label18
	b label55
.p2align 4
label57:
	add r3, r3, #1
	add r1, r1, #4
	movw r7, #8040
	cmp r4, r3
	add r2, r2, r7
	bgt label56
label54:
	add r0, r0, #1
	cmp r0, #50
	blt label18
	b label55
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
label245:
	mov r2, #0
	mov r1, r2
	ldr r3, [sp, #4]
	cmp r3, r2
	bgt label79
	cmp r4, r2
	bgt label68
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r6
	mov r3, #0
	cmp r4, r3
	bgt label56
	b label54
.p2align 4
label376:
	mov r2, r1
	cmp r4, r1
	bgt label68
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r6
	mov r3, #0
	cmp r4, r3
	bgt label56
	b label54
.p2align 4
label366:
	mov r2, r1
	cmp r4, r1
	bgt label25
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r5
	mov r3, #0
	cmp r4, r3
	bgt label90
	b label49
label195:
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r6
	mov r3, #0
	cmp r4, r3
	bgt label56
	b label54
label20:
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r5
	mov r3, #0
	cmp r4, r3
	bgt label90
	b label49
label152:
	mov r2, #0
	ldr r3, [sp, #4]
	mov r1, r2
	cmp r3, r2
	bgt label40
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
label241:
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r6
	mov r3, #0
	cmp r4, r3
	bgt label56
	b label54
label55:
	mov r0, #67
	bl _sysy_stoptime
	mov r0, r4
	mov r1, r5
	bl putarray
	add sp, sp, #12
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label375:
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r6
	mov r3, #0
	cmp r4, r3
	bgt label56
	b label54
.p2align 4
label368:
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r5
	mov r3, #0
	cmp r4, r3
	bgt label90
	b label49
