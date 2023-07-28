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
.p2align 4
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
.p2align 4
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
	bhs label103
.p2align 4
label4:
	bl getch
	sub r1, r0, #48
	cmp r1, #10
	blo label6
	mov r1, r0
	mov r0, #0
	cmp r4, #0
	bne label132
	b label11
.p2align 4
label6:
	add r0, r5, r5, lsl #2
	add r5, r1, r0, lsl #1
	b label4
label7:
	cmp r4, #0
	bne label132
label11:
	mov r0, #0
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label103:
	bl getch
	mov r5, #0
	mov r1, r0
	mov r0, #1
	b label7
label132:
	mov r2, #0
.p2align 4
label17:
	ldr r3, [sp, #0]
	mov r7, #0
	add r6, r3, r2, lsl #2
	str r7, [r3, r2, lsl #2]
	add r3, r2, #8
	str r7, [r6, #4]
	cmp r3, #256
	add r2, r2, #4
	str r7, [r6, #8]
	str r7, [r6, #12]
	blt label17
	mov r6, #0
	ldr r3, [sp, #0]
	str r6, [r3, r2, lsl #2]
	add r2, r2, #1
	cmp r2, #256
	blt label19
.p2align 4
label514:
	mov r2, #0
	b label21
.p2align 4
label19:
	mov r6, #0
	ldr r3, [sp, #0]
	str r6, [r3, r2, lsl #2]
	add r2, r2, #1
	cmp r2, #256
	blt label19
	b label514
.p2align 4
label21:
	ldr r3, [sp, #4]
	mov r7, #0
	add r6, r3, r2, lsl #2
	str r7, [r3, r2, lsl #2]
	add r3, r2, #8
	str r7, [r6, #4]
	cmp r3, #256
	add r2, r2, #4
	str r7, [r6, #8]
	str r7, [r6, #12]
	blt label21
	mov r6, #0
	ldr r3, [sp, #4]
	str r6, [r3, r2, lsl #2]
	add r2, r2, #1
	cmp r2, #256
	blt label23
	cmp r0, #0
	bne label172
.p2align 4
label540:
	mov r6, r1
	b label35
.p2align 4
label23:
	mov r6, #0
	ldr r3, [sp, #4]
	str r6, [r3, r2, lsl #2]
	add r2, r2, #1
	cmp r2, #256
	blt label23
	cmp r0, #0
	bne label172
	b label540
.p2align 4
label31:
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
	b label26
.p2align 4
label35:
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
	bne label102
	sub r0, r6, #48
	cmp r0, #10
	bhs label70
.p2align 4
label192:
	mov r5, r0
	b label67
label203:
	mov r5, r0
	b label63
.p2align 4
label66:
	bl getch
	sub r2, r0, #10
	sub r1, r0, #32
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	bne label66
	sub r0, r0, #48
	cmp r0, #10
	blo label203
	b label45
.p2align 4
label67:
	bl getch
	sub r1, r0, #48
	cmp r1, #10
	blo label69
	sub r1, r0, #32
	sub r2, r0, #10
	clz r1, r1
	clz r2, r2
	lsr r1, r1, #5
	lsr r2, r2, #5
	orrs r1, r1, r2
	bne label66
	sub r0, r0, #48
	cmp r0, #10
	blo label203
	b label45
.p2align 4
label69:
	add r0, r5, r5, lsl #2
	add r5, r1, r0, lsl #1
	b label67
.p2align 4
label70:
	bl getch
	sub r2, r6, #45
	sub r1, r6, #43
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	beq label101
	mov r7, #10
.p2align 4
label71:
	cmp r7, #0
	beq label40
	sub r1, r0, #32
	sub r2, r0, #10
	clz r1, r1
	clz r2, r2
	lsr r1, r1, #5
	lsr r2, r2, #5
	orrs r1, r1, r2
	bne label100
	sub r0, r0, #48
	cmp r0, #10
	bhs label96
label299:
	mov r5, r0
	b label97
label80:
	ldr r3, [sp, #4]
	ldr r2, [r3, r8, lsl #2]
	sub r9, r2, #45
	sub r3, r2, #43
	clz r9, r9
	clz r3, r3
	lsr r9, r9, #5
	lsr r3, r3, #5
	orrs r3, r3, r9
	bne label81
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
	bne label83
label95:
	add r2, r8, #1
	ldr r3, [sp, #4]
	cmp r1, #0
	str r2, [r3, #0]
	str r6, [r3, r2, lsl #2]
	beq label370
	mov r6, r0
	mov r7, r1
	b label31
.p2align 4
label370:
	mov r6, r0
	b label35
.p2align 4
label97:
	bl getch
	sub r1, r0, #48
	cmp r1, #10
	blo label99
	mov r1, #0
	ldr r3, [sp, #4]
	ldr r8, [r3, #0]
	cmp r8, #0
	bne label80
	b label95
.p2align 4
label99:
	add r0, r5, r5, lsl #2
	add r5, r1, r0, lsl #1
	b label97
.p2align 4
label100:
	bl getch
	sub r2, r0, #10
	sub r1, r0, #32
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	bne label100
	sub r0, r0, #48
	cmp r0, #10
	blo label299
	b label96
label101:
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
	b label71
.p2align 4
label26:
	bl putint
	mov r0, #10
	bl putch
	subs r4, r4, #1
	beq label11
	mov r1, r6
	mov r0, r7
	mov r2, #0
	b label17
.p2align 4
label208:
	ldr r3, [sp, #0]
	mov r6, r0
	mov r7, r2
	ldr r5, [r3, #0]
	ldr r3, [r3, r5, lsl #2]
	mov r5, r1
	mov r0, r3
	b label26
.p2align 4
label63:
	bl getch
	mov r1, r0
	sub r0, r0, #48
	cmp r0, #10
	blo label65
	mov r0, r1
	mov r2, #0
	mov r1, r5
	ldr r3, [sp, #4]
	ldr r6, [r3, #0]
	cmp r6, #0
	bne label51
	b label208
.p2align 4
label65:
	add r1, r5, r5, lsl #2
	add r5, r0, r1, lsl #1
	b label63
label45:
	bl getch
	mov r2, #1
	mov r1, r5
	ldr r3, [sp, #4]
	ldr r6, [r3, #0]
	cmp r6, #0
	beq label208
.p2align 4
label51:
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
	beq label54
	cmp r5, #45
	beq label62
	cmp r5, #42
	beq label61
	cmp r5, #47
	beq label60
	cmp r5, #37
	beq label59
	mov r5, #0
	ldr r6, [r3, #0]
	add r6, r6, #1
	str r6, [r3, #0]
	str r5, [r3, r6, lsl #2]
	ldr r3, [sp, #4]
	ldr r6, [r3, #0]
	cmp r6, #0
	bne label51
	b label208
.p2align 4
label54:
	add r5, r6, r7
	ldr r3, [sp, #0]
	ldr r6, [r3, #0]
	add r6, r6, #1
	str r6, [r3, #0]
	str r5, [r3, r6, lsl #2]
	ldr r3, [sp, #4]
	ldr r6, [r3, #0]
	cmp r6, #0
	bne label51
	b label208
.p2align 4
label61:
	mul r5, r6, r7
	ldr r3, [sp, #0]
	ldr r6, [r3, #0]
	add r6, r6, #1
	str r6, [r3, #0]
	str r5, [r3, r6, lsl #2]
	ldr r3, [sp, #4]
	ldr r6, [r3, #0]
	cmp r6, #0
	bne label51
	b label208
.p2align 4
label62:
	sub r5, r7, r6
	ldr r3, [sp, #0]
	ldr r6, [r3, #0]
	add r6, r6, #1
	str r6, [r3, #0]
	str r5, [r3, r6, lsl #2]
	ldr r3, [sp, #4]
	ldr r6, [r3, #0]
	cmp r6, #0
	bne label51
	b label208
.p2align 4
label59:
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
	bne label51
	b label208
.p2align 4
label102:
	bl getch
	sub r2, r0, #10
	sub r1, r0, #32
	clz r2, r2
	clz r1, r1
	lsr r2, r2, #5
	lsr r1, r1, #5
	orrs r1, r1, r2
	bne label102
	mov r6, r0
	sub r0, r0, #48
	cmp r0, #10
	blo label192
	b label70
.p2align 4
label40:
	sub r1, r0, #32
	sub r2, r0, #10
	clz r1, r1
	clz r2, r2
	lsr r1, r1, #5
	lsr r2, r2, #5
	orrs r1, r1, r2
	bne label66
	sub r0, r0, #48
	cmp r0, #10
	blo label203
	b label45
.p2align 4
label60:
	sdiv r5, r7, r6
	ldr r3, [sp, #0]
	ldr r6, [r3, #0]
	add r6, r6, #1
	str r6, [r3, #0]
	str r5, [r3, r6, lsl #2]
	ldr r3, [sp, #4]
	ldr r6, [r3, #0]
	cmp r6, #0
	bne label51
	b label208
label96:
	bl getch
	mov r1, #1
	b label76
.p2align 4
label172:
	mov r6, r1
	mov r7, r0
	b label31
.p2align 4
label76:
	ldr r3, [sp, #4]
	ldr r8, [r3, #0]
	cmp r8, #0
	bne label80
	b label95
label83:
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
	beq label84
	cmp r2, #45
	beq label92
	cmp r2, #42
	bne label88
	mul r2, r8, r9
	ldr r8, [r3, #0]
	add r8, r8, #1
	str r8, [r3, #0]
	str r2, [r3, r8, lsl #2]
	b label76
label88:
	cmp r2, #47
	bne label89
	sdiv r2, r9, r8
	ldr r3, [sp, #0]
	ldr r8, [r3, #0]
	add r8, r8, #1
	str r8, [r3, #0]
	str r2, [r3, r8, lsl #2]
	b label76
label89:
	cmp r2, #37
	beq label90
	mov r2, #0
	ldr r3, [sp, #0]
	ldr r8, [r3, #0]
	add r8, r8, #1
	str r8, [r3, #0]
	str r2, [r3, r8, lsl #2]
	b label76
label92:
	sub r2, r9, r8
	ldr r3, [sp, #0]
	ldr r8, [r3, #0]
	add r8, r8, #1
	str r8, [r3, #0]
	str r2, [r3, r8, lsl #2]
	b label76
label90:
	sdiv r2, r9, r8
	mls r2, r2, r8, r9
	ldr r3, [sp, #0]
	ldr r8, [r3, #0]
	add r8, r8, #1
	str r8, [r3, #0]
	str r2, [r3, r8, lsl #2]
	b label76
label81:
	cmp r7, #11
	blt label83
	b label95
label84:
	add r2, r8, r9
	ldr r3, [sp, #0]
	ldr r8, [r3, #0]
	add r8, r8, #1
	str r8, [r3, #0]
	str r2, [r3, r8, lsl #2]
	b label76
