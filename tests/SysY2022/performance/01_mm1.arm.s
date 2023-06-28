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
	ble label8
	ldr r3, [sp, #8]
	add r6, r3, r4, lsl #12
	mov r5, #0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label8
	b label1614
label126:
	mov r4, #0
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label16
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label12
	ldr r3, [sp, #4]
	add r6, r3, r4, lsl #12
	mov r5, #0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	b label1551
label16:
	mov r0, #65
	bl _sysy_starttime
	mov r0, #0
	str r0, [sp, #16]
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label162
	ldr r3, [sp, #12]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label33
	mov r1, #0
	add r3, r1, #16
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label24
	b label32
label162:
	mov r0, #0
	ldr r3, [sp, #4]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label247
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label114
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label98
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label114
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label98
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label114
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label98
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label114
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label98
	b label1533
label247:
	mov r0, #0
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label251
	ldr r3, [sp, #4]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label82
	mov r1, #0
	add r3, r1, #16
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label86
	b label85
label251:
	mov r0, #0
	ldr r3, [sp, #12]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label61
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label60
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label44
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label60
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label44
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label60
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label44
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label60
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label44
	b label1628
label1557:
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label44
	b label1593
label60:
	add r0, r0, #1
	ldr r3, [sp, #12]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label61
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label60
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label44
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label60
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label44
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label60
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label44
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label60
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label44
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label60
	b label1557
label61:
	ldr r0, [sp, #16]
	add r0, r0, #1
	cmp r0, #5
	bge label614
	str r0, [sp, #16]
	mov r0, #0
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label162
	ldr r3, [sp, #12]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label33
	mov r1, #0
	add r3, r1, #16
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label24
	b label32
label1533:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label114
label1569:
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label98
label1605:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label114
	b label1641
label97:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label114
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label98
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label114
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label98
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label114
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label98
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label114
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label98
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label114
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label98
	b label1605
label953:
	mov r5, r8
	ldr r6, [r3, r8, lsl #2]
	ldr r7, [r2, r8, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r8, lsl #2]
	add r6, r8, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label97
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label97
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label97
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label97
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label97
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label97
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label97
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label97
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label97
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label97
label1647:
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label97
	b label1647
label1641:
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label98
	b label1605
label1376:
	ldr r7, [r6, r0, lsl #2]
	mov r4, #16
	mov r9, #0
	b label111
label98:
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label97
	ldr r3, [sp, #12]
	add r3, r3, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #16
	ble label842
	b label1376
label114:
	add r0, r0, #1
	ldr r3, [sp, #4]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label247
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label114
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label98
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label114
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label98
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label114
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label98
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label114
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label98
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label114
	b label1569
label1593:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label60
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label44
	b label1593
label1628:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label60
	b label1557
label29:
	mov r3, #0
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label33
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label33
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label33
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label33
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label33
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label33
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label33
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label33
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label33
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label33
	b label1626
label33:
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label162
	ldr r3, [sp, #12]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label33
	mov r1, #0
	add r3, r1, #16
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label24
	b label32
label1626:
	mov r3, #0
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label33
	b label1626
label842:
	mov r8, #0
	ldr r4, [r6, r0, lsl #2]
	add r6, r8, #16
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label105
	b label104
label105:
	add r6, r8, #16
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label953
	b label107
label104:
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
	bge label105
	b label104
label111:
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
	bge label1170
	mov r9, r4
	mov r4, r8
	b label111
label1170:
	mov r8, r4
	ldr r4, [r6, r0, lsl #2]
	add r6, r8, #16
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label105
	b label104
label107:
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
	bge label953
	b label107
label1357:
	ldr r7, [r6, r0, lsl #2]
	mov r4, #16
	mov r9, #0
	b label57
label44:
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label43
	ldr r3, [sp, #4]
	add r3, r3, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #16
	ble label279
	b label1357
label279:
	mov r8, #0
	ldr r4, [r6, r0, lsl #2]
	add r6, r8, #16
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label51
	b label50
label51:
	add r6, r8, #16
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label390
	b label53
label43:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label60
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label44
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label60
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label44
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label60
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label44
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label60
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label44
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label60
	ldr r3, [sp, #8]
	add r6, r3, r1, lsl #12
	ldr r3, [r6, r0, lsl #2]
	cmp r3, #0
	bne label44
	b label1593
label390:
	mov r5, r8
	ldr r6, [r3, r8, lsl #2]
	ldr r7, [r2, r8, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r8, lsl #2]
	add r6, r8, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label43
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label43
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label43
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label43
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label43
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label43
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label43
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label43
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label43
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label43
label1635:
	mov r5, r6
	ldr r6, [r3, r6, lsl #2]
	ldr r7, [r2, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r3, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label43
	b label1635
label53:
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
	bge label390
	b label53
label50:
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
	bge label51
	b label50
label57:
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
	bge label607
	mov r9, r4
	mov r4, r8
	b label57
label607:
	mov r8, r4
	ldr r4, [r6, r0, lsl #2]
	add r6, r8, #16
	ldr r5, [sp, #0]
	cmp r6, r5
	bge label51
	b label50
label1546:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label8
	b label1582
label8:
	add r4, r4, #1
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label126
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label8
	ldr r3, [sp, #8]
	add r6, r3, r4, lsl #12
	mov r5, #0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label8
	b label1546
label1614:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label8
	b label1546
label1582:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label8
label1618:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label8
	b label1618
label12:
	add r4, r4, #1
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label16
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label12
	ldr r3, [sp, #4]
	add r6, r3, r4, lsl #12
	mov r5, #0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
label1551:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
label1623:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label12
	b label1623
label24:
	add r3, r1, #16
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label27
	b label26
label27:
	add r3, r1, #16
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label29
	b label31
label85:
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
	bge label86
	b label85
label86:
	add r3, r1, #16
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label88
	b label93
label88:
	add r3, r1, #16
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label90
label92:
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
	bge label90
	b label92
label90:
	mov r3, #0
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label82
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label82
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label82
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label82
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label82
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label82
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label82
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label82
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label82
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label82
label1640:
	mov r3, #0
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r1, r5
	bge label82
	b label1640
label82:
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label251
	ldr r3, [sp, #4]
	add r2, r3, r0, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label82
	mov r1, #0
	add r3, r1, #16
	ldr r5, [sp, #0]
	cmp r3, r5
	bge label86
	b label85
label93:
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
	bge label88
	b label93
label31:
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
	bge label29
	b label31
label32:
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
	bge label24
	b label32
label26:
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
	bge label27
	b label26
label614:
	mov r2, #0
	mov r4, r2
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label65
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label67
	ldr r3, [sp, #4]
	add r3, r3, r2, lsl #12
	mov r1, r2
	mov r0, #0
	add r4, r0, #16
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label73
	b label80
label65:
	mov r0, #84
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label73:
	add r4, r0, #16
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label77
	b label76
label77:
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label692
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label692
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label692
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label692
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label692
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label692
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label692
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label692
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label692
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label692
	b label1639
label692:
	mov r4, r1
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label65
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label67
	ldr r3, [sp, #4]
	add r3, r3, r2, lsl #12
	mov r0, #0
	add r4, r0, #16
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label73
	b label80
label1639:
	ldr r4, [r3, r0, lsl #2]
	add r1, r1, r4
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r0, r5
	bge label692
	b label1639
label80:
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
	bge label73
	b label80
label76:
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
	bge label77
	b label76
label67:
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r2, r5
	bge label65
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label67
	ldr r3, [sp, #4]
	add r3, r3, r2, lsl #12
	mov r1, r4
	mov r0, #0
	add r4, r0, #16
	ldr r5, [sp, #0]
	cmp r4, r5
	bge label73
	b label80
