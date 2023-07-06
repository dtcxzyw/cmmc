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
	ble label55
	movw r0, #8040
	mov r10, #0
	mla r9, r8, r0, r7
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label55
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label55
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label55
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label55
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label55
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label55
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label55
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label55
label555:
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label55
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label55
label645:
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label55
	b label645
label55:
	add r8, r8, #1
	cmp r4, r8
	ble label4
	cmp r4, #0
	ble label55
	movw r0, #8040
	mov r10, #0
	mla r9, r8, r0, r7
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label55
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label55
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label55
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label55
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label55
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label55
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label55
	bl getint
	str r0, [r9, r10, lsl #2]
	add r10, r10, #1
	cmp r4, r10
	ble label55
	b label555
label4:
	cmp r4, #0
	ble label5
	mov r8, #0
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label5
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label5
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label5
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label5
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label5
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label5
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label5
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label5
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label5
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label5
	b label641
label5:
	mov r0, #59
	bl _sysy_starttime
	mov r0, #0
	cmp r4, #0
	ble label72
	mov r1, #0
	add r2, r1, #4
	cmp r4, r2
	ble label10
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label10
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label10
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label10
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label10
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label10
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label10
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label10
	b label604
label72:
	mov r1, #0
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	ble label27
	mov r3, #0
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label25
	add r3, r3, #1
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label25
	add r3, r3, #1
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label25
	add r3, r3, #1
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label25
	b label481
label561:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label10
	b label606
label23:
	add r1, r1, #1
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	ble label27
	mov r3, #0
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label25
	add r3, r3, #1
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label25
	add r3, r3, #1
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label25
	add r3, r3, #1
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label25
	add r3, r3, #1
	cmp r4, r3
	ble label23
	b label526
label27:
	cmp r4, #0
	ble label140
	mov r1, #0
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
	b label586
label630:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label10
	b label561
label37:
	mov r0, #67
	bl _sysy_stoptime
	mov r0, r4
	mov r1, r5
	bl putarray
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label586:
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
	b label631
label41:
	add r2, r1, #4
	cmp r4, r2
	ble label44
	add r3, r6, r1, lsl #2
	mov r8, #0
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label44
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label44
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label44
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label44
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label44
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label44
	add r3, r6, r1, lsl #2
	str r8, [r6, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label44
	b label589
label44:
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
label534:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label35
label579:
	add r3, r3, #1
	cmp r4, r3
	ble label32
	b label624
label46:
	mov r2, #0
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label205
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label205
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label205
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label205
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label205
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label205
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label205
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label205
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label205
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label205
	b label638
label205:
	mov r1, #0
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	ble label36
	mov r3, #0
	cmp r4, r3
	ble label32
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label35
	add r3, r3, #1
	cmp r4, r3
	ble label32
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label35
	add r3, r3, #1
	cmp r4, r3
	ble label32
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label35
	add r3, r3, #1
	cmp r4, r3
	ble label32
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label35
	add r3, r3, #1
	cmp r4, r3
	ble label32
	b label534
label624:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label35
	b label579
label140:
	mov r1, #0
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	ble label36
	mov r3, #0
	cmp r4, r3
	ble label32
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label35
	add r3, r3, #1
	cmp r4, r3
	ble label32
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label35
	add r3, r3, #1
	cmp r4, r3
	ble label32
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label35
	add r3, r3, #1
	cmp r4, r3
	ble label32
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label35
	add r3, r3, #1
	cmp r4, r3
	ble label32
	b label534
label32:
	add r1, r1, #1
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	ble label36
	mov r3, #0
	cmp r4, r3
	ble label32
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label35
	add r3, r3, #1
	cmp r4, r3
	ble label32
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label35
	add r3, r3, #1
	cmp r4, r3
	ble label32
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label35
	add r3, r3, #1
	cmp r4, r3
	ble label32
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label35
	add r3, r3, #1
	cmp r4, r3
	ble label32
	b label534
label36:
	add r0, r0, #1
	cmp r0, #50
	bge label37
	cmp r4, #0
	ble label72
	mov r1, #0
	add r2, r1, #4
	cmp r4, r2
	ble label10
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label10
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label10
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label10
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label10
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label10
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label10
	add r3, r5, r1, lsl #2
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label10
	b label630
label526:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label25
label571:
	add r3, r3, #1
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label25
	b label571
label609:
	mov r2, #0
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label94
	b label609
label94:
	mov r1, #0
	movw r2, #8040
	cmp r4, r1
	mla r2, r1, r2, r7
	ble label27
	mov r3, #0
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label25
	add r3, r3, #1
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label25
	add r3, r3, #1
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label25
	add r3, r3, #1
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label25
label481:
	add r3, r3, #1
	cmp r4, r3
	ble label23
	b label526
label25:
	ldr r9, [r5, r1, lsl #2]
	ldr r10, [r6, r3, lsl #2]
	add r3, r3, #1
	mla r8, r8, r10, r9
	str r8, [r5, r1, lsl #2]
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label25
	add r3, r3, #1
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label25
	add r3, r3, #1
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label25
	add r3, r3, #1
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label25
	add r3, r3, #1
	cmp r4, r3
	ble label23
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label25
	b label571
label35:
	ldr r9, [r6, r1, lsl #2]
	ldr r10, [r5, r3, lsl #2]
	add r3, r3, #1
	mla r8, r8, r10, r9
	str r8, [r6, r1, lsl #2]
	cmp r4, r3
	ble label32
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label35
	add r3, r3, #1
	cmp r4, r3
	ble label32
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label35
	add r3, r3, #1
	cmp r4, r3
	ble label32
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label35
	add r3, r3, #1
	cmp r4, r3
	ble label32
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label35
	add r3, r3, #1
	cmp r4, r3
	ble label32
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label35
	b label579
label638:
	mov r2, #0
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label205
	b label638
label10:
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
	b label608
label14:
	mov r2, #0
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label94
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label94
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label94
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label94
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label94
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label94
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label94
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label94
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label94
	str r2, [r5, r1, lsl #2]
	add r1, r1, #1
	cmp r4, r1
	ble label94
	b label609
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
	b label637
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
	ble label44
	b label634
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
	ble label44
	b label634
label631:
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
	b label631
label606:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label10
	b label606
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
	b label607
label604:
	add r3, r5, r1, lsl #2
	mov r8, #0
	str r8, [r5, r1, lsl #2]
	mov r1, r2
	str r8, [r3, #4]
	str r8, [r3, #8]
	str r8, [r3, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label10
	b label561
label608:
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
	b label608
label641:
	bl getint
	str r0, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label5
	b label641
