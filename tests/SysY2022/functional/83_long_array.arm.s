.arch armv7ve
.data
.bss
.align 4
a1:
	.zero	40000
.align 4
a2:
	.zero	40000
.align 4
a3:
	.zero	40000
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r0, #0
	movw r5, #:lower16:a2
	movw r4, #:lower16:a1
	movw r6, #:lower16:a3
	sub sp, sp, #4
	movt r5, #:upper16:a2
	movt r4, #:upper16:a1
	movt r6, #:upper16:a3
label2:
	add r1, r4, r0, lsl #2
	mov r2, #10
	movw r3, #26215
	mul r7, r0, r0
	movt r3, #26214
	smmul r8, r7, r3
	asr r9, r8, #2
	add r8, r9, r8, lsr #31
	mls r7, r8, r2, r7
	str r7, [r4, r0, lsl #2]
	add r7, r0, #1
	mla r7, r7, r0, r7
	smmul r8, r7, r3
	asr r9, r8, #2
	add r8, r9, r8, lsr #31
	mls r7, r8, r2, r7
	str r7, [r1, #4]
	add r7, r0, #2
	mul r7, r7, r7
	smmul r8, r7, r3
	asr r9, r8, #2
	add r8, r9, r8, lsr #31
	mls r7, r8, r2, r7
	str r7, [r1, #8]
	add r7, r0, #3
	mul r7, r7, r7
	smmul r8, r7, r3
	asr r9, r8, #2
	add r8, r9, r8, lsr #31
	mls r7, r8, r2, r7
	str r7, [r1, #12]
	add r7, r0, #4
	mul r7, r7, r7
	smmul r8, r7, r3
	asr r9, r8, #2
	add r8, r9, r8, lsr #31
	mls r7, r8, r2, r7
	str r7, [r1, #16]
	add r7, r0, #5
	mul r7, r7, r7
	smmul r8, r7, r3
	asr r9, r8, #2
	add r8, r9, r8, lsr #31
	mls r7, r8, r2, r7
	str r7, [r1, #20]
	add r7, r0, #6
	mul r7, r7, r7
	smmul r8, r7, r3
	asr r9, r8, #2
	add r8, r9, r8, lsr #31
	mls r7, r8, r2, r7
	str r7, [r1, #24]
	add r7, r0, #7
	mul r7, r7, r7
	smmul r8, r7, r3
	asr r9, r8, #2
	add r8, r9, r8, lsr #31
	mls r7, r8, r2, r7
	str r7, [r1, #28]
	add r7, r0, #8
	mul r7, r7, r7
	smmul r8, r7, r3
	asr r9, r8, #2
	add r8, r9, r8, lsr #31
	mls r7, r8, r2, r7
	str r7, [r1, #32]
	add r7, r0, #9
	mul r7, r7, r7
	smmul r8, r7, r3
	asr r9, r8, #2
	add r8, r9, r8, lsr #31
	mls r7, r8, r2, r7
	str r7, [r1, #36]
	add r7, r0, #10
	mul r7, r7, r7
	smmul r8, r7, r3
	asr r9, r8, #2
	add r8, r9, r8, lsr #31
	mls r7, r8, r2, r7
	str r7, [r1, #40]
	add r7, r0, #11
	mul r7, r7, r7
	smmul r8, r7, r3
	asr r9, r8, #2
	add r8, r9, r8, lsr #31
	mls r7, r8, r2, r7
	str r7, [r1, #44]
	add r7, r0, #12
	mul r7, r7, r7
	smmul r8, r7, r3
	asr r9, r8, #2
	add r8, r9, r8, lsr #31
	mls r7, r8, r2, r7
	str r7, [r1, #48]
	add r7, r0, #13
	mul r7, r7, r7
	smmul r8, r7, r3
	asr r9, r8, #2
	add r8, r9, r8, lsr #31
	mls r7, r8, r2, r7
	str r7, [r1, #52]
	add r7, r0, #14
	mul r7, r7, r7
	smmul r8, r7, r3
	asr r9, r8, #2
	add r8, r9, r8, lsr #31
	mls r7, r8, r2, r7
	str r7, [r1, #56]
	add r7, r0, #15
	add r0, r0, #16
	mul r7, r7, r7
	smmul r3, r7, r3
	asr r8, r3, #2
	add r3, r8, r3, lsr #31
	mls r2, r3, r2, r7
	str r2, [r1, #60]
	movw r1, #10000
	cmp r0, r1
	bge label102
	b label2
label102:
	mov r0, #0
label4:
	add r2, r4, r0, lsl #2
	ldr r1, [r4, r0, lsl #2]
	movw r3, #26215
	movt r3, #26214
	mul r7, r1, r1
	mov r1, #10
	smmul r8, r7, r3
	asr r9, r8, #2
	add r8, r9, r8, lsr #31
	mls r8, r8, r1, r7
	add r7, r5, r0, lsl #2
	str r8, [r5, r0, lsl #2]
	add r0, r0, #16
	ldr r8, [r2, #4]
	mul r8, r8, r8
	smmul r9, r8, r3
	asr r10, r9, #2
	add r9, r10, r9, lsr #31
	mls r8, r9, r1, r8
	str r8, [r7, #4]
	ldr r8, [r2, #8]
	mul r8, r8, r8
	smmul r9, r8, r3
	asr r10, r9, #2
	add r9, r10, r9, lsr #31
	mls r8, r9, r1, r8
	str r8, [r7, #8]
	ldr r8, [r2, #12]
	mul r8, r8, r8
	smmul r9, r8, r3
	asr r10, r9, #2
	add r9, r10, r9, lsr #31
	mls r8, r9, r1, r8
	str r8, [r7, #12]
	ldr r8, [r2, #16]
	mul r8, r8, r8
	smmul r9, r8, r3
	asr r10, r9, #2
	add r9, r10, r9, lsr #31
	mls r8, r9, r1, r8
	str r8, [r7, #16]
	ldr r8, [r2, #20]
	mul r8, r8, r8
	smmul r9, r8, r3
	asr r10, r9, #2
	add r9, r10, r9, lsr #31
	mls r8, r9, r1, r8
	str r8, [r7, #20]
	ldr r8, [r2, #24]
	mul r8, r8, r8
	smmul r9, r8, r3
	asr r10, r9, #2
	add r9, r10, r9, lsr #31
	mls r8, r9, r1, r8
	str r8, [r7, #24]
	ldr r8, [r2, #28]
	mul r8, r8, r8
	smmul r9, r8, r3
	asr r10, r9, #2
	add r9, r10, r9, lsr #31
	mls r8, r9, r1, r8
	str r8, [r7, #28]
	ldr r8, [r2, #32]
	mul r8, r8, r8
	smmul r9, r8, r3
	asr r10, r9, #2
	add r9, r10, r9, lsr #31
	mls r8, r9, r1, r8
	str r8, [r7, #32]
	ldr r8, [r2, #36]
	mul r8, r8, r8
	smmul r9, r8, r3
	asr r10, r9, #2
	add r9, r10, r9, lsr #31
	mls r8, r9, r1, r8
	str r8, [r7, #36]
	ldr r8, [r2, #40]
	mul r8, r8, r8
	smmul r9, r8, r3
	asr r10, r9, #2
	add r9, r10, r9, lsr #31
	mls r8, r9, r1, r8
	str r8, [r7, #40]
	ldr r8, [r2, #44]
	mul r8, r8, r8
	smmul r9, r8, r3
	asr r10, r9, #2
	add r9, r10, r9, lsr #31
	mls r8, r9, r1, r8
	str r8, [r7, #44]
	ldr r8, [r2, #48]
	mul r8, r8, r8
	smmul r9, r8, r3
	asr r10, r9, #2
	add r9, r10, r9, lsr #31
	mls r8, r9, r1, r8
	str r8, [r7, #48]
	ldr r8, [r2, #52]
	mul r8, r8, r8
	smmul r9, r8, r3
	asr r10, r9, #2
	add r9, r10, r9, lsr #31
	mls r8, r9, r1, r8
	str r8, [r7, #52]
	ldr r8, [r2, #56]
	mul r8, r8, r8
	smmul r9, r8, r3
	asr r10, r9, #2
	add r9, r10, r9, lsr #31
	mls r8, r9, r1, r8
	str r8, [r7, #56]
	ldr r2, [r2, #60]
	mul r2, r2, r2
	smmul r3, r2, r3
	asr r8, r3, #2
	add r3, r8, r3, lsr #31
	mls r1, r3, r1, r2
	str r1, [r7, #60]
	movw r1, #10000
	cmp r0, r1
	bge label189
	b label4
label189:
	mov r0, #0
label6:
	add r2, r5, r0, lsl #2
	ldr r1, [r5, r0, lsl #2]
	movw r3, #34079
	movt r3, #20971
	mul r7, r1, r1
	mov r1, #100
	smmul r8, r7, r3
	asr r9, r8, #5
	add r8, r9, r8, lsr #31
	ldr r9, [r4, r0, lsl #2]
	mls r8, r8, r1, r7
	add r7, r4, r0, lsl #2
	add r9, r8, r9
	str r9, [r6, r0, lsl #2]
	add r8, r6, r0, lsl #2
	ldr r9, [r2, #4]
	add r0, r0, #4
	mul r9, r9, r9
	smmul r10, r9, r3
	asr r11, r10, #5
	add r10, r11, r10, lsr #31
	mls r9, r10, r1, r9
	ldr r10, [r7, #4]
	add r9, r9, r10
	str r9, [r8, #4]
	ldr r9, [r2, #8]
	mul r9, r9, r9
	smmul r10, r9, r3
	asr r11, r10, #5
	add r10, r11, r10, lsr #31
	mls r9, r10, r1, r9
	ldr r10, [r7, #8]
	add r9, r9, r10
	str r9, [r8, #8]
	ldr r2, [r2, #12]
	mul r2, r2, r2
	smmul r3, r2, r3
	asr r9, r3, #5
	add r3, r9, r3, lsr #31
	mls r1, r3, r1, r2
	ldr r2, [r7, #12]
	add r1, r1, r2
	str r1, [r8, #12]
	movw r1, #10000
	cmp r0, r1
	bge label229
	b label6
label229:
	mov r8, #0
	mov r7, r8
	movw r0, #10000
	cmp r8, r0
	bge label11
	cmp r8, #10
	bge label14
	b label13
label11:
	mov r0, r8
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label13:
	ldr r0, [r6, r7, lsl #2]
	movw r1, #1333
	movw r2, #3835
	movt r2, #12586
	add r0, r8, r0
	smmul r2, r0, r2
	asr r3, r2, #8
	add r2, r3, r2, lsr #31
	mls r8, r2, r1, r0
	mov r0, r8
	bl putint
	add r7, r7, #1
	movw r0, #10000
	cmp r7, r0
	bge label11
	cmp r7, #10
	bge label14
	b label13
label14:
	cmp r7, #20
	bge label15
	b label599
label15:
	cmp r7, #30
	bge label16
	movw r0, #5000
	movw r1, #10000
	cmp r0, r1
	bge label23
	movw r1, #2233
	cmp r0, r1
	ble label21
	ldr r1, [r5, r7, lsl #2]
	ldr r2, [r4, r0, lsl #2]
	add r0, r0, #1
	add r1, r8, r1
	sub r8, r1, r2
	movw r1, #10000
	cmp r0, r1
	bge label23
	movw r1, #2233
	cmp r0, r1
	ble label21
	ldr r1, [r5, r7, lsl #2]
	ldr r2, [r4, r0, lsl #2]
	add r0, r0, #1
	add r1, r8, r1
	sub r8, r1, r2
	movw r1, #10000
	cmp r0, r1
	bge label23
	movw r1, #2233
	cmp r0, r1
	ble label21
	ldr r1, [r5, r7, lsl #2]
	ldr r2, [r4, r0, lsl #2]
	add r0, r0, #1
	add r1, r8, r1
	sub r8, r1, r2
	movw r1, #10000
	cmp r0, r1
	bge label23
	movw r1, #2233
	cmp r0, r1
	ble label21
	ldr r1, [r5, r7, lsl #2]
	ldr r2, [r4, r0, lsl #2]
	add r0, r0, #1
	add r1, r8, r1
	sub r8, r1, r2
	movw r1, #10000
	cmp r0, r1
	bge label23
	movw r1, #2233
	cmp r0, r1
	ble label21
	b label641
label23:
	mov r0, r8
	bl putint
	add r7, r7, #1
	movw r0, #10000
	cmp r7, r0
	bge label11
	cmp r7, #10
	bge label14
	b label13
label21:
	ldr r2, [r4, r7, lsl #2]
	movw r3, #19047
	ldr r1, [r6, r0, lsl #2]
	movt r3, #5033
	add r0, r0, #2
	add r2, r8, r2
	add r1, r1, r2
	smmul r3, r1, r3
	movw r2, #13333
	asr r8, r3, #10
	add r3, r8, r3, lsr #31
	mls r8, r3, r2, r1
	movw r1, #10000
	cmp r0, r1
	bge label23
	movw r1, #2233
	cmp r0, r1
	ble label21
	ldr r1, [r5, r7, lsl #2]
	ldr r2, [r4, r0, lsl #2]
	add r0, r0, #1
	add r1, r8, r1
	sub r8, r1, r2
	movw r1, #10000
	cmp r0, r1
	bge label23
	movw r1, #2233
	cmp r0, r1
	ble label21
	ldr r1, [r5, r7, lsl #2]
	ldr r2, [r4, r0, lsl #2]
	add r0, r0, #1
	add r1, r8, r1
	sub r8, r1, r2
	movw r1, #10000
	cmp r0, r1
	bge label23
	movw r1, #2233
	cmp r0, r1
	ble label21
	ldr r1, [r5, r7, lsl #2]
	ldr r2, [r4, r0, lsl #2]
	add r0, r0, #1
	add r1, r8, r1
	sub r8, r1, r2
	movw r1, #10000
	cmp r0, r1
	bge label23
	movw r1, #2233
	cmp r0, r1
	ble label21
	ldr r1, [r5, r7, lsl #2]
	ldr r2, [r4, r0, lsl #2]
	add r0, r0, #1
	add r1, r8, r1
	sub r8, r1, r2
	movw r1, #10000
	cmp r0, r1
	bge label23
	movw r1, #2233
	cmp r0, r1
	ble label21
label641:
	ldr r1, [r5, r7, lsl #2]
	ldr r2, [r4, r0, lsl #2]
	add r0, r0, #1
	add r1, r8, r1
	sub r8, r1, r2
	movw r1, #10000
	cmp r0, r1
	bge label23
	movw r1, #2233
	cmp r0, r1
	ble label21
	b label641
label16:
	ldr r0, [r6, r7, lsl #2]
	movw r1, #34452
	movw r2, #27117
	add r7, r7, #1
	movt r1, #1
	movt r2, #21477
	add r0, r0, r0, lsl #3
	add r0, r8, r0
	smmul r2, r0, r2
	asr r3, r2, #15
	add r2, r3, r2, lsr #31
	mls r8, r2, r1, r0
	movw r0, #10000
	cmp r7, r0
	bge label11
	cmp r7, #10
	bge label14
	b label13
label599:
	ldr r0, [r6, r7, lsl #2]
	movw r1, #5000
	mov r3, r8
label25:
	add r2, r4, r1, lsl #2
	ldr r8, [r4, r1, lsl #2]
	add r3, r0, r3
	add r1, r1, #16
	sub r3, r3, r8
	ldr r8, [r2, #4]
	add r3, r0, r3
	sub r3, r3, r8
	ldr r8, [r2, #8]
	add r3, r0, r3
	sub r3, r3, r8
	ldr r8, [r2, #12]
	add r3, r0, r3
	sub r3, r3, r8
	ldr r8, [r2, #16]
	add r3, r0, r3
	sub r3, r3, r8
	ldr r8, [r2, #20]
	add r3, r0, r3
	sub r3, r3, r8
	ldr r8, [r2, #24]
	add r3, r0, r3
	sub r3, r3, r8
	ldr r8, [r2, #28]
	add r3, r0, r3
	sub r3, r3, r8
	ldr r8, [r2, #32]
	add r3, r0, r3
	sub r3, r3, r8
	ldr r8, [r2, #36]
	add r3, r0, r3
	sub r3, r3, r8
	ldr r8, [r2, #40]
	add r3, r0, r3
	sub r3, r3, r8
	ldr r8, [r2, #44]
	add r3, r0, r3
	sub r3, r3, r8
	ldr r8, [r2, #48]
	add r3, r0, r3
	sub r3, r3, r8
	ldr r8, [r2, #52]
	add r3, r0, r3
	sub r3, r3, r8
	ldr r8, [r2, #56]
	add r3, r0, r3
	ldr r2, [r2, #60]
	sub r3, r3, r8
	add r3, r0, r3
	sub r2, r3, r2
	movw r3, #9992
	cmp r1, r3
	bge label28
	mov r3, r2
	b label25
label28:
	add r3, r4, r1, lsl #2
	add r2, r0, r2
	ldr r1, [r4, r1, lsl #2]
	sub r1, r2, r1
	ldr r2, [r3, #4]
	add r1, r0, r1
	sub r1, r1, r2
	ldr r2, [r3, #8]
	add r1, r0, r1
	sub r1, r1, r2
	ldr r2, [r3, #12]
	add r1, r0, r1
	sub r1, r1, r2
	ldr r2, [r3, #16]
	add r1, r0, r1
	sub r1, r1, r2
	ldr r2, [r3, #20]
	add r1, r0, r1
	sub r1, r1, r2
	ldr r2, [r3, #24]
	add r1, r0, r1
	sub r1, r1, r2
	add r0, r0, r1
	ldr r1, [r3, #28]
	sub r8, r0, r1
	mov r0, r8
	bl putint
	add r7, r7, #1
	movw r0, #10000
	cmp r7, r0
	bge label11
	cmp r7, #10
	bge label14
	b label13
