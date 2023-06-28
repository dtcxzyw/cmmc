.arch armv7ve
.data
.align 2
.globl X
X:
	.byte	0
	.byte	0
.align 2
.globl Y
Y:
	.byte	0
	.byte	0
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
	uxth r2, r1
	movw r3, #:lower16:X
	movt r3, #:upper16:X
	strh r2, [r3, #0]
	uxth r2, r2
	lsl r2, r2, #2
	uxth r2, r2
	movw r3, #:lower16:Y
	movt r3, #:upper16:Y
	strh r2, [r3, #0]
	add r1, r1, #1
	cmp r1, r0
	bne label2
label4:
	bx lr
