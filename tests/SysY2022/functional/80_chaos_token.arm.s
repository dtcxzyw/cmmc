.arch armv7ve
.data
.section .rodata
.align 8
__HELLO:
	.4byte	87
	.4byte	101
	.4byte	108
	.4byte	99
	.4byte	111
	.4byte	109
	.4byte	101
	.4byte	32
	.4byte	116
	.4byte	111
	.4byte	32
	.4byte	116
	.4byte	104
	.4byte	101
	.4byte	32
	.4byte	74
	.4byte	97
	.4byte	112
	.4byte	97
	.4byte	114
	.4byte	105
	.4byte	32
	.4byte	80
	.4byte	97
	.4byte	114
	.4byte	107
	.4byte	33
	.4byte	10
	.zero	288
.align 8
N4__mE___:
	.4byte	83
	.4byte	97
	.4byte	97
	.4byte	98
	.4byte	97
	.4byte	114
	.4byte	117
	.zero	172
	.4byte	75
	.4byte	97
	.4byte	98
	.4byte	97
	.4byte	110
	.zero	180
	.4byte	72
	.4byte	97
	.4byte	115
	.4byte	104
	.4byte	105
	.4byte	98
	.4byte	105
	.4byte	114
	.4byte	111
	.4byte	107
	.4byte	111
	.4byte	117
	.zero	152
	.4byte	65
	.4byte	114
	.4byte	97
	.4byte	105
	.4byte	103
	.4byte	117
	.4byte	109
	.4byte	97
	.zero	168
	.4byte	72
	.4byte	117
	.4byte	110
	.4byte	98
	.4byte	111
	.4byte	114
	.4byte	117
	.4byte	116
	.4byte	111
	.4byte	32
	.4byte	80
	.4byte	101
	.4byte	110
	.4byte	103
	.4byte	105
	.4byte	110
	.zero	136
	.4byte	84
	.4byte	97
	.4byte	105
	.4byte	114
	.4byte	105
	.4byte	107
	.4byte	117
	.4byte	32
	.4byte	79
	.4byte	111
	.4byte	107
	.4byte	97
	.4byte	109
	.4byte	105
	.zero	144
.align 8
saY_HeI10_To:
	.4byte	32
	.4byte	115
	.4byte	97
	.4byte	121
	.4byte	115
	.4byte	32
	.4byte	104
	.4byte	101
	.4byte	108
	.4byte	108
	.4byte	111
	.4byte	32
	.4byte	116
	.4byte	111
	.4byte	32
	.zero	100
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	movw r6, #:lower16:__HELLO
	movt r6, #:upper16:__HELLO
	mov r0, #10
	mov r4, #0
	sub sp, sp, #28
	str r0, [sp, #0]
	mov r5, sp
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #12]
	str r4, [sp, #16]
	ldr r0, [r6, #0]
	cmp r0, #0
	bne label31
label30:
	mov r6, r4
	b label2
label31:
	mov r7, r4
.p2align 4
label18:
	add r8, r6, r7, lsl #2
	ldr r0, [r8, #0]
	bl putch
	add r7, r7, #1
	ldr r0, [r8, #4]
	cmp r0, #0
	bne label18
	b label30
label2:
	mov r0, #6
	sdiv r0, r6, r0
	add r1, r0, r0, lsl #1
	sub r7, r6, r1, lsl #1
	cmp r0, r7
	bne label4
label16:
	add r0, r6, r6, lsl #4
	add r0, r0, #23
	asr r1, r0, #31
	add r1, r0, r1, lsr #27
	asr r1, r1, #5
	sub r6, r0, r1, lsl #5
	cmp r6, #0
	beq label17
	b label2
label4:
	movw r8, #:lower16:N4__mE___
	movt r8, #:upper16:N4__mE___
	mov r1, #200
	mla r9, r0, r1, r8
	ldr r0, [r9, #0]
	cmp r0, #0
	beq label7
	mov r10, r4
.p2align 4
label5:
	add r11, r9, r10, lsl #2
	ldr r0, [r11, #0]
	bl putch
	add r10, r10, #1
	ldr r0, [r11, #4]
	cmp r0, #0
	bne label5
label7:
	movw r9, #:lower16:saY_HeI10_To
	movt r9, #:upper16:saY_HeI10_To
	ldr r0, [r9, #0]
	cmp r0, #0
	beq label8
	mov r10, r4
	b label14
label8:
	mov r0, #200
	mla r7, r7, r0, r8
	ldr r0, [r7, #0]
	cmp r0, #0
	bne label70
	b label9
.p2align 4
label14:
	add r11, r9, r10, lsl #2
	ldr r0, [r11, #0]
	bl putch
	add r10, r10, #1
	ldr r0, [r11, #4]
	cmp r0, #0
	bne label14
	b label8
label70:
	mov r8, r4
	b label12
label9:
	ldr r0, [sp, #0]
	cmp r0, #0
	bne label75
	b label16
.p2align 4
label12:
	add r9, r7, r8, lsl #2
	ldr r0, [r9, #0]
	bl putch
	add r8, r8, #1
	ldr r0, [r9, #4]
	cmp r0, #0
	bne label12
	b label9
label75:
	mov r7, r4
.p2align 4
label10:
	add r8, r5, r7, lsl #2
	ldr r0, [r8, #0]
	bl putch
	add r7, r7, #1
	ldr r0, [r8, #4]
	cmp r0, #0
	bne label10
	b label16
label17:
	mov r0, r4
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
