.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	mov r2, #10
	mov r3, #7
	mov r1, #6
	mov r0, #5
	cmp r0, #20
	blt label8
label7:
	add r2, r2, r3
	add r1, r1, r2
	add r0, r0, r1
	bx lr
label8:
	add r0, r0, #3
	cmp r1, #10
	blt label14
	sub r1, r1, #2
	cmp r0, #20
	blt label8
	b label7
label19:
	cmp r2, #20
	blt label22
	sub r2, r2, #1
	mov r3, #6
	cmp r3, #7
	beq label19
	add r3, r3, #1
	cmp r1, #10
	blt label14
	sub r1, r1, #2
	cmp r0, #20
	blt label8
	b label7
label22:
	add r3, r2, #192
	cmp r3, #20
	blt label57
	add r3, r2, #48
	cmp r3, #20
	blt label62
	add r3, r2, #12
	cmp r3, #20
	blt label67
	add r2, r2, #3
	cmp r2, #20
	blt label28
	sub r2, r2, #1
	mov r3, #6
	cmp r3, #7
	beq label19
	add r3, r3, #1
	cmp r1, #10
	blt label14
	sub r1, r1, #2
	cmp r0, #20
	blt label8
	b label7
label57:
	mov r2, r3
	b label22
label24:
	add r3, r2, #48
	cmp r3, #20
	blt label62
	add r3, r2, #12
	cmp r3, #20
	blt label67
	add r2, r2, #3
	cmp r2, #20
	blt label28
	sub r2, r2, #1
	mov r3, #6
	cmp r3, #7
	beq label19
	add r3, r3, #1
	cmp r1, #10
	blt label14
	sub r1, r1, #2
	cmp r0, #20
	blt label8
	b label7
label62:
	mov r2, r3
	b label24
label26:
	add r3, r2, #12
	cmp r3, #20
	blt label67
	add r2, r2, #3
	cmp r2, #20
	blt label28
	sub r2, r2, #1
	mov r3, #6
	cmp r3, #7
	beq label19
	add r3, r3, #1
	cmp r1, #10
	blt label14
	sub r1, r1, #2
	cmp r0, #20
	blt label8
	b label7
label67:
	mov r2, r3
	b label26
label28:
	add r2, r2, #3
	cmp r2, #20
	blt label28
	sub r2, r2, #1
	mov r3, #6
	cmp r3, #7
	beq label19
	add r3, r3, #1
	cmp r1, #10
	blt label14
	sub r1, r1, #2
	cmp r0, #20
	blt label8
	b label7
label14:
	add r1, r1, #1
	cmp r3, #7
	beq label19
	add r3, r3, #1
	cmp r1, #10
	blt label14
	sub r1, r1, #2
	cmp r0, #20
	blt label8
	b label7
