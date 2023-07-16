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
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	mov r4, r1
	mov r5, r0
	add r0, r0, #1
	cmp r1, r0
	bgt label3
	b label2
label3:
	add r0, r5, r4
	add r0, r0, r0, lsr #31
	asr r6, r0, #1
	mov r0, r5
	mov r1, r6
	bl merge_sort
	mov r0, r6
	mov r1, r4
	bl merge_sort
	mov r7, r5
	mov r2, r6
	mov r3, r5
	movw r1, #:lower16:buf
	movt r1, #:upper16:buf
	mov r0, r1
	add r1, r1, #400
	cmp r6, r5
	mov r8, #0
	mov r9, #0
	movwgt r8, #1
	cmp r4, r6
	movwgt r9, #1
	ands r8, r8, r9
	beq label11
	ldr r8, [r0, r5, lsl #2]
	ldr r9, [r0, r6, lsl #2]
	cmp r8, r9
	bge label10
	b label173
label11:
	cmp r6, r7
	ble label71
	add r8, r7, #4
	cmp r6, r8
	ble label30
label33:
	add r9, r0, r7, lsl #2
	ldr r10, [r0, r7, lsl #2]
	add r7, r1, r3, lsl #2
	str r10, [r1, r3, lsl #2]
	add r3, r3, #4
	ldr r10, [r9, #4]
	str r10, [r7, #4]
	ldr r10, [r9, #8]
	str r10, [r7, #8]
	ldr r9, [r9, #12]
	str r9, [r7, #12]
	mov r7, r8
	add r8, r8, #4
	cmp r6, r8
	ble label30
	b label33
label173:
	str r8, [r1, r3, lsl #2]
	add r7, r7, #1
	add r3, r3, #1
	cmp r6, r7
	mov r8, #0
	mov r9, #0
	movwgt r8, #1
	cmp r4, r2
	movwgt r9, #1
	ands r8, r8, r9
	beq label11
	ldr r8, [r0, r7, lsl #2]
	ldr r9, [r0, r2, lsl #2]
	cmp r8, r9
	bge label10
	b label173
label10:
	str r9, [r1, r3, lsl #2]
	add r2, r2, #1
	add r3, r3, #1
	cmp r6, r7
	mov r8, #0
	mov r9, #0
	movwgt r8, #1
	cmp r4, r2
	movwgt r9, #1
	ands r8, r8, r9
	beq label11
	ldr r8, [r0, r7, lsl #2]
	ldr r9, [r0, r2, lsl #2]
	cmp r8, r9
	bge label10
	b label173
label71:
	mov r6, r3
	cmp r4, r2
	ble label21
	mov r3, r2
	mov r2, r6
	add r6, r3, #4
	cmp r4, r6
	ble label17
label20:
	add r7, r0, r3, lsl #2
	ldr r8, [r0, r3, lsl #2]
	add r3, r1, r2, lsl #2
	str r8, [r1, r2, lsl #2]
	add r2, r2, #4
	ldr r8, [r7, #4]
	str r8, [r3, #4]
	ldr r8, [r7, #8]
	str r8, [r3, #8]
	ldr r7, [r7, #12]
	str r7, [r3, #12]
	mov r3, r6
	add r6, r6, #4
	cmp r4, r6
	ble label17
	b label20
label17:
	ldr r6, [r0, r3, lsl #2]
	add r3, r3, #1
	cmp r4, r3
	str r6, [r1, r2, lsl #2]
	add r2, r2, #1
	ble label21
	b label17
label21:
	cmp r5, r4
	bge label2
	add r2, r5, #4
	cmp r4, r2
	ble label24
label26:
	add r3, r1, r5, lsl #2
	ldr r7, [r1, r5, lsl #2]
	add r6, r0, r5, lsl #2
	str r7, [r0, r5, lsl #2]
	ldr r5, [r3, #4]
	str r5, [r6, #4]
	ldr r5, [r3, #8]
	str r5, [r6, #8]
	mov r5, r2
	ldr r3, [r3, #12]
	str r3, [r6, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label24
	b label26
label30:
	ldr r8, [r0, r7, lsl #2]
	add r7, r7, #1
	cmp r6, r7
	str r8, [r1, r3, lsl #2]
	add r3, r3, #1
	ble label154
	b label30
label154:
	mov r6, r3
	cmp r4, r2
	ble label21
	mov r3, r2
	mov r2, r6
	add r6, r3, #4
	cmp r4, r6
	ble label17
	b label20
label24:
	ldr r2, [r1, r5, lsl #2]
	str r2, [r0, r5, lsl #2]
	add r5, r5, #1
	cmp r4, r5
	ble label2
	b label24
label2:
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
.globl main
main:
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
