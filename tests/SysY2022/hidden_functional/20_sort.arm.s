.arch armv7ve
.data
.bss
.p2align 3
cnt:
	.zero	1600080
.p2align 3
a:
	.zero	400020
.p2align 3
b:
	.zero	400020
.p2align 3
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
	b label2
.p2align 4
label130:
	mov r4, r0
.p2align 4
label2:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r5, #1
	cmp r1, #9
	bhi label130
	mov r4, r5
label5:
	sub r1, r0, #48
	cmp r1, #10
	bhs label134
	mov r5, r0
	mov r6, #0
	b label8
.p2align 4
label144:
	mov r5, r0
.p2align 4
label8:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	blo label144
label11:
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
	beq label13
	mov r7, r5
	mov r8, #0
	b label103
.p2align 4
label415:
	mov r10, r0
.p2align 4
label112:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label415
.p2align 4
label109:
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
	beq label13
	add r7, r7, #4
	mov r8, r0
.p2align 4
label103:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label387
	mov r9, r0
	mov r10, #0
	b label115
.p2align 4
label423:
	mov r9, r0
.p2align 4
label115:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bhi label423
	mov r9, r10
	cmp r1, #10
	bhs label392
.p2align 4
label393:
	mov r10, r0
	mov r11, #0
	b label112
label387:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label393
	b label392
label13:
	ldr r8, [sp, #0]
	cmp r8, #0
	ble label14
	mov r0, r5
	mov r1, #0
	add r1, r1, #1
	cmp r8, r1
	bgt label94
	b label14
.p2align 4
label379:
	add r0, r0, #4
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r8, r1
	ble label14
.p2align 4
label94:
	add r2, r5, r1, lsl #2
	mov r3, r1
	ldr r7, [r0, #0]
	ldr r8, [r2, #0]
	cmp r7, r8
	ble label374
.p2align 4
label98:
	str r8, [r0, #0]
	str r7, [r2, #0]
	add r3, r3, #1
	ldr r8, [sp, #0]
	cmp r8, r3
	ble label379
.p2align 4
label100:
	add r2, r2, #4
	ldr r7, [r0, #0]
	ldr r8, [r2, #0]
	cmp r7, r8
	bgt label98
	add r3, r3, #1
	ldr r8, [sp, #0]
	cmp r8, r3
	bgt label100
	add r0, r0, #4
	add r1, r1, #1
	cmp r8, r1
	bgt label94
label14:
	movw r1, #:lower16:cnt
	movt r1, #:upper16:cnt
	ldr r8, [sp, #0]
	cmp r8, #0
	ble label166
	cmp r8, #3
	ble label310
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	mov r2, #0
	mov r0, r3
	mvn r3, #99
	b label85
.p2align 4
label89:
	add r0, r0, #16
.p2align 4
label85:
	ldr r7, [r0, #0]
	add r2, r2, #4
	cmp r3, r7
	add r8, r1, r7, lsl #2
	movle r3, r7
	ldr r9, [r8, #0]
	add r9, r9, #1
	str r9, [r8, #0]
	ldr r8, [r0, #4]
	mov r7, r8
	cmp r8, r3
	add r9, r1, r8, lsl #2
	movle r7, r3
	ldr r10, [r9, #0]
	add r10, r10, #1
	str r10, [r9, #0]
	ldr r9, [r0, #8]
	mov r3, r9
	cmp r9, r7
	add r10, r1, r9, lsl #2
	movle r3, r7
	ldr r11, [r10, #0]
	add r11, r11, #1
	str r11, [r10, #0]
	ldr r7, [r0, #12]
	cmp r3, r7
	movle r3, r7
	cmp r6, r2
	add r7, r1, r7, lsl #2
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
	bgt label89
	mov r7, r3
label74:
	ldr r8, [sp, #0]
	cmp r8, r2
	ble label15
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	add r0, r3, r2, lsl #2
	mov r3, r7
	b label79
label83:
	add r0, r0, #4
label79:
	ldr r7, [r0, #0]
	add r2, r2, #1
	cmp r3, r7
	add r8, r1, r7, lsl #2
	movle r3, r7
	ldr r9, [r8, #0]
	add r9, r9, #1
	str r9, [r8, #0]
	ldr r8, [sp, #0]
	cmp r8, r2
	bgt label83
label15:
	add r2, r3, #1
	cmn r3, #1
	ble label31
	mov r0, #0
	mov r8, r0
	ldr r7, [r1, #0]
	cmp r7, #0
	bne label22
	b label28
.p2align 4
label27:
	add r3, r3, #4
.p2align 4
label23:
	str r0, [r3, #0]
	subs r7, r7, #1
	add r8, r8, #1
	bne label27
	add r0, r0, #1
	cmp r2, r0
	ble label31
.p2align 4
label30:
	add r1, r1, #4
	ldr r7, [r1, #0]
	cmp r7, #0
	beq label28
.p2align 4
label22:
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	add r3, r3, r8, lsl #2
	b label23
label31:
	ldr r8, [sp, #0]
	cmp r8, #0
	ble label32
	mov r1, r4
	mov r7, #0
	add r0, r7, #1
	cmp r8, r0
	bgt label56
	b label237
.p2align 4
label305:
	add r2, r4, r3, lsl #2
	ldr r3, [r1, #0]
	ldr r7, [r2, #0]
	str r7, [r1, #0]
	str r3, [r2, #0]
	ldr r8, [sp, #0]
	cmp r8, r0
	ble label32
.p2align 4
label55:
	add r1, r1, #4
	mov r7, r0
	ldr r8, [sp, #0]
	add r0, r0, #1
	cmp r8, r0
	ble label237
.p2align 4
label56:
	add r2, r7, #4
	ldr r8, [sp, #0]
	cmp r8, r2
	ble label250
	add r2, r4, r0, lsl #2
	mov r3, r0
	b label58
.p2align 4
label62:
	add r2, r2, #16
.p2align 4
label58:
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
	bgt label62
	mov r9, r7
	ldr r8, [sp, #0]
	cmp r8, r3
	ble label459
.p2align 4
label67:
	add r2, r4, r3, lsl #2
	mov r7, r3
	mov r3, r9
.p2align 4
label68:
	ldr r8, [r2, #0]
	ldr r9, [r4, r3, lsl #2]
	cmp r8, r9
	ldr r8, [sp, #0]
	movlt r3, r7
	add r7, r7, #1
	cmp r8, r7
	ble label305
	add r2, r2, #4
	b label68
label237:
	add r2, r4, r7, lsl #2
	ldr r3, [r1, #0]
	ldr r7, [r2, #0]
	str r7, [r1, #0]
	str r3, [r2, #0]
	ldr r8, [sp, #0]
	cmp r8, r0
	bgt label55
label32:
	ldr r8, [sp, #0]
	cmp r8, #0
	beq label197
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	mov r1, #0
	mov r0, r3
	b label34
.p2align 4
label37:
	add r0, r0, #4
.p2align 4
label34:
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
	bne label37
label197:
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	mov r0, #0
label39:
	ldr r8, [sp, #0]
	subs r1, r0, r8
	beq label219
	ldr r1, [r3, #0]
	cmp r1, #0
	bne label225
	ldr r1, [r4, #0]
	cmp r1, #0
	bne label230
	add r0, r0, #1
	add r3, r3, #4
	add r4, r4, #4
	b label39
label392:
	mov r11, #0
	b label109
label28:
	add r0, r0, #1
	cmp r2, r0
	bgt label30
	b label31
label250:
	mov r9, r7
	mov r3, r0
	ldr r8, [sp, #0]
	mov r7, #0
	cmp r8, r0
	bgt label67
	add r2, r4, r7, lsl #2
	ldr r3, [r1, #0]
	ldr r7, [r2, #0]
	str r7, [r1, #0]
	str r3, [r2, #0]
	b label32
label225:
	mov r0, #1
label46:
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label374:
	add r3, r3, #1
	ldr r8, [sp, #0]
	cmp r8, r3
	bgt label100
	add r0, r0, #4
	add r1, r1, #1
	cmp r8, r1
	bgt label94
	b label14
.p2align 4
label459:
	add r2, r4, r7, lsl #2
	ldr r3, [r1, #0]
	ldr r7, [r2, #0]
	str r7, [r1, #0]
	str r3, [r2, #0]
	ldr r8, [sp, #0]
	cmp r8, r0
	bgt label55
	b label32
label219:
	mvn r0, #122
	b label46
label166:
	mvn r3, #99
	b label15
label230:
	mov r0, #2
	b label46
label134:
	mov r6, #0
	b label11
label310:
	mvn r7, #99
	mov r2, #0
	mov r3, r2
	b label74
label121:
	mov r4, #0
	b label5
