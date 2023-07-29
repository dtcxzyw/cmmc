.arch armv7ve
.data
.bss
.align 4
temp:
	.zero	8388608
.align 4
w:
	.zero	8388608
.align 4
dst:
	.zero	8388608
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #12
	bl getint
	movw r5, #:lower16:w
	mov r4, r0
	movt r5, #:upper16:w
	mov r0, r5
	bl getarray
	mov r0, #62
	bl _sysy_starttime
	movw r9, #:lower16:temp
	mov r0, #0
	movw r2, #:lower16:dst
	movt r9, #:upper16:temp
	movt r2, #:upper16:dst
	str r2, [sp, #0]
	str r9, [sp, #4]
	cmp r4, r0
	bgt label25
	mul r1, r4, r0
	mul r5, r4, r4
	cmp r4, #0
	sub r1, r5, #4
	bne label20
	b label19
label48:
	mov r2, #0
	mul r5, r4, r2
	cmp r4, r2
	mla r3, r4, r2, r0
	bgt label54
	add r0, r0, #1
	mul r1, r4, r0
	cmp r4, r0
	bgt label48
	mul r5, r4, r4
	cmp r4, #0
	sub r1, r5, #4
	bne label20
	b label19
.p2align 4
label12:
	ldr r9, [sp, #4]
	ldr r7, [r9, r3, lsl #2]
	cmn r7, #1
	bgt label13
	add r6, r6, #1
	cmp r4, r6
	bgt label12
	add r2, r2, #1
	mul r5, r4, r2
	cmp r4, r2
	mla r3, r4, r2, r0
	bgt label54
	add r0, r0, #1
	mul r1, r4, r0
	cmp r4, r0
	bgt label48
	mul r5, r4, r4
	cmp r4, #0
	sub r1, r5, #4
	bne label20
label19:
	mov r0, #64
	bl _sysy_stoptime
	ldr r2, [sp, #0]
	mov r0, r5
	mov r1, r2
	bl putarray
	add sp, sp, #12
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label20:
	cmp r5, #4
	bgt label105
	mov r0, #0
	b label21
label105:
	mov r0, #0
	b label23
label21:
	ldr r9, [sp, #4]
	ldr r1, [r9, r0, lsl #2]
	ldr r2, [sp, #0]
	str r1, [r2, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	bgt label21
	b label19
.p2align 4
label13:
	add r8, r1, r6
	ldr r9, [sp, #4]
	ldr r8, [r9, r8, lsl #2]
	cmn r8, #1
	bgt label14
	add r6, r6, #1
	cmp r4, r6
	bgt label12
	add r2, r2, #1
	mul r5, r4, r2
	cmp r4, r2
	mla r3, r4, r2, r0
	bgt label54
	add r0, r0, #1
	mul r1, r4, r0
	cmp r4, r0
	bgt label48
	mul r5, r4, r4
	cmp r4, #0
	sub r1, r5, #4
	bne label20
	b label19
.p2align 4
label14:
	add r10, r5, r6
	ldr r9, [sp, #4]
	ldr r9, [r9, r10, lsl #2]
	cmp r9, #0
	blt label16
	ldr r9, [sp, #4]
	add r11, r7, r8
	ldr r9, [r9, r10, lsl #2]
	cmp r9, r11
	bgt label16
	add r6, r6, #1
	cmp r4, r6
	bgt label12
	add r2, r2, #1
	mul r5, r4, r2
	cmp r4, r2
	mla r3, r4, r2, r0
	bgt label54
	add r0, r0, #1
	mul r1, r4, r0
	cmp r4, r0
	bgt label48
	mul r5, r4, r4
	cmp r4, #0
	sub r1, r5, #4
	bne label20
	b label19
.p2align 4
label16:
	add r7, r7, r8
	ldr r9, [sp, #4]
	str r7, [r9, r10, lsl #2]
	add r6, r6, #1
	cmp r4, r6
	bgt label12
	add r2, r2, #1
	mul r5, r4, r2
	cmp r4, r2
	mla r3, r4, r2, r0
	bgt label54
	add r0, r0, #1
	mul r1, r4, r0
	cmp r4, r0
	bgt label48
	mul r5, r4, r4
	cmp r4, #0
	sub r1, r5, #4
	bne label20
	b label19
.p2align 4
label54:
	mov r6, #0
	cmp r4, r6
	bgt label12
	add r2, r2, #1
	mul r5, r4, r2
	cmp r4, r2
	mla r3, r4, r2, r0
	bgt label54
	add r0, r0, #1
	mul r1, r4, r0
	cmp r4, r0
	bgt label48
	mul r5, r4, r4
	cmp r4, #0
	sub r1, r5, #4
	bne label20
	b label19
.p2align 4
label25:
	cmp r4, #0
	bgt label137
	add r0, r0, #1
	cmp r4, r0
	bgt label25
	mov r0, #0
	mul r1, r4, r0
	cmp r4, r0
	bgt label48
	mul r5, r4, r4
	cmp r4, #0
	sub r1, r5, #4
	bne label20
	b label19
.p2align 4
label137:
	mov r2, #0
.p2align 4
label26:
	mla r1, r4, r2, r0
	cmp r4, r2
	ble label143
	ldr r3, [r5, r1, lsl #2]
	add r2, r2, #1
	ldr r9, [sp, #4]
	cmp r4, r2
	str r3, [r9, r1, lsl #2]
	bgt label26
	add r0, r0, #1
	cmp r4, r0
	bgt label25
	mov r0, #0
	mul r1, r4, r0
	cmp r4, r0
	bgt label48
	mul r5, r4, r4
	cmp r4, #0
	sub r1, r5, #4
	bne label20
	b label19
.p2align 4
label143:
	mvn r3, #0
	add r2, r2, #1
	ldr r9, [sp, #4]
	cmp r4, r2
	str r3, [r9, r1, lsl #2]
	bgt label26
	add r0, r0, #1
	cmp r4, r0
	bgt label25
	mov r0, #0
	mul r1, r4, r0
	cmp r4, r0
	bgt label48
	mul r5, r4, r4
	cmp r4, #0
	sub r1, r5, #4
	bne label20
	b label19
label23:
	ldr r9, [sp, #4]
	ldr r6, [r9, r0, lsl #2]
	add r3, r9, r0, lsl #2
	ldr r2, [sp, #0]
	str r6, [r2, r0, lsl #2]
	add r4, r2, r0, lsl #2
	add r0, r0, #4
	ldr r2, [r3, #4]
	cmp r1, r0
	str r2, [r4, #4]
	ldr r2, [r3, #8]
	str r2, [r4, #8]
	ldr r2, [r3, #12]
	str r2, [r4, #12]
	bgt label23
	b label21
