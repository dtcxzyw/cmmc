.arch armv7ve
.data
.bss
.align 8
ints:
	.zero	40000
.align 8
chas:
	.zero	40000
.align 8
get:
	.zero	40000
.align 8
get2:
	.zero	40000
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #12
	bl getch
	movw r4, #:lower16:get2
	cmp r0, #13
	mov r2, #0
	mov r1, #0
	movw r6, #:lower16:get
	movw r5, #:lower16:chas
	movw r8, #:lower16:ints
	movt r4, #:upper16:get2
	movwne r1, #1
	movt r6, #:upper16:get
	movt r5, #:upper16:chas
	movt r8, #:upper16:ints
	cmp r0, #10
	str r8, [sp, #0]
	movwne r2, #1
	ands r1, r1, r2
	beq label127
	mov r7, #0
.p2align 4
label2:
	str r0, [r6, r7, lsl #2]
	bl getch
	add r7, r7, #1
	mov r2, #0
	mov r1, #0
	cmp r0, #13
	movwne r1, #1
	cmp r0, #10
	movwne r2, #1
	ands r1, r1, r2
	bne label2
	mov r0, r7
	mov r1, #0
	mov r7, #1
	mov r3, r1
label7:
	cmp r0, r1
	bgt label11
	b label78
label653:
	mov r7, r3
	mov r3, r8
	cmp r2, #37
	beq label243
	mov r2, #32
	str r2, [r4, r7, lsl #2]
	add r7, r7, #1
	b label7
.p2align 4
label11:
	ldr r2, [r6, r1, lsl #2]
	add r1, r1, #1
	sub r8, r2, #48
	cmp r8, #10
	blo label77
	cmp r2, #40
	beq label13
	b label154
.p2align 4
label77:
	str r2, [r4, r7, lsl #2]
	add r7, r7, #1
	cmp r0, r1
	bgt label11
label78:
	cmp r3, #0
	bgt label108
label79:
	mov r0, #64
	str r0, [r4, r7, lsl #2]
	ldr r0, [r4, #4]
	cmp r0, #64
	bne label360
	b label107
label108:
	subs r0, r3, #4
	ble label112
label109:
	add r1, r5, r3, lsl #2
	mov r2, #32
	add r0, r4, r7, lsl #2
	sub r3, r3, #4
	ldr r6, [r1, #0]
	add r7, r7, #8
	cmp r3, #4
	str r2, [r0, #0]
	str r6, [r0, #4]
	ldr r6, [r1, #-4]
	str r2, [r0, #8]
	str r6, [r0, #12]
	ldr r6, [r1, #-8]
	str r2, [r0, #16]
	str r6, [r0, #20]
	ldr r1, [r1, #-12]
	str r2, [r0, #24]
	str r1, [r0, #28]
	bgt label109
label112:
	ldr r0, [r5, r3, lsl #2]
	add r1, r4, r7, lsl #2
	mov r2, #32
	subs r3, r3, #1
	add r7, r7, #2
	str r2, [r1, #0]
	str r0, [r1, #4]
	bgt label112
	b label79
.p2align 4
label154:
	cmp r2, #94
	beq label16
	cmp r2, #41
	beq label72
	b label664
.p2align 4
label173:
	mov r3, r8
.p2align 4
label65:
	ldr r8, [r5, r7, lsl #2]
	sub r11, r8, #47
	sub r10, r8, #45
	sub r9, r8, #43
	clz r11, r11
	clz r10, r10
	clz r9, r9
	lsr r11, r11, #5
	lsr r10, r10, #5
	lsr r9, r9, #5
	orr r9, r9, r10
	sub r10, r8, #42
	clz r10, r10
	lsr r10, r10, #5
	orr r10, r10, r11
	sub r11, r8, #94
	orr r9, r9, r10
	clz r11, r11
	sub r10, r8, #37
	lsr r11, r11, #5
	clz r10, r10
	lsr r10, r10, #5
	orr r10, r10, r11
	orrs r9, r9, r10
	beq label68
	add r9, r4, r3, lsl #2
	mov r10, #32
	subs r7, r7, #1
	add r3, r3, #2
	str r10, [r9, #0]
	str r8, [r9, #4]
	beq label68
	b label65
.p2align 4
label72:
	ldr r8, [r5, r3, lsl #2]
	sub r3, r3, #1
	cmp r8, #40
	beq label664
.p2align 4
label73:
	add r9, r4, r7, lsl #2
	mov r10, #32
	add r7, r7, #2
	str r10, [r9, #0]
	str r8, [r9, #4]
	ldr r8, [r5, r3, lsl #2]
	sub r3, r3, #1
	cmp r8, #40
	bne label73
	mov r8, r7
	mov r7, r3
	cmp r2, #43
	beq label173
	mov r3, r8
	cmp r2, #45
	bne label651
.p2align 4
label25:
	ldr r8, [r5, r7, lsl #2]
	sub r11, r8, #47
	sub r10, r8, #45
	sub r9, r8, #43
	clz r11, r11
	clz r10, r10
	clz r9, r9
	lsr r11, r11, #5
	lsr r10, r10, #5
	lsr r9, r9, #5
	orr r9, r9, r10
	sub r10, r8, #42
	clz r10, r10
	lsr r10, r10, #5
	orr r10, r10, r11
	sub r11, r8, #94
	orr r9, r9, r10
	clz r11, r11
	sub r10, r8, #37
	lsr r11, r11, #5
	clz r10, r10
	lsr r10, r10, #5
	orr r10, r10, r11
	orrs r9, r9, r10
	bne label28
.p2align 4
label193:
	add r7, r7, #1
	mov r8, #45
	str r8, [r5, r7, lsl #2]
	b label32
.p2align 4
label28:
	add r9, r4, r3, lsl #2
	mov r10, #32
	subs r7, r7, #1
	add r3, r3, #2
	str r10, [r9, #0]
	str r8, [r9, #4]
	beq label193
	b label25
.p2align 4
label32:
	cmp r2, #42
	bne label209
.p2align 4
label35:
	ldr r8, [r5, r7, lsl #2]
	sub r11, r8, #94
	sub r10, r8, #47
	sub r9, r8, #42
	clz r11, r11
	clz r10, r10
	clz r9, r9
	lsr r11, r11, #5
	lsr r10, r10, #5
	lsr r9, r9, #5
	orr r9, r9, r10
	sub r10, r8, #37
	clz r10, r10
	lsr r10, r10, #5
	orr r10, r10, r11
	orrs r9, r9, r10
	beq label222
	add r9, r4, r3, lsl #2
	mov r10, #32
	subs r7, r7, #1
	add r3, r3, #2
	str r10, [r9, #0]
	str r8, [r9, #4]
	beq label222
	b label35
label209:
	mov r8, r7
	cmp r2, #47
	bne label653
.p2align 4
label239:
	mov r7, r8
	b label58
.p2align 4
label243:
	mov r2, r7
.p2align 4
label51:
	ldr r7, [r5, r3, lsl #2]
	sub r10, r7, #94
	sub r9, r7, #47
	sub r8, r7, #42
	clz r10, r10
	clz r9, r9
	clz r8, r8
	lsr r10, r10, #5
	lsr r9, r9, #5
	lsr r8, r8, #5
	orr r8, r8, r9
	sub r9, r7, #37
	clz r9, r9
	lsr r9, r9, #5
	orr r9, r9, r10
	orrs r8, r8, r9
	beq label54
	add r8, r4, r2, lsl #2
	mov r9, #32
	subs r3, r3, #1
	add r2, r2, #2
	str r9, [r8, #0]
	str r7, [r8, #4]
	beq label54
	b label51
.p2align 4
label58:
	ldr r8, [r5, r7, lsl #2]
	sub r11, r8, #94
	sub r10, r8, #47
	sub r9, r8, #42
	clz r11, r11
	clz r10, r10
	clz r9, r9
	lsr r11, r11, #5
	lsr r10, r10, #5
	lsr r9, r9, #5
	orr r9, r9, r10
	sub r10, r8, #37
	clz r10, r10
	lsr r10, r10, #5
	orr r10, r10, r11
	orrs r9, r9, r10
	beq label283
	add r9, r4, r3, lsl #2
	mov r10, #32
	subs r7, r7, #1
	add r3, r3, #2
	str r10, [r9, #0]
	str r8, [r9, #4]
	bne label58
	add r8, r7, #1
	mov r7, #47
	str r7, [r5, r8, lsl #2]
	mov r7, r3
	mov r3, r8
	cmp r2, #37
	beq label243
	mov r2, #32
	str r2, [r4, r7, lsl #2]
	add r7, r7, #1
	cmp r0, r1
	bgt label11
	b label78
.p2align 4
label222:
	add r8, r7, #1
	mov r7, #42
	str r7, [r5, r8, lsl #2]
	cmp r2, #47
	beq label239
	mov r7, r3
	mov r3, r8
	cmp r2, #37
	beq label243
	mov r2, #32
	str r2, [r4, r7, lsl #2]
	add r7, r7, #1
	cmp r0, r1
	bgt label11
	b label78
label664:
	mov r8, r7
	mov r7, r3
	b label19
.p2align 4
label13:
	add r3, r3, #1
	mov r8, #40
	str r8, [r5, r3, lsl #2]
	cmp r2, #94
	bne label161
.p2align 4
label16:
	add r3, r3, #1
	mov r8, #94
	str r8, [r5, r3, lsl #2]
	cmp r2, #41
	beq label72
	b label664
label19:
	cmp r2, #43
	beq label173
label172:
	mov r3, r8
	cmp r2, #45
	beq label25
label651:
	cmp r2, #42
	beq label35
label652:
	mov r8, r7
	cmp r2, #47
	beq label239
	b label653
.p2align 4
label68:
	add r7, r7, #1
	mov r8, #43
	str r8, [r5, r7, lsl #2]
	cmp r2, #45
	beq label25
	cmp r2, #42
	beq label35
	b label652
label161:
	cmp r2, #41
	beq label72
	mov r8, r7
	mov r7, r3
	cmp r2, #43
	beq label173
	b label172
.p2align 4
label54:
	add r3, r3, #1
	mov r7, #37
	str r7, [r5, r3, lsl #2]
	mov r7, r2
	mov r2, #32
	str r2, [r4, r7, lsl #2]
	add r7, r7, #1
	cmp r0, r1
	bgt label11
	b label78
label45:
	cmp r2, #37
	beq label243
	b label242
label283:
	add r8, r7, #1
	mov r7, #47
	str r7, [r5, r8, lsl #2]
	mov r7, r3
	mov r3, r8
	b label45
label242:
	mov r2, #32
	str r2, [r4, r7, lsl #2]
	add r7, r7, #1
	cmp r0, r1
	bgt label11
	b label78
label127:
	mov r0, #0
	mov r1, #0
	mov r7, #1
	mov r3, r1
	b label7
label107:
	ldr r8, [sp, #0]
	ldr r0, [r8, #4]
	bl putint
	add sp, sp, #12
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label360:
	mov r2, #1
	mov r0, #0
.p2align 4
label81:
	ldr r3, [r4, r2, lsl #2]
	sub r9, r3, #94
	sub r8, r3, #47
	sub r6, r3, #42
	sub r1, r3, #43
	clz r9, r9
	clz r8, r8
	clz r6, r6
	clz r1, r1
	lsr r9, r9, #5
	lsr r8, r8, #5
	lsr r6, r6, #5
	lsr r7, r1, #5
	orr r8, r6, r8
	sub r1, r3, #45
	clz r1, r1
	lsr r5, r1, #5
	orr r1, r7, r5
	orr r1, r1, r8
	sub r8, r3, #37
	clz r8, r8
	lsr r8, r8, #5
	orr r8, r8, r9
	orrs r1, r1, r8
	add r1, r2, #1
	beq label100
	ldr r8, [sp, #0]
	cmp r7, #0
	mov r7, #0
	add r2, r8, r0, lsl #2
	ldr r8, [r2, #0]
	ldr r2, [r2, #-4]
	add r9, r8, r2
	movne r7, r9
	cmp r5, #0
	sub r9, r2, r8
	mov r5, r7
	movne r5, r9
	cmp r6, #0
	mul r7, r8, r2
	movne r5, r7
	cmp r3, #47
	beq label96
	cmp r3, #37
	bne label394
.p2align 4
label87:
	sdiv r5, r2, r8
	mls r5, r5, r8, r2
	cmp r3, #94
	bne label398
.p2align 4
label90:
	cmp r8, #0
	beq label402
	mov r3, r8
	mov r5, #1
.p2align 4
label91:
	mul r5, r2, r5
	subs r3, r3, #1
	bne label91
	sub r0, r0, #1
	ldr r8, [sp, #0]
	str r5, [r8, r0, lsl #2]
	ldr r2, [r4, r1, lsl #2]
	cmp r2, #64
	beq label107
.p2align 4
label420:
	mov r2, r1
	b label81
.p2align 4
label96:
	sdiv r5, r2, r8
	cmp r3, #37
	beq label87
	cmp r3, #94
	beq label90
	sub r0, r0, #1
	ldr r8, [sp, #0]
	str r5, [r8, r0, lsl #2]
	ldr r2, [r4, r1, lsl #2]
	cmp r2, #64
	bne label420
	b label107
label394:
	cmp r3, #94
	beq label90
	sub r0, r0, #1
	ldr r8, [sp, #0]
	str r5, [r8, r0, lsl #2]
	ldr r2, [r4, r1, lsl #2]
	cmp r2, #64
	bne label420
	b label107
label100:
	cmp r3, #32
	beq label97
	add r0, r0, #1
	sub r5, r3, #48
	ldr r8, [sp, #0]
	str r5, [r8, r0, lsl #2]
	ldr r3, [r4, r1, lsl #2]
	cmp r3, #32
	beq label434
	mov r3, #1
.p2align 4
label104:
	add r6, r2, r3
	add r5, r5, r5, lsl #2
	ldr r6, [r4, r6, lsl #2]
	lsl r5, r5, #1
	ldr r8, [sp, #0]
	sub r5, r5, #48
	add r5, r6, r5
	add r6, r1, r3
	str r5, [r8, r0, lsl #2]
	add r3, r3, #1
	ldr r6, [r4, r6, lsl #2]
	cmp r6, #32
	bne label104
	add r1, r2, r3
	b label97
label402:
	mov r5, #1
	sub r0, r0, #1
	ldr r8, [sp, #0]
	str r5, [r8, r0, lsl #2]
label97:
	ldr r2, [r4, r1, lsl #2]
	cmp r2, #64
	bne label420
	b label107
label398:
	sub r0, r0, #1
	ldr r8, [sp, #0]
	str r5, [r8, r0, lsl #2]
	ldr r2, [r4, r1, lsl #2]
	cmp r2, #64
	bne label420
	b label107
label434:
	mov r3, #1
	add r1, r2, r3
	b label97
