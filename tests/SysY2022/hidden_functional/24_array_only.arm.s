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
	cmp r6, #0
	beq label38
label4:
	ldr r9, [sp, #0]
	cmp r9, #5
	blt label53
	cmp r4, #0
	beq label28
	mov r0, r4
	subs r0, r4, #1
	lsl r5, r5, #1
	bne label35
	add r0, r5, #1
	beq label33
	mov r1, r4
	subs r1, r4, #1
	lsl r0, r0, #1
	bne label30
	ldr r1, [sp, #0]
	add r5, r0, r1
	ldr r0, [r7, #4]
	cmp r5, r0
	beq label38
	cmp r6, #0
	bne label4
	b label38
label53:
	mov r8, r9
label5:
	mov r0, r5
	bl putint
	mov r0, r8
	bl putint
	mov r0, r6
	bl putint
	mov r0, r9
	bl putint
	cmp r4, #0
	beq label8
	ldr r0, [sp, #0]
	mov r1, r4
	subs r1, r4, #1
	lsl r0, r0, #1
	bne label10
	add r0, r6, r0
	str r0, [sp, #0]
	beq label18
	mov r0, r4
	subs r0, r4, #1
	lsl r8, r8, #1
	bne label15
	add r8, r6, r8
	beq label24
	ldr r0, [sp, #0]
	mov r1, r4
	subs r1, r4, #1
	lsl r0, r0, #1
	bne label21
	sub r9, r0, r6
	cmp r8, #5
	str r9, [sp, #0]
	blt label5
	cmp r4, #0
	beq label28
	mov r0, r4
	subs r0, r4, #1
	lsl r5, r5, #1
	bne label35
	add r0, r5, #1
	beq label33
	b label255
label8:
	ldr r0, [sp, #0]
	add r0, r6, r0
	cmp r4, #0
	str r0, [sp, #0]
	beq label18
	mov r0, r4
	subs r0, r4, #1
	lsl r8, r8, #1
	bne label15
	add r8, r6, r8
	beq label24
	ldr r0, [sp, #0]
	mov r1, r4
	subs r1, r4, #1
	lsl r0, r0, #1
	bne label21
	sub r9, r0, r6
	cmp r8, #5
	str r9, [sp, #0]
	blt label5
	cmp r4, #0
	beq label28
	mov r0, r4
	subs r0, r4, #1
	lsl r5, r5, #1
	bne label35
	add r0, r5, #1
	beq label33
	mov r1, r4
	subs r1, r4, #1
	lsl r0, r0, #1
	bne label30
	b label211
label255:
	mov r1, r4
	subs r1, r4, #1
	lsl r0, r0, #1
	bne label30
	b label211
label21:
	subs r1, r1, #1
	lsl r0, r0, #1
	bne label21
	sub r9, r0, r6
	cmp r8, #5
	str r9, [sp, #0]
	blt label5
	cmp r4, #0
	beq label28
	mov r0, r4
	subs r0, r4, #1
	lsl r5, r5, #1
	bne label35
	add r0, r5, #1
	beq label33
	mov r1, r4
	subs r1, r4, #1
	lsl r0, r0, #1
	bne label30
	b label211
label15:
	subs r0, r0, #1
	lsl r8, r8, #1
	bne label15
	add r8, r6, r8
	cmp r4, #0
	beq label24
	ldr r0, [sp, #0]
	mov r1, r4
	subs r1, r4, #1
	lsl r0, r0, #1
	bne label21
	sub r9, r0, r6
	cmp r8, #5
	str r9, [sp, #0]
	blt label5
	cmp r4, #0
	beq label28
	mov r0, r4
	subs r0, r4, #1
	lsl r5, r5, #1
	bne label35
	add r0, r5, #1
	beq label33
	mov r1, r4
	subs r1, r4, #1
	lsl r0, r0, #1
	bne label30
	ldr r1, [sp, #0]
	add r5, r0, r1
	ldr r0, [r7, #4]
	cmp r5, r0
	beq label38
	cmp r6, #0
	bne label4
	b label38
label211:
	ldr r1, [sp, #0]
	add r5, r0, r1
	ldr r0, [r7, #4]
	cmp r5, r0
	beq label38
	b label227
label10:
	subs r1, r1, #1
	lsl r0, r0, #1
	bne label10
	add r0, r6, r0
	cmp r4, #0
	str r0, [sp, #0]
	beq label18
	mov r0, r4
	subs r0, r4, #1
	lsl r8, r8, #1
	bne label15
	add r8, r6, r8
	beq label24
	ldr r0, [sp, #0]
	mov r1, r4
	subs r1, r4, #1
	lsl r0, r0, #1
	bne label21
	sub r9, r0, r6
	cmp r8, #5
	str r9, [sp, #0]
	blt label5
	cmp r4, #0
	beq label28
	mov r0, r4
	subs r0, r4, #1
	lsl r5, r5, #1
	bne label35
	add r0, r5, #1
	beq label33
	b label255
label18:
	add r8, r6, r8
	cmp r4, #0
	beq label24
	ldr r0, [sp, #0]
	mov r1, r4
	subs r1, r4, #1
	lsl r0, r0, #1
	bne label21
	sub r9, r0, r6
	cmp r8, #5
	str r9, [sp, #0]
	blt label5
	cmp r4, #0
	beq label28
	mov r0, r4
	subs r0, r4, #1
	lsl r5, r5, #1
	bne label35
	add r0, r5, #1
	beq label33
	mov r1, r4
	subs r1, r4, #1
	lsl r0, r0, #1
	bne label30
	ldr r1, [sp, #0]
	add r5, r0, r1
	ldr r0, [r7, #4]
	cmp r5, r0
	beq label38
	cmp r6, #0
	bne label4
	b label38
label24:
	ldr r0, [sp, #0]
	sub r9, r0, r6
	cmp r8, #5
	str r9, [sp, #0]
	blt label5
	cmp r4, #0
	beq label28
	mov r0, r4
	subs r0, r4, #1
	lsl r5, r5, #1
	bne label35
	add r0, r5, #1
	beq label33
	mov r1, r4
	subs r1, r4, #1
	lsl r0, r0, #1
	bne label30
	ldr r1, [sp, #0]
	add r5, r0, r1
	ldr r0, [r7, #4]
	cmp r5, r0
	beq label38
	cmp r6, #0
	bne label4
	b label38
label28:
	add r0, r5, #1
	cmp r4, #0
	beq label33
	mov r1, r4
	subs r1, r4, #1
	lsl r0, r0, #1
	bne label30
	ldr r1, [sp, #0]
	add r5, r0, r1
	ldr r0, [r7, #4]
	cmp r5, r0
	beq label38
	cmp r6, #0
	bne label4
	b label38
label30:
	subs r1, r1, #1
	lsl r0, r0, #1
	bne label30
	ldr r1, [sp, #0]
	add r5, r0, r1
	ldr r0, [r7, #4]
	cmp r5, r0
	beq label38
	cmp r6, #0
	bne label4
	b label38
label33:
	ldr r1, [sp, #0]
	add r5, r0, r1
	ldr r0, [r7, #4]
	cmp r5, r0
	beq label38
	cmp r6, #0
	bne label4
	b label38
label227:
	cmp r6, #0
	bne label4
	b label38
label35:
	subs r0, r0, #1
	lsl r5, r5, #1
	bne label35
	add r0, r5, #1
	cmp r4, #0
	beq label33
	mov r1, r4
	subs r1, r4, #1
	lsl r0, r0, #1
	bne label30
	ldr r1, [sp, #0]
	add r5, r0, r1
	ldr r0, [r7, #4]
	cmp r5, r0
	beq label38
	cmp r6, #0
	bne label4
label38:
	mov r0, #10
	bl putch
	add sp, sp, #12
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, pc }
