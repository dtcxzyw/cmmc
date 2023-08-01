.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
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
.p2align 4
label2:
	cmp r3, #20
	bge label63
	add r3, r3, #3
	str r3, [sp, #20]
	ldr r3, [sp, #8]
	str r3, [sp, #4]
	mov r3, r6
	str r4, [sp, #0]
	b label12
.p2align 4
label70:
	sub r6, r3, #2
	ldr r3, [sp, #4]
	str r3, [sp, #8]
	ldr r4, [sp, #0]
	ldr r3, [sp, #20]
	b label2
.p2align 4
label20:
	add r3, r3, #1
	str r3, [sp, #16]
	ldr r3, [sp, #4]
	ldr r4, [sp, #0]
	b label21
.p2align 4
label28:
	add r5, r5, #1
	str r3, [sp, #4]
	str r4, [sp, #0]
	ldr r3, [sp, #16]
	cmp r3, #10
	blt label20
	b label70
.p2align 4
label21:
	cmp r5, #7
	beq label29
	b label28
.p2align 4
label80:
	sub r4, r4, #1
	mov r5, #6
	b label21
.p2align 4
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
.p2align 4
label29:
	cmp r4, #20
	bge label80
.p2align 4
label35:
	add r4, r4, #3
	str r4, [sp, #12]
.p2align 4
label36:
	cmp r0, #1
	ble label41
	sub r0, r0, #1
	cmp r1, #2
	ble label91
.p2align 4
label47:
	sub r1, r1, #2
	b label48
.p2align 4
label91:
	add r1, r1, #1
	b label36
.p2align 4
label48:
	cmp r2, #3
	blt label52
	b label51
.p2align 4
label102:
	sub r3, r3, #1
	b label48
.p2align 4
label51:
	sub r2, r2, #8
	cmp r1, #2
	bgt label47
	b label91
.p2align 4
label52:
	add r2, r2, #10
	cmp r3, #10
	bge label102
	add r4, r3, #32
	cmp r4, #10
	bge label107
.p2align 4
label54:
	add r3, r3, #32
	cmn r3, #22
	blt label54
.p2align 4
label56:
	add r3, r3, #8
	cmp r3, #10
	blt label56
.p2align 4
label58:
	sub r3, r3, #1
	cmp r2, #3
	blt label52
	b label51
.p2align 4
label107:
	add r3, r3, #8
	cmp r3, #10
	blt label56
	b label58
.p2align 4
label12:
	cmp r3, #10
	blt label20
	b label70
