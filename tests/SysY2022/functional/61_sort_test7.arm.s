.arch armv7ve
.data
.bss
.align 4
buf:
	.zero	800
.text
.syntax unified
.arm
.fpu vfpv4
merge_sort:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r7, r1
	mov r4, r0
	sub sp, sp, #12
	add r0, r0, #1
	str r1, [sp, #0]
	cmp r1, r0
	ble label33
	add r0, r4, r1
	add r0, r0, r0, lsr #31
	asr r5, r0, #1
	mov r0, r4
	mov r1, r5
	bl merge_sort
	mov r0, r5
	mov r1, r7
	bl merge_sort
	mov r8, r4
	mov r3, r5
	mov r6, r4
	movw r0, #:lower16:buf
	sub r2, r7, #4
	sub r9, r5, #4
	movt r0, #:upper16:buf
	add r1, r0, #400
	cmp r5, r4
	mov r10, #0
	ldr r7, [sp, #0]
	movwgt r10, #1
	cmp r7, r5
	mov r7, #0
	movwgt r7, #1
	ands r7, r10, r7
	bne label7
	cmp r5, r4
	bgt label26
	b label11
.p2align 4
label7:
	ldr r7, [r0, r8, lsl #2]
	ldr r10, [r0, r3, lsl #2]
	cmp r7, r10
	blt label8
	str r10, [r1, r6, lsl #2]
	add r3, r3, #1
	add r6, r6, #1
	cmp r5, r8
	mov r10, #0
	ldr r7, [sp, #0]
	movwgt r10, #1
	cmp r7, r3
	mov r7, #0
	movwgt r7, #1
	ands r7, r10, r7
	bne label7
	cmp r5, r8
	bgt label26
label11:
	ldr r7, [sp, #0]
	cmp r7, r3
	bgt label13
	b label20
label26:
	add r7, r8, #4
	cmp r5, r7
	bgt label30
label27:
	ldr r7, [r0, r8, lsl #2]
	add r8, r8, #1
	cmp r5, r8
	str r7, [r1, r6, lsl #2]
	add r6, r6, #1
	bgt label27
	b label11
.p2align 4
label8:
	str r7, [r1, r6, lsl #2]
	add r8, r8, #1
	add r6, r6, #1
	cmp r5, r8
	mov r10, #0
	ldr r7, [sp, #0]
	movwgt r10, #1
	cmp r7, r3
	mov r7, #0
	movwgt r7, #1
	ands r7, r10, r7
	bne label7
	cmp r5, r8
	bgt label26
	b label11
label14:
	ldr r5, [r0, r3, lsl #2]
	add r3, r3, #1
	str r5, [r1, r6, lsl #2]
	ldr r7, [sp, #0]
	add r6, r6, #1
	cmp r7, r3
	bgt label14
	b label20
label17:
	add r5, r0, r3, lsl #2
	ldr r8, [r0, r3, lsl #2]
	add r7, r1, r6, lsl #2
	add r3, r3, #4
	cmp r2, r3
	str r8, [r1, r6, lsl #2]
	add r6, r6, #4
	ldr r8, [r5, #4]
	str r8, [r7, #4]
	ldr r8, [r5, #8]
	str r8, [r7, #8]
	ldr r5, [r5, #12]
	str r5, [r7, #12]
	bgt label17
	b label14
label20:
	ldr r7, [sp, #0]
	cmp r4, r7
	bge label33
	add r3, r4, #4
	cmp r7, r3
	bgt label24
label22:
	ldr r2, [r1, r4, lsl #2]
	str r2, [r0, r4, lsl #2]
	ldr r7, [sp, #0]
	add r4, r4, #1
	cmp r7, r4
	bgt label22
label33:
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label30:
	add r7, r0, r8, lsl #2
	ldr r11, [r0, r8, lsl #2]
	add r10, r1, r6, lsl #2
	add r8, r8, #4
	cmp r9, r8
	str r11, [r1, r6, lsl #2]
	add r6, r6, #4
	ldr r11, [r7, #4]
	str r11, [r10, #4]
	ldr r11, [r7, #8]
	str r11, [r10, #8]
	ldr r7, [r7, #12]
	str r7, [r10, #12]
	bgt label30
	b label27
label24:
	add r3, r1, r4, lsl #2
	ldr r6, [r1, r4, lsl #2]
	add r5, r0, r4, lsl #2
	str r6, [r0, r4, lsl #2]
	add r4, r4, #4
	ldr r6, [r3, #4]
	cmp r2, r4
	str r6, [r5, #4]
	ldr r6, [r3, #8]
	str r6, [r5, #8]
	ldr r3, [r3, #12]
	str r3, [r5, #12]
	bgt label24
	b label22
label13:
	add r5, r3, #4
	ldr r7, [sp, #0]
	cmp r7, r5
	bgt label17
	b label14
.globl main
main:
.p2align 4
	push { r4, r5, lr }
	movw r4, #:lower16:buf
	sub sp, sp, #4
	movt r4, #:upper16:buf
	mov r0, r4
	bl getarray
	mov r5, r0
	mov r1, r0
	mov r0, #0
	bl merge_sort
	mov r0, r5
	mov r1, r4
	bl putarray
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, pc }
