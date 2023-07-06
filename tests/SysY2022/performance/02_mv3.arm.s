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
	b label603
label9:
	cmp r4, #0
	ble label12
	mov r8, #0
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label12
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label12
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label12
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label12
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label12
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label12
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label12
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label12
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label12
	b label609
label12:
	mov r0, #59
	bl _sysy_starttime
	mov r0, #0
	cmp r4, #0
	ble label94
	mov r1, #0
	add r2, r1, #4
	cmp r4, r2
	ble label17
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label17
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label17
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label17
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label17
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label17
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label17
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label17
	b label612
label94:
	mov r1, #0
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	ble label34
	mov r3, #0
	cmp r4, r3
	ble label30
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label32
	add r3, r3, #1
	cmp r4, r3
	ble label30
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label32
	add r3, r3, #1
	cmp r4, r3
	ble label30
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label32
	add r3, r3, #1
	cmp r4, r3
	ble label30
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label32
label489:
	add r3, r3, #1
	cmp r4, r3
	ble label30
	b label534
label30:
	add r1, r1, #1
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	ble label34
	mov r3, #0
	cmp r4, r3
	ble label30
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label32
	add r3, r3, #1
	cmp r4, r3
	ble label30
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label32
	add r3, r3, #1
	cmp r4, r3
	ble label30
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label32
	add r3, r3, #1
	cmp r4, r3
	ble label30
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label32
	add r3, r3, #1
	cmp r4, r3
	ble label30
label534:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label32
label579:
	add r3, r3, #1
	cmp r4, r3
	ble label30
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label32
	b label579
label32:
	ldr r9, [r5, r1, lsl #2]
	ldr r10, [r6, r3, lsl #2]
	add r3, r3, #1
	mla r8, r8, r10, r9
	str r8, [r5, r1, lsl #2]
	cmp r4, r3
	ble label30
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label32
	add r3, r3, #1
	cmp r4, r3
	ble label30
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label32
	add r3, r3, #1
	cmp r4, r3
	ble label30
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label32
	add r3, r3, #1
	cmp r4, r3
	ble label30
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label32
	add r3, r3, #1
	cmp r4, r3
	ble label30
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label32
	b label579
label21:
	mov r2, #0
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label116
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label116
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label116
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label116
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label116
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label116
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label116
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label116
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label116
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label116
	b label617
label116:
	mov r1, #0
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	ble label34
	mov r3, #0
	cmp r4, r3
	ble label30
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label32
	add r3, r3, #1
	cmp r4, r3
	ble label30
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label32
	add r3, r3, #1
	cmp r4, r3
	ble label30
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label32
	add r3, r3, #1
	cmp r4, r3
	ble label30
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label32
	b label489
label34:
	cmp r4, #0
	ble label162
	mov r1, #0
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
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label48
	b label639
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
	b label597
label162:
	mov r1, #0
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	ble label43
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
label542:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label42
label587:
	add r3, r3, #1
	cmp r4, r3
	ble label39
	b label632
label39:
	add r1, r1, #1
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	ble label43
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
	b label542
label43:
	add r0, r0, #1
	cmp r0, #50
	bge label44
	cmp r4, #0
	ble label94
	mov r1, #0
	add r2, r1, #4
	cmp r4, r2
	ble label17
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label17
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label17
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label17
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label17
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label17
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label17
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label17
	b label638
label52:
	mov r2, #0
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label222
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label222
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label222
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label222
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label222
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label222
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label222
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label222
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label222
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label222
	b label644
label222:
	mov r1, #0
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	ble label43
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
	b label542
label632:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label42
	b label587
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
	b label587
label644:
	mov r2, #0
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label222
	b label644
label617:
	mov r2, #0
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label116
	b label617
label517:
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label8
	b label562
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
	b label517
label562:
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label8
label607:
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label8
	b label607
label603:
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label8
	b label517
label50:
	add r2, r1, #4
	cmp r4, r2
	ble label52
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label52
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label52
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label52
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label52
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label52
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label52
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label52
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label52
	b label643
label17:
	add r2, r1, #4
	cmp r4, r2
	ble label19
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label19
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label19
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label19
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label19
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label19
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label19
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label19
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label19
	b label615
label19:
	add r2, r1, #4
	cmp r4, r2
	ble label21
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label21
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label21
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label21
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label21
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label21
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label21
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label21
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label21
	b label616
label597:
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
	b label642
label643:
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label52
	b label643
label642:
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
	b label642
label639:
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
	b label639
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
	ble label19
	b label615
label616:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label21
	b label616
label569:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label17
	b label614
label638:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label17
	b label569
label44:
	mov r0, #67
	bl _sysy_stoptime
	mov r0, r4
	mov r1, r5
	bl putarray
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label614:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label17
	b label614
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
	ble label17
	b label569
label609:
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label12
label611:
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label12
	b label611
