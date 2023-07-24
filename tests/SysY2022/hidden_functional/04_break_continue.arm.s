.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5 }
	mov r3, #0
	mov r0, r3
	cmp r3, #20
	bge label22
label25:
	mov r1, #0
	b label5
label28:
	add r0, r0, #1
	cmp r0, #20
	blt label25
	b label22
label29:
	mov r2, #0
	b label8
label32:
	add r1, r1, #1
	cmp r1, #10
	blt label29
	b label28
label33:
	mov r5, #0
	b label11
label36:
	add r2, r2, #1
	cmp r2, #5
	blt label33
	b label32
label14:
	add r4, r5, #1
	cmp r4, #2
	bgt label18
label41:
	mov r5, #0
label15:
	add r5, r5, #1
	cmp r5, #2
	blt label15
	add r3, r3, #1
	mov r5, r4
	cmp r4, #3
	blt label14
	b label36
label18:
	cmp r5, #0
	bne label19
	b label41
label22:
	mov r0, r3
	pop { r4, r5 }
	bx lr
label8:
	cmp r2, #5
	blt label33
	b label32
label19:
	add r2, r2, #1
	b label8
label11:
	cmp r5, #3
	blt label14
	b label36
label5:
	cmp r1, #10
	blt label29
	b label28
