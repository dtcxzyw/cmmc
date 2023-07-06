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
	ble label5
	movw r2, #:lower16:B
	mov r5, #17
	cmp r0, #1
	movt r2, #:upper16:B
	ldrsb r3, [r2, #0]
	mov r1, r2
	movw r3, #:lower16:A
	ldrb r2, [r2, #0]
	movt r3, #:upper16:A
	lsl r2, r2, #1
	uxtb r4, r2
	strb r4, [r3, #0]
	mov r2, r3
	movw r4, #:lower16:P
	movt r4, #:upper16:P
	strb r5, [r4, #0]
	mov r3, r4
	bne label24
	b label5
label24:
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
	bne label3
label5:
	pop { r4, r5, r6 }
	bx lr
