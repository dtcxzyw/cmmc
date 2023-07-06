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
	mov r8, #0
	movw r5, #:lower16:C
	movw r6, #:lower16:B
	movw r7, #:lower16:A
	mov r4, r0
	movt r5, #:upper16:C
	movt r6, #:upper16:B
	movt r7, #:upper16:A
	cmp r0, r8
	ble label9
	cmp r0, #0
	ble label8
	movw r0, #8040
	mov r10, #0
	mla r9, r8, r0, r7
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label8
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label8
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label8
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label8
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label8
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label8
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label8
	b label602
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
	b label608
label10:
	mov r0, #59
	bl _sysy_starttime
	mov r0, #0
	cmp r4, #0
	ble label86
	mov r1, #0
	add r2, r1, #4
	cmp r4, r2
	ble label15
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label15
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label15
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label15
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label15
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label15
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label15
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label15
	b label609
label86:
	mov r1, #0
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	ble label32
	mov r3, #0
	cmp r4, r3
	ble label28
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r4, r3
	ble label28
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r4, r3
	ble label28
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r4, r3
	ble label28
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	b label487
label566:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label15
	b label611
label487:
	add r3, r3, #1
	cmp r4, r3
	ble label28
	b label532
label32:
	cmp r4, #0
	ble label154
	mov r1, #0
	add r2, r1, #4
	cmp r4, r2
	ble label45
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label45
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label45
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label45
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label45
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label45
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label45
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label45
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label45
	b label591
label154:
	mov r1, #0
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	ble label35
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
	b label540
label35:
	add r0, r0, #1
	cmp r0, #50
	bge label36
	cmp r4, #0
	ble label86
	mov r1, #0
	add r2, r1, #4
	cmp r4, r2
	ble label15
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label15
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label15
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label15
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label15
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label15
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label15
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label15
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label15
	b label566
label36:
	mov r0, #67
	bl _sysy_stoptime
	mov r0, r4
	mov r1, r5
	bl putarray
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label591:
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label45
	b label636
label540:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label42
label585:
	add r3, r3, #1
	cmp r4, r3
	ble label39
	b label630
label50:
	mov r2, #0
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label214
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label214
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label214
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label214
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label214
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label214
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label214
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label214
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label214
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label214
	b label641
label214:
	mov r1, #0
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	ble label35
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
	b label540
label630:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label42
	b label585
label39:
	add r1, r1, #1
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	ble label35
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
	b label540
label532:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	b label577
label28:
	add r1, r1, #1
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	ble label32
	mov r3, #0
	cmp r4, r3
	ble label28
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r4, r3
	ble label28
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r4, r3
	ble label28
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r4, r3
	ble label28
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r4, r3
	ble label28
	b label532
label42:
	ldr r9, [r6, r1, lsl #2]
	ldr r10, [r5, r3, lsl #2]
	add r3, r3, #1
	mla r8, r8, r10, r9
	str r8, [r6, r1, lsl #2]
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
	b label585
label577:
	add r3, r3, #1
	cmp r4, r3
	ble label28
	b label622
label30:
	ldr r9, [r5, r1, lsl #2]
	ldr r10, [r6, r3, lsl #2]
	add r3, r3, #1
	mla r8, r8, r10, r9
	str r8, [r5, r1, lsl #2]
	cmp r4, r3
	ble label28
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r4, r3
	ble label28
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r4, r3
	ble label28
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r4, r3
	ble label28
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r4, r3
	ble label28
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	b label577
label622:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	b label577
label641:
	mov r2, #0
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label214
	b label641
label602:
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label8
label516:
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label8
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label8
label606:
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label8
	b label606
label8:
	add r8, r8, #1
	cmp r4, r8
	ble label9
	cmp r4, #0
	ble label8
	movw r0, #8040
	mov r10, #0
	mla r9, r8, r0, r7
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label8
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label8
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label8
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label8
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label8
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label8
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label8
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label8
	b label516
label45:
	add r2, r1, #4
	cmp r4, r2
	ble label48
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label48
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label48
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label48
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label48
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label48
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label48
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label48
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label48
	b label637
label48:
	add r2, r1, #4
	cmp r4, r2
	ble label50
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label50
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label50
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label50
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label50
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label50
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label50
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label50
	b label595
label15:
	add r2, r1, #4
	cmp r4, r2
	ble label18
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label18
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label18
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label18
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label18
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label18
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label18
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label18
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label18
	b label612
label18:
	add r2, r1, #4
	cmp r4, r2
	ble label20
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label20
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label20
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label20
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label20
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label20
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label20
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label20
	b label570
label20:
	mov r2, #0
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label113
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label113
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label113
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label113
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label113
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label113
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label113
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label113
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label113
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label113
	b label616
label113:
	mov r1, #0
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	ble label32
	mov r3, #0
	cmp r4, r3
	ble label28
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r4, r3
	ble label28
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r4, r3
	ble label28
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r4, r3
	ble label28
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	b label487
label616:
	mov r2, #0
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label113
	b label616
label595:
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label50
label640:
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label50
	b label640
label637:
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label48
	b label637
label636:
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label45
	b label636
label609:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label15
	b label566
label611:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label15
	b label611
label612:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label18
	b label612
label570:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label20
label615:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label20
	b label615
label608:
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label10
label645:
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label10
	b label645
