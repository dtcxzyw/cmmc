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
	bhs label100
label101:
	bl getch
	sub r1, r0, #48
	cmp r1, #10
	bhs label402
	add r0, r5, r5, lsl #2
	add r5, r1, r0, lsl #1
	b label101
label402:
	mov r6, r5
	mov r7, #0
	cmp r4, #0
	beq label8
	mov r5, r0
	mov r1, #0
	add r0, r1, #4
	cmp r0, #256
	bge label16
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
	bge label16
	add r2, r3, r1, lsl #2
	str r8, [r3, r1, lsl #2]
	mov r1, r0
	str r8, [r2, #4]
	str r8, [r2, #8]
	str r8, [r2, #12]
	add r0, r0, #4
	cmp r0, #256
	bge label16
	add r2, r3, r1, lsl #2
	str r8, [r3, r1, lsl #2]
	mov r1, r0
	str r8, [r2, #4]
	str r8, [r2, #8]
	str r8, [r2, #12]
	add r0, r0, #4
	cmp r0, #256
	bge label16
	add r2, r3, r1, lsl #2
	str r8, [r3, r1, lsl #2]
	mov r1, r0
	str r8, [r2, #4]
	str r8, [r2, #8]
	str r8, [r2, #12]
	add r0, r0, #4
	cmp r0, #256
	bge label16
	b label128
label16:
	mov r0, #0
	ldr r3, [sp, #0]
	str r0, [r3, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #256
	bge label136
	b label16
label136:
	mov r1, #0
label18:
	add r0, r1, #4
	cmp r0, #256
	bge label20
	ldr r3, [sp, #4]
	mov r8, #0
	add r2, r3, r1, lsl #2
	str r8, [r3, r1, lsl #2]
	mov r1, r0
	str r8, [r2, #4]
	str r8, [r2, #8]
	str r8, [r2, #12]
	b label18
label14:
	add r0, r1, #4
	cmp r0, #256
	bge label16
label128:
	ldr r3, [sp, #0]
	mov r8, #0
	add r2, r3, r1, lsl #2
	str r8, [r3, r1, lsl #2]
	mov r1, r0
	str r8, [r2, #4]
	str r8, [r2, #8]
	str r8, [r2, #12]
	b label14
label100:
	bl getch
	mov r7, #1
	mov r6, #0
	cmp r4, #0
	beq label8
	mov r5, r0
	mov r1, #0
	add r0, r1, #4
	cmp r0, #256
	bge label16
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
	bge label16
	add r2, r3, r1, lsl #2
	str r8, [r3, r1, lsl #2]
	mov r1, r0
	str r8, [r2, #4]
	str r8, [r2, #8]
	str r8, [r2, #12]
	add r0, r0, #4
	cmp r0, #256
	bge label16
	add r2, r3, r1, lsl #2
	str r8, [r3, r1, lsl #2]
	mov r1, r0
	str r8, [r2, #4]
	str r8, [r2, #8]
	str r8, [r2, #12]
	add r0, r0, #4
	cmp r0, #256
	bge label16
	add r2, r3, r1, lsl #2
	str r8, [r3, r1, lsl #2]
	mov r1, r0
	str r8, [r2, #4]
	str r8, [r2, #8]
	str r8, [r2, #12]
	add r0, r0, #4
	cmp r0, #256
	bge label16
	b label128
label20:
	mov r0, #0
	ldr r3, [sp, #4]
	str r0, [r3, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #256
	bge label22
	b label20
label22:
	cmp r7, #0
	beq label29
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
label24:
	bl putint
	mov r0, #10
	bl putch
	subs r4, r4, #1
	beq label8
	mov r1, #0
	add r0, r1, #4
	cmp r0, #256
	bge label16
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
	bge label16
	add r2, r3, r1, lsl #2
	str r8, [r3, r1, lsl #2]
	mov r1, r0
	str r8, [r2, #4]
	str r8, [r2, #8]
	str r8, [r2, #12]
	add r0, r0, #4
	cmp r0, #256
	bge label16
	add r2, r3, r1, lsl #2
	str r8, [r3, r1, lsl #2]
	mov r1, r0
	str r8, [r2, #4]
	str r8, [r2, #8]
	str r8, [r2, #12]
	add r0, r0, #4
	cmp r0, #256
	bge label16
	add r2, r3, r1, lsl #2
	str r8, [r3, r1, lsl #2]
	mov r1, r0
	str r8, [r2, #4]
	str r8, [r2, #8]
	str r8, [r2, #12]
	add r0, r0, #4
	cmp r0, #256
	bge label16
	b label128
label29:
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
	beq label32
	b label97
label171:
	mov r6, r0
	b label67
label34:
	bl getch
	sub r2, r5, #45
	sub r1, r5, #43
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	beq label35
	mov r7, #10
	cmp r7, #0
	bne label38
	sub r1, r0, #32
	sub r2, r0, #10
	clz r1, r1
	clz r2, r2
	lsr r1, r1, #5
	lsr r2, r2, #5
	orrs r1, r1, r2
	beq label73
	b label96
label49:
	add r0, r1, #1
	ldr r3, [sp, #4]
	cmp r9, #0
	str r0, [r3, #0]
	str r5, [r3, r0, lsl #2]
	beq label223
	b label50
label223:
	mov r5, r8
	b label29
label50:
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
	b label24
label67:
	bl getch
	mov r1, r0
	sub r0, r0, #48
	cmp r0, #10
	bhs label295
	add r1, r6, r6, lsl #2
	add r6, r0, r1, lsl #1
	b label67
label295:
	mov r0, r1
	sub r1, r1, #32
	sub r2, r0, #10
	clz r1, r1
	clz r2, r2
	lsr r1, r1, #5
	lsr r2, r2, #5
	orrs r1, r1, r2
	beq label73
	b label96
label97:
	bl getch
	sub r2, r0, #10
	sub r1, r0, #32
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	beq label385
	b label97
label385:
	mov r5, r0
	sub r0, r0, #48
	cmp r0, #10
	bhs label34
	b label171
label35:
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
	bne label38
	sub r1, r0, #32
	sub r2, r0, #10
	clz r1, r1
	clz r2, r2
	lsr r1, r1, #5
	lsr r2, r2, #5
	orrs r1, r1, r2
	beq label73
label96:
	bl getch
	sub r2, r0, #10
	sub r1, r0, #32
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	beq label73
	b label96
label73:
	sub r5, r0, #48
	cmp r5, #10
	bhs label78
	b label75
label78:
	bl getch
	mov r2, #1
	mov r1, r6
	ldr r3, [sp, #4]
	ldr r6, [r3, #0]
	cmp r6, #0
	beq label83
label84:
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
	bne label86
	add r5, r6, r7
	ldr r6, [r3, #0]
	add r6, r6, #1
	str r6, [r3, #0]
	str r5, [r3, r6, lsl #2]
	ldr r3, [sp, #4]
	ldr r6, [r3, #0]
	cmp r6, #0
	beq label83
	b label84
label86:
	cmp r5, #45
	bne label88
	sub r5, r7, r6
	ldr r3, [sp, #0]
	ldr r6, [r3, #0]
	add r6, r6, #1
	str r6, [r3, #0]
	str r5, [r3, r6, lsl #2]
	ldr r3, [sp, #4]
	ldr r6, [r3, #0]
	cmp r6, #0
	beq label83
	b label84
label75:
	bl getch
	sub r1, r0, #48
	cmp r1, #10
	bhs label316
	b label315
label316:
	mov r1, r5
	mov r2, #0
	ldr r3, [sp, #4]
	ldr r6, [r3, #0]
	cmp r6, #0
	beq label83
	b label84
label315:
	add r0, r5, r5, lsl #2
	add r5, r1, r0, lsl #1
	b label75
label38:
	sub r1, r0, #32
	sub r2, r0, #10
	clz r1, r1
	clz r2, r2
	lsr r1, r1, #5
	lsr r2, r2, #5
	orrs r1, r1, r2
	beq label39
label66:
	bl getch
	sub r2, r0, #10
	sub r1, r0, #32
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	beq label39
	b label66
label88:
	cmp r5, #42
	bne label90
	mul r5, r6, r7
	ldr r3, [sp, #0]
	ldr r6, [r3, #0]
	add r6, r6, #1
	str r6, [r3, #0]
	str r5, [r3, r6, lsl #2]
	ldr r3, [sp, #4]
	ldr r6, [r3, #0]
	cmp r6, #0
	beq label83
	b label84
label90:
	cmp r5, #47
	bne label91
	sdiv r5, r7, r6
	ldr r3, [sp, #0]
	ldr r6, [r3, #0]
	add r6, r6, #1
	str r6, [r3, #0]
	str r5, [r3, r6, lsl #2]
	ldr r3, [sp, #4]
	ldr r6, [r3, #0]
	cmp r6, #0
	beq label83
	b label84
label91:
	cmp r5, #37
	bne label365
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
	beq label83
	b label84
label365:
	mov r5, #0
	ldr r3, [sp, #0]
	ldr r6, [r3, #0]
	add r6, r6, #1
	str r6, [r3, #0]
	str r5, [r3, r6, lsl #2]
	ldr r3, [sp, #4]
	ldr r6, [r3, #0]
	cmp r6, #0
	beq label83
	b label84
label32:
	sub r0, r5, #48
	cmp r0, #10
	bhs label34
	b label171
label83:
	ldr r3, [sp, #0]
	mov r6, r1
	mov r7, r2
	ldr r5, [r3, #0]
	ldr r3, [r3, r5, lsl #2]
	mov r5, r0
	mov r0, r3
	b label24
label39:
	sub r0, r0, #48
	cmp r0, #10
	bhs label41
	b label199
label41:
	bl getch
	mov r9, #1
	mov r8, r0
	ldr r3, [sp, #4]
	ldr r1, [r3, #0]
	cmp r1, #0
	beq label49
	ldr r0, [r3, r1, lsl #2]
	sub r3, r0, #45
	sub r2, r0, #43
	clz r3, r3
	clz r2, r2
	lsr r3, r3, #5
	lsr r2, r2, #5
	orrs r2, r2, r3
	beq label53
	cmp r7, #11
	bge label49
	b label54
label199:
	mov r6, r0
label42:
	bl getch
	mov r8, r0
	sub r0, r0, #48
	cmp r0, #10
	bhs label207
	add r1, r6, r6, lsl #2
	add r6, r0, r1, lsl #1
	b label42
label207:
	mov r9, #0
	ldr r3, [sp, #4]
	ldr r1, [r3, #0]
	cmp r1, #0
	beq label49
	ldr r0, [r3, r1, lsl #2]
	sub r3, r0, #45
	sub r2, r0, #43
	clz r3, r3
	clz r2, r2
	lsr r3, r3, #5
	lsr r2, r2, #5
	orrs r2, r2, r3
	beq label53
	cmp r7, #11
	bge label49
label54:
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
	bne label58
	add r0, r1, r2
	ldr r1, [r3, #0]
	add r1, r1, #1
	str r1, [r3, #0]
	str r0, [r3, r1, lsl #2]
	ldr r3, [sp, #4]
	ldr r1, [r3, #0]
	cmp r1, #0
	beq label49
	ldr r0, [r3, r1, lsl #2]
	sub r3, r0, #45
	sub r2, r0, #43
	clz r3, r3
	clz r2, r2
	lsr r3, r3, #5
	lsr r2, r2, #5
	orrs r2, r2, r3
	beq label53
	cmp r7, #11
	bge label49
	b label54
label58:
	cmp r0, #45
	bne label60
	sub r0, r2, r1
	ldr r3, [sp, #0]
	ldr r1, [r3, #0]
	add r1, r1, #1
	str r1, [r3, #0]
	str r0, [r3, r1, lsl #2]
	ldr r3, [sp, #4]
	ldr r1, [r3, #0]
	cmp r1, #0
	beq label49
	ldr r0, [r3, r1, lsl #2]
	sub r3, r0, #45
	sub r2, r0, #43
	clz r3, r3
	clz r2, r2
	lsr r3, r3, #5
	lsr r2, r2, #5
	orrs r2, r2, r3
	beq label53
	cmp r7, #11
	bge label49
	b label54
label60:
	cmp r0, #42
	bne label62
	mul r0, r1, r2
	ldr r3, [sp, #0]
	ldr r1, [r3, #0]
	add r1, r1, #1
	str r1, [r3, #0]
	str r0, [r3, r1, lsl #2]
	ldr r3, [sp, #4]
	ldr r1, [r3, #0]
	cmp r1, #0
	beq label49
	ldr r0, [r3, r1, lsl #2]
	sub r3, r0, #45
	sub r2, r0, #43
	clz r3, r3
	clz r2, r2
	lsr r3, r3, #5
	lsr r2, r2, #5
	orrs r2, r2, r3
	beq label53
	cmp r7, #11
	bge label49
	b label54
label62:
	cmp r0, #47
	bne label64
	sdiv r0, r2, r1
	ldr r3, [sp, #0]
	ldr r1, [r3, #0]
	add r1, r1, #1
	str r1, [r3, #0]
	str r0, [r3, r1, lsl #2]
	ldr r3, [sp, #4]
	ldr r1, [r3, #0]
	cmp r1, #0
	beq label49
	ldr r0, [r3, r1, lsl #2]
	sub r3, r0, #45
	sub r2, r0, #43
	clz r3, r3
	clz r2, r2
	lsr r3, r3, #5
	lsr r2, r2, #5
	orrs r2, r2, r3
	beq label53
	cmp r7, #11
	bge label49
	b label54
label64:
	cmp r0, #37
	bne label281
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
	beq label49
	ldr r0, [r3, r1, lsl #2]
	sub r3, r0, #45
	sub r2, r0, #43
	clz r3, r3
	clz r2, r2
	lsr r3, r3, #5
	lsr r2, r2, #5
	orrs r2, r2, r3
	beq label53
	cmp r7, #11
	bge label49
	b label54
label53:
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
	beq label49
	b label54
label281:
	mov r0, #0
	ldr r3, [sp, #0]
	ldr r1, [r3, #0]
	add r1, r1, #1
	str r1, [r3, #0]
	str r0, [r3, r1, lsl #2]
	ldr r3, [sp, #4]
	ldr r1, [r3, #0]
	cmp r1, #0
	beq label49
	ldr r0, [r3, r1, lsl #2]
	sub r3, r0, #45
	sub r2, r0, #43
	clz r3, r3
	clz r2, r2
	lsr r3, r3, #5
	lsr r2, r2, #5
	orrs r2, r2, r3
	beq label53
	cmp r7, #11
	bge label49
	b label54
label8:
	mov r0, #0
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
