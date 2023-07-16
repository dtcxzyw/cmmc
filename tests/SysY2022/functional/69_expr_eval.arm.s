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
	beq label3
	b label2
label3:
	sub r5, r0, #48
	cmp r5, #10
	bhs label102
	b label103
label102:
	bl getch
	mov r2, #1
	mov r1, #0
	cmp r4, #0
	beq label8
	mov r6, #0
	add r5, r6, #4
	cmp r5, #256
	bge label17
	ldr r3, [sp, #0]
	mov r8, #0
	add r7, r3, r6, lsl #2
	str r8, [r3, r6, lsl #2]
	mov r6, r5
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r5, r5, #4
	cmp r5, #256
	bge label17
	add r7, r3, r6, lsl #2
	str r8, [r3, r6, lsl #2]
	mov r6, r5
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r5, r5, #4
	cmp r5, #256
	bge label17
	add r7, r3, r6, lsl #2
	str r8, [r3, r6, lsl #2]
	mov r6, r5
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r5, r5, #4
	cmp r5, #256
	bge label17
	add r7, r3, r6, lsl #2
	str r8, [r3, r6, lsl #2]
	mov r6, r5
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r5, r5, #4
	cmp r5, #256
	bge label17
	b label130
label103:
	bl getch
	sub r1, r0, #48
	cmp r1, #10
	bhs label404
	b label403
label404:
	mov r1, r5
	mov r2, #0
	cmp r4, #0
	beq label8
	mov r6, #0
	add r5, r6, #4
	cmp r5, #256
	bge label17
	ldr r3, [sp, #0]
	mov r8, #0
	add r7, r3, r6, lsl #2
	str r8, [r3, r6, lsl #2]
	mov r6, r5
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r5, r5, #4
	cmp r5, #256
	bge label17
	add r7, r3, r6, lsl #2
	str r8, [r3, r6, lsl #2]
	mov r6, r5
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r5, r5, #4
	cmp r5, #256
	bge label17
	add r7, r3, r6, lsl #2
	str r8, [r3, r6, lsl #2]
	mov r6, r5
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r5, r5, #4
	cmp r5, #256
	bge label17
	add r7, r3, r6, lsl #2
	str r8, [r3, r6, lsl #2]
	mov r6, r5
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r5, r5, #4
	cmp r5, #256
	bge label17
	b label130
label14:
	add r5, r6, #4
	cmp r5, #256
	bge label17
label130:
	ldr r3, [sp, #0]
	mov r8, #0
	add r7, r3, r6, lsl #2
	str r8, [r3, r6, lsl #2]
	mov r6, r5
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	b label14
label17:
	mov r5, #0
	ldr r3, [sp, #0]
	str r5, [r3, r6, lsl #2]
	add r6, r6, #1
	cmp r6, #256
	bge label143
	b label17
label143:
	mov r6, #0
label19:
	add r5, r6, #4
	cmp r5, #256
	bge label21
	ldr r3, [sp, #4]
	mov r8, #0
	add r7, r3, r6, lsl #2
	str r8, [r3, r6, lsl #2]
	mov r6, r5
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	b label19
label21:
	mov r5, #0
	ldr r3, [sp, #4]
	str r5, [r3, r6, lsl #2]
	add r6, r6, #1
	cmp r6, #256
	bge label23
	b label21
label23:
	cmp r2, #0
	beq label159
	mov r5, r0
	mov r6, r1
	mov r7, r2
	b label92
label159:
	mov r6, r0
	mov r5, r1
label24:
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
	beq label27
	b label91
label495:
	mov r5, r1
	mov r6, r0
	mov r7, r2
	b label92
label274:
	mov r6, r1
	mov r5, r0
	b label24
label92:
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
label96:
	bl putint
	mov r0, #10
	bl putch
	subs r4, r4, #1
	beq label8
	mov r0, r5
	mov r1, r6
	mov r2, r7
	mov r6, #0
	add r5, r6, #4
	cmp r5, #256
	bge label17
	ldr r3, [sp, #0]
	mov r8, #0
	add r7, r3, r6, lsl #2
	str r8, [r3, r6, lsl #2]
	mov r6, r5
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r5, r5, #4
	cmp r5, #256
	bge label17
	add r7, r3, r6, lsl #2
	str r8, [r3, r6, lsl #2]
	mov r6, r5
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r5, r5, #4
	cmp r5, #256
	bge label17
	add r7, r3, r6, lsl #2
	str r8, [r3, r6, lsl #2]
	mov r6, r5
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r5, r5, #4
	cmp r5, #256
	bge label17
	add r7, r3, r6, lsl #2
	str r8, [r3, r6, lsl #2]
	mov r6, r5
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r5, r5, #4
	cmp r5, #256
	bge label17
	b label130
label173:
	mov r5, r0
label61:
	bl getch
	mov r1, r0
	sub r0, r0, #48
	cmp r0, #10
	bhs label297
	add r1, r5, r5, lsl #2
	add r5, r0, r1, lsl #1
	b label61
label297:
	mov r0, r1
	sub r1, r1, #32
	sub r2, r0, #10
	clz r1, r1
	clz r2, r2
	lsr r1, r1, #5
	lsr r2, r2, #5
	orrs r1, r1, r2
	beq label67
	b label90
label91:
	bl getch
	sub r2, r0, #10
	sub r1, r0, #32
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	beq label387
	b label91
label387:
	mov r6, r0
	sub r0, r0, #48
	cmp r0, #10
	bhs label29
	b label173
label90:
	bl getch
	sub r2, r0, #10
	sub r1, r0, #32
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	beq label67
	b label90
label27:
	sub r0, r6, #48
	cmp r0, #10
	bhs label29
	b label173
label403:
	add r0, r5, r5, lsl #2
	add r5, r1, r0, lsl #1
	b label103
label67:
	sub r0, r0, #48
	cmp r0, #10
	bhs label69
	mov r5, r0
	b label87
label69:
	bl getch
	mov r2, #1
	mov r1, r5
	ldr r3, [sp, #4]
	ldr r6, [r3, #0]
	cmp r6, #0
	beq label74
	b label75
label74:
	ldr r3, [sp, #0]
	mov r6, r1
	mov r7, r2
	ldr r5, [r3, #0]
	ldr r3, [r3, r5, lsl #2]
	mov r5, r0
	mov r0, r3
	b label96
label87:
	bl getch
	sub r1, r0, #48
	cmp r1, #10
	bhs label369
	b label368
label369:
	mov r1, r5
	mov r2, #0
	ldr r3, [sp, #4]
	ldr r6, [r3, #0]
	cmp r6, #0
	beq label74
label75:
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
	bne label76
	add r5, r6, r7
	ldr r6, [r3, #0]
	add r6, r6, #1
	str r6, [r3, #0]
	str r5, [r3, r6, lsl #2]
	ldr r3, [sp, #4]
	ldr r6, [r3, #0]
	cmp r6, #0
	beq label74
	b label75
label76:
	cmp r5, #45
	bne label77
	sub r5, r7, r6
	ldr r3, [sp, #0]
	ldr r6, [r3, #0]
	add r6, r6, #1
	str r6, [r3, #0]
	str r5, [r3, r6, lsl #2]
	ldr r3, [sp, #4]
	ldr r6, [r3, #0]
	cmp r6, #0
	beq label74
	b label75
label77:
	cmp r5, #42
	bne label78
	mul r5, r6, r7
	ldr r3, [sp, #0]
	ldr r6, [r3, #0]
	add r6, r6, #1
	str r6, [r3, #0]
	str r5, [r3, r6, lsl #2]
	ldr r3, [sp, #4]
	ldr r6, [r3, #0]
	cmp r6, #0
	beq label74
	b label75
label78:
	cmp r5, #47
	bne label79
	sdiv r5, r7, r6
	ldr r3, [sp, #0]
	ldr r6, [r3, #0]
	add r6, r6, #1
	str r6, [r3, #0]
	str r5, [r3, r6, lsl #2]
	ldr r3, [sp, #4]
	ldr r6, [r3, #0]
	cmp r6, #0
	beq label74
	b label75
label79:
	cmp r5, #37
	bne label354
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
	beq label74
	b label75
label354:
	mov r5, #0
	ldr r3, [sp, #0]
	ldr r6, [r3, #0]
	add r6, r6, #1
	str r6, [r3, #0]
	str r5, [r3, r6, lsl #2]
	ldr r3, [sp, #4]
	ldr r6, [r3, #0]
	cmp r6, #0
	beq label74
	b label75
label368:
	add r0, r5, r5, lsl #2
	add r5, r1, r0, lsl #1
	b label87
label29:
	bl getch
	sub r2, r6, #45
	sub r1, r6, #43
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	beq label60
	mov r7, #10
	cmp r7, #0
	bne label32
	sub r1, r0, #32
	sub r2, r0, #10
	clz r1, r1
	clz r2, r2
	lsr r1, r1, #5
	lsr r2, r2, #5
	orrs r1, r1, r2
	beq label67
	b label90
label60:
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
	bne label32
	sub r1, r0, #32
	sub r2, r0, #10
	clz r1, r1
	clz r2, r2
	lsr r1, r1, #5
	lsr r2, r2, #5
	orrs r1, r1, r2
	beq label67
	b label90
label32:
	sub r1, r0, #32
	sub r2, r0, #10
	clz r1, r1
	clz r2, r2
	lsr r1, r1, #5
	lsr r2, r2, #5
	orrs r1, r1, r2
	beq label34
label33:
	bl getch
	sub r2, r0, #10
	sub r1, r0, #32
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	beq label34
	b label33
label493:
	mov r5, r0
	b label57
label34:
	sub r0, r0, #48
	cmp r0, #10
	bhs label56
	b label493
label57:
	bl getch
	mov r1, r0
	sub r0, r0, #48
	cmp r0, #10
	bhs label281
	add r1, r5, r5, lsl #2
	add r5, r0, r1, lsl #1
	b label57
label281:
	mov r0, r5
	mov r2, #0
	ldr r3, [sp, #4]
	ldr r8, [r3, #0]
	cmp r8, #0
	beq label55
	ldr r5, [r3, r8, lsl #2]
	sub r9, r5, #45
	sub r3, r5, #43
	clz r9, r9
	clz r3, r3
	lsr r9, r9, #5
	lsr r3, r3, #5
	orrs r3, r3, r9
	beq label54
	cmp r7, #11
	bge label55
	b label42
label55:
	add r5, r8, #1
	ldr r3, [sp, #4]
	cmp r2, #0
	str r5, [r3, #0]
	str r6, [r3, r5, lsl #2]
	beq label274
	b label495
label42:
	sub r8, r8, #1
	ldr r3, [sp, #4]
	cmp r5, #43
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
	bne label44
	add r5, r8, r9
	ldr r8, [r3, #0]
	add r8, r8, #1
	str r8, [r3, #0]
	str r5, [r3, r8, lsl #2]
	ldr r3, [sp, #4]
	ldr r8, [r3, #0]
	cmp r8, #0
	beq label55
	ldr r5, [r3, r8, lsl #2]
	sub r9, r5, #45
	sub r3, r5, #43
	clz r9, r9
	clz r3, r3
	lsr r9, r9, #5
	lsr r3, r3, #5
	orrs r3, r3, r9
	beq label54
	cmp r7, #11
	bge label55
	b label42
label44:
	cmp r5, #45
	bne label46
	sub r5, r9, r8
	ldr r3, [sp, #0]
	ldr r8, [r3, #0]
	add r8, r8, #1
	str r8, [r3, #0]
	str r5, [r3, r8, lsl #2]
	ldr r3, [sp, #4]
	ldr r8, [r3, #0]
	cmp r8, #0
	beq label55
	ldr r5, [r3, r8, lsl #2]
	sub r9, r5, #45
	sub r3, r5, #43
	clz r9, r9
	clz r3, r3
	lsr r9, r9, #5
	lsr r3, r3, #5
	orrs r3, r3, r9
	beq label54
	cmp r7, #11
	bge label55
	b label42
label46:
	cmp r5, #42
	bne label47
	mul r5, r8, r9
	ldr r3, [sp, #0]
	ldr r8, [r3, #0]
	add r8, r8, #1
	str r8, [r3, #0]
	str r5, [r3, r8, lsl #2]
	ldr r3, [sp, #4]
	ldr r8, [r3, #0]
	cmp r8, #0
	beq label55
	ldr r5, [r3, r8, lsl #2]
	sub r9, r5, #45
	sub r3, r5, #43
	clz r9, r9
	clz r3, r3
	lsr r9, r9, #5
	lsr r3, r3, #5
	orrs r3, r3, r9
	beq label54
	cmp r7, #11
	bge label55
	b label42
label47:
	cmp r5, #47
	bne label48
	sdiv r5, r9, r8
	ldr r3, [sp, #0]
	ldr r8, [r3, #0]
	add r8, r8, #1
	str r8, [r3, #0]
	str r5, [r3, r8, lsl #2]
	ldr r3, [sp, #4]
	ldr r8, [r3, #0]
	cmp r8, #0
	beq label55
	ldr r5, [r3, r8, lsl #2]
	sub r9, r5, #45
	sub r3, r5, #43
	clz r9, r9
	clz r3, r3
	lsr r9, r9, #5
	lsr r3, r3, #5
	orrs r3, r3, r9
	beq label54
	cmp r7, #11
	bge label55
	b label42
label48:
	cmp r5, #37
	bne label250
	sdiv r3, r9, r8
	mls r5, r3, r8, r9
	ldr r3, [sp, #0]
	ldr r8, [r3, #0]
	add r8, r8, #1
	str r8, [r3, #0]
	str r5, [r3, r8, lsl #2]
	ldr r3, [sp, #4]
	ldr r8, [r3, #0]
	cmp r8, #0
	beq label55
	ldr r5, [r3, r8, lsl #2]
	sub r9, r5, #45
	sub r3, r5, #43
	clz r9, r9
	clz r3, r3
	lsr r9, r9, #5
	lsr r3, r3, #5
	orrs r3, r3, r9
	beq label54
	cmp r7, #11
	bge label55
	b label42
label250:
	mov r5, #0
	ldr r3, [sp, #0]
	ldr r8, [r3, #0]
	add r8, r8, #1
	str r8, [r3, #0]
	str r5, [r3, r8, lsl #2]
	ldr r3, [sp, #4]
	ldr r8, [r3, #0]
	cmp r8, #0
	beq label55
	ldr r5, [r3, r8, lsl #2]
	sub r9, r5, #45
	sub r3, r5, #43
	clz r9, r9
	clz r3, r3
	lsr r9, r9, #5
	lsr r3, r3, #5
	orrs r3, r3, r9
	beq label54
	cmp r7, #11
	bge label55
	b label42
label56:
	bl getch
	mov r2, #1
	mov r1, r0
	mov r0, r5
	ldr r3, [sp, #4]
	ldr r8, [r3, #0]
	cmp r8, #0
	beq label55
	ldr r5, [r3, r8, lsl #2]
	sub r9, r5, #45
	sub r3, r5, #43
	clz r9, r9
	clz r3, r3
	lsr r9, r9, #5
	lsr r3, r3, #5
	orrs r3, r3, r9
	beq label54
	cmp r7, #11
	bge label55
	b label42
label54:
	sub r3, r5, #42
	sub r9, r5, #47
	cmp r7, #0
	clz r3, r3
	clz r9, r9
	lsr r3, r3, #5
	lsr r9, r9, #5
	orr r3, r3, r9
	sub r9, r5, #37
	clz r9, r9
	lsr r9, r9, #5
	orr r3, r3, r9
	mov r9, #0
	movwle r9, #1
	orrs r3, r3, r9
	beq label55
	b label42
label8:
	mov r0, #0
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
