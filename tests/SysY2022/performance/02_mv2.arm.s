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
	mla r10, r8, r0, r6
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
label582:
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label55
	b label607
label55:
	add r8, r8, #1
	cmp r8, r5
	bge label4
	cmp r5, #0
	ble label55
	movw r0, #8040
	mla r10, r8, r0, r6
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
	b label582
label607:
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label55
label632:
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label55
	b label632
label4:
	cmp r5, #0
	ble label7
	mov r8, #0
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label7
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label7
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label7
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label7
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label7
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label7
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label7
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label7
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label7
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label7
	b label611
label7:
	mov r0, #59
	bl _sysy_starttime
	mov r0, #0
	cmp r5, #0
	ble label80
	mov r1, #0
	add r2, r1, #16
	cmp r2, r5
	bge label43
	b label42
label80:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r6
	add r3, r4, r1, lsl #2
	cmp r1, r5
	bge label12
	mov r8, #0
	cmp r8, r5
	bge label39
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label37
	add r8, r8, #1
	cmp r8, r5
	bge label39
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label37
	add r8, r8, #1
	cmp r8, r5
	bge label39
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label37
	add r8, r8, #1
	cmp r8, r5
	bge label39
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label37
	b label612
label12:
	cmp r5, #0
	ble label91
	mov r1, #0
	add r2, r1, #16
	cmp r2, r5
	bge label15
	b label23
label91:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r6
	add r3, r7, r1, lsl #2
	cmp r1, r5
	bge label26
	mov r8, #0
	cmp r8, r5
	bge label33
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label32
	add r8, r8, #1
	cmp r8, r5
	bge label33
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label32
	add r8, r8, #1
	cmp r8, r5
	bge label33
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label32
	add r8, r8, #1
	cmp r8, r5
	bge label33
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label32
	b label542
label20:
	mov r2, #0
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label130
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label130
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label130
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label130
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label130
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label130
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label130
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label130
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label130
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label130
	b label614
label130:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r6
	add r3, r7, r1, lsl #2
	cmp r1, r5
	bge label26
	mov r8, #0
	cmp r8, r5
	bge label33
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label32
	add r8, r8, #1
	cmp r8, r5
	bge label33
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label32
	add r8, r8, #1
	cmp r8, r5
	bge label33
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label32
	add r8, r8, #1
	cmp r8, r5
	bge label33
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label32
	b label542
label26:
	add r0, r0, #1
	cmp r0, #50
	bge label27
	cmp r5, #0
	ble label80
	mov r1, #0
	add r2, r1, #16
	cmp r2, r5
	bge label43
	b label42
label27:
	mov r0, #67
	bl _sysy_stoptime
	mov r0, r5
	mov r1, r4
	bl putarray
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label542:
	add r8, r8, #1
	cmp r8, r5
	bge label33
label567:
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label32
	b label592
label32:
	ldr r10, [r3, #0]
	ldr r11, [r4, r8, lsl #2]
	mla r9, r9, r11, r10
	str r9, [r3, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label33
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label32
	add r8, r8, #1
	cmp r8, r5
	bge label33
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label32
	add r8, r8, #1
	cmp r8, r5
	bge label33
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label32
	add r8, r8, #1
	cmp r8, r5
	bge label33
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label32
	add r8, r8, #1
	cmp r8, r5
	bge label33
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label32
	b label592
label33:
	add r1, r1, #1
	movw r2, #8040
	mla r2, r1, r2, r6
	add r3, r7, r1, lsl #2
	cmp r1, r5
	bge label26
	mov r8, #0
	cmp r8, r5
	bge label33
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label32
	add r8, r8, #1
	cmp r8, r5
	bge label33
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label32
	add r8, r8, #1
	cmp r8, r5
	bge label33
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label32
	add r8, r8, #1
	cmp r8, r5
	bge label33
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label32
	add r8, r8, #1
	cmp r8, r5
	bge label33
	b label567
label43:
	add r2, r1, #16
	cmp r2, r5
	bge label45
	b label50
label592:
	add r8, r8, #1
	cmp r8, r5
	bge label33
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label32
	b label592
label612:
	add r8, r8, #1
	cmp r8, r5
	bge label39
label573:
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label37
label598:
	add r8, r8, #1
	cmp r8, r5
	bge label39
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label37
	b label598
label37:
	ldr r10, [r3, #0]
	ldr r11, [r7, r8, lsl #2]
	mla r9, r9, r11, r10
	str r9, [r3, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label39
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label37
	add r8, r8, #1
	cmp r8, r5
	bge label39
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label37
	add r8, r8, #1
	cmp r8, r5
	bge label39
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label37
	add r8, r8, #1
	cmp r8, r5
	bge label39
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label37
	add r8, r8, #1
	cmp r8, r5
	bge label39
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label37
	b label598
label39:
	add r1, r1, #1
	movw r2, #8040
	mla r2, r1, r2, r6
	add r3, r4, r1, lsl #2
	cmp r1, r5
	bge label12
	mov r8, #0
	cmp r8, r5
	bge label39
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label37
	add r8, r8, #1
	cmp r8, r5
	bge label39
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label37
	add r8, r8, #1
	cmp r8, r5
	bge label39
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label37
	add r8, r8, #1
	cmp r8, r5
	bge label39
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label37
	add r8, r8, #1
	cmp r8, r5
	bge label39
	b label573
label614:
	mov r2, #0
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label130
	b label614
label15:
	add r2, r1, #16
	cmp r2, r5
	bge label18
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
label18:
	add r2, r1, #16
	cmp r2, r5
	bge label20
label22:
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
	bge label20
	b label22
label45:
	add r2, r1, #16
	cmp r2, r5
	bge label47
	b label49
label47:
	mov r2, #0
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label254
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label254
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label254
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label254
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label254
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label254
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label254
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label254
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label254
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label254
	b label628
label254:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r6
	add r3, r4, r1, lsl #2
	cmp r1, r5
	bge label12
	mov r8, #0
	cmp r8, r5
	bge label39
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label37
	add r8, r8, #1
	cmp r8, r5
	bge label39
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label37
	add r8, r8, #1
	cmp r8, r5
	bge label39
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label37
	add r8, r8, #1
	cmp r8, r5
	bge label39
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label37
	add r8, r8, #1
	cmp r8, r5
	bge label39
	b label573
label628:
	mov r2, #0
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label254
	b label628
label23:
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
	b label23
label42:
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
	b label42
label50:
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
	b label50
label49:
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
	bge label47
	b label49
label611:
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label7
	b label611
