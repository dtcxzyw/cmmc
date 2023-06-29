.arch armv7ve
.data
.data
.align 4
program:
	.zero	262144
.align 4
tape:
	.zero	262144
.align 4
input:
	.zero	262144
.align 4
output:
	.zero	262144
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	sub sp, sp, #2064
	mov r8, sp
	str r8, [sp, #2048]
	bl getch
	cmp r0, #62
	mov r1, #0
	movwne r1, #1
	cmp r0, #60
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #43
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #45
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #91
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #93
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #46
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #44
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #35
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r1, #0
	beq label2
label63:
	bl getch
	cmp r0, #62
	mov r1, #0
	movwne r1, #1
	cmp r0, #60
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #43
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #45
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #91
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #93
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #46
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #44
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #35
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r1, #0
	beq label2
	b label63
label2:
	movw r9, #:lower16:program
	movt r9, #:upper16:program
	str r9, [sp, #2052]
	movw r8, #:lower16:input
	movt r8, #:upper16:input
	str r8, [sp, #2056]
	cmp r0, #35
	beq label93
	mov r4, #0
	b label57
label93:
	mov r5, #0
	bl getch
	cmp r0, #105
	beq label53
	b label97
label57:
	ldr r9, [sp, #2052]
	str r0, [r9, r4, lsl #2]
	bl getch
	cmp r0, #62
	mov r1, #0
	movwne r1, #1
	cmp r0, #60
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #43
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #45
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #91
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #93
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #46
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #44
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #35
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r1, #0
	beq label60
	b label62
label60:
	add r4, r4, #1
	cmp r0, #35
	beq label274
	b label57
label62:
	bl getch
	cmp r0, #62
	mov r1, #0
	movwne r1, #1
	cmp r0, #60
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #43
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #45
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #91
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #93
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #46
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #44
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #35
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r1, #0
	beq label60
	b label62
label97:
	mov r6, #0
	mov r0, #116
	bl _sysy_starttime
	mov r0, #0
	b label8
label53:
	bl getint
	mov r6, r0
	bl getch
	mov r4, #0
	cmp r4, r6
	bge label6
	b label241
label274:
	mov r5, r4
	bl getch
	cmp r0, #105
	beq label53
	b label97
label8:
	ldr r8, [sp, #2048]
	add r1, r8, r0, lsl #2
	mov r2, #0
	ldr r8, [sp, #2048]
	str r2, [r8, r0, lsl #2]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #12]
	str r2, [r1, #16]
	str r2, [r1, #20]
	str r2, [r1, #24]
	str r2, [r1, #28]
	add r0, r0, #8
	cmp r0, #512
	bge label10
	b label8
label10:
	movw r7, #:lower16:tape
	movt r7, #:upper16:tape
	mov r4, #0
	mov r3, r4
	mov r1, r4
	mov r2, r4
	mov r0, r4
	cmp r4, r5
	bge label49
	ldr r9, [sp, #2052]
	ldr r8, [r9, r4, lsl #2]
	cmp r8, #62
	bne label25
	add r2, r4, #1
	add r0, r4, #1
	cmp r0, r5
	bge label49
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label25
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label49
	b label400
label49:
	mov r0, #118
	bl _sysy_stoptime
	movw r5, #:lower16:output
	movt r5, #:upper16:output
	cmp r4, #0
	ble label50
	mov r6, #0
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label50
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label50
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label50
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label50
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label50
	b label455
label400:
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label25
	b label429
label25:
	cmp r8, #60
	bne label27
	sub r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label49
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label25
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label49
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label25
	b label429
label27:
	cmp r8, #43
	bne label29
	ldr r8, [r7, r2, lsl #2]
	add r8, r8, #1
	str r8, [r7, r2, lsl #2]
	add r0, r0, #1
	cmp r0, r5
	bge label49
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label25
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label49
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label25
	b label429
label29:
	cmp r8, #45
	bne label31
	ldr r8, [r7, r2, lsl #2]
	sub r8, r8, #1
	str r8, [r7, r2, lsl #2]
	add r0, r0, #1
	cmp r0, r5
	bge label49
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label25
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label49
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label25
	b label429
label31:
	cmp r8, #91
	bne label32
	ldr r8, [r7, r2, lsl #2]
	cmp r8, #0
	beq label203
	ldr r8, [sp, #2048]
	str r0, [r8, r1, lsl #2]
	add r1, r1, #1
	add r0, r0, #1
	cmp r0, r5
	bge label49
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label25
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label49
	b label400
label32:
	cmp r8, #93
	bne label33
	ldr r8, [r7, r2, lsl #2]
	cmp r8, #0
	bne label40
	sub r1, r1, #1
	add r0, r0, #1
	cmp r0, r5
	bge label49
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label25
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label49
	b label400
label33:
	cmp r8, #46
	bne label34
	b label38
label34:
	cmp r8, #44
	bne label19
	cmp r3, r6
	blt label37
	mov r8, #0
	str r8, [r7, r2, lsl #2]
	add r0, r0, #1
	cmp r0, r5
	bge label49
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label25
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label49
	b label400
label38:
	movw r8, #:lower16:output
	movt r8, #:upper16:output
	ldr r9, [r7, r2, lsl #2]
	str r9, [r8, r4, lsl #2]
	add r4, r4, #1
	add r0, r0, #1
	cmp r0, r5
	bge label49
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label25
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label49
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label25
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label49
	b label400
label455:
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label50
	b label455
label19:
	add r0, r0, #1
	cmp r0, r5
	bge label49
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label25
	b label373
label241:
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r6
	bge label6
	b label241
label429:
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label49
	b label400
label203:
	mov r8, #1
	cmp r8, #0
	ble label19
	b label47
label373:
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label49
	b label400
label37:
	ldr r8, [sp, #2056]
	ldr r8, [r8, r3, lsl #2]
	str r8, [r7, r2, lsl #2]
	add r3, r3, #1
	add r0, r0, #1
	cmp r0, r5
	bge label49
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label25
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label49
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label25
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label49
	b label400
label40:
	sub r0, r1, #1
	ldr r8, [sp, #2048]
	ldr r0, [r8, r0, lsl #2]
	add r0, r0, #1
	cmp r0, r5
	bge label49
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label25
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label49
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label25
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label49
	b label400
label44:
	cmp r8, #0
	ble label19
label47:
	add r0, r0, #1
	ldr r9, [sp, #2052]
	ldr r9, [r9, r0, lsl #2]
	sub r10, r8, #1
	cmp r9, #93
	moveq r8, r10
	cmp r9, #91
	bne label44
	add r8, r8, #1
	cmp r8, #0
	ble label19
	b label47
label6:
	mov r0, #116
	bl _sysy_starttime
	mov r0, #0
	b label8
label50:
	mov r0, #0
	add sp, sp, #2064
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
