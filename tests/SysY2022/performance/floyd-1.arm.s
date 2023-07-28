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
	movw r1, #:lower16:dst
	movt r9, #:upper16:temp
	movt r1, #:upper16:dst
	str r1, [sp, #0]
	str r9, [sp, #4]
	cmp r4, r0
	bgt label4
	mul r1, r4, r0
	mul r5, r4, r4
	cmp r4, #0
	bne label27
	b label26
label68:
	mov r2, #0
	mul r5, r4, r2
	cmp r4, r2
	mla r3, r4, r2, r0
	bgt label74
	add r0, r0, #1
	mul r1, r4, r0
	cmp r4, r0
	bgt label68
	mul r5, r4, r4
	cmp r4, #0
	bne label27
	b label26
.p2align 4
label74:
	mov r6, #0
	cmp r4, r6
	bgt label17
	add r2, r2, #1
	mul r5, r4, r2
	cmp r4, r2
	mla r3, r4, r2, r0
	bgt label74
	add r0, r0, #1
	mul r1, r4, r0
	cmp r4, r0
	bgt label68
	mul r5, r4, r4
	cmp r4, #0
	bne label27
	b label26
.p2align 4
label17:
	ldr r9, [sp, #4]
	ldr r7, [r9, r3, lsl #2]
	cmn r7, #1
	bgt label19
	add r6, r6, #1
	cmp r4, r6
	bgt label17
	add r2, r2, #1
	mul r5, r4, r2
	cmp r4, r2
	mla r3, r4, r2, r0
	bgt label74
	add r0, r0, #1
	mul r1, r4, r0
	cmp r4, r0
	bgt label68
	mul r5, r4, r4
	cmp r4, #0
	bne label27
	b label26
.p2align 4
label19:
	add r8, r1, r6
	ldr r9, [sp, #4]
	ldr r8, [r9, r8, lsl #2]
	cmn r8, #1
	bgt label20
	add r6, r6, #1
	cmp r4, r6
	bgt label17
	add r2, r2, #1
	mul r5, r4, r2
	cmp r4, r2
	mla r3, r4, r2, r0
	bgt label74
	add r0, r0, #1
	mul r1, r4, r0
	cmp r4, r0
	bgt label68
	mul r5, r4, r4
	cmp r4, #0
	bne label27
	b label26
.p2align 4
label20:
	add r10, r5, r6
	ldr r9, [sp, #4]
	ldr r9, [r9, r10, lsl #2]
	cmp r9, #0
	blt label22
	ldr r9, [sp, #4]
	add r11, r7, r8
	ldr r9, [r9, r10, lsl #2]
	cmp r9, r11
	bgt label22
	add r6, r6, #1
	cmp r4, r6
	bgt label17
	add r2, r2, #1
	mul r5, r4, r2
	cmp r4, r2
	mla r3, r4, r2, r0
	bgt label74
	add r0, r0, #1
	mul r1, r4, r0
	cmp r4, r0
	bgt label68
	mul r5, r4, r4
	cmp r4, #0
	bne label27
	b label26
.p2align 4
label22:
	add r7, r7, r8
	ldr r9, [sp, #4]
	str r7, [r9, r10, lsl #2]
	add r6, r6, #1
	cmp r4, r6
	bgt label17
	add r2, r2, #1
	mul r5, r4, r2
	cmp r4, r2
	mla r3, r4, r2, r0
	bgt label74
	add r0, r0, #1
	mul r1, r4, r0
	cmp r4, r0
	bgt label68
	mul r5, r4, r4
	cmp r4, #0
	bne label27
label26:
	mov r0, #64
	bl _sysy_stoptime
	ldr r1, [sp, #0]
	mov r0, r5
	bl putarray
	add sp, sp, #12
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label27:
	cmp r5, #4
	bgt label124
	mov r0, #0
	b label28
label124:
	mov r0, #0
	b label30
label28:
	ldr r9, [sp, #4]
	ldr r2, [r9, r0, lsl #2]
	ldr r1, [sp, #0]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	cmp r5, r0
	bgt label28
	b label26
label30:
	ldr r9, [sp, #4]
	ldr r4, [r9, r0, lsl #2]
	add r2, r9, r0, lsl #2
	ldr r1, [sp, #0]
	str r4, [r1, r0, lsl #2]
	add r3, r1, r0, lsl #2
	ldr r1, [r2, #4]
	str r1, [r3, #4]
	ldr r1, [r2, #8]
	str r1, [r3, #8]
	ldr r1, [r2, #12]
	str r1, [r3, #12]
	add r1, r0, #8
	cmp r5, r1
	add r0, r0, #4
	bgt label30
	b label28
.p2align 4
label4:
	cmp r4, #0
	bgt label46
	add r0, r0, #1
	cmp r4, r0
	bgt label4
	mov r0, #0
	mul r1, r4, r0
	cmp r4, r0
	bgt label68
	mul r5, r4, r4
	cmp r4, #0
	bne label27
	b label26
.p2align 4
label46:
	mov r2, #0
.p2align 4
label5:
	mla r1, r4, r2, r0
	cmp r4, r2
	ble label52
	ldr r3, [r5, r1, lsl #2]
	add r2, r2, #1
	ldr r9, [sp, #4]
	cmp r4, r2
	str r3, [r9, r1, lsl #2]
	bgt label5
	add r0, r0, #1
	cmp r4, r0
	bgt label4
	mov r0, #0
	mul r1, r4, r0
	cmp r4, r0
	bgt label68
	mul r5, r4, r4
	cmp r4, #0
	bne label27
	b label26
.p2align 4
label52:
	mvn r3, #0
	add r2, r2, #1
	ldr r9, [sp, #4]
	cmp r4, r2
	str r3, [r9, r1, lsl #2]
	bgt label5
	add r0, r0, #1
	cmp r4, r0
	bgt label4
	mov r0, #0
	mul r1, r4, r0
	cmp r4, r0
	bgt label68
	mul r5, r4, r4
	cmp r4, #0
	bne label27
	b label26
