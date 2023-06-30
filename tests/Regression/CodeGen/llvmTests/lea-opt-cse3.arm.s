.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl foo
foo:
	add r0, r0, #4
	add r2, r0, r1, lsl #1
	add r0, r0, r1, lsl #2
	mul r0, r2, r0
	bx lr
.globl foo1
foo1:
	add r0, r0, #4
	add r2, r0, r1, lsl #2
	add r0, r0, r1, lsl #3
	mul r0, r2, r0
	bx lr
.globl foo1_mult_basic_blocks
foo1_mult_basic_blocks:
	add r0, r0, #4
	add r2, r0, r1, lsl #2
	cmp r2, #10
	beq label36
	add r0, r0, r1, lsl #3
	mul r0, r0, r2
	b label27
label36:
	mov r0, #0
label27:
	bx lr
.globl foo1_mult_basic_blocks_illegal_scale
foo1_mult_basic_blocks_illegal_scale:
	add r0, r0, #4
	add r2, r0, r1, lsl #1
	cmp r2, #10
	beq label55
	add r0, r0, r1, lsl #3
	mul r0, r0, r2
	b label46
label55:
	mov r0, #0
label46:
	bx lr
