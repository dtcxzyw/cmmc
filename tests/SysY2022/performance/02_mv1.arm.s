.arch armv7ve
.data
.bss
.align 8
A:
	.zero	16160400
.align 8
B:
	.zero	8040
.align 8
C:
	.zero	8040
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[8] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #12
	bl getint
	mov r8, #0
	sub r3, r0, #3
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	movw r6, #:lower16:B
	movt r6, #:upper16:B
	str r3, [sp, #4]
	movw r5, #:lower16:C
	movt r5, #:upper16:C
	mov r4, r0
	mov r7, r2
	sub r3, r0, #18
	str r3, [sp, #0]
	cmp r0, r8
	bgt label5
	b label11
.p2align 4
label9:
	add r8, r8, #1
	movw r0, #8040
	cmp r4, r8
	add r7, r7, r0
	ble label11
.p2align 4
label5:
	mov r9, r7
	mov r10, #0
.p2align 4
label6:
	bl getint
	str r0, [r9, #0]
	add r0, r10, #1
	cmp r4, r0
	ble label9
	add r9, r9, #4
	mov r10, r0
	b label6
label11:
	cmp r4, #0
	ble label17
	mov r7, r6
	mov r8, #0
	b label13
.p2align 4
label16:
	add r7, r7, #4
	mov r8, r0
.p2align 4
label13:
	bl getint
	str r0, [r7, #0]
	add r0, r8, #1
	cmp r4, r0
	bgt label16
label17:
	mov r0, #59
	bl _sysy_starttime
	mov r0, #0
	b label18
.p2align 4
label375:
	add r0, r0, #1
	cmp r0, #50
	bge label65
.p2align 4
label18:
	cmp r4, #0
	ble label20
	cmp r4, #3
	ble label253
	ldr r3, [sp, #4]
	cmp r3, #15
	ble label268
	mov r1, r5
	mov r2, #0
.p2align 4
label95:
	add r2, r2, #16
	mov r3, #0
	str r3, [r1, #0]
	str r3, [r1, #4]
	str r3, [r1, #8]
	str r3, [r1, #12]
	str r3, [r1, #16]
	str r3, [r1, #20]
	str r3, [r1, #24]
	str r3, [r1, #28]
	str r3, [r1, #32]
	str r3, [r1, #36]
	str r3, [r1, #40]
	str r3, [r1, #44]
	str r3, [r1, #48]
	str r3, [r1, #52]
	str r3, [r1, #56]
	str r3, [r1, #60]
	ldr r3, [sp, #0]
	cmp r3, r2
	ble label303
	add r1, r1, #64
	b label95
.p2align 4
label303:
	mov r7, r2
	ldr r3, [sp, #4]
	cmp r3, r2
	ble label381
.p2align 4
label89:
	add r1, r5, r7, lsl #2
	mov r2, r7
.p2align 4
label90:
	add r2, r2, #4
	mov r3, #0
	str r3, [r1, #0]
	str r3, [r1, #4]
	str r3, [r1, #8]
	str r3, [r1, #12]
	ldr r3, [sp, #4]
	cmp r3, r2
	ble label282
	add r1, r1, #16
	b label90
.p2align 4
label282:
	cmp r4, r2
	ble label380
.p2align 4
label79:
	add r1, r5, r2, lsl #2
	b label80
.p2align 4
label83:
	add r1, r1, #4
.p2align 4
label80:
	add r2, r2, #1
	mov r3, #0
	cmp r4, r2
	str r3, [r1, #0]
	bgt label83
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r5
	cmp r4, r3
	bgt label25
	b label138
.p2align 4
label154:
	add r3, r3, #1
	add r1, r1, #4
	movw r7, #8040
	cmp r4, r3
	add r2, r2, r7
	ble label365
.p2align 4
label25:
	cmp r4, #0
	ble label26
	mov r7, r2
	mov r8, #0
	ldr r9, [r2, #0]
	cmp r9, #0
	bne label149
.p2align 4
label31:
	add r8, r8, #1
	cmp r4, r8
	ble label154
.p2align 4
label32:
	add r7, r7, #4
	ldr r9, [r7, #0]
	cmp r9, #0
	beq label31
	ldr r10, [r1, #0]
	ldr r11, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	mla r9, r9, r11, r10
	str r9, [r1, #0]
	bgt label32
	add r3, r3, #1
	add r1, r1, #4
	movw r7, #8040
	cmp r4, r3
	add r2, r2, r7
	bgt label25
	cmp r4, #0
	bgt label36
	b label363
.p2align 4
label26:
	add r3, r3, #1
	add r1, r1, #4
	movw r7, #8040
	cmp r4, r3
	add r2, r2, r7
	bgt label25
label138:
	cmp r4, #0
	bgt label36
	b label363
.p2align 4
label365:
	cmp r4, #0
	ble label363
.p2align 4
label36:
	cmp r4, #3
	ble label167
	ldr r3, [sp, #4]
	cmp r3, #15
	ble label182
	mov r1, r6
	mov r2, #0
	b label48
.p2align 4
label51:
	add r1, r1, #64
.p2align 4
label48:
	add r2, r2, #16
	mov r3, #0
	str r3, [r1, #0]
	str r3, [r1, #4]
	str r3, [r1, #8]
	str r3, [r1, #12]
	str r3, [r1, #16]
	str r3, [r1, #20]
	str r3, [r1, #24]
	str r3, [r1, #28]
	str r3, [r1, #32]
	str r3, [r1, #36]
	str r3, [r1, #40]
	str r3, [r1, #44]
	str r3, [r1, #48]
	str r3, [r1, #52]
	str r3, [r1, #56]
	str r3, [r1, #60]
	ldr r3, [sp, #0]
	cmp r3, r2
	bgt label51
	mov r7, r2
	ldr r3, [sp, #4]
	cmp r3, r2
	ble label371
.p2align 4
label55:
	add r1, r6, r7, lsl #2
	mov r2, r7
	b label56
.p2align 4
label59:
	add r1, r1, #16
.p2align 4
label56:
	add r2, r2, #4
	mov r3, #0
	str r3, [r1, #0]
	str r3, [r1, #4]
	str r3, [r1, #8]
	str r3, [r1, #12]
	ldr r3, [sp, #4]
	cmp r3, r2
	bgt label59
	cmp r4, r2
	ble label373
.p2align 4
label39:
	add r1, r6, r2, lsl #2
.p2align 4
label40:
	add r2, r2, #1
	mov r3, #0
	cmp r4, r2
	str r3, [r1, #0]
	ble label43
	add r1, r1, #4
	b label40
.p2align 4
label43:
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r6
	mov r3, #0
	cmp r4, r3
	bgt label66
	b label64
.p2align 4
label249:
	add r3, r3, #1
	add r1, r1, #4
	movw r7, #8040
	cmp r4, r3
	add r2, r2, r7
	ble label375
.p2align 4
label66:
	cmp r4, #0
	ble label67
	mov r7, r2
	mov r8, #0
	ldr r9, [r2, #0]
	cmp r9, #0
	beq label73
	ldr r10, [r1, #0]
	ldr r11, [r5, r8, lsl #2]
	mla r9, r9, r11, r10
	str r9, [r1, #0]
.p2align 4
label73:
	add r8, r8, #1
	cmp r4, r8
	ble label249
.p2align 4
label74:
	add r7, r7, #4
	ldr r9, [r7, #0]
	cmp r9, #0
	beq label73
	ldr r10, [r1, #0]
	ldr r11, [r5, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	mla r9, r9, r11, r10
	str r9, [r1, #0]
	bgt label74
	add r3, r3, #1
	add r1, r1, #4
	movw r7, #8040
	cmp r4, r3
	add r2, r2, r7
	bgt label66
	add r0, r0, #1
	cmp r0, #50
	blt label18
	b label65
.p2align 4
label67:
	add r3, r3, #1
	add r1, r1, #4
	movw r7, #8040
	cmp r4, r3
	add r2, r2, r7
	bgt label66
label64:
	add r0, r0, #1
	cmp r0, #50
	blt label18
	b label65
label253:
	mov r2, #0
	cmp r4, r2
	bgt label79
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r5
	mov r3, #0
	cmp r4, r3
	bgt label25
	b label138
label167:
	mov r2, #0
	cmp r4, r2
	bgt label39
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r6
	mov r3, #0
	cmp r4, r3
	bgt label66
	b label64
label268:
	mov r7, #0
	mov r2, r7
	ldr r3, [sp, #4]
	cmp r3, r7
	bgt label89
	cmp r4, r7
	bgt label79
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r5
	mov r3, #0
	cmp r4, r3
	bgt label25
	b label138
.p2align 4
label381:
	cmp r4, r2
	bgt label79
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r5
	mov r3, #0
	cmp r4, r3
	bgt label25
	b label138
.p2align 4
label371:
	cmp r4, r2
	bgt label39
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r6
	mov r3, #0
	cmp r4, r3
	bgt label66
	b label64
label20:
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r5
	mov r3, #0
	cmp r4, r3
	bgt label25
	b label138
label363:
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r6
	mov r3, #0
	cmp r4, r3
	bgt label66
	b label64
label182:
	mov r7, #0
	ldr r3, [sp, #4]
	mov r2, r7
	cmp r3, r7
	bgt label55
	cmp r4, r7
	bgt label39
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r6
	mov r3, #0
	cmp r4, r3
	bgt label66
	b label64
label65:
	mov r0, #67
	bl _sysy_stoptime
	mov r0, r4
	mov r1, r5
	bl putarray
	add sp, sp, #12
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label380:
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r5
	mov r3, #0
	cmp r4, r3
	bgt label25
	b label138
.p2align 4
label373:
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r1, r6
	mov r3, #0
	cmp r4, r3
	bgt label66
	b label64
.p2align 4
label149:
	ldr r10, [r1, #0]
	ldr r11, [r6, r8, lsl #2]
	mla r9, r9, r11, r10
	str r9, [r1, #0]
	b label31
