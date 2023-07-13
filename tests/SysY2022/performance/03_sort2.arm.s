.arch armv7ve
.data
.bss
.align 4
a:
	.zero	120000040
.text
.syntax unified
.arm
.fpu vfpv4
radixSort:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	add r4, r0, #1
	sub sp, sp, #212
	mov r8, r1
	clz r4, r4
	str r1, [sp, #204]
	add r5, sp, #68
	mov r6, sp
	lsr r4, r4, #5
	add r1, r2, #1
	str r6, [sp, #196]
	cmp r3, r1
	add r6, sp, #132
	str r5, [sp, #200]
	mov r1, #0
	str r6, [sp, #64]
	movwle r1, #1
	orrs r4, r1, r4
	mov r1, #0
	str r1, [sp, #132]
	str r1, [r6, #4]
	str r1, [r6, #8]
	str r1, [r6, #12]
	str r1, [r6, #16]
	str r1, [r6, #20]
	str r1, [r6, #24]
	str r1, [r6, #28]
	str r1, [r6, #32]
	str r1, [r6, #36]
	str r1, [r6, #40]
	str r1, [r6, #44]
	str r1, [r6, #48]
	str r1, [r6, #52]
	str r1, [r6, #56]
	str r1, [r6, #60]
	str r1, [sp, #68]
	str r1, [r5, #4]
	str r1, [r5, #8]
	str r1, [r5, #12]
	str r1, [r5, #16]
	str r1, [r5, #20]
	str r1, [r5, #24]
	str r1, [r5, #28]
	str r1, [r5, #32]
	str r1, [r5, #36]
	str r1, [r5, #40]
	str r1, [r5, #44]
	str r1, [r5, #48]
	str r1, [r5, #52]
	str r1, [r5, #56]
	str r1, [r5, #60]
	str r1, [sp, #0]
	ldr r6, [sp, #196]
	str r1, [r6, #4]
	str r1, [r6, #8]
	str r1, [r6, #12]
	str r1, [r6, #16]
	str r1, [r6, #20]
	str r1, [r6, #24]
	str r1, [r6, #28]
	str r1, [r6, #32]
	str r1, [r6, #36]
	str r1, [r6, #40]
	str r1, [r6, #44]
	str r1, [r6, #48]
	str r1, [r6, #52]
	str r1, [r6, #56]
	str r1, [r6, #60]
	beq label2
	b label44
label2:
	sub r4, r0, #1
	cmp r2, r3
	bge label3
	mov r1, r2
	ldr r8, [sp, #204]
	cmp r0, #0
	ldr r5, [r8, r2, lsl #2]
	ble label42
	mov r6, #0
	add r7, r6, #4
	cmp r0, r7
	ble label262
	asr r6, r5, #31
	add r5, r5, r6, lsr #16
	mov r6, r7
	asr r5, r5, #16
	add r7, r7, #4
	cmp r0, r7
	ble label262
	asr r6, r5, #31
	add r5, r5, r6, lsr #16
	mov r6, r7
	asr r5, r5, #16
	add r7, r7, #4
	cmp r0, r7
	ble label262
	asr r6, r5, #31
	add r5, r5, r6, lsr #16
	mov r6, r7
	asr r5, r5, #16
	add r7, r7, #4
	cmp r0, r7
	ble label262
	asr r6, r5, #31
	add r5, r5, r6, lsr #16
	mov r6, r7
	asr r5, r5, #16
	add r7, r7, #4
	cmp r0, r7
	ble label262
	b label447
label42:
	and r5, r5, #15
	ldr r6, [sp, #196]
	add r1, r1, #1
	cmp r3, r1
	ldr r7, [r6, r5, lsl #2]
	add r7, r7, #1
	str r7, [r6, r5, lsl #2]
	ble label3
	ldr r8, [sp, #204]
	cmp r0, #0
	ldr r5, [r8, r1, lsl #2]
	ble label42
	mov r6, #0
	add r7, r6, #4
	cmp r0, r7
	ble label262
	asr r6, r5, #31
	add r5, r5, r6, lsr #16
	mov r6, r7
	asr r5, r5, #16
	add r7, r7, #4
	cmp r0, r7
	ble label262
	asr r6, r5, #31
	add r5, r5, r6, lsr #16
	mov r6, r7
	asr r5, r5, #16
	add r7, r7, #4
	cmp r0, r7
	ble label262
	asr r6, r5, #31
	add r5, r5, r6, lsr #16
	mov r6, r7
	asr r5, r5, #16
	add r7, r7, #4
	cmp r0, r7
	ble label262
	asr r6, r5, #31
	add r5, r5, r6, lsr #16
	mov r6, r7
	asr r5, r5, #16
	add r7, r7, #4
	cmp r0, r7
	ble label262
	b label447
label262:
	mov r7, r6
	mov r6, r5
label38:
	add r5, r7, #1
	cmp r0, r5
	asr r7, r6, #31
	add r6, r6, r7, lsr #28
	asr r6, r6, #4
	ble label268
	mov r7, r5
	b label38
label268:
	mov r5, r6
	and r5, r6, #15
	ldr r6, [sp, #196]
	add r1, r1, #1
	cmp r3, r1
	ldr r7, [r6, r5, lsl #2]
	add r7, r7, #1
	str r7, [r6, r5, lsl #2]
	ble label3
	ldr r8, [sp, #204]
	cmp r0, #0
	ldr r5, [r8, r1, lsl #2]
	ble label42
	mov r6, #0
	add r7, r6, #4
	cmp r0, r7
	ble label262
	asr r6, r5, #31
	add r5, r5, r6, lsr #16
	mov r6, r7
	asr r5, r5, #16
	add r7, r7, #4
	cmp r0, r7
	ble label262
	asr r6, r5, #31
	add r5, r5, r6, lsr #16
	mov r6, r7
	asr r5, r5, #16
	add r7, r7, #4
	cmp r0, r7
	ble label262
	asr r6, r5, #31
	add r5, r5, r6, lsr #16
	mov r6, r7
	asr r5, r5, #16
	add r7, r7, #4
	cmp r0, r7
	ble label262
	asr r6, r5, #31
	add r5, r5, r6, lsr #16
	mov r6, r7
	asr r5, r5, #16
	add r7, r7, #4
	cmp r0, r7
	ble label262
label447:
	asr r6, r5, #31
	add r5, r5, r6, lsr #16
	mov r6, r7
	asr r5, r5, #16
	add r7, r7, #4
	cmp r0, r7
	ble label262
	b label447
label44:
	add sp, sp, #212
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label3:
	str r2, [sp, #132]
	ldr r1, [sp, #0]
	add r1, r2, r1
	str r1, [sp, #68]
	mov r1, #1
label4:
	sub r3, r1, #1
	ldr r5, [sp, #200]
	ldr r3, [r5, r3, lsl #2]
	ldr r6, [sp, #64]
	str r3, [r6, r1, lsl #2]
	add r7, r6, r1, lsl #2
	ldr r6, [sp, #196]
	ldr r8, [r6, r1, lsl #2]
	add r9, r6, r1, lsl #2
	add r6, r5, r1, lsl #2
	add r10, r3, r8
	str r10, [r5, r1, lsl #2]
	str r10, [r7, #4]
	ldr r5, [r9, #4]
	add r3, r3, r5
	add r11, r10, r5
	str r11, [r6, #4]
	str r11, [r7, #8]
	ldr r10, [r9, #8]
	add r11, r11, r10
	str r11, [r6, #8]
	str r11, [r7, #12]
	ldr r5, [r9, #12]
	add r3, r3, r5
	add r5, r8, r10
	add r3, r3, r5
	str r3, [r6, #12]
	add r3, r1, #4
	cmp r3, #13
	bge label6
	mov r1, r3
	b label4
label6:
	add r6, r1, #3
	ldr r5, [sp, #200]
	add r1, r5, r6, lsl #2
	ldr r5, [r5, r6, lsl #2]
	ldr r6, [sp, #64]
	str r5, [r6, r3, lsl #2]
	add r7, r6, r3, lsl #2
	ldr r6, [sp, #196]
	add r8, r6, r3, lsl #2
	ldr r3, [r6, r3, lsl #2]
	add r6, r5, r3
	str r6, [r1, #4]
	str r6, [r7, #4]
	ldr r9, [r8, #4]
	add r5, r5, r9
	add r6, r6, r9
	str r6, [r1, #8]
	str r6, [r7, #8]
	ldr r6, [r8, #8]
	add r3, r3, r6
	add r3, r5, r3
	str r3, [r1, #12]
	mov r1, #0
	cmp r1, #16
	bge label27
	ldr r6, [sp, #64]
	ldr r3, [r6, r1, lsl #2]
	ldr r5, [sp, #200]
	ldr r5, [r5, r1, lsl #2]
	cmp r3, r5
	bge label12
	ldr r8, [sp, #204]
	ldr r3, [r8, r3, lsl #2]
	cmp r0, #0
	ble label192
	mov r6, #0
	mov r5, r3
	add r7, r6, #4
	cmp r0, r7
	ble label197
	asr r6, r3, #31
	add r5, r3, r6, lsr #16
	mov r6, r7
	asr r5, r5, #16
	add r7, r7, #4
	cmp r0, r7
	ble label197
	asr r6, r5, #31
	add r5, r5, r6, lsr #16
	mov r6, r7
	asr r5, r5, #16
	add r7, r7, #4
	cmp r0, r7
	ble label197
	asr r6, r5, #31
	add r5, r5, r6, lsr #16
	mov r6, r7
	asr r5, r5, #16
	add r7, r7, #4
	cmp r0, r7
	ble label197
	b label440
label27:
	str r2, [sp, #132]
	mov r7, #0
	ldr r0, [sp, #0]
	add r0, r2, r0
	str r0, [sp, #68]
	cmp r7, #16
	bge label44
	cmp r7, #0
	ble label32
	b label379
label440:
	asr r6, r5, #31
	add r5, r5, r6, lsr #16
	mov r6, r7
	asr r5, r5, #16
	add r7, r7, #4
	cmp r0, r7
	ble label197
	b label440
label197:
	mov r7, r6
	mov r6, r5
	add r5, r7, #1
	cmp r0, r5
	asr r7, r6, #31
	add r6, r6, r7, lsr #28
	asr r6, r6, #4
	ble label23
	mov r7, r5
	add r5, r5, #1
	cmp r0, r5
	asr r7, r6, #31
	add r6, r6, r7, lsr #28
	asr r6, r6, #4
	ble label23
	mov r7, r5
	add r5, r5, #1
	cmp r0, r5
	asr r7, r6, #31
	add r6, r6, r7, lsr #28
	asr r6, r6, #4
	ble label23
	mov r7, r5
	add r5, r5, #1
	cmp r0, r5
	asr r7, r6, #31
	add r6, r6, r7, lsr #28
	asr r6, r6, #4
	ble label23
	mov r7, r5
	add r5, r5, #1
	cmp r0, r5
	asr r7, r6, #31
	add r6, r6, r7, lsr #28
	asr r6, r6, #4
	ble label23
	b label442
label192:
	mov r6, r3
	asr r5, r3, #31
	add r5, r3, r5, lsr #28
	asr r5, r5, #4
	sub r5, r3, r5, lsl #4
	cmp r1, r5
	beq label26
	ldr r6, [sp, #64]
	ldr r7, [r6, r5, lsl #2]
	ldr r8, [sp, #204]
	ldr r9, [r8, r7, lsl #2]
	str r3, [r8, r7, lsl #2]
	add r3, r7, #1
	str r3, [r6, r5, lsl #2]
	mov r3, r9
	cmp r0, #0
	ble label192
	mov r6, #0
	mov r5, r9
	add r7, r6, #4
	cmp r0, r7
	ble label197
	asr r6, r9, #31
	add r5, r9, r6, lsr #16
	mov r6, r7
	asr r5, r5, #16
	add r7, r7, #4
	cmp r0, r7
	ble label197
	asr r6, r5, #31
	add r5, r5, r6, lsr #16
	mov r6, r7
	asr r5, r5, #16
	add r7, r7, #4
	cmp r0, r7
	ble label197
	asr r6, r5, #31
	add r5, r5, r6, lsr #16
	mov r6, r7
	asr r5, r5, #16
	add r7, r7, #4
	cmp r0, r7
	ble label197
	b label440
label23:
	asr r5, r6, #31
	add r5, r6, r5, lsr #28
	asr r5, r5, #4
	sub r5, r6, r5, lsl #4
	cmp r1, r5
	beq label26
	ldr r6, [sp, #64]
	ldr r7, [r6, r5, lsl #2]
	ldr r8, [sp, #204]
	ldr r9, [r8, r7, lsl #2]
	str r3, [r8, r7, lsl #2]
	add r3, r7, #1
	str r3, [r6, r5, lsl #2]
	mov r3, r9
	cmp r0, #0
	ble label192
	mov r6, #0
	mov r5, r9
	add r7, r6, #4
	cmp r0, r7
	ble label197
	asr r6, r9, #31
	add r5, r9, r6, lsr #16
	mov r6, r7
	asr r5, r5, #16
	add r7, r7, #4
	cmp r0, r7
	ble label197
	asr r6, r5, #31
	add r5, r5, r6, lsr #16
	mov r6, r7
	asr r5, r5, #16
	add r7, r7, #4
	cmp r0, r7
	ble label197
	asr r6, r5, #31
	add r5, r5, r6, lsr #16
	mov r6, r7
	asr r5, r5, #16
	add r7, r7, #4
	cmp r0, r7
	ble label197
	asr r6, r5, #31
	add r5, r5, r6, lsr #16
	mov r6, r7
	asr r5, r5, #16
	add r7, r7, #4
	cmp r0, r7
	ble label197
	b label440
label26:
	ldr r6, [sp, #64]
	ldr r5, [r6, r1, lsl #2]
	ldr r8, [sp, #204]
	str r3, [r8, r5, lsl #2]
	add r3, r5, #1
	str r3, [r6, r1, lsl #2]
	ldr r5, [sp, #200]
	ldr r5, [r5, r1, lsl #2]
	cmp r3, r5
	bge label12
	ldr r3, [r8, r3, lsl #2]
	cmp r0, #0
	ble label192
	mov r6, #0
	mov r5, r3
	add r7, r6, #4
	cmp r0, r7
	ble label197
	asr r6, r3, #31
	add r5, r3, r6, lsr #16
	mov r6, r7
	asr r5, r5, #16
	add r7, r7, #4
	cmp r0, r7
	ble label197
	asr r6, r5, #31
	add r5, r5, r6, lsr #16
	mov r6, r7
	asr r5, r5, #16
	add r7, r7, #4
	cmp r0, r7
	ble label197
	asr r6, r5, #31
	add r5, r5, r6, lsr #16
	mov r6, r7
	asr r5, r5, #16
	add r7, r7, #4
	cmp r0, r7
	ble label197
	asr r6, r5, #31
	add r5, r5, r6, lsr #16
	mov r6, r7
	asr r5, r5, #16
	add r7, r7, #4
	cmp r0, r7
	ble label197
	b label440
label12:
	add r1, r1, #1
	cmp r1, #16
	bge label27
	ldr r6, [sp, #64]
	ldr r3, [r6, r1, lsl #2]
	ldr r5, [sp, #200]
	ldr r5, [r5, r1, lsl #2]
	cmp r3, r5
	bge label12
	ldr r8, [sp, #204]
	ldr r3, [r8, r3, lsl #2]
	cmp r0, #0
	ble label192
	mov r6, #0
	mov r5, r3
	add r7, r6, #4
	cmp r0, r7
	ble label197
	asr r6, r3, #31
	add r5, r3, r6, lsr #16
	mov r6, r7
	asr r5, r5, #16
	add r7, r7, #4
	cmp r0, r7
	ble label197
	asr r6, r5, #31
	add r5, r5, r6, lsr #16
	mov r6, r7
	asr r5, r5, #16
	add r7, r7, #4
	cmp r0, r7
	ble label197
	asr r6, r5, #31
	add r5, r5, r6, lsr #16
	mov r6, r7
	asr r5, r5, #16
	add r7, r7, #4
	cmp r0, r7
	ble label197
	asr r6, r5, #31
	add r5, r5, r6, lsr #16
	mov r6, r7
	asr r5, r5, #16
	add r7, r7, #4
	cmp r0, r7
	ble label197
	b label440
label442:
	mov r7, r5
	add r5, r5, #1
	cmp r0, r5
	asr r7, r6, #31
	add r6, r6, r7, lsr #28
	asr r6, r6, #4
	ble label23
	b label442
label32:
	ldr r6, [sp, #64]
	ldr r2, [r6, r7, lsl #2]
	ldr r5, [sp, #200]
	ldr r3, [r5, r7, lsl #2]
	ldr r8, [sp, #204]
	mov r0, r4
	mov r1, r8
	bl radixSort
	add r7, r7, #1
	cmp r7, #16
	bge label44
	cmp r7, #0
	ble label32
label379:
	sub r0, r7, #1
	ldr r5, [sp, #200]
	ldr r0, [r5, r0, lsl #2]
	ldr r6, [sp, #64]
	str r0, [r6, r7, lsl #2]
	ldr r6, [sp, #196]
	ldr r1, [r6, r7, lsl #2]
	add r0, r0, r1
	str r0, [r5, r7, lsl #2]
	b label32
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	movw r6, #:lower16:a
	movt r6, #:upper16:a
	mov r0, r6
	mov r5, r6
	bl getarray
	mov r4, r0
	mov r0, #90
	bl _sysy_starttime
	mov r1, r6
	mov r2, #0
	mov r0, #8
	mov r3, r4
	bl radixSort
	cmp r4, #0
	ble label472
	mov r2, #0
	mov r0, r2
	add r1, r2, #4
	cmp r4, r1
	ble label462
	b label461
label472:
	mov r4, #0
	b label465
label461:
	add r7, r5, r0, lsl #2
	ldr r3, [r5, r0, lsl #2]
	add r6, r0, #3
	ldr r8, [r7, #4]
	sdiv r9, r8, r6
	mls r8, r9, r6, r8
	add r9, r0, #1
	mla r2, r8, r9, r2
	add r9, r0, #5
	ldr r8, [r7, #8]
	ldr r7, [r7, #12]
	sdiv r10, r7, r9
	mls r7, r10, r9, r7
	mla r2, r6, r7, r2
	sdiv r6, r8, r1
	mls r7, r6, r1, r8
	add r6, r0, #2
	sdiv r8, r3, r6
	mul r7, r7, r6
	mls r3, r8, r6, r3
	mla r0, r0, r3, r7
	add r2, r2, r0
	mov r0, r1
	add r1, r1, #4
	cmp r4, r1
	ble label462
	b label461
label462:
	ldr r1, [r5, r0, lsl #2]
	add r3, r0, #2
	sdiv r6, r1, r3
	mls r1, r6, r3, r1
	mla r2, r0, r1, r2
	add r0, r0, #1
	cmp r4, r0
	ble label514
	b label462
label514:
	mov r4, r2
label465:
	mov r0, #102
	bl _sysy_stoptime
	mov r0, r4
	cmp r4, #0
	rsbmi r0, r4, #0
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
