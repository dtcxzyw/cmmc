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
	mov r1, r0
	ble label2
	movw r0, #:lower16:B
	movt r0, #:upper16:B
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	movw r4, #:lower16:P
	movt r4, #:upper16:P
	mov r2, #64
	vldr s0, [r0, #0]
	cmp r1, #1
	vadd.f32 s0, s0, s0
	vstr s0, [r3, #0]
	str r2, [r4, #0]
	beq label2
	add r0, r0, #4
	mov r2, #1
label5:
	vldr s0, [r0, #0]
	add r5, r3, r2, lsl #2
	vadd.f32 s0, s0, s0
	vstr s0, [r5, #0]
	lsl r5, r2, #1
	add r5, r5, #64
	str r5, [r4, r2, lsl #2]
	add r2, r2, #1
	cmp r1, r2
	beq label2
	add r0, r0, #4
	b label5
label2:
	pop { r4, r5 }
	bx lr
