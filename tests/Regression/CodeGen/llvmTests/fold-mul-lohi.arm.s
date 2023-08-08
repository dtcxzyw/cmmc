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
	mov r1, r0
	ble label2
	movw r0, #:lower16:B
	movt r0, #:upper16:B
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	movw r4, #:lower16:P
	movt r4, #:upper16:P
	cmp r1, #1
	ldrsb r2, [r0, #0]
	ldrb r2, [r0, #0]
	lsl r2, r2, #1
	uxtb r2, r2
	strb r2, [r3, #0]
	mov r2, #17
	strb r2, [r4, #0]
	beq label2
	add r0, r0, #1
	mov r2, #1
label5:
	ldrsb r5, [r0, #0]
	mov r6, #17
	ldrb r5, [r0, #0]
	lsl r5, r5, #1
	uxtb r5, r5
	strb r5, [r3, r2]
	add r5, r2, r2, lsl #3
	add r2, r2, #1
	strb r6, [r4, r5]
	cmp r1, r2
	beq label2
	add r0, r0, #1
	b label5
label2:
	pop { r4, r5, r6 }
	bx lr
