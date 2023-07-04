.arch armv7ve
.data
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
	movw r3, #:lower16:Y
	movw r2, #65535
	movt r3, #:upper16:Y
	and r2, r1, r2
	add r1, r1, #1
	lsl r2, r2, #2
	cmp r0, r1
	uxth r2, r2
	strh r2, [r3, #0]
	bne label2
label4:
	bx lr
