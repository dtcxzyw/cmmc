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
	mov r5, r0
	str r0, [sp, #0]
	sub r4, r0, #1
	str r4, [sp, #8]
	bl getint
	mov r4, r0
	str r0, [sp, #12]
	mov r0, #13
	bl _sysy_starttime
	movw r4, #:lower16:x
	movt r4, #:upper16:x
	str r4, [sp, #4]
	mov r2, #0
label2:
	movw r0, #63744
	movt r0, #21
	ldr r4, [sp, #4]
	mla r1, r2, r0, r4
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label47
	mov r3, #0
	b label4
label47:
	mov r6, #1
	mov r2, r6
	str r6, [sp, #16]
	b label18
label4:
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label51
	b label6
label51:
	add r2, r2, #1
	b label2
label6:
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label54
	mov r0, #2400
	mla r0, r3, r0, r1
	mov r6, #0
label8:
	add r4, r6, #4
	ldr r5, [sp, #0]
	cmp r5, r4
	ble label61
	add r5, r0, r6, lsl #2
	mov r7, #1
	str r7, [r0, r6, lsl #2]
	str r7, [r5, #4]
	str r7, [r5, #8]
	str r7, [r5, #12]
	mov r6, r4
	b label8
label61:
	mov r4, r6
label10:
	add r6, r4, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label13
	add r5, r0, r4, lsl #2
	mov r7, #1
	str r7, [r0, r4, lsl #2]
	str r7, [r5, #4]
	str r7, [r5, #8]
	str r7, [r5, #12]
	mov r4, r6
	b label10
label18:
	movw r3, #63744
	movt r3, #21
	ldr r4, [sp, #4]
	ldr r2, [sp, #16]
	mla r0, r2, r3, r4
	str r0, [sp, #20]
	movw r1, #1792
	movt r1, #65514
	add r1, r0, r1
	str r1, [sp, #24]
	add r4, r0, r3
	str r4, [sp, #28]
	ldr r4, [sp, #8]
	cmp r4, r2
	ble label21
	mov r3, #1
	str r3, [sp, #32]
label22:
	ldr r4, [sp, #8]
	ldr r3, [sp, #32]
	cmp r4, r3
	ble label24
	ldr r4, [sp, #8]
	cmp r4, #1
	ble label26
	mov r2, #2400
	ldr r0, [sp, #20]
	ldr r3, [sp, #32]
	mla r0, r3, r2, r0
	sub r4, r0, #2400
	str r4, [sp, #40]
	add r4, r0, #2400
	str r4, [sp, #36]
	ldr r1, [sp, #24]
	ldr r3, [sp, #32]
	mla r1, r3, r2, r1
	ldr r4, [sp, #28]
	ldr r3, [sp, #32]
	mla r2, r3, r2, r4
	mov r9, #1
	b label28
label13:
	mov r5, #1
	str r5, [r0, r4, lsl #2]
	add r4, r4, #1
	ldr r5, [sp, #0]
	cmp r5, r4
	ble label54
	b label13
label28:
	add r3, r9, #4
	ldr r4, [sp, #8]
	cmp r4, r3
	ble label30
	add r5, r1, r9, lsl #2
	ldr r4, [r1, r9, lsl #2]
	add r6, r2, r9, lsl #2
	ldr r7, [r2, r9, lsl #2]
	add r8, r4, r7
	ldr r4, [sp, #40]
	add r7, r4, r9, lsl #2
	ldr r4, [sp, #40]
	ldr r4, [r4, r9, lsl #2]
	add r8, r8, r4
	ldr r4, [sp, #36]
	add r10, r4, r9, lsl #2
	ldr r4, [sp, #36]
	ldr r4, [r4, r9, lsl #2]
	add r4, r8, r4
	add r8, r0, r9, lsl #2
	ldr r11, [r8, #-4]
	add r4, r4, r11
	ldr r11, [r8, #4]
	add r11, r4, r11
	ldr r4, [sp, #12]
	sdiv r11, r11, r4
	str r11, [r0, r9, lsl #2]
	ldr r9, [r5, #4]
	add r9, r11, r9
	ldr r11, [r6, #4]
	add r9, r9, r11
	ldr r11, [r7, #4]
	add r9, r9, r11
	ldr r11, [r10, #4]
	add r9, r9, r11
	ldr r11, [r8, #8]
	add r9, r9, r11
	sdiv r9, r9, r4
	str r9, [r8, #4]
	ldr r11, [r5, #8]
	add r9, r9, r11
	ldr r11, [r6, #8]
	add r9, r9, r11
	ldr r11, [r7, #8]
	add r9, r9, r11
	ldr r11, [r10, #8]
	add r9, r9, r11
	ldr r11, [r8, #12]
	add r9, r9, r11
	sdiv r9, r9, r4
	str r9, [r8, #8]
	ldr r5, [r5, #12]
	add r5, r9, r5
	ldr r6, [r6, #12]
	add r5, r5, r6
	ldr r6, [r7, #12]
	add r5, r5, r6
	ldr r6, [r10, #12]
	add r5, r5, r6
	ldr r6, [r8, #16]
	add r5, r5, r6
	sdiv r4, r5, r4
	str r4, [r8, #12]
	mov r9, r3
	b label28
label30:
	add r3, r9, #4
	ldr r4, [sp, #8]
	cmp r4, r3
	ble label131
	b label32
label131:
	mov r3, r9
	b label33
label32:
	add r5, r1, r9, lsl #2
	ldr r4, [r1, r9, lsl #2]
	add r6, r2, r9, lsl #2
	ldr r7, [r2, r9, lsl #2]
	add r8, r4, r7
	ldr r4, [sp, #40]
	add r7, r4, r9, lsl #2
	ldr r4, [sp, #40]
	ldr r4, [r4, r9, lsl #2]
	add r8, r8, r4
	ldr r4, [sp, #36]
	add r10, r4, r9, lsl #2
	ldr r4, [sp, #36]
	ldr r4, [r4, r9, lsl #2]
	add r4, r8, r4
	add r8, r0, r9, lsl #2
	ldr r11, [r8, #-4]
	add r4, r4, r11
	ldr r11, [r8, #4]
	add r11, r4, r11
	ldr r4, [sp, #12]
	sdiv r11, r11, r4
	str r11, [r0, r9, lsl #2]
	ldr r9, [r5, #4]
	add r9, r11, r9
	ldr r11, [r6, #4]
	add r9, r9, r11
	ldr r11, [r7, #4]
	add r9, r9, r11
	ldr r11, [r10, #4]
	add r9, r9, r11
	ldr r11, [r8, #8]
	add r9, r9, r11
	sdiv r9, r9, r4
	str r9, [r8, #4]
	ldr r11, [r5, #8]
	add r9, r9, r11
	ldr r11, [r6, #8]
	add r9, r9, r11
	ldr r11, [r7, #8]
	add r9, r9, r11
	ldr r11, [r10, #8]
	add r9, r9, r11
	ldr r11, [r8, #12]
	add r9, r9, r11
	sdiv r9, r9, r4
	str r9, [r8, #8]
	ldr r5, [r5, #12]
	add r5, r9, r5
	ldr r6, [r6, #12]
	add r5, r5, r6
	ldr r6, [r7, #12]
	add r5, r5, r6
	ldr r6, [r10, #12]
	add r5, r5, r6
	ldr r6, [r8, #16]
	add r5, r5, r6
	sdiv r4, r5, r4
	str r4, [r8, #12]
	mov r9, r3
	b label30
label33:
	ldr r4, [r1, r3, lsl #2]
	ldr r5, [r2, r3, lsl #2]
	add r5, r4, r5
	ldr r4, [sp, #40]
	ldr r4, [r4, r3, lsl #2]
	add r5, r5, r4
	ldr r4, [sp, #36]
	ldr r4, [r4, r3, lsl #2]
	add r5, r5, r4
	add r4, r0, r3, lsl #2
	ldr r6, [r4, #-4]
	add r5, r5, r6
	ldr r4, [r4, #4]
	add r5, r5, r4
	ldr r4, [sp, #12]
	sdiv r4, r5, r4
	str r4, [r0, r3, lsl #2]
	add r3, r3, #1
	ldr r4, [sp, #8]
	cmp r4, r3
	ble label26
	b label33
label54:
	add r3, r3, #1
	b label4
label26:
	ldr r3, [sp, #32]
	add r3, r3, #1
	str r3, [sp, #32]
	b label22
label24:
	ldr r2, [sp, #16]
	add r2, r2, #1
	ldr r3, [sp, #32]
	mov r6, r3
	str r2, [sp, #16]
	b label18
label21:
	mov r0, #53
	bl _sysy_stoptime
	ldr r5, [sp, #0]
	ldr r4, [sp, #4]
	mov r0, r5
	mov r1, r4
	bl putarray
	add r0, r5, r5, lsr #31
	asr r0, r0, #1
	movw r7, #63744
	movt r7, #21
	mla r1, r0, r7, r4
	mov r8, #2400
	mla r1, r0, r8, r1
	mov r0, r5
	bl putarray
	ldr r2, [sp, #16]
	sub r0, r2, #1
	mla r0, r0, r7, r4
	sub r1, r6, #1
	mla r1, r1, r8, r0
	mov r0, r5
	bl putarray
	mov r0, #0
	add sp, sp, #52
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
