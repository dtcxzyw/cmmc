.arch armv7ve
.data
.bss
.align 4
next:
	.zero	16384
.align 4
src:
	.zero	16384
.align 4
dst:
	.zero	16384
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, lr }
	movw r5, #:lower16:next
	mov r6, #0
	movw r4, #:lower16:dst
	sub sp, sp, #4
	movt r5, #:upper16:next
	movt r4, #:upper16:dst
label2:
	bl getch
	cmp r0, #10
	str r0, [r4, r6, lsl #2]
	bne label34
	b label33
label34:
	add r6, r6, #1
	b label2
label33:
	mov r7, #0
	str r7, [r4, r6, lsl #2]
	movw r6, #:lower16:src
	movt r6, #:upper16:src
label5:
	bl getch
	cmp r0, #10
	str r0, [r6, r7, lsl #2]
	bne label7
	mov r1, #0
	mvn r0, #0
	str r1, [r6, r7, lsl #2]
	str r0, [r5, #0]
	ldr r2, [r4, r1, lsl #2]
	cmp r2, #0
	beq label55
	cmn r0, #1
	bne label14
	add r1, r1, #1
	add r0, r0, #1
	str r0, [r5, r1, lsl #2]
	ldr r2, [r4, r1, lsl #2]
	cmp r2, #0
	beq label55
	cmn r0, #1
	bne label14
	add r1, r1, #1
	add r0, r0, #1
	str r0, [r5, r1, lsl #2]
	ldr r2, [r4, r1, lsl #2]
	cmp r2, #0
	beq label55
	cmn r0, #1
	bne label14
	add r1, r1, #1
	add r0, r0, #1
	str r0, [r5, r1, lsl #2]
	ldr r2, [r4, r1, lsl #2]
	cmp r2, #0
	beq label55
	cmn r0, #1
	bne label14
	add r1, r1, #1
	add r0, r0, #1
	str r0, [r5, r1, lsl #2]
	ldr r2, [r4, r1, lsl #2]
	cmp r2, #0
	beq label55
	b label179
label7:
	add r7, r7, #1
	b label5
label55:
	mov r1, #0
	mov r0, r1
	ldr r2, [r6, r1, lsl #2]
	cmp r2, #0
	beq label80
	ldr r3, [r4, r1, lsl #2]
	cmp r2, r3
	bne label22
	add r1, r1, #1
	add r0, r0, #1
	ldr r2, [r4, r1, lsl #2]
	cmp r2, #0
	bne label16
	b label19
label16:
	ldr r2, [r6, r0, lsl #2]
	cmp r2, #0
	beq label80
	ldr r3, [r4, r1, lsl #2]
	cmp r2, r3
	bne label22
	add r1, r1, #1
	add r0, r0, #1
	ldr r2, [r4, r1, lsl #2]
	cmp r2, #0
	bne label16
	b label19
label80:
	mvn r0, #0
label19:
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, pc }
label22:
	ldr r1, [r5, r1, lsl #2]
	add r2, r1, #1
	clz r2, r2
	lsr r2, r2, #5
	add r0, r0, r2
	add r1, r1, r2
	ldr r2, [r6, r0, lsl #2]
	cmp r2, #0
	beq label80
	ldr r3, [r4, r1, lsl #2]
	cmp r2, r3
	bne label22
	add r1, r1, #1
	add r0, r0, #1
	ldr r2, [r4, r1, lsl #2]
	cmp r2, #0
	bne label16
	b label19
label179:
	cmn r0, #1
	bne label14
label172:
	add r1, r1, #1
	add r0, r0, #1
	str r0, [r5, r1, lsl #2]
	ldr r2, [r4, r1, lsl #2]
	cmp r2, #0
	beq label55
	b label179
label15:
	ldr r0, [r5, r0, lsl #2]
	ldr r2, [r4, r1, lsl #2]
	cmp r2, #0
	beq label55
	cmn r0, #1
	bne label14
	add r1, r1, #1
	add r0, r0, #1
	str r0, [r5, r1, lsl #2]
	ldr r2, [r4, r1, lsl #2]
	cmp r2, #0
	beq label55
	cmn r0, #1
	bne label14
	add r1, r1, #1
	add r0, r0, #1
	str r0, [r5, r1, lsl #2]
	ldr r2, [r4, r1, lsl #2]
	cmp r2, #0
	beq label55
	cmn r0, #1
	bne label14
	add r1, r1, #1
	add r0, r0, #1
	str r0, [r5, r1, lsl #2]
	ldr r2, [r4, r1, lsl #2]
	cmp r2, #0
	beq label55
	cmn r0, #1
	bne label14
	add r1, r1, #1
	add r0, r0, #1
	str r0, [r5, r1, lsl #2]
	ldr r2, [r4, r1, lsl #2]
	cmp r2, #0
	beq label55
	cmn r0, #1
	bne label14
	b label172
label14:
	ldr r3, [r4, r0, lsl #2]
	cmp r2, r3
	bne label15
	add r1, r1, #1
	add r0, r0, #1
	str r0, [r5, r1, lsl #2]
	ldr r2, [r4, r1, lsl #2]
	cmp r2, #0
	beq label55
	cmn r0, #1
	bne label14
	add r1, r1, #1
	add r0, r0, #1
	str r0, [r5, r1, lsl #2]
	ldr r2, [r4, r1, lsl #2]
	cmp r2, #0
	beq label55
	cmn r0, #1
	bne label14
	add r1, r1, #1
	add r0, r0, #1
	str r0, [r5, r1, lsl #2]
	ldr r2, [r4, r1, lsl #2]
	cmp r2, #0
	beq label55
	cmn r0, #1
	bne label14
	add r1, r1, #1
	add r0, r0, #1
	str r0, [r5, r1, lsl #2]
	ldr r2, [r4, r1, lsl #2]
	cmp r2, #0
	beq label55
	cmn r0, #1
	bne label14
	add r1, r1, #1
	add r0, r0, #1
	str r0, [r5, r1, lsl #2]
	ldr r2, [r4, r1, lsl #2]
	cmp r2, #0
	beq label55
	cmn r0, #1
	bne label14
	b label172