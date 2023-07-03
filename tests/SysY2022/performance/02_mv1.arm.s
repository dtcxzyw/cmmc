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
	ble label4
	cmp r0, #0
	ble label52
	movw r0, #8040
	mla r9, r8, r0, r7
	mov r10, #0
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label52
label549:
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label52
label637:
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label52
	b label637
label52:
	add r8, r8, #1
	cmp r4, r8
	ble label4
	cmp r4, #0
	ble label52
	movw r0, #8040
	mla r9, r8, r0, r7
	mov r10, #0
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label52
	b label549
label4:
	cmp r4, #0
	ble label7
	mov r8, #0
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label7
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label7
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label7
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label7
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label7
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label7
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label7
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label7
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label7
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label7
label598:
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label7
	b label598
label7:
	mov r0, #59
	bl _sysy_starttime
	mov r0, #0
	cmp r4, #0
	ble label80
	mov r1, #0
	add r2, r1, #4
	cmp r4, r2
	ble label43
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label43
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label43
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label43
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label43
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label43
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label43
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label43
	b label599
label43:
	add r2, r1, #4
	cmp r4, r2
	ble label45
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label45
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label45
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label45
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label45
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label45
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label45
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label45
	b label585
label80:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r4, r1
	ble label18
	mov r3, #0
	cmp r4, r3
	ble label14
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label16
	add r3, r3, #1
	cmp r4, r3
	ble label14
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label16
	add r3, r3, #1
	cmp r4, r3
	ble label14
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label16
	add r3, r3, #1
	cmp r4, r3
	ble label14
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label16
	add r3, r3, #1
	cmp r4, r3
	ble label14
	b label514
label614:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label43
label582:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label43
	b label626
label110:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r4, r1
	ble label27
	mov r3, #0
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label26
	add r3, r3, #1
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label26
	add r3, r3, #1
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label26
	add r3, r3, #1
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label26
	add r3, r3, #1
	cmp r4, r3
	ble label23
	b label521
label27:
	add r0, r0, #1
	cmp r0, #50
	bge label28
	cmp r4, #0
	ble label80
	mov r1, #0
	add r2, r1, #4
	cmp r4, r2
	ble label43
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label43
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label43
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label43
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label43
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label43
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label43
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label43
	b label614
label28:
	mov r0, #67
	bl _sysy_stoptime
	mov r0, r4
	mov r1, r5
	bl putarray
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label521:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label26
	b label565
label23:
	add r1, r1, #1
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r4, r1
	ble label27
	mov r3, #0
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label26
	add r3, r3, #1
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label26
	add r3, r3, #1
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label26
	add r3, r3, #1
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label26
	add r3, r3, #1
	cmp r4, r3
	ble label23
	b label521
label609:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label26
	b label565
label26:
	ldr r9, [r6, r1, lsl #2]
	ldr r10, [r5, r3, lsl #2]
	mla r8, r8, r10, r9
	str r8, [r6, r1, lsl #2]
	add r3, r3, #1
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label26
	add r3, r3, #1
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label26
	add r3, r3, #1
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label26
	add r3, r3, #1
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label26
	add r3, r3, #1
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label26
label565:
	add r3, r3, #1
	cmp r4, r3
	ble label23
	b label609
label558:
	add r3, r3, #1
	cmp r4, r3
	ble label14
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label16
	b label558
label16:
	ldr r9, [r5, r1, lsl #2]
	ldr r10, [r6, r3, lsl #2]
	mla r8, r8, r10, r9
	str r8, [r5, r1, lsl #2]
	add r3, r3, #1
	cmp r4, r3
	ble label14
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label16
	add r3, r3, #1
	cmp r4, r3
	ble label14
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label16
	add r3, r3, #1
	cmp r4, r3
	ble label14
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label16
	add r3, r3, #1
	cmp r4, r3
	ble label14
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label16
	add r3, r3, #1
	cmp r4, r3
	ble label14
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label16
	b label558
label514:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label16
	b label558
label18:
	cmp r4, #0
	ble label110
	mov r1, #0
	add r2, r1, #4
	cmp r4, r2
	ble label32
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label32
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label32
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label32
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label32
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label32
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label32
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label32
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label32
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label32
	b label615
label32:
	add r2, r1, #4
	cmp r4, r2
	ble label35
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label35
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label35
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label35
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label35
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label35
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label35
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label35
	b label574
label47:
	mov r2, #0
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label206
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label206
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label206
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label206
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label206
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label206
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label206
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label206
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label206
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label206
	b label631
label206:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r4, r1
	ble label18
	mov r3, #0
	cmp r4, r3
	ble label14
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label16
	add r3, r3, #1
	cmp r4, r3
	ble label14
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label16
	add r3, r3, #1
	cmp r4, r3
	ble label14
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label16
	add r3, r3, #1
	cmp r4, r3
	ble label14
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label16
	add r3, r3, #1
	cmp r4, r3
	ble label14
	b label514
label14:
	add r1, r1, #1
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r4, r1
	ble label18
	mov r3, #0
	cmp r4, r3
	ble label14
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label16
	add r3, r3, #1
	cmp r4, r3
	ble label14
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label16
	add r3, r3, #1
	cmp r4, r3
	ble label14
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label16
	add r3, r3, #1
	cmp r4, r3
	ble label14
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label16
	add r3, r3, #1
	cmp r4, r3
	ble label14
	b label514
label631:
	mov r2, #0
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label206
	b label631
label45:
	add r2, r1, #4
	cmp r4, r2
	ble label47
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label47
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label47
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label47
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label47
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label47
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label47
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label47
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label47
	b label630
label574:
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label35
	b label618
label35:
	add r2, r1, #4
	cmp r4, r2
	ble label38
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label38
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label38
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label38
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label38
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label38
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label38
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label38
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label38
	b label621
label38:
	mov r2, #0
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label179
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label179
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label179
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label179
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label179
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label179
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label179
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label179
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label179
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label179
	b label624
label179:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r4, r1
	ble label27
	mov r3, #0
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label26
	add r3, r3, #1
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label26
	add r3, r3, #1
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label26
	add r3, r3, #1
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label26
	add r3, r3, #1
	cmp r4, r3
	ble label23
	b label521
label624:
	mov r2, #0
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label179
	b label624
label615:
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label32
	b label615
label618:
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label35
	b label618
label621:
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label38
	b label621
label626:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label43
	b label626
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
	ble label43
	b label582
label585:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label45
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
	ble label45
	b label629
label630:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r4, r2
	ble label47
	b label630
