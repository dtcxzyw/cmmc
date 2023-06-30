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
	b label517
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
	b label609
label517:
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
label607:
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label5
	b label607
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
	b label517
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
	b label612
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
	b label525
label23:
	cmp r4, #0
	ble label124
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
	b label584
label124:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r1, r4
	bge label32
	mov r3, #0
	cmp r3, r4
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r3, r4
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r3, r4
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r3, r4
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	b label620
label32:
	add r0, r0, #1
	cmp r0, #50
	bge label33
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
	b label628
label584:
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
	b label629
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
	b label644
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
	b label525
label620:
	add r3, r3, #1
	cmp r3, r4
	bge label31
label532:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	b label577
label31:
	add r1, r1, #1
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r1, r4
	bge label32
	mov r3, #0
	cmp r3, r4
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r3, r4
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r3, r4
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r3, r4
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r3, r4
	bge label31
	b label532
label577:
	add r3, r3, #1
	cmp r3, r4
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	b label577
label525:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label21
	b label570
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
	b label525
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
label570:
	add r3, r3, #1
	cmp r3, r4
	bge label19
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label21
	b label570
label30:
	ldr r9, [r6, r1, lsl #2]
	ldr r10, [r5, r3, lsl #2]
	mla r8, r8, r10, r9
	str r8, [r6, r1, lsl #2]
	add r3, r3, #1
	cmp r3, r4
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r3, r4
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r3, r4
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r3, r4
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r3, r4
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	b label577
label644:
	mov r2, #0
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label220
	b label644
label37:
	add r2, r1, #4
	cmp r2, r4
	bge label39
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label39
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label39
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label39
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label39
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label39
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label39
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label39
	b label587
label39:
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
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label42
	b label633
label42:
	mov r2, #0
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label188
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label188
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label188
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label188
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label188
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label188
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label188
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label188
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label188
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label188
	b label636
label188:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r1, r4
	bge label32
	mov r3, #0
	cmp r3, r4
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r3, r4
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r3, r4
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r3, r4
	bge label31
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label30
	add r3, r3, #1
	cmp r3, r4
	bge label31
	b label532
label636:
	mov r2, #0
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label188
	b label636
label629:
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
	b label629
label587:
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label39
label632:
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label39
	b label632
label633:
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
	b label633
label628:
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
	b label594
label33:
	mov r0, #67
	bl _sysy_stoptime
	mov r0, r4
	mov r1, r5
	bl putarray
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label594:
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
	b label639
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
	b label597
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
	b label643
label639:
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
	b label639
label597:
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
label642:
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
	b label642
label643:
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
	b label643
label612:
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
	b label594
label609:
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r4
	bge label12
label611:
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r4
	bge label12
	b label611
