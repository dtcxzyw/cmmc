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
	push { r4 }
	cmp r0, #0
	ble label5
	movw r2, #:lower16:X
	mov r4, #0
	movw r3, #:lower16:Y
	cmp r0, #1
	movt r2, #:upper16:X
	movt r3, #:upper16:Y
	strh r4, [r2, #0]
	mov r1, r2
	strh r4, [r3, #0]
	mov r2, r3
	bne label18
	b label5
label18:
	mov r3, #1
label3:
	uxth r4, r3
	strh r4, [r1, #0]
	movw r4, #65535
	and r4, r3, r4
	add r3, r3, #1
	lsl r4, r4, #2
	cmp r0, r3
	uxth r4, r4
	strh r4, [r2, #0]
	bne label3
label5:
	pop { r4 }
	bx lr
