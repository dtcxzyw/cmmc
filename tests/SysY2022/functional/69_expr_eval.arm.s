.arch armv7ve
.data
.bss
.align 4
oprs:
	.zero	1024
.align 4
ops:
	.zero	1024
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #12
	bl getint
	mov r4, r0
	bl getch
	movw r3, #:lower16:oprs
	movt r3, #:upper16:oprs
	str r3, [sp, #0]
	movw r3, #:lower16:ops
	movt r3, #:upper16:ops
	str r3, [sp, #4]
label2:
	bl getch
	sub r2, r0, #10
	sub r1, r0, #32
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	bne label2
	sub r5, r0, #48
	cmp r5, #10
	blo label103
	b label102
label8:
	mov r6, #0
label13:
	add r2, r6, #4
	cmp r2, #256
	blt label100
	mov r2, #0
	ldr r3, [sp, #0]
	str r2, [r3, r6, lsl #2]
	add r6, r6, #1
	cmp r6, #256
	blt label15
	mov r6, #0
	add r2, r6, #4
	cmp r2, #256
	blt label99
	mov r2, #0
	ldr r3, [sp, #4]
	str r2, [r3, r6, lsl #2]
	add r6, r6, #1
	cmp r6, #256
	blt label19
	cmp r0, #0
	bne label154
label587:
	mov r6, r1
	b label26
label100:
	ldr r3, [sp, #0]
	mov r8, #0
	add r7, r3, r6, lsl #2
	str r8, [r3, r6, lsl #2]
	mov r6, r2
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	b label13
label102:
	bl getch
	mov r5, #0
	mov r1, r0
	mov r0, #1
	cmp r4, #0
	bne label8
	b label101
label103:
	bl getch
	sub r1, r0, #48
	cmp r1, #10
	blo label105
	mov r1, r0
	mov r0, #0
	cmp r4, #0
	bne label8
	b label101
label105:
	add r0, r5, r5, lsl #2
	add r5, r1, r0, lsl #1
	b label103
label26:
	ldr r3, [sp, #0]
	sub r1, r6, #10
	clz r1, r1
	lsr r1, r1, #5
	ldr r0, [r3, #0]
	add r0, r0, #1
	str r0, [r3, #0]
	str r5, [r3, r0, lsl #2]
	sub r0, r6, #32
	clz r0, r0
	lsr r0, r0, #5
	orrs r0, r0, r1
	bne label93
	sub r0, r6, #48
	cmp r0, #10
	blo label169
label31:
	bl getch
	sub r2, r6, #45
	sub r1, r6, #43
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	beq label62
	mov r7, #10
	cmp r7, #0
	beq label66
	sub r1, r0, #32
	sub r2, r0, #10
	clz r1, r1
	clz r2, r2
	lsr r1, r1, #5
	lsr r2, r2, #5
	orrs r1, r1, r2
	bne label35
	sub r0, r0, #48
	cmp r0, #10
	blo label198
	b label61
label35:
	bl getch
	sub r2, r0, #10
	sub r1, r0, #32
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	bne label35
	sub r0, r0, #48
	cmp r0, #10
	bhs label61
label198:
	mov r5, r0
	b label58
label42:
	ldr r3, [sp, #4]
	ldr r2, [r3, r8, lsl #2]
	sub r9, r2, #45
	sub r3, r2, #43
	clz r9, r9
	clz r3, r3
	lsr r9, r9, #5
	lsr r3, r3, #5
	orrs r3, r3, r9
	bne label43
	sub r3, r2, #42
	sub r9, r2, #47
	cmp r7, #0
	clz r3, r3
	clz r9, r9
	lsr r3, r3, #5
	lsr r9, r9, #5
	orr r3, r3, r9
	sub r9, r2, #37
	clz r9, r9
	lsr r9, r9, #5
	orr r3, r3, r9
	mov r9, #0
	movwle r9, #1
	orrs r3, r3, r9
	bne label45
	add r2, r8, #1
	ldr r3, [sp, #4]
	cmp r1, #0
	str r2, [r3, #0]
	str r6, [r3, r2, lsl #2]
	bne label507
label269:
	mov r6, r0
	b label26
label58:
	bl getch
	sub r1, r0, #48
	cmp r1, #10
	blo label60
	mov r1, #0
	ldr r3, [sp, #4]
	ldr r8, [r3, #0]
	cmp r8, #0
	bne label42
	add r2, r8, #1
	cmp r1, #0
	str r2, [r3, #0]
	str r6, [r3, r2, lsl #2]
	beq label269
	b label507
label60:
	add r0, r5, r5, lsl #2
	add r5, r1, r0, lsl #1
	b label58
label61:
	bl getch
	mov r1, #1
	ldr r3, [sp, #4]
	ldr r8, [r3, #0]
	cmp r8, #0
	bne label42
	add r2, r8, #1
	cmp r1, #0
	str r2, [r3, #0]
	str r6, [r3, r2, lsl #2]
	beq label269
	b label507
label62:
	sub r1, r6, #42
	sub r2, r6, #47
	mov r7, #0
	clz r1, r1
	clz r2, r2
	lsr r1, r1, #5
	lsr r2, r2, #5
	orr r1, r1, r2
	sub r2, r6, #37
	clz r2, r2
	lsr r2, r2, #5
	orrs r1, r1, r2
	mov r1, #20
	movne r7, r1
	cmp r7, #0
	beq label66
	sub r1, r0, #32
	sub r2, r0, #10
	clz r1, r1
	clz r2, r2
	lsr r1, r1, #5
	lsr r2, r2, #5
	orrs r1, r1, r2
	bne label35
	sub r0, r0, #48
	cmp r0, #10
	blo label198
	b label61
label66:
	sub r1, r0, #32
	sub r2, r0, #10
	clz r1, r1
	clz r2, r2
	lsr r1, r1, #5
	lsr r2, r2, #5
	orrs r1, r1, r2
	bne label92
	sub r0, r0, #48
	cmp r0, #10
	blo label307
	b label71
label169:
	mov r5, r0
label63:
	bl getch
	sub r1, r0, #48
	cmp r1, #10
	blo label65
	sub r1, r0, #32
	sub r2, r0, #10
	clz r1, r1
	clz r2, r2
	lsr r1, r1, #5
	lsr r2, r2, #5
	orrs r1, r1, r2
	bne label92
	sub r0, r0, #48
	cmp r0, #10
	blo label307
	b label71
label65:
	add r0, r5, r5, lsl #2
	add r5, r1, r0, lsl #1
	b label63
label307:
	mov r5, r0
	b label89
label71:
	bl getch
	mov r2, #1
	mov r1, r5
	ldr r3, [sp, #4]
	ldr r6, [r3, #0]
	cmp r6, #0
	beq label312
label77:
	ldr r3, [sp, #4]
	ldr r5, [r3, r6, lsl #2]
	sub r6, r6, #1
	str r6, [r3, #0]
	ldr r3, [sp, #0]
	cmp r5, #43
	ldr r8, [r3, #0]
	sub r9, r8, #1
	ldr r6, [r3, r8, lsl #2]
	add r7, r3, r8, lsl #2
	str r9, [r3, #0]
	sub r8, r8, #2
	ldr r7, [r7, #-4]
	str r8, [r3, #0]
	beq label88
	cmp r5, #45
	beq label87
	cmp r5, #42
	beq label86
	cmp r5, #47
	beq label83
	cmp r5, #37
	beq label85
	mov r5, #0
	ldr r6, [r3, #0]
	add r6, r6, #1
	str r6, [r3, #0]
	str r5, [r3, r6, lsl #2]
	ldr r3, [sp, #4]
	ldr r6, [r3, #0]
	cmp r6, #0
	bne label77
	b label312
label86:
	mul r5, r6, r7
	ldr r3, [sp, #0]
	ldr r6, [r3, #0]
	add r6, r6, #1
	str r6, [r3, #0]
	str r5, [r3, r6, lsl #2]
	ldr r3, [sp, #4]
	ldr r6, [r3, #0]
	cmp r6, #0
	bne label77
	b label312
label87:
	sub r5, r7, r6
	ldr r3, [sp, #0]
	ldr r6, [r3, #0]
	add r6, r6, #1
	str r6, [r3, #0]
	str r5, [r3, r6, lsl #2]
	ldr r3, [sp, #4]
	ldr r6, [r3, #0]
	cmp r6, #0
	bne label77
	b label312
label88:
	add r5, r6, r7
	ldr r3, [sp, #0]
	ldr r6, [r3, #0]
	add r6, r6, #1
	str r6, [r3, #0]
	str r5, [r3, r6, lsl #2]
	ldr r3, [sp, #4]
	ldr r6, [r3, #0]
	cmp r6, #0
	bne label77
	b label312
label92:
	bl getch
	sub r2, r0, #10
	sub r1, r0, #32
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	bne label92
	sub r0, r0, #48
	cmp r0, #10
	blo label307
	b label71
label93:
	bl getch
	sub r2, r0, #10
	sub r1, r0, #32
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	bne label93
	mov r6, r0
	sub r0, r0, #48
	cmp r0, #10
	blo label169
	b label31
label89:
	bl getch
	mov r1, r0
	sub r0, r0, #48
	cmp r0, #10
	blo label91
	mov r0, r1
	mov r2, #0
	mov r1, r5
	ldr r3, [sp, #4]
	ldr r6, [r3, #0]
	cmp r6, #0
	bne label77
	b label312
label91:
	add r1, r5, r5, lsl #2
	add r5, r0, r1, lsl #1
	b label89
label312:
	ldr r3, [sp, #0]
	mov r6, r0
	mov r7, r2
	ldr r5, [r3, #0]
	ldr r3, [r3, r5, lsl #2]
	mov r5, r1
	mov r0, r3
label94:
	bl putint
	mov r0, #10
	bl putch
	subs r4, r4, #1
	beq label101
	mov r1, r6
	mov r0, r7
	mov r6, #0
	add r2, r6, #4
	cmp r2, #256
	blt label100
	mov r2, #0
	ldr r3, [sp, #0]
	str r2, [r3, r6, lsl #2]
	add r6, r6, #1
	cmp r6, #256
	blt label15
	mov r6, #0
	add r2, r6, #4
	cmp r2, #256
	blt label99
	mov r2, #0
	ldr r3, [sp, #4]
	str r2, [r3, r6, lsl #2]
	add r6, r6, #1
	cmp r6, #256
	blt label19
	cmp r7, #0
	bne label154
	b label587
label85:
	sdiv r3, r7, r6
	mls r5, r3, r6, r7
	ldr r3, [sp, #0]
	ldr r6, [r3, #0]
	add r6, r6, #1
	str r6, [r3, #0]
	str r5, [r3, r6, lsl #2]
	ldr r3, [sp, #4]
	ldr r6, [r3, #0]
	cmp r6, #0
	bne label77
	b label312
label17:
	add r2, r6, #4
	cmp r2, #256
	blt label99
	mov r2, #0
	ldr r3, [sp, #4]
	str r2, [r3, r6, lsl #2]
	add r6, r6, #1
	cmp r6, #256
	blt label19
	cmp r0, #0
	bne label154
	b label587
label99:
	ldr r3, [sp, #4]
	mov r8, #0
	add r7, r3, r6, lsl #2
	str r8, [r3, r6, lsl #2]
	mov r6, r2
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	b label17
label15:
	mov r2, #0
	ldr r3, [sp, #0]
	str r2, [r3, r6, lsl #2]
	add r6, r6, #1
	cmp r6, #256
	blt label15
	mov r6, #0
	add r2, r6, #4
	cmp r2, #256
	blt label99
	mov r2, #0
	ldr r3, [sp, #4]
	str r2, [r3, r6, lsl #2]
	add r6, r6, #1
	cmp r6, #256
	blt label19
	cmp r0, #0
	bne label154
	b label587
label19:
	mov r2, #0
	ldr r3, [sp, #4]
	str r2, [r3, r6, lsl #2]
	add r6, r6, #1
	cmp r6, #256
	blt label19
	cmp r0, #0
	beq label587
label154:
	mov r6, r1
	mov r7, r0
	b label22
label83:
	sdiv r5, r7, r6
	ldr r3, [sp, #0]
	ldr r6, [r3, #0]
	add r6, r6, #1
	str r6, [r3, #0]
	str r5, [r3, r6, lsl #2]
	ldr r3, [sp, #4]
	ldr r6, [r3, #0]
	cmp r6, #0
	bne label77
	b label312
label101:
	mov r0, #0
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label22:
	mov r0, #112
	bl putch
	mov r0, #97
	bl putch
	mov r0, #110
	bl putch
	mov r0, #105
	bl putch
	mov r0, #99
	bl putch
	mov r0, #33
	bl putch
	mov r0, #10
	bl putch
	mvn r0, #0
	b label94
label507:
	mov r6, r0
	mov r7, r1
	b label22
label52:
	mul r2, r8, r9
	ldr r3, [sp, #0]
	ldr r8, [r3, #0]
	add r8, r8, #1
	str r8, [r3, #0]
	str r2, [r3, r8, lsl #2]
	ldr r3, [sp, #4]
	ldr r8, [r3, #0]
	cmp r8, #0
	bne label42
	add r2, r8, #1
	cmp r1, #0
	str r2, [r3, #0]
	str r6, [r3, r2, lsl #2]
	beq label269
	b label507
label45:
	sub r8, r8, #1
	ldr r3, [sp, #4]
	cmp r2, #43
	str r8, [r3, #0]
	ldr r3, [sp, #0]
	ldr r10, [r3, #0]
	sub r11, r10, #1
	ldr r8, [r3, r10, lsl #2]
	add r9, r3, r10, lsl #2
	str r11, [r3, #0]
	sub r10, r10, #2
	ldr r9, [r9, #-4]
	str r10, [r3, #0]
	beq label46
	cmp r2, #45
	beq label50
	cmp r2, #42
	beq label52
	cmp r2, #47
	beq label56
	cmp r2, #37
	beq label55
	mov r2, #0
	ldr r8, [r3, #0]
	add r8, r8, #1
	str r8, [r3, #0]
	str r2, [r3, r8, lsl #2]
	ldr r3, [sp, #4]
	ldr r8, [r3, #0]
	cmp r8, #0
	bne label42
	add r2, r8, #1
	cmp r1, #0
	str r2, [r3, #0]
	str r6, [r3, r2, lsl #2]
	beq label269
	b label507
label46:
	add r2, r8, r9
	ldr r3, [sp, #0]
	ldr r8, [r3, #0]
	add r8, r8, #1
	str r8, [r3, #0]
	str r2, [r3, r8, lsl #2]
	ldr r3, [sp, #4]
	ldr r8, [r3, #0]
	cmp r8, #0
	bne label42
	add r2, r8, #1
	cmp r1, #0
	str r2, [r3, #0]
	str r6, [r3, r2, lsl #2]
	beq label269
	b label507
label56:
	sdiv r2, r9, r8
	ldr r3, [sp, #0]
	ldr r8, [r3, #0]
	add r8, r8, #1
	str r8, [r3, #0]
	str r2, [r3, r8, lsl #2]
	ldr r3, [sp, #4]
	ldr r8, [r3, #0]
	cmp r8, #0
	bne label42
	add r2, r8, #1
	cmp r1, #0
	str r2, [r3, #0]
	str r6, [r3, r2, lsl #2]
	beq label269
	b label507
label55:
	sdiv r2, r9, r8
	mls r2, r2, r8, r9
	ldr r3, [sp, #0]
	ldr r8, [r3, #0]
	add r8, r8, #1
	str r8, [r3, #0]
	str r2, [r3, r8, lsl #2]
	ldr r3, [sp, #4]
	ldr r8, [r3, #0]
	cmp r8, #0
	bne label42
	add r2, r8, #1
	cmp r1, #0
	str r2, [r3, #0]
	str r6, [r3, r2, lsl #2]
	beq label269
	b label507
label43:
	cmp r7, #11
	blt label45
	add r2, r8, #1
	ldr r3, [sp, #4]
	cmp r1, #0
	str r2, [r3, #0]
	str r6, [r3, r2, lsl #2]
	beq label269
	b label507
label50:
	sub r2, r9, r8
	ldr r3, [sp, #0]
	ldr r8, [r3, #0]
	add r8, r8, #1
	str r8, [r3, #0]
	str r2, [r3, r8, lsl #2]
	ldr r3, [sp, #4]
	ldr r8, [r3, #0]
	cmp r8, #0
	bne label42
	add r2, r8, #1
	cmp r1, #0
	str r2, [r3, #0]
	str r6, [r3, r2, lsl #2]
	beq label269
	b label507
