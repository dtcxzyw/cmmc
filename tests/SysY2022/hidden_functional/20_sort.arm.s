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
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #12
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label83
	mov r4, #0
	cmp r1, #10
	blo label96
.p2align 4
label417:
	mov r6, #0
	b label11
label83:
	mov r5, r0
	mov r4, #0
.p2align 4
label2:
	bl getch
	cmp r5, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r4, r2
	cmp r1, #9
	bhi label91
	cmp r1, #10
	blo label96
	b label417
label91:
	mov r5, r0
	b label2
label96:
	mov r5, r0
	mov r6, #0
.p2align 4
label8:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	bhs label11
	mov r5, r0
	b label8
label11:
	cmp r4, #0
	rsb r0, r6, #0
	str r6, [sp, #0]
	movw r5, #:lower16:c
	mov r3, r6
	movw r4, #:lower16:a
	movt r5, #:upper16:c
	movne r3, r0
	movt r4, #:upper16:a
	movw r6, #:lower16:b
	str r3, [sp, #0]
	cmp r3, #0
	movt r6, #:upper16:b
	bne label118
	mov r0, #0
	cmp r3, r0
	bgt label164
	movw r1, #:lower16:cnt
	movt r1, #:upper16:cnt
	cmp r3, #0
	sub r0, r3, #4
	bgt label66
	b label449
label118:
	mov r7, #0
.p2align 4
label13:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bhi label124
	mov r8, #0
	cmp r1, #10
	blo label137
	b label136
.p2align 4
label124:
	mov r9, r0
	mov r8, #0
.p2align 4
label15:
	bl getch
	cmp r9, #45
	mov r2, #1
	sub r1, r0, #48
	moveq r8, r2
	cmp r1, #9
	bhi label132
	cmp r1, #10
	blo label137
	b label136
.p2align 4
label132:
	mov r9, r0
	b label15
.p2align 4
label136:
	mov r0, #0
	cmp r8, #0
	rsb r1, r0, #0
	movne r0, r1
	str r0, [r4, r7, lsl #2]
	str r0, [r6, r7, lsl #2]
	str r0, [r5, r7, lsl #2]
	ldr r3, [sp, #0]
	add r7, r7, #1
	cmp r3, r7
	bne label13
	mov r0, #0
	cmp r3, r0
	bgt label164
	movw r1, #:lower16:cnt
	movt r1, #:upper16:cnt
	cmp r3, #0
	sub r0, r3, #4
	bgt label66
	b label449
.p2align 4
label137:
	mov r9, r0
	mov r10, #0
.p2align 4
label21:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	blo label146
	mov r0, r10
	cmp r8, #0
	rsb r1, r10, #0
	movne r0, r1
	str r0, [r4, r7, lsl #2]
	str r0, [r6, r7, lsl #2]
	str r0, [r5, r7, lsl #2]
	ldr r3, [sp, #0]
	add r7, r7, #1
	cmp r3, r7
	bne label13
	mov r0, #0
	cmp r3, r0
	bgt label164
	movw r1, #:lower16:cnt
	movt r1, #:upper16:cnt
	cmp r3, #0
	sub r0, r3, #4
	bgt label66
	b label449
.p2align 4
label146:
	mov r9, r0
	b label21
label449:
	mvn r3, #99
	mov r7, #0
	mov r2, r7
	b label32
label164:
	add r1, r0, #1
	mov r2, r1
	b label74
.p2align 4
label32:
	cmp r3, r2
	bge label60
	mov r7, #0
	ldr r3, [sp, #0]
	cmp r3, r7
	bgt label38
	cmp r3, #0
	bne label249
	mov r0, #0
	subs r1, r0, r3
	bne label53
label467:
	mvn r0, #122
	b label56
label51:
	ldr r3, [sp, #0]
	subs r1, r0, r3
	beq label467
label53:
	ldr r1, [r6, r0, lsl #2]
	cmp r1, #0
	beq label54
	mov r0, #1
	b label56
label54:
	ldr r1, [r5, r0, lsl #2]
	cmp r1, #0
	bne label268
	add r0, r0, #1
	b label51
label268:
	mov r0, #2
label56:
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label66:
	ldr r3, [sp, #0]
	cmp r3, #4
	bgt label307
	mov r2, #0
	mvn r7, #99
	b label67
label307:
	mvn r7, #99
	mov r2, #0
	b label70
label67:
	ldr r3, [r6, r2, lsl #2]
	add r2, r2, #1
	cmp r7, r3
	add r8, r1, r3, lsl #2
	movle r7, r3
	ldr r9, [r8, #0]
	add r9, r9, #1
	str r9, [r8, #0]
	ldr r3, [sp, #0]
	cmp r3, r2
	bgt label67
	mov r3, r7
	mov r7, #0
	mov r2, r7
	b label32
.p2align 4
label74:
	ldr r3, [sp, #0]
	cmp r3, r2
	bgt label76
	mov r0, r1
	cmp r3, r1
	bgt label164
	movw r1, #:lower16:cnt
	movt r1, #:upper16:cnt
	cmp r3, #0
	sub r0, r3, #4
	bgt label66
	b label449
.p2align 4
label76:
	ldr r3, [r4, r0, lsl #2]
	ldr r7, [r4, r2, lsl #2]
	cmp r3, r7
	bgt label77
	add r2, r2, #1
	ldr r3, [sp, #0]
	cmp r3, r2
	bgt label76
	mov r0, r1
	cmp r3, r1
	bgt label164
	movw r1, #:lower16:cnt
	movt r1, #:upper16:cnt
	cmp r3, #0
	sub r0, r3, #4
	bgt label66
	b label449
.p2align 4
label77:
	str r7, [r4, r0, lsl #2]
	str r3, [r4, r2, lsl #2]
	add r2, r2, #1
	ldr r3, [sp, #0]
	cmp r3, r2
	bgt label76
	mov r0, r1
	cmp r3, r1
	bgt label164
	movw r1, #:lower16:cnt
	movt r1, #:upper16:cnt
	cmp r3, #0
	sub r0, r3, #4
	bgt label66
	b label449
.p2align 4
label60:
	ldr r8, [r1, r2, lsl #2]
	cmp r8, #0
	bne label61
	add r2, r2, #1
	cmp r3, r2
	bge label60
	mov r7, #0
	ldr r3, [sp, #0]
	cmp r3, r7
	bgt label38
	cmp r3, #0
	bne label249
	mov r0, #0
	subs r1, r0, r3
	bne label53
	b label467
.p2align 4
label61:
	str r2, [r6, r7, lsl #2]
	subs r8, r8, #1
	add r7, r7, #1
	bne label61
	add r2, r2, #1
	cmp r3, r2
	bge label60
	mov r7, #0
	ldr r3, [sp, #0]
	cmp r3, r7
	bgt label38
	cmp r3, #0
	bne label249
	mov r0, #0
	subs r1, r0, r3
	bne label53
	b label467
.p2align 4
label38:
	add r1, r7, #1
	add r2, r5, r7, lsl #2
	ldr r3, [sp, #0]
	cmp r3, r1
	bgt label39
	mov r8, r2
	ldr r3, [r2, #0]
	ldr r7, [r2, #0]
	str r7, [r2, #0]
	mov r7, r1
	str r3, [r2, #0]
	ldr r3, [sp, #0]
	cmp r3, r1
	bgt label38
	cmp r3, #0
	bne label249
	mov r0, #0
	subs r1, r0, r3
	bne label53
	b label467
.p2align 4
label39:
	add r8, r7, #5
	ldr r3, [sp, #0]
	cmp r3, r8
	bgt label191
	mov r8, r2
	mov r3, r1
	ldr r9, [r5, r1, lsl #2]
	ldr r8, [r2, #0]
	cmp r9, r8
	add r9, r1, #1
	movlt r7, r1
	ldr r3, [sp, #0]
	add r8, r5, r7, lsl #2
	cmp r3, r9
	bgt label204
	ldr r3, [r2, #0]
	ldr r7, [r8, #0]
	str r7, [r2, #0]
	mov r7, r1
	str r3, [r8, #0]
	ldr r3, [sp, #0]
	cmp r3, r1
	bgt label38
	cmp r3, #0
	bne label249
	mov r0, #0
	subs r1, r0, r3
	bne label53
	b label467
.p2align 4
label191:
	mov r3, r1
	mov r8, r2
	b label44
.p2align 4
label40:
	ldr r9, [r5, r3, lsl #2]
	ldr r8, [r8, #0]
	cmp r9, r8
	add r9, r3, #1
	movlt r7, r3
	ldr r3, [sp, #0]
	add r8, r5, r7, lsl #2
	cmp r3, r9
	bgt label204
	ldr r3, [r2, #0]
	ldr r7, [r8, #0]
	str r7, [r2, #0]
	mov r7, r1
	str r3, [r8, #0]
	ldr r3, [sp, #0]
	cmp r3, r1
	bgt label38
	cmp r3, #0
	bne label249
	mov r0, #0
	subs r1, r0, r3
	bne label53
	b label467
.p2align 4
label204:
	mov r3, r9
	b label40
.p2align 4
label44:
	ldr r9, [r5, r3, lsl #2]
	ldr r8, [r8, #0]
	cmp r9, r8
	add r8, r3, #1
	movlt r7, r3
	ldr r9, [r5, r8, lsl #2]
	ldr r10, [r5, r7, lsl #2]
	cmp r9, r10
	movlt r7, r8
	add r8, r3, #2
	ldr r9, [r5, r8, lsl #2]
	ldr r10, [r5, r7, lsl #2]
	cmp r9, r10
	movlt r7, r8
	add r8, r3, #3
	add r3, r3, #4
	ldr r9, [r5, r8, lsl #2]
	ldr r10, [r5, r7, lsl #2]
	cmp r9, r10
	movlt r7, r8
	cmp r0, r3
	add r8, r5, r7, lsl #2
	bgt label44
	ldr r9, [r5, r3, lsl #2]
	ldr r8, [r8, #0]
	cmp r9, r8
	add r9, r3, #1
	movlt r7, r3
	ldr r3, [sp, #0]
	add r8, r5, r7, lsl #2
	cmp r3, r9
	bgt label204
	ldr r3, [r2, #0]
	ldr r7, [r8, #0]
	str r7, [r2, #0]
	mov r7, r1
	str r3, [r8, #0]
	ldr r3, [sp, #0]
	cmp r3, r1
	bgt label38
	cmp r3, #0
	bne label249
	mov r0, #0
	subs r1, r0, r3
	bne label53
	b label467
label249:
	mov r0, #0
	b label58
label70:
	add r3, r6, r2, lsl #2
	add r2, r2, #4
	ldr r8, [r3, #0]
	cmp r7, r8
	add r9, r1, r8, lsl #2
	movle r7, r8
	ldr r10, [r9, #0]
	add r10, r10, #1
	str r10, [r9, #0]
	ldr r9, [r3, #4]
	mov r8, r9
	cmp r9, r7
	add r10, r1, r9, lsl #2
	movle r8, r7
	ldr r11, [r10, #0]
	mov r7, r8
	add r11, r11, #1
	str r11, [r10, #0]
	ldr r9, [r3, #8]
	cmp r8, r9
	movle r7, r9
	add r8, r1, r9, lsl #2
	ldr r9, [r8, #0]
	add r9, r9, #1
	str r9, [r8, #0]
	ldr r3, [r3, #12]
	cmp r7, r3
	movle r7, r3
	cmp r0, r2
	add r3, r1, r3, lsl #2
	ldr r8, [r3, #0]
	add r8, r8, #1
	str r8, [r3, #0]
	bgt label70
	b label67
.p2align 4
label58:
	add r2, r6, r0, lsl #2
	ldr r3, [r2, #0]
	ldr r1, [r4, r0, lsl #2]
	sub r3, r3, r1
	str r3, [r2, #0]
	add r2, r5, r0, lsl #2
	add r0, r0, #1
	ldr r7, [r2, #0]
	sub r3, r7, r3
	sub r1, r3, r1
	str r1, [r2, #0]
	ldr r3, [sp, #0]
	subs r1, r3, r0
	bne label58
	mov r0, #0
	subs r1, r0, r3
	bne label53
	b label467
