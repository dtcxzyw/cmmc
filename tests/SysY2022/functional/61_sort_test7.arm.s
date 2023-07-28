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
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	mov r5, r1
	mov r4, r0
	add r0, r0, #1
	cmp r1, r0
	ble label2
	add r0, r4, r1
	add r0, r0, r0, lsr #31
	asr r6, r0, #1
	mov r0, r4
	mov r1, r6
	bl merge_sort
	mov r0, r6
	mov r1, r5
	bl merge_sort
	mov r2, r6
	mov r3, r4
	mov r7, r4
	movw r0, #:lower16:buf
	movt r0, #:upper16:buf
	add r1, r0, #400
	cmp r6, r4
	mov r8, #0
	mov r9, #0
	movwgt r8, #1
	cmp r5, r6
	movwgt r9, #1
	ands r8, r8, r9
	bne label8
	cmp r6, r4
	bgt label12
	b label19
.p2align 4
label8:
	ldr r8, [r0, r7, lsl #2]
	ldr r9, [r0, r2, lsl #2]
	cmp r8, r9
	blt label10
	str r9, [r1, r3, lsl #2]
	add r2, r2, #1
	add r3, r3, #1
	cmp r6, r7
	mov r8, #0
	mov r9, #0
	movwgt r8, #1
	cmp r5, r2
	movwgt r9, #1
	ands r8, r8, r9
	bne label8
	cmp r6, r7
	bgt label12
	b label19
.p2align 4
label10:
	str r8, [r1, r3, lsl #2]
	add r7, r7, #1
	add r3, r3, #1
	cmp r6, r7
	mov r8, #0
	mov r9, #0
	movwgt r8, #1
	cmp r5, r2
	movwgt r9, #1
	ands r8, r8, r9
	bne label8
	cmp r6, r7
	ble label19
label12:
	add r8, r7, #4
	cmp r6, r8
	bgt label13
label16:
	ldr r8, [r0, r7, lsl #2]
	add r7, r7, #1
	cmp r6, r7
	str r8, [r1, r3, lsl #2]
	add r3, r3, #1
	bgt label16
label19:
	cmp r5, r2
	bgt label27
	b label21
label2:
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label23:
	ldr r2, [r1, r4, lsl #2]
	str r2, [r0, r4, lsl #2]
	add r4, r4, #1
	cmp r5, r4
	bgt label23
	b label2
label25:
	add r2, r1, r4, lsl #2
	ldr r6, [r1, r4, lsl #2]
	add r3, r0, r4, lsl #2
	str r6, [r0, r4, lsl #2]
	ldr r6, [r2, #4]
	str r6, [r3, #4]
	ldr r6, [r2, #8]
	str r6, [r3, #8]
	ldr r2, [r2, #12]
	str r2, [r3, #12]
	add r2, r4, #8
	cmp r5, r2
	add r4, r4, #4
	bgt label25
	b label23
label21:
	cmp r4, r5
	blt label22
	b label2
label28:
	add r6, r0, r2, lsl #2
	ldr r8, [r0, r2, lsl #2]
	add r7, r1, r3, lsl #2
	str r8, [r1, r3, lsl #2]
	add r3, r3, #4
	ldr r8, [r6, #4]
	str r8, [r7, #4]
	ldr r8, [r6, #8]
	str r8, [r7, #8]
	ldr r6, [r6, #12]
	str r6, [r7, #12]
	add r6, r2, #8
	cmp r5, r6
	add r2, r2, #4
	bgt label28
label31:
	ldr r6, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	str r6, [r1, r3, lsl #2]
	add r3, r3, #1
	bgt label31
	b label21
label13:
	add r8, r0, r7, lsl #2
	ldr r10, [r0, r7, lsl #2]
	add r9, r1, r3, lsl #2
	str r10, [r1, r3, lsl #2]
	add r3, r3, #4
	ldr r10, [r8, #4]
	str r10, [r9, #4]
	ldr r10, [r8, #8]
	str r10, [r9, #8]
	ldr r8, [r8, #12]
	str r8, [r9, #12]
	add r8, r7, #8
	cmp r6, r8
	add r7, r7, #4
	bgt label13
	b label16
label22:
	add r2, r4, #4
	cmp r5, r2
	bgt label25
	b label23
label27:
	add r6, r2, #4
	cmp r5, r6
	bgt label28
	b label31
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
