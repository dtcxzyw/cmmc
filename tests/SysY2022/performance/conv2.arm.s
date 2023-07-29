.arch armv7ve
.data
.bss
.align 8
a:
	.zero	40000000
.align 8
b:
	.zero	40000000
.align 8
kernelid:
	.zero	40000
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #68
	bl getint
	mov r4, r0
	bl getint
	str r0, [sp, #32]
	mov r3, r0
	bl getint
	movw r6, #:lower16:a
	str r0, [sp, #24]
	mov r7, r0
	movt r6, #:upper16:a
	str r6, [sp, #16]
	mov r0, r6
	bl getarray
	movw r0, #:lower16:kernelid
	movt r0, #:upper16:kernelid
	str r0, [sp, #40]
	bl getarray
	str r0, [sp, #36]
	mov r1, r0
	add r0, r4, r4, lsr #31
	asr r2, r0, #1
	mov r0, #109
	str r2, [sp, #44]
	bl _sysy_starttime
	ldr r1, [sp, #36]
	cmp r1, #0
	bgt label2
	b label62
.p2align 4
label22:
	ldr r1, [sp, #48]
	cmp r1, #0
	bgt label23
	ldr r1, [sp, #60]
	add r0, r1, #1
	ldr r1, [sp, #36]
	cmp r1, r0
	bgt label169
label62:
	mov r0, #116
	bl _sysy_stoptime
	ldr r3, [sp, #32]
	ldr r7, [sp, #24]
	ldr r6, [sp, #16]
	mul r0, r3, r7
	mov r1, r6
	bl putarray
	add sp, sp, #68
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label23:
	ldr r1, [sp, #48]
	cmp r1, #4
	bgt label135
	mov r0, #0
	ldr r2, [sp, #56]
	ldr r1, [r2, r0, lsl #2]
	ldr r6, [sp, #16]
	str r1, [r6, r0, lsl #2]
	ldr r1, [sp, #48]
	add r0, r0, #1
	cmp r1, r0
	bgt label24
	ldr r1, [sp, #60]
	add r0, r1, #1
	ldr r1, [sp, #36]
	cmp r1, r0
	bgt label169
	b label62
.p2align 4
label135:
	mov r0, #0
	b label26
.p2align 4
label24:
	ldr r2, [sp, #56]
	ldr r1, [r2, r0, lsl #2]
	ldr r6, [sp, #16]
	str r1, [r6, r0, lsl #2]
	ldr r1, [sp, #48]
	add r0, r0, #1
	cmp r1, r0
	bgt label24
	ldr r1, [sp, #60]
	add r0, r1, #1
	ldr r1, [sp, #36]
	cmp r1, r0
	bgt label169
	b label62
.p2align 4
label26:
	ldr r2, [sp, #56]
	ldr r3, [r2, r0, lsl #2]
	add r1, r2, r0, lsl #2
	ldr r6, [sp, #16]
	str r3, [r6, r0, lsl #2]
	add r2, r6, r0, lsl #2
	ldr r3, [r1, #4]
	add r0, r0, #4
	str r3, [r2, #4]
	ldr r3, [r1, #8]
	str r3, [r2, #8]
	ldr r1, [r1, #12]
	str r1, [r2, #12]
	ldr r1, [sp, #52]
	cmp r1, r0
	bgt label26
	ldr r2, [sp, #56]
	ldr r1, [r2, r0, lsl #2]
	str r1, [r6, r0, lsl #2]
	ldr r1, [sp, #48]
	add r0, r0, #1
	cmp r1, r0
	bgt label24
	ldr r1, [sp, #60]
	add r0, r1, #1
	ldr r1, [sp, #36]
	cmp r1, r0
	ble label62
label169:
	mov r1, r0
	str r0, [sp, #60]
	ldr r0, [sp, #40]
	ldr r1, [sp, #60]
	ldr r7, [r0, r1, lsl #2]
	mov r0, #0
	str r7, [sp, #8]
	str r0, [sp, #20]
.p2align 4
label5:
	ldr r2, [sp, #44]
	mov r1, #0
	ldr r0, [sp, #20]
	sub r3, r0, r2
	str r3, [sp, #28]
	add r3, r2, r0
	str r3, [sp, #0]
	ldr r7, [sp, #24]
	mul r0, r7, r0
	str r0, [sp, #4]
	str r1, [sp, #12]
	mov r5, #0
	ldr r3, [sp, #28]
	sub r0, r1, r2
	add r1, r2, r1
	mov r2, r3
	ldr r3, [sp, #32]
	mov r4, r0
	cmp r3, r2
	mov r3, #0
	movwle r3, #1
	cmp r2, #0
	orrlt r3, r3, #1
	cmp r0, #0
	mov r6, r3
	orrlt r6, r3, #1
	cmp r7, r0
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label103
	ldr r7, [sp, #24]
	ldr r6, [sp, #16]
	mla r7, r7, r2, r0
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #8]
	cmp r7, #0
	beq label29
	cmp r7, #1
	beq label191
	cmp r7, #2
	beq label54
	cmp r7, #3
	beq label197
	cmp r7, #4
	beq label201
	mov r8, #0
	add r4, r0, #1
	cmp r1, r4
	ble label19
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #24]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	beq label593
.p2align 4
label103:
	mov r6, #0
	ldr r7, [sp, #8]
	cmp r7, #0
	beq label29
	cmp r7, #1
	beq label191
	cmp r7, #2
	beq label54
	cmp r7, #3
	beq label197
	cmp r7, #4
	beq label201
	mov r8, #0
	add r4, r4, #1
	cmp r1, r4
	ble label19
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #24]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label103
	ldr r7, [sp, #24]
	ldr r6, [sp, #16]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #8]
	cmp r7, #0
	beq label29
	cmp r7, #1
	beq label191
	b label594
.p2align 4
label21:
	ldr r0, [sp, #20]
	ldr r3, [sp, #32]
	add r0, r0, #1
	cmp r3, r0
	ble label22
	str r0, [sp, #20]
	b label5
.p2align 4
label29:
	add r8, r5, r6
	cmp r8, #1073741824
	bgt label34
	cmp r8, #0
	blt label32
	add r4, r4, #1
	cmp r1, r4
	ble label19
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #24]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label103
	ldr r7, [sp, #24]
	ldr r6, [sp, #16]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #8]
	cmp r7, #0
	beq label29
	cmp r7, #1
	beq label191
	cmp r7, #2
	beq label54
	cmp r7, #3
	beq label197
	cmp r7, #4
	beq label201
	mov r8, #0
	add r4, r4, #1
	cmp r1, r4
	ble label19
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #24]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label103
.p2align 4
label639:
	ldr r7, [sp, #24]
	ldr r6, [sp, #16]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #8]
	cmp r7, #0
	beq label29
	b label634
.p2align 4
label32:
	adds r8, r8, #1073741824
	blt label32
	add r4, r4, #1
	cmp r1, r4
	ble label19
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #24]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label103
	ldr r7, [sp, #24]
	ldr r6, [sp, #16]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #8]
	cmp r7, #0
	beq label29
	cmp r7, #1
	beq label191
	cmp r7, #2
	beq label54
	cmp r7, #3
	beq label197
	cmp r7, #4
	beq label201
	mov r8, #0
	add r4, r4, #1
	cmp r1, r4
	ble label19
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #24]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label103
	b label640
.p2align 4
label34:
	add r8, r8, #-1073741824
	cmp r8, #1073741824
	bgt label34
	cmp r8, #0
	blt label32
	add r4, r4, #1
	cmp r1, r4
	ble label19
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #24]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label103
	ldr r7, [sp, #24]
	ldr r6, [sp, #16]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #8]
	cmp r7, #0
	beq label29
	cmp r7, #1
	beq label191
	cmp r7, #2
	beq label54
	cmp r7, #3
	beq label197
	cmp r7, #4
	beq label201
	mov r8, #0
	add r4, r4, #1
	cmp r1, r4
	ble label19
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #24]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label103
	b label639
.p2align 4
label593:
	ldr r7, [sp, #24]
	ldr r6, [sp, #16]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #8]
	cmp r7, #0
	beq label29
.p2align 4
label631:
	ldr r7, [sp, #8]
	cmp r7, #1
	beq label191
.p2align 4
label594:
	ldr r7, [sp, #8]
	cmp r7, #2
	beq label54
	cmp r7, #3
	beq label197
	b label644
.p2align 4
label20:
	ldr r0, [sp, #4]
	ldr r1, [sp, #12]
	ldr r2, [sp, #56]
	add r0, r0, r1
	add r1, r1, #1
	str r8, [r2, r0, lsl #2]
	ldr r7, [sp, #24]
	cmp r7, r1
	ble label21
	str r1, [sp, #12]
	ldr r2, [sp, #44]
	mov r5, #0
	ldr r3, [sp, #28]
	sub r0, r1, r2
	add r1, r2, r1
	mov r2, r3
	ldr r3, [sp, #32]
	mov r4, r0
	cmp r3, r2
	mov r3, #0
	movwle r3, #1
	cmp r2, #0
	orrlt r3, r3, #1
	cmp r0, #0
	mov r6, r3
	orrlt r6, r3, #1
	cmp r7, r0
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label103
	ldr r7, [sp, #24]
	ldr r6, [sp, #16]
	mla r7, r7, r2, r0
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #8]
	cmp r7, #0
	beq label29
	cmp r7, #1
	beq label191
	cmp r7, #2
	beq label54
	cmp r7, #3
	beq label197
	cmp r7, #4
	beq label201
	mov r8, #0
	add r4, r0, #1
	cmp r1, r4
	ble label19
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #24]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label103
	b label593
.p2align 4
label644:
	ldr r7, [sp, #8]
	cmp r7, #4
	beq label201
	b label646
.p2align 4
label19:
	add r2, r2, #1
	ldr r3, [sp, #0]
	cmp r3, r2
	ble label20
	mov r5, r8
	ldr r3, [sp, #32]
	mov r4, r0
	cmp r3, r2
	mov r3, #0
	movwle r3, #1
	cmp r2, #0
	orrlt r3, r3, #1
	cmp r0, #0
	mov r6, r3
	ldr r7, [sp, #24]
	orrlt r6, r3, #1
	cmp r7, r0
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label103
	ldr r7, [sp, #24]
	ldr r6, [sp, #16]
	mla r7, r7, r2, r0
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #8]
	cmp r7, #0
	beq label29
	cmp r7, #1
	beq label191
	cmp r7, #2
	beq label54
	cmp r7, #3
	beq label197
	cmp r7, #4
	beq label201
	mov r8, #0
	add r4, r0, #1
	cmp r1, r4
	ble label19
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #24]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label103
	ldr r7, [sp, #24]
	ldr r6, [sp, #16]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #8]
	cmp r7, #0
	beq label29
	b label631
.p2align 4
label640:
	ldr r7, [sp, #24]
	ldr r6, [sp, #16]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #8]
	cmp r7, #0
	beq label29
	b label634
.p2align 4
label201:
	mov r8, #0
	mov r7, #1
	cmp r7, #1073741824
	blt label43
	add r4, r4, #1
	cmp r1, r4
	ble label19
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #24]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label103
	ldr r7, [sp, #24]
	ldr r6, [sp, #16]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #8]
	cmp r7, #0
	beq label29
	cmp r7, #1
	beq label191
	cmp r7, #2
	beq label54
	cmp r7, #3
	beq label197
	cmp r7, #4
	beq label201
	add r4, r4, #1
	cmp r1, r4
	ble label19
.p2align 4
label613:
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #24]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label103
	b label651
.p2align 4
label43:
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	beq label45
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	blt label43
	add r4, r4, #1
	cmp r1, r4
	ble label19
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #24]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label103
	ldr r7, [sp, #24]
	ldr r6, [sp, #16]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #8]
	cmp r7, #0
	beq label29
	cmp r7, #1
	beq label191
	cmp r7, #2
	beq label54
	cmp r7, #3
	beq label197
	cmp r7, #4
	beq label201
	mov r8, #0
	add r4, r4, #1
	cmp r1, r4
	ble label19
	b label613
.p2align 4
label45:
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	beq label46
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	blt label43
	add r4, r4, #1
	cmp r1, r4
	ble label19
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #24]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label103
	ldr r7, [sp, #24]
	ldr r6, [sp, #16]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #8]
	cmp r7, #0
	beq label29
	cmp r7, #1
	beq label191
	cmp r7, #2
	beq label54
	cmp r7, #3
	beq label197
	cmp r7, #4
	beq label201
	mov r8, #0
	add r4, r4, #1
	cmp r1, r4
	ble label19
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #24]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label103
	b label651
.p2align 4
label54:
	cmp r5, r6
	mov r8, r5
	movle r8, r6
	add r4, r4, #1
	cmp r1, r4
	ble label19
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #24]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label103
	ldr r7, [sp, #24]
	ldr r6, [sp, #16]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #8]
	cmp r7, #0
	beq label29
	cmp r7, #1
	beq label191
	cmp r7, #2
	beq label54
	cmp r7, #3
	beq label197
	cmp r7, #4
	beq label201
	mov r8, #0
	add r4, r4, #1
	cmp r1, r4
	ble label19
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #24]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label103
	ldr r7, [sp, #24]
	ldr r6, [sp, #16]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #8]
	cmp r7, #0
	beq label29
	b label634
.p2align 4
label581:
	mov r8, #0
	add r4, r4, #1
	cmp r1, r4
	ble label19
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #24]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label103
	b label657
.p2align 4
label50:
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	beq label51
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	beq label51
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	blt label50
	add r4, r4, #1
	cmp r1, r4
	ble label19
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #24]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label103
	ldr r7, [sp, #24]
	ldr r6, [sp, #16]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #8]
	cmp r7, #0
	beq label29
	cmp r7, #1
	beq label191
	cmp r7, #2
	beq label54
	cmp r7, #3
	beq label197
	cmp r7, #4
	beq label201
	b label581
.p2align 4
label634:
	ldr r7, [sp, #8]
	cmp r7, #1
	beq label191
	b label594
.p2align 4
label197:
	mov r8, #0
	mov r7, #1
	cmp r7, #1073741824
	blt label50
	add r4, r4, #1
	cmp r1, r4
	ble label19
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #24]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label103
	ldr r7, [sp, #24]
	ldr r6, [sp, #16]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #8]
	cmp r7, #0
	beq label29
	cmp r7, #1
	beq label191
	cmp r7, #2
	beq label54
	cmp r7, #3
	beq label197
	cmp r7, #4
	beq label201
	add r4, r4, #1
	cmp r1, r4
	ble label19
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #24]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label103
.p2align 4
label657:
	ldr r7, [sp, #24]
	ldr r6, [sp, #16]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #8]
	cmp r7, #0
	beq label29
	b label634
.p2align 4
label651:
	ldr r7, [sp, #24]
	ldr r6, [sp, #16]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #8]
	cmp r7, #0
	beq label29
	b label634
.p2align 4
label46:
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	blt label43
	add r4, r4, #1
	cmp r1, r4
	ble label19
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #24]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label103
	ldr r7, [sp, #24]
	ldr r6, [sp, #16]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #8]
	cmp r7, #0
	beq label29
	cmp r7, #1
	beq label191
	cmp r7, #2
	beq label54
	cmp r7, #3
	beq label197
	cmp r7, #4
	beq label201
	mov r8, #0
	add r4, r4, #1
	cmp r1, r4
	ble label19
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #24]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label103
	b label651
.p2align 4
label51:
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	blt label50
	add r4, r4, #1
	cmp r1, r4
	ble label19
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #24]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label103
	ldr r7, [sp, #24]
	ldr r6, [sp, #16]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #8]
	cmp r7, #0
	beq label29
	cmp r7, #1
	beq label191
	cmp r7, #2
	beq label54
	cmp r7, #3
	beq label197
	cmp r7, #4
	beq label201
	mov r8, #0
	add r4, r4, #1
	cmp r1, r4
	ble label19
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #24]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label103
	b label657
.p2align 4
label191:
	mov r8, #0
	mov r7, #1
	cmp r7, #1073741824
	blt label58
	add r4, r4, #1
	cmp r1, r4
	ble label19
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #24]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label103
	ldr r7, [sp, #24]
	ldr r6, [sp, #16]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #8]
	cmp r7, #0
	beq label29
	cmp r7, #1
	beq label191
	cmp r7, #2
	beq label54
	cmp r7, #3
	beq label197
	cmp r7, #4
	beq label201
	add r4, r4, #1
	cmp r1, r4
	ble label19
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #24]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label103
.p2align 4
label664:
	ldr r7, [sp, #24]
	ldr r6, [sp, #16]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #8]
	cmp r7, #0
	beq label29
	b label634
.p2align 4
label626:
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #24]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label103
	b label664
.p2align 4
label58:
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	beq label59
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	blt label58
	add r4, r4, #1
	cmp r1, r4
	ble label19
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #24]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label103
	ldr r7, [sp, #24]
	ldr r6, [sp, #16]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #8]
	cmp r7, #0
	beq label29
	cmp r7, #1
	beq label191
	cmp r7, #2
	beq label54
	cmp r7, #3
	beq label197
	cmp r7, #4
	beq label201
	mov r8, #0
	add r4, r4, #1
	cmp r1, r4
	ble label19
	b label626
.p2align 4
label59:
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	blt label58
	add r4, r4, #1
	cmp r1, r4
	ble label19
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #24]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label103
	ldr r7, [sp, #24]
	ldr r6, [sp, #16]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #8]
	cmp r7, #0
	beq label29
	cmp r7, #1
	beq label191
	cmp r7, #2
	beq label54
	cmp r7, #3
	beq label197
	cmp r7, #4
	beq label201
	mov r8, #0
	add r4, r4, #1
	cmp r1, r4
	ble label19
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #24]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label103
	b label664
.p2align 4
label646:
	mov r8, #0
	add r4, r4, #1
	cmp r1, r4
	ble label19
	mov r5, r8
	cmp r4, #0
	mov r6, r3
	ldr r7, [sp, #24]
	orrlt r6, r3, #1
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	bne label103
	ldr r7, [sp, #24]
	ldr r6, [sp, #16]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #8]
	cmp r7, #0
	beq label29
	b label634
label2:
	ldr r3, [sp, #32]
	movw r2, #:lower16:b
	ldr r7, [sp, #24]
	movt r2, #:upper16:b
	mul r1, r3, r7
	str r1, [sp, #48]
	sub r1, r1, #4
	str r1, [sp, #52]
	mov r1, #0
	str r2, [sp, #56]
	str r1, [sp, #60]
	ldr r0, [sp, #40]
	ldr r7, [r0, r1, lsl #2]
	mov r0, #0
	str r7, [sp, #8]
	str r0, [sp, #20]
	b label5
