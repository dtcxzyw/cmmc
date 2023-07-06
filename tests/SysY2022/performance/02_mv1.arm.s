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
	ble label5
	movw r0, #8040
	mov r10, #0
	mla r9, r8, r0, r7
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
label514:
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label5
	b label558
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
	b label604
label558:
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label5
label602:
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label5
	b label602
label5:
	add r8, r8, #1
	cmp r4, r8
	ble label9
	cmp r4, #0
	ble label5
	movw r0, #8040
	mov r10, #0
	mla r9, r8, r0, r7
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
	b label514
label12:
	mov r0, #59
	bl _sysy_starttime
	mov r0, #0
	cmp r4, #0
	ble label94
	mov r1, #0
	add r2, r1, #4
	cmp r4, r2
	ble label48
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label48
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label48
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label48
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label48
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label48
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label48
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label48
	b label607
label94:
	mov r1, #0
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	ble label23
	mov r3, #0
	cmp r4, r3
	ble label19
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label21
	add r3, r3, #1
	cmp r4, r3
	ble label19
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label21
	add r3, r3, #1
	cmp r4, r3
	ble label19
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label21
	add r3, r3, #1
	cmp r4, r3
	ble label19
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label21
	add r3, r3, #1
	cmp r4, r3
	ble label19
	b label522
label566:
	add r3, r3, #1
	cmp r4, r3
	ble label19
	b label610
label21:
	ldr r9, [r5, r1, lsl #2]
	ldr r10, [r6, r3, lsl #2]
	add r3, r3, #1
	mla r8, r8, r10, r9
	str r8, [r5, r1, lsl #2]
	cmp r4, r3
	ble label19
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label21
	add r3, r3, #1
	cmp r4, r3
	ble label19
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label21
	add r3, r3, #1
	cmp r4, r3
	ble label19
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label21
	add r3, r3, #1
	cmp r4, r3
	ble label19
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label21
	add r3, r3, #1
	cmp r4, r3
	ble label19
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label21
	b label566
label23:
	cmp r4, #0
	ble label125
	mov r1, #0
	add r2, r1, #4
	cmp r4, r2
	ble label36
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label36
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label36
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label36
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label36
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label36
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label36
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label36
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label36
	b label580
label32:
	add r0, r0, #1
	cmp r0, #50
	bge label33
	cmp r4, #0
	ble label94
	mov r1, #0
	add r2, r1, #4
	cmp r4, r2
	ble label48
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label48
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label48
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label48
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label48
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label48
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label48
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label48
	b label623
label33:
	mov r0, #67
	bl _sysy_stoptime
	mov r0, r4
	mov r1, r5
	bl putarray
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label580:
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label36
	b label624
label41:
	mov r2, #0
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label185
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label185
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label185
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label185
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label185
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label185
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label185
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label185
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label185
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label185
	b label629
label185:
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
	add r3, r3, #1
	cmp r4, r3
	ble label28
label530:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
label574:
	add r3, r3, #1
	cmp r4, r3
	ble label28
	b label618
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
	b label530
label618:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	b label574
label125:
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
	add r3, r3, #1
	cmp r4, r3
	ble label28
	b label530
label610:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label21
	b label566
label522:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label21
	b label566
label19:
	add r1, r1, #1
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	ble label23
	mov r3, #0
	cmp r4, r3
	ble label19
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label21
	add r3, r3, #1
	cmp r4, r3
	ble label19
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label21
	add r3, r3, #1
	cmp r4, r3
	ble label19
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label21
	add r3, r3, #1
	cmp r4, r3
	ble label19
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label21
	add r3, r3, #1
	cmp r4, r3
	ble label19
	b label522
label52:
	mov r2, #0
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label222
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label222
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label222
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label222
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label222
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label222
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label222
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label222
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label222
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label222
	b label638
label222:
	mov r1, #0
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	ble label23
	mov r3, #0
	cmp r4, r3
	ble label19
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label21
	add r3, r3, #1
	cmp r4, r3
	ble label19
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label21
	add r3, r3, #1
	cmp r4, r3
	ble label19
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label21
	add r3, r3, #1
	cmp r4, r3
	ble label19
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label21
	add r3, r3, #1
	cmp r4, r3
	ble label19
	b label522
label30:
	ldr r9, [r6, r1, lsl #2]
	ldr r10, [r5, r3, lsl #2]
	add r3, r3, #1
	mla r8, r8, r10, r9
	str r8, [r6, r1, lsl #2]
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
	b label574
label629:
	mov r2, #0
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label185
	b label629
label638:
	mov r2, #0
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label222
	b label638
label36:
	add r2, r1, #4
	cmp r4, r2
	ble label39
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label39
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label39
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label39
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label39
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label39
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label39
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label39
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label39
	b label625
label39:
	add r2, r1, #4
	cmp r4, r2
	ble label41
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label41
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label41
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label41
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label41
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label41
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label41
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label41
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label41
label628:
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label41
	b label628
label625:
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label39
	b label625
label624:
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label36
	b label624
label48:
	add r2, r1, #4
	cmp r4, r2
	ble label50
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label50
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label50
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label50
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label50
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label50
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label50
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label50
	b label592
label50:
	add r2, r1, #4
	cmp r4, r2
	ble label52
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label52
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label52
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label52
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label52
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label52
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label52
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label52
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label52
label637:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label52
	b label637
label592:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label50
label636:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label50
	b label636
label623:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label48
label589:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label48
label633:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label48
	b label633
label607:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label48
	b label589
label604:
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label12
label606:
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label12
	b label606
