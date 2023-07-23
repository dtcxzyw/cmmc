.arch armv7ve
.data
.bss
.align 4
ints:
	.zero	40000
.align 4
chas:
	.zero	40000
.align 4
get:
	.zero	40000
.align 4
get2:
	.zero	40000
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #4
	bl getch
	cmp r0, #13
	movw r4, #:lower16:get2
	mov r1, #0
	mov r2, #0
	movw r7, #:lower16:get
	movw r6, #:lower16:chas
	movw r5, #:lower16:ints
	movt r4, #:upper16:get2
	movwne r1, #1
	movt r7, #:upper16:get
	movt r6, #:upper16:chas
	movt r5, #:upper16:ints
	cmp r0, #10
	movwne r2, #1
	ands r1, r1, r2
	bne label131
	mov r0, #0
	mov r3, #0
	mov r8, #1
	mov r1, r3
	cmp r0, r3
	bgt label8
	cmp r3, #0
	bgt label108
	mov r0, #64
	str r0, [r4, r8, lsl #2]
	ldr r0, [r4, #4]
	cmp r0, #64
	bne label350
	b label79
label131:
	mov r8, #0
	b label115
label79:
	ldr r0, [r5, #4]
	bl putint
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label103:
	cmp r6, #0
	bne label442
	mov r2, #1
	sub r1, r1, #1
	str r2, [r5, r1, lsl #2]
	add r0, r0, #1
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #64
	beq label79
label80:
	ldr r3, [r4, r0, lsl #2]
	sub r6, r3, #42
	sub r2, r3, #43
	clz r6, r6
	clz r2, r2
	lsr r8, r6, #5
	lsr r9, r2, #5
	sub r6, r3, #47
	sub r2, r3, #45
	clz r6, r6
	clz r2, r2
	lsr r6, r6, #5
	lsr r7, r2, #5
	orr r2, r9, r7
	orr r2, r2, r8
	orr r2, r2, r6
	sub r6, r3, #37
	clz r6, r6
	lsr r6, r6, #5
	orr r2, r2, r6
	sub r6, r3, #94
	clz r6, r6
	lsr r6, r6, #5
	orrs r2, r2, r6
	bne label95
	cmp r3, #32
	bne label89
	add r0, r0, #1
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #64
	bne label80
	b label79
label95:
	add r2, r5, r1, lsl #2
	ldr r6, [r5, r1, lsl #2]
	cmp r9, #0
	mov r9, #0
	ldr r2, [r2, #-4]
	add r10, r6, r2
	movne r9, r10
	cmp r7, #0
	sub r10, r2, r6
	mov r7, r9
	movne r7, r10
	cmp r8, #0
	mul r9, r6, r2
	movne r7, r9
	cmp r3, #47
	beq label96
	cmp r3, #37
	beq label107
	cmp r3, #94
	beq label103
	mov r2, r7
	sub r1, r1, #1
	str r7, [r5, r1, lsl #2]
	add r0, r0, #1
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #64
	bne label80
	b label79
label442:
	mov r3, #1
label104:
	mul r3, r2, r3
	subs r6, r6, #1
	bne label104
	mov r2, r3
	sub r1, r1, #1
	str r3, [r5, r1, lsl #2]
	add r0, r0, #1
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #64
	bne label80
	b label79
label134:
	cmp r3, #0
	bgt label108
	b label605
label8:
	ldr r2, [r7, r1, lsl #2]
	sub r9, r2, #48
	cmp r9, #10
	blo label75
	cmp r2, #40
	beq label74
	cmp r2, #94
	beq label73
	cmp r2, #41
	beq label14
	cmp r2, #43
	beq label23
	mov r9, r8
	mov r8, r3
	cmp r2, #45
	beq label208
	mov r3, r9
	cmp r2, #42
	beq label66
	cmp r2, #47
	beq label46
	cmp r2, #37
	beq label274
	mov r2, r8
	mov r8, #32
	add r1, r1, #1
	str r8, [r4, r9, lsl #2]
	add r8, r9, #1
	mov r3, r2
	cmp r0, r1
	bgt label8
	b label134
label74:
	add r3, r3, #1
	mov r9, #40
	str r9, [r6, r3, lsl #2]
	cmp r2, #94
	beq label73
	cmp r2, #41
	beq label14
	cmp r2, #43
	beq label23
	mov r9, r8
	mov r8, r3
	cmp r2, #45
	beq label208
	mov r3, r9
	cmp r2, #42
	beq label66
	cmp r2, #47
	beq label46
	cmp r2, #37
	beq label274
	mov r2, r8
	mov r8, #32
	add r1, r1, #1
	str r8, [r4, r9, lsl #2]
	add r8, r9, #1
	mov r3, r2
	cmp r0, r1
	bgt label8
	cmp r2, #0
	bgt label108
	mov r0, #64
	str r0, [r4, r8, lsl #2]
	ldr r0, [r4, #4]
	cmp r0, #64
	bne label350
	b label79
label75:
	str r2, [r4, r8, lsl #2]
	add r1, r1, #1
	add r8, r8, #1
	cmp r0, r1
	bgt label8
	cmp r3, #0
	bgt label108
	mov r0, #64
	str r0, [r4, r8, lsl #2]
	ldr r0, [r4, #4]
	cmp r0, #64
	bne label350
	b label79
label15:
	cmp r9, #40
	bne label19
	cmp r2, #43
	beq label23
	mov r9, r8
	mov r8, r3
	cmp r2, #45
	beq label208
	mov r3, r9
	cmp r2, #42
	beq label66
	cmp r2, #47
	beq label46
	cmp r2, #37
	beq label274
	mov r2, r8
	mov r8, #32
	add r1, r1, #1
	str r8, [r4, r9, lsl #2]
	add r8, r9, #1
	mov r3, r2
	cmp r0, r1
	bgt label8
	cmp r2, #0
	bgt label108
	mov r0, #64
	str r0, [r4, r8, lsl #2]
	ldr r0, [r4, #4]
	cmp r0, #64
	bne label350
	b label79
label19:
	add r10, r4, r8, lsl #2
	mov r11, #32
	str r11, [r4, r8, lsl #2]
	add r8, r8, #2
	str r9, [r10, #4]
	ldr r9, [r6, r3, lsl #2]
	sub r3, r3, #1
	b label15
label23:
	ldr r9, [r6, r3, lsl #2]
	sub r11, r9, #45
	sub r10, r9, #43
	clz r11, r11
	clz r10, r10
	lsr r11, r11, #5
	lsr r10, r10, #5
	orr r10, r10, r11
	sub r11, r9, #42
	clz r11, r11
	lsr r11, r11, #5
	orr r10, r10, r11
	sub r11, r9, #47
	clz r11, r11
	lsr r11, r11, #5
	orr r10, r10, r11
	sub r11, r9, #37
	clz r11, r11
	lsr r11, r11, #5
	orr r10, r10, r11
	sub r11, r9, #94
	clz r11, r11
	lsr r11, r11, #5
	orrs r10, r10, r11
	bne label26
	add r3, r3, #1
	mov r9, #43
	str r9, [r6, r3, lsl #2]
	mov r9, r8
	mov r8, r3
	cmp r2, #45
	beq label208
	mov r3, r9
	cmp r2, #42
	beq label66
	cmp r2, #47
	beq label46
	cmp r2, #37
	beq label274
	mov r2, r8
	mov r8, #32
	add r1, r1, #1
	str r8, [r4, r9, lsl #2]
	add r8, r9, #1
	mov r3, r2
	cmp r0, r1
	bgt label8
	cmp r2, #0
	bgt label108
	mov r0, #64
	str r0, [r4, r8, lsl #2]
	ldr r0, [r4, #4]
	cmp r0, #64
	bne label350
	b label79
label26:
	add r10, r4, r8, lsl #2
	mov r11, #32
	subs r3, r3, #1
	str r11, [r4, r8, lsl #2]
	add r8, r8, #2
	str r9, [r10, #4]
	beq label27
	b label23
label89:
	add r1, r1, #1
	sub r6, r3, #48
	add r3, r0, #1
	str r6, [r5, r1, lsl #2]
	ldr r2, [r4, r3, lsl #2]
	cmp r2, #32
	bne label393
	mov r2, #1
	add r0, r0, r2
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #64
	bne label80
	b label79
label393:
	mov r2, #1
label90:
	add r7, r0, r2
	add r6, r6, r6, lsl #2
	ldr r7, [r4, r7, lsl #2]
	lsl r6, r6, #1
	sub r6, r6, #48
	add r6, r7, r6
	add r7, r3, r2
	str r6, [r5, r1, lsl #2]
	add r2, r2, #1
	ldr r7, [r4, r7, lsl #2]
	cmp r7, #32
	bne label90
	add r0, r0, r2
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #64
	bne label80
	b label79
label96:
	sdiv r7, r2, r6
	cmp r3, #37
	beq label107
	cmp r3, #94
	beq label103
	mov r2, r7
	sub r1, r1, #1
	str r7, [r5, r1, lsl #2]
	add r0, r0, #1
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #64
	bne label80
	b label79
label107:
	sdiv r7, r2, r6
	mls r7, r7, r6, r2
	cmp r3, #94
	beq label103
	mov r2, r7
	sub r1, r1, #1
	str r7, [r5, r1, lsl #2]
	add r0, r0, #1
	ldr r2, [r4, r0, lsl #2]
	cmp r2, #64
	bne label80
	b label79
label46:
	ldr r9, [r6, r8, lsl #2]
	sub r11, r9, #47
	sub r10, r9, #42
	clz r11, r11
	clz r10, r10
	lsr r11, r11, #5
	lsr r10, r10, #5
	orr r10, r10, r11
	sub r11, r9, #37
	clz r11, r11
	lsr r11, r11, #5
	orr r10, r10, r11
	sub r11, r9, #94
	clz r11, r11
	lsr r11, r11, #5
	orrs r10, r10, r11
	bne label49
	add r8, r8, #1
	mov r9, #47
	str r9, [r6, r8, lsl #2]
	cmp r2, #37
	beq label274
	mov r2, r8
	mov r8, #32
	add r1, r1, #1
	str r8, [r4, r3, lsl #2]
	add r8, r3, #1
	mov r3, r2
	cmp r0, r1
	bgt label8
	cmp r2, #0
	bgt label108
	mov r0, #64
	str r0, [r4, r8, lsl #2]
	ldr r0, [r4, #4]
	cmp r0, #64
	bne label350
	b label79
label49:
	add r10, r4, r3, lsl #2
	mov r11, #32
	subs r8, r8, #1
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	beq label50
	b label46
label108:
	subs r0, r3, #4
	bgt label111
	ldr r0, [r6, r3, lsl #2]
	add r1, r4, r8, lsl #2
	mov r2, #32
	subs r3, r3, #1
	str r2, [r4, r8, lsl #2]
	add r8, r8, #2
	str r0, [r1, #4]
	bgt label112
	mov r0, #64
	str r0, [r4, r8, lsl #2]
	ldr r0, [r4, #4]
	cmp r0, #64
	bne label350
	b label79
label111:
	add r2, r6, r3, lsl #2
	ldr r7, [r6, r3, lsl #2]
	add r1, r4, r8, lsl #2
	mov r3, #32
	str r3, [r4, r8, lsl #2]
	add r8, r8, #8
	str r7, [r1, #4]
	ldr r7, [r2, #-4]
	str r3, [r1, #8]
	str r7, [r1, #12]
	ldr r7, [r2, #-8]
	str r3, [r1, #16]
	str r7, [r1, #20]
	ldr r2, [r2, #-12]
	str r3, [r1, #24]
	mov r3, r0
	str r2, [r1, #28]
	b label108
label50:
	add r8, r8, #1
	mov r9, #47
	str r9, [r6, r8, lsl #2]
	cmp r2, #37
	beq label274
	mov r2, r8
	mov r8, #32
	add r1, r1, #1
	str r8, [r4, r3, lsl #2]
	add r8, r3, #1
	mov r3, r2
	cmp r0, r1
	bgt label8
	cmp r2, #0
	bgt label108
	mov r0, #64
	str r0, [r4, r8, lsl #2]
	ldr r0, [r4, #4]
	cmp r0, #64
	bne label350
	b label79
label274:
	mov r2, r3
	mov r3, r8
label59:
	ldr r8, [r6, r3, lsl #2]
	sub r10, r8, #47
	sub r9, r8, #42
	clz r10, r10
	clz r9, r9
	lsr r10, r10, #5
	lsr r9, r9, #5
	orr r9, r9, r10
	sub r10, r8, #37
	clz r10, r10
	lsr r10, r10, #5
	orr r9, r9, r10
	sub r10, r8, #94
	clz r10, r10
	lsr r10, r10, #5
	orrs r9, r9, r10
	bne label62
	mov r8, r2
	add r2, r3, #1
	mov r3, #37
	str r3, [r6, r2, lsl #2]
	mov r3, r8
	mov r8, #32
	add r1, r1, #1
	str r8, [r4, r3, lsl #2]
	add r8, r3, #1
	mov r3, r2
	cmp r0, r1
	bgt label8
	cmp r2, #0
	bgt label108
	mov r0, #64
	str r0, [r4, r8, lsl #2]
	ldr r0, [r4, #4]
	cmp r0, #64
	bne label350
	b label79
label62:
	add r9, r4, r2, lsl #2
	mov r10, #32
	subs r3, r3, #1
	str r10, [r4, r2, lsl #2]
	str r8, [r9, #4]
	add r8, r2, #2
	beq label63
	mov r2, r8
	b label59
label14:
	ldr r9, [r6, r3, lsl #2]
	sub r3, r3, #1
	b label15
label27:
	add r3, r3, #1
	mov r9, #43
	str r9, [r6, r3, lsl #2]
	mov r9, r8
	mov r8, r3
	cmp r2, #45
	beq label208
	mov r3, r9
	cmp r2, #42
	beq label66
	cmp r2, #47
	beq label46
	cmp r2, #37
	beq label274
	mov r2, r8
	mov r8, #32
	add r1, r1, #1
	str r8, [r4, r9, lsl #2]
	add r8, r9, #1
	mov r3, r2
	cmp r0, r1
	bgt label8
	cmp r2, #0
	bgt label108
	mov r0, #64
	str r0, [r4, r8, lsl #2]
	ldr r0, [r4, #4]
	cmp r0, #64
	bne label350
	b label79
label208:
	mov r3, r9
label33:
	ldr r9, [r6, r8, lsl #2]
	sub r11, r9, #45
	sub r10, r9, #43
	clz r11, r11
	clz r10, r10
	lsr r11, r11, #5
	lsr r10, r10, #5
	orr r10, r10, r11
	sub r11, r9, #42
	clz r11, r11
	lsr r11, r11, #5
	orr r10, r10, r11
	sub r11, r9, #47
	clz r11, r11
	lsr r11, r11, #5
	orr r10, r10, r11
	sub r11, r9, #37
	clz r11, r11
	lsr r11, r11, #5
	orr r10, r10, r11
	sub r11, r9, #94
	clz r11, r11
	lsr r11, r11, #5
	orrs r10, r10, r11
	bne label36
	add r8, r8, #1
	mov r9, #45
	str r9, [r6, r8, lsl #2]
	cmp r2, #42
	beq label66
	cmp r2, #47
	beq label46
	cmp r2, #37
	beq label274
	mov r2, r8
	mov r8, #32
	add r1, r1, #1
	str r8, [r4, r3, lsl #2]
	add r8, r3, #1
	mov r3, r2
	cmp r0, r1
	bgt label8
	cmp r2, #0
	bgt label108
	mov r0, #64
	str r0, [r4, r8, lsl #2]
	ldr r0, [r4, #4]
	cmp r0, #64
	bne label350
	b label79
label36:
	add r10, r4, r3, lsl #2
	mov r11, #32
	subs r8, r8, #1
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	beq label37
	b label33
label66:
	ldr r9, [r6, r8, lsl #2]
	sub r11, r9, #47
	sub r10, r9, #42
	clz r11, r11
	clz r10, r10
	lsr r11, r11, #5
	lsr r10, r10, #5
	orr r10, r10, r11
	sub r11, r9, #37
	clz r11, r11
	lsr r11, r11, #5
	orr r10, r10, r11
	sub r11, r9, #94
	clz r11, r11
	lsr r11, r11, #5
	orrs r10, r10, r11
	bne label72
	add r8, r8, #1
	mov r9, #42
	str r9, [r6, r8, lsl #2]
	cmp r2, #47
	beq label46
	cmp r2, #37
	beq label274
	mov r2, r8
	mov r8, #32
	add r1, r1, #1
	str r8, [r4, r3, lsl #2]
	add r8, r3, #1
	mov r3, r2
	cmp r0, r1
	bgt label8
	cmp r2, #0
	bgt label108
	mov r0, #64
	str r0, [r4, r8, lsl #2]
	ldr r0, [r4, #4]
	cmp r0, #64
	bne label350
	b label79
label69:
	add r8, r8, #1
	mov r9, #42
	str r9, [r6, r8, lsl #2]
	cmp r2, #47
	beq label46
	cmp r2, #37
	beq label274
	mov r2, r8
	mov r8, #32
	add r1, r1, #1
	str r8, [r4, r3, lsl #2]
	add r8, r3, #1
	mov r3, r2
	cmp r0, r1
	bgt label8
	cmp r2, #0
	bgt label108
	mov r0, #64
	str r0, [r4, r8, lsl #2]
	ldr r0, [r4, #4]
	cmp r0, #64
	bne label350
	b label79
label72:
	add r10, r4, r3, lsl #2
	mov r11, #32
	subs r8, r8, #1
	str r11, [r4, r3, lsl #2]
	add r3, r3, #2
	str r9, [r10, #4]
	beq label69
	b label66
label73:
	add r3, r3, #1
	mov r9, #94
	str r9, [r6, r3, lsl #2]
	cmp r2, #41
	beq label14
	cmp r2, #43
	beq label23
	mov r9, r8
	mov r8, r3
	cmp r2, #45
	beq label208
	mov r3, r9
	cmp r2, #42
	beq label66
	cmp r2, #47
	beq label46
	cmp r2, #37
	beq label274
	mov r2, r8
	mov r8, #32
	add r1, r1, #1
	str r8, [r4, r9, lsl #2]
	add r8, r9, #1
	mov r3, r2
	cmp r0, r1
	bgt label8
	cmp r2, #0
	bgt label108
	mov r0, #64
	str r0, [r4, r8, lsl #2]
	ldr r0, [r4, #4]
	cmp r0, #64
	bne label350
	b label79
label37:
	add r8, r8, #1
	mov r9, #45
	str r9, [r6, r8, lsl #2]
	cmp r2, #42
	beq label66
	cmp r2, #47
	beq label46
	cmp r2, #37
	beq label274
	mov r2, r8
	mov r8, #32
	add r1, r1, #1
	str r8, [r4, r3, lsl #2]
	add r8, r3, #1
	mov r3, r2
	cmp r0, r1
	bgt label8
	cmp r2, #0
	bgt label108
	mov r0, #64
	str r0, [r4, r8, lsl #2]
	ldr r0, [r4, #4]
	cmp r0, #64
	beq label79
label350:
	mov r0, #1
	mov r1, #0
	b label80
label63:
	add r2, r3, #1
	mov r3, #37
	str r3, [r6, r2, lsl #2]
	mov r3, r8
	mov r8, #32
	add r1, r1, #1
	str r8, [r4, r3, lsl #2]
	add r8, r3, #1
	mov r3, r2
	cmp r0, r1
	bgt label8
	cmp r2, #0
	bgt label108
	mov r0, #64
	str r0, [r4, r8, lsl #2]
	ldr r0, [r4, #4]
	cmp r0, #64
	bne label350
	b label79
label605:
	mov r0, #64
	str r0, [r4, r8, lsl #2]
	ldr r0, [r4, #4]
	cmp r0, #64
	bne label350
	b label79
label112:
	ldr r0, [r6, r3, lsl #2]
	add r1, r4, r8, lsl #2
	mov r2, #32
	subs r3, r3, #1
	str r2, [r4, r8, lsl #2]
	add r8, r8, #2
	str r0, [r1, #4]
	bgt label112
	mov r0, #64
	str r0, [r4, r8, lsl #2]
	ldr r0, [r4, #4]
	cmp r0, #64
	bne label350
	b label79
label115:
	str r0, [r7, r8, lsl #2]
	bl getch
	add r8, r8, #1
	mov r2, #0
	mov r1, #0
	cmp r0, #13
	movwne r1, #1
	cmp r0, #10
	movwne r2, #1
	ands r1, r1, r2
	bne label115
	mov r0, r8
	mov r3, #0
	mov r8, #1
	mov r1, r3
	cmp r0, r3
	bgt label8
	cmp r3, #0
	bgt label108
	mov r0, #64
	str r0, [r4, r8, lsl #2]
	ldr r0, [r4, #4]
	cmp r0, #64
	bne label350
	b label79
