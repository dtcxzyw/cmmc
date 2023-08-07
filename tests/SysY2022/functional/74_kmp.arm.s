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
	push { r4, r5, r6, r7, r8, r9, lr }
	movw r5, #:lower16:next
	movt r5, #:upper16:next
	movw r4, #:lower16:dst
	movt r4, #:upper16:dst
	sub sp, sp, #4
	mov r6, r4
label2:
	bl getch
	cmp r0, #10
	str r0, [r6, #0]
	bne label37
	mov r0, #0
	str r0, [r6, #0]
	movw r6, #:lower16:src
	movt r6, #:upper16:src
	mov r7, r6
label5:
	bl getch
	cmp r0, #10
	str r0, [r7, #0]
	beq label7
	add r7, r7, #4
	b label5
label7:
	mov r8, #0
	mvn r3, #0
	sub r1, r4, #4
	sub r0, r5, #4
	str r8, [r7, #0]
	mov r2, r4
	mov r7, r8
	str r3, [r5, #0]
	ldr r8, [r4, #0]
	cmp r8, #0
	bne label25
label14:
	mov r1, #0
	mov r0, r1
	b label15
.p2align 4
label25:
	cmn r3, #1
	bne label26
.p2align 4
label28:
	add r7, r7, #1
	add r3, r3, #1
	add r2, r2, #4
	add r1, r1, #4
	str r3, [r5, r7, lsl #2]
	add r0, r0, #4
	ldr r8, [r2, #0]
	cmp r8, #0
	bne label25
	b label14
.p2align 4
label26:
	ldr r9, [r1, #0]
	cmp r8, r9
	beq label28
	ldr r3, [r0, #0]
	ldr r8, [r2, #0]
	add r0, r5, r3, lsl #2
	add r1, r4, r3, lsl #2
	cmp r8, #0
	bne label25
	b label14
label15:
	ldr r2, [r6, #0]
	cmp r2, #0
	beq label56
	ldr r3, [r4, r1, lsl #2]
	cmp r2, r3
	beq label23
	ldr r1, [r5, r1, lsl #2]
	cmn r1, #1
	add r2, r1, #1
	moveq r1, #0
	clz r2, r2
	lsr r2, r2, #5
	add r6, r6, r2, lsl #2
	add r0, r0, r2
	b label15
label19:
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, pc }
label23:
	add r1, r1, #1
	add r0, r0, #1
	ldr r2, [r4, r1, lsl #2]
	cmp r2, #0
	beq label19
	add r6, r6, #4
	b label15
label56:
	mvn r0, #0
	b label19
label37:
	add r6, r6, #4
	b label2
