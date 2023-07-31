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
	sub r5, r0, #20
	mov r4, #0
	str r7, [sp, #12]
	movw r6, #:lower16:B
	str r5, [sp, #16]
	movt r6, #:upper16:B
	movw r5, #:lower16:A
	str r6, [sp, #4]
	movt r5, #:upper16:A
	str r5, [sp, #0]
	mov r6, r0
	cmp r0, r4
	ble label16
.p2align 4
label4:
	ldr r6, [sp, #8]
	cmp r6, #0
	bgt label5
	b label102
.p2align 4
label112:
	add r4, r4, #1
	ldr r6, [sp, #8]
	cmp r6, r4
	bgt label4
	mov r4, #0
	cmp r6, r4
	bgt label11
	b label16
.p2align 4
label5:
	ldr r5, [sp, #0]
	mov r6, #0
	add r5, r5, r4, lsl #12
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
.p2align 4
label11:
	ldr r6, [sp, #8]
	cmp r6, #0
	bgt label13
	b label12
.p2align 4
label131:
	add r4, r4, #1
	ldr r6, [sp, #8]
	cmp r6, r4
	bgt label11
	b label16
.p2align 4
label13:
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
	ble label131
	mov r6, r0
	b label14
.p2align 4
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
	b label19
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
	add r1, r1, #1
	cmp r1, #5
	blt label17
	b label645
.p2align 4
label59:
	ldr r5, [sp, #0]
	add r5, r5, r4, lsl #12
	ldr r5, [r5, r3, lsl #2]
	cmp r5, #0
	beq label66
	b label60
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
	bgt label357
	add r4, r4, #1
	cmp r6, r4
	bgt label59
	add r3, r3, #1
	add r2, r0, r3, lsl #12
	cmp r6, r3
	bgt label221
	add r1, r1, #1
	cmp r1, #5
	blt label17
	b label645
.p2align 4
label60:
	ldr r6, [sp, #8]
	cmp r6, #0
	ble label338
	ldr r6, [sp, #4]
	add r8, r6, r4, lsl #12
	ldr r6, [sp, #8]
	cmp r6, #4
	ble label343
	mov r6, #0
	b label64
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
	add r1, r1, #1
	cmp r1, #5
	blt label17
	b label645
label221:
	mov r4, #0
	b label57
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
	b label645
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
	add r1, r1, #1
	cmp r1, #5
	blt label17
	b label645
.p2align 4
label57:
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
	b label645
.p2align 4
label19:
	ldr r6, [sp, #8]
	cmp r6, r2
	bgt label78
	mov r3, #0
	ldr r6, [sp, #4]
	add r2, r6, r3, lsl #12
	ldr r6, [sp, #8]
	cmp r6, r3
	bgt label144
	mov r2, #0
	cmp r6, r2
	bgt label68
	add r2, r0, r3, lsl #12
	cmp r6, r3
	bgt label221
	add r1, r1, #1
	cmp r1, #5
	blt label17
label645:
	mov r4, #0
	mov r0, r4
	ldr r6, [sp, #8]
	cmp r6, r4
	bgt label43
	b label42
.p2align 4
label26:
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
	mov r2, #0
	cmp r6, r2
	ble label628
.p2align 4
label68:
	ldr r6, [sp, #8]
	cmp r6, #0
	ble label69
	ldr r6, [sp, #4]
	add r3, r6, r2, lsl #12
	ldr r6, [sp, #8]
	cmp r6, #4
	ble label398
	ldr r7, [sp, #12]
	cmp r7, #16
	ble label408
	mov r5, #0
.p2align 4
label74:
	add r4, r3, r5, lsl #2
	mov r6, #0
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
	add r4, r5, #16
	ldr r5, [sp, #16]
	cmp r5, r4
	ble label430
	mov r5, r4
	b label74
.p2align 4
label25:
	ldr r5, [sp, #0]
	add r5, r5, r4, lsl #12
	ldr r5, [r5, r3, lsl #2]
	cmp r5, #0
	beq label26
	ldr r6, [sp, #8]
	cmp r6, #0
	ble label576
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
	bgt label210
	add r4, r4, #1
	cmp r6, r4
	bgt label25
	add r3, r3, #1
	ldr r6, [sp, #4]
	add r2, r6, r3, lsl #12
	ldr r6, [sp, #8]
	cmp r6, r3
	bgt label144
	mov r2, #0
	cmp r6, r2
	bgt label68
	mov r3, #0
	add r2, r0, r3, lsl #12
	cmp r6, r3
	bgt label221
	add r1, r1, #1
	cmp r1, #5
	blt label17
	b label645
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
	ble label579
.p2align 4
label210:
	mov r6, r7
	b label31
.p2align 4
label144:
	mov r4, #0
	b label23
.p2align 4
label579:
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
	mov r2, #0
	cmp r6, r2
	bgt label68
	mov r3, #0
	add r2, r0, r3, lsl #12
	cmp r6, r3
	bgt label221
	add r1, r1, #1
	cmp r1, #5
	blt label17
	b label645
.p2align 4
label78:
	ldr r6, [sp, #8]
	cmp r6, #0
	bgt label79
	b label443
.p2align 4
label596:
	mov r5, #0
	str r5, [r3, r4, lsl #2]
	ldr r6, [sp, #8]
	add r4, r4, #1
	cmp r6, r4
	bgt label80
	add r2, r2, #1
	cmp r6, r2
	bgt label78
	mov r3, #0
	ldr r6, [sp, #4]
	add r2, r6, r3, lsl #12
	ldr r6, [sp, #8]
	cmp r6, r3
	bgt label144
	mov r2, #0
	cmp r6, r2
	bgt label68
	add r2, r0, r3, lsl #12
	cmp r6, r3
	bgt label221
	add r1, r1, #1
	cmp r1, #5
	blt label17
	b label645
.p2align 4
label443:
	add r2, r2, #1
	ldr r6, [sp, #8]
	cmp r6, r2
	bgt label78
	mov r3, #0
	ldr r6, [sp, #4]
	add r2, r6, r3, lsl #12
	ldr r6, [sp, #8]
	cmp r6, r3
	bgt label144
	mov r2, #0
	cmp r6, r2
	bgt label68
	add r2, r0, r3, lsl #12
	cmp r6, r3
	bgt label221
	add r1, r1, #1
	cmp r1, #5
	blt label17
	b label645
.p2align 4
label408:
	mov r4, #0
	add r5, r3, r4, lsl #2
	mov r6, #0
	add r4, r4, #4
	str r6, [r5, #0]
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	ldr r7, [sp, #12]
	cmp r7, r4
	bgt label76
	mov r5, #0
	str r5, [r3, r4, lsl #2]
	ldr r6, [sp, #8]
	add r4, r4, #1
	cmp r6, r4
	bgt label71
	add r2, r2, #1
	cmp r6, r2
	bgt label68
	mov r3, #0
	add r2, r0, r3, lsl #12
	cmp r6, r3
	bgt label221
	add r1, r1, #1
	cmp r1, #5
	blt label17
	b label645
.p2align 4
label628:
	mov r3, #0
	add r2, r0, r3, lsl #12
	ldr r6, [sp, #8]
	cmp r6, r3
	bgt label221
	add r1, r1, #1
	cmp r1, #5
	blt label17
	b label645
.p2align 4
label576:
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
	mov r2, #0
	cmp r6, r2
	bgt label68
	mov r3, #0
	add r2, r0, r3, lsl #12
	cmp r6, r3
	bgt label221
	add r1, r1, #1
	cmp r1, #5
	blt label17
	b label645
.p2align 4
label69:
	add r2, r2, #1
	ldr r6, [sp, #8]
	cmp r6, r2
	bgt label68
	mov r3, #0
	add r2, r0, r3, lsl #12
	cmp r6, r3
	bgt label221
	add r1, r1, #1
	cmp r1, #5
	blt label17
	b label645
.p2align 4
label23:
	ldr r6, [sp, #8]
	cmp r6, r4
	bgt label25
	add r3, r3, #1
	ldr r6, [sp, #4]
	add r2, r6, r3, lsl #12
	ldr r6, [sp, #8]
	cmp r6, r3
	bgt label144
	mov r2, #0
	cmp r6, r2
	bgt label68
	mov r3, #0
	add r2, r0, r3, lsl #12
	cmp r6, r3
	bgt label221
	add r1, r1, #1
	cmp r1, #5
	blt label17
	b label645
.p2align 4
label80:
	mov r5, #0
	str r5, [r3, r4, lsl #2]
	ldr r6, [sp, #8]
	add r4, r4, #1
	cmp r6, r4
	bgt label80
	b label455
.p2align 4
label458:
	mov r4, #0
	add r5, r3, r4, lsl #2
	mov r6, #0
	add r4, r4, #4
	str r6, [r5, #0]
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	ldr r7, [sp, #12]
	cmp r7, r4
	bgt label85
	mov r5, #0
	str r5, [r3, r4, lsl #2]
	ldr r6, [sp, #8]
	add r4, r4, #1
	cmp r6, r4
	bgt label80
	add r2, r2, #1
	cmp r6, r2
	bgt label78
	mov r3, #0
	ldr r6, [sp, #4]
	add r2, r6, r3, lsl #12
	ldr r6, [sp, #8]
	cmp r6, r3
	bgt label144
	mov r2, #0
	cmp r6, r2
	bgt label68
	add r2, r0, r3, lsl #12
	cmp r6, r3
	bgt label221
	add r1, r1, #1
	cmp r1, #5
	blt label17
	b label645
.p2align 4
label455:
	add r2, r2, #1
	ldr r6, [sp, #8]
	cmp r6, r2
	bgt label78
	mov r3, #0
	ldr r6, [sp, #4]
	add r2, r6, r3, lsl #12
	ldr r6, [sp, #8]
	cmp r6, r3
	bgt label144
	mov r2, #0
	cmp r6, r2
	bgt label68
	add r2, r0, r3, lsl #12
	cmp r6, r3
	bgt label221
	add r1, r1, #1
	cmp r1, #5
	blt label17
	b label645
.p2align 4
label480:
	add r5, r3, r4, lsl #2
	mov r6, #0
	add r4, r4, #4
	str r6, [r5, #0]
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	ldr r7, [sp, #12]
	cmp r7, r4
	ble label596
.p2align 4
label85:
	add r5, r3, r4, lsl #2
	mov r6, #0
	add r4, r4, #4
	str r6, [r5, #0]
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	ldr r7, [sp, #12]
	cmp r7, r4
	bgt label85
	mov r5, #0
	str r5, [r3, r4, lsl #2]
	ldr r6, [sp, #8]
	add r4, r4, #1
	cmp r6, r4
	bgt label80
	add r2, r2, #1
	cmp r6, r2
	bgt label78
	mov r3, #0
	ldr r6, [sp, #4]
	add r2, r6, r3, lsl #12
	ldr r6, [sp, #8]
	cmp r6, r3
	bgt label144
	mov r2, #0
	cmp r6, r2
	bgt label68
	add r2, r0, r3, lsl #12
	cmp r6, r3
	bgt label221
	add r1, r1, #1
	cmp r1, #5
	blt label17
	b label645
.p2align 4
label71:
	mov r5, #0
	str r5, [r3, r4, lsl #2]
	ldr r6, [sp, #8]
	add r4, r4, #1
	cmp r6, r4
	bgt label71
	b label405
.p2align 4
label430:
	add r5, r3, r4, lsl #2
	mov r6, #0
	add r4, r4, #4
	str r6, [r5, #0]
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	ldr r7, [sp, #12]
	cmp r7, r4
	ble label593
.p2align 4
label76:
	add r5, r3, r4, lsl #2
	mov r6, #0
	add r4, r4, #4
	str r6, [r5, #0]
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	ldr r7, [sp, #12]
	cmp r7, r4
	bgt label76
	mov r5, #0
	str r5, [r3, r4, lsl #2]
	ldr r6, [sp, #8]
	add r4, r4, #1
	cmp r6, r4
	bgt label71
	add r2, r2, #1
	cmp r6, r2
	bgt label68
	mov r3, #0
	add r2, r0, r3, lsl #12
	cmp r6, r3
	bgt label221
	add r1, r1, #1
	cmp r1, #5
	blt label17
	b label645
.p2align 4
label593:
	mov r5, #0
	str r5, [r3, r4, lsl #2]
	ldr r6, [sp, #8]
	add r4, r4, #1
	cmp r6, r4
	bgt label71
	add r2, r2, #1
	cmp r6, r2
	bgt label68
	mov r3, #0
	add r2, r0, r3, lsl #12
	cmp r6, r3
	bgt label221
	add r1, r1, #1
	cmp r1, #5
	blt label17
	b label645
.p2align 4
label405:
	add r2, r2, #1
	ldr r6, [sp, #8]
	cmp r6, r2
	bgt label68
	mov r3, #0
	add r2, r0, r3, lsl #12
	cmp r6, r3
	bgt label221
	add r1, r1, #1
	cmp r1, #5
	blt label17
	b label645
.p2align 4
label79:
	add r3, r0, r2, lsl #12
	ldr r6, [sp, #8]
	cmp r6, #4
	ble label448
	ldr r7, [sp, #12]
	cmp r7, #16
	ble label458
	mov r5, #0
.p2align 4
label83:
	add r4, r3, r5, lsl #2
	mov r6, #0
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
	add r4, r5, #16
	ldr r5, [sp, #16]
	cmp r5, r4
	ble label480
	mov r5, r4
	b label83
.p2align 4
label43:
	ldr r6, [sp, #8]
	cmp r6, #0
	bgt label44
	b label232
.p2align 4
label584:
	add r0, r0, #1
	mov r4, r3
	ldr r6, [sp, #8]
	cmp r6, r0
	bgt label43
	b label42
.p2align 4
label44:
	ldr r6, [sp, #4]
	add r1, r6, r0, lsl #12
	ldr r6, [sp, #8]
	cmp r6, #4
	ble label237
	ldr r7, [sp, #12]
	cmp r7, #16
	ble label240
	mov r2, #0
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
	ldr r5, [sp, #16]
	add r3, r4, r3
	cmp r5, r2
	ble label46
	mov r4, r3
	b label49
.p2align 4
label46:
	add r4, r1, r2, lsl #2
	add r2, r2, #4
	ldr r5, [r4, #0]
	add r3, r3, r5
	ldr r5, [r4, #4]
	add r3, r3, r5
	ldr r5, [r4, #8]
	ldr r4, [r4, #12]
	ldr r7, [sp, #12]
	add r3, r3, r5
	add r3, r3, r4
	cmp r7, r2
	bgt label46
	ldr r4, [r1, r2, lsl #2]
	ldr r6, [sp, #8]
	add r2, r2, #1
	add r3, r3, r4
	cmp r6, r2
	ble label584
.p2align 4
label52:
	ldr r4, [r1, r2, lsl #2]
	ldr r6, [sp, #8]
	add r2, r2, #1
	add r3, r3, r4
	cmp r6, r2
	bgt label52
	add r0, r0, #1
	mov r4, r3
	cmp r6, r0
	bgt label43
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
label237:
	mov r2, #0
	mov r3, r4
	ldr r4, [r1, r2, lsl #2]
	ldr r6, [sp, #8]
	add r2, r2, #1
	add r3, r3, r4
	cmp r6, r2
	bgt label52
	add r0, r0, #1
	mov r4, r3
	cmp r6, r0
	bgt label43
	b label42
.p2align 4
label102:
	add r4, r4, #1
	ldr r6, [sp, #8]
	cmp r6, r4
	bgt label4
	mov r4, #0
	cmp r6, r4
	bgt label11
	b label16
.p2align 4
label232:
	mov r3, r4
	add r0, r0, #1
	ldr r6, [sp, #8]
	cmp r6, r0
	bgt label43
	b label42
.p2align 4
label240:
	mov r3, r4
	mov r2, #0
	b label46
.p2align 4
label448:
	mov r4, #0
	b label80
.p2align 4
label398:
	mov r4, #0
	b label71
