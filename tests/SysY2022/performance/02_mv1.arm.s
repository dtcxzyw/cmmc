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
	cmp r0, r8
	ble label9
	cmp r0, #0
	ble label5
	movw r0, #8040
	mla r9, r8, r0, r7
	mov r10, #0
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label5
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label5
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label5
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label5
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label5
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label5
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label5
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label5
	b label523
label9:
	cmp r4, #0
	ble label10
	mov r8, #0
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label10
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label10
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label10
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label10
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label10
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label10
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label10
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label10
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label10
	b label617
label5:
	add r8, r8, #1
	cmp r4, r8
	ble label9
	cmp r4, #0
	ble label5
	movw r0, #8040
	mla r9, r8, r0, r7
	mov r10, #0
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label5
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label5
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label5
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label5
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label5
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label5
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label5
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label5
label523:
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label5
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label5
label615:
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label5
	b label615
label10:
	mov r0, #59
	bl _sysy_starttime
	mov r0, #0
	cmp r4, #0
	ble label86
	mov r1, #0
	add r2, r1, #4
	cmp r4, r2
	ble label46
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label46
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label46
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label46
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label46
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label46
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label46
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label46
	b label618
label46:
	add r2, r1, #4
	cmp r4, r2
	ble label49
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label49
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label49
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label49
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label49
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label49
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label49
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label49
	b label602
label86:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r4, r1
	ble label15
	mov r3, #0
	cmp r4, r3
	ble label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label42
	add r3, r3, #1
	cmp r4, r3
	ble label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label42
	add r3, r3, #1
	cmp r4, r3
	ble label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label42
	add r3, r3, #1
	cmp r4, r3
	ble label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label42
	add r3, r3, #1
	cmp r4, r3
	ble label39
	b label548
label15:
	cmp r4, #0
	ble label95
	mov r1, #0
	add r2, r1, #4
	cmp r4, r2
	ble label29
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label29
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label29
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label29
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label29
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label29
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label29
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label29
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label29
	b label584
label95:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r4, r1
	ble label24
	mov r3, #0
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label22
	add r3, r3, #1
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label22
	add r3, r3, #1
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label22
	add r3, r3, #1
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label22
	b label621
label23:
	add r1, r1, #1
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r4, r1
	ble label24
	mov r3, #0
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label22
	add r3, r3, #1
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label22
	add r3, r3, #1
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label22
	add r3, r3, #1
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label22
	add r3, r3, #1
	cmp r4, r3
	ble label23
	b label531
label24:
	add r0, r0, #1
	cmp r0, #50
	bge label25
	cmp r4, #0
	ble label86
	mov r1, #0
	add r2, r1, #4
	cmp r4, r2
	ble label46
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label46
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label46
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label46
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label46
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label46
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label46
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label46
	b label629
label584:
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label29
	b label630
label29:
	add r2, r1, #4
	cmp r4, r2
	ble label31
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label31
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label31
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label31
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label31
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label31
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label31
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label31
	b label587
label42:
	ldr r9, [r5, r1, lsl #2]
	ldr r10, [r6, r3, lsl #2]
	mla r8, r8, r10, r9
	str r8, [r5, r1, lsl #2]
	add r3, r3, #1
	cmp r4, r3
	ble label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label42
	add r3, r3, #1
	cmp r4, r3
	ble label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label42
	add r3, r3, #1
	cmp r4, r3
	ble label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label42
	add r3, r3, #1
	cmp r4, r3
	ble label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label42
	add r3, r3, #1
	cmp r4, r3
	ble label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label42
	b label594
label621:
	add r3, r3, #1
	cmp r4, r3
	ble label23
label531:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label22
label577:
	add r3, r3, #1
	cmp r4, r3
	ble label23
	b label623
label22:
	ldr r9, [r6, r1, lsl #2]
	ldr r10, [r5, r3, lsl #2]
	mla r8, r8, r10, r9
	str r8, [r6, r1, lsl #2]
	add r3, r3, #1
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label22
	add r3, r3, #1
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label22
	add r3, r3, #1
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label22
	add r3, r3, #1
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label22
	add r3, r3, #1
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label22
	b label577
label623:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label22
	b label577
label548:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label42
	b label594
label39:
	add r1, r1, #1
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r4, r1
	ble label15
	mov r3, #0
	cmp r4, r3
	ble label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label42
	add r3, r3, #1
	cmp r4, r3
	ble label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label42
	add r3, r3, #1
	cmp r4, r3
	ble label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label42
	add r3, r3, #1
	cmp r4, r3
	ble label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label42
	add r3, r3, #1
	cmp r4, r3
	ble label39
	b label548
label594:
	add r3, r3, #1
	cmp r4, r3
	ble label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label42
	b label594
label31:
	add r2, r1, #4
	cmp r4, r2
	ble label34
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label34
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label34
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label34
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label34
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label34
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label34
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label34
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label34
	b label634
label34:
	mov r2, #0
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label159
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label159
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label159
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label159
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label159
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label159
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label159
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label159
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label159
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label159
label637:
	mov r2, #0
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label159
	b label637
label159:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r4, r1
	ble label24
	mov r3, #0
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label22
	add r3, r3, #1
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label22
	add r3, r3, #1
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label22
	add r3, r3, #1
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label22
	add r3, r3, #1
	cmp r4, r3
	ble label23
	b label531
label587:
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label31
	b label633
label630:
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label29
	b label630
label633:
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label31
	b label633
label634:
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label34
	b label634
label629:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label46
	b label599
label25:
	mov r0, #67
	bl _sysy_stoptime
	mov r0, r4
	mov r1, r5
	bl putarray
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label599:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label46
	b label645
label618:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label46
	b label599
label602:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label49
	b label648
label49:
	add r2, r1, #4
	cmp r4, r2
	ble label51
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label51
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label51
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label51
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label51
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label51
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label51
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label51
	b label605
label51:
	mov r2, #0
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label217
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label217
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label217
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label217
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label217
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label217
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label217
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label217
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label217
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label217
	b label652
label217:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r4, r1
	ble label15
	mov r3, #0
	cmp r4, r3
	ble label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label42
	add r3, r3, #1
	cmp r4, r3
	ble label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label42
	add r3, r3, #1
	cmp r4, r3
	ble label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label42
	add r3, r3, #1
	cmp r4, r3
	ble label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label42
	add r3, r3, #1
	cmp r4, r3
	ble label39
	b label548
label652:
	mov r2, #0
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label217
	b label652
label648:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label49
	b label648
label605:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label51
label651:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label51
	b label651
label645:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label46
	b label645
label617:
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label10
label655:
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label10
	b label655
