.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, lr }
	mov r6, #0
	mvn r0, #0
	sub sp, sp, #12
	str r0, [sp, #0]
	mov r7, sp
	str r6, [r7, #4]
	bl getint
	mov r4, r0
	bl getint
	mov r5, r0
	mov r0, r7
	bl getarray
label2:
	cmp r5, #0
	beq label4
	ldr r9, [sp, #0]
	cmp r9, #5
	blt label53
	cmp r4, #0
	beq label32
label134:
	mov r0, r4
	b label29
label53:
	mov r8, r9
	b label6
.p2align 4
label23:
	ldr r0, [sp, #0]
	sub r9, r0, r5
	cmp r8, #5
	str r9, [sp, #0]
	blt label6
	cmp r4, #0
	beq label32
	b label134
label29:
	subs r1, r0, #1
	lsl r0, r6, #1
	bne label100
	mov r6, r0
	b label32
label100:
	mov r6, r0
	mov r0, r1
	b label29
label32:
	add r0, r6, #1
	cmp r4, #0
	beq label34
	mov r1, r4
	b label36
label34:
	ldr r1, [sp, #0]
	add r6, r0, r1
	ldr r0, [r7, #4]
	cmp r6, r0
	beq label4
	b label2
label36:
	subs r1, r1, #1
	lsl r0, r0, #1
	bne label36
	b label34
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
	ldr r0, [sp, #0]
	mov r1, r4
	subs r1, r4, #1
	lsl r0, r0, #1
	bne label11
	add r0, r5, r0
	str r0, [sp, #0]
	beq label19
	mov r0, r4
	subs r0, r4, #1
	lsl r8, r8, #1
	bne label16
	add r8, r5, r8
	beq label23
	ldr r0, [sp, #0]
	mov r1, r4
	subs r1, r4, #1
	lsl r0, r0, #1
	bne label25
	sub r9, r0, r5
	cmp r8, #5
	str r9, [sp, #0]
	blt label6
	cmp r4, #0
	beq label32
	b label134
.p2align 4
label25:
	subs r1, r1, #1
	lsl r0, r0, #1
	bne label25
	sub r9, r0, r5
	cmp r8, #5
	str r9, [sp, #0]
	blt label6
	cmp r4, #0
	beq label32
	b label134
.p2align 4
label16:
	subs r0, r0, #1
	lsl r8, r8, #1
	bne label16
	add r8, r5, r8
	cmp r4, #0
	beq label23
	ldr r0, [sp, #0]
	mov r1, r4
	subs r1, r4, #1
	lsl r0, r0, #1
	bne label25
	sub r9, r0, r5
	cmp r8, #5
	str r9, [sp, #0]
	blt label6
	cmp r4, #0
	beq label32
	b label134
.p2align 4
label19:
	add r8, r5, r8
	cmp r4, #0
	beq label23
	ldr r0, [sp, #0]
	mov r1, r4
	subs r1, r4, #1
	lsl r0, r0, #1
	bne label25
	sub r9, r0, r5
	cmp r8, #5
	str r9, [sp, #0]
	blt label6
	cmp r4, #0
	beq label32
	b label134
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
	subs r0, r4, #1
	lsl r8, r8, #1
	bne label16
	add r8, r5, r8
	beq label23
	ldr r0, [sp, #0]
	mov r1, r4
	subs r1, r4, #1
	lsl r0, r0, #1
	bne label25
	sub r9, r0, r5
	cmp r8, #5
	str r9, [sp, #0]
	blt label6
	cmp r4, #0
	beq label32
	b label134
.p2align 4
label9:
	ldr r0, [sp, #0]
	add r0, r5, r0
	cmp r4, #0
	str r0, [sp, #0]
	beq label19
	mov r0, r4
	subs r0, r4, #1
	lsl r8, r8, #1
	bne label16
	add r8, r5, r8
	beq label23
	ldr r0, [sp, #0]
	mov r1, r4
	subs r1, r4, #1
	lsl r0, r0, #1
	bne label25
	sub r9, r0, r5
	cmp r8, #5
	str r9, [sp, #0]
	blt label6
	cmp r4, #0
	beq label32
	b label134
label4:
	mov r0, #10
	bl putch
	add sp, sp, #12
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, pc }
