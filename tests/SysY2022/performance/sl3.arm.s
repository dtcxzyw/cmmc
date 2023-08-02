.arch armv7ve
.data
.bss
.align 8
x:
	.zero	864000000
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #20
	bl getint
	str r0, [sp, #12]
	mov r6, r0
	bl getint
	str r0, [sp, #8]
	mov r11, r0
	mov r0, #13
	bl _sysy_starttime
	movw r4, #:lower16:x
	movt r4, #:upper16:x
	ldr r6, [sp, #12]
	mov r3, r4
	mov r4, #0
	sub r0, r6, #20
	sub r1, r6, #4
	sub r9, r6, #1
	str r9, [sp, #4]
	cmp r6, r4
	bgt label24
label5:
	movw r0, #63744
	movt r0, #21
	movw r4, #:lower16:x
	movt r4, #:upper16:x
	mov r8, #1
	add r4, r4, r0
	mov r10, r8
	movw r0, #1792
	movt r0, #65514
	add r5, r8, #1
	add r3, r4, r0
	movw r0, #63744
	movt r0, #21
	str r3, [sp, #0]
	add r0, r4, r0
	ldr r9, [sp, #4]
	cmp r9, r8
	bgt label10
	b label23
.p2align 4
label24:
	mov r2, r3
	mov r5, #0
	ldr r6, [sp, #12]
	cmp r6, r5
	bgt label29
	b label28
.p2align 4
label233:
	add r4, r4, #1
	movw r2, #63744
	movt r2, #21
	add r3, r3, r2
	ldr r6, [sp, #12]
	cmp r6, r4
	bgt label24
	b label5
.p2align 4
label29:
	ldr r6, [sp, #12]
	cmp r6, #4
	bgt label35
	b label132
.p2align 4
label33:
	add r5, r5, #1
	add r2, r2, #2400
	ldr r6, [sp, #12]
	cmp r6, r5
	bgt label29
	b label233
.p2align 4
label35:
	cmp r1, #16
	ble label36
	mov r6, r2
	mov r7, #0
.p2align 4
label43:
	mov r8, #1
	add r7, r7, #16
	str r8, [r6, #0]
	cmp r0, r7
	str r8, [r6, #4]
	str r8, [r6, #8]
	str r8, [r6, #12]
	str r8, [r6, #16]
	str r8, [r6, #20]
	str r8, [r6, #24]
	str r8, [r6, #28]
	str r8, [r6, #32]
	str r8, [r6, #36]
	str r8, [r6, #40]
	str r8, [r6, #44]
	str r8, [r6, #48]
	str r8, [r6, #52]
	str r8, [r6, #56]
	str r8, [r6, #60]
	ble label175
	add r6, r6, #64
	b label43
.p2align 4
label37:
	mov r8, #1
	str r8, [r6, #0]
	str r8, [r6, #4]
	str r8, [r6, #8]
	str r8, [r6, #12]
	add r8, r7, #4
	cmp r1, r8
	ble label152
.p2align 4
label40:
	add r6, r6, #16
	mov r7, r8
	b label37
.p2align 4
label175:
	add r6, r2, r7, lsl #2
	mov r8, #1
	str r8, [r6, #0]
	str r8, [r6, #4]
	str r8, [r6, #8]
	str r8, [r6, #12]
	add r8, r7, #4
	cmp r1, r8
	bgt label40
	add r7, r2, r8, lsl #2
	mov r6, r8
	mov r8, #1
	str r8, [r7, #0]
	add r8, r6, #1
	ldr r6, [sp, #12]
	cmp r6, r8
	bgt label34
	add r5, r5, #1
	add r2, r2, #2400
	cmp r6, r5
	bgt label29
	add r4, r4, #1
	movw r2, #63744
	movt r2, #21
	add r3, r3, r2
	cmp r6, r4
	bgt label24
	b label5
.p2align 4
label30:
	mov r8, #1
	str r8, [r7, #0]
	add r8, r6, #1
	ldr r6, [sp, #12]
	cmp r6, r8
	ble label33
.p2align 4
label34:
	add r7, r7, #4
	mov r6, r8
	b label30
.p2align 4
label152:
	add r7, r2, r8, lsl #2
	mov r6, r8
	mov r8, #1
	str r8, [r7, #0]
	add r8, r6, #1
	ldr r6, [sp, #12]
	cmp r6, r8
	bgt label34
	add r5, r5, #1
	add r2, r2, #2400
	cmp r6, r5
	bgt label29
	add r4, r4, #1
	movw r2, #63744
	movt r2, #21
	add r3, r3, r2
	cmp r6, r4
	bgt label24
	b label5
.p2align 4
label36:
	mov r6, r2
	mov r7, #0
	b label37
.p2align 4
label10:
	add r0, r0, #2400
	mov r8, #1
	ldr r9, [sp, #4]
	cmp r9, r8
	bgt label14
.p2align 4
label70:
	movw r0, #63744
	movt r0, #21
	mov r10, r8
	add r4, r4, r0
	mov r8, r5
	movw r0, #1792
	movt r0, #65514
	add r5, r5, #1
	add r3, r4, r0
	movw r0, #63744
	movt r0, #21
	str r3, [sp, #0]
	add r0, r4, r0
	ldr r9, [sp, #4]
	cmp r9, r8
	bgt label10
	b label23
.p2align 4
label14:
	add r6, r8, #1
	mov r7, #2400
	ldr r3, [sp, #0]
	mla r1, r6, r7, r4
	ldr r9, [sp, #4]
	mla r10, r8, r7, r3
	mla r3, r8, r7, r4
	sub r2, r1, #4800
	cmp r9, #1
	ble label82
	add r7, r10, #4
	mov r8, #1
.p2align 4
label16:
	ldr r9, [r7, #0]
	ldr r10, [r0, r8, lsl #2]
	add r9, r9, r10
	ldr r10, [r2, r8, lsl #2]
	add r9, r9, r10
	ldr r10, [r1, r8, lsl #2]
	add r10, r9, r10
	add r9, r3, r8, lsl #2
	add r8, r8, #1
	ldr r11, [r9, #-4]
	add r10, r10, r11
	ldr r11, [r9, #4]
	add r10, r10, r11
	ldr r11, [sp, #8]
	sdiv r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [sp, #4]
	cmp r9, r8
	bgt label20
	add r0, r0, #2400
	mov r8, r6
	cmp r9, r6
	bgt label14
	b label70
.p2align 4
label20:
	add r7, r7, #4
	b label16
label28:
	add r4, r4, #1
	movw r2, #63744
	movt r2, #21
	add r3, r3, r2
	ldr r6, [sp, #12]
	cmp r6, r4
	bgt label24
	b label5
label23:
	mov r0, #53
	bl _sysy_stoptime
	movw r4, #:lower16:x
	movt r4, #:upper16:x
	ldr r6, [sp, #12]
	mov r0, r6
	mov r1, r4
	bl putarray
	mov r7, #2400
	movw r1, #63744
	movt r1, #21
	add r0, r6, r6, lsr #31
	asr r0, r0, #1
	mla r1, r0, r1, r4
	mla r1, r0, r7, r1
	mov r0, r6
	bl putarray
	ldr r3, [sp, #0]
	sub r0, r10, #1
	mla r1, r0, r7, r3
	mov r0, r6
	bl putarray
	add sp, sp, #20
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label82:
	add r0, r0, #2400
	mov r8, r6
	ldr r9, [sp, #4]
	cmp r9, r6
	bgt label14
	b label70
.p2align 4
label132:
	mov r7, r2
	mov r6, #0
	b label30
