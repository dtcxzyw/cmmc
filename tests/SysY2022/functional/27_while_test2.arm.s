.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	mov r2, #10
	mov r3, #7
	mov r1, #6
	mov r0, #5
	cmp r0, #20
	bge label26
.p2align 4
label7:
	add r0, r0, #3
	cmp r1, #10
	blt label12
	sub r1, r1, #2
	cmp r0, #20
	blt label7
	b label26
.p2align 4
label16:
	cmp r2, #20
	blt label19
	sub r2, r2, #1
	mov r3, #6
	cmp r3, #7
	beq label16
	add r3, r3, #1
	cmp r1, #10
	blt label12
	sub r1, r1, #2
	cmp r0, #20
	blt label7
	b label26
.p2align 4
label19:
	add r3, r2, #12
	cmp r3, #20
	blt label20
	add r2, r2, #3
	cmp r2, #20
	blt label22
	sub r2, r2, #1
	mov r3, #6
	cmp r3, #7
	beq label16
	add r3, r3, #1
	cmp r1, #10
	blt label12
	sub r1, r1, #2
	cmp r0, #20
	blt label7
	b label26
.p2align 4
label22:
	add r2, r2, #3
	cmp r2, #20
	blt label22
	sub r2, r2, #1
	mov r3, #6
	cmp r3, #7
	beq label16
	add r3, r3, #1
	cmp r1, #10
	blt label12
	sub r1, r1, #2
	cmp r0, #20
	blt label7
	b label26
.p2align 4
label20:
	add r3, r2, #24
	cmp r3, #20
	add r2, r2, #12
	blt label20
	add r2, r2, #3
	cmp r2, #20
	blt label22
	sub r2, r2, #1
	mov r3, #6
	cmp r3, #7
	beq label16
	add r3, r3, #1
	cmp r1, #10
	blt label12
	sub r1, r1, #2
	cmp r0, #20
	blt label7
	b label26
.p2align 4
label12:
	add r1, r1, #1
	cmp r3, #7
	beq label16
	add r3, r3, #1
	cmp r1, #10
	blt label12
	sub r1, r1, #2
	cmp r0, #20
	blt label7
label26:
	add r2, r2, r3
	add r1, r1, r2
	add r0, r0, r1
	bx lr
