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
	movw r4, #:lower16:dst
	movt r4, #:upper16:dst
	sub sp, sp, #4
	mov r6, r4
label2:
	bl getch
	cmp r0, #10
	str r0, [r6, #0]
	bne label35
	movw r5, #:lower16:src
	movt r5, #:upper16:src
	mov r0, #0
	str r0, [r6, #0]
	mov r6, r5
	b label5
label42:
	add r6, r6, #4
label5:
	bl getch
	cmp r0, #10
	str r0, [r6, #0]
	bne label42
	mov r0, #0
	mvn r7, #0
	sub r2, r4, #4
	mov r3, r4
	str r0, [r6, #0]
	movw r0, #:lower16:next
	movt r0, #:upper16:next
	mov r6, r0
	sub r1, r0, #4
	str r7, [r0, #0]
	ldr r8, [r4, #0]
	cmp r8, #0
	bne label25
	b label14
.p2align 4
label28:
	add r8, r6, #4
	add r7, r7, #1
	add r3, r3, #4
	add r2, r2, #4
	str r7, [r6, #4]
	add r1, r1, #4
	mov r6, r8
	ldr r8, [r3, #0]
	cmp r8, #0
	beq label14
.p2align 4
label25:
	cmn r7, #1
	beq label28
	ldr r9, [r2, #0]
	cmp r8, r9
	beq label28
	ldr r7, [r1, #0]
	ldr r8, [r3, #0]
	add r2, r4, r7, lsl #2
	add r1, r0, r7, lsl #2
	cmp r8, #0
	bne label25
label14:
	mov r2, #0
	mov r1, r2
	b label15
label22:
	ldr r2, [r0, r2, lsl #2]
	cmn r2, #1
	add r3, r2, #1
	moveq r2, #0
	clz r3, r3
	lsr r3, r3, #5
	add r5, r5, r3, lsl #2
	add r1, r1, r3
label15:
	ldr r3, [r5, #0]
	cmp r3, #0
	beq label56
	add r6, r4, r2, lsl #2
	ldr r7, [r6, #0]
	cmp r3, r7
	bne label22
	ldr r3, [r6, #4]
	add r2, r2, #1
	add r1, r1, #1
	cmp r3, #0
	beq label80
	add r5, r5, #4
	b label15
label80:
	mov r0, r1
label19:
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, pc }
label56:
	mvn r0, #0
	b label19
label35:
	add r6, r6, #4
	b label2
