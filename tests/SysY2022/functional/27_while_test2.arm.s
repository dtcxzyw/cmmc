.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4 }
	mov r0, #5
	mov r1, #6
	mov r2, #7
	mov r3, #10
	cmp r0, #20
	bge label7
	add r0, r0, #3
	cmp r1, #10
	bge label13
	add r1, r1, #1
	cmp r2, #7
	bne label18
	sub r2, r2, #1
	cmp r3, #20
	bge label20
	add r4, r3, #192
	cmp r4, #20
	bge label24
	mov r3, r4
	add r4, r4, #192
	cmp r4, #20
	bge label24
	mov r3, r4
	add r4, r4, #192
	cmp r4, #20
	bge label24
	mov r3, r4
	add r4, r4, #192
	cmp r4, #20
	bge label24
label119:
	mov r3, r4
	add r4, r4, #192
	cmp r4, #20
	bge label24
	b label119
label13:
	sub r1, r1, #2
	cmp r0, #20
	bge label7
	add r0, r0, #3
	cmp r1, #10
	bge label13
	add r1, r1, #1
	cmp r2, #7
	bne label18
	sub r2, r2, #1
	cmp r3, #20
	bge label20
	add r4, r3, #192
	cmp r4, #20
	bge label24
	mov r3, r4
	add r4, r4, #192
	cmp r4, #20
	bge label24
	mov r3, r4
	add r4, r4, #192
	cmp r4, #20
	bge label24
	mov r3, r4
	add r4, r4, #192
	cmp r4, #20
	bge label24
	b label119
label20:
	sub r3, r3, #1
	cmp r2, #7
	bne label18
	sub r2, r2, #1
	cmp r3, #20
	bge label20
	add r4, r3, #192
	cmp r4, #20
	bge label24
	mov r3, r4
	add r4, r4, #192
	cmp r4, #20
	bge label24
	b label119
label18:
	add r2, r2, #1
	cmp r1, #10
	bge label13
	add r1, r1, #1
	cmp r2, #7
	bne label18
	sub r2, r2, #1
	cmp r3, #20
	bge label20
	add r4, r3, #192
	cmp r4, #20
	bge label24
	mov r3, r4
	add r4, r4, #192
	cmp r4, #20
	bge label24
	mov r3, r4
	add r4, r4, #192
	cmp r4, #20
	bge label24
	mov r3, r4
	add r4, r4, #192
	cmp r4, #20
	bge label24
	mov r3, r4
	add r4, r4, #192
	cmp r4, #20
	bge label24
	b label119
label24:
	add r4, r3, #48
	cmp r4, #20
	bge label26
	mov r3, r4
	b label24
label26:
	add r4, r3, #12
	cmp r4, #20
	bge label28
	mov r3, r4
	b label26
label28:
	add r3, r3, #3
	cmp r3, #20
	bge label20
	b label28
label7:
	add r2, r3, r2
	add r1, r1, r2
	add r0, r0, r1
	pop { r4 }
	bx lr