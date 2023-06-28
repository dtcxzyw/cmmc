.arch armv7ve
.data
.align 1
.globl B
B:
	.zero	1000
.align 1
.globl A
A:
	.zero	1000
.align 1
.globl P
P:
	.zero	1000
.align 1
.globl Q
Q:
	.zero	1000
.text
.syntax unified
.arm
.fpu vfpv4
.globl foo
foo:
	push { r4, r5 }
	cmp r0, #0
	ble label4
	mov r2, #0
label2:
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	movw r4, #:lower16:B
	movt r4, #:upper16:B
	add r5, r4, r2
	ldrsb r4, [r4, r2]
	ldrb r4, [r5, #0]
	lsl r4, r4, #1
	uxtb r4, r4
	strb r4, [r3, r2]
	mov r3, #9
	mul r3, r2, r3
	add r3, r1, r3
	movw r4, #:lower16:P
	movt r4, #:upper16:P
	mov r5, #17
	strb r5, [r4, r3]
	movw r4, #:lower16:Q
	movt r4, #:upper16:Q
	mov r5, #19
	strb r5, [r4, r3]
	add r2, r2, #1
	cmp r2, r0
	bne label2
label4:
	pop { r4, r5 }
	bx lr
