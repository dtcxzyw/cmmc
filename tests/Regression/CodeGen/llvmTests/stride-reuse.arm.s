.arch armv7ve
.data
.bss
.align 8
.globl B
B:
	.zero	4000
.align 8
.globl A
A:
	.zero	4000
.align 8
.globl P
P:
	.zero	4000
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl foo
foo:
	push { r4, r5 }
	cmp r0, #0
	ble label5
	movw r2, #:lower16:B
	movw r3, #:lower16:A
	movw r4, #:lower16:P
	mov r1, #64
	cmp r0, #1
	movt r2, #:upper16:B
	movt r3, #:upper16:A
	movt r4, #:upper16:P
	vldr s0, [r2, #0]
	vadd.f32 s0, s0, s0
	vstr s0, [r3, #0]
	str r1, [r4, #0]
	beq label5
	mov r1, #1
label3:
	add r5, r2, r1, lsl #2
	vldr s0, [r5, #0]
	add r5, r3, r1, lsl #2
	vadd.f32 s0, s0, s0
	vstr s0, [r5, #0]
	lsl r5, r1, #1
	add r5, r5, #64
	str r5, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r0, r1
	bne label3
label5:
	pop { r4, r5 }
	bx lr
