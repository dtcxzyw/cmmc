.arch armv7ve
.data
.bss
.align 8
.globl B
B:
	.zero	1000
.align 8
.globl A
A:
	.zero	1000
.align 8
.globl P
P:
	.zero	1000
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl foo
foo:
	push { r4, r5, r6 }
	cmp r0, #0
	ble label5
	movw r2, #:lower16:B
	movt r2, #:upper16:B
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	movw r4, #:lower16:P
	movt r4, #:upper16:P
	cmp r0, #1
	ldrsb r1, [r2, #0]
	ldrb r1, [r2, #0]
	lsl r1, r1, #1
	uxtb r1, r1
	strb r1, [r3, #0]
	mov r1, #17
	strb r1, [r4, #0]
	beq label5
	mov r1, #1
label3:
	add r5, r2, r1
	ldrsb r6, [r2, r1]
	mov r6, #17
	ldrb r5, [r5, #0]
	lsl r5, r5, #1
	uxtb r5, r5
	strb r5, [r3, r1]
	add r5, r1, r1, lsl #3
	add r1, r1, #1
	strb r6, [r4, r5]
	cmp r0, r1
	bne label3
label5:
	pop { r4, r5, r6 }
	bx lr
