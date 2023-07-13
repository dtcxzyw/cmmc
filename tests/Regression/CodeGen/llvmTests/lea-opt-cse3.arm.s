.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl foo
foo:
	lsl r2, r1, #1
	lsl r1, r1, #2
	add r2, r2, #4
	add r1, r1, #4
	add r2, r0, r2
	add r0, r0, r1
	mul r0, r2, r0
	bx lr
.globl foo1
foo1:
	lsl r2, r1, #2
	lsl r1, r1, #3
	add r2, r2, #4
	add r1, r1, #4
	add r2, r0, r2
	add r0, r0, r1
	mul r0, r2, r0
	bx lr
.globl foo1_mult_basic_blocks
foo1_mult_basic_blocks:
	lsl r2, r1, #2
	add r2, r2, #4
	add r2, r0, r2
	cmp r2, #10
	beq label38
	lsl r1, r1, #3
	add r1, r1, #4
	add r0, r0, r1
	mul r0, r0, r2
	b label29
label38:
	mov r0, #0
label29:
	bx lr
.globl foo1_mult_basic_blocks_illegal_scale
foo1_mult_basic_blocks_illegal_scale:
	lsl r2, r1, #1
	add r2, r2, #4
	add r2, r0, r2
	cmp r2, #10
	beq label60
	lsl r1, r1, #3
	add r1, r1, #4
	add r0, r0, r1
	mul r0, r0, r2
	b label51
label60:
	mov r0, #0
label51:
	bx lr
