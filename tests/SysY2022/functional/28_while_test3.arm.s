.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6 }
	mov r5, #7
	mov r4, #10
	mov r1, #6
	mov r2, #1
	mov r3, #2
	mov r0, #4
	sub sp, sp, #24
	mov r6, r1
	str r3, [sp, #8]
	mov r3, #5
label2:
	cmp r3, #20
	bge label63
	add r3, r3, #3
	str r3, [sp, #20]
	ldr r3, [sp, #8]
	str r3, [sp, #4]
	mov r3, r6
	str r4, [sp, #0]
	cmp r6, #10
	blt label20
label70:
	sub r6, r3, #2
	ldr r3, [sp, #4]
	str r3, [sp, #8]
	ldr r4, [sp, #0]
	ldr r3, [sp, #20]
	b label2
label20:
	add r3, r3, #1
	str r3, [sp, #16]
	ldr r3, [sp, #4]
	ldr r4, [sp, #0]
label21:
	cmp r5, #7
	beq label29
	add r5, r5, #1
	str r3, [sp, #4]
	str r4, [sp, #0]
	ldr r3, [sp, #16]
	cmp r3, #10
	blt label20
	b label70
label29:
	cmp r4, #20
	bge label80
label35:
	add r4, r4, #3
	str r4, [sp, #12]
label36:
	cmp r0, #1
	ble label41
	sub r0, r0, #1
	cmp r1, #2
	bgt label47
label91:
	add r1, r1, #1
	b label36
label47:
	sub r1, r1, #2
	b label48
label51:
	sub r2, r2, #8
	cmp r1, #2
	bgt label47
	b label91
label80:
	sub r4, r4, #1
	mov r5, #6
	b label21
label41:
	add r0, r0, #1
	ldr r4, [sp, #12]
	cmp r4, #20
	blt label35
	b label80
label63:
	add r1, r4, r5
	add r0, r0, r4
	add r1, r6, r1
	sub r0, r0, r2
	add r1, r3, r1
	ldr r3, [sp, #8]
	add sp, sp, #24
	add r0, r3, r0
	sub r0, r1, r0
	pop { r4, r5, r6 }
	bx lr
label48:
	cmp r2, #3
	bge label51
	add r2, r2, #10
	cmp r3, #10
	blt label53
label102:
	sub r3, r3, #1
	b label48
label53:
	add r4, r3, #64
	cmp r4, #10
	bge label54
label56:
	add r3, r3, #64
	cmn r3, #54
	blt label56
	add r3, r3, #8
	cmp r3, #10
	bge label102
label54:
	add r3, r3, #8
	cmp r3, #10
	blt label54
	b label102
