.arch armv7ve
.data
.bss
.align 4
A:
	.zero	16160400
.align 4
B:
	.zero	8040
.align 4
C:
	.zero	8040
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	bl getint
	mov r4, r0
	movw r7, #:lower16:A
	movt r7, #:upper16:A
	movw r6, #:lower16:B
	movt r6, #:upper16:B
	movw r5, #:lower16:C
	movt r5, #:upper16:C
	mov r8, #0
	cmp r8, r0
	bge label4
	cmp r0, #0
	ble label52
	movw r0, #8040
	mla r9, r8, r0, r7
	mov r10, #0
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label52
	b label541
label52:
	add r8, r8, #1
	cmp r8, r4
	bge label4
	cmp r4, #0
	ble label52
	movw r0, #8040
	mla r9, r8, r0, r7
	mov r10, #0
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label52
label541:
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label52
label627:
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label52
	b label627
label4:
	cmp r4, #0
	ble label7
	mov r8, #0
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r4
	bge label7
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r4
	bge label7
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r4
	bge label7
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r4
	bge label7
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r4
	bge label7
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r4
	bge label7
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r4
	bge label7
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r4
	bge label7
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r4
	bge label7
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r4
	bge label7
	b label589
label7:
	mov r0, #59
	bl _sysy_starttime
	mov r0, #0
	cmp r4, #0
	ble label80
	mov r1, #0
	add r2, r1, #4
	cmp r2, r4
	bge label13
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label13
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label13
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label13
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label13
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label13
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label13
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label13
	b label590
label80:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r1, r4
	bge label23
	mov r3, #0
	cmp r3, r4
	bge label47
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label49
	add r3, r3, #1
	cmp r3, r4
	bge label47
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label49
	add r3, r3, #1
	cmp r3, r4
	bge label47
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label49
	add r3, r3, #1
	cmp r3, r4
	bge label47
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label49
	b label492
label23:
	cmp r4, #0
	ble label126
	mov r1, #0
	add r2, r1, #4
	cmp r2, r4
	bge label37
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label37
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label37
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label37
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label37
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label37
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label37
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label37
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label37
	b label568
label126:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r1, r4
	bge label32
	mov r3, #0
	cmp r3, r4
	bge label28
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label31
	add r3, r3, #1
	cmp r3, r4
	bge label28
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label31
	add r3, r3, #1
	cmp r3, r4
	bge label28
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label31
	add r3, r3, #1
	cmp r3, r4
	bge label28
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label31
	add r3, r3, #1
	cmp r3, r4
	bge label28
	b label519
label32:
	add r0, r0, #1
	cmp r0, #50
	bge label33
	cmp r4, #0
	ble label80
	mov r1, #0
	add r2, r1, #4
	cmp r2, r4
	bge label13
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label13
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label13
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label13
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label13
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label13
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label13
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label13
	b label610
label33:
	mov r0, #67
	bl _sysy_stoptime
	mov r0, r4
	mov r1, r5
	bl putarray
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label568:
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label37
	b label611
label37:
	add r2, r1, #4
	cmp r2, r4
	bge label40
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label40
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label40
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label40
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label40
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label40
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label40
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label40
	b label571
label492:
	add r3, r3, #1
	cmp r3, r4
	bge label47
	b label535
label47:
	add r1, r1, #1
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r1, r4
	bge label23
	mov r3, #0
	cmp r3, r4
	bge label47
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label49
	add r3, r3, #1
	cmp r3, r4
	bge label47
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label49
	add r3, r3, #1
	cmp r3, r4
	bge label47
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label49
	add r3, r3, #1
	cmp r3, r4
	bge label47
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label49
	add r3, r3, #1
	cmp r3, r4
	bge label47
	b label535
label519:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label31
	b label562
label28:
	add r1, r1, #1
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r1, r4
	bge label32
	mov r3, #0
	cmp r3, r4
	bge label28
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label31
	add r3, r3, #1
	cmp r3, r4
	bge label28
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label31
	add r3, r3, #1
	cmp r3, r4
	bge label28
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label31
	add r3, r3, #1
	cmp r3, r4
	bge label28
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label31
	add r3, r3, #1
	cmp r3, r4
	bge label28
	b label519
label562:
	add r3, r3, #1
	cmp r3, r4
	bge label28
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label31
	b label562
label578:
	add r3, r3, #1
	cmp r3, r4
	bge label47
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label49
	b label578
label49:
	ldr r9, [r5, r1, lsl #2]
	ldr r10, [r6, r3, lsl #2]
	mla r8, r8, r10, r9
	str r8, [r5, r1, lsl #2]
	add r3, r3, #1
	cmp r3, r4
	bge label47
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label49
	add r3, r3, #1
	cmp r3, r4
	bge label47
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label49
	add r3, r3, #1
	cmp r3, r4
	bge label47
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label49
	add r3, r3, #1
	cmp r3, r4
	bge label47
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label49
	add r3, r3, #1
	cmp r3, r4
	bge label47
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label49
	b label578
label535:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label49
	b label578
label31:
	ldr r9, [r6, r1, lsl #2]
	ldr r10, [r5, r3, lsl #2]
	mla r8, r8, r10, r9
	str r8, [r6, r1, lsl #2]
	add r3, r3, #1
	cmp r3, r4
	bge label28
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label31
	add r3, r3, #1
	cmp r3, r4
	bge label28
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label31
	add r3, r3, #1
	cmp r3, r4
	bge label28
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label31
	add r3, r3, #1
	cmp r3, r4
	bge label28
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label31
	add r3, r3, #1
	cmp r3, r4
	bge label28
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label31
	b label562
label611:
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label37
	b label611
label571:
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label40
	b label614
label40:
	add r2, r1, #4
	cmp r2, r4
	bge label42
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label42
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label42
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label42
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label42
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label42
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label42
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label42
	b label574
label42:
	mov r2, #0
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label190
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label190
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label190
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label190
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label190
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label190
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label190
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label190
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label190
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label190
	b label618
label190:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r1, r4
	bge label32
	mov r3, #0
	cmp r3, r4
	bge label28
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label31
	add r3, r3, #1
	cmp r3, r4
	bge label28
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label31
	add r3, r3, #1
	cmp r3, r4
	bge label28
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label31
	add r3, r3, #1
	cmp r3, r4
	bge label28
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label31
	add r3, r3, #1
	cmp r3, r4
	bge label28
	b label519
label618:
	mov r2, #0
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label190
	b label618
label614:
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label40
	b label614
label574:
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label42
label617:
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label42
	b label617
label590:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label13
label549:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label13
label592:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label13
	b label592
label13:
	add r2, r1, #4
	cmp r2, r4
	bge label15
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label15
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label15
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label15
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label15
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label15
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label15
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label15
	b label552
label610:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label13
	b label549
label15:
	add r2, r1, #4
	cmp r2, r4
	bge label17
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label17
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label17
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label17
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label17
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label17
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label17
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label17
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label17
	b label596
label17:
	mov r2, #0
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label107
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label107
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label107
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label107
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label107
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label107
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label107
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label107
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label107
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label107
label597:
	mov r2, #0
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label107
	b label597
label107:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r1, r4
	bge label23
	mov r3, #0
	cmp r3, r4
	bge label47
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label49
	add r3, r3, #1
	cmp r3, r4
	bge label47
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label49
	add r3, r3, #1
	cmp r3, r4
	bge label47
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label49
	add r3, r3, #1
	cmp r3, r4
	bge label47
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label49
	b label492
label596:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label17
	b label596
label552:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label15
label595:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label15
	b label595
label589:
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r4
	bge label7
	b label589
