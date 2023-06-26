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
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #4
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
	bge label4
	cmp r0, #0
	ble label55
	movw r0, #8040
	mul r0, r8, r0
	add r10, r6, r0
	mov r9, #0
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label55
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label55
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label55
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label55
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label55
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label55
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label55
	b label606
label579:
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label55
	b label604
label55:
	add r8, r8, #1
	cmp r8, r5
	bge label4
	cmp r5, #0
	ble label55
	movw r0, #8040
	mul r0, r8, r0
	add r10, r6, r0
	mov r9, #0
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label55
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label55
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label55
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label55
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label55
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label55
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label55
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label55
	b label579
label604:
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label55
	b label629
label606:
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label55
	b label579
label629:
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label55
	b label629
label4:
	cmp r5, #0
	ble label5
	mov r8, #0
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label5
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label5
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label5
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label5
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label5
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label5
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label5
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label5
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label5
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label5
	b label626
label5:
	mov r0, #59
	bl _sysy_starttime
	mov r0, #0
	cmp r5, #0
	ble label72
	mov r1, #0
	add r2, r1, #16
	cmp r2, r5
	bge label41
	b label40
label41:
	add r2, r1, #16
	cmp r2, r5
	bge label43
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
	bge label43
	b label48
label72:
	mov r1, #0
	movw r2, #8040
	mul r2, r1, r2
	add r2, r6, r2
	add r3, r4, r1, lsl #2
	cmp r1, r5
	bge label10
	mov r8, #0
	cmp r8, r5
	bge label37
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label35
	add r8, r8, #1
	cmp r8, r5
	bge label37
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label35
	add r8, r8, #1
	cmp r8, r5
	bge label37
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label35
	add r8, r8, #1
	cmp r8, r5
	bge label37
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label35
	b label608
label122:
	mov r1, #0
	movw r2, #8040
	mul r2, r1, r2
	add r2, r6, r2
	add r3, r7, r1, lsl #2
	cmp r1, r5
	bge label24
	mov r8, #0
	cmp r8, r5
	bge label28
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label31
	add r8, r8, #1
	cmp r8, r5
	bge label28
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label31
	add r8, r8, #1
	cmp r8, r5
	bge label28
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label31
	add r8, r8, #1
	cmp r8, r5
	bge label28
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label31
	b label539
label24:
	add r0, r0, #1
	cmp r0, #50
	bge label25
	cmp r5, #0
	ble label72
	mov r1, #0
	add r2, r1, #16
	cmp r2, r5
	bge label41
	b label40
label25:
	mov r0, #67
	bl _sysy_stoptime
	mov r0, r5
	mov r1, r4
	bl putarray
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label539:
	add r8, r8, #1
	cmp r8, r5
	bge label28
label564:
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label31
	b label589
label28:
	add r1, r1, #1
	movw r2, #8040
	mul r2, r1, r2
	add r2, r6, r2
	add r3, r7, r1, lsl #2
	cmp r1, r5
	bge label24
	mov r8, #0
	cmp r8, r5
	bge label28
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label31
	add r8, r8, #1
	cmp r8, r5
	bge label28
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label31
	add r8, r8, #1
	cmp r8, r5
	bge label28
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label31
	add r8, r8, #1
	cmp r8, r5
	bge label28
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label31
	add r8, r8, #1
	cmp r8, r5
	bge label28
	b label564
label589:
	add r8, r8, #1
	cmp r8, r5
	bge label28
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label31
	b label589
label10:
	cmp r5, #0
	ble label83
	mov r1, #0
	add r2, r1, #16
	cmp r2, r5
	bge label13
	b label21
label83:
	mov r1, #0
	movw r2, #8040
	mul r2, r1, r2
	add r2, r6, r2
	add r3, r7, r1, lsl #2
	cmp r1, r5
	bge label24
	mov r8, #0
	cmp r8, r5
	bge label28
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label31
	add r8, r8, #1
	cmp r8, r5
	bge label28
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label31
	add r8, r8, #1
	cmp r8, r5
	bge label28
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label31
	add r8, r8, #1
	cmp r8, r5
	bge label28
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label31
	b label539
label594:
	add r8, r8, #1
	cmp r8, r5
	bge label37
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label35
	b label594
label35:
	ldr r10, [r3, #0]
	ldr r11, [r7, r8, lsl #2]
	mla r9, r9, r11, r10
	str r9, [r3, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label37
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label35
	add r8, r8, #1
	cmp r8, r5
	bge label37
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label35
	add r8, r8, #1
	cmp r8, r5
	bge label37
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label35
	add r8, r8, #1
	cmp r8, r5
	bge label37
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label35
	add r8, r8, #1
	cmp r8, r5
	bge label37
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label35
	b label594
label569:
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label35
	b label594
label37:
	add r1, r1, #1
	movw r2, #8040
	mul r2, r1, r2
	add r2, r6, r2
	add r3, r4, r1, lsl #2
	cmp r1, r5
	bge label10
	mov r8, #0
	cmp r8, r5
	bge label37
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label35
	add r8, r8, #1
	cmp r8, r5
	bge label37
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label35
	add r8, r8, #1
	cmp r8, r5
	bge label37
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label35
	add r8, r8, #1
	cmp r8, r5
	bge label37
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label35
	add r8, r8, #1
	cmp r8, r5
	bge label37
	b label569
label45:
	mov r2, #0
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label246
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label246
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label246
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label246
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label246
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label246
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label246
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label246
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label246
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label246
	b label624
label246:
	mov r1, #0
	movw r2, #8040
	mul r2, r1, r2
	add r2, r6, r2
	add r3, r4, r1, lsl #2
	cmp r1, r5
	bge label10
	mov r8, #0
	cmp r8, r5
	bge label37
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label35
	add r8, r8, #1
	cmp r8, r5
	bge label37
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label35
	add r8, r8, #1
	cmp r8, r5
	bge label37
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label35
	add r8, r8, #1
	cmp r8, r5
	bge label37
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label35
	add r8, r8, #1
	cmp r8, r5
	bge label37
	b label569
label608:
	add r8, r8, #1
	cmp r8, r5
	bge label37
	b label569
label31:
	ldr r10, [r3, #0]
	ldr r11, [r4, r8, lsl #2]
	mla r9, r9, r11, r10
	str r9, [r3, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label28
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label31
	add r8, r8, #1
	cmp r8, r5
	bge label28
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label31
	add r8, r8, #1
	cmp r8, r5
	bge label28
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label31
	add r8, r8, #1
	cmp r8, r5
	bge label28
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label31
	add r8, r8, #1
	cmp r8, r5
	bge label28
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label31
	b label589
label611:
	mov r2, #0
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label122
	b label611
label624:
	mov r2, #0
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label246
	b label624
label13:
	add r2, r1, #16
	cmp r2, r5
	bge label15
	b label20
label15:
	add r2, r1, #16
	cmp r2, r5
	bge label18
	b label17
label18:
	mov r2, #0
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label122
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label122
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label122
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label122
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label122
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label122
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label122
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label122
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label122
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label122
	b label611
label43:
	add r2, r1, #16
	cmp r2, r5
	bge label45
label47:
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
	bge label45
	b label47
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
	bge label15
	b label20
label21:
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
	bge label13
	b label21
label17:
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
	b label17
label40:
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
	bge label41
	b label40
label626:
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label5
	b label626
