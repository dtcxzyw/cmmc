.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, lr }
	mov r5, #0
	mvn r0, #0
	sub sp, sp, #12
	str r0, [sp, #0]
	mov r7, sp
	str r5, [r7, #4]
	bl getint
	mov r4, r0
	bl getint
	mov r6, r0
	mov r0, r7
	bl getarray
label2:
	cmp r6, #0
	beq label4
	ldr r9, [sp, #0]
	cmp r9, #5
	bge label6
	mov r8, r9
label17:
	mov r0, r5
	bl putint
	mov r0, r8
	bl putint
	mov r0, r6
	bl putint
	mov r0, r9
	bl putint
	cmp r4, #0
	bne label21
	ldr r0, [sp, #0]
	add r0, r6, r0
	str r0, [sp, #0]
	add r8, r6, r8
	ldr r0, [sp, #0]
	sub r9, r0, r6
	cmp r8, #5
	str r9, [sp, #0]
	bge label6
	b label17
label21:
	ldr r0, [sp, #0]
	mov r1, r4
	b label22
label95:
	mov r0, r4
label27:
	subs r0, r0, #1
	lsl r8, r8, #1
	bne label27
	add r8, r6, r8
	cmp r4, #0
	bne label32
	ldr r0, [sp, #0]
	sub r9, r0, r6
	cmp r8, #5
	str r9, [sp, #0]
	bge label6
	b label17
label22:
	subs r1, r1, #1
	lsl r0, r0, #1
	bne label22
	add r0, r6, r0
	cmp r4, #0
	str r0, [sp, #0]
	bne label95
	add r8, r6, r8
	ldr r0, [sp, #0]
	sub r9, r0, r6
	cmp r8, #5
	str r9, [sp, #0]
	bge label6
	b label17
label32:
	ldr r0, [sp, #0]
	mov r1, r4
label33:
	subs r1, r1, #1
	lsl r0, r0, #1
	bne label33
	sub r9, r0, r6
	cmp r8, #5
	str r9, [sp, #0]
	bge label6
	b label17
label6:
	cmp r4, #0
	bne label56
	add r0, r5, #1
	ldr r1, [sp, #0]
	add r5, r0, r1
	ldr r0, [r7, #4]
	cmp r5, r0
	bne label2
label4:
	mov r0, #10
	bl putch
	add sp, sp, #12
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, pc }
label56:
	mov r0, r4
	subs r0, r4, #1
	lsl r5, r5, #1
	bne label14
	add r0, r5, #1
	cmp r4, #0
	bne label60
	ldr r1, [sp, #0]
	add r5, r0, r1
	ldr r0, [r7, #4]
	cmp r5, r0
	bne label2
	b label4
label60:
	mov r1, r4
label9:
	subs r1, r1, #1
	lsl r0, r0, #1
	bne label9
	ldr r1, [sp, #0]
	add r5, r0, r1
	ldr r0, [r7, #4]
	cmp r5, r0
	bne label2
	b label4
label14:
	subs r0, r0, #1
	lsl r5, r5, #1
	bne label14
	add r0, r5, #1
	cmp r4, #0
	bne label60
	ldr r1, [sp, #0]
	add r5, r0, r1
	ldr r0, [r7, #4]
	cmp r5, r0
	bne label2
	b label4
