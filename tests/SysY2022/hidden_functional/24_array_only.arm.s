.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, lr }
	mov r7, #0
	mvn r0, #0
	sub sp, sp, #12
	str r0, [sp, #0]
	mov r6, sp
	str r7, [sp, #4]
	bl getint
	mov r4, r0
	bl getint
	mov r5, r0
	mov r0, r6
	bl getarray
	mov r6, r7
label2:
	cmp r5, #0
	beq label38
	ldr r9, [sp, #0]
	cmp r9, #5
	bge label5
	mov r8, r9
	b label16
label5:
	cmp r4, #0
	bne label55
label9:
	add r0, r6, #1
	cmp r4, #0
	beq label11
	mov r1, r4
	b label13
label11:
	ldr r1, [sp, #0]
	add r6, r0, r1
	ldr r0, [sp, #4]
	cmp r6, r0
	beq label38
	b label2
label13:
	subs r1, r1, #1
	lsl r0, r0, #1
	bne label13
	b label11
.p2align 4
label16:
	mov r0, r6
	bl putint
	mov r0, r8
	bl putint
	mov r0, r5
	bl putint
	mov r0, r9
	bl putint
	cmp r4, #0
	bne label82
	ldr r1, [sp, #0]
	add r0, r5, r1
	str r0, [sp, #0]
	beq label29
	subs r0, r4, #1
	lsl r8, r8, #1
	bne label26
	add r8, r5, r8
.p2align 4
label37:
	ldr r1, [sp, #0]
	cmp r8, #5
	sub r9, r1, r5
	str r9, [sp, #0]
	blt label16
	b label5
label38:
	mov r0, #10
	bl putch
	add sp, sp, #12
	mov r0, r7
	pop { r4, r5, r6, r7, r8, r9, pc }
.p2align 4
label82:
	ldr r1, [sp, #0]
	subs r0, r4, #1
	lsl r1, r1, #1
	beq label136
.p2align 4
label21:
	subs r0, r0, #1
	lsl r1, r1, #1
	bne label21
	add r0, r5, r1
	cmp r4, #0
	str r0, [sp, #0]
	beq label29
	mov r0, r4
.p2align 4
label26:
	subs r0, r0, #1
	lsl r8, r8, #1
	bne label26
.p2align 4
label29:
	add r8, r5, r8
	cmp r4, #0
	beq label37
	ldr r1, [sp, #0]
	mov r0, r4
.p2align 4
label32:
	subs r0, r0, #1
	lsl r1, r1, #1
	bne label32
.p2align 4
label35:
	sub r9, r1, r5
	cmp r8, #5
	str r9, [sp, #0]
	blt label16
	b label5
.p2align 4
label136:
	add r0, r5, r1
	cmp r4, #0
	str r0, [sp, #0]
	beq label29
	subs r0, r4, #1
	lsl r8, r8, #1
	bne label26
	add r8, r5, r8
	beq label37
	ldr r1, [sp, #0]
	subs r0, r4, #1
	lsl r1, r1, #1
	bne label32
	b label35
label55:
	mov r0, r4
label6:
	subs r1, r0, #1
	lsl r0, r6, #1
	beq label61
	mov r6, r0
	mov r0, r1
	b label6
label61:
	mov r6, r0
	b label9
