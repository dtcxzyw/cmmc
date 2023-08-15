.arch armv7ve
.data
.bss
.align 8
cnt:
	.zero	1600080
.align 8
a:
	.zero	400020
.align 8
b:
	.zero	400020
.align 8
c:
	.zero	400020
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[4] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #12
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label121
	mov r4, r0
	mov r5, #0
.p2align 4
label115:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r5, #1
	cmp r1, #9
	bls label421
	mov r4, r0
	b label115
label421:
	mov r4, r5
label2:
	sub r1, r0, #48
	cmp r1, #10
	bhs label126
	mov r5, r0
	mov r6, #0
	b label5
.p2align 4
label136:
	mov r5, r0
.p2align 4
label5:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	blo label136
label8:
	cmp r4, #0
	rsb r0, r6, #0
	str r6, [sp, #0]
	movw r5, #:lower16:a
	movt r5, #:upper16:a
	mov r8, r6
	movw r4, #:lower16:c
	movt r4, #:upper16:c
	movne r8, r0
	cmp r8, #0
	sub r6, r8, #3
	str r8, [sp, #0]
	beq label26
	mov r7, r5
	mov r8, #0
	b label11
.p2align 4
label170:
	mov r10, r0
.p2align 4
label17:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label170
.p2align 4
label20:
	cmp r9, #0
	rsb r1, r11, #0
	mov r0, r11
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	movne r0, r1
	str r0, [r7, #0]
	str r0, [r3, r8, lsl #2]
	str r0, [r4, r8, lsl #2]
	add r0, r8, #1
	ldr r8, [sp, #0]
	cmp r8, r0
	beq label26
	add r7, r7, #4
	mov r8, r0
.p2align 4
label11:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label155
	mov r9, r0
	mov r10, #0
.p2align 4
label23:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bls label190
	mov r9, r0
	b label23
.p2align 4
label190:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label160
.p2align 4
label161:
	mov r10, r0
	mov r11, #0
	b label17
label26:
	ldr r8, [sp, #0]
	cmp r8, #0
	ble label39
	mov r0, r5
	mov r1, #0
	add r1, r1, #1
	cmp r8, r1
	bgt label31
	b label39
.p2align 4
label457:
	add r0, r0, #4
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r8, r1
	ble label39
.p2align 4
label31:
	add r2, r5, r1, lsl #2
	mov r3, r1
	ldr r7, [r0, #0]
	ldr r8, [r2, #0]
	cmp r7, r8
	bgt label38
	add r3, r1, #1
	ldr r8, [sp, #0]
	cmp r8, r3
	bgt label37
	add r0, r0, #4
	add r1, r1, #1
	cmp r8, r1
	bgt label31
	b label39
.p2align 4
label38:
	str r8, [r0, #0]
	add r3, r3, #1
	str r7, [r2, #0]
	ldr r8, [sp, #0]
	cmp r8, r3
	ble label457
.p2align 4
label37:
	add r2, r2, #4
	ldr r7, [r0, #0]
	ldr r8, [r2, #0]
	cmp r7, r8
	bgt label38
	add r3, r3, #1
	ldr r8, [sp, #0]
	cmp r8, r3
	bgt label37
	add r0, r0, #4
	add r1, r1, #1
	cmp r8, r1
	bgt label31
label39:
	movw r2, #:lower16:cnt
	movt r2, #:upper16:cnt
	ldr r8, [sp, #0]
	cmp r8, #0
	ble label219
	cmp r8, #3
	ble label362
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	mov r1, #0
	mov r0, r3
	mvn r3, #99
	b label110
.p2align 4
label114:
	add r0, r0, #16
.p2align 4
label110:
	ldr r7, [r0, #0]
	add r1, r1, #4
	cmp r3, r7
	add r8, r2, r7, lsl #2
	ldr r9, [r8, #0]
	add r9, r9, #1
	str r9, [r8, #0]
	ldr r8, [r0, #4]
	add r9, r2, r8, lsl #2
	ldr r10, [r9, #0]
	add r10, r10, #1
	str r10, [r9, #0]
	ldr r9, [r0, #8]
	add r10, r2, r9, lsl #2
	ldr r11, [r10, #0]
	add r11, r11, #1
	str r11, [r10, #0]
	mov r10, r3
	mov r3, r8
	movle r10, r7
	mov r7, r9
	cmp r8, r10
	ldr r8, [r0, #12]
	movle r3, r10
	cmp r9, r3
	movle r7, r3
	mov r3, r7
	cmp r7, r8
	add r7, r2, r8, lsl #2
	movle r3, r8
	cmp r6, r1
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
	bgt label114
	mov r7, r3
label99:
	ldr r8, [sp, #0]
	cmp r8, r1
	ble label366
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	add r0, r3, r1, lsl #2
	mov r3, r7
label104:
	ldr r7, [r0, #0]
	add r1, r1, #1
	cmp r3, r7
	add r8, r2, r7, lsl #2
	movle r3, r7
	ldr r9, [r8, #0]
	add r9, r9, #1
	str r9, [r8, #0]
	ldr r8, [sp, #0]
	cmp r8, r1
	ble label366
	add r0, r0, #4
	b label104
label366:
	mov r1, r3
label40:
	cmn r1, #1
	ble label42
	mov r0, #0
	mov r8, r0
	ldr r7, [r2, #0]
	cmp r7, #0
	bne label92
	b label89
.p2align 4
label97:
	add r3, r3, #4
.p2align 4
label93:
	str r0, [r3, #0]
	subs r7, r7, #1
	add r8, r8, #1
	bne label97
	add r0, r0, #1
	cmp r1, r0
	blt label42
.p2align 4
label91:
	add r2, r2, #4
	ldr r7, [r2, #0]
	cmp r7, #0
	beq label89
.p2align 4
label92:
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	add r3, r3, r8, lsl #2
	b label93
label42:
	ldr r8, [sp, #0]
	cmp r8, #0
	ble label43
	mov r1, r4
	mov r7, #0
	add r0, r7, #1
	cmp r8, r0
	bgt label64
	b label269
.p2align 4
label80:
	add r2, r2, #4
.p2align 4
label76:
	ldr r8, [r2, #0]
	ldr r9, [r4, r3, lsl #2]
	cmp r8, r9
	ldr r8, [sp, #0]
	movlt r3, r7
	add r7, r7, #1
	cmp r8, r7
	bgt label80
	add r2, r4, r3, lsl #2
	ldr r3, [r1, #0]
	ldr r7, [r2, #0]
	str r7, [r1, #0]
	str r3, [r2, #0]
	cmp r8, r0
	ble label43
.p2align 4
label83:
	add r1, r1, #4
	mov r7, r0
	ldr r8, [sp, #0]
	add r0, r0, #1
	cmp r8, r0
	ble label269
.p2align 4
label64:
	add r2, r7, #4
	ldr r8, [sp, #0]
	cmp r8, r2
	ble label274
	add r2, r4, r0, lsl #2
	mov r3, r0
.p2align 4
label66:
	ldr r8, [r2, #0]
	ldr r9, [r4, r7, lsl #2]
	cmp r8, r9
	ldr r8, [r2, #4]
	movlt r7, r3
	ldr r9, [r4, r7, lsl #2]
	cmp r8, r9
	add r8, r3, #1
	movlt r7, r8
	ldr r8, [r2, #8]
	ldr r9, [r4, r7, lsl #2]
	cmp r8, r9
	add r8, r3, #2
	movlt r7, r8
	ldr r8, [r2, #12]
	ldr r9, [r4, r7, lsl #2]
	cmp r8, r9
	add r8, r3, #3
	add r3, r3, #4
	movlt r7, r8
	cmp r6, r3
	ble label311
	add r2, r2, #16
	b label66
.p2align 4
label311:
	mov r9, r7
	ldr r8, [sp, #0]
	cmp r8, r3
	ble label459
.p2align 4
label75:
	add r2, r4, r3, lsl #2
	mov r7, r3
	mov r3, r9
	b label76
label269:
	add r2, r4, r7, lsl #2
	ldr r3, [r1, #0]
	ldr r7, [r2, #0]
	str r7, [r1, #0]
	str r3, [r2, #0]
	ldr r8, [sp, #0]
	cmp r8, r0
	bgt label83
label43:
	ldr r8, [sp, #0]
	cmp r8, #0
	beq label229
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	mov r1, #0
	mov r0, r3
	b label45
.p2align 4
label49:
	add r0, r0, #4
.p2align 4
label45:
	ldr r3, [r0, #0]
	ldr r2, [r5, r1, lsl #2]
	sub r6, r3, r2
	add r3, r4, r1, lsl #2
	str r6, [r0, #0]
	add r1, r1, #1
	ldr r7, [r3, #0]
	sub r6, r7, r6
	sub r2, r6, r2
	str r2, [r3, #0]
	ldr r8, [sp, #0]
	subs r2, r8, r1
	bne label49
label229:
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	mov r0, #0
label51:
	ldr r8, [sp, #0]
	subs r1, r0, r8
	beq label251
	ldr r1, [r3, #0]
	cmp r1, #0
	bne label257
	ldr r1, [r4, #0]
	cmp r1, #0
	bne label262
	add r0, r0, #1
	add r3, r3, #4
	add r4, r4, #4
	b label51
label155:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label161
	b label160
label89:
	add r0, r0, #1
	cmp r1, r0
	bge label91
	b label42
label160:
	mov r11, #0
	b label20
label274:
	mov r9, r7
	mov r3, r0
	ldr r8, [sp, #0]
	mov r7, #0
	cmp r8, r0
	bgt label75
	add r2, r4, r7, lsl #2
	ldr r3, [r1, #0]
	ldr r7, [r2, #0]
	str r7, [r1, #0]
	str r3, [r2, #0]
	b label43
label257:
	mov r0, #1
label55:
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label459:
	add r2, r4, r7, lsl #2
	ldr r3, [r1, #0]
	ldr r7, [r2, #0]
	str r7, [r1, #0]
	str r3, [r2, #0]
	ldr r8, [sp, #0]
	cmp r8, r0
	bgt label83
	b label43
label251:
	mvn r0, #122
	b label55
label219:
	mvn r1, #99
	b label40
label262:
	mov r0, #2
	b label55
label126:
	mov r6, #0
	b label8
label362:
	mvn r7, #99
	mov r1, #0
	mov r3, r1
	b label99
label121:
	mov r4, #0
	b label2
