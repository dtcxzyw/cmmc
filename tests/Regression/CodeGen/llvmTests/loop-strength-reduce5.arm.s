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
	push { r4 }
	cmp r0, #0
	ble label4
	mov r1, #0
label2:
	uxth r2, r1
	uxth r3, r2
	lsl r3, r3, #2
	uxth r3, r3
	movw r4, #:lower16:X
	movt r4, #:upper16:X
	strh r2, [r4, #0]
	movw r2, #:lower16:Y
	movt r2, #:upper16:Y
	strh r3, [r2, #0]
	add r1, r1, #1
	cmp r1, r0
	bne label2
label4:
	pop { r4 }
	bx lr
