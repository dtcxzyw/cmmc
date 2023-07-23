.arch armv7ve
.data
.section .rodata
.align 4
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
.align 4
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
.align 4
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
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	sub sp, sp, #24
	mov r0, #10
	movw r5, #:lower16:__HELLO
	mov r4, sp
	str r0, [sp, #0]
	movt r5, #:upper16:__HELLO
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4, #8]
	str r0, [r4, #12]
	str r0, [r4, #16]
	ldr r0, [r5, #0]
	cmp r0, #0
	bne label31
	mov r5, #0
	movw r0, #43691
	mov r1, #6
	movt r0, #10922
	smmul r0, r5, r0
	add r0, r0, r0, lsr #31
	mls r7, r0, r1, r5
	cmp r0, r7
	bne label6
	add r0, r5, r5, lsl #4
	add r0, r0, #23
	asr r1, r0, #31
	add r1, r0, r1, lsr #27
	asr r1, r1, #5
	sub r5, r0, r1, lsl #5
	cmp r5, #0
	beq label19
	movw r0, #43691
	mov r1, #6
	movt r0, #10922
	smmul r0, r5, r0
	add r0, r0, r0, lsr #31
	mls r7, r0, r1, r5
	cmp r0, r7
	bne label6
	add r0, r5, r5, lsl #4
	add r0, r0, #23
	asr r1, r0, #31
	add r1, r0, r1, lsr #27
	asr r1, r1, #5
	sub r5, r0, r1, lsl #5
	cmp r5, #0
	beq label19
	movw r0, #43691
	mov r1, #6
	movt r0, #10922
	smmul r0, r5, r0
	add r0, r0, r0, lsr #31
	mls r7, r0, r1, r5
	cmp r0, r7
	bne label6
	add r0, r5, r5, lsl #4
	add r0, r0, #23
	asr r1, r0, #31
	add r1, r0, r1, lsr #27
	asr r1, r1, #5
	sub r5, r0, r1, lsl #5
	cmp r5, #0
	beq label19
	movw r0, #43691
	mov r1, #6
	movt r0, #10922
	smmul r0, r5, r0
	add r0, r0, r0, lsr #31
	mls r7, r0, r1, r5
	cmp r0, r7
	bne label6
	add r0, r5, r5, lsl #4
	add r0, r0, #23
	asr r1, r0, #31
	add r1, r0, r1, lsr #27
	asr r1, r1, #5
	sub r5, r0, r1, lsl #5
	cmp r5, #0
	beq label19
	movw r0, #43691
	mov r1, #6
	movt r0, #10922
	smmul r0, r5, r0
	add r0, r0, r0, lsr #31
	mls r7, r0, r1, r5
	cmp r0, r7
	bne label6
	add r0, r5, r5, lsl #4
	add r0, r0, #23
	asr r1, r0, #31
	add r1, r0, r1, lsr #27
	asr r1, r1, #5
	sub r5, r0, r1, lsl #5
	cmp r5, #0
	beq label19
	b label243
label31:
	mov r6, #0
label2:
	add r7, r5, r6, lsl #2
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	ldr r0, [r7, #4]
	cmp r0, #0
	bne label2
	mov r5, #0
	movw r0, #43691
	mov r1, #6
	movt r0, #10922
	smmul r0, r5, r0
	add r0, r0, r0, lsr #31
	mls r7, r0, r1, r5
	cmp r0, r7
	bne label6
	add r0, r5, r5, lsl #4
	add r0, r0, #23
	asr r1, r0, #31
	add r1, r0, r1, lsr #27
	asr r1, r1, #5
	sub r5, r0, r1, lsl #5
	cmp r5, #0
	beq label19
	movw r0, #43691
	mov r1, #6
	movt r0, #10922
	smmul r0, r5, r0
	add r0, r0, r0, lsr #31
	mls r7, r0, r1, r5
	cmp r0, r7
	bne label6
	add r0, r5, r5, lsl #4
	add r0, r0, #23
	asr r1, r0, #31
	add r1, r0, r1, lsr #27
	asr r1, r1, #5
	sub r5, r0, r1, lsl #5
	cmp r5, #0
	beq label19
	movw r0, #43691
	mov r1, #6
	movt r0, #10922
	smmul r0, r5, r0
	add r0, r0, r0, lsr #31
	mls r7, r0, r1, r5
	cmp r0, r7
	bne label6
	add r0, r5, r5, lsl #4
	add r0, r0, #23
	asr r1, r0, #31
	add r1, r0, r1, lsr #27
	asr r1, r1, #5
	sub r5, r0, r1, lsl #5
	cmp r5, #0
	beq label19
	movw r0, #43691
	mov r1, #6
	movt r0, #10922
	smmul r0, r5, r0
	add r0, r0, r0, lsr #31
	mls r7, r0, r1, r5
	cmp r0, r7
	bne label6
	add r0, r5, r5, lsl #4
	add r0, r0, #23
	asr r1, r0, #31
	add r1, r0, r1, lsr #27
	asr r1, r1, #5
	sub r5, r0, r1, lsl #5
	cmp r5, #0
	beq label19
	movw r0, #43691
	mov r1, #6
	movt r0, #10922
	smmul r0, r5, r0
	add r0, r0, r0, lsr #31
	mls r7, r0, r1, r5
	cmp r0, r7
	bne label6
	add r0, r5, r5, lsl #4
	add r0, r0, #23
	asr r1, r0, #31
	add r1, r0, r1, lsr #27
	asr r1, r1, #5
	sub r5, r0, r1, lsl #5
	cmp r5, #0
	beq label19
	b label243
label6:
	movw r6, #:lower16:N4__mE___
	mov r1, #200
	movt r6, #:upper16:N4__mE___
	mul r2, r0, r1
	mla r8, r0, r1, r6
	ldr r0, [r6, r2]
	cmp r0, #0
	bne label56
	movw r8, #:lower16:saY_HeI10_To
	movt r8, #:upper16:saY_HeI10_To
	ldr r0, [r8, #0]
	cmp r0, #0
	bne label63
	mov r0, #200
	mul r1, r7, r0
	mla r7, r7, r0, r6
	ldr r0, [r6, r1]
	cmp r0, #0
	bne label80
	ldr r0, [sp, #0]
	cmp r0, #0
	bne label95
	add r0, r5, r5, lsl #4
	add r0, r0, #23
	asr r1, r0, #31
	add r1, r0, r1, lsr #27
	asr r1, r1, #5
	sub r5, r0, r1, lsl #5
	cmp r5, #0
	beq label19
	movw r0, #43691
	mov r1, #6
	movt r0, #10922
	smmul r0, r5, r0
	add r0, r0, r0, lsr #31
	mls r7, r0, r1, r5
	cmp r0, r7
	bne label6
	add r0, r5, r5, lsl #4
	add r0, r0, #23
	asr r1, r0, #31
	add r1, r0, r1, lsr #27
	asr r1, r1, #5
	sub r5, r0, r1, lsl #5
	cmp r5, #0
	beq label19
	movw r0, #43691
	mov r1, #6
	movt r0, #10922
	smmul r0, r5, r0
	add r0, r0, r0, lsr #31
	mls r7, r0, r1, r5
	cmp r0, r7
	bne label6
	add r0, r5, r5, lsl #4
	add r0, r0, #23
	asr r1, r0, #31
	add r1, r0, r1, lsr #27
	asr r1, r1, #5
	sub r5, r0, r1, lsl #5
	cmp r5, #0
	beq label19
	movw r0, #43691
	mov r1, #6
	movt r0, #10922
	smmul r0, r5, r0
	add r0, r0, r0, lsr #31
	mls r7, r0, r1, r5
	cmp r0, r7
	bne label6
	add r0, r5, r5, lsl #4
	add r0, r0, #23
	asr r1, r0, #31
	add r1, r0, r1, lsr #27
	asr r1, r1, #5
	sub r5, r0, r1, lsl #5
	cmp r5, #0
	beq label19
	b label245
label56:
	mov r9, #0
	b label16
label245:
	movw r0, #43691
	mov r1, #6
	movt r0, #10922
	smmul r0, r5, r0
	add r0, r0, r0, lsr #31
	mls r7, r0, r1, r5
	cmp r0, r7
	bne label6
	b label247
label63:
	mov r9, #0
label8:
	add r10, r8, r9, lsl #2
	ldr r0, [r8, r9, lsl #2]
	bl putch
	add r9, r9, #1
	ldr r0, [r10, #4]
	cmp r0, #0
	bne label8
	mov r0, #200
	mul r1, r7, r0
	mla r7, r7, r0, r6
	ldr r0, [r6, r1]
	cmp r0, #0
	bne label80
	ldr r0, [sp, #0]
	cmp r0, #0
	bne label95
	add r0, r5, r5, lsl #4
	add r0, r0, #23
	asr r1, r0, #31
	add r1, r0, r1, lsr #27
	asr r1, r1, #5
	sub r5, r0, r1, lsl #5
	cmp r5, #0
	beq label19
	movw r0, #43691
	mov r1, #6
	movt r0, #10922
	smmul r0, r5, r0
	add r0, r0, r0, lsr #31
	mls r7, r0, r1, r5
	cmp r0, r7
	bne label6
	add r0, r5, r5, lsl #4
	add r0, r0, #23
	asr r1, r0, #31
	add r1, r0, r1, lsr #27
	asr r1, r1, #5
	sub r5, r0, r1, lsl #5
	cmp r5, #0
	beq label19
	movw r0, #43691
	mov r1, #6
	movt r0, #10922
	smmul r0, r5, r0
	add r0, r0, r0, lsr #31
	mls r7, r0, r1, r5
	cmp r0, r7
	bne label6
	add r0, r5, r5, lsl #4
	add r0, r0, #23
	asr r1, r0, #31
	add r1, r0, r1, lsr #27
	asr r1, r1, #5
	sub r5, r0, r1, lsl #5
	cmp r5, #0
	beq label19
	movw r0, #43691
	mov r1, #6
	movt r0, #10922
	smmul r0, r5, r0
	add r0, r0, r0, lsr #31
	mls r7, r0, r1, r5
	cmp r0, r7
	bne label6
	add r0, r5, r5, lsl #4
	add r0, r0, #23
	asr r1, r0, #31
	add r1, r0, r1, lsr #27
	asr r1, r1, #5
	sub r5, r0, r1, lsl #5
	cmp r5, #0
	beq label19
	movw r0, #43691
	mov r1, #6
	movt r0, #10922
	smmul r0, r5, r0
	add r0, r0, r0, lsr #31
	mls r7, r0, r1, r5
	cmp r0, r7
	bne label6
label247:
	add r0, r5, r5, lsl #4
	add r0, r0, #23
	asr r1, r0, #31
	add r1, r0, r1, lsr #27
	asr r1, r1, #5
	sub r5, r0, r1, lsl #5
	cmp r5, #0
	beq label19
	b label249
label80:
	mov r6, #0
label11:
	add r8, r7, r6, lsl #2
	ldr r0, [r7, r6, lsl #2]
	bl putch
	add r6, r6, #1
	ldr r0, [r8, #4]
	cmp r0, #0
	bne label11
	ldr r0, [sp, #0]
	cmp r0, #0
	bne label95
	add r0, r5, r5, lsl #4
	add r0, r0, #23
	asr r1, r0, #31
	add r1, r0, r1, lsr #27
	asr r1, r1, #5
	sub r5, r0, r1, lsl #5
	cmp r5, #0
	beq label19
	movw r0, #43691
	mov r1, #6
	movt r0, #10922
	smmul r0, r5, r0
	add r0, r0, r0, lsr #31
	mls r7, r0, r1, r5
	cmp r0, r7
	bne label6
	add r0, r5, r5, lsl #4
	add r0, r0, #23
	asr r1, r0, #31
	add r1, r0, r1, lsr #27
	asr r1, r1, #5
	sub r5, r0, r1, lsl #5
	cmp r5, #0
	beq label19
	movw r0, #43691
	mov r1, #6
	movt r0, #10922
	smmul r0, r5, r0
	add r0, r0, r0, lsr #31
	mls r7, r0, r1, r5
	cmp r0, r7
	bne label6
	add r0, r5, r5, lsl #4
	add r0, r0, #23
	asr r1, r0, #31
	add r1, r0, r1, lsr #27
	asr r1, r1, #5
	sub r5, r0, r1, lsl #5
	cmp r5, #0
	beq label19
	movw r0, #43691
	mov r1, #6
	movt r0, #10922
	smmul r0, r5, r0
	add r0, r0, r0, lsr #31
	mls r7, r0, r1, r5
	cmp r0, r7
	bne label6
	add r0, r5, r5, lsl #4
	add r0, r0, #23
	asr r1, r0, #31
	add r1, r0, r1, lsr #27
	asr r1, r1, #5
	sub r5, r0, r1, lsl #5
	cmp r5, #0
	beq label19
	movw r0, #43691
	mov r1, #6
	movt r0, #10922
	smmul r0, r5, r0
	add r0, r0, r0, lsr #31
	mls r7, r0, r1, r5
	cmp r0, r7
	bne label6
	add r0, r5, r5, lsl #4
	add r0, r0, #23
	asr r1, r0, #31
	add r1, r0, r1, lsr #27
	asr r1, r1, #5
	sub r5, r0, r1, lsl #5
	cmp r5, #0
	beq label19
label249:
	movw r0, #43691
	mov r1, #6
	movt r0, #10922
	smmul r0, r5, r0
	add r0, r0, r0, lsr #31
	mls r7, r0, r1, r5
	cmp r0, r7
	bne label6
	b label252
label95:
	mov r6, #0
label14:
	add r7, r4, r6, lsl #2
	ldr r0, [r4, r6, lsl #2]
	bl putch
	add r6, r6, #1
	ldr r0, [r7, #4]
	cmp r0, #0
	bne label14
	add r0, r5, r5, lsl #4
	add r0, r0, #23
	asr r1, r0, #31
	add r1, r0, r1, lsr #27
	asr r1, r1, #5
	sub r5, r0, r1, lsl #5
	cmp r5, #0
	beq label19
	movw r0, #43691
	mov r1, #6
	movt r0, #10922
	smmul r0, r5, r0
	add r0, r0, r0, lsr #31
	mls r7, r0, r1, r5
	cmp r0, r7
	bne label6
	add r0, r5, r5, lsl #4
	add r0, r0, #23
	asr r1, r0, #31
	add r1, r0, r1, lsr #27
	asr r1, r1, #5
	sub r5, r0, r1, lsl #5
	cmp r5, #0
	beq label19
	movw r0, #43691
	mov r1, #6
	movt r0, #10922
	smmul r0, r5, r0
	add r0, r0, r0, lsr #31
	mls r7, r0, r1, r5
	cmp r0, r7
	bne label6
	add r0, r5, r5, lsl #4
	add r0, r0, #23
	asr r1, r0, #31
	add r1, r0, r1, lsr #27
	asr r1, r1, #5
	sub r5, r0, r1, lsl #5
	cmp r5, #0
	beq label19
	movw r0, #43691
	mov r1, #6
	movt r0, #10922
	smmul r0, r5, r0
	add r0, r0, r0, lsr #31
	mls r7, r0, r1, r5
	cmp r0, r7
	bne label6
	add r0, r5, r5, lsl #4
	add r0, r0, #23
	asr r1, r0, #31
	add r1, r0, r1, lsr #27
	asr r1, r1, #5
	sub r5, r0, r1, lsl #5
	cmp r5, #0
	beq label19
	movw r0, #43691
	mov r1, #6
	movt r0, #10922
	smmul r0, r5, r0
	add r0, r0, r0, lsr #31
	mls r7, r0, r1, r5
	cmp r0, r7
	bne label6
	add r0, r5, r5, lsl #4
	add r0, r0, #23
	asr r1, r0, #31
	add r1, r0, r1, lsr #27
	asr r1, r1, #5
	sub r5, r0, r1, lsl #5
	cmp r5, #0
	beq label19
	movw r0, #43691
	mov r1, #6
	movt r0, #10922
	smmul r0, r5, r0
	add r0, r0, r0, lsr #31
	mls r7, r0, r1, r5
	cmp r0, r7
	bne label6
	b label252
label16:
	add r10, r8, r9, lsl #2
	ldr r0, [r8, r9, lsl #2]
	bl putch
	add r9, r9, #1
	ldr r0, [r10, #4]
	cmp r0, #0
	bne label16
	movw r8, #:lower16:saY_HeI10_To
	movt r8, #:upper16:saY_HeI10_To
	ldr r0, [r8, #0]
	cmp r0, #0
	bne label63
	mov r0, #200
	mul r1, r7, r0
	mla r7, r7, r0, r6
	ldr r0, [r6, r1]
	cmp r0, #0
	bne label80
	ldr r0, [sp, #0]
	cmp r0, #0
	bne label95
	add r0, r5, r5, lsl #4
	add r0, r0, #23
	asr r1, r0, #31
	add r1, r0, r1, lsr #27
	asr r1, r1, #5
	sub r5, r0, r1, lsl #5
	cmp r5, #0
	beq label19
	movw r0, #43691
	mov r1, #6
	movt r0, #10922
	smmul r0, r5, r0
	add r0, r0, r0, lsr #31
	mls r7, r0, r1, r5
	cmp r0, r7
	bne label6
	add r0, r5, r5, lsl #4
	add r0, r0, #23
	asr r1, r0, #31
	add r1, r0, r1, lsr #27
	asr r1, r1, #5
	sub r5, r0, r1, lsl #5
	cmp r5, #0
	beq label19
	movw r0, #43691
	mov r1, #6
	movt r0, #10922
	smmul r0, r5, r0
	add r0, r0, r0, lsr #31
	mls r7, r0, r1, r5
	cmp r0, r7
	bne label6
	add r0, r5, r5, lsl #4
	add r0, r0, #23
	asr r1, r0, #31
	add r1, r0, r1, lsr #27
	asr r1, r1, #5
	sub r5, r0, r1, lsl #5
	cmp r5, #0
	beq label19
	movw r0, #43691
	mov r1, #6
	movt r0, #10922
	smmul r0, r5, r0
	add r0, r0, r0, lsr #31
	mls r7, r0, r1, r5
	cmp r0, r7
	bne label6
	add r0, r5, r5, lsl #4
	add r0, r0, #23
	asr r1, r0, #31
	add r1, r0, r1, lsr #27
	asr r1, r1, #5
	sub r5, r0, r1, lsl #5
	cmp r5, #0
	bne label245
label19:
	mov r0, #0
	add sp, sp, #24
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label243:
	movw r0, #43691
	mov r1, #6
	movt r0, #10922
	smmul r0, r5, r0
	add r0, r0, r0, lsr #31
	mls r7, r0, r1, r5
	cmp r0, r7
	bne label6
label252:
	add r0, r5, r5, lsl #4
	add r0, r0, #23
	asr r1, r0, #31
	add r1, r0, r1, lsr #27
	asr r1, r1, #5
	sub r5, r0, r1, lsl #5
	cmp r5, #0
	beq label19
	b label243
