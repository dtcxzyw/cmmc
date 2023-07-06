.arch armv7ve
.data
.bss
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
.align 4
return_a:
	.zero	2048
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #20
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #62
	movwne r1, #1
	cmp r0, #60
	movwne r2, #1
	cmp r0, #43
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	cmp r0, #45
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	cmp r0, #91
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	cmp r0, #93
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	cmp r0, #46
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	cmp r0, #44
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	cmp r0, #35
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	ands r1, r1, r2
	beq label3
label2:
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #62
	movwne r1, #1
	cmp r0, #60
	movwne r2, #1
	cmp r0, #43
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	cmp r0, #45
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	cmp r0, #91
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	cmp r0, #93
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	cmp r0, #46
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	cmp r0, #44
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	cmp r0, #35
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	ands r1, r1, r2
	beq label3
	b label2
label364:
	mov r4, #0
	b label5
label3:
	movw r9, #:lower16:program
	movw r8, #:lower16:input
	cmp r0, #35
	movt r9, #:upper16:program
	movt r8, #:upper16:input
	str r9, [sp, #0]
	str r8, [sp, #4]
	beq label106
	b label364
label106:
	mov r8, #0
	str r8, [sp, #8]
	bl getch
	cmp r0, #105
	beq label54
label365:
	mov r4, #0
	mov r0, #116
	bl _sysy_starttime
	mov r1, #0
	movw r0, #:lower16:return_a
	movt r0, #:upper16:return_a
	b label15
label5:
	ldr r9, [sp, #0]
	str r0, [r9, r4, lsl #2]
	bl getch
	mov r2, #0
	mov r1, #0
	cmp r0, #62
	movwne r1, #1
	cmp r0, #60
	movwne r2, #1
	cmp r0, #43
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	cmp r0, #45
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	cmp r0, #91
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	cmp r0, #93
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	cmp r0, #46
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	cmp r0, #44
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	cmp r0, #35
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	ands r1, r1, r2
	beq label9
	b label8
label155:
	mov r8, r4
	str r4, [sp, #8]
	bl getch
	cmp r0, #105
	beq label54
	b label365
label54:
	bl getint
	mov r4, r0
	bl getch
	mov r5, #0
	cmp r4, r5
	ble label13
	bl getch
	ldr r8, [sp, #4]
	str r0, [r8, r5, lsl #2]
	add r5, r5, #1
	cmp r4, r5
	ble label13
	bl getch
	ldr r8, [sp, #4]
	str r0, [r8, r5, lsl #2]
	add r5, r5, #1
	cmp r4, r5
	ble label13
	bl getch
	ldr r8, [sp, #4]
	str r0, [r8, r5, lsl #2]
	add r5, r5, #1
	cmp r4, r5
	ble label13
	bl getch
	ldr r8, [sp, #4]
	str r0, [r8, r5, lsl #2]
	add r5, r5, #1
	cmp r4, r5
	ble label13
	bl getch
	ldr r8, [sp, #4]
	str r0, [r8, r5, lsl #2]
	add r5, r5, #1
	cmp r4, r5
	ble label13
	bl getch
	ldr r8, [sp, #4]
	str r0, [r8, r5, lsl #2]
	add r5, r5, #1
	cmp r4, r5
	ble label13
	bl getch
	ldr r8, [sp, #4]
	str r0, [r8, r5, lsl #2]
	add r5, r5, #1
	cmp r4, r5
	ble label13
	bl getch
	ldr r8, [sp, #4]
	str r0, [r8, r5, lsl #2]
	add r5, r5, #1
	cmp r4, r5
	ble label13
	b label645
label8:
	bl getch
	mov r1, #0
	mov r2, #0
	cmp r0, #62
	movwne r1, #1
	cmp r0, #60
	movwne r2, #1
	cmp r0, #43
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	cmp r0, #45
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	cmp r0, #91
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	cmp r0, #93
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	cmp r0, #46
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	cmp r0, #44
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	cmp r0, #35
	and r1, r1, r2
	mov r2, #0
	movwne r2, #1
	ands r1, r1, r2
	beq label9
	b label8
label15:
	add r2, r0, r1, lsl #2
	mov r3, #0
	str r3, [r0, r1, lsl #2]
	add r1, r1, #16
	str r3, [r2, #4]
	cmp r1, #512
	str r3, [r2, #8]
	str r3, [r2, #12]
	str r3, [r2, #16]
	str r3, [r2, #20]
	str r3, [r2, #24]
	str r3, [r2, #28]
	str r3, [r2, #32]
	str r3, [r2, #36]
	str r3, [r2, #40]
	str r3, [r2, #44]
	str r3, [r2, #48]
	str r3, [r2, #52]
	str r3, [r2, #56]
	str r3, [r2, #60]
	bge label17
	b label15
label17:
	movw r7, #:lower16:tape
	mov r5, #0
	movt r7, #:upper16:tape
	mov r3, r5
	mov r6, r5
	mov r1, r5
	mov r2, r5
	ldr r8, [sp, #8]
	cmp r8, r5
	ble label50
	ldr r9, [sp, #0]
	ldr r8, [r9, r5, lsl #2]
	cmp r8, #62
	bne label25
	add r6, r5, #1
	add r3, r5, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	add r6, r6, #1
	add r3, r3, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	add r6, r6, #1
	add r3, r3, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	b label582
label50:
	mov r0, #118
	bl _sysy_stoptime
	cmp r5, #0
	movw r4, #:lower16:output
	movt r4, #:upper16:output
	ble label53
	mov r6, #0
	ldr r0, [r4, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r5, r6
	ble label53
	ldr r0, [r4, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r5, r6
	ble label53
	ldr r0, [r4, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r5, r6
	ble label53
	ldr r0, [r4, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r5, r6
	ble label53
	ldr r0, [r4, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r5, r6
	ble label53
	ldr r0, [r4, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r5, r6
	ble label53
	ldr r0, [r4, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r5, r6
	ble label53
	ldr r0, [r4, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r5, r6
	ble label53
	ldr r0, [r4, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r5, r6
	ble label53
	ldr r0, [r4, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r5, r6
	ble label53
label644:
	ldr r0, [r4, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r5, r6
	ble label53
	b label644
label9:
	add r4, r4, #1
	cmp r0, #35
	beq label155
	b label5
label582:
	add r6, r6, #1
	add r3, r3, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
label615:
	ldr r9, [sp, #0]
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	b label582
label25:
	cmp r8, #60
	bne label27
	sub r6, r6, #1
	add r3, r3, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r9, [sp, #0]
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	add r6, r6, #1
	add r3, r3, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	add r6, r6, #1
	add r3, r3, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	add r6, r6, #1
	add r3, r3, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	add r6, r6, #1
	add r3, r3, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	b label615
label27:
	cmp r8, #43
	bne label28
	ldr r8, [r7, r6, lsl #2]
	add r3, r3, #1
	add r8, r8, #1
	str r8, [r7, r6, lsl #2]
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r9, [sp, #0]
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	add r6, r6, #1
	add r3, r3, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	add r6, r6, #1
	add r3, r3, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	add r6, r6, #1
	add r3, r3, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	add r6, r6, #1
	add r3, r3, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	b label615
label28:
	cmp r8, #45
	bne label29
	ldr r8, [r7, r6, lsl #2]
	add r3, r3, #1
	sub r8, r8, #1
	str r8, [r7, r6, lsl #2]
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r9, [sp, #0]
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	add r6, r6, #1
	add r3, r3, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	add r6, r6, #1
	add r3, r3, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	add r6, r6, #1
	add r3, r3, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	add r6, r6, #1
	add r3, r3, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	b label615
label29:
	cmp r8, #91
	bne label30
	ldr r8, [r7, r6, lsl #2]
	cmp r8, #0
	beq label272
	str r3, [r0, r1, lsl #2]
	add r3, r3, #1
	add r1, r1, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r9, [sp, #0]
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	add r6, r6, #1
	add r3, r3, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	add r6, r6, #1
	add r3, r3, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	add r6, r6, #1
	add r3, r3, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	b label582
label30:
	cmp r8, #93
	bne label31
	ldr r8, [r7, r6, lsl #2]
	cmp r8, #0
	bne label39
	sub r1, r1, #1
	add r3, r3, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r9, [sp, #0]
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	add r6, r6, #1
	add r3, r3, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	add r6, r6, #1
	add r3, r3, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	add r6, r6, #1
	add r3, r3, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	b label582
label39:
	sub r3, r1, #1
	ldr r3, [r0, r3, lsl #2]
	add r3, r3, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r9, [sp, #0]
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	add r6, r6, #1
	add r3, r3, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	add r6, r6, #1
	add r3, r3, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	add r6, r6, #1
	add r3, r3, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	add r6, r6, #1
	add r3, r3, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	b label582
label272:
	mov r10, #1
label42:
	add r8, r3, #1
	ldr r9, [sp, #0]
	sub r11, r10, #1
	ldr r9, [r9, r8, lsl #2]
	cmp r9, #93
	moveq r10, r11
	cmp r9, #91
	add r11, r10, #1
	moveq r10, r11
	cmp r10, #0
	ble label45
	mov r3, r8
	b label42
label45:
	add r3, r3, #2
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r9, [sp, #0]
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	add r6, r6, #1
	add r3, r3, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	add r6, r6, #1
	add r3, r3, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	add r6, r6, #1
	add r3, r3, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	add r6, r6, #1
	add r3, r3, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	b label582
label31:
	cmp r8, #46
	bne label32
	ldr r8, [r7, r6, lsl #2]
	movw r9, #:lower16:output
	add r3, r3, #1
	movt r9, #:upper16:output
	str r8, [r9, r5, lsl #2]
	add r5, r5, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r9, [sp, #0]
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	add r6, r6, #1
	add r3, r3, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	add r6, r6, #1
	add r3, r3, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	add r6, r6, #1
	add r3, r3, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	add r6, r6, #1
	add r3, r3, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	b label615
label32:
	cmp r8, #44
	bne label36
	cmp r4, r2
	bgt label35
	mov r8, #0
	add r3, r3, #1
	str r8, [r7, r6, lsl #2]
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r9, [sp, #0]
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	add r6, r6, #1
	add r3, r3, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	add r6, r6, #1
	add r3, r3, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	add r6, r6, #1
	add r3, r3, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	b label582
label36:
	add r3, r3, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r9, [sp, #0]
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	add r6, r6, #1
	add r3, r3, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	add r6, r6, #1
	add r3, r3, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	add r6, r6, #1
	add r3, r3, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	add r6, r6, #1
	add r3, r3, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	b label582
label35:
	ldr r8, [sp, #4]
	add r3, r3, #1
	ldr r8, [r8, r2, lsl #2]
	add r2, r2, #1
	str r8, [r7, r6, lsl #2]
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r9, [sp, #0]
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	add r6, r6, #1
	add r3, r3, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	add r6, r6, #1
	add r3, r3, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	add r6, r6, #1
	add r3, r3, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	add r6, r6, #1
	add r3, r3, #1
	ldr r8, [sp, #8]
	cmp r8, r3
	ble label50
	ldr r8, [r9, r3, lsl #2]
	cmp r8, #62
	bne label25
	b label582
label645:
	bl getch
	ldr r8, [sp, #4]
	str r0, [r8, r5, lsl #2]
	add r5, r5, #1
	cmp r4, r5
	ble label13
	b label645
label53:
	mov r0, #0
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label13:
	mov r0, #116
	bl _sysy_starttime
	mov r1, #0
	movw r0, #:lower16:return_a
	movt r0, #:upper16:return_a
	b label15
