.arch armv7ve
.data
.bss
.align 4
A:
	.zero	4194304
.align 4
B:
	.zero	4194304
.align 4
C:
	.zero	4194304
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #28
	bl getint
	mov r5, r0
	str r0, [sp, #0]
	movw r1, #:lower16:A
	movt r1, #:upper16:A
	str r1, [sp, #8]
	movw r5, #:lower16:B
	movt r5, #:upper16:B
	str r5, [sp, #4]
	movw r5, #:lower16:C
	movt r5, #:upper16:C
	str r5, [sp, #12]
	mov r4, #0
label2:
	ldr r5, [sp, #0]
	cmp r5, r4
	ble label126
	b label4
label126:
	mov r4, #0
	b label9
label4:
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label129
	b label128
label129:
	add r4, r4, #1
	b label2
label9:
	ldr r5, [sp, #0]
	cmp r5, r4
	ble label16
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label147
	ldr r5, [sp, #4]
	add r6, r5, r4, lsl #12
	mov r5, #0
	b label13
label16:
	mov r0, #65
	bl _sysy_starttime
	mov r0, #0
	str r0, [sp, #16]
	mov r1, #0
label19:
	ldr r5, [sp, #0]
	cmp r5, r1
	ble label162
	b label21
label162:
	mov r2, #0
	b label34
label21:
	ldr r5, [sp, #12]
	add r0, r5, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label167
	mov r2, #0
	b label22
label167:
	add r1, r1, #1
	b label19
label22:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label24
	b label171
label34:
	ldr r5, [sp, #4]
	add r0, r5, r2, lsl #12
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label211
	mov r3, #0
	b label36
label211:
	mov r1, #0
	b label57
label36:
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label38
	b label39
label38:
	add r2, r2, #1
	b label34
label39:
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label41
	b label224
label57:
	ldr r5, [sp, #0]
	cmp r5, r1
	ble label351
	b label102
label351:
	mov r2, #0
label59:
	ldr r5, [sp, #12]
	add r0, r5, r2, lsl #12
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label61
	mov r3, #0
	b label81
label61:
	ldr r0, [sp, #16]
	add r0, r0, #1
	cmp r0, #5
	bge label362
	str r0, [sp, #16]
	mov r1, #0
	b label19
label362:
	mov r0, #0
	mov r4, r0
label62:
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label65
	b label66
label65:
	mov r0, #84
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label66:
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label369
	b label368
label81:
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label83
	b label84
label83:
	add r2, r2, #1
	b label59
label84:
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label86
	b label430
label86:
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label430
	ldr r5, [sp, #4]
	add r1, r5, r3, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #4
	ble label440
	ldr r6, [r4, r2, lsl #2]
	mov r7, #4
	mov r9, #0
	b label89
label440:
	mov r7, #0
	ldr r4, [r4, r2, lsl #2]
	mov r8, r7
	b label94
label102:
	ldr r5, [sp, #4]
	add r0, r5, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label103
	mov r2, #0
label104:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label107
	b label563
label94:
	add r6, r8, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label483
	b label101
label483:
	mov r7, r8
label96:
	add r6, r7, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label488
	b label98
label488:
	mov r5, r7
	b label99
label98:
	add r5, r1, r7, lsl #2
	ldr r9, [r1, r7, lsl #2]
	add r8, r0, r7, lsl #2
	ldr r10, [r0, r7, lsl #2]
	mla r9, r4, r10, r9
	str r9, [r1, r7, lsl #2]
	ldr r7, [r5, #4]
	ldr r9, [r8, #4]
	mla r7, r4, r9, r7
	str r7, [r5, #4]
	ldr r7, [r5, #8]
	ldr r9, [r8, #8]
	mla r7, r4, r9, r7
	str r7, [r5, #8]
	ldr r7, [r5, #12]
	ldr r8, [r8, #12]
	mla r7, r4, r8, r7
	str r7, [r5, #12]
	mov r7, r6
	b label96
label101:
	add r5, r1, r8, lsl #2
	ldr r9, [r1, r8, lsl #2]
	add r7, r0, r8, lsl #2
	ldr r10, [r0, r8, lsl #2]
	mla r9, r4, r10, r9
	str r9, [r1, r8, lsl #2]
	ldr r8, [r5, #4]
	ldr r9, [r7, #4]
	mla r8, r4, r9, r8
	str r8, [r5, #4]
	ldr r8, [r5, #8]
	ldr r9, [r7, #8]
	mla r8, r4, r9, r8
	str r8, [r5, #8]
	ldr r8, [r5, #12]
	ldr r7, [r7, #12]
	mla r7, r4, r7, r8
	str r7, [r5, #12]
	mov r8, r6
	b label94
label99:
	ldr r6, [r1, r5, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label430
	mov r5, r6
	b label99
label89:
	add r5, r1, r9, lsl #2
	ldr r10, [r1, r9, lsl #2]
	add r8, r0, r9, lsl #2
	ldr r11, [r0, r9, lsl #2]
	mla r10, r6, r11, r10
	str r10, [r1, r9, lsl #2]
	ldr r9, [r5, #4]
	ldr r10, [r8, #4]
	mla r9, r6, r10, r9
	str r9, [r5, #4]
	ldr r9, [r5, #8]
	ldr r10, [r8, #8]
	mla r9, r6, r10, r9
	str r9, [r5, #8]
	ldr r9, [r5, #12]
	ldr r8, [r8, #12]
	mla r8, r6, r8, r9
	str r8, [r5, #12]
	add r8, r7, #4
	ldr r5, [sp, #0]
	cmp r5, r8
	ble label92
	mov r9, r7
	mov r7, r8
	b label89
label224:
	add r3, r3, #1
	b label36
label430:
	add r3, r3, #1
	b label81
label41:
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label224
	ldr r5, [sp, #12]
	add r1, r5, r3, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #4
	ble label234
	ldr r6, [r4, r2, lsl #2]
	mov r7, #4
	mov r9, #0
	b label54
label234:
	mov r8, #0
	ldr r4, [r4, r2, lsl #2]
label45:
	add r6, r8, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label242
	b label47
label242:
	mov r7, r8
	b label48
label47:
	add r5, r1, r8, lsl #2
	ldr r9, [r1, r8, lsl #2]
	add r7, r0, r8, lsl #2
	ldr r10, [r0, r8, lsl #2]
	mla r9, r4, r10, r9
	str r9, [r1, r8, lsl #2]
	ldr r8, [r5, #4]
	ldr r9, [r7, #4]
	mla r8, r4, r9, r8
	str r8, [r5, #4]
	ldr r8, [r5, #8]
	ldr r9, [r7, #8]
	mla r8, r4, r9, r8
	str r8, [r5, #8]
	ldr r8, [r5, #12]
	ldr r7, [r7, #12]
	mla r7, r4, r7, r8
	str r7, [r5, #12]
	mov r8, r6
	b label45
label48:
	add r6, r7, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label273
	b label52
label273:
	mov r5, r7
	b label50
label52:
	add r5, r1, r7, lsl #2
	ldr r9, [r1, r7, lsl #2]
	add r8, r0, r7, lsl #2
	ldr r10, [r0, r7, lsl #2]
	mla r9, r4, r10, r9
	str r9, [r1, r7, lsl #2]
	ldr r7, [r5, #4]
	ldr r9, [r8, #4]
	mla r7, r4, r9, r7
	str r7, [r5, #4]
	ldr r7, [r5, #8]
	ldr r9, [r8, #8]
	mla r7, r4, r9, r7
	str r7, [r5, #8]
	ldr r7, [r5, #12]
	ldr r8, [r8, #12]
	mla r7, r4, r8, r7
	str r7, [r5, #12]
	mov r7, r6
	b label48
label50:
	ldr r6, [r1, r5, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label224
	mov r5, r6
	b label50
label54:
	add r5, r1, r9, lsl #2
	ldr r10, [r1, r9, lsl #2]
	add r8, r0, r9, lsl #2
	ldr r11, [r0, r9, lsl #2]
	mla r10, r6, r11, r10
	str r10, [r1, r9, lsl #2]
	ldr r9, [r5, #4]
	ldr r10, [r8, #4]
	mla r9, r6, r10, r9
	str r9, [r5, #4]
	ldr r9, [r5, #8]
	ldr r10, [r8, #8]
	mla r9, r6, r10, r9
	str r9, [r5, #8]
	ldr r9, [r5, #12]
	ldr r8, [r8, #12]
	mla r8, r6, r8, r9
	str r8, [r5, #12]
	add r8, r7, #4
	ldr r5, [sp, #0]
	cmp r5, r8
	ble label346
	mov r9, r7
	mov r7, r8
	b label54
label346:
	mov r8, r7
	ldr r4, [r4, r2, lsl #2]
	b label45
label92:
	ldr r4, [r4, r2, lsl #2]
	mov r8, r7
	b label94
label107:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label109
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	mov r2, r3
	b label107
label109:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label112
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	mov r2, r3
	b label109
label112:
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label103
	b label112
label24:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label27
	b label176
label27:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label29
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	mov r2, r3
	b label27
label29:
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label167
	b label29
label563:
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	mov r2, r3
	b label104
label171:
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	mov r2, r3
	b label22
label176:
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	mov r2, r3
	b label24
label13:
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label147
	mov r5, r0
	b label13
label103:
	add r1, r1, #1
	b label57
label147:
	add r4, r4, #1
	b label9
label369:
	add r0, r0, #1
	b label62
label128:
	ldr r1, [sp, #8]
	add r6, r1, r4, lsl #12
	mov r5, #0
label6:
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label129
	mov r5, r0
	b label6
label368:
	ldr r5, [sp, #4]
	add r1, r5, r0, lsl #12
	mov r3, #0
label68:
	add r2, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label71
	add r5, r1, r3, lsl #2
	ldr r3, [r1, r3, lsl #2]
	add r3, r4, r3
	ldr r4, [r5, #4]
	add r3, r3, r4
	ldr r4, [r5, #8]
	add r3, r3, r4
	ldr r4, [r5, #12]
	add r4, r3, r4
	mov r3, r2
	b label68
label71:
	add r2, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label381
	b label77
label381:
	mov r2, r4
label74:
	ldr r4, [r1, r3, lsl #2]
	add r2, r2, r4
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label390
	b label74
label390:
	mov r4, r2
	add r0, r0, #1
	b label62
label77:
	add r5, r1, r3, lsl #2
	ldr r3, [r1, r3, lsl #2]
	add r3, r4, r3
	ldr r4, [r5, #4]
	add r3, r3, r4
	ldr r4, [r5, #8]
	add r3, r3, r4
	ldr r4, [r5, #12]
	add r4, r3, r4
	mov r3, r2
	b label71
