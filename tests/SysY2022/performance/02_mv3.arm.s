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
	bge label9
	cmp r0, #0
	ble label8
	movw r0, #8040
	mul r0, r8, r0
	add r10, r6, r0
	mov r9, #0
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	b label622
label9:
	cmp r5, #0
	ble label12
	mov r8, #0
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label12
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label12
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label12
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label12
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label12
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label12
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label12
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label12
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label12
	b label628
label12:
	mov r0, #59
	bl _sysy_starttime
	mov r0, #0
	cmp r5, #0
	ble label94
	mov r1, #0
	add r2, r1, #16
	cmp r2, r5
	bge label48
	b label47
label94:
	mov r1, #0
	movw r2, #8040
	mul r2, r1, r2
	add r2, r6, r2
	add r3, r4, r1, lsl #2
	cmp r1, r5
	bge label17
	mov r8, #0
	cmp r8, r5
	bge label44
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label42
	add r8, r8, #1
	cmp r8, r5
	bge label44
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label42
	add r8, r8, #1
	cmp r8, r5
	bge label44
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label42
	add r8, r8, #1
	cmp r8, r5
	bge label44
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label42
	b label630
label17:
	cmp r5, #0
	ble label105
	mov r1, #0
	add r2, r1, #16
	cmp r2, r5
	bge label20
	b label28
label105:
	mov r1, #0
	movw r2, #8040
	mul r2, r1, r2
	add r2, r6, r2
	add r3, r7, r1, lsl #2
	cmp r1, r5
	bge label31
	mov r8, #0
	cmp r8, r5
	bge label38
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label37
	add r8, r8, #1
	cmp r8, r5
	bge label38
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label37
	add r8, r8, #1
	cmp r8, r5
	bge label38
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label37
	add r8, r8, #1
	cmp r8, r5
	bge label38
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label37
	b label555
label37:
	ldr r10, [r3, #0]
	ldr r11, [r4, r8, lsl #2]
	mla r9, r9, r11, r10
	str r9, [r3, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label38
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label37
	add r8, r8, #1
	cmp r8, r5
	bge label38
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label37
	add r8, r8, #1
	cmp r8, r5
	bge label38
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label37
	add r8, r8, #1
	cmp r8, r5
	bge label38
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label37
	add r8, r8, #1
	cmp r8, r5
	bge label38
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label37
	b label609
label38:
	add r1, r1, #1
	movw r2, #8040
	mul r2, r1, r2
	add r2, r6, r2
	add r3, r7, r1, lsl #2
	cmp r1, r5
	bge label31
	mov r8, #0
	cmp r8, r5
	bge label38
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label37
	add r8, r8, #1
	cmp r8, r5
	bge label38
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label37
	add r8, r8, #1
	cmp r8, r5
	bge label38
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label37
	add r8, r8, #1
	cmp r8, r5
	bge label38
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label37
	add r8, r8, #1
	cmp r8, r5
	bge label38
	b label582
label588:
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label42
label615:
	add r8, r8, #1
	cmp r8, r5
	bge label44
	b label642
label42:
	ldr r10, [r3, #0]
	ldr r11, [r7, r8, lsl #2]
	mla r9, r9, r11, r10
	str r9, [r3, #0]
	add r8, r8, #1
	cmp r8, r5
	bge label44
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label42
	add r8, r8, #1
	cmp r8, r5
	bge label44
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label42
	add r8, r8, #1
	cmp r8, r5
	bge label44
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label42
	add r8, r8, #1
	cmp r8, r5
	bge label44
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label42
	add r8, r8, #1
	cmp r8, r5
	bge label44
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label42
	b label615
label44:
	add r1, r1, #1
	movw r2, #8040
	mul r2, r1, r2
	add r2, r6, r2
	add r3, r4, r1, lsl #2
	cmp r1, r5
	bge label17
	mov r8, #0
	cmp r8, r5
	bge label44
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label42
	add r8, r8, #1
	cmp r8, r5
	bge label44
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label42
	add r8, r8, #1
	cmp r8, r5
	bge label44
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label42
	add r8, r8, #1
	cmp r8, r5
	bge label44
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label42
	add r8, r8, #1
	cmp r8, r5
	bge label44
	b label588
label53:
	mov r2, #0
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label285
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label285
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label285
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label285
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label285
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label285
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label285
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label285
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label285
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label285
	b label647
label285:
	mov r1, #0
	movw r2, #8040
	mul r2, r1, r2
	add r2, r6, r2
	add r3, r4, r1, lsl #2
	cmp r1, r5
	bge label17
	mov r8, #0
	cmp r8, r5
	bge label44
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label42
	add r8, r8, #1
	cmp r8, r5
	bge label44
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label42
	add r8, r8, #1
	cmp r8, r5
	bge label44
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label42
	add r8, r8, #1
	cmp r8, r5
	bge label44
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label42
	add r8, r8, #1
	cmp r8, r5
	bge label44
	b label588
label582:
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label37
	b label609
label144:
	mov r1, #0
	movw r2, #8040
	mul r2, r1, r2
	add r2, r6, r2
	add r3, r7, r1, lsl #2
	cmp r1, r5
	bge label31
	mov r8, #0
	cmp r8, r5
	bge label38
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label37
	add r8, r8, #1
	cmp r8, r5
	bge label38
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label37
	add r8, r8, #1
	cmp r8, r5
	bge label38
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label37
	add r8, r8, #1
	cmp r8, r5
	bge label38
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label37
label555:
	add r8, r8, #1
	cmp r8, r5
	bge label38
	b label582
label609:
	add r8, r8, #1
	cmp r8, r5
	bge label38
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label37
	b label609
label642:
	ldr r9, [r2, r8, lsl #2]
	cmp r9, #0
	bne label42
	b label615
label630:
	add r8, r8, #1
	cmp r8, r5
	bge label44
	b label588
label633:
	mov r2, #0
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label144
	b label633
label647:
	mov r2, #0
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label285
	b label647
label622:
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
label572:
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
label626:
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	b label626
label8:
	add r8, r8, #1
	cmp r8, r5
	bge label9
	cmp r5, #0
	ble label8
	movw r0, #8040
	mul r0, r8, r0
	add r10, r6, r0
	mov r9, #0
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	bl getint
	str r0, [r10, r9, lsl #2]
	add r9, r9, #1
	cmp r9, r5
	bge label8
	b label572
label20:
	add r2, r1, #16
	cmp r2, r5
	bge label22
label27:
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
	bge label22
	b label27
label22:
	add r2, r1, #16
	cmp r2, r5
	bge label25
	b label24
label25:
	mov r2, #0
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label144
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label144
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label144
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label144
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label144
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label144
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label144
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label144
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label144
	str r2, [r7, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label144
	b label633
label28:
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
	b label28
label24:
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
	bge label25
	b label24
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
	bge label48
	b label47
label48:
	add r2, r1, #16
	cmp r2, r5
	bge label51
	b label50
label51:
	add r2, r1, #16
	cmp r2, r5
	bge label53
	b label55
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
	bge label51
	b label50
label55:
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
	bge label53
	b label55
label31:
	add r0, r0, #1
	cmp r0, #50
	bge label32
	cmp r5, #0
	ble label94
	mov r1, #0
	add r2, r1, #16
	cmp r2, r5
	bge label48
	b label47
label32:
	mov r0, #67
	bl _sysy_stoptime
	mov r0, r5
	mov r1, r4
	bl putarray
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label628:
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label12
label629:
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label12
	b label629
