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
	push { r4, r5, r6, r7, r8, r9, r10, lr }
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
label583:
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label55
	b label608
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
	b label583
label608:
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label55
label633:
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label55
	b label633
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
label612:
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label7
	b label612
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
	cmp r1, r5
	bge label12
	mov r3, #0
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	b label613
label12:
	cmp r5, #0
	ble label89
	mov r1, #0
	add r2, r1, #16
	cmp r2, r5
	bge label16
	b label15
label89:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label26
	mov r3, #0
	cmp r3, r5
	bge label33
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label32
	add r3, r3, #1
	cmp r3, r5
	bge label33
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label32
	add r3, r3, #1
	cmp r3, r5
	bge label33
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label32
	add r3, r3, #1
	cmp r3, r5
	bge label33
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label32
	b label543
label16:
	add r2, r1, #16
	cmp r2, r5
	bge label19
	b label18
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
label43:
	add r2, r1, #16
	cmp r2, r5
	bge label45
	b label50
label568:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label32
	b label593
label33:
	add r1, r1, #1
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label26
	mov r3, #0
	cmp r3, r5
	bge label33
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label32
	add r3, r3, #1
	cmp r3, r5
	bge label33
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label32
	add r3, r3, #1
	cmp r3, r5
	bge label33
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label32
	add r3, r3, #1
	cmp r3, r5
	bge label33
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label32
	add r3, r3, #1
	cmp r3, r5
	bge label33
	b label568
label593:
	add r3, r3, #1
	cmp r3, r5
	bge label33
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label32
	b label593
label615:
	mov r2, #0
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label145
	b label615
label145:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label26
	mov r3, #0
	cmp r3, r5
	bge label33
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label32
	add r3, r3, #1
	cmp r3, r5
	bge label33
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label32
	add r3, r3, #1
	cmp r3, r5
	bge label33
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label32
	add r3, r3, #1
	cmp r3, r5
	bge label33
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label32
label543:
	add r3, r3, #1
	cmp r3, r5
	bge label33
	b label568
label32:
	ldr r9, [r7, r1, lsl #2]
	ldr r10, [r4, r3, lsl #2]
	mla r8, r8, r10, r9
	str r8, [r7, r1, lsl #2]
	add r3, r3, #1
	cmp r3, r5
	bge label33
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label32
	add r3, r3, #1
	cmp r3, r5
	bge label33
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label32
	add r3, r3, #1
	cmp r3, r5
	bge label33
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label32
	add r3, r3, #1
	cmp r3, r5
	bge label33
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label32
	add r3, r3, #1
	cmp r3, r5
	bge label33
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label32
	b label593
label599:
	add r3, r3, #1
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	b label599
label37:
	ldr r9, [r4, r1, lsl #2]
	ldr r10, [r7, r3, lsl #2]
	mla r8, r8, r10, r9
	str r8, [r4, r1, lsl #2]
	add r3, r3, #1
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	b label599
label613:
	add r3, r3, #1
	cmp r3, r5
	bge label39
label574:
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	b label599
label39:
	add r1, r1, #1
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label12
	mov r3, #0
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r5
	bge label39
	b label574
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
	b label629
label254:
	mov r1, #0
	movw r2, #8040
	mla r2, r1, r2, r6
	cmp r1, r5
	bge label12
	mov r3, #0
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r5
	bge label39
	ldr r8, [r2, r3, lsl #2]
	cmp r8, #0
	bne label37
	add r3, r3, #1
	cmp r3, r5
	bge label39
	b label574
label629:
	mov r2, #0
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label254
	b label629
label18:
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
	bge label19
	b label18
label19:
	add r2, r1, #16
	cmp r2, r5
	bge label21
	b label23
label21:
	mov r2, #0
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label145
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label145
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label145
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label145
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label145
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label145
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label145
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label145
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label145
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label145
	b label615
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
	bge label21
	b label23
label15:
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
	bge label16
	b label15
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
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
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
