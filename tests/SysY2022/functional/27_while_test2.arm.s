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
	bge label7
	add r0, r0, #3
	cmp r1, #10
	bge label13
	add r1, r1, #1
	cmp r3, #7
	bne label18
	cmp r2, #20
	bge label20
	add r3, r2, #192
	cmp r3, #20
	bge label24
	mov r2, r3
	add r3, r3, #192
	cmp r3, #20
	bge label24
	mov r2, r3
	add r3, r3, #192
	cmp r3, #20
	bge label24
	mov r2, r3
	add r3, r3, #192
	cmp r3, #20
	bge label24
label118:
	mov r2, r3
	add r3, r3, #192
	cmp r3, #20
	bge label24
	b label118
label13:
	sub r1, r1, #2
	cmp r0, #20
	bge label7
	add r0, r0, #3
	cmp r1, #10
	bge label13
	add r1, r1, #1
	cmp r3, #7
	bne label18
	cmp r2, #20
	bge label20
	add r3, r2, #192
	cmp r3, #20
	bge label24
	mov r2, r3
	add r3, r3, #192
	cmp r3, #20
	bge label24
	mov r2, r3
	add r3, r3, #192
	cmp r3, #20
	bge label24
	mov r2, r3
	add r3, r3, #192
	cmp r3, #20
	bge label24
	b label118
label20:
	sub r2, r2, #1
	mov r3, #6
	cmp r3, #7
	bne label18
	cmp r2, #20
	bge label20
	add r3, r2, #192
	cmp r3, #20
	bge label24
	mov r2, r3
	add r3, r3, #192
	cmp r3, #20
	bge label24
	b label118
label18:
	add r3, r3, #1
	cmp r1, #10
	bge label13
	add r1, r1, #1
	cmp r3, #7
	bne label18
	cmp r2, #20
	bge label20
	add r3, r2, #192
	cmp r3, #20
	bge label24
	mov r2, r3
	add r3, r3, #192
	cmp r3, #20
	bge label24
	mov r2, r3
	add r3, r3, #192
	cmp r3, #20
	bge label24
	mov r2, r3
	add r3, r3, #192
	cmp r3, #20
	bge label24
	mov r2, r3
	add r3, r3, #192
	cmp r3, #20
	bge label24
	b label118
label24:
	add r3, r2, #48
	cmp r3, #20
	bge label26
	mov r2, r3
	b label24
label26:
	add r3, r2, #12
	cmp r3, #20
	bge label28
	mov r2, r3
	b label26
label28:
	add r2, r2, #3
	cmp r2, #20
	bge label20
	b label28
label7:
	add r2, r2, r3
	add r1, r1, r2
	add r0, r0, r1
	bx lr
