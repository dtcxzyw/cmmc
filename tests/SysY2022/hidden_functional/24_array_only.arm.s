.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, lr }
	mov r7, #0
	mvn r0, #0
	sub sp, sp, #8
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
	beq label4
	ldr r8, [sp, #0]
	cmp r8, #5
	bge label52
	mov r7, r8
.p2align 4
label6:
	mov r0, r6
	bl putint
	mov r0, r7
	bl putint
	mov r0, r5
	bl putint
	mov r0, r8
	bl putint
	cmp r4, #0
	beq label9
	b label55
.p2align 4
label140:
	sub r8, r0, r5
	cmp r7, #5
	str r8, [sp, #0]
	blt label6
	cmp r4, #0
	beq label32
	b label134
.p2align 4
label55:
	ldr r0, [sp, #0]
	mov r1, r4
	subs r1, r4, #1
	lsl r0, r0, #1
	beq label139
.p2align 4
label11:
	subs r1, r1, #1
	lsl r0, r0, #1
	bne label11
	add r0, r5, r0
	cmp r4, #0
	str r0, [sp, #0]
	beq label19
	mov r0, r4
.p2align 4
label16:
	subs r0, r0, #1
	lsl r7, r7, #1
	bne label16
.p2align 4
label19:
	add r7, r5, r7
	cmp r4, #0
	beq label23
	ldr r0, [sp, #0]
	mov r1, r4
	subs r1, r4, #1
	lsl r0, r0, #1
	beq label140
.p2align 4
label25:
	subs r1, r1, #1
	lsl r0, r0, #1
	bne label25
	sub r8, r0, r5
	cmp r7, #5
	str r8, [sp, #0]
	blt label6
	cmp r4, #0
	beq label32
	b label134
.p2align 4
label139:
	add r0, r5, r0
	cmp r4, #0
	str r0, [sp, #0]
	beq label19
	mov r0, r4
	subs r0, r4, #1
	lsl r7, r7, #1
	bne label16
	add r7, r5, r7
	beq label23
	ldr r0, [sp, #0]
	mov r1, r4
	subs r1, r4, #1
	lsl r0, r0, #1
	bne label25
	sub r8, r0, r5
	cmp r7, #5
	str r8, [sp, #0]
	blt label6
	cmp r4, #0
	bne label134
label32:
	add r0, r6, #1
	cmp r4, #0
	beq label34
	mov r1, r4
	b label36
label34:
	ldr r1, [sp, #0]
	add r6, r0, r1
	ldr r0, [sp, #4]
	cmp r6, r0
	beq label4
	b label2
label36:
	subs r1, r1, #1
	lsl r0, r0, #1
	bne label36
	b label34
.p2align 4
label9:
	ldr r0, [sp, #0]
	add r0, r5, r0
	cmp r4, #0
	str r0, [sp, #0]
	beq label19
	mov r0, r4
	subs r0, r4, #1
	lsl r7, r7, #1
	bne label16
	add r7, r5, r7
.p2align 4
label23:
	ldr r0, [sp, #0]
	sub r8, r0, r5
	cmp r7, #5
	str r8, [sp, #0]
	blt label6
	cmp r4, #0
	beq label32
	b label134
.p2align 4
label52:
	cmp r4, #0
	beq label32
label134:
	mov r0, r4
label29:
	subs r1, r0, #1
	lsl r0, r6, #1
	bne label100
	mov r6, r0
	b label32
label4:
	mov r0, #10
	bl putch
	add sp, sp, #8
	mov r0, #0
	pop { r4, r5, r6, r7, r8, pc }
label100:
	mov r6, r0
	mov r0, r1
	b label29
