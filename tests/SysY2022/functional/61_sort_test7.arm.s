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
merge_sort:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r7, r1
	mov r8, r0
	sub sp, sp, #28
	str r0, [sp, #0]
	add r0, r0, #1
	str r1, [sp, #16]
	cmp r1, r0
	ble label96
	movw r3, #:lower16:buf
	ldr r8, [sp, #0]
	movt r3, #:upper16:buf
	str r3, [sp, #8]
	add r3, r3, #400
	sub r2, r1, #8
	str r3, [sp, #12]
	add r4, r8, #8
	add r1, r8, r1
	str r2, [sp, #4]
	add r1, r1, r1, lsr #31
	asr r5, r1, #1
	cmp r0, r5
	sub r6, r5, #8
	blt label65
label3:
	add r0, r5, #1
	ldr r7, [sp, #16]
	cmp r7, r0
	ble label119
	add r0, r7, r5
	add r0, r0, r0, lsr #31
	asr r8, r0, #1
	mov r0, r5
	mov r1, r8
	bl merge_sort
	mov r0, r8
	mov r1, r7
	bl merge_sort
	mov r2, r5
	mov r0, r8
	mov r9, r5
	sub r1, r8, #8
	cmp r8, r5
	mov r3, #0
	ldr r7, [sp, #16]
	movwgt r3, #1
	cmp r7, r8
	mov r7, #0
	movwgt r7, #1
	ands r3, r3, r7
	bne label39
	b label42
.p2align 4
label8:
	ldr r3, [sp, #8]
	add r7, r2, #1
	ldr r8, [r3, r1, lsl #2]
	ldr r9, [r3, r0, lsl #2]
	cmp r8, r9
	blt label9
	ldr r3, [sp, #12]
	add r0, r0, #1
	str r9, [r3, r2, lsl #2]
	mov r2, r7
	cmp r5, r1
	mov r3, #0
	ldr r7, [sp, #16]
	movwgt r3, #1
	cmp r7, r0
	mov r7, #0
	movwgt r7, #1
	ands r3, r3, r7
	bne label8
	b label11
.p2align 4
label9:
	ldr r3, [sp, #12]
	add r1, r1, #1
	str r8, [r3, r2, lsl #2]
	mov r2, r7
	cmp r5, r1
	mov r3, #0
	ldr r7, [sp, #16]
	movwgt r3, #1
	cmp r7, r0
	mov r7, #0
	movwgt r7, #1
	ands r3, r3, r7
	bne label8
label11:
	cmp r5, r1
	bgt label12
label144:
	mov r1, r2
	b label19
label12:
	add r3, r1, #8
	cmp r5, r3
	bgt label16
label13:
	ldr r3, [sp, #8]
	ldr r6, [r3, r1, lsl #2]
	add r1, r1, #1
	ldr r3, [sp, #12]
	cmp r5, r1
	str r6, [r3, r2, lsl #2]
	add r2, r2, #1
	bgt label13
	b label144
label16:
	ldr r3, [sp, #8]
	add r7, r3, r1, lsl #2
	add r1, r1, #8
	ldr r8, [r7, #0]
	cmp r6, r1
	ldr r3, [sp, #12]
	add r3, r3, r2, lsl #2
	add r2, r2, #8
	str r8, [r3, #0]
	ldr r8, [r7, #4]
	str r8, [r3, #4]
	ldr r8, [r7, #8]
	str r8, [r3, #8]
	ldr r8, [r7, #12]
	str r8, [r3, #12]
	ldr r8, [r7, #16]
	str r8, [r3, #16]
	ldr r8, [r7, #20]
	str r8, [r3, #20]
	ldr r8, [r7, #24]
	str r8, [r3, #24]
	ldr r7, [r7, #28]
	str r7, [r3, #28]
	bgt label16
	b label13
label19:
	ldr r7, [sp, #16]
	cmp r7, r0
	ble label28
	add r2, r0, #8
	cmp r7, r2
	ble label25
label22:
	ldr r3, [sp, #8]
	add r2, r3, r0, lsl #2
	add r0, r0, #8
	ldr r5, [r2, #0]
	ldr r3, [sp, #12]
	add r3, r3, r1, lsl #2
	add r1, r1, #8
	str r5, [r3, #0]
	ldr r5, [r2, #4]
	str r5, [r3, #4]
	ldr r5, [r2, #8]
	str r5, [r3, #8]
	ldr r5, [r2, #12]
	str r5, [r3, #12]
	ldr r5, [r2, #16]
	str r5, [r3, #16]
	ldr r5, [r2, #20]
	str r5, [r3, #20]
	ldr r5, [r2, #24]
	str r5, [r3, #24]
	ldr r2, [r2, #28]
	str r2, [r3, #28]
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
label28:
	ldr r7, [sp, #16]
	ldr r8, [sp, #0]
	cmp r8, r7
	bge label96
	cmp r7, r4
	ble label251
label30:
	ldr r3, [sp, #12]
	add r0, r3, r8, lsl #2
	ldr r2, [r0, #0]
	ldr r3, [sp, #8]
	add r1, r3, r8, lsl #2
	add r8, r8, #8
	str r2, [r1, #0]
	ldr r2, [r0, #4]
	str r2, [r1, #4]
	ldr r2, [r0, #8]
	str r2, [r1, #8]
	ldr r2, [r0, #12]
	str r2, [r1, #12]
	ldr r2, [r0, #16]
	str r2, [r1, #16]
	ldr r2, [r0, #20]
	str r2, [r1, #20]
	ldr r2, [r0, #24]
	str r2, [r1, #24]
	ldr r0, [r0, #28]
	str r0, [r1, #28]
	ldr r2, [sp, #4]
	cmp r2, r8
	bgt label30
label32:
	ldr r3, [sp, #12]
	ldr r0, [r3, r8, lsl #2]
	ldr r3, [sp, #8]
	str r0, [r3, r8, lsl #2]
	ldr r7, [sp, #16]
	add r8, r8, #1
	cmp r7, r8
	bgt label32
label96:
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label39:
	ldr r3, [sp, #8]
	add r7, r9, #1
	ldr r10, [r3, r2, lsl #2]
	ldr r11, [r3, r0, lsl #2]
	cmp r10, r11
	blt label40
	ldr r3, [sp, #12]
	add r0, r0, #1
	str r11, [r3, r9, lsl #2]
	mov r9, r7
	cmp r8, r2
	mov r3, #0
	ldr r7, [sp, #16]
	movwgt r3, #1
	cmp r7, r0
	mov r7, #0
	movwgt r7, #1
	ands r3, r3, r7
	bne label39
	b label42
.p2align 4
label40:
	ldr r3, [sp, #12]
	add r2, r2, #1
	str r10, [r3, r9, lsl #2]
	mov r9, r7
	cmp r8, r2
	mov r3, #0
	ldr r7, [sp, #16]
	movwgt r3, #1
	cmp r7, r0
	mov r7, #0
	movwgt r7, #1
	ands r3, r3, r7
	bne label39
label42:
	cmp r8, r2
	bgt label58
label321:
	mov r1, r9
	ldr r7, [sp, #16]
	cmp r7, r0
	bgt label51
	b label45
label58:
	add r3, r2, #8
	cmp r8, r3
	bgt label62
label59:
	ldr r3, [sp, #8]
	ldr r1, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r3, [sp, #12]
	cmp r8, r2
	str r1, [r3, r9, lsl #2]
	add r9, r9, #1
	bgt label59
	b label321
label62:
	ldr r3, [sp, #8]
	add r7, r3, r2, lsl #2
	add r2, r2, #8
	ldr r10, [r7, #0]
	cmp r1, r2
	ldr r3, [sp, #12]
	add r3, r3, r9, lsl #2
	add r9, r9, #8
	str r10, [r3, #0]
	ldr r10, [r7, #4]
	str r10, [r3, #4]
	ldr r10, [r7, #8]
	str r10, [r3, #8]
	ldr r10, [r7, #12]
	str r10, [r3, #12]
	ldr r10, [r7, #16]
	str r10, [r3, #16]
	ldr r10, [r7, #20]
	str r10, [r3, #20]
	ldr r10, [r7, #24]
	str r10, [r3, #24]
	ldr r7, [r7, #28]
	str r7, [r3, #28]
	bgt label62
	b label59
label119:
	ldr r8, [sp, #0]
	mov r0, r5
	mov r1, r8
	mov r2, r8
	cmp r5, r8
	mov r3, #0
	ldr r7, [sp, #16]
	movwgt r3, #1
	cmp r7, r5
	mov r7, #0
	movwgt r7, #1
	ands r3, r3, r7
	bne label8
	b label11
label46:
	add r0, r5, #8
	ldr r7, [sp, #16]
	cmp r7, r0
	ble label333
	mov r0, r5
	b label49
label47:
	ldr r3, [sp, #12]
	ldr r1, [r3, r0, lsl #2]
	ldr r3, [sp, #8]
	str r1, [r3, r0, lsl #2]
	ldr r7, [sp, #16]
	add r0, r0, #1
	cmp r7, r0
	bgt label47
	b label119
label49:
	ldr r3, [sp, #12]
	add r1, r3, r0, lsl #2
	ldr r7, [r1, #0]
	ldr r3, [sp, #8]
	add r2, r3, r0, lsl #2
	add r0, r0, #8
	str r7, [r2, #0]
	ldr r3, [r1, #4]
	str r3, [r2, #4]
	ldr r3, [r1, #8]
	str r3, [r2, #8]
	ldr r3, [r1, #12]
	str r3, [r2, #12]
	ldr r3, [r1, #16]
	str r3, [r2, #16]
	ldr r3, [r1, #20]
	str r3, [r2, #20]
	ldr r3, [r1, #24]
	str r3, [r2, #24]
	ldr r1, [r1, #28]
	str r1, [r2, #28]
	ldr r2, [sp, #4]
	cmp r2, r0
	bgt label49
	b label47
label65:
	ldr r8, [sp, #0]
	add r0, r8, r5
	add r0, r0, r0, lsr #31
	asr r7, r0, #1
	mov r0, r8
	mov r1, r7
	bl merge_sort
	mov r0, r7
	mov r1, r5
	bl merge_sort
	mov r0, r7
	mov r2, r8
	sub r1, r7, #8
	cmp r7, r8
	mov r3, #0
	mov r9, #0
	movwgt r3, #1
	cmp r5, r7
	movwgt r9, #1
	ands r3, r3, r9
	beq label73
.p2align 4
label70:
	ldr r3, [sp, #8]
	add r9, r2, #1
	ldr r10, [r3, r8, lsl #2]
	ldr r11, [r3, r0, lsl #2]
	cmp r10, r11
	blt label72
	ldr r3, [sp, #12]
	add r0, r0, #1
	str r11, [r3, r2, lsl #2]
	mov r2, r9
	cmp r7, r8
	mov r3, #0
	mov r9, #0
	movwgt r3, #1
	cmp r5, r0
	movwgt r9, #1
	ands r3, r3, r9
	bne label70
	b label73
.p2align 4
label72:
	ldr r3, [sp, #12]
	add r8, r8, #1
	str r10, [r3, r2, lsl #2]
	mov r2, r9
	cmp r7, r8
	mov r3, #0
	mov r9, #0
	movwgt r3, #1
	cmp r5, r0
	movwgt r9, #1
	ands r3, r3, r9
	bne label70
label73:
	cmp r7, r8
	bgt label89
label499:
	mov r1, r2
	cmp r5, r0
	bgt label76
	b label83
label89:
	add r3, r8, #8
	cmp r7, r3
	ble label93
label90:
	ldr r3, [sp, #8]
	add r9, r3, r8, lsl #2
	add r8, r8, #8
	ldr r10, [r9, #0]
	cmp r1, r8
	ldr r3, [sp, #12]
	add r3, r3, r2, lsl #2
	add r2, r2, #8
	str r10, [r3, #0]
	ldr r10, [r9, #4]
	str r10, [r3, #4]
	ldr r10, [r9, #8]
	str r10, [r3, #8]
	ldr r10, [r9, #12]
	str r10, [r3, #12]
	ldr r10, [r9, #16]
	str r10, [r3, #16]
	ldr r10, [r9, #20]
	str r10, [r3, #20]
	ldr r10, [r9, #24]
	str r10, [r3, #24]
	ldr r9, [r9, #28]
	str r9, [r3, #28]
	bgt label90
label93:
	ldr r3, [sp, #8]
	ldr r1, [r3, r8, lsl #2]
	add r8, r8, #1
	ldr r3, [sp, #12]
	cmp r7, r8
	str r1, [r3, r2, lsl #2]
	add r2, r2, #1
	bgt label93
	b label499
label76:
	add r2, r0, #8
	cmp r5, r2
	ble label80
label77:
	ldr r3, [sp, #8]
	add r2, r3, r0, lsl #2
	add r0, r0, #8
	ldr r7, [r2, #0]
	cmp r6, r0
	ldr r3, [sp, #12]
	add r3, r3, r1, lsl #2
	add r1, r1, #8
	str r7, [r3, #0]
	ldr r7, [r2, #4]
	str r7, [r3, #4]
	ldr r7, [r2, #8]
	str r7, [r3, #8]
	ldr r7, [r2, #12]
	str r7, [r3, #12]
	ldr r7, [r2, #16]
	str r7, [r3, #16]
	ldr r7, [r2, #20]
	str r7, [r3, #20]
	ldr r7, [r2, #24]
	str r7, [r3, #24]
	ldr r2, [r2, #28]
	str r2, [r3, #28]
	bgt label77
label80:
	ldr r3, [sp, #8]
	ldr r2, [r3, r0, lsl #2]
	add r0, r0, #1
	ldr r3, [sp, #12]
	cmp r5, r0
	str r2, [r3, r1, lsl #2]
	add r1, r1, #1
	bgt label80
label83:
	ldr r8, [sp, #0]
	cmp r8, r5
	bge label3
	cmp r5, r4
	ble label558
	b label87
label85:
	ldr r3, [sp, #12]
	ldr r0, [r3, r8, lsl #2]
	ldr r3, [sp, #8]
	str r0, [r3, r8, lsl #2]
	add r8, r8, #1
	cmp r5, r8
	bgt label85
	b label3
label87:
	ldr r3, [sp, #12]
	add r0, r3, r8, lsl #2
	ldr r2, [r0, #0]
	ldr r3, [sp, #8]
	add r1, r3, r8, lsl #2
	add r8, r8, #8
	str r2, [r1, #0]
	cmp r6, r8
	ldr r2, [r0, #4]
	str r2, [r1, #4]
	ldr r2, [r0, #8]
	str r2, [r1, #8]
	ldr r2, [r0, #12]
	str r2, [r1, #12]
	ldr r2, [r0, #16]
	str r2, [r1, #16]
	ldr r2, [r0, #20]
	str r2, [r1, #20]
	ldr r2, [r0, #24]
	str r2, [r1, #24]
	ldr r0, [r0, #28]
	str r0, [r1, #28]
	bgt label87
	b label85
label45:
	ldr r7, [sp, #16]
	cmp r7, r5
	bgt label46
	b label119
label51:
	add r2, r0, #8
	ldr r7, [sp, #16]
	cmp r7, r2
	bgt label55
label52:
	ldr r3, [sp, #8]
	ldr r2, [r3, r0, lsl #2]
	add r0, r0, #1
	ldr r3, [sp, #12]
	str r2, [r3, r1, lsl #2]
	ldr r7, [sp, #16]
	add r1, r1, #1
	cmp r7, r0
	bgt label52
	b label45
label55:
	ldr r3, [sp, #8]
	add r2, r3, r0, lsl #2
	add r0, r0, #8
	ldr r7, [r2, #0]
	ldr r3, [sp, #12]
	add r3, r3, r1, lsl #2
	add r1, r1, #8
	str r7, [r3, #0]
	ldr r7, [r2, #4]
	str r7, [r3, #4]
	ldr r7, [r2, #8]
	str r7, [r3, #8]
	ldr r7, [r2, #12]
	str r7, [r3, #12]
	ldr r7, [r2, #16]
	str r7, [r3, #16]
	ldr r7, [r2, #20]
	str r7, [r3, #20]
	ldr r7, [r2, #24]
	str r7, [r3, #24]
	ldr r2, [r2, #28]
	str r2, [r3, #28]
	ldr r2, [sp, #4]
	cmp r2, r0
	bgt label55
	b label52
label251:
	ldr r8, [sp, #0]
	b label32
label558:
	ldr r8, [sp, #0]
	b label85
label333:
	mov r0, r5
	b label47
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
