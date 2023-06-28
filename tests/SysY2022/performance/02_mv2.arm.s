.arch armv7ve
.data
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
	mov r5, r0
	movw r6, #:lower16:A
	movt r6, #:upper16:A
	movw r7, #:lower16:B
	movt r7, #:upper16:B
	movw r4, #:lower16:C
	movt r4, #:upper16:C
	mov r8, #0
	cmp r8, r0
	bge label9
	cmp r0, #0
	ble label8
	movw r0, #8040
	mla r10, r8, r0, r6
	mov r9, #0
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	b label620
label9:
	cmp r5, #0
	ble label10
	mov r8, #0
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label10
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label10
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label10
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label10
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label10
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label10
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label10
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label10
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label10
	b label626
label620:
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
label572:
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	b label598
label8:
	add r8, r8, #1
	cmp r8, r5
	bge label9
	cmp r5, #0
	ble label8
	movw r0, #8040
	mla r10, r8, r0, r6
	mov r9, #0
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	b label572
label598:
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
label624:
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	b label624
label10:
	mov r0, #59
	bl _sysy_starttime
	mov r0, #0
	cmp r5, #0
	ble label86
	mov r1, #0
	add r2, r1, #16
	cmp r2, r5
	bge label46
	b label45
label86:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label15
	mov r3, #0
	cmp r3, r5
	bge label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label40
	add r3, r3, #1
	cmp r3, r5
	bge label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label40
	add r3, r3, #1
	cmp r3, r5
	bge label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label40
	add r3, r3, #1
	cmp r3, r5
	bge label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label40
	b label627
label15:
	cmp r5, #0
	ble label95
	mov r1, #0
	add r2, r1, #16
	cmp r2, r5
	bge label18
	b label26
label95:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label35
	mov r3, #0
	cmp r3, r5
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label34
	add r3, r3, #1
	cmp r3, r5
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label34
	add r3, r3, #1
	cmp r3, r5
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label34
	add r3, r3, #1
	cmp r3, r5
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label34
label554:
	add r3, r3, #1
	cmp r3, r5
	bge label31
label580:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label34
	b label606
label34:
	ldr r9, [r7, r1, lsl #2]
	ldr r10, [r4, r3, lsl #2]
	mla r8, r8, r10, r9
	str r8, [r7, r1, lsl #2]
	add r3, r3, #1
	cmp r3, r5
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label34
	add r3, r3, #1
	cmp r3, r5
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label34
	add r3, r3, #1
	cmp r3, r5
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label34
	add r3, r3, #1
	cmp r3, r5
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label34
	add r3, r3, #1
	cmp r3, r5
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label34
	b label606
label35:
	add r0, r0, #1
	cmp r0, #50
	bge label36
	cmp r5, #0
	ble label86
	mov r1, #0
	add r2, r1, #16
	cmp r2, r5
	bge label46
	b label45
label36:
	mov r0, #67
	bl _sysy_stoptime
	mov r0, r5
	mov r1, r4
	bl putarray
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label606:
	add r3, r3, #1
	cmp r3, r5
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label34
	b label606
label31:
	add r1, r1, #1
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label35
	mov r3, #0
	cmp r3, r5
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label34
	add r3, r3, #1
	cmp r3, r5
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label34
	add r3, r3, #1
	cmp r3, r5
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label34
	add r3, r3, #1
	cmp r3, r5
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label34
	add r3, r3, #1
	cmp r3, r5
	bge label31
	b label580
label42:
	add r1, r1, #1
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label15
	mov r3, #0
	cmp r3, r5
	bge label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label40
	add r3, r3, #1
	cmp r3, r5
	bge label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label40
	add r3, r3, #1
	cmp r3, r5
	bge label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label40
	add r3, r3, #1
	cmp r3, r5
	bge label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label40
	add r3, r3, #1
	cmp r3, r5
	bge label42
	b label585
label611:
	add r3, r3, #1
	cmp r3, r5
	bge label42
	b label637
label40:
	ldr r9, [r4, r1, lsl #2]
	ldr r10, [r7, r3, lsl #2]
	mla r8, r8, r10, r9
	str r8, [r4, r1, lsl #2]
	add r3, r3, #1
	cmp r3, r5
	bge label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label40
	add r3, r3, #1
	cmp r3, r5
	bge label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label40
	add r3, r3, #1
	cmp r3, r5
	bge label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label40
	add r3, r3, #1
	cmp r3, r5
	bge label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label40
	add r3, r3, #1
	cmp r3, r5
	bge label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label40
	b label611
label48:
	add r2, r1, #16
	cmp r2, r5
	bge label51
	b label50
label51:
	mov r2, #0
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label277
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label277
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label277
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label277
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label277
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label277
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label277
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label277
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label277
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label277
	b label643
label277:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label15
	mov r3, #0
	cmp r3, r5
	bge label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label40
	add r3, r3, #1
	cmp r3, r5
	bge label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label40
	add r3, r3, #1
	cmp r3, r5
	bge label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label40
	add r3, r3, #1
	cmp r3, r5
	bge label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label40
	add r3, r3, #1
	cmp r3, r5
	bge label42
	b label585
label627:
	add r3, r3, #1
	cmp r3, r5
	bge label42
label585:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label40
	b label611
label637:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label40
	b label611
label643:
	mov r2, #0
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label277
	b label643
label18:
	add r2, r1, #16
	cmp r2, r5
	bge label20
label25:
	add r3, r7, r1, lsl #2
	mov r8, #0
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	str r8, [r3, #16]
	str r8, [r3, #20]
	str r8, [r3, #24]
	str r8, [r3, #28]
	str r8, [r3, #32]
	str r8, [r3, #36]
	str r8, [r3, #40]
	str r8, [r3, #44]
	str r8, [r3, #48]
	str r8, [r3, #52]
	str r8, [r3, #56]
	str r8, [r3, #60]
	mov r1, r2
	add r2, r2, #16
	cmp r2, r5
	bge label20
	b label25
label20:
	add r2, r1, #16
	cmp r2, r5
	bge label22
label24:
	add r3, r7, r1, lsl #2
	mov r8, #0
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	str r8, [r3, #16]
	str r8, [r3, #20]
	str r8, [r3, #24]
	str r8, [r3, #28]
	str r8, [r3, #32]
	str r8, [r3, #36]
	str r8, [r3, #40]
	str r8, [r3, #44]
	str r8, [r3, #48]
	str r8, [r3, #52]
	str r8, [r3, #56]
	str r8, [r3, #60]
	mov r1, r2
	add r2, r2, #16
	cmp r2, r5
	bge label22
	b label24
label22:
	mov r2, #0
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label117
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label117
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label117
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label117
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label117
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label117
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label117
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label117
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label117
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label117
	b label629
label117:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label35
	mov r3, #0
	cmp r3, r5
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label34
	add r3, r3, #1
	cmp r3, r5
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label34
	add r3, r3, #1
	cmp r3, r5
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label34
	add r3, r3, #1
	cmp r3, r5
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label34
	b label554
label629:
	mov r2, #0
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label117
	b label629
label26:
	add r3, r7, r1, lsl #2
	mov r8, #0
	str r8, [r7, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	str r8, [r3, #16]
	str r8, [r3, #20]
	str r8, [r3, #24]
	str r8, [r3, #28]
	str r8, [r3, #32]
	str r8, [r3, #36]
	str r8, [r3, #40]
	str r8, [r3, #44]
	str r8, [r3, #48]
	str r8, [r3, #52]
	str r8, [r3, #56]
	str r8, [r3, #60]
	mov r1, r2
	add r2, r2, #16
	cmp r2, r5
	bge label18
	b label26
label45:
	add r3, r4, r1, lsl #2
	mov r8, #0
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	str r8, [r3, #16]
	str r8, [r3, #20]
	str r8, [r3, #24]
	str r8, [r3, #28]
	str r8, [r3, #32]
	str r8, [r3, #36]
	str r8, [r3, #40]
	str r8, [r3, #44]
	str r8, [r3, #48]
	str r8, [r3, #52]
	str r8, [r3, #56]
	str r8, [r3, #60]
	mov r1, r2
	add r2, r2, #16
	cmp r2, r5
	bge label46
	b label45
label46:
	add r2, r1, #16
	cmp r2, r5
	bge label48
label53:
	add r3, r4, r1, lsl #2
	mov r8, #0
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	str r8, [r3, #16]
	str r8, [r3, #20]
	str r8, [r3, #24]
	str r8, [r3, #28]
	str r8, [r3, #32]
	str r8, [r3, #36]
	str r8, [r3, #40]
	str r8, [r3, #44]
	str r8, [r3, #48]
	str r8, [r3, #52]
	str r8, [r3, #56]
	str r8, [r3, #60]
	mov r1, r2
	add r2, r2, #16
	cmp r2, r5
	bge label48
	b label53
label50:
	add r3, r4, r1, lsl #2
	mov r8, #0
	str r8, [r4, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	str r8, [r3, #16]
	str r8, [r3, #20]
	str r8, [r3, #24]
	str r8, [r3, #28]
	str r8, [r3, #32]
	str r8, [r3, #36]
	str r8, [r3, #40]
	str r8, [r3, #44]
	str r8, [r3, #48]
	str r8, [r3, #52]
	str r8, [r3, #56]
	str r8, [r3, #60]
	mov r1, r2
	add r2, r2, #16
	cmp r2, r5
	bge label51
	b label50
label626:
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label10
label645:
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label10
	b label645
