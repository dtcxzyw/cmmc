.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6 }
	mov r0, #7
	mov r6, #10
	mov r4, #6
	mov r3, #1
	mov r2, #4
	mov r5, #2
	sub sp, sp, #28
	mov r1, r4
	str r5, [sp, #16]
	mov r5, #5
	cmp r5, #20
	blt label11
label64:
	add r0, r6, r0
	add r0, r1, r0
	add r1, r2, r6
	add r0, r5, r0
	sub r1, r1, r3
	ldr r5, [sp, #16]
	add sp, sp, #28
	add r1, r5, r1
	sub r0, r0, r1
	pop { r4, r5, r6 }
	bx lr
label40:
	sub r0, r0, #1
	mov r2, r3
	str r0, [sp, #12]
	cmp r1, #2
	bgt label45
	add r1, r1, #1
	cmp r0, #1
	bgt label40
	add r0, r0, #1
	mov r4, r1
	ldr r1, [sp, #8]
	cmp r1, #20
	blt label34
	sub r1, r1, #1
	mov r2, r0
	mov r0, #6
	cmp r0, #7
	beq label77
	add r0, r0, #1
	str r5, [sp, #20]
	mov r6, r1
	str r1, [sp, #24]
	ldr r1, [sp, #4]
	cmp r1, #10
	blt label20
	sub r1, r1, #2
	str r5, [sp, #16]
	ldr r6, [sp, #24]
	ldr r5, [sp, #0]
	cmp r5, #20
	blt label11
	b label64
label34:
	add r1, r1, #3
	str r1, [sp, #8]
	mov r1, r4
	cmp r0, #1
	bgt label40
	add r0, r0, #1
	ldr r1, [sp, #8]
	cmp r1, #20
	blt label34
	sub r1, r1, #1
	mov r2, r0
	mov r0, #6
	cmp r0, #7
	beq label77
	add r0, r0, #1
	str r5, [sp, #20]
	mov r6, r1
	str r1, [sp, #24]
	ldr r1, [sp, #4]
	cmp r1, #10
	blt label20
	sub r1, r1, #2
	str r5, [sp, #16]
	ldr r6, [sp, #24]
	ldr r5, [sp, #0]
	cmp r5, #20
	blt label11
	b label64
label77:
	mov r0, r2
	cmp r1, #20
	blt label34
	sub r1, r1, #1
	mov r0, #6
	cmp r0, #7
	beq label77
	add r0, r0, #1
	str r5, [sp, #20]
	mov r6, r1
	str r1, [sp, #24]
	ldr r1, [sp, #4]
	cmp r1, #10
	blt label20
	sub r1, r1, #2
	str r5, [sp, #16]
	ldr r6, [sp, #24]
	ldr r5, [sp, #0]
	cmp r5, #20
	blt label11
	b label64
label52:
	add r3, r0, #128
	cmp r3, #10
	blt label107
	add r3, r0, #32
	cmp r3, #10
	blt label112
	add r0, r0, #8
	cmp r0, #10
	blt label56
	sub r0, r0, #1
	cmp r2, #3
	blt label49
	sub r2, r2, #8
	mov r5, r0
	cmp r1, #2
	bgt label45
	add r1, r1, #1
	mov r3, r2
	ldr r0, [sp, #12]
	cmp r0, #1
	bgt label40
	add r0, r0, #1
	mov r4, r1
	ldr r1, [sp, #8]
	cmp r1, #20
	blt label34
	sub r1, r1, #1
	mov r2, r0
	mov r0, #6
	cmp r0, #7
	beq label77
	add r0, r0, #1
	str r5, [sp, #20]
	mov r6, r1
	str r1, [sp, #24]
	ldr r1, [sp, #4]
	cmp r1, #10
	blt label20
	sub r1, r1, #2
	str r5, [sp, #16]
	ldr r6, [sp, #24]
	ldr r5, [sp, #0]
	cmp r5, #20
	blt label11
	b label64
label107:
	mov r0, r3
	b label52
label54:
	add r3, r0, #32
	cmp r3, #10
	blt label112
	add r0, r0, #8
	cmp r0, #10
	blt label56
	sub r0, r0, #1
	cmp r2, #3
	blt label49
	sub r2, r2, #8
	mov r5, r0
	cmp r1, #2
	bgt label45
	add r1, r1, #1
	mov r3, r2
	ldr r0, [sp, #12]
	cmp r0, #1
	bgt label40
	add r0, r0, #1
	mov r4, r1
	ldr r1, [sp, #8]
	cmp r1, #20
	blt label34
	sub r1, r1, #1
	mov r2, r0
	mov r0, #6
	cmp r0, #7
	beq label77
	add r0, r0, #1
	str r5, [sp, #20]
	mov r6, r1
	str r1, [sp, #24]
	ldr r1, [sp, #4]
	cmp r1, #10
	blt label20
	sub r1, r1, #2
	str r5, [sp, #16]
	ldr r6, [sp, #24]
	ldr r5, [sp, #0]
	cmp r5, #20
	blt label11
	b label64
label112:
	mov r0, r3
	b label54
label56:
	add r0, r0, #8
	cmp r0, #10
	blt label56
	sub r0, r0, #1
	cmp r2, #3
	blt label49
	sub r2, r2, #8
	mov r5, r0
	cmp r1, #2
	bgt label45
	add r1, r1, #1
	mov r3, r2
	ldr r0, [sp, #12]
	cmp r0, #1
	bgt label40
	add r0, r0, #1
	mov r4, r1
	ldr r1, [sp, #8]
	cmp r1, #20
	blt label34
	sub r1, r1, #1
	mov r2, r0
	mov r0, #6
	cmp r0, #7
	beq label77
	add r0, r0, #1
	str r5, [sp, #20]
	mov r6, r1
	str r1, [sp, #24]
	ldr r1, [sp, #4]
	cmp r1, #10
	blt label20
	sub r1, r1, #2
	str r5, [sp, #16]
	ldr r6, [sp, #24]
	ldr r5, [sp, #0]
	cmp r5, #20
	blt label11
	b label64
label49:
	add r2, r2, #10
	cmp r0, #10
	blt label52
	sub r0, r0, #1
	cmp r2, #3
	blt label49
	sub r2, r2, #8
	mov r5, r0
	cmp r1, #2
	bgt label45
	add r1, r1, #1
	mov r3, r2
	ldr r0, [sp, #12]
	cmp r0, #1
	bgt label40
	add r0, r0, #1
	mov r4, r1
	ldr r1, [sp, #8]
	cmp r1, #20
	blt label34
	sub r1, r1, #1
	mov r2, r0
	mov r0, #6
	cmp r0, #7
	beq label77
	add r0, r0, #1
	str r5, [sp, #20]
	mov r6, r1
	str r1, [sp, #24]
	ldr r1, [sp, #4]
	cmp r1, #10
	blt label20
	sub r1, r1, #2
	str r5, [sp, #16]
	ldr r6, [sp, #24]
	ldr r5, [sp, #0]
	cmp r5, #20
	blt label11
	b label64
label45:
	sub r1, r1, #2
	mov r0, r5
	cmp r2, #3
	blt label49
	sub r2, r2, #8
	cmp r1, #2
	bgt label45
	add r1, r1, #1
	mov r3, r2
	ldr r0, [sp, #12]
	cmp r0, #1
	bgt label40
	add r0, r0, #1
	mov r4, r1
	ldr r1, [sp, #8]
	cmp r1, #20
	blt label34
	sub r1, r1, #1
	mov r2, r0
	mov r0, #6
	cmp r0, #7
	beq label77
	add r0, r0, #1
	str r5, [sp, #20]
	mov r6, r1
	str r1, [sp, #24]
	ldr r1, [sp, #4]
	cmp r1, #10
	blt label20
	sub r1, r1, #2
	str r5, [sp, #16]
	ldr r6, [sp, #24]
	ldr r5, [sp, #0]
	cmp r5, #20
	blt label11
	b label64
label20:
	add r1, r1, #1
	str r1, [sp, #4]
	ldr r5, [sp, #20]
	ldr r6, [sp, #24]
	mov r1, r6
	cmp r0, #7
	beq label77
	add r0, r0, #1
	str r5, [sp, #20]
	str r6, [sp, #24]
	ldr r1, [sp, #4]
	cmp r1, #10
	blt label20
	sub r1, r1, #2
	str r5, [sp, #16]
	ldr r5, [sp, #0]
	cmp r5, #20
	bge label64
label11:
	add r5, r5, #3
	str r5, [sp, #0]
	ldr r5, [sp, #16]
	str r5, [sp, #20]
	str r6, [sp, #24]
	cmp r1, #10
	blt label20
	sub r1, r1, #2
	str r5, [sp, #16]
	ldr r5, [sp, #0]
	cmp r5, #20
	blt label11
	b label64
