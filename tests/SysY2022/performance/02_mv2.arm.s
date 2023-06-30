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
	bge label9
	cmp r0, #0
	ble label5
	movw r0, #8040
	mla r9, r8, r0, r7
	mov r10, #0
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label5
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label5
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label5
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label5
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label5
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label5
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label5
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label5
	b label501
label9:
	cmp r4, #0
	ble label12
	mov r8, #0
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r4
	bge label12
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r4
	bge label12
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r4
	bge label12
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r4
	bge label12
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r4
	bge label12
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r4
	bge label12
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r4
	bge label12
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r4
	bge label12
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r4
	bge label12
	b label587
label5:
	add r8, r8, #1
	cmp r8, r4
	bge label9
	cmp r4, #0
	ble label5
	movw r0, #8040
	mla r9, r8, r0, r7
	mov r10, #0
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label5
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label5
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label5
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label5
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label5
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label5
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label5
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label5
label501:
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label5
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label5
label585:
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label5
	b label585
label12:
	mov r0, #59
	bl _sysy_starttime
	mov r0, #0
	cmp r4, #0
	ble label94
	mov r1, #0
	add r2, r1, #4
	cmp r2, r4
	bge label48
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label48
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label48
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label48
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label48
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label48
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label48
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label48
	b label590
label94:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r1, r4
	bge label23
	mov r3, #0
	cmp r3, r4
	bge label19
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label21
	add r3, r3, #1
	cmp r3, r4
	bge label19
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label21
	add r3, r3, #1
	cmp r3, r4
	bge label19
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label21
	add r3, r3, #1
	cmp r3, r4
	bge label19
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label21
	add r3, r3, #1
	cmp r3, r4
	bge label19
label509:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label21
	b label551
label19:
	add r1, r1, #1
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r1, r4
	bge label23
	mov r3, #0
	cmp r3, r4
	bge label19
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label21
	add r3, r3, #1
	cmp r3, r4
	bge label19
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label21
	add r3, r3, #1
	cmp r3, r4
	bge label19
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label21
	add r3, r3, #1
	cmp r3, r4
	bge label19
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label21
	add r3, r3, #1
	cmp r3, r4
	bge label19
	b label509
label21:
	ldr r9, [r5, r1, lsl #2]
	ldr r10, [r6, r3, lsl #2]
	mla r8, r8, r10, r9
	str r8, [r5, r1, lsl #2]
	add r3, r3, #1
	cmp r3, r4
	bge label19
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label21
	add r3, r3, #1
	cmp r3, r4
	bge label19
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label21
	add r3, r3, #1
	cmp r3, r4
	bge label19
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label21
	add r3, r3, #1
	cmp r3, r4
	bge label19
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label21
	add r3, r3, #1
	cmp r3, r4
	bge label19
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label21
	b label551
label23:
	cmp r4, #0
	ble label124
	mov r1, #0
	add r2, r1, #4
	cmp r2, r4
	bge label36
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label36
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label36
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label36
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label36
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label36
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label36
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label36
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label36
	b label563
label26:
	add r0, r0, #1
	cmp r0, #50
	bge label27
	cmp r4, #0
	ble label94
	mov r1, #0
	add r2, r1, #4
	cmp r2, r4
	bge label48
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label48
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label48
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label48
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label48
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label48
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label48
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label48
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label48
	b label572
label27:
	mov r0, #67
	bl _sysy_stoptime
	mov r0, r4
	mov r1, r5
	bl putarray
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label563:
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label36
	b label605
label572:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label48
	b label614
label48:
	add r2, r1, #4
	cmp r2, r4
	bge label50
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label50
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label50
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label50
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label50
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label50
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label50
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label50
	b label575
label124:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r1, r4
	bge label26
	mov r3, #0
	cmp r3, r4
	bge label30
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label33
	add r3, r3, #1
	cmp r3, r4
	bge label30
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label33
	add r3, r3, #1
	cmp r3, r4
	bge label30
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label33
	add r3, r3, #1
	cmp r3, r4
	bge label30
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label33
	add r3, r3, #1
	cmp r3, r4
	bge label30
label516:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label33
label558:
	add r3, r3, #1
	cmp r3, r4
	bge label30
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label33
	b label558
label30:
	add r1, r1, #1
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r1, r4
	bge label26
	mov r3, #0
	cmp r3, r4
	bge label30
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label33
	add r3, r3, #1
	cmp r3, r4
	bge label30
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label33
	add r3, r3, #1
	cmp r3, r4
	bge label30
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label33
	add r3, r3, #1
	cmp r3, r4
	bge label30
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label33
	add r3, r3, #1
	cmp r3, r4
	bge label30
	b label516
label551:
	add r3, r3, #1
	cmp r3, r4
	bge label19
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label21
	b label551
label33:
	ldr r9, [r6, r1, lsl #2]
	ldr r10, [r5, r3, lsl #2]
	mla r8, r8, r10, r9
	str r8, [r6, r1, lsl #2]
	add r3, r3, #1
	cmp r3, r4
	bge label30
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label33
	add r3, r3, #1
	cmp r3, r4
	bge label30
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label33
	add r3, r3, #1
	cmp r3, r4
	bge label30
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label33
	add r3, r3, #1
	cmp r3, r4
	bge label30
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label33
	add r3, r3, #1
	cmp r3, r4
	bge label30
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label33
	b label558
label36:
	add r2, r1, #4
	cmp r2, r4
	bge label38
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label38
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label38
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label38
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label38
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label38
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label38
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label38
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label38
	b label606
label38:
	add r2, r1, #4
	cmp r2, r4
	bge label41
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label41
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label41
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label41
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label41
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label41
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label41
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label41
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label41
	b label607
label41:
	mov r2, #0
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label183
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label183
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label183
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label183
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label183
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label183
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label183
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label183
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label183
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label183
	b label610
label183:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r1, r4
	bge label26
	mov r3, #0
	cmp r3, r4
	bge label30
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label33
	add r3, r3, #1
	cmp r3, r4
	bge label30
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label33
	add r3, r3, #1
	cmp r3, r4
	bge label30
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label33
	add r3, r3, #1
	cmp r3, r4
	bge label30
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label33
	add r3, r3, #1
	cmp r3, r4
	bge label30
	b label516
label610:
	mov r2, #0
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label183
	b label610
label50:
	add r2, r1, #4
	cmp r2, r4
	bge label52
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label52
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label52
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label52
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label52
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label52
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label52
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label52
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label52
	b label618
label52:
	mov r2, #0
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label220
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label220
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label220
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label220
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label220
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label220
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label220
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label220
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label220
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label220
	b label619
label220:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r1, r4
	bge label23
	mov r3, #0
	cmp r3, r4
	bge label19
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label21
	add r3, r3, #1
	cmp r3, r4
	bge label19
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label21
	add r3, r3, #1
	cmp r3, r4
	bge label19
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label21
	add r3, r3, #1
	cmp r3, r4
	bge label19
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label21
	add r3, r3, #1
	cmp r3, r4
	bge label19
	b label509
label619:
	mov r2, #0
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label220
	b label619
label606:
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label38
	b label606
label605:
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label36
	b label605
label607:
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label41
	b label607
label618:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label52
	b label618
label614:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label48
	b label614
label575:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label50
label617:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label50
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
	bge label48
	b label572
label587:
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r4
	bge label12
label589:
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r4
	bge label12
	b label589
