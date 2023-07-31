.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5 }
	mov r3, #0
	mov r0, r3
	cmp r3, #20
	bge label22
.p2align 4
label25:
	mov r1, #0
	cmp r1, #10
	bge label28
.p2align 4
label29:
	mov r2, #0
	cmp r2, #5
	bge label32
.p2align 4
label33:
	mov r5, #0
	cmp r5, #3
	blt label15
	b label37
.p2align 4
label19:
	cmp r5, #0
	beq label52
	add r2, r2, #1
	cmp r2, #5
	blt label33
	add r1, r1, #1
	cmp r1, #10
	blt label29
	add r0, r0, #1
	cmp r0, #20
	blt label25
label22:
	mov r0, r3
	pop { r4, r5 }
	bx lr
.p2align 4
label15:
	add r4, r5, #1
	cmp r4, #2
	bgt label19
	mov r5, #0
.p2align 4
label16:
	add r5, r5, #1
	cmp r5, #2
	blt label16
	add r3, r3, #1
	mov r5, r4
	cmp r4, #3
	blt label15
	add r2, r2, #1
	cmp r2, #5
	blt label33
	add r1, r1, #1
	cmp r1, #10
	blt label29
label71:
	add r0, r0, #1
	cmp r0, #20
	blt label25
	b label22
.p2align 4
label52:
	mov r5, #0
	add r5, r5, #1
	cmp r5, #2
	blt label16
	add r3, r3, #1
	mov r5, r4
	cmp r4, #3
	blt label15
	add r2, r2, #1
	cmp r2, #5
	blt label33
	add r1, r1, #1
	cmp r1, #10
	blt label29
	b label71
.p2align 4
label37:
	add r2, r2, #1
	cmp r2, #5
	blt label33
	add r1, r1, #1
	cmp r1, #10
	blt label29
	b label64
.p2align 4
label32:
	add r1, r1, #1
	cmp r1, #10
	blt label29
label64:
	add r0, r0, #1
	cmp r0, #20
	blt label25
	b label22
label28:
	add r0, r0, #1
	cmp r0, #20
	blt label25
	b label22
