.arch armv7ve
.data
.bss
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
	movw r2, #:lower16:B
	movt r2, #:upper16:B
	add r3, r2, r1
	ldrsb r2, [r2, r1]
	ldrb r2, [r3, #0]
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	lsl r2, r2, #1
	uxtb r2, r2
	strb r2, [r3, r1]
	mov r4, #17
	movw r3, #:lower16:P
	add r2, r1, r1, lsl #3
	movt r3, #:upper16:P
	strb r4, [r3, r2]
	add r1, r1, #1
	cmp r0, r1
	bne label2
label4:
	pop { r4 }
	bx lr
