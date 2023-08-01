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
	sub sp, sp, #28
	bl getint
	sub r9, r0, #1
	str r0, [sp, #16]
	sub r5, r0, #4
	mov r6, r0
	str r9, [sp, #8]
	bl getint
	str r0, [sp, #12]
	mov r10, r0
	mov r0, #13
	bl _sysy_starttime
	mov r1, #0
label2:
	movw r0, #63744
	movt r0, #21
	movw r4, #:lower16:x
	movt r4, #:upper16:x
	ldr r6, [sp, #16]
	mla r0, r1, r0, r4
	cmp r6, r1
	bgt label36
label35:
	mov r8, #1
	mov r7, r8
	b label4
.p2align 4
label36:
	mov r2, #0
	ldr r6, [sp, #16]
	cmp r6, r2
	ble label169
.p2align 4
label15:
	ldr r6, [sp, #16]
	cmp r6, #0
	ble label16
	mov r4, #2400
	mla r3, r2, r4, r0
	cmp r6, #4
	ble label111
	mov r4, #0
.p2align 4
label18:
	add r6, r3, r4, lsl #2
	mov r8, #1
	add r4, r4, #4
	str r8, [r6, #0]
	cmp r5, r4
	str r8, [r6, #4]
	str r8, [r6, #8]
	str r8, [r6, #12]
	bgt label18
.p2align 4
label20:
	mov r8, #1
	str r8, [r3, r4, lsl #2]
	ldr r6, [sp, #16]
	add r4, r4, #1
	cmp r6, r4
	bgt label20
	add r2, r2, #1
	cmp r6, r2
	bgt label15
.p2align 4
label174:
	add r1, r1, #1
	movw r0, #63744
	movt r0, #21
	movw r4, #:lower16:x
	movt r4, #:upper16:x
	ldr r6, [sp, #16]
	mla r0, r1, r0, r4
	cmp r6, r1
	bgt label36
	b label35
.p2align 4
label4:
	movw r0, #63744
	movt r0, #21
	movw r4, #:lower16:x
	movt r4, #:upper16:x
	movw r1, #1792
	movt r1, #65514
	add r6, r8, #1
	mla r9, r8, r0, r4
	add r5, r9, r0
	add r3, r9, r1
	str r9, [sp, #0]
	str r3, [sp, #4]
	ldr r9, [sp, #8]
	cmp r9, r8
	ble label12
	mov r8, #1
	cmp r9, r8
	bgt label9
.p2align 4
label48:
	mov r7, r8
	mov r8, r6
	b label4
.p2align 4
label9:
	add r7, r8, #1
	mov r4, #2400
	ldr r9, [sp, #0]
	mla r2, r8, r4, r5
	ldr r3, [sp, #4]
	mla r0, r7, r4, r9
	mla r3, r8, r4, r3
	mla r4, r8, r4, r9
	ldr r9, [sp, #8]
	sub r1, r0, #4800
	cmp r9, #1
	ble label61
	mov r8, #1
.p2align 4
label10:
	ldr r9, [r3, r8, lsl #2]
	ldr r10, [r2, r8, lsl #2]
	add r9, r9, r10
	ldr r10, [r1, r8, lsl #2]
	add r9, r9, r10
	ldr r10, [r0, r8, lsl #2]
	add r10, r9, r10
	add r9, r4, r8, lsl #2
	add r8, r8, #1
	ldr r11, [r9, #-4]
	add r10, r10, r11
	ldr r11, [r9, #4]
	add r11, r10, r11
	ldr r10, [sp, #12]
	sdiv r10, r11, r10
	str r10, [r9, #0]
	ldr r9, [sp, #8]
	cmp r9, r8
	bgt label10
	mov r8, r7
	cmp r9, r7
	bgt label9
	b label48
label102:
	add r1, r1, #1
	movw r0, #63744
	movt r0, #21
	movw r4, #:lower16:x
	movt r4, #:upper16:x
	ldr r6, [sp, #16]
	mla r0, r1, r0, r4
	cmp r6, r1
	bgt label36
	b label35
.p2align 4
label16:
	add r2, r2, #1
	ldr r6, [sp, #16]
	cmp r6, r2
	bgt label15
	b label102
.p2align 4
label111:
	mov r4, #0
	mov r8, #1
	str r8, [r3, r4, lsl #2]
	ldr r6, [sp, #16]
	add r4, r4, #1
	cmp r6, r4
	bgt label20
	add r2, r2, #1
	cmp r6, r2
	bgt label15
	b label174
label12:
	mov r0, #53
	bl _sysy_stoptime
	movw r4, #:lower16:x
	movt r4, #:upper16:x
	ldr r6, [sp, #16]
	mov r0, r6
	mov r1, r4
	bl putarray
	movw r1, #63744
	movt r1, #21
	add r0, r6, r6, lsr #31
	asr r0, r0, #1
	mla r1, r0, r1, r4
	mov r4, #2400
	mla r1, r0, r4, r1
	mov r0, r6
	bl putarray
	ldr r3, [sp, #4]
	sub r0, r7, #1
	mla r1, r0, r4, r3
	mov r0, r6
	bl putarray
	add sp, sp, #28
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label61:
	mov r8, r7
	ldr r9, [sp, #8]
	cmp r9, r7
	bgt label9
	b label48
label169:
	add r1, r1, #1
	b label2
