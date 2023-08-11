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
	bls label120
	mov r4, r0
	mov r5, #0
	b label2
.p2align 4
label129:
	mov r4, r0
.p2align 4
label2:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r5, #1
	cmp r1, #9
	bhi label129
	mov r4, r5
label5:
	sub r1, r0, #48
	cmp r1, #10
	bhs label133
	mov r5, r0
	mov r6, #0
	b label8
.p2align 4
label143:
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
	blo label143
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
	beq label156
	mov r7, r5
	mov r8, #0
	b label14
.p2align 4
label177:
	mov r10, r0
.p2align 4
label20:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	blo label177
.p2align 4
label23:
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
	beq label156
	add r7, r7, #4
	mov r8, r0
.p2align 4
label14:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label162
	mov r9, r0
	mov r10, #0
	b label26
.p2align 4
label198:
	mov r9, r0
.p2align 4
label26:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bhi label198
	mov r9, r10
	cmp r1, #10
	bhs label167
.p2align 4
label168:
	mov r10, r0
	mov r11, #0
	b label20
label156:
	mov r0, r5
	mov r1, #0
label30:
	ldr r8, [sp, #0]
	cmp r8, r1
	bgt label107
	b label33
.p2align 4
label115:
	add r0, r0, #4
	ldr r8, [sp, #0]
	cmp r8, r1
	ble label33
.p2align 4
label107:
	add r1, r1, #1
	ldr r8, [sp, #0]
	cmp r8, r1
	ble label108
	add r2, r5, r1, lsl #2
	mov r3, r1
	ldr r7, [r0, #0]
	ldr r8, [r2, #0]
	cmp r7, r8
	ble label409
.p2align 4
label113:
	str r8, [r0, #0]
	str r7, [r2, #0]
	add r3, r3, #1
	ldr r8, [sp, #0]
	cmp r8, r3
	ble label115
.p2align 4
label116:
	add r2, r2, #4
	ldr r7, [r0, #0]
	ldr r8, [r2, #0]
	cmp r7, r8
	bgt label113
	add r3, r3, #1
	ldr r8, [sp, #0]
	cmp r8, r3
	bgt label116
	add r0, r0, #4
	cmp r8, r1
	bgt label107
	b label33
label162:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label168
	b label167
label33:
	movw r2, #:lower16:cnt
	movt r2, #:upper16:cnt
	ldr r8, [sp, #0]
	cmp r8, #0
	ble label207
	cmp r8, #3
	ble label344
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	mov r1, #0
	mov r0, r3
	mvn r3, #99
	b label102
.p2align 4
label106:
	add r0, r0, #16
.p2align 4
label102:
	ldr r7, [r0, #0]
	add r1, r1, #4
	cmp r3, r7
	add r8, r2, r7, lsl #2
	movle r3, r7
	ldr r9, [r8, #0]
	add r9, r9, #1
	str r9, [r8, #0]
	ldr r8, [r0, #4]
	mov r7, r8
	cmp r8, r3
	add r9, r2, r8, lsl #2
	movle r7, r3
	ldr r10, [r9, #0]
	add r10, r10, #1
	str r10, [r9, #0]
	ldr r9, [r0, #8]
	mov r3, r9
	cmp r9, r7
	add r10, r2, r9, lsl #2
	movle r3, r7
	ldr r11, [r10, #0]
	add r11, r11, #1
	str r11, [r10, #0]
	ldr r7, [r0, #12]
	cmp r3, r7
	movle r3, r7
	cmp r6, r1
	add r7, r2, r7, lsl #2
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
	bgt label106
	mov r7, r3
label91:
	ldr r8, [sp, #0]
	cmp r8, r1
	ble label348
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	add r0, r3, r1, lsl #2
	mov r3, r7
	b label96
label100:
	add r0, r0, #4
label96:
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
	bgt label100
label348:
	mov r1, r3
	mov r8, #0
	mov r0, r8
label36:
	cmp r1, r0
	bge label40
	b label211
.p2align 4
label46:
	add r3, r3, #4
.p2align 4
label42:
	str r0, [r3, #0]
	subs r7, r7, #1
	add r8, r8, #1
	bne label46
	add r0, r0, #1
	add r2, r2, #4
	cmp r1, r0
	blt label211
.p2align 4
label40:
	ldr r7, [r2, #0]
	cmp r7, #0
	beq label216
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	add r3, r3, r8, lsl #2
	b label42
label211:
	mov r0, r4
	mov r7, #0
	ldr r8, [sp, #0]
	cmp r8, r7
	bgt label53
	b label73
.p2align 4
label66:
	add r2, r2, #4
.p2align 4
label62:
	ldr r8, [r2, #0]
	ldr r9, [r4, r3, lsl #2]
	cmp r8, r9
	ldr r8, [sp, #0]
	movlt r3, r7
	add r7, r7, #1
	cmp r8, r7
	bgt label66
	add r2, r4, r3, lsl #2
	ldr r3, [r0, #0]
	ldr r7, [r2, #0]
	str r7, [r0, #0]
	mov r7, r1
	add r0, r0, #4
	str r3, [r2, #0]
	cmp r8, r1
	ble label73
.p2align 4
label53:
	add r1, r7, #1
	ldr r8, [sp, #0]
	cmp r8, r1
	ble label236
	add r2, r7, #4
	cmp r8, r2
	ble label246
	add r2, r4, r1, lsl #2
	mov r3, r1
	b label68
.p2align 4
label72:
	add r2, r2, #16
.p2align 4
label68:
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
	bgt label72
	mov r9, r7
	ldr r8, [sp, #0]
	cmp r8, r3
	ble label453
.p2align 4
label61:
	add r2, r4, r3, lsl #2
	mov r7, r3
	mov r3, r9
	b label62
label246:
	mov r9, r7
	mov r3, r1
	mov r7, #0
	ldr r8, [sp, #0]
	cmp r8, r1
	bgt label61
	add r2, r4, r7, lsl #2
	ldr r3, [r0, #0]
	ldr r7, [r2, #0]
	str r7, [r0, #0]
	mov r7, r1
	add r0, r0, #4
	str r3, [r2, #0]
	b label73
label108:
	add r0, r0, #4
	b label30
label73:
	ldr r8, [sp, #0]
	cmp r8, #0
	beq label305
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	mov r1, #0
	mov r0, r3
	b label75
.p2align 4
label79:
	add r0, r0, #4
.p2align 4
label75:
	ldr r3, [r0, #0]
	add r6, r4, r1, lsl #2
	ldr r2, [r5, r1, lsl #2]
	add r1, r1, #1
	sub r3, r3, r2
	str r3, [r0, #0]
	ldr r7, [r6, #0]
	sub r3, r7, r3
	sub r2, r3, r2
	str r2, [r6, #0]
	ldr r8, [sp, #0]
	subs r2, r8, r1
	bne label79
label305:
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	mov r0, #0
label81:
	ldr r8, [sp, #0]
	subs r1, r0, r8
	beq label327
	ldr r1, [r3, #0]
	cmp r1, #0
	beq label88
	mov r0, #1
label85:
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label236:
	add r2, r4, r7, lsl #2
	ldr r3, [r0, #0]
	ldr r7, [r2, #0]
	str r7, [r0, #0]
	mov r7, r1
	add r0, r0, #4
	str r3, [r2, #0]
	ldr r8, [sp, #0]
	cmp r8, r1
	bgt label53
	b label73
label167:
	mov r11, #0
	b label23
label88:
	ldr r1, [r4, #0]
	cmp r1, #0
	bne label338
	add r0, r0, #1
	add r3, r3, #4
	add r4, r4, #4
	b label81
.p2align 4
label409:
	add r3, r3, #1
	ldr r8, [sp, #0]
	cmp r8, r3
	bgt label116
	add r0, r0, #4
	cmp r8, r1
	bgt label107
	b label33
.p2align 4
label453:
	add r2, r4, r7, lsl #2
	ldr r3, [r0, #0]
	ldr r7, [r2, #0]
	str r7, [r0, #0]
	mov r7, r1
	add r0, r0, #4
	str r3, [r2, #0]
	ldr r8, [sp, #0]
	cmp r8, r1
	bgt label53
	b label73
label207:
	mvn r1, #99
	mov r8, #0
	mov r0, r8
	b label36
label344:
	mvn r7, #99
	mov r1, #0
	mov r3, r1
	b label91
label133:
	mov r6, #0
	b label11
label338:
	mov r0, #2
	b label85
label216:
	add r0, r0, #1
	add r2, r2, #4
	b label36
label327:
	mvn r0, #122
	b label85
label120:
	mov r4, #0
	b label5
