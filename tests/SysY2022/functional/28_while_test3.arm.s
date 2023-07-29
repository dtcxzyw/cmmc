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
	mov r0, #7
	mov r6, #10
	mov r2, #1
	mov r3, #4
	mov r5, #2
	mov r4, #6
	sub sp, sp, #28
	mov r1, r4
	str r5, [sp, #12]
	mov r5, #5
label2:
	cmp r5, #20
	blt label11
	add r0, r6, r0
	add r0, r1, r0
	add r1, r3, r6
	add r0, r5, r0
	sub r1, r1, r2
	ldr r5, [sp, #12]
	add sp, sp, #28
	add r1, r5, r1
	sub r0, r0, r1
	pop { r4, r5, r6 }
	bx lr
label11:
	add r5, r5, #3
	str r5, [sp, #0]
	ldr r5, [sp, #12]
	str r5, [sp, #20]
	str r6, [sp, #24]
label12:
	cmp r1, #10
	blt label20
	sub r1, r1, #2
	ldr r5, [sp, #20]
	str r5, [sp, #12]
	ldr r6, [sp, #24]
	ldr r5, [sp, #0]
	b label2
label20:
	add r1, r1, #1
	str r1, [sp, #4]
	ldr r5, [sp, #20]
	ldr r6, [sp, #24]
	mov r1, r6
label21:
	cmp r0, #7
	bne label75
	mov r0, r3
	b label29
label80:
	sub r1, r1, #1
	mov r3, r0
	mov r0, #6
	b label21
label29:
	cmp r1, #20
	blt label35
	b label80
label85:
	add r0, r0, #1
	mov r4, r1
	ldr r1, [sp, #8]
	b label29
label35:
	add r1, r1, #3
	str r1, [sp, #8]
	mov r1, r4
label36:
	cmp r0, #1
	bgt label41
	b label85
label90:
	add r1, r1, #1
	ldr r0, [sp, #16]
	b label36
label41:
	sub r0, r0, #1
	str r0, [sp, #16]
label42:
	cmp r1, #2
	ble label90
	sub r1, r1, #2
	mov r0, r5
label47:
	cmp r2, #3
	bge label95
	add r2, r2, #10
	cmp r0, #10
	bge label100
	add r3, r0, #32
	cmp r3, #10
	blt label56
label54:
	add r0, r0, #8
	cmp r0, #10
	blt label54
label100:
	sub r0, r0, #1
	b label47
label56:
	add r0, r0, #32
	cmn r0, #22
	blt label56
	b label54
label95:
	sub r2, r2, #8
	mov r5, r0
	b label42
label75:
	add r0, r0, #1
	str r5, [sp, #20]
	mov r6, r1
	str r1, [sp, #24]
	ldr r1, [sp, #4]
	b label12
