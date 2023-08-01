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
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #20
	bl getint
	mov r5, #0
	sub r4, r0, #20
	str r0, [sp, #8]
	mov r7, r0
	sub r6, r0, #4
	str r6, [sp, #0]
	mov r6, r5
	str r4, [sp, #12]
	str r5, [sp, #4]
label2:
	ldr r7, [sp, #8]
	cmp r7, r5
	bgt label4
label99:
	ldr r6, [sp, #4]
	mov r5, r6
	b label9
.p2align 4
label4:
	ldr r7, [sp, #8]
	cmp r7, #0
	ble label102
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	ldr r6, [sp, #4]
	add r4, r3, r5, lsl #12
.p2align 4
label6:
	bl getint
	str r0, [r4, r6, lsl #2]
	ldr r7, [sp, #8]
	add r6, r6, #1
	cmp r7, r6
	bgt label6
	add r5, r5, #1
	cmp r7, r5
	bgt label4
	b label99
label9:
	ldr r7, [sp, #8]
	cmp r7, r5
	ble label16
.p2align 4
label11:
	ldr r7, [sp, #8]
	cmp r7, #0
	ble label12
	movw r6, #:lower16:B
	movt r6, #:upper16:B
	add r4, r6, r5, lsl #12
	ldr r6, [sp, #4]
.p2align 4
label14:
	bl getint
	str r0, [r4, r6, lsl #2]
	ldr r7, [sp, #8]
	add r6, r6, #1
	cmp r7, r6
	bgt label14
	add r5, r5, #1
	cmp r7, r5
	bgt label11
label16:
	mov r0, #65
	bl _sysy_starttime
	ldr r6, [sp, #4]
	movw r0, #:lower16:C
	movt r0, #:upper16:C
	mov r1, r6
.p2align 4
label17:
	ldr r6, [sp, #4]
	mov r2, r6
	ldr r7, [sp, #8]
	cmp r7, r6
	bgt label78
	b label137
label605:
	add r1, r1, #1
	cmp r1, #5
	blt label17
	b label582
.p2align 4
label607:
	add r4, r4, #1
	add r2, r0, r4, lsl #12
	ldr r7, [sp, #8]
	cmp r7, r4
	ble label605
.p2align 4
label221:
	ldr r6, [sp, #4]
	mov r5, r6
	ldr r7, [sp, #8]
	cmp r7, r6
	ble label583
.p2align 4
label59:
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	add r3, r3, r5, lsl #12
	ldr r3, [r3, r4, lsl #2]
	cmp r3, #0
	beq label66
	b label60
.p2align 4
label356:
	add r5, r5, #1
	ldr r7, [sp, #8]
	cmp r7, r5
	bgt label59
	b label607
.p2align 4
label66:
	add r5, r5, #1
	ldr r7, [sp, #8]
	cmp r7, r5
	bgt label59
	add r4, r4, #1
	add r2, r0, r4, lsl #12
	cmp r7, r4
	bgt label221
	add r1, r1, #1
	cmp r1, #5
	blt label17
	b label582
.p2align 4
label60:
	ldr r7, [sp, #8]
	cmp r7, #0
	ble label338
	movw r6, #:lower16:B
	movt r6, #:upper16:B
	add r8, r6, r5, lsl #12
	cmp r7, #4
	ble label343
	ldr r6, [sp, #4]
.p2align 4
label64:
	add r7, r8, r6, lsl #2
	add r9, r2, r6, lsl #2
	ldr r10, [r7, #0]
	ldr r11, [r9, #0]
	mla r10, r3, r11, r10
	str r10, [r7, #0]
	ldr r10, [r7, #4]
	ldr r11, [r9, #4]
	mla r10, r3, r11, r10
	str r10, [r7, #4]
	ldr r10, [r7, #8]
	ldr r11, [r9, #8]
	mla r10, r3, r11, r10
	str r10, [r7, #8]
	ldr r10, [r7, #12]
	ldr r9, [r9, #12]
	mla r9, r3, r9, r10
	str r9, [r7, #12]
	add r7, r6, #4
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label387
	mov r6, r7
	b label64
.p2align 4
label62:
	add r6, r8, r7, lsl #2
	ldr r9, [r6, #0]
	ldr r10, [r2, r7, lsl #2]
	mla r9, r3, r10, r9
	str r9, [r6, #0]
	add r6, r7, #1
	ldr r7, [sp, #8]
	cmp r7, r6
	ble label356
.p2align 4
label357:
	mov r7, r6
	b label62
.p2align 4
label387:
	add r6, r8, r7, lsl #2
	ldr r9, [r6, #0]
	ldr r10, [r2, r7, lsl #2]
	mla r9, r3, r10, r9
	str r9, [r6, #0]
	add r6, r7, #1
	ldr r7, [sp, #8]
	cmp r7, r6
	bgt label357
	add r5, r5, #1
	cmp r7, r5
	bgt label59
	add r4, r4, #1
	add r2, r0, r4, lsl #12
	cmp r7, r4
	bgt label221
	b label605
label137:
	ldr r6, [sp, #4]
	mov r4, r6
	movw r6, #:lower16:B
	movt r6, #:upper16:B
	ldr r7, [sp, #8]
	add r2, r6, r4, lsl #12
	cmp r7, r4
	bgt label144
	b label143
.p2align 4
label78:
	ldr r7, [sp, #8]
	cmp r7, #0
	ble label443
	add r3, r0, r2, lsl #12
	cmp r7, #4
	bgt label82
	ldr r6, [sp, #4]
	mov r4, r6
.p2align 4
label80:
	ldr r6, [sp, #4]
	str r6, [r3, r4, lsl #2]
	ldr r7, [sp, #8]
	add r4, r4, #1
	cmp r7, r4
	bgt label80
	add r2, r2, #1
	cmp r7, r2
	bgt label78
	b label613
.p2align 4
label82:
	ldr r6, [sp, #0]
	cmp r6, #16
	ble label458
	ldr r6, [sp, #4]
	mov r5, r6
.p2align 4
label83:
	add r4, r3, r5, lsl #2
	ldr r6, [sp, #4]
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
	ldr r4, [sp, #12]
	cmp r4, r5
	bgt label83
.p2align 4
label85:
	add r4, r3, r5, lsl #2
	ldr r6, [sp, #4]
	add r5, r5, #4
	str r6, [r4, #0]
	str r6, [r4, #4]
	str r6, [r4, #8]
	str r6, [r4, #12]
	ldr r6, [sp, #0]
	cmp r6, r5
	bgt label85
	mov r4, r5
	ldr r6, [sp, #4]
	str r6, [r3, r5, lsl #2]
	ldr r7, [sp, #8]
	add r4, r5, #1
	cmp r7, r4
	bgt label80
.p2align 4
label596:
	add r2, r2, #1
	ldr r7, [sp, #8]
	cmp r7, r2
	bgt label78
	b label137
.p2align 4
label144:
	ldr r6, [sp, #4]
	mov r5, r6
	ldr r7, [sp, #8]
	cmp r7, r6
	bgt label25
	b label147
.p2align 4
label576:
	add r4, r4, #1
	movw r6, #:lower16:B
	movt r6, #:upper16:B
	ldr r7, [sp, #8]
	add r2, r6, r4, lsl #12
	cmp r7, r4
	bgt label144
	ldr r6, [sp, #4]
	mov r2, r6
	cmp r7, r6
	bgt label68
	b label574
.p2align 4
label25:
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	add r3, r3, r5, lsl #12
	ldr r3, [r3, r4, lsl #2]
	cmp r3, #0
	bne label156
	add r5, r5, #1
	ldr r7, [sp, #8]
	cmp r7, r5
	bgt label25
	b label576
.p2align 4
label209:
	add r5, r5, #1
	ldr r7, [sp, #8]
	cmp r7, r5
	bgt label25
	add r4, r4, #1
	movw r6, #:lower16:B
	movt r6, #:upper16:B
	add r2, r6, r4, lsl #12
	cmp r7, r4
	bgt label144
label604:
	ldr r6, [sp, #4]
	mov r2, r6
	ldr r7, [sp, #8]
	cmp r7, r6
	bgt label68
	b label574
.p2align 4
label156:
	ldr r7, [sp, #8]
	cmp r7, #0
	ble label575
	add r8, r0, r5, lsl #12
	cmp r7, #4
	ble label165
	ldr r6, [sp, #4]
.p2align 4
label29:
	add r7, r8, r6, lsl #2
	add r9, r2, r6, lsl #2
	ldr r10, [r7, #0]
	ldr r11, [r9, #0]
	mla r10, r3, r11, r10
	str r10, [r7, #0]
	ldr r10, [r7, #4]
	ldr r11, [r9, #4]
	mla r10, r3, r11, r10
	str r10, [r7, #4]
	ldr r10, [r7, #8]
	ldr r11, [r9, #8]
	mla r10, r3, r11, r10
	str r10, [r7, #8]
	ldr r10, [r7, #12]
	ldr r9, [r9, #12]
	mla r9, r3, r9, r10
	str r9, [r7, #12]
	add r7, r6, #4
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label196
	mov r6, r7
	b label29
.p2align 4
label196:
	add r6, r8, r7, lsl #2
	ldr r9, [r6, #0]
	ldr r10, [r2, r7, lsl #2]
	mla r9, r3, r10, r9
	str r9, [r6, #0]
	add r6, r7, #1
	ldr r7, [sp, #8]
	cmp r7, r6
	bgt label210
	b label579
.p2align 4
label31:
	add r6, r8, r7, lsl #2
	ldr r9, [r6, #0]
	ldr r10, [r2, r7, lsl #2]
	mla r9, r3, r10, r9
	str r9, [r6, #0]
	add r6, r7, #1
	ldr r7, [sp, #8]
	cmp r7, r6
	ble label209
.p2align 4
label210:
	mov r7, r6
	b label31
.p2align 4
label68:
	ldr r7, [sp, #8]
	cmp r7, #0
	ble label69
	movw r6, #:lower16:B
	movt r6, #:upper16:B
	add r3, r6, r2, lsl #12
	cmp r7, #4
	bgt label73
	ldr r6, [sp, #4]
	mov r4, r6
.p2align 4
label71:
	ldr r6, [sp, #4]
	str r6, [r3, r4, lsl #2]
	ldr r7, [sp, #8]
	add r4, r4, #1
	cmp r7, r4
	bgt label71
	add r2, r2, #1
	cmp r7, r2
	bgt label68
.p2align 4
label592:
	ldr r6, [sp, #4]
	mov r4, r6
	add r2, r0, r6, lsl #12
	ldr r7, [sp, #8]
	cmp r7, r6
	bgt label221
	b label220
.p2align 4
label73:
	ldr r6, [sp, #0]
	cmp r6, #16
	ble label408
	ldr r6, [sp, #4]
	mov r5, r6
.p2align 4
label74:
	add r4, r3, r5, lsl #2
	ldr r6, [sp, #4]
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
	ldr r4, [sp, #12]
	cmp r4, r5
	bgt label74
.p2align 4
label76:
	add r4, r3, r5, lsl #2
	ldr r6, [sp, #4]
	add r5, r5, #4
	str r6, [r4, #0]
	str r6, [r4, #4]
	str r6, [r4, #8]
	str r6, [r4, #12]
	ldr r6, [sp, #0]
	cmp r6, r5
	bgt label76
	mov r4, r5
	ldr r6, [sp, #4]
	str r6, [r3, r5, lsl #2]
	ldr r7, [sp, #8]
	add r4, r5, #1
	cmp r7, r4
	bgt label71
.p2align 4
label594:
	add r2, r2, #1
	ldr r7, [sp, #8]
	cmp r7, r2
	bgt label68
	b label592
.p2align 4
label165:
	ldr r6, [sp, #4]
	mov r7, r6
	add r6, r8, r6, lsl #2
	ldr r9, [r6, #0]
	ldr r10, [r2, r7, lsl #2]
	mla r9, r3, r10, r9
	str r9, [r6, #0]
	add r6, r7, #1
	ldr r7, [sp, #8]
	cmp r7, r6
	bgt label210
	add r5, r5, #1
	cmp r7, r5
	bgt label25
	add r4, r4, #1
	movw r6, #:lower16:B
	movt r6, #:upper16:B
	add r2, r6, r4, lsl #12
	cmp r7, r4
	bgt label144
	b label604
.p2align 4
label343:
	ldr r6, [sp, #4]
	mov r7, r6
	add r6, r8, r6, lsl #2
	ldr r9, [r6, #0]
	ldr r10, [r2, r7, lsl #2]
	mla r9, r3, r10, r9
	str r9, [r6, #0]
	add r6, r7, #1
	ldr r7, [sp, #8]
	cmp r7, r6
	bgt label357
	add r5, r5, #1
	cmp r7, r5
	bgt label59
	add r4, r4, #1
	add r2, r0, r4, lsl #12
	cmp r7, r4
	bgt label221
	b label605
.p2align 4
label579:
	add r5, r5, #1
	ldr r7, [sp, #8]
	cmp r7, r5
	bgt label25
	add r4, r4, #1
	movw r6, #:lower16:B
	movt r6, #:upper16:B
	add r2, r6, r4, lsl #12
	cmp r7, r4
	bgt label144
	b label604
label574:
	ldr r6, [sp, #4]
	mov r4, r6
	add r2, r0, r6, lsl #12
	ldr r7, [sp, #8]
	cmp r7, r6
	bgt label221
	b label220
.p2align 4
label69:
	add r2, r2, #1
	ldr r7, [sp, #8]
	cmp r7, r2
	bgt label68
	b label574
.p2align 4
label458:
	ldr r6, [sp, #4]
	mov r5, r6
	add r4, r3, r6, lsl #2
	add r5, r6, #4
	str r6, [r4, #0]
	str r6, [r4, #4]
	str r6, [r4, #8]
	str r6, [r4, #12]
	ldr r6, [sp, #0]
	cmp r6, r5
	bgt label85
	mov r4, r5
	ldr r6, [sp, #4]
	str r6, [r3, r5, lsl #2]
	ldr r7, [sp, #8]
	add r4, r5, #1
	cmp r7, r4
	bgt label80
	b label596
.p2align 4
label408:
	ldr r6, [sp, #4]
	mov r5, r6
	add r4, r3, r6, lsl #2
	add r5, r6, #4
	str r6, [r4, #0]
	str r6, [r4, #4]
	str r6, [r4, #8]
	str r6, [r4, #12]
	ldr r6, [sp, #0]
	cmp r6, r5
	bgt label76
	mov r4, r5
	ldr r6, [sp, #4]
	str r6, [r3, r5, lsl #2]
	ldr r7, [sp, #8]
	add r4, r5, #1
	cmp r7, r4
	bgt label71
	b label594
.p2align 4
label575:
	add r5, r5, #1
	ldr r7, [sp, #8]
	cmp r7, r5
	bgt label25
	add r4, r4, #1
	movw r6, #:lower16:B
	movt r6, #:upper16:B
	add r2, r6, r4, lsl #12
	cmp r7, r4
	bgt label144
	b label143
.p2align 4
label338:
	add r5, r5, #1
	ldr r7, [sp, #8]
	cmp r7, r5
	bgt label59
	add r4, r4, #1
	add r2, r0, r4, lsl #12
	cmp r7, r4
	bgt label221
	b label605
label582:
	ldr r6, [sp, #4]
	mov r0, r6
	mov r4, r6
label39:
	ldr r7, [sp, #8]
	cmp r7, r0
	bgt label43
label42:
	mov r0, #84
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	ldr r6, [sp, #4]
	add sp, sp, #20
	mov r0, r6
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label43:
	ldr r7, [sp, #8]
	cmp r7, #0
	ble label232
	movw r6, #:lower16:B
	movt r6, #:upper16:B
	add r1, r6, r0, lsl #12
	cmp r7, #4
	bgt label45
	b label237
.p2align 4
label584:
	mov r4, r2
	b label55
.p2align 4
label45:
	ldr r6, [sp, #0]
	cmp r6, #16
	ble label240
	ldr r6, [sp, #4]
	mov r3, r4
	b label49
.p2align 4
label258:
	mov r6, r3
	ldr r3, [r1, r3, lsl #2]
	ldr r7, [sp, #8]
	add r6, r6, #1
	add r2, r2, r3
	cmp r7, r6
	ble label585
.p2align 4
label52:
	ldr r3, [r1, r6, lsl #2]
	ldr r7, [sp, #8]
	add r6, r6, #1
	add r2, r2, r3
	cmp r7, r6
	bgt label52
	b label584
.p2align 4
label55:
	add r0, r0, #1
	ldr r7, [sp, #8]
	cmp r7, r0
	bgt label43
	b label42
.p2align 4
label49:
	add r2, r1, r6, lsl #2
	add r6, r6, #16
	ldr r4, [r2, #0]
	add r3, r3, r4
	ldr r4, [r2, #4]
	add r3, r3, r4
	ldr r4, [r2, #8]
	add r3, r3, r4
	ldr r4, [r2, #12]
	add r3, r3, r4
	ldr r4, [r2, #16]
	add r3, r3, r4
	ldr r4, [r2, #20]
	add r3, r3, r4
	ldr r4, [r2, #24]
	add r3, r3, r4
	ldr r4, [r2, #28]
	add r3, r3, r4
	ldr r4, [r2, #32]
	add r3, r3, r4
	ldr r4, [r2, #36]
	add r3, r3, r4
	ldr r4, [r2, #40]
	add r3, r3, r4
	ldr r4, [r2, #44]
	add r3, r3, r4
	ldr r4, [r2, #48]
	add r3, r3, r4
	ldr r4, [r2, #52]
	add r3, r3, r4
	ldr r4, [r2, #56]
	ldr r2, [r2, #60]
	add r3, r3, r4
	ldr r4, [sp, #12]
	add r2, r3, r2
	cmp r4, r6
	ble label312
	mov r3, r2
	b label49
label12:
	add r5, r5, #1
	ldr r7, [sp, #8]
	cmp r7, r5
	bgt label11
	b label16
.p2align 4
label585:
	mov r4, r2
	add r0, r0, #1
	ldr r7, [sp, #8]
	cmp r7, r0
	bgt label43
	b label42
.p2align 4
label443:
	add r2, r2, #1
	ldr r7, [sp, #8]
	cmp r7, r2
	bgt label78
	b label137
label143:
	ldr r6, [sp, #4]
	mov r2, r6
	ldr r7, [sp, #8]
	cmp r7, r6
	bgt label68
	b label574
.p2align 4
label147:
	add r4, r4, #1
	movw r6, #:lower16:B
	movt r6, #:upper16:B
	ldr r7, [sp, #8]
	add r2, r6, r4, lsl #12
	cmp r7, r4
	bgt label144
	b label143
label220:
	add r1, r1, #1
	cmp r1, #5
	blt label17
	b label582
.p2align 4
label583:
	add r4, r4, #1
	add r2, r0, r4, lsl #12
	ldr r7, [sp, #8]
	cmp r7, r4
	bgt label221
	b label220
label613:
	ldr r6, [sp, #4]
	mov r4, r6
	movw r6, #:lower16:B
	movt r6, #:upper16:B
	ldr r7, [sp, #8]
	add r2, r6, r4, lsl #12
	cmp r7, r4
	bgt label144
	b label143
label240:
	ldr r6, [sp, #4]
.p2align 4
label46:
	add r2, r1, r6, lsl #2
	ldr r3, [r2, #0]
	add r3, r4, r3
	ldr r4, [r2, #4]
	add r3, r3, r4
	ldr r4, [r2, #8]
	ldr r2, [r2, #12]
	add r3, r3, r4
	add r2, r3, r2
	add r3, r6, #4
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label258
	mov r4, r2
	mov r6, r3
	b label46
.p2align 4
label312:
	mov r4, r2
	b label46
label232:
	add r0, r0, #1
	b label39
label237:
	ldr r6, [sp, #4]
	mov r2, r4
	ldr r3, [r1, r6, lsl #2]
	ldr r7, [sp, #8]
	add r6, r6, #1
	add r2, r4, r3
	cmp r7, r6
	bgt label52
	b label584
label102:
	add r5, r5, #1
	b label2
