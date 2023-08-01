.arch armv7ve
.data
.bss
.align 8
buf:
	.zero	800
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
merge_sort:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r7, r1
	mov r8, r0
	sub sp, sp, #28
	str r0, [sp, #0]
	add r0, r0, #1
	str r1, [sp, #16]
	cmp r1, r0
	ble label2
	movw r3, #:lower16:buf
	ldr r8, [sp, #0]
	str r3, [sp, #8]
	movt r3, #:upper16:buf
	sub r2, r1, #4
	str r3, [sp, #8]
	add r1, r8, r1
	add r5, r8, #4
	add r3, r3, #400
	add r1, r1, r1, lsr #31
	str r3, [sp, #12]
	asr r4, r1, #1
	str r2, [sp, #4]
	cmp r0, r4
	sub r6, r4, #4
	bge label4
	add r0, r8, r4
	add r0, r0, r0, lsr #31
	asr r7, r0, #1
	mov r0, r8
	mov r1, r7
	bl merge_sort
	mov r0, r7
	mov r1, r4
	bl merge_sort
	mov r0, r7
	mov r1, r8
	sub r2, r7, #4
	cmp r7, r8
	mov r3, #0
	mov r9, #0
	movwgt r3, #1
	cmp r4, r7
	movwgt r9, #1
	ands r3, r3, r9
	beq label74
.p2align 4
label71:
	ldr r3, [sp, #8]
	add r9, r1, #1
	ldr r10, [r3, r8, lsl #2]
	ldr r11, [r3, r0, lsl #2]
	cmp r10, r11
	blt label73
	ldr r3, [sp, #12]
	add r0, r0, #1
	str r11, [r3, r1, lsl #2]
	mov r1, r9
	cmp r7, r8
	mov r3, #0
	mov r9, #0
	movwgt r3, #1
	cmp r4, r0
	movwgt r9, #1
	ands r3, r3, r9
	bne label71
	b label74
.p2align 4
label73:
	ldr r3, [sp, #12]
	add r8, r8, #1
	str r10, [r3, r1, lsl #2]
	mov r1, r9
	cmp r7, r8
	mov r3, #0
	mov r9, #0
	movwgt r3, #1
	cmp r4, r0
	movwgt r9, #1
	ands r3, r3, r9
	bne label71
label74:
	cmp r7, r8
	ble label82
	add r3, r8, #4
	cmp r7, r3
	ble label79
label76:
	ldr r3, [sp, #8]
	add r9, r3, r8, lsl #2
	add r8, r8, #4
	ldr r10, [r9, #0]
	cmp r2, r8
	ldr r3, [sp, #12]
	add r3, r3, r1, lsl #2
	add r1, r1, #4
	str r10, [r3, #0]
	ldr r10, [r9, #4]
	str r10, [r3, #4]
	ldr r10, [r9, #8]
	str r10, [r3, #8]
	ldr r9, [r9, #12]
	str r9, [r3, #12]
	bgt label76
label79:
	ldr r3, [sp, #8]
	ldr r2, [r3, r8, lsl #2]
	add r8, r8, #1
	ldr r3, [sp, #12]
	cmp r7, r8
	str r2, [r3, r1, lsl #2]
	add r1, r1, #1
	bgt label79
label82:
	cmp r4, r0
	bgt label90
label84:
	ldr r8, [sp, #0]
	cmp r8, r4
	blt label85
	b label4
label90:
	add r2, r0, #4
	cmp r4, r2
	ble label94
label91:
	ldr r3, [sp, #8]
	add r2, r3, r0, lsl #2
	add r0, r0, #4
	ldr r7, [r2, #0]
	cmp r6, r0
	ldr r3, [sp, #12]
	add r3, r3, r1, lsl #2
	add r1, r1, #4
	str r7, [r3, #0]
	ldr r7, [r2, #4]
	str r7, [r3, #4]
	ldr r7, [r2, #8]
	str r7, [r3, #8]
	ldr r2, [r2, #12]
	str r2, [r3, #12]
	bgt label91
label94:
	ldr r3, [sp, #8]
	ldr r2, [r3, r0, lsl #2]
	add r0, r0, #1
	ldr r3, [sp, #12]
	cmp r4, r0
	str r2, [r3, r1, lsl #2]
	add r1, r1, #1
	bgt label94
	b label84
label4:
	add r0, r4, #1
	ldr r7, [sp, #16]
	cmp r7, r0
	bgt label35
label119:
	ldr r8, [sp, #0]
	mov r0, r4
	mov r1, r8
	mov r2, r8
	cmp r4, r8
	mov r3, #0
	ldr r7, [sp, #16]
	movwgt r3, #1
	cmp r7, r4
	mov r7, #0
	movwgt r7, #1
	ands r3, r3, r7
	bne label9
	b label12
label85:
	cmp r4, r5
	ble label474
	ldr r8, [sp, #0]
	b label88
label86:
	ldr r3, [sp, #12]
	ldr r0, [r3, r8, lsl #2]
	ldr r3, [sp, #8]
	str r0, [r3, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	bgt label86
	b label4
label88:
	ldr r3, [sp, #12]
	add r0, r3, r8, lsl #2
	ldr r2, [r0, #0]
	ldr r3, [sp, #8]
	add r1, r3, r8, lsl #2
	add r8, r8, #4
	str r2, [r1, #0]
	cmp r6, r8
	ldr r2, [r0, #4]
	str r2, [r1, #4]
	ldr r2, [r0, #8]
	str r2, [r1, #8]
	ldr r0, [r0, #12]
	str r0, [r1, #12]
	bgt label88
	b label86
.p2align 4
label9:
	ldr r3, [sp, #8]
	add r7, r2, #1
	ldr r8, [r3, r1, lsl #2]
	ldr r9, [r3, r0, lsl #2]
	cmp r8, r9
	blt label10
	ldr r3, [sp, #12]
	add r0, r0, #1
	str r9, [r3, r2, lsl #2]
	mov r2, r7
	cmp r4, r1
	mov r3, #0
	ldr r7, [sp, #16]
	movwgt r3, #1
	cmp r7, r0
	mov r7, #0
	movwgt r7, #1
	ands r3, r3, r7
	bne label9
	b label12
.p2align 4
label10:
	ldr r3, [sp, #12]
	add r1, r1, #1
	str r8, [r3, r2, lsl #2]
	mov r2, r7
	cmp r4, r1
	mov r3, #0
	ldr r7, [sp, #16]
	movwgt r3, #1
	cmp r7, r0
	mov r7, #0
	movwgt r7, #1
	ands r3, r3, r7
	bne label9
label12:
	cmp r4, r1
	bgt label28
label144:
	mov r1, r2
	ldr r7, [sp, #16]
	cmp r7, r0
	bgt label21
	b label15
label28:
	add r3, r1, #4
	cmp r4, r3
	ble label32
.p2align 4
label29:
	ldr r3, [sp, #8]
	add r7, r3, r1, lsl #2
	add r1, r1, #4
	ldr r8, [r7, #0]
	cmp r6, r1
	ldr r3, [sp, #12]
	add r3, r3, r2, lsl #2
	add r2, r2, #4
	str r8, [r3, #0]
	ldr r8, [r7, #4]
	str r8, [r3, #4]
	ldr r8, [r7, #8]
	str r8, [r3, #8]
	ldr r7, [r7, #12]
	str r7, [r3, #12]
	bgt label29
label32:
	ldr r3, [sp, #8]
	ldr r6, [r3, r1, lsl #2]
	add r1, r1, #1
	ldr r3, [sp, #12]
	cmp r4, r1
	str r6, [r3, r2, lsl #2]
	add r2, r2, #1
	bgt label32
	b label144
label15:
	ldr r7, [sp, #16]
	ldr r8, [sp, #0]
	cmp r8, r7
	bge label2
	cmp r7, r5
	bgt label156
	b label155
label21:
	add r2, r0, #4
	ldr r7, [sp, #16]
	cmp r7, r2
	ble label25
.p2align 4
label22:
	ldr r3, [sp, #8]
	add r2, r3, r0, lsl #2
	add r0, r0, #4
	ldr r4, [r2, #0]
	ldr r3, [sp, #12]
	add r3, r3, r1, lsl #2
	add r1, r1, #4
	str r4, [r3, #0]
	ldr r4, [r2, #4]
	str r4, [r3, #4]
	ldr r4, [r2, #8]
	str r4, [r3, #8]
	ldr r2, [r2, #12]
	str r2, [r3, #12]
	ldr r2, [sp, #4]
	cmp r2, r0
	bgt label22
label25:
	ldr r3, [sp, #8]
	ldr r2, [r3, r0, lsl #2]
	add r0, r0, #1
	ldr r3, [sp, #12]
	str r2, [r3, r1, lsl #2]
	ldr r7, [sp, #16]
	add r1, r1, #1
	cmp r7, r0
	bgt label25
	b label15
label2:
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label156:
	ldr r8, [sp, #0]
	b label19
label17:
	ldr r3, [sp, #12]
	ldr r0, [r3, r8, lsl #2]
	ldr r3, [sp, #8]
	str r0, [r3, r8, lsl #2]
	ldr r7, [sp, #16]
	add r8, r8, #1
	cmp r7, r8
	bgt label17
	b label2
.p2align 4
label19:
	ldr r3, [sp, #12]
	add r0, r3, r8, lsl #2
	ldr r2, [r0, #0]
	ldr r3, [sp, #8]
	add r1, r3, r8, lsl #2
	add r8, r8, #4
	str r2, [r1, #0]
	ldr r2, [r0, #4]
	str r2, [r1, #4]
	ldr r2, [r0, #8]
	str r2, [r1, #8]
	ldr r0, [r0, #12]
	str r0, [r1, #12]
	ldr r2, [sp, #4]
	cmp r2, r8
	bgt label19
	b label17
label35:
	ldr r7, [sp, #16]
	add r0, r7, r4
	add r0, r0, r0, lsr #31
	asr r8, r0, #1
	mov r0, r4
	mov r1, r8
	bl merge_sort
	mov r0, r8
	mov r1, r7
	bl merge_sort
	mov r2, r4
	mov r0, r8
	mov r1, r4
	sub r9, r8, #4
	cmp r8, r4
	mov r3, #0
	ldr r7, [sp, #16]
	movwgt r3, #1
	cmp r7, r8
	mov r7, #0
	movwgt r7, #1
	ands r3, r3, r7
	beq label43
.p2align 4
label40:
	ldr r3, [sp, #8]
	add r7, r1, #1
	ldr r10, [r3, r2, lsl #2]
	ldr r11, [r3, r0, lsl #2]
	cmp r10, r11
	blt label41
	ldr r3, [sp, #12]
	add r0, r0, #1
	str r11, [r3, r1, lsl #2]
	mov r1, r7
	cmp r8, r2
	mov r3, #0
	ldr r7, [sp, #16]
	movwgt r3, #1
	cmp r7, r0
	mov r7, #0
	movwgt r7, #1
	ands r3, r3, r7
	bne label40
	b label43
.p2align 4
label41:
	ldr r3, [sp, #12]
	add r2, r2, #1
	str r10, [r3, r1, lsl #2]
	mov r1, r7
	cmp r8, r2
	mov r3, #0
	ldr r7, [sp, #16]
	movwgt r3, #1
	cmp r7, r0
	mov r7, #0
	movwgt r7, #1
	ands r3, r3, r7
	bne label40
label43:
	cmp r8, r2
	bgt label59
label44:
	ldr r7, [sp, #16]
	cmp r7, r0
	bgt label52
	b label46
label59:
	add r3, r2, #4
	cmp r8, r3
	bgt label63
label60:
	ldr r3, [sp, #8]
	ldr r7, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r3, [sp, #12]
	cmp r8, r2
	str r7, [r3, r1, lsl #2]
	add r1, r1, #1
	bgt label60
	b label44
label63:
	ldr r3, [sp, #8]
	add r7, r3, r2, lsl #2
	add r2, r2, #4
	ldr r10, [r7, #0]
	cmp r9, r2
	ldr r3, [sp, #12]
	add r3, r3, r1, lsl #2
	add r1, r1, #4
	str r10, [r3, #0]
	ldr r10, [r7, #4]
	str r10, [r3, #4]
	ldr r10, [r7, #8]
	str r10, [r3, #8]
	ldr r7, [r7, #12]
	str r7, [r3, #12]
	bgt label63
	b label60
label46:
	ldr r7, [sp, #16]
	cmp r7, r4
	ble label119
	add r0, r4, #4
	cmp r7, r0
	bgt label298
	b label297
label52:
	add r2, r0, #4
	ldr r7, [sp, #16]
	cmp r7, r2
	ble label56
label53:
	ldr r3, [sp, #8]
	add r2, r3, r0, lsl #2
	add r0, r0, #4
	ldr r7, [r2, #0]
	ldr r3, [sp, #12]
	add r3, r3, r1, lsl #2
	add r1, r1, #4
	str r7, [r3, #0]
	ldr r7, [r2, #4]
	str r7, [r3, #4]
	ldr r7, [r2, #8]
	str r7, [r3, #8]
	ldr r2, [r2, #12]
	str r2, [r3, #12]
	ldr r2, [sp, #4]
	cmp r2, r0
	bgt label53
label56:
	ldr r3, [sp, #8]
	ldr r2, [r3, r0, lsl #2]
	add r0, r0, #1
	ldr r3, [sp, #12]
	str r2, [r3, r1, lsl #2]
	ldr r7, [sp, #16]
	add r1, r1, #1
	cmp r7, r0
	bgt label56
	b label46
label298:
	mov r0, r4
label48:
	ldr r3, [sp, #12]
	add r1, r3, r0, lsl #2
	ldr r7, [r1, #0]
	ldr r3, [sp, #8]
	add r2, r3, r0, lsl #2
	add r0, r0, #4
	str r7, [r2, #0]
	ldr r3, [r1, #4]
	str r3, [r2, #4]
	ldr r3, [r1, #8]
	str r3, [r2, #8]
	ldr r1, [r1, #12]
	str r1, [r2, #12]
	ldr r2, [sp, #4]
	cmp r2, r0
	bgt label48
label50:
	ldr r3, [sp, #12]
	ldr r1, [r3, r0, lsl #2]
	ldr r3, [sp, #8]
	str r1, [r3, r0, lsl #2]
	ldr r7, [sp, #16]
	add r0, r0, #1
	cmp r7, r0
	bgt label50
	b label119
label155:
	ldr r8, [sp, #0]
	b label17
label297:
	mov r0, r4
	b label50
label474:
	ldr r8, [sp, #0]
	b label86
.p2align 4
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
