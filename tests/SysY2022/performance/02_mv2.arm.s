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
	bge label4
	cmp r0, #0
	ble label52
	movw r0, #8040
	mla r9, r8, r0, r7
	mov r10, #0
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label52
	b label563
label52:
	add r8, r8, #1
	cmp r8, r4
	bge label4
	cmp r4, #0
	ble label52
	movw r0, #8040
	mla r9, r8, r0, r7
	mov r10, #0
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label52
label563:
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label52
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label52
label655:
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r4
	bge label52
	b label655
label4:
	cmp r4, #0
	ble label5
	mov r8, #0
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r4
	bge label5
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r4
	bge label5
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r4
	bge label5
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r4
	bge label5
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r4
	bge label5
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r4
	bge label5
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r4
	bge label5
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r4
	bge label5
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r4
	bge label5
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r4
	bge label5
label651:
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r4
	bge label5
	b label651
label5:
	mov r0, #59
	bl _sysy_starttime
	mov r0, #0
	cmp r4, #0
	ble label72
	mov r1, #0
	add r2, r1, #4
	cmp r2, r4
	bge label41
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label41
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label41
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label41
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label41
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label41
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label41
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label41
	b label613
label72:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r1, r4
	bge label10
	mov r3, #0
	cmp r3, r4
	bge label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r4
	bge label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r4
	bge label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r4
	bge label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r4
	bge label34
	b label543
label10:
	cmp r4, #0
	ble label81
	mov r1, #0
	add r2, r1, #4
	cmp r2, r4
	bge label24
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label24
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label24
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label24
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label24
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label24
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label24
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label24
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label24
	b label579
label81:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r1, r4
	bge label19
	mov r3, #0
	cmp r3, r4
	bge label18
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label17
	add r3, r3, #1
	cmp r3, r4
	bge label18
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label17
	add r3, r3, #1
	cmp r3, r4
	bge label18
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label17
	add r3, r3, #1
	cmp r3, r4
	bge label18
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label17
	b label616
label19:
	add r0, r0, #1
	cmp r0, #50
	bge label20
	cmp r4, #0
	ble label72
	mov r1, #0
	add r2, r1, #4
	cmp r2, r4
	bge label41
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label41
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label41
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label41
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label41
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label41
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label41
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label41
	b label624
label20:
	mov r0, #67
	bl _sysy_stoptime
	mov r0, r4
	mov r1, r5
	bl putarray
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label579:
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label24
	b label625
label543:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	b label589
label41:
	add r2, r1, #4
	cmp r2, r4
	bge label44
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label44
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label44
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label44
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label44
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label44
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label44
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label44
	b label597
label44:
	add r2, r1, #4
	cmp r2, r4
	bge label47
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label47
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label47
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label47
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label47
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label47
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label47
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label47
	b label600
label526:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label17
label572:
	add r3, r3, #1
	cmp r3, r4
	bge label18
	b label618
label17:
	ldr r9, [r6, r1, lsl #2]
	ldr r10, [r5, r3, lsl #2]
	mla r8, r8, r10, r9
	str r8, [r6, r1, lsl #2]
	add r3, r3, #1
	cmp r3, r4
	bge label18
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label17
	add r3, r3, #1
	cmp r3, r4
	bge label18
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label17
	add r3, r3, #1
	cmp r3, r4
	bge label18
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label17
	add r3, r3, #1
	cmp r3, r4
	bge label18
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label17
	add r3, r3, #1
	cmp r3, r4
	bge label18
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label17
	b label572
label18:
	add r1, r1, #1
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r1, r4
	bge label19
	mov r3, #0
	cmp r3, r4
	bge label18
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label17
	add r3, r3, #1
	cmp r3, r4
	bge label18
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label17
	add r3, r3, #1
	cmp r3, r4
	bge label18
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label17
	add r3, r3, #1
	cmp r3, r4
	bge label18
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label17
	add r3, r3, #1
	cmp r3, r4
	bge label18
	b label526
label26:
	add r2, r1, #4
	cmp r2, r4
	bge label29
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label29
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label29
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label29
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label29
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label29
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label29
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label29
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label29
	b label629
label29:
	mov r2, #0
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label145
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label145
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label145
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label145
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label145
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label145
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label145
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label145
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label145
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label145
	b label632
label145:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r1, r4
	bge label19
	mov r3, #0
	cmp r3, r4
	bge label18
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label17
	add r3, r3, #1
	cmp r3, r4
	bge label18
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label17
	add r3, r3, #1
	cmp r3, r4
	bge label18
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label17
	add r3, r3, #1
	cmp r3, r4
	bge label18
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label17
	add r3, r3, #1
	cmp r3, r4
	bge label18
	b label526
label618:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label17
	b label572
label616:
	add r3, r3, #1
	cmp r3, r4
	bge label18
	b label526
label589:
	add r3, r3, #1
	cmp r3, r4
	bge label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	b label589
label34:
	add r1, r1, #1
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r1, r4
	bge label10
	mov r3, #0
	cmp r3, r4
	bge label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r4
	bge label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r4
	bge label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r4
	bge label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r4
	bge label34
	b label543
label600:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label47
	b label646
label47:
	mov r2, #0
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label208
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label208
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label208
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label208
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label208
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label208
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label208
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label208
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label208
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label208
	b label649
label208:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r7
	cmp r1, r4
	bge label10
	mov r3, #0
	cmp r3, r4
	bge label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r4
	bge label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r4
	bge label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r4
	bge label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r4
	bge label34
	b label543
label37:
	ldr r9, [r5, r1, lsl #2]
	ldr r10, [r6, r3, lsl #2]
	mla r8, r8, r10, r9
	str r8, [r5, r1, lsl #2]
	add r3, r3, #1
	cmp r3, r4
	bge label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r4
	bge label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r4
	bge label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r4
	bge label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r4
	bge label34
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	b label589
label632:
	mov r2, #0
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label145
	b label632
label649:
	mov r2, #0
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	bge label208
	b label649
label24:
	add r2, r1, #4
	cmp r2, r4
	bge label26
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label26
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label26
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label26
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label26
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label26
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label26
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label26
	b label582
label625:
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label24
	b label625
label582:
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label26
label628:
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label26
	b label628
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
	bge label29
	b label629
label646:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label47
	b label646
label613:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label41
	b label594
label624:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label41
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
	bge label41
label640:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	mov r1, r2
	add r2, r2, #4
	cmp r2, r4
	bge label41
	b label640
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
	bge label44
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
	bge label44
	b label643
