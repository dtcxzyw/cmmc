.arch armv7ve
.data
.bss
.align 8
next:
	.zero	16384
.align 8
src:
	.zero	16384
.align 8
dst:
	.zero	16384
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, lr }
	mov r6, #0
	movw r5, #:lower16:next
	movt r5, #:upper16:next
	movw r4, #:lower16:dst
	movt r4, #:upper16:dst
	sub sp, sp, #4
label2:
	bl getch
	cmp r0, #10
	str r0, [r4, r6, lsl #2]
	bne label4
	mov r7, #0
	str r7, [r4, r6, lsl #2]
	movw r6, #:lower16:src
	movt r6, #:upper16:src
label6:
	bl getch
	cmp r0, #10
	str r0, [r6, r7, lsl #2]
	beq label9
	add r7, r7, #1
	b label6
label9:
	mov r1, #0
	mvn r0, #0
	str r1, [r6, r7, lsl #2]
	str r0, [r5, #0]
	ldr r2, [r4, r1, lsl #2]
	cmp r2, #0
	bne label21
label55:
	mov r1, #0
	mov r0, r1
	b label13
.p2align 4
label21:
	cmn r0, #1
	bne label22
.p2align 4
label24:
	add r1, r1, #1
	add r0, r0, #1
	str r0, [r5, r1, lsl #2]
	ldr r2, [r4, r1, lsl #2]
	cmp r2, #0
	bne label21
	b label55
.p2align 4
label22:
	ldr r3, [r4, r0, lsl #2]
	cmp r2, r3
	beq label24
	ldr r0, [r5, r0, lsl #2]
	ldr r2, [r4, r1, lsl #2]
	cmp r2, #0
	bne label21
	b label55
label13:
	ldr r2, [r6, r0, lsl #2]
	cmp r2, #0
	beq label62
	ldr r3, [r4, r1, lsl #2]
	cmp r2, r3
	beq label20
	ldr r1, [r5, r1, lsl #2]
	cmn r1, #1
	add r2, r1, #1
	moveq r1, #0
	clz r2, r2
	lsr r2, r2, #5
	add r0, r0, r2
	b label13
label4:
	add r6, r6, #1
	b label2
label16:
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, pc }
label20:
	add r1, r1, #1
	add r0, r0, #1
	ldr r2, [r4, r1, lsl #2]
	cmp r2, #0
	beq label16
	b label13
label62:
	mvn r0, #0
	b label16
