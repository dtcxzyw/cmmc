.arch armv7ve
.data
.bss
.align 8
A:
	.zero	4194304
.align 8
B:
	.zero	4194304
.align 8
C:
	.zero	4194304
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #28
	bl getint
	mov r6, r0
	str r0, [sp, #8]
	sub r7, r0, #4
	sub r4, r0, #20
	movw r5, #:lower16:A
	str r7, [sp, #12]
	movw r6, #:lower16:B
	movt r5, #:upper16:A
	str r4, [sp, #16]
	movt r6, #:upper16:B
	mov r4, #0
	str r6, [sp, #4]
	str r5, [sp, #0]
label2:
	ldr r6, [sp, #8]
	cmp r6, r4
	bgt label4
label99:
	mov r4, #0
	b label9
.p2align 4
label4:
	ldr r6, [sp, #8]
	cmp r6, #0
	ble label102
	ldr r5, [sp, #0]
	mov r6, #0
	add r5, r5, r4, lsl #12
	b label6
.p2align 4
label112:
	add r4, r4, #1
	ldr r6, [sp, #8]
	cmp r6, r4
	bgt label4
	b label99
label9:
	ldr r6, [sp, #8]
	cmp r6, r4
	ble label16
.p2align 4
label11:
	ldr r6, [sp, #8]
	cmp r6, #0
	ble label12
	ldr r6, [sp, #4]
	add r5, r6, r4, lsl #12
	mov r6, #0
.p2align 4
label14:
	bl getint
	str r0, [r5, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #8]
	cmp r6, r0
	bgt label132
	add r4, r4, #1
	cmp r6, r4
	bgt label11
	b label16
.p2align 4
label132:
	mov r6, r0
	b label14
.p2align 4
label6:
	bl getint
	str r0, [r5, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #8]
	cmp r6, r0
	ble label112
	mov r6, r0
	b label6
label12:
	add r4, r4, #1
	ldr r6, [sp, #8]
	cmp r6, r4
	bgt label11
label16:
	mov r0, #65
	bl _sysy_starttime
	mov r1, #0
	movw r0, #:lower16:C
	movt r0, #:upper16:C
label17:
	mov r2, #0
	ldr r6, [sp, #8]
	cmp r6, r2
	bgt label78
	b label137
label581:
	mov r4, #0
	mov r0, r4
	b label39
.p2align 4
label221:
	mov r4, #0
	ldr r6, [sp, #8]
	cmp r6, r4
	bgt label59
	b label582
label39:
	ldr r6, [sp, #8]
	cmp r6, r0
	bgt label43
	b label42
.p2align 4
label59:
	ldr r5, [sp, #0]
	add r5, r5, r4, lsl #12
	ldr r5, [r5, r3, lsl #2]
	cmp r5, #0
	beq label66
	ldr r6, [sp, #8]
	cmp r6, #0
	bgt label61
	b label338
.p2align 4
label66:
	add r4, r4, #1
	ldr r6, [sp, #8]
	cmp r6, r4
	bgt label59
	add r3, r3, #1
	add r2, r0, r3, lsl #12
	cmp r6, r3
	bgt label221
	add r1, r1, #1
	cmp r1, #5
	blt label17
	b label581
.p2align 4
label61:
	ldr r6, [sp, #4]
	add r8, r6, r4, lsl #12
	ldr r6, [sp, #8]
	cmp r6, #4
	ble label343
	mov r6, #0
	b label64
.p2align 4
label62:
	add r7, r8, r6, lsl #2
	ldr r9, [r7, #0]
	ldr r10, [r2, r6, lsl #2]
	mla r9, r5, r10, r9
	str r9, [r7, #0]
	add r7, r6, #1
	ldr r6, [sp, #8]
	cmp r6, r7
	ble label356
.p2align 4
label357:
	mov r6, r7
	b label62
.p2align 4
label64:
	add r7, r8, r6, lsl #2
	add r9, r2, r6, lsl #2
	ldr r10, [r7, #0]
	add r6, r6, #4
	ldr r11, [r9, #0]
	mla r10, r5, r11, r10
	str r10, [r7, #0]
	ldr r10, [r7, #4]
	ldr r11, [r9, #4]
	mla r10, r5, r11, r10
	str r10, [r7, #4]
	ldr r10, [r7, #8]
	ldr r11, [r9, #8]
	mla r10, r5, r11, r10
	str r10, [r7, #8]
	ldr r10, [r7, #12]
	ldr r9, [r9, #12]
	mla r9, r5, r9, r10
	str r9, [r7, #12]
	ldr r7, [sp, #12]
	cmp r7, r6
	bgt label64
	add r7, r8, r6, lsl #2
	ldr r9, [r7, #0]
	ldr r10, [r2, r6, lsl #2]
	mla r9, r5, r10, r9
	str r9, [r7, #0]
	add r7, r6, #1
	ldr r6, [sp, #8]
	cmp r6, r7
	bgt label357
	add r4, r4, #1
	cmp r6, r4
	bgt label59
	add r3, r3, #1
	add r2, r0, r3, lsl #12
	cmp r6, r3
	bgt label221
	b label604
label137:
	mov r3, #0
	ldr r6, [sp, #4]
	add r2, r6, r3, lsl #12
	ldr r6, [sp, #8]
	cmp r6, r3
	bgt label144
	b label143
.p2align 4
label78:
	ldr r6, [sp, #8]
	cmp r6, #0
	ble label443
	add r3, r0, r2, lsl #12
	cmp r6, #4
	bgt label82
	mov r4, #0
.p2align 4
label80:
	mov r5, #0
	str r5, [r3, r4, lsl #2]
	ldr r6, [sp, #8]
	add r4, r4, #1
	cmp r6, r4
	bgt label80
	add r2, r2, #1
	cmp r6, r2
	bgt label78
	b label612
.p2align 4
label82:
	ldr r7, [sp, #12]
	cmp r7, #16
	ble label458
	mov r5, #0
.p2align 4
label83:
	add r4, r3, r5, lsl #2
	mov r6, #0
	add r5, r5, #16
	str r6, [r4, #0]
	str r6, [r4, #4]
	str r6, [r4, #8]
	str r6, [r4, #12]
	str r6, [r4, #16]
	str r6, [r4, #20]
	str r6, [r4, #24]
	str r6, [r4, #28]
	str r6, [r4, #32]
	str r6, [r4, #36]
	str r6, [r4, #40]
	str r6, [r4, #44]
	str r6, [r4, #48]
	str r6, [r4, #52]
	str r6, [r4, #56]
	str r6, [r4, #60]
	ldr r4, [sp, #16]
	cmp r4, r5
	bgt label83
.p2align 4
label85:
	add r4, r3, r5, lsl #2
	mov r6, #0
	add r5, r5, #4
	str r6, [r4, #0]
	str r6, [r4, #4]
	str r6, [r4, #8]
	str r6, [r4, #12]
	ldr r7, [sp, #12]
	cmp r7, r5
	bgt label85
	mov r4, r5
	mov r5, #0
	str r5, [r3, r4, lsl #2]
	ldr r6, [sp, #8]
	add r4, r4, #1
	cmp r6, r4
	bgt label80
.p2align 4
label595:
	add r2, r2, #1
	ldr r6, [sp, #8]
	cmp r6, r2
	bgt label78
	b label137
.p2align 4
label144:
	mov r4, #0
	ldr r6, [sp, #8]
	cmp r6, r4
	bgt label25
	b label147
.p2align 4
label576:
	add r3, r3, #1
	ldr r6, [sp, #4]
	add r2, r6, r3, lsl #12
	ldr r6, [sp, #8]
	cmp r6, r3
	bgt label144
	mov r2, #0
	cmp r6, r2
	bgt label68
	b label574
.p2align 4
label25:
	ldr r5, [sp, #0]
	add r5, r5, r4, lsl #12
	ldr r5, [r5, r3, lsl #2]
	cmp r5, #0
	bne label156
	add r4, r4, #1
	ldr r6, [sp, #8]
	cmp r6, r4
	bgt label25
	b label576
.p2align 4
label209:
	add r4, r4, #1
	ldr r6, [sp, #8]
	cmp r6, r4
	bgt label25
	add r3, r3, #1
	ldr r6, [sp, #4]
	add r2, r6, r3, lsl #12
	ldr r6, [sp, #8]
	cmp r6, r3
	bgt label144
label603:
	mov r2, #0
	ldr r6, [sp, #8]
	cmp r6, r2
	bgt label68
	b label574
.p2align 4
label156:
	ldr r6, [sp, #8]
	cmp r6, #0
	ble label575
	add r8, r0, r4, lsl #12
	cmp r6, #4
	ble label165
	mov r6, #0
.p2align 4
label29:
	add r7, r8, r6, lsl #2
	add r9, r2, r6, lsl #2
	ldr r10, [r7, #0]
	add r6, r6, #4
	ldr r11, [r9, #0]
	mla r10, r5, r11, r10
	str r10, [r7, #0]
	ldr r10, [r7, #4]
	ldr r11, [r9, #4]
	mla r10, r5, r11, r10
	str r10, [r7, #4]
	ldr r10, [r7, #8]
	ldr r11, [r9, #8]
	mla r10, r5, r11, r10
	str r10, [r7, #8]
	ldr r10, [r7, #12]
	ldr r9, [r9, #12]
	mla r9, r5, r9, r10
	str r9, [r7, #12]
	ldr r7, [sp, #12]
	cmp r7, r6
	bgt label29
	b label31
.p2align 4
label165:
	mov r6, #0
	add r7, r8, r6, lsl #2
	ldr r9, [r7, #0]
	ldr r10, [r2, r6, lsl #2]
	mla r9, r5, r10, r9
	str r9, [r7, #0]
	add r7, r6, #1
	ldr r6, [sp, #8]
	cmp r6, r7
	bgt label210
	b label578
.p2align 4
label31:
	add r7, r8, r6, lsl #2
	ldr r9, [r7, #0]
	ldr r10, [r2, r6, lsl #2]
	mla r9, r5, r10, r9
	str r9, [r7, #0]
	add r7, r6, #1
	ldr r6, [sp, #8]
	cmp r6, r7
	ble label209
.p2align 4
label210:
	mov r6, r7
	b label31
.p2align 4
label68:
	ldr r6, [sp, #8]
	cmp r6, #0
	ble label69
	ldr r6, [sp, #4]
	add r3, r6, r2, lsl #12
	ldr r6, [sp, #8]
	cmp r6, #4
	bgt label73
	mov r4, #0
.p2align 4
label71:
	mov r5, #0
	str r5, [r3, r4, lsl #2]
	ldr r6, [sp, #8]
	add r4, r4, #1
	cmp r6, r4
	bgt label71
	add r2, r2, #1
	cmp r6, r2
	bgt label68
label591:
	mov r3, #0
	add r2, r0, r3, lsl #12
	ldr r6, [sp, #8]
	cmp r6, r3
	bgt label221
	b label220
.p2align 4
label73:
	ldr r7, [sp, #12]
	cmp r7, #16
	ble label408
	mov r5, #0
.p2align 4
label74:
	add r4, r3, r5, lsl #2
	mov r6, #0
	add r5, r5, #16
	str r6, [r4, #0]
	str r6, [r4, #4]
	str r6, [r4, #8]
	str r6, [r4, #12]
	str r6, [r4, #16]
	str r6, [r4, #20]
	str r6, [r4, #24]
	str r6, [r4, #28]
	str r6, [r4, #32]
	str r6, [r4, #36]
	str r6, [r4, #40]
	str r6, [r4, #44]
	str r6, [r4, #48]
	str r6, [r4, #52]
	str r6, [r4, #56]
	str r6, [r4, #60]
	ldr r4, [sp, #16]
	cmp r4, r5
	bgt label74
.p2align 4
label76:
	add r4, r3, r5, lsl #2
	mov r6, #0
	add r5, r5, #4
	str r6, [r4, #0]
	str r6, [r4, #4]
	str r6, [r4, #8]
	str r6, [r4, #12]
	ldr r7, [sp, #12]
	cmp r7, r5
	bgt label76
	mov r4, r5
	mov r5, #0
	str r5, [r3, r4, lsl #2]
	ldr r6, [sp, #8]
	add r4, r4, #1
	cmp r6, r4
	bgt label71
.p2align 4
label593:
	add r2, r2, #1
	ldr r6, [sp, #8]
	cmp r6, r2
	bgt label68
	b label591
.p2align 4
label343:
	mov r6, #0
	add r7, r8, r6, lsl #2
	ldr r9, [r7, #0]
	ldr r10, [r2, r6, lsl #2]
	mla r9, r5, r10, r9
	str r9, [r7, #0]
	add r7, r6, #1
	ldr r6, [sp, #8]
	cmp r6, r7
	bgt label357
	add r4, r4, #1
	cmp r6, r4
	bgt label59
	add r3, r3, #1
	add r2, r0, r3, lsl #12
	cmp r6, r3
	bgt label221
label604:
	add r1, r1, #1
	cmp r1, #5
	blt label17
	b label581
.p2align 4
label356:
	add r4, r4, #1
	ldr r6, [sp, #8]
	cmp r6, r4
	bgt label59
	add r3, r3, #1
	add r2, r0, r3, lsl #12
	cmp r6, r3
	bgt label221
	b label604
label42:
	mov r0, #84
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #28
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label43:
	ldr r6, [sp, #8]
	cmp r6, #0
	ble label232
	ldr r6, [sp, #4]
	add r1, r6, r0, lsl #12
	ldr r6, [sp, #8]
	cmp r6, #4
	bgt label45
	mov r3, #0
	mov r2, r4
	ldr r4, [r1, r3, lsl #2]
	add r3, r3, #1
	add r2, r2, r4
	cmp r6, r3
	bgt label52
.p2align 4
label583:
	mov r4, r2
	b label55
.p2align 4
label45:
	ldr r7, [sp, #12]
	cmp r7, #16
	ble label240
	mov r2, #0
	b label49
.p2align 4
label52:
	ldr r4, [r1, r3, lsl #2]
	ldr r6, [sp, #8]
	add r3, r3, #1
	add r2, r2, r4
	cmp r6, r3
	bgt label52
	b label583
.p2align 4
label55:
	add r0, r0, #1
	ldr r6, [sp, #8]
	cmp r6, r0
	bgt label43
	b label42
.p2align 4
label49:
	add r3, r1, r2, lsl #2
	add r2, r2, #16
	ldr r5, [r3, #0]
	add r4, r4, r5
	ldr r5, [r3, #4]
	add r4, r4, r5
	ldr r5, [r3, #8]
	add r4, r4, r5
	ldr r5, [r3, #12]
	add r4, r4, r5
	ldr r5, [r3, #16]
	add r4, r4, r5
	ldr r5, [r3, #20]
	add r4, r4, r5
	ldr r5, [r3, #24]
	add r4, r4, r5
	ldr r5, [r3, #28]
	add r4, r4, r5
	ldr r5, [r3, #32]
	add r4, r4, r5
	ldr r5, [r3, #36]
	add r4, r4, r5
	ldr r5, [r3, #40]
	add r4, r4, r5
	ldr r5, [r3, #44]
	add r4, r4, r5
	ldr r5, [r3, #48]
	add r4, r4, r5
	ldr r5, [r3, #52]
	add r4, r4, r5
	ldr r5, [r3, #56]
	ldr r3, [r3, #60]
	add r4, r4, r5
	add r3, r4, r3
	ldr r4, [sp, #16]
	cmp r4, r2
	ble label312
	mov r4, r3
	b label49
.p2align 4
label46:
	add r3, r1, r2, lsl #2
	add r2, r2, #4
	ldr r5, [r3, #0]
	add r4, r4, r5
	ldr r5, [r3, #4]
	add r4, r4, r5
	ldr r5, [r3, #8]
	ldr r3, [r3, #12]
	ldr r7, [sp, #12]
	add r4, r4, r5
	add r4, r4, r3
	cmp r7, r2
	bgt label46
	mov r3, r2
	mov r2, r4
	ldr r4, [r1, r3, lsl #2]
	ldr r6, [sp, #8]
	add r3, r3, #1
	add r2, r2, r4
	cmp r6, r3
	bgt label52
	b label584
.p2align 4
label312:
	mov r4, r3
	b label46
label574:
	mov r3, #0
	add r2, r0, r3, lsl #12
	ldr r6, [sp, #8]
	cmp r6, r3
	bgt label221
	b label220
label69:
	add r2, r2, #1
	ldr r6, [sp, #8]
	cmp r6, r2
	bgt label68
	b label574
.p2align 4
label408:
	mov r5, #0
	add r4, r3, r5, lsl #2
	mov r6, #0
	add r5, r5, #4
	str r6, [r4, #0]
	str r6, [r4, #4]
	str r6, [r4, #8]
	str r6, [r4, #12]
	ldr r7, [sp, #12]
	cmp r7, r5
	bgt label76
	mov r4, r5
	mov r5, #0
	str r5, [r3, r4, lsl #2]
	ldr r6, [sp, #8]
	add r4, r4, #1
	cmp r6, r4
	bgt label71
	b label593
.p2align 4
label458:
	mov r5, #0
	add r4, r3, r5, lsl #2
	mov r6, #0
	add r5, r5, #4
	str r6, [r4, #0]
	str r6, [r4, #4]
	str r6, [r4, #8]
	str r6, [r4, #12]
	ldr r7, [sp, #12]
	cmp r7, r5
	bgt label85
	mov r4, r5
	mov r5, #0
	str r5, [r3, r4, lsl #2]
	ldr r6, [sp, #8]
	add r4, r4, #1
	cmp r6, r4
	bgt label80
	b label595
.p2align 4
label338:
	add r4, r4, #1
	ldr r6, [sp, #8]
	cmp r6, r4
	bgt label59
	add r3, r3, #1
	add r2, r0, r3, lsl #12
	cmp r6, r3
	bgt label221
	b label604
.p2align 4
label575:
	add r4, r4, #1
	ldr r6, [sp, #8]
	cmp r6, r4
	bgt label25
	add r3, r3, #1
	ldr r6, [sp, #4]
	add r2, r6, r3, lsl #12
	ldr r6, [sp, #8]
	cmp r6, r3
	bgt label144
	b label143
.p2align 4
label578:
	add r4, r4, #1
	ldr r6, [sp, #8]
	cmp r6, r4
	bgt label25
	add r3, r3, #1
	ldr r6, [sp, #4]
	add r2, r6, r3, lsl #12
	ldr r6, [sp, #8]
	cmp r6, r3
	bgt label144
	b label603
label584:
	mov r4, r2
	add r0, r0, #1
	ldr r6, [sp, #8]
	cmp r6, r0
	bgt label43
	b label42
label220:
	add r1, r1, #1
	cmp r1, #5
	blt label17
	b label581
label582:
	add r3, r3, #1
	add r2, r0, r3, lsl #12
	ldr r6, [sp, #8]
	cmp r6, r3
	bgt label221
	b label220
label143:
	mov r2, #0
	ldr r6, [sp, #8]
	cmp r6, r2
	bgt label68
	b label574
label147:
	add r3, r3, #1
	ldr r6, [sp, #4]
	add r2, r6, r3, lsl #12
	ldr r6, [sp, #8]
	cmp r6, r3
	bgt label144
	b label143
label443:
	add r2, r2, #1
	ldr r6, [sp, #8]
	cmp r6, r2
	bgt label78
	b label137
label612:
	mov r3, #0
	ldr r6, [sp, #4]
	add r2, r6, r3, lsl #12
	ldr r6, [sp, #8]
	cmp r6, r3
	bgt label144
	b label143
label232:
	add r0, r0, #1
	b label39
label102:
	add r4, r4, #1
	b label2
label240:
	mov r2, #0
	b label46
