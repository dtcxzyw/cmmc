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
	push { r4, r5, r6 }
	cmp r0, #0
	bgt label2
label5:
	pop { r4, r5, r6 }
	bx lr
label2:
	movw r1, #:lower16:B
	mov r4, #17
	cmp r0, #1
	movt r1, #:upper16:B
	ldrsb r2, [r1, #0]
	ldrb r2, [r1, #0]
	lsl r2, r2, #1
	uxtb r3, r2
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	strb r3, [r2, #0]
	movw r3, #:lower16:P
	movt r3, #:upper16:P
	strb r4, [r3, #0]
	beq label5
	mov r4, #1
label3:
	add r5, r1, r4
	ldrsb r6, [r1, r4]
	mov r6, #17
	ldrb r5, [r5, #0]
	lsl r5, r5, #1
	uxtb r5, r5
	strb r5, [r2, r4]
	add r5, r4, r4, lsl #3
	add r4, r4, #1
	strb r6, [r3, r5]
	cmp r0, r4
	beq label5
	b label3
