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
	beq label4
	ldr r9, [sp, #0]
	cmp r9, #5
	bge label28
	mov r8, r9
	b label6
label4:
	mov r0, #10
	bl putch
	add sp, sp, #12
	mov r0, r7
	pop { r4, r5, r6, r7, r8, r9, pc }
.p2align 4
label6:
	mov r0, r6
	bl putint
	mov r0, r8
	bl putint
	mov r0, r5
	bl putint
	mov r0, r9
	bl putint
	cmp r4, #0
	beq label9
	ldr r1, [sp, #0]
	mov r0, r4
	subs r0, r4, #1
	lsl r1, r1, #1
	bne label11
	add r0, r5, r1
	str r0, [sp, #0]
	beq label19
	mov r0, r4
	subs r0, r4, #1
	lsl r8, r8, #1
	bne label16
	add r8, r5, r8
.p2align 4
label23:
	ldr r1, [sp, #0]
	sub r9, r1, r5
	cmp r8, #5
	str r9, [sp, #0]
	blt label6
label28:
	cmp r4, #0
	beq label32
	mov r0, r4
label29:
	subs r1, r0, #1
	lsl r0, r6, #1
	bne label100
	mov r6, r0
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
label11:
	subs r0, r0, #1
	lsl r1, r1, #1
	bne label11
	add r0, r5, r1
	cmp r4, #0
	str r0, [sp, #0]
	beq label19
	mov r0, r4
.p2align 4
label16:
	subs r0, r0, #1
	lsl r8, r8, #1
	bne label16
.p2align 4
label19:
	add r8, r5, r8
	cmp r4, #0
	beq label23
	ldr r1, [sp, #0]
	mov r0, r4
	subs r0, r4, #1
	lsl r1, r1, #1
	bne label25
	sub r9, r1, r5
	cmp r8, #5
	str r9, [sp, #0]
	blt label6
	b label28
.p2align 4
label9:
	ldr r1, [sp, #0]
	add r0, r5, r1
	cmp r4, #0
	str r0, [sp, #0]
	beq label19
	mov r0, r4
	subs r0, r4, #1
	lsl r8, r8, #1
	bne label16
	add r8, r5, r8
	beq label23
	ldr r1, [sp, #0]
	mov r0, r4
	subs r0, r4, #1
	lsl r1, r1, #1
	beq label144
.p2align 4
label25:
	subs r0, r0, #1
	lsl r1, r1, #1
	bne label25
	sub r9, r1, r5
	cmp r8, #5
	str r9, [sp, #0]
	blt label6
	b label28
label144:
	sub r9, r1, r5
	cmp r8, #5
	str r9, [sp, #0]
	blt label6
	b label28
label100:
	mov r6, r0
	mov r0, r1
	b label29
