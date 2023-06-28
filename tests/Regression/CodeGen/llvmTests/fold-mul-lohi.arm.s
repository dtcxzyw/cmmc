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
.text
.syntax unified
.arm
.fpu vfpv4
.globl foo
foo:
	push { r4 }
	cmp r0, #0
	ble label4
	mov r1, #0
label2:
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	movw r3, #:lower16:B
	movt r3, #:upper16:B
	add r4, r3, r1
	ldrsb r3, [r3, r1]
	ldrb r3, [r4, #0]
	lsl r3, r3, #1
	uxtb r3, r3
	strb r3, [r2, r1]
	mov r2, #9
	mul r2, r1, r2
	movw r3, #:lower16:P
	movt r3, #:upper16:P
	mov r4, #17
	strb r4, [r3, r2]
	add r1, r1, #1
	cmp r1, r0
	bne label2
label4:
	pop { r4 }
	bx lr
