.arch armv7ve
.data
.bss
.align 8
temp:
	.zero	8388608
.align 8
w:
	.zero	8388608
.align 8
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
	movw r4, #:lower16:w
	str r0, [sp, #0]
	mov r7, r0
	movt r4, #:upper16:w
	mov r0, r4
	bl getarray
	mov r0, #62
	bl _sysy_starttime
	mov r1, #0
	movw r0, #:lower16:temp
	movw r5, #:lower16:dst
	movt r0, #:upper16:temp
	movt r5, #:upper16:dst
	str r5, [sp, #4]
	ldr r7, [sp, #0]
	cmp r7, r1
	bgt label4
	mul r2, r7, r1
	cmp r7, #0
	bne label27
	b label26
label68:
	mov r3, #0
	ldr r7, [sp, #0]
	cmp r7, r3
	mla r4, r7, r3, r1
	mul r5, r7, r3
	bgt label74
	add r1, r1, #1
	cmp r7, r1
	mul r2, r7, r1
	bgt label68
	cmp r7, #0
	bne label27
	b label26
.p2align 4
label74:
	mov r6, #0
	ldr r7, [sp, #0]
	cmp r7, r6
	bgt label18
	add r3, r3, #1
	cmp r7, r3
	mla r4, r7, r3, r1
	mul r5, r7, r3
	bgt label74
	add r1, r1, #1
	cmp r7, r1
	mul r2, r7, r1
	bgt label68
	cmp r7, #0
	bne label27
	b label26
.p2align 4
label18:
	ldr r7, [r0, r4, lsl #2]
	cmn r7, #1
	bgt label19
	add r6, r6, #1
	ldr r7, [sp, #0]
	cmp r7, r6
	bgt label18
	add r3, r3, #1
	cmp r7, r3
	mla r4, r7, r3, r1
	mul r5, r7, r3
	bgt label74
	add r1, r1, #1
	cmp r7, r1
	mul r2, r7, r1
	bgt label68
	cmp r7, #0
	bne label27
	b label26
.p2align 4
label22:
	add r7, r7, r8
	str r7, [r0, r9, lsl #2]
	add r6, r6, #1
	ldr r7, [sp, #0]
	cmp r7, r6
	bgt label18
	add r3, r3, #1
	cmp r7, r3
	mla r4, r7, r3, r1
	mul r5, r7, r3
	bgt label74
	add r1, r1, #1
	cmp r7, r1
	mul r2, r7, r1
	bgt label68
	cmp r7, #0
	bne label27
	b label26
.p2align 4
label19:
	add r8, r2, r6
	ldr r8, [r0, r8, lsl #2]
	cmn r8, #1
	bgt label20
	add r6, r6, #1
	ldr r7, [sp, #0]
	cmp r7, r6
	bgt label18
	add r3, r3, #1
	cmp r7, r3
	mla r4, r7, r3, r1
	mul r5, r7, r3
	bgt label74
	add r1, r1, #1
	cmp r7, r1
	mul r2, r7, r1
	bgt label68
	cmp r7, #0
	bne label27
	b label26
.p2align 4
label20:
	add r9, r5, r6
	ldr r10, [r0, r9, lsl #2]
	cmp r10, #0
	blt label22
	ldr r10, [r0, r9, lsl #2]
	add r11, r7, r8
	cmp r10, r11
	bgt label22
	add r6, r6, #1
	ldr r7, [sp, #0]
	cmp r7, r6
	bgt label18
	add r3, r3, #1
	cmp r7, r3
	mla r4, r7, r3, r1
	mul r5, r7, r3
	bgt label74
	add r1, r1, #1
	cmp r7, r1
	mul r2, r7, r1
	bgt label68
	cmp r7, #0
	bne label27
label26:
	mov r0, #64
	bl _sysy_stoptime
	ldr r7, [sp, #0]
	ldr r5, [sp, #4]
	mul r0, r7, r7
	mov r1, r5
	bl putarray
	add sp, sp, #12
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label27:
	ldr r7, [sp, #0]
	mul r1, r7, r7
	cmp r1, #4
	sub r3, r1, #4
	bgt label126
	mov r2, #0
	b label28
label126:
	mov r2, #0
	b label30
label28:
	ldr r3, [r0, r2, lsl #2]
	ldr r5, [sp, #4]
	str r3, [r5, r2, lsl #2]
	add r2, r2, #1
	cmp r1, r2
	bgt label28
	b label26
.p2align 4
label4:
	ldr r7, [sp, #0]
	cmp r7, #0
	bgt label46
	add r1, r1, #1
	cmp r7, r1
	bgt label4
	mov r1, #0
	cmp r7, r1
	mul r2, r7, r1
	bgt label68
	cmp r7, #0
	bne label27
	b label26
.p2align 4
label46:
	mov r2, #0
.p2align 4
label5:
	ldr r7, [sp, #0]
	cmp r7, r2
	mla r3, r7, r2, r1
	ble label52
	ldr r5, [r4, r3, lsl #2]
	add r2, r2, #1
	str r5, [r0, r3, lsl #2]
	cmp r7, r2
	bgt label5
	add r1, r1, #1
	cmp r7, r1
	bgt label4
	mov r1, #0
	cmp r7, r1
	mul r2, r7, r1
	bgt label68
	cmp r7, #0
	bne label27
	b label26
.p2align 4
label52:
	mvn r5, #0
	add r2, r2, #1
	str r5, [r0, r3, lsl #2]
	ldr r7, [sp, #0]
	cmp r7, r2
	bgt label5
	add r1, r1, #1
	cmp r7, r1
	bgt label4
	mov r1, #0
	cmp r7, r1
	mul r2, r7, r1
	bgt label68
	cmp r7, #0
	bne label27
	b label26
label30:
	add r4, r0, r2, lsl #2
	ldr r7, [r0, r2, lsl #2]
	ldr r5, [sp, #4]
	str r7, [r5, r2, lsl #2]
	add r6, r5, r2, lsl #2
	add r2, r2, #4
	ldr r5, [r4, #4]
	cmp r3, r2
	str r5, [r6, #4]
	ldr r5, [r4, #8]
	str r5, [r6, #8]
	ldr r4, [r4, #12]
	str r4, [r6, #12]
	bgt label30
	b label28
