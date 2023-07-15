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
	bhs label103
label4:
	bl getch
	sub r1, r0, #48
	cmp r1, #10
	bhs label126
	b label125
label126:
	mov r6, r5
	mov r7, #0
	cmp r4, #0
	beq label102
	mov r5, r0
	mov r1, #0
	add r0, r1, #4
	cmp r0, #256
	bge label18
	ldr r3, [sp, #0]
	mov r8, #0
	add r2, r3, r1, lsl #2
	str r8, [r3, r1, lsl #2]
	mov r1, r0
	str r8, [r2, #4]
	str r8, [r2, #8]
	str r8, [r2, #12]
	add r0, r0, #4
	cmp r0, #256
	bge label18
	add r2, r3, r1, lsl #2
	str r8, [r3, r1, lsl #2]
	mov r1, r0
	str r8, [r2, #4]
	str r8, [r2, #8]
	str r8, [r2, #12]
	add r0, r0, #4
	cmp r0, #256
	bge label18
	add r2, r3, r1, lsl #2
	str r8, [r3, r1, lsl #2]
	mov r1, r0
	str r8, [r2, #4]
	str r8, [r2, #8]
	str r8, [r2, #12]
	add r0, r0, #4
	cmp r0, #256
	bge label18
	b label593
label18:
	mov r0, #0
	ldr r3, [sp, #0]
	str r0, [r3, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #256
	bge label146
	b label18
label146:
	mov r1, #0
label20:
	add r0, r1, #4
	cmp r0, #256
	bge label22
	ldr r3, [sp, #4]
	mov r8, #0
	add r2, r3, r1, lsl #2
	str r8, [r3, r1, lsl #2]
	mov r1, r0
	str r8, [r2, #4]
	str r8, [r2, #8]
	str r8, [r2, #12]
	b label20
label593:
	ldr r3, [sp, #0]
	mov r8, #0
	add r2, r3, r1, lsl #2
	str r8, [r3, r1, lsl #2]
	mov r1, r0
	str r8, [r2, #4]
	str r8, [r2, #8]
	str r8, [r2, #12]
	add r0, r0, #4
	cmp r0, #256
	bge label18
	b label593
label22:
	mov r0, #0
	ldr r3, [sp, #4]
	str r0, [r3, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #256
	bge label24
	b label22
label24:
	cmp r7, #0
	beq label25
	b label99
label94:
	bl putint
	mov r0, #10
	bl putch
	subs r4, r4, #1
	beq label102
	mov r1, #0
	add r0, r1, #4
	cmp r0, #256
	bge label18
	ldr r3, [sp, #0]
	mov r8, #0
	add r2, r3, r1, lsl #2
	str r8, [r3, r1, lsl #2]
	mov r1, r0
	str r8, [r2, #4]
	str r8, [r2, #8]
	str r8, [r2, #12]
	add r0, r0, #4
	cmp r0, #256
	bge label18
	add r2, r3, r1, lsl #2
	str r8, [r3, r1, lsl #2]
	mov r1, r0
	str r8, [r2, #4]
	str r8, [r2, #8]
	str r8, [r2, #12]
	add r0, r0, #4
	cmp r0, #256
	bge label18
	add r2, r3, r1, lsl #2
	str r8, [r3, r1, lsl #2]
	mov r1, r0
	str r8, [r2, #4]
	str r8, [r2, #8]
	str r8, [r2, #12]
	add r0, r0, #4
	cmp r0, #256
	bge label18
	add r2, r3, r1, lsl #2
	str r8, [r3, r1, lsl #2]
	mov r1, r0
	str r8, [r2, #4]
	str r8, [r2, #8]
	str r8, [r2, #12]
	add r0, r0, #4
	cmp r0, #256
	bge label18
	b label593
label99:
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
label25:
	ldr r3, [sp, #0]
	sub r1, r5, #10
	clz r1, r1
	lsr r1, r1, #5
	ldr r0, [r3, #0]
	add r0, r0, #1
	str r0, [r3, #0]
	str r6, [r3, r0, lsl #2]
	sub r0, r5, #32
	clz r0, r0
	lsr r0, r0, #5
	orrs r0, r0, r1
	beq label28
	b label93
label176:
	mov r6, r0
	b label90
label234:
	mov r5, r8
	b label25
label46:
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
	mov r7, r9
	mov r5, r8
	b label94
label90:
	bl getch
	mov r1, r0
	sub r0, r0, #48
	cmp r0, #10
	bhs label379
	add r1, r6, r6, lsl #2
	add r6, r0, r1, lsl #1
	b label90
label379:
	mov r0, r1
	sub r1, r1, #32
	sub r2, r0, #10
	clz r1, r1
	clz r2, r2
	lsr r1, r1, #5
	lsr r2, r2, #5
	orrs r1, r1, r2
	beq label66
	b label89
label93:
	bl getch
	sub r2, r0, #10
	sub r1, r0, #32
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	beq label390
	b label93
label390:
	mov r5, r0
	sub r0, r0, #48
	cmp r0, #10
	bhs label30
	b label176
label30:
	bl getch
	sub r2, r5, #45
	sub r1, r5, #43
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	beq label31
	mov r7, #10
	cmp r7, #0
	bne label34
	sub r1, r0, #32
	sub r2, r0, #10
	clz r1, r1
	clz r2, r2
	lsr r1, r1, #5
	lsr r2, r2, #5
	orrs r1, r1, r2
	beq label66
	b label89
label31:
	sub r1, r5, #42
	sub r2, r5, #47
	mov r7, #0
	clz r1, r1
	clz r2, r2
	lsr r1, r1, #5
	lsr r2, r2, #5
	orr r1, r1, r2
	sub r2, r5, #37
	clz r2, r2
	lsr r2, r2, #5
	orrs r1, r1, r2
	mov r1, #20
	movne r7, r1
	cmp r7, #0
	bne label34
	sub r1, r0, #32
	sub r2, r0, #10
	clz r1, r1
	clz r2, r2
	lsr r1, r1, #5
	lsr r2, r2, #5
	orrs r1, r1, r2
	beq label66
	b label89
label34:
	sub r1, r0, #32
	sub r2, r0, #10
	clz r1, r1
	clz r2, r2
	lsr r1, r1, #5
	lsr r2, r2, #5
	orrs r1, r1, r2
	beq label36
	b label35
label89:
	bl getch
	sub r2, r0, #10
	sub r1, r0, #32
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	beq label66
	b label89
label66:
	sub r5, r0, #48
	cmp r5, #10
	bhs label71
label68:
	bl getch
	sub r1, r0, #48
	cmp r1, #10
	bhs label311
	b label310
label311:
	mov r1, r5
	mov r2, #0
	ldr r3, [sp, #4]
	ldr r6, [r3, #0]
	cmp r6, #0
	beq label76
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
	bne label79
	add r5, r6, r7
	ldr r6, [r3, #0]
	add r6, r6, #1
	str r6, [r3, #0]
	str r5, [r3, r6, lsl #2]
	ldr r3, [sp, #4]
	ldr r6, [r3, #0]
	cmp r6, #0
	beq label76
	b label77
label79:
	cmp r5, #45
	bne label81
	sub r5, r7, r6
	ldr r3, [sp, #0]
	ldr r6, [r3, #0]
	add r6, r6, #1
	str r6, [r3, #0]
	str r5, [r3, r6, lsl #2]
	ldr r3, [sp, #4]
	ldr r6, [r3, #0]
	cmp r6, #0
	beq label76
	b label77
label71:
	bl getch
	mov r2, #1
	mov r1, r6
	ldr r3, [sp, #4]
	ldr r6, [r3, #0]
	cmp r6, #0
	beq label76
	b label77
label103:
	bl getch
	mov r7, #1
	mov r6, #0
	cmp r4, #0
	beq label102
	mov r5, r0
	mov r1, #0
	add r0, r1, #4
	cmp r0, #256
	bge label18
	ldr r3, [sp, #0]
	mov r8, #0
	add r2, r3, r1, lsl #2
	str r8, [r3, r1, lsl #2]
	mov r1, r0
	str r8, [r2, #4]
	str r8, [r2, #8]
	str r8, [r2, #12]
	add r0, r0, #4
	cmp r0, #256
	bge label18
	add r2, r3, r1, lsl #2
	str r8, [r3, r1, lsl #2]
	mov r1, r0
	str r8, [r2, #4]
	str r8, [r2, #8]
	str r8, [r2, #12]
	add r0, r0, #4
	cmp r0, #256
	bge label18
	add r2, r3, r1, lsl #2
	str r8, [r3, r1, lsl #2]
	mov r1, r0
	str r8, [r2, #4]
	str r8, [r2, #8]
	str r8, [r2, #12]
	add r0, r0, #4
	cmp r0, #256
	bge label18
	add r2, r3, r1, lsl #2
	str r8, [r3, r1, lsl #2]
	mov r1, r0
	str r8, [r2, #4]
	str r8, [r2, #8]
	str r8, [r2, #12]
	add r0, r0, #4
	cmp r0, #256
	bge label18
	b label593
label310:
	add r0, r5, r5, lsl #2
	add r5, r1, r0, lsl #1
	b label68
label35:
	bl getch
	sub r2, r0, #10
	sub r1, r0, #32
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	beq label36
	b label35
label81:
	cmp r5, #42
	bne label83
	mul r5, r6, r7
	ldr r3, [sp, #0]
	ldr r6, [r3, #0]
	add r6, r6, #1
	str r6, [r3, #0]
	str r5, [r3, r6, lsl #2]
	ldr r3, [sp, #4]
	ldr r6, [r3, #0]
	cmp r6, #0
	beq label76
	b label77
label490:
	mov r6, r0
	b label38
label36:
	sub r0, r0, #48
	cmp r0, #10
	bhs label62
	b label490
label38:
	bl getch
	mov r8, r0
	sub r0, r0, #48
	cmp r0, #10
	bhs label218
	add r1, r6, r6, lsl #2
	add r6, r0, r1, lsl #1
	b label38
label218:
	mov r9, #0
	ldr r3, [sp, #4]
	ldr r1, [r3, #0]
	cmp r1, #0
	beq label45
	ldr r0, [r3, r1, lsl #2]
	sub r3, r0, #45
	sub r2, r0, #43
	clz r3, r3
	clz r2, r2
	lsr r3, r3, #5
	lsr r2, r2, #5
	orrs r2, r2, r3
	beq label49
	cmp r7, #11
	bge label45
	b label50
label83:
	cmp r5, #47
	bne label84
	sdiv r5, r7, r6
	ldr r3, [sp, #0]
	ldr r6, [r3, #0]
	add r6, r6, #1
	str r6, [r3, #0]
	str r5, [r3, r6, lsl #2]
	ldr r3, [sp, #4]
	ldr r6, [r3, #0]
	cmp r6, #0
	beq label76
	b label77
label84:
	cmp r5, #37
	bne label360
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
	beq label76
	b label77
label360:
	mov r5, #0
	ldr r3, [sp, #0]
	ldr r6, [r3, #0]
	add r6, r6, #1
	str r6, [r3, #0]
	str r5, [r3, r6, lsl #2]
	ldr r3, [sp, #4]
	ldr r6, [r3, #0]
	cmp r6, #0
	beq label76
	b label77
label28:
	sub r0, r5, #48
	cmp r0, #10
	bhs label30
	b label176
label125:
	add r0, r5, r5, lsl #2
	add r5, r1, r0, lsl #1
	b label4
label76:
	ldr r3, [sp, #0]
	mov r6, r1
	mov r7, r2
	ldr r5, [r3, #0]
	ldr r3, [r3, r5, lsl #2]
	mov r5, r0
	mov r0, r3
	b label94
label45:
	add r0, r1, #1
	ldr r3, [sp, #4]
	cmp r9, #0
	str r0, [r3, #0]
	str r5, [r3, r0, lsl #2]
	beq label234
	b label46
label50:
	sub r1, r1, #1
	ldr r3, [sp, #4]
	cmp r0, #43
	str r1, [r3, #0]
	ldr r3, [sp, #0]
	ldr r10, [r3, #0]
	sub r11, r10, #1
	ldr r1, [r3, r10, lsl #2]
	add r2, r3, r10, lsl #2
	str r11, [r3, #0]
	sub r10, r10, #2
	ldr r2, [r2, #-4]
	str r10, [r3, #0]
	bne label53
	add r0, r1, r2
	ldr r1, [r3, #0]
	add r1, r1, #1
	str r1, [r3, #0]
	str r0, [r3, r1, lsl #2]
	ldr r3, [sp, #4]
	ldr r1, [r3, #0]
	cmp r1, #0
	beq label45
	ldr r0, [r3, r1, lsl #2]
	sub r3, r0, #45
	sub r2, r0, #43
	clz r3, r3
	clz r2, r2
	lsr r3, r3, #5
	lsr r2, r2, #5
	orrs r2, r2, r3
	beq label49
	cmp r7, #11
	bge label45
	b label50
label53:
	cmp r0, #45
	bne label54
	sub r0, r2, r1
	ldr r3, [sp, #0]
	ldr r1, [r3, #0]
	add r1, r1, #1
	str r1, [r3, #0]
	str r0, [r3, r1, lsl #2]
	ldr r3, [sp, #4]
	ldr r1, [r3, #0]
	cmp r1, #0
	beq label45
	ldr r0, [r3, r1, lsl #2]
	sub r3, r0, #45
	sub r2, r0, #43
	clz r3, r3
	clz r2, r2
	lsr r3, r3, #5
	lsr r2, r2, #5
	orrs r2, r2, r3
	beq label49
	cmp r7, #11
	bge label45
	b label50
label62:
	bl getch
	mov r9, #1
	mov r8, r0
	ldr r3, [sp, #4]
	ldr r1, [r3, #0]
	cmp r1, #0
	beq label45
	ldr r0, [r3, r1, lsl #2]
	sub r3, r0, #45
	sub r2, r0, #43
	clz r3, r3
	clz r2, r2
	lsr r3, r3, #5
	lsr r2, r2, #5
	orrs r2, r2, r3
	beq label49
	cmp r7, #11
	bge label45
	b label50
label49:
	sub r2, r0, #42
	sub r3, r0, #47
	cmp r7, #0
	clz r2, r2
	clz r3, r3
	lsr r2, r2, #5
	lsr r3, r3, #5
	orr r2, r2, r3
	sub r3, r0, #37
	clz r3, r3
	lsr r3, r3, #5
	orr r2, r2, r3
	mov r3, #0
	movwle r3, #1
	orrs r2, r2, r3
	beq label45
	b label50
label290:
	mov r0, #0
	ldr r3, [sp, #0]
	ldr r1, [r3, #0]
	add r1, r1, #1
	str r1, [r3, #0]
	str r0, [r3, r1, lsl #2]
	ldr r3, [sp, #4]
	ldr r1, [r3, #0]
	cmp r1, #0
	beq label45
	ldr r0, [r3, r1, lsl #2]
	sub r3, r0, #45
	sub r2, r0, #43
	clz r3, r3
	clz r2, r2
	lsr r3, r3, #5
	lsr r2, r2, #5
	orrs r2, r2, r3
	beq label49
	cmp r7, #11
	bge label45
	b label50
label54:
	cmp r0, #42
	bne label56
	mul r0, r1, r2
	ldr r3, [sp, #0]
	ldr r1, [r3, #0]
	add r1, r1, #1
	str r1, [r3, #0]
	str r0, [r3, r1, lsl #2]
	ldr r3, [sp, #4]
	ldr r1, [r3, #0]
	cmp r1, #0
	beq label45
	ldr r0, [r3, r1, lsl #2]
	sub r3, r0, #45
	sub r2, r0, #43
	clz r3, r3
	clz r2, r2
	lsr r3, r3, #5
	lsr r2, r2, #5
	orrs r2, r2, r3
	beq label49
	cmp r7, #11
	bge label45
	b label50
label56:
	cmp r0, #47
	bne label58
	sdiv r0, r2, r1
	ldr r3, [sp, #0]
	ldr r1, [r3, #0]
	add r1, r1, #1
	str r1, [r3, #0]
	str r0, [r3, r1, lsl #2]
	ldr r3, [sp, #4]
	ldr r1, [r3, #0]
	cmp r1, #0
	beq label45
	ldr r0, [r3, r1, lsl #2]
	sub r3, r0, #45
	sub r2, r0, #43
	clz r3, r3
	clz r2, r2
	lsr r3, r3, #5
	lsr r2, r2, #5
	orrs r2, r2, r3
	beq label49
	cmp r7, #11
	bge label45
	b label50
label58:
	cmp r0, #37
	bne label290
	sdiv r0, r2, r1
	mls r0, r0, r1, r2
	ldr r3, [sp, #0]
	ldr r1, [r3, #0]
	add r1, r1, #1
	str r1, [r3, #0]
	str r0, [r3, r1, lsl #2]
	ldr r3, [sp, #4]
	ldr r1, [r3, #0]
	cmp r1, #0
	beq label45
	ldr r0, [r3, r1, lsl #2]
	sub r3, r0, #45
	sub r2, r0, #43
	clz r3, r3
	clz r2, r2
	lsr r3, r3, #5
	lsr r2, r2, #5
	orrs r2, r2, r3
	beq label49
	cmp r7, #11
	bge label45
	b label50
label102:
	mov r0, #0
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
