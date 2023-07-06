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
	ble label4
	cmp r0, #0
	ble label52
	movw r0, #8040
	mov r10, #0
	mla r9, r8, r0, r7
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
	b label556
label52:
	add r8, r8, #1
	cmp r4, r8
	ble label4
	cmp r4, #0
	ble label52
	movw r0, #8040
	mov r10, #0
	mla r9, r8, r0, r7
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
label556:
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
label646:
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label52
	b label646
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
	b label606
label7:
	mov r0, #59
	bl _sysy_starttime
	mov r0, #0
	cmp r4, #0
	ble label80
	mov r1, #0
	add r2, r1, #4
	cmp r4, r2
	ble label12
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label12
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label12
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label12
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label12
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label12
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label12
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label12
	b label607
label80:
	mov r1, #0
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	ble label29
	mov r3, #0
	cmp r4, r3
	ble label25
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label28
	add r3, r3, #1
	cmp r4, r3
	ble label25
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label28
	add r3, r3, #1
	cmp r4, r3
	ble label25
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label28
	add r3, r3, #1
	cmp r4, r3
	ble label25
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label28
	b label484
label29:
	cmp r4, #0
	ble label148
	mov r1, #0
	add r2, r1, #4
	cmp r4, r2
	ble label43
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label43
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label43
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label43
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label43
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label43
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label43
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label43
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label43
	b label589
label148:
	mov r1, #0
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	ble label38
	mov r3, #0
	cmp r4, r3
	ble label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label36
	add r3, r3, #1
	cmp r4, r3
	ble label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label36
	add r3, r3, #1
	cmp r4, r3
	ble label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label36
	add r3, r3, #1
	cmp r4, r3
	ble label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label36
	add r3, r3, #1
	cmp r4, r3
	ble label34
	b label538
label38:
	add r0, r0, #1
	cmp r0, #50
	bge label39
	cmp r4, #0
	ble label80
	mov r1, #0
	add r2, r1, #4
	cmp r4, r2
	ble label12
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label12
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label12
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label12
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label12
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label12
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label12
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label12
	b label633
label589:
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label43
	b label634
label538:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label36
label583:
	add r3, r3, #1
	cmp r4, r3
	ble label34
	b label628
label48:
	mov r2, #0
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label213
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label213
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label213
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label213
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label213
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label213
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label213
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label213
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label213
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label213
	b label641
label213:
	mov r1, #0
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	ble label38
	mov r3, #0
	cmp r4, r3
	ble label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label36
	add r3, r3, #1
	cmp r4, r3
	ble label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label36
	add r3, r3, #1
	cmp r4, r3
	ble label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label36
	add r3, r3, #1
	cmp r4, r3
	ble label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label36
	add r3, r3, #1
	cmp r4, r3
	ble label34
	b label538
label628:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label36
	b label583
label36:
	ldr r9, [r6, r1, lsl #2]
	ldr r10, [r5, r3, lsl #2]
	add r3, r3, #1
	mla r8, r8, r10, r9
	str r8, [r6, r1, lsl #2]
	cmp r4, r3
	ble label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label36
	add r3, r3, #1
	cmp r4, r3
	ble label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label36
	add r3, r3, #1
	cmp r4, r3
	ble label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label36
	add r3, r3, #1
	cmp r4, r3
	ble label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label36
	add r3, r3, #1
	cmp r4, r3
	ble label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label36
	b label583
label34:
	add r1, r1, #1
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	ble label38
	mov r3, #0
	cmp r4, r3
	ble label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label36
	add r3, r3, #1
	cmp r4, r3
	ble label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label36
	add r3, r3, #1
	cmp r4, r3
	ble label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label36
	add r3, r3, #1
	cmp r4, r3
	ble label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label36
	add r3, r3, #1
	cmp r4, r3
	ble label34
	b label538
label16:
	mov r2, #0
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label102
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label102
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label102
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label102
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label102
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label102
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label102
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label102
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label102
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label102
	b label612
label102:
	mov r1, #0
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	ble label29
	mov r3, #0
	cmp r4, r3
	ble label25
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label28
	add r3, r3, #1
	cmp r4, r3
	ble label25
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label28
	add r3, r3, #1
	cmp r4, r3
	ble label25
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label28
	add r3, r3, #1
	cmp r4, r3
	ble label25
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label28
label484:
	add r3, r3, #1
	cmp r4, r3
	ble label25
label529:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label28
	b label574
label25:
	add r1, r1, #1
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	ble label29
	mov r3, #0
	cmp r4, r3
	ble label25
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label28
	add r3, r3, #1
	cmp r4, r3
	ble label25
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label28
	add r3, r3, #1
	cmp r4, r3
	ble label25
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label28
	add r3, r3, #1
	cmp r4, r3
	ble label25
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label28
	add r3, r3, #1
	cmp r4, r3
	ble label25
	b label529
label574:
	add r3, r3, #1
	cmp r4, r3
	ble label25
	b label619
label28:
	ldr r9, [r5, r1, lsl #2]
	ldr r10, [r6, r3, lsl #2]
	add r3, r3, #1
	mla r8, r8, r10, r9
	str r8, [r5, r1, lsl #2]
	cmp r4, r3
	ble label25
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label28
	add r3, r3, #1
	cmp r4, r3
	ble label25
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label28
	add r3, r3, #1
	cmp r4, r3
	ble label25
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label28
	add r3, r3, #1
	cmp r4, r3
	ble label25
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label28
	add r3, r3, #1
	cmp r4, r3
	ble label25
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label28
	b label574
label619:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label28
	b label574
label641:
	mov r2, #0
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label213
	b label641
label612:
	mov r2, #0
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label102
	b label612
label12:
	add r2, r1, #4
	cmp r4, r2
	ble label14
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label14
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label14
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label14
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label14
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label14
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label14
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label14
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label14
	b label610
label14:
	add r2, r1, #4
	cmp r4, r2
	ble label16
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label16
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label16
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label16
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label16
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label16
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label16
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label16
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label16
	b label611
label43:
	add r2, r1, #4
	cmp r4, r2
	ble label46
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label46
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label46
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label46
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label46
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label46
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label46
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label46
	b label592
label46:
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
	ble label48
	b label640
label592:
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label46
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
	ble label46
	b label637
label634:
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label43
	b label634
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
	ble label16
	b label611
label564:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label12
	b label609
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
	ble label12
	b label564
label39:
	mov r0, #67
	bl _sysy_stoptime
	mov r0, r4
	mov r1, r5
	bl putarray
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
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
	ble label12
	b label564
label610:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label14
	b label610
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
	ble label12
	b label609
label606:
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label7
	b label606
