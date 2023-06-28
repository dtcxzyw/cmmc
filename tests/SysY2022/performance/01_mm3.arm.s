.arch armv7ve
.data
.align 4
A:
	.zero	4194304
.align 4
B:
	.zero	4194304
.align 4
C:
	.zero	4194304
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #28
	bl getint
	mov r5, r0
	str r0, [sp, #0]
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	str r3, [sp, #8]
	movw r3, #:lower16:B
	movt r3, #:upper16:B
	str r3, [sp, #4]
	movw r3, #:lower16:C
	movt r3, #:upper16:C
	str r3, [sp, #12]
	mov r4, #0
	cmp r4, r0
	bge label126
	cmp r0, #0
	ble label114
	ldr r3, [sp, #8]
	add r6, r3, r4, lsl #12
	mov r5, #0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label114
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label114
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label114
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label114
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label114
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label114
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label114
	b label1607
label126:
	mov r4, #0
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label6
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label109
	ldr r3, [sp, #4]
	add r6, r3, r4, lsl #12
	mov r5, #0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label109
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label109
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label109
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label109
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label109
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label109
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label109
	b label1608
label6:
	mov r0, #65
	bl _sysy_starttime
	mov r0, #0
	str r0, [sp, #16]
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label134
	ldr r3, [sp, #12]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label23
	mov r1, #0
	add r3, r1, #16
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label15
	b label14
label134:
	mov r0, #0
	ldr r3, [sp, #4]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label219
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label28
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label31
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label28
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label31
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label28
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label31
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label28
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label31
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label28
	b label1542
label1577:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label28
	b label1612
label30:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label28
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label31
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label28
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label31
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label28
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label31
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label28
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label31
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label28
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label31
	b label1577
label31:
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label30
	ldr r3, [sp, #12]
	add r3, r3, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #16
	ble label242
	b label1344
label1618:
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label30
	b label1618
label1612:
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label31
	b label1577
label219:
	mov r0, #0
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label575
	ldr r3, [sp, #4]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label61
	mov r1, #0
	add r3, r1, #16
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label52
	b label60
label1542:
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label31
	b label1577
label28:
	add r0, r0, #1
	ldr r3, [sp, #4]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label219
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label28
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label31
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label28
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label31
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label28
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label31
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label28
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label31
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label28
	b label1542
label575:
	mov r0, #0
	ldr r3, [sp, #12]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label85
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label84
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label68
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label84
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label68
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label84
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label68
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label84
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label68
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label84
	b label1553
label1623:
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label68
	b label1588
label1360:
	ldr r7, [r6, r0, lsl #2]
	mov r4, #16
	mov r9, #0
	b label81
label68:
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label67
	ldr r3, [sp, #4]
	add r3, r3, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #16
	ble label682
	b label1360
label67:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label84
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label68
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label84
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label68
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label84
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label68
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label84
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label68
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label84
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label68
	b label1588
label793:
	mov r5, r8
	ldr r6, [r3, r8, lsl #2]
	ldr r7, [r2, r8, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r8, lsl #2]
	add r6, r8, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label67
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label67
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label67
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label67
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label67
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label67
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label67
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label67
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label67
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label67
	b label1629
label77:
	add r5, r3, r8, lsl #2
	ldr r9, [r3, r8, lsl #2]
	add r7, r2, r8, lsl #2
	ldr r10, [r2, r8, lsl #2]
	mla r9, r4, r10, r9
	str r9, [r3, r8, lsl #2]
	ldr r8, [r5, #4]
	ldr r9, [r7, #4]
	mla r8, r4, r9, r8
	str r8, [r5, #4]
	ldr r8, [r5, #8]
	ldr r9, [r7, #8]
	mla r8, r4, r9, r8
	str r8, [r5, #8]
	ldr r8, [r5, #12]
	ldr r9, [r7, #12]
	mla r8, r4, r9, r8
	str r8, [r5, #12]
	ldr r8, [r5, #16]
	ldr r9, [r7, #16]
	mla r8, r4, r9, r8
	str r8, [r5, #16]
	ldr r8, [r5, #20]
	ldr r9, [r7, #20]
	mla r8, r4, r9, r8
	str r8, [r5, #20]
	ldr r8, [r5, #24]
	ldr r9, [r7, #24]
	mla r8, r4, r9, r8
	str r8, [r5, #24]
	ldr r8, [r5, #28]
	ldr r9, [r7, #28]
	mla r8, r4, r9, r8
	str r8, [r5, #28]
	ldr r8, [r5, #32]
	ldr r9, [r7, #32]
	mla r8, r4, r9, r8
	str r8, [r5, #32]
	ldr r8, [r5, #36]
	ldr r9, [r7, #36]
	mla r8, r4, r9, r8
	str r8, [r5, #36]
	ldr r8, [r5, #40]
	ldr r9, [r7, #40]
	mla r8, r4, r9, r8
	str r8, [r5, #40]
	ldr r8, [r5, #44]
	ldr r9, [r7, #44]
	mla r8, r4, r9, r8
	str r8, [r5, #44]
	ldr r8, [r5, #48]
	ldr r9, [r7, #48]
	mla r8, r4, r9, r8
	str r8, [r5, #48]
	ldr r8, [r5, #52]
	ldr r9, [r7, #52]
	mla r8, r4, r9, r8
	str r8, [r5, #52]
	ldr r8, [r5, #56]
	ldr r9, [r7, #56]
	mla r8, r4, r9, r8
	str r8, [r5, #56]
	ldr r8, [r5, #60]
	ldr r7, [r7, #60]
	mla r7, r4, r7, r8
	str r7, [r5, #60]
	mov r8, r6
	add r6, r6, #16
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label793
	b label77
label1629:
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label67
	b label1629
label1553:
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label68
	b label1588
label84:
	add r0, r0, #1
	ldr r3, [sp, #12]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label85
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label84
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label68
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label84
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label68
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label84
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label68
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label84
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label68
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label84
	b label1553
label1588:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label84
	b label1623
label85:
	ldr r0, [sp, #16]
	add r0, r0, #1
	cmp r0, #5
	bge label1017
	str r0, [sp, #16]
	mov r0, #0
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label134
	ldr r3, [sp, #12]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label23
	mov r1, #0
	add r3, r1, #16
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label15
	b label14
label56:
	mov r3, #0
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label61
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label61
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label61
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label61
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label61
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label61
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label61
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label61
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label61
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label61
	b label1621
label60:
	add r4, r2, r1, lsl #2
	mov r5, #0
	str r5, [r2, r1, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	str r5, [r4, #16]
	str r5, [r4, #20]
	str r5, [r4, #24]
	str r5, [r4, #28]
	str r5, [r4, #32]
	str r5, [r4, #36]
	str r5, [r4, #40]
	str r5, [r4, #44]
	str r5, [r4, #48]
	str r5, [r4, #52]
	str r5, [r4, #56]
	str r5, [r4, #60]
	mov r1, r3
	add r3, r3, #16
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label52
	b label60
label61:
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label575
	ldr r3, [sp, #4]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label61
	mov r1, #0
	add r3, r1, #16
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label52
	b label60
label1621:
	mov r3, #0
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label61
	b label1621
label14:
	add r4, r2, r1, lsl #2
	mov r5, #0
	str r5, [r2, r1, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	str r5, [r4, #16]
	str r5, [r4, #20]
	str r5, [r4, #24]
	str r5, [r4, #28]
	str r5, [r4, #32]
	str r5, [r4, #36]
	str r5, [r4, #40]
	str r5, [r4, #44]
	str r5, [r4, #48]
	str r5, [r4, #52]
	str r5, [r4, #56]
	str r5, [r4, #60]
	mov r1, r3
	add r3, r3, #16
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label15
	b label14
label19:
	mov r3, #0
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label23
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label23
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label23
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label23
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label23
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label23
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label23
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label23
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label23
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label23
	b label1610
label23:
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label134
	ldr r3, [sp, #12]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label23
	mov r1, #0
	add r3, r1, #16
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label15
	b label14
label1610:
	mov r3, #0
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label23
	b label1610
label242:
	mov r8, #0
	ldr r4, [r6, r0, lsl #2]
	add r6, r8, #16
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label37
	b label42
label37:
	add r6, r8, #16
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label255
	b label39
label255:
	mov r5, r8
	ldr r6, [r3, r8, lsl #2]
	ldr r7, [r2, r8, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r8, lsl #2]
	add r6, r8, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label30
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label30
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label30
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label30
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label30
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label30
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label30
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label30
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label30
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label30
	b label1618
label39:
	add r5, r3, r8, lsl #2
	ldr r9, [r3, r8, lsl #2]
	add r7, r2, r8, lsl #2
	ldr r10, [r2, r8, lsl #2]
	mla r9, r4, r10, r9
	str r9, [r3, r8, lsl #2]
	ldr r8, [r5, #4]
	ldr r9, [r7, #4]
	mla r8, r4, r9, r8
	str r8, [r5, #4]
	ldr r8, [r5, #8]
	ldr r9, [r7, #8]
	mla r8, r4, r9, r8
	str r8, [r5, #8]
	ldr r8, [r5, #12]
	ldr r9, [r7, #12]
	mla r8, r4, r9, r8
	str r8, [r5, #12]
	ldr r8, [r5, #16]
	ldr r9, [r7, #16]
	mla r8, r4, r9, r8
	str r8, [r5, #16]
	ldr r8, [r5, #20]
	ldr r9, [r7, #20]
	mla r8, r4, r9, r8
	str r8, [r5, #20]
	ldr r8, [r5, #24]
	ldr r9, [r7, #24]
	mla r8, r4, r9, r8
	str r8, [r5, #24]
	ldr r8, [r5, #28]
	ldr r9, [r7, #28]
	mla r8, r4, r9, r8
	str r8, [r5, #28]
	ldr r8, [r5, #32]
	ldr r9, [r7, #32]
	mla r8, r4, r9, r8
	str r8, [r5, #32]
	ldr r8, [r5, #36]
	ldr r9, [r7, #36]
	mla r8, r4, r9, r8
	str r8, [r5, #36]
	ldr r8, [r5, #40]
	ldr r9, [r7, #40]
	mla r8, r4, r9, r8
	str r8, [r5, #40]
	ldr r8, [r5, #44]
	ldr r9, [r7, #44]
	mla r8, r4, r9, r8
	str r8, [r5, #44]
	ldr r8, [r5, #48]
	ldr r9, [r7, #48]
	mla r8, r4, r9, r8
	str r8, [r5, #48]
	ldr r8, [r5, #52]
	ldr r9, [r7, #52]
	mla r8, r4, r9, r8
	str r8, [r5, #52]
	ldr r8, [r5, #56]
	ldr r9, [r7, #56]
	mla r8, r4, r9, r8
	str r8, [r5, #56]
	ldr r8, [r5, #60]
	ldr r7, [r7, #60]
	mla r7, r4, r7, r8
	str r7, [r5, #60]
	mov r8, r6
	add r6, r6, #16
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label255
	b label39
label42:
	add r5, r3, r8, lsl #2
	ldr r9, [r3, r8, lsl #2]
	add r7, r2, r8, lsl #2
	ldr r10, [r2, r8, lsl #2]
	mla r9, r4, r10, r9
	str r9, [r3, r8, lsl #2]
	ldr r8, [r5, #4]
	ldr r9, [r7, #4]
	mla r8, r4, r9, r8
	str r8, [r5, #4]
	ldr r8, [r5, #8]
	ldr r9, [r7, #8]
	mla r8, r4, r9, r8
	str r8, [r5, #8]
	ldr r8, [r5, #12]
	ldr r9, [r7, #12]
	mla r8, r4, r9, r8
	str r8, [r5, #12]
	ldr r8, [r5, #16]
	ldr r9, [r7, #16]
	mla r8, r4, r9, r8
	str r8, [r5, #16]
	ldr r8, [r5, #20]
	ldr r9, [r7, #20]
	mla r8, r4, r9, r8
	str r8, [r5, #20]
	ldr r8, [r5, #24]
	ldr r9, [r7, #24]
	mla r8, r4, r9, r8
	str r8, [r5, #24]
	ldr r8, [r5, #28]
	ldr r9, [r7, #28]
	mla r8, r4, r9, r8
	str r8, [r5, #28]
	ldr r8, [r5, #32]
	ldr r9, [r7, #32]
	mla r8, r4, r9, r8
	str r8, [r5, #32]
	ldr r8, [r5, #36]
	ldr r9, [r7, #36]
	mla r8, r4, r9, r8
	str r8, [r5, #36]
	ldr r8, [r5, #40]
	ldr r9, [r7, #40]
	mla r8, r4, r9, r8
	str r8, [r5, #40]
	ldr r8, [r5, #44]
	ldr r9, [r7, #44]
	mla r8, r4, r9, r8
	str r8, [r5, #44]
	ldr r8, [r5, #48]
	ldr r9, [r7, #48]
	mla r8, r4, r9, r8
	str r8, [r5, #48]
	ldr r8, [r5, #52]
	ldr r9, [r7, #52]
	mla r8, r4, r9, r8
	str r8, [r5, #52]
	ldr r8, [r5, #56]
	ldr r9, [r7, #56]
	mla r8, r4, r9, r8
	str r8, [r5, #56]
	ldr r8, [r5, #60]
	ldr r7, [r7, #60]
	mla r7, r4, r7, r8
	str r7, [r5, #60]
	mov r8, r6
	add r6, r6, #16
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label37
	b label42
label44:
	add r5, r3, r9, lsl #2
	ldr r10, [r3, r9, lsl #2]
	add r8, r2, r9, lsl #2
	ldr r11, [r2, r9, lsl #2]
	mla r10, r7, r11, r10
	str r10, [r3, r9, lsl #2]
	ldr r9, [r5, #4]
	ldr r10, [r8, #4]
	mla r9, r7, r10, r9
	str r9, [r5, #4]
	ldr r9, [r5, #8]
	ldr r10, [r8, #8]
	mla r9, r7, r10, r9
	str r9, [r5, #8]
	ldr r9, [r5, #12]
	ldr r10, [r8, #12]
	mla r9, r7, r10, r9
	str r9, [r5, #12]
	ldr r9, [r5, #16]
	ldr r10, [r8, #16]
	mla r9, r7, r10, r9
	str r9, [r5, #16]
	ldr r9, [r5, #20]
	ldr r10, [r8, #20]
	mla r9, r7, r10, r9
	str r9, [r5, #20]
	ldr r9, [r5, #24]
	ldr r10, [r8, #24]
	mla r9, r7, r10, r9
	str r9, [r5, #24]
	ldr r9, [r5, #28]
	ldr r10, [r8, #28]
	mla r9, r7, r10, r9
	str r9, [r5, #28]
	ldr r9, [r5, #32]
	ldr r10, [r8, #32]
	mla r9, r7, r10, r9
	str r9, [r5, #32]
	ldr r9, [r5, #36]
	ldr r10, [r8, #36]
	mla r9, r7, r10, r9
	str r9, [r5, #36]
	ldr r9, [r5, #40]
	ldr r10, [r8, #40]
	mla r9, r7, r10, r9
	str r9, [r5, #40]
	ldr r9, [r5, #44]
	ldr r10, [r8, #44]
	mla r9, r7, r10, r9
	str r9, [r5, #44]
	ldr r9, [r5, #48]
	ldr r10, [r8, #48]
	mla r9, r7, r10, r9
	str r9, [r5, #48]
	ldr r9, [r5, #52]
	ldr r10, [r8, #52]
	mla r9, r7, r10, r9
	str r9, [r5, #52]
	ldr r9, [r5, #56]
	ldr r10, [r8, #56]
	mla r9, r7, r10, r9
	str r9, [r5, #56]
	ldr r9, [r5, #60]
	ldr r8, [r8, #60]
	mla r8, r7, r8, r9
	str r8, [r5, #60]
	add r8, r4, #16
	ldr r5, [sp, #0]
	cmp r8, r5
	bge label570
	mov r9, r4
	mov r4, r8
	b label44
label570:
	mov r8, r4
	ldr r4, [r6, r0, lsl #2]
	add r6, r8, #16
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label37
	b label42
label682:
	mov r8, #0
	ldr r4, [r6, r0, lsl #2]
	add r6, r8, #16
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label75
	b label74
label75:
	add r6, r8, #16
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label793
	b label77
label74:
	add r5, r3, r8, lsl #2
	ldr r9, [r3, r8, lsl #2]
	add r7, r2, r8, lsl #2
	ldr r10, [r2, r8, lsl #2]
	mla r9, r4, r10, r9
	str r9, [r3, r8, lsl #2]
	ldr r8, [r5, #4]
	ldr r9, [r7, #4]
	mla r8, r4, r9, r8
	str r8, [r5, #4]
	ldr r8, [r5, #8]
	ldr r9, [r7, #8]
	mla r8, r4, r9, r8
	str r8, [r5, #8]
	ldr r8, [r5, #12]
	ldr r9, [r7, #12]
	mla r8, r4, r9, r8
	str r8, [r5, #12]
	ldr r8, [r5, #16]
	ldr r9, [r7, #16]
	mla r8, r4, r9, r8
	str r8, [r5, #16]
	ldr r8, [r5, #20]
	ldr r9, [r7, #20]
	mla r8, r4, r9, r8
	str r8, [r5, #20]
	ldr r8, [r5, #24]
	ldr r9, [r7, #24]
	mla r8, r4, r9, r8
	str r8, [r5, #24]
	ldr r8, [r5, #28]
	ldr r9, [r7, #28]
	mla r8, r4, r9, r8
	str r8, [r5, #28]
	ldr r8, [r5, #32]
	ldr r9, [r7, #32]
	mla r8, r4, r9, r8
	str r8, [r5, #32]
	ldr r8, [r5, #36]
	ldr r9, [r7, #36]
	mla r8, r4, r9, r8
	str r8, [r5, #36]
	ldr r8, [r5, #40]
	ldr r9, [r7, #40]
	mla r8, r4, r9, r8
	str r8, [r5, #40]
	ldr r8, [r5, #44]
	ldr r9, [r7, #44]
	mla r8, r4, r9, r8
	str r8, [r5, #44]
	ldr r8, [r5, #48]
	ldr r9, [r7, #48]
	mla r8, r4, r9, r8
	str r8, [r5, #48]
	ldr r8, [r5, #52]
	ldr r9, [r7, #52]
	mla r8, r4, r9, r8
	str r8, [r5, #52]
	ldr r8, [r5, #56]
	ldr r9, [r7, #56]
	mla r8, r4, r9, r8
	str r8, [r5, #56]
	ldr r8, [r5, #60]
	ldr r7, [r7, #60]
	mla r7, r4, r7, r8
	str r7, [r5, #60]
	mov r8, r6
	add r6, r6, #16
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label75
	b label74
label81:
	add r5, r3, r9, lsl #2
	ldr r10, [r3, r9, lsl #2]
	add r8, r2, r9, lsl #2
	ldr r11, [r2, r9, lsl #2]
	mla r10, r7, r11, r10
	str r10, [r3, r9, lsl #2]
	ldr r9, [r5, #4]
	ldr r10, [r8, #4]
	mla r9, r7, r10, r9
	str r9, [r5, #4]
	ldr r9, [r5, #8]
	ldr r10, [r8, #8]
	mla r9, r7, r10, r9
	str r9, [r5, #8]
	ldr r9, [r5, #12]
	ldr r10, [r8, #12]
	mla r9, r7, r10, r9
	str r9, [r5, #12]
	ldr r9, [r5, #16]
	ldr r10, [r8, #16]
	mla r9, r7, r10, r9
	str r9, [r5, #16]
	ldr r9, [r5, #20]
	ldr r10, [r8, #20]
	mla r9, r7, r10, r9
	str r9, [r5, #20]
	ldr r9, [r5, #24]
	ldr r10, [r8, #24]
	mla r9, r7, r10, r9
	str r9, [r5, #24]
	ldr r9, [r5, #28]
	ldr r10, [r8, #28]
	mla r9, r7, r10, r9
	str r9, [r5, #28]
	ldr r9, [r5, #32]
	ldr r10, [r8, #32]
	mla r9, r7, r10, r9
	str r9, [r5, #32]
	ldr r9, [r5, #36]
	ldr r10, [r8, #36]
	mla r9, r7, r10, r9
	str r9, [r5, #36]
	ldr r9, [r5, #40]
	ldr r10, [r8, #40]
	mla r9, r7, r10, r9
	str r9, [r5, #40]
	ldr r9, [r5, #44]
	ldr r10, [r8, #44]
	mla r9, r7, r10, r9
	str r9, [r5, #44]
	ldr r9, [r5, #48]
	ldr r10, [r8, #48]
	mla r9, r7, r10, r9
	str r9, [r5, #48]
	ldr r9, [r5, #52]
	ldr r10, [r8, #52]
	mla r9, r7, r10, r9
	str r9, [r5, #52]
	ldr r9, [r5, #56]
	ldr r10, [r8, #56]
	mla r9, r7, r10, r9
	str r9, [r5, #56]
	ldr r9, [r5, #60]
	ldr r8, [r8, #60]
	mla r8, r7, r8, r9
	str r8, [r5, #60]
	add r8, r4, #16
	ldr r5, [sp, #0]
	cmp r8, r5
	bge label1010
	mov r9, r4
	mov r4, r8
	b label81
label1010:
	mov r8, r4
	ldr r4, [r6, r0, lsl #2]
	add r6, r8, #16
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label75
	b label74
label1344:
	ldr r7, [r6, r0, lsl #2]
	mov r4, #16
	mov r9, #0
	b label44
label1607:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label114
label1570:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label114
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label114
label1640:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label114
	b label1640
label1608:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label109
label1566:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label109
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label109
label1636:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label109
	b label1636
label114:
	add r4, r4, #1
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label126
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label114
	ldr r3, [sp, #8]
	add r6, r3, r4, lsl #12
	mov r5, #0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label114
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label114
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label114
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label114
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label114
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label114
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label114
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label114
	b label1570
label109:
	add r4, r4, #1
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label6
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label109
	ldr r3, [sp, #4]
	add r6, r3, r4, lsl #12
	mov r5, #0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label109
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label109
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label109
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label109
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label109
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label109
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label109
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label109
	b label1566
label52:
	add r3, r1, #16
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label54
label59:
	add r4, r2, r1, lsl #2
	mov r5, #0
	str r5, [r2, r1, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	str r5, [r4, #16]
	str r5, [r4, #20]
	str r5, [r4, #24]
	str r5, [r4, #28]
	str r5, [r4, #32]
	str r5, [r4, #36]
	str r5, [r4, #40]
	str r5, [r4, #44]
	str r5, [r4, #48]
	str r5, [r4, #52]
	str r5, [r4, #56]
	str r5, [r4, #60]
	mov r1, r3
	add r3, r3, #16
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label54
	b label59
label54:
	add r3, r1, #16
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label56
label58:
	add r4, r2, r1, lsl #2
	mov r5, #0
	str r5, [r2, r1, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	str r5, [r4, #16]
	str r5, [r4, #20]
	str r5, [r4, #24]
	str r5, [r4, #28]
	str r5, [r4, #32]
	str r5, [r4, #36]
	str r5, [r4, #40]
	str r5, [r4, #44]
	str r5, [r4, #48]
	str r5, [r4, #52]
	str r5, [r4, #56]
	str r5, [r4, #60]
	mov r1, r3
	add r3, r3, #16
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label56
	b label58
label15:
	add r3, r1, #16
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label17
label22:
	add r4, r2, r1, lsl #2
	mov r5, #0
	str r5, [r2, r1, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	str r5, [r4, #16]
	str r5, [r4, #20]
	str r5, [r4, #24]
	str r5, [r4, #28]
	str r5, [r4, #32]
	str r5, [r4, #36]
	str r5, [r4, #40]
	str r5, [r4, #44]
	str r5, [r4, #48]
	str r5, [r4, #52]
	str r5, [r4, #56]
	str r5, [r4, #60]
	mov r1, r3
	add r3, r3, #16
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label17
	b label22
label17:
	add r3, r1, #16
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label19
label21:
	add r4, r2, r1, lsl #2
	mov r5, #0
	str r5, [r2, r1, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	str r5, [r4, #16]
	str r5, [r4, #20]
	str r5, [r4, #24]
	str r5, [r4, #28]
	str r5, [r4, #32]
	str r5, [r4, #36]
	str r5, [r4, #40]
	str r5, [r4, #44]
	str r5, [r4, #48]
	str r5, [r4, #52]
	str r5, [r4, #56]
	str r5, [r4, #60]
	mov r1, r3
	add r3, r3, #16
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label19
	b label21
label1017:
	mov r2, #0
	mov r4, r2
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label89
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label91
	ldr r3, [sp, #4]
	add r3, r3, r2, lsl #12
	mov r1, r2
	mov r0, #0
	add r4, r0, #16
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label97
	b label104
label89:
	mov r0, #84
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label97:
	add r4, r0, #16
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label101
	b label100
label101:
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label1095
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label1095
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label1095
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label1095
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label1095
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label1095
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label1095
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label1095
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label1095
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label1095
label1633:
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label1095
	b label1633
label1095:
	mov r4, r1
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label89
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label91
	ldr r3, [sp, #4]
	add r3, r3, r2, lsl #12
	mov r0, #0
	add r4, r0, #16
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label97
label104:
	add r5, r3, r0, lsl #2
	ldr r6, [r3, r0, lsl #2]
	ldr r0, [r5, #4]
	add r1, r1, r6
	add r0, r1, r0
	ldr r1, [r5, #8]
	add r0, r0, r1
	ldr r1, [r5, #12]
	add r0, r0, r1
	ldr r1, [r5, #16]
	add r0, r0, r1
	ldr r1, [r5, #20]
	add r0, r0, r1
	ldr r1, [r5, #24]
	add r0, r0, r1
	ldr r1, [r5, #28]
	add r0, r0, r1
	ldr r1, [r5, #32]
	add r0, r0, r1
	ldr r1, [r5, #36]
	add r0, r0, r1
	ldr r1, [r5, #40]
	add r0, r0, r1
	ldr r1, [r5, #44]
	add r0, r0, r1
	ldr r1, [r5, #48]
	add r0, r0, r1
	ldr r1, [r5, #52]
	add r0, r0, r1
	ldr r1, [r5, #56]
	add r0, r0, r1
	ldr r1, [r5, #60]
	add r1, r0, r1
	mov r0, r4
	add r4, r4, #16
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label97
	b label104
label100:
	add r5, r3, r0, lsl #2
	ldr r0, [r3, r0, lsl #2]
	ldr r6, [r5, #4]
	add r0, r1, r0
	add r0, r0, r6
	ldr r1, [r5, #8]
	add r0, r0, r1
	ldr r1, [r5, #12]
	add r0, r0, r1
	ldr r1, [r5, #16]
	add r0, r0, r1
	ldr r1, [r5, #20]
	add r0, r0, r1
	ldr r1, [r5, #24]
	add r0, r0, r1
	ldr r1, [r5, #28]
	add r0, r0, r1
	ldr r1, [r5, #32]
	add r0, r0, r1
	ldr r1, [r5, #36]
	add r0, r0, r1
	ldr r1, [r5, #40]
	add r0, r0, r1
	ldr r1, [r5, #44]
	add r0, r0, r1
	ldr r1, [r5, #48]
	add r0, r0, r1
	ldr r1, [r5, #52]
	add r0, r0, r1
	ldr r1, [r5, #56]
	add r0, r0, r1
	ldr r1, [r5, #60]
	add r1, r0, r1
	mov r0, r4
	add r4, r4, #16
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label101
	b label100
label91:
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label89
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label91
	ldr r3, [sp, #4]
	add r3, r3, r2, lsl #12
	mov r1, r4
	mov r0, #0
	add r4, r0, #16
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label97
	b label104
