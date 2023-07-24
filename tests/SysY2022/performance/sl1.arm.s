.arch armv7ve
.data
.bss
.align 4
x:
	.zero	864000000
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #52
	bl getint
	sub r3, r0, #1
	str r0, [sp, #0]
	mov r6, r0
	str r3, [sp, #8]
	bl getint
	str r0, [sp, #12]
	mov r8, r0
	mov r0, #13
	bl _sysy_starttime
	mov r0, #0
	movw r5, #:lower16:x
	movt r5, #:upper16:x
	str r5, [sp, #4]
	movw r1, #63744
	movt r1, #21
	ldr r6, [sp, #0]
	mla r1, r0, r1, r5
	cmp r6, r0
	bgt label38
label37:
	mov r4, #1
	mov r0, r4
	b label15
label7:
	ldr r6, [sp, #0]
	cmp r6, #0
	bgt label8
	add r2, r2, #1
	cmp r6, r2
	bgt label7
	add r0, r0, #1
	movw r1, #63744
	ldr r5, [sp, #4]
	movt r1, #21
	mla r1, r0, r1, r5
	cmp r6, r0
	bgt label38
	b label37
label9:
	add r4, r5, #4
	ldr r6, [sp, #0]
	cmp r6, r4
	bgt label11
	mov r4, #1
	str r4, [r3, r5, lsl #2]
	add r5, r5, #1
	cmp r6, r5
	bgt label12
	add r2, r2, #1
	cmp r6, r2
	bgt label7
	add r0, r0, #1
	movw r1, #63744
	ldr r5, [sp, #4]
	movt r1, #21
	mla r1, r0, r1, r5
	cmp r6, r0
	bgt label38
	b label37
label11:
	add r6, r3, r5, lsl #2
	mov r7, #1
	str r7, [r3, r5, lsl #2]
	mov r5, r4
	str r7, [r6, #4]
	str r7, [r6, #8]
	str r7, [r6, #12]
	b label9
label12:
	mov r4, #1
	str r4, [r3, r5, lsl #2]
	ldr r6, [sp, #0]
	add r5, r5, #1
	cmp r6, r5
	bgt label12
	add r2, r2, #1
	cmp r6, r2
	bgt label7
	add r0, r0, #1
	movw r1, #63744
	ldr r5, [sp, #4]
	movt r1, #21
	mla r1, r0, r1, r5
	cmp r6, r0
	bgt label38
	b label37
label15:
	movw r2, #63744
	ldr r5, [sp, #4]
	movw r1, #1792
	movt r2, #21
	movt r1, #65514
	mla r3, r0, r2, r5
	add r1, r3, r1
	str r3, [sp, #20]
	str r1, [sp, #16]
	add r1, r3, r2
	str r1, [sp, #24]
	add r1, r0, #1
	str r1, [sp, #28]
	ldr r3, [sp, #8]
	cmp r3, r0
	ble label18
	mov r0, #1
	b label19
label18:
	mov r0, #53
	bl _sysy_stoptime
	ldr r6, [sp, #0]
	ldr r5, [sp, #4]
	mov r0, r6
	mov r1, r5
	bl putarray
	movw r1, #63744
	add r0, r6, r6, lsr #31
	movt r1, #21
	asr r0, r0, #1
	mla r1, r0, r1, r5
	mov r5, #2400
	mla r1, r0, r5, r1
	mov r0, r6
	bl putarray
	ldr r1, [sp, #16]
	sub r0, r4, #1
	mla r1, r0, r5, r1
	mov r0, r6
	bl putarray
	add sp, sp, #52
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label19:
	ldr r3, [sp, #8]
	cmp r3, r0
	ble label86
label21:
	add r1, r0, #1
	mov r2, #2400
	str r1, [sp, #40]
	ldr r3, [sp, #20]
	mla r8, r1, r2, r3
	sub r7, r8, #4800
	str r8, [sp, #36]
	str r7, [sp, #32]
	ldr r1, [sp, #24]
	mla r6, r0, r2, r1
	str r6, [sp, #44]
	ldr r1, [sp, #16]
	mla r1, r0, r2, r1
	mla r0, r0, r2, r3
	ldr r3, [sp, #8]
	cmp r3, #1
	bgt label100
	ldr r1, [sp, #40]
	mov r0, r1
	cmp r3, r1
	bgt label21
	b label86
label100:
	mov r9, #1
	b label22
label86:
	mov r4, r0
	ldr r1, [sp, #28]
	mov r0, r1
	b label15
label22:
	add r2, r9, #4
	ldr r3, [sp, #8]
	cmp r3, r2
	bgt label26
label24:
	ldr r2, [r1, r9, lsl #2]
	ldr r6, [sp, #44]
	ldr r3, [r6, r9, lsl #2]
	ldr r7, [sp, #32]
	add r2, r2, r3
	ldr r3, [r7, r9, lsl #2]
	ldr r8, [sp, #36]
	add r2, r2, r3
	ldr r3, [r8, r9, lsl #2]
	add r3, r2, r3
	add r2, r0, r9, lsl #2
	ldr r4, [r2, #-4]
	ldr r2, [r2, #4]
	ldr r8, [sp, #12]
	add r3, r3, r4
	add r2, r3, r2
	sdiv r2, r2, r8
	str r2, [r0, r9, lsl #2]
	ldr r3, [sp, #8]
	add r9, r9, #1
	cmp r3, r9
	bgt label24
	ldr r1, [sp, #40]
	mov r0, r1
	cmp r3, r1
	bgt label21
	b label86
label26:
	add r3, r1, r9, lsl #2
	ldr r5, [r1, r9, lsl #2]
	ldr r6, [sp, #44]
	add r4, r6, r9, lsl #2
	ldr r6, [r6, r9, lsl #2]
	ldr r7, [sp, #32]
	add r5, r5, r6
	add r6, r7, r9, lsl #2
	ldr r7, [r7, r9, lsl #2]
	ldr r8, [sp, #36]
	add r5, r5, r7
	add r7, r8, r9, lsl #2
	ldr r8, [r8, r9, lsl #2]
	add r8, r5, r8
	add r5, r0, r9, lsl #2
	ldr r10, [r5, #-4]
	add r8, r8, r10
	ldr r10, [r5, #4]
	add r10, r8, r10
	ldr r8, [sp, #12]
	sdiv r10, r10, r8
	str r10, [r0, r9, lsl #2]
	ldr r10, [r3, #4]
	ldr r11, [r4, #4]
	add r10, r10, r11
	ldr r11, [r6, #4]
	add r10, r10, r11
	ldr r11, [r7, #4]
	ldr r9, [r0, r9, lsl #2]
	add r10, r10, r11
	add r9, r10, r9
	ldr r10, [r5, #8]
	add r9, r9, r10
	sdiv r9, r9, r8
	str r9, [r5, #4]
	ldr r9, [r3, #8]
	ldr r10, [r4, #8]
	add r9, r9, r10
	ldr r10, [r6, #8]
	add r9, r9, r10
	ldr r10, [r7, #8]
	add r9, r9, r10
	ldr r10, [r5, #4]
	add r9, r9, r10
	ldr r10, [r5, #12]
	add r9, r9, r10
	sdiv r9, r9, r8
	str r9, [r5, #8]
	mov r9, r2
	ldr r3, [r3, #12]
	ldr r4, [r4, #12]
	add r3, r3, r4
	ldr r4, [r6, #12]
	add r3, r3, r4
	ldr r4, [r7, #12]
	add r3, r3, r4
	ldr r4, [r5, #8]
	add r3, r3, r4
	ldr r4, [r5, #16]
	add r3, r3, r4
	sdiv r3, r3, r8
	str r3, [r5, #12]
	b label22
label8:
	mov r3, #2400
	mov r5, #0
	mla r3, r2, r3, r1
	b label9
label38:
	mov r2, #0
	ldr r6, [sp, #0]
	cmp r6, r2
	bgt label7
	add r0, r0, #1
	movw r1, #63744
	ldr r5, [sp, #4]
	movt r1, #21
	mla r1, r0, r1, r5
	cmp r6, r0
	bgt label38
	b label37
