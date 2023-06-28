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
	b label618
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
	b label624
label618:
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
label570:
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
label622:
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	b label622
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
	b label570
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
	b label625
label29:
	add r0, r0, #1
	cmp r0, #50
	bge label30
	cmp r5, #0
	ble label86
	mov r1, #0
	add r2, r1, #16
	cmp r2, r5
	bge label46
	b label45
label30:
	mov r0, #67
	bl _sysy_stoptime
	mov r0, r5
	mov r1, r4
	bl putarray
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
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
	bge label29
	mov r3, #0
	cmp r3, r5
	bge label36
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label35
	add r3, r3, #1
	cmp r3, r5
	bge label36
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label35
	add r3, r3, #1
	cmp r3, r5
	bge label36
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label35
	add r3, r3, #1
	cmp r3, r5
	bge label36
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label35
label552:
	add r3, r3, #1
	cmp r3, r5
	bge label36
	b label578
label584:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label40
	b label610
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
	b label584
label641:
	mov r2, #0
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label277
	b label641
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
	b label584
label578:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label35
label604:
	add r3, r3, #1
	cmp r3, r5
	bge label36
	b label630
label35:
	ldr r9, [r7, r1, lsl #2]
	ldr r10, [r4, r3, lsl #2]
	mla r8, r8, r10, r9
	str r8, [r7, r1, lsl #2]
	add r3, r3, #1
	cmp r3, r5
	bge label36
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label35
	add r3, r3, #1
	cmp r3, r5
	bge label36
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label35
	add r3, r3, #1
	cmp r3, r5
	bge label36
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label35
	add r3, r3, #1
	cmp r3, r5
	bge label36
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label35
	add r3, r3, #1
	cmp r3, r5
	bge label36
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label35
	b label604
label630:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label35
	b label604
label36:
	add r1, r1, #1
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label29
	mov r3, #0
	cmp r3, r5
	bge label36
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label35
	add r3, r3, #1
	cmp r3, r5
	bge label36
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label35
	add r3, r3, #1
	cmp r3, r5
	bge label36
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label35
	add r3, r3, #1
	cmp r3, r5
	bge label36
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label35
	add r3, r3, #1
	cmp r3, r5
	bge label36
	b label578
label610:
	add r3, r3, #1
	cmp r3, r5
	bge label42
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label40
	b label610
label625:
	add r3, r3, #1
	cmp r3, r5
	bge label42
	b label584
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
	b label610
label18:
	add r2, r1, #16
	cmp r2, r5
	bge label21
label20:
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
	bge label21
	b label20
label21:
	add r2, r1, #16
	cmp r2, r5
	bge label23
	b label25
label23:
	mov r2, #0
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label134
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label134
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label134
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label134
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label134
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label134
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label134
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label134
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label134
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label134
	b label627
label134:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label29
	mov r3, #0
	cmp r3, r5
	bge label36
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label35
	add r3, r3, #1
	cmp r3, r5
	bge label36
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label35
	add r3, r3, #1
	cmp r3, r5
	bge label36
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label35
	add r3, r3, #1
	cmp r3, r5
	bge label36
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label35
	b label552
label627:
	mov r2, #0
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label134
	b label627
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
	bge label23
	b label25
label46:
	add r2, r1, #16
	cmp r2, r5
	bge label49
	b label48
label49:
	add r2, r1, #16
	cmp r2, r5
	bge label51
	b label53
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
	b label641
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
	bge label51
	b label53
label48:
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
	bge label49
	b label48
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
label624:
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label10
label643:
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label10
	b label643
