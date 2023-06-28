.arch armv7ve
.data
.section .rodata
.bss
.align 4
.globl B
B:
	.zero	4000
.align 4
.globl A
A:
	.zero	4000
.align 4
.globl P
P:
	.zero	4000
.text
.syntax unified
.arm
.fpu vfpv4
.globl foo
foo:
	cmp r0, #0
	ble label4
	mov r1, #0
label2:
	movw r2, #:lower16:B
	movt r2, #:upper16:B
	add r2, r2, r1, lsl #2
	vldr s0, [r2, #0]
	vadd.f32 s0, s0, s0
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	add r2, r2, r1, lsl #2
	vstr s0, [r2, #0]
	movw r2, #:lower16:P
	movt r2, #:upper16:P
	lsl r3, r1, #1
	add r3, r3, #64
	str r3, [r2, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r0
	bne label2
label4:
	bx lr
