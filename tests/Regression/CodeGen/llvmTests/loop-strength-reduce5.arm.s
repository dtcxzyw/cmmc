.arch armv7ve
.data
.data
.p2align 1
.globl X
X:
	.byte	0
	.byte	0
.p2align 1
.globl Y
Y:
	.byte	0
	.byte	0
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl foo
foo:
	push { r4 }
	cmp r0, #0
	ble label5
	movw r2, #:lower16:X
	movt r2, #:upper16:X
	mov r1, #0
	movw r3, #:lower16:Y
	movt r3, #:upper16:Y
	cmp r0, #1
	strh r1, [r2, #0]
	strh r1, [r3, #0]
	beq label5
	mov r1, #1
label3:
	uxth r4, r1
	strh r4, [r2, #0]
	movw r4, #65535
	and r4, r1, r4
	add r1, r1, #1
	lsl r4, r4, #2
	cmp r0, r1
	uxth r4, r4
	strh r4, [r3, #0]
	bne label3
label5:
	pop { r4 }
	bx lr
