.arch armv7ve
.data
.data
.align 2
.globl X
X:
	.byte	0
	.byte	0
.text
.syntax unified
.arm
.fpu vfpv4
.globl foo
foo:
	mov r1, r0
	cmp r0, #0
	ble label13
	movw r0, #:lower16:X
	mov r3, #0
	movt r0, #:upper16:X
	strh r3, [r0, #0]
	mov r2, r0
	cmp r1, #1
	bne label19
	b label28
label13:
	mov r0, #0
label7:
	bx lr
label28:
	mov r0, #1
	b label7
label19:
	mov r0, #1
	uxth r3, r0
	strh r3, [r2, #0]
	add r0, r0, #1
	cmp r1, r0
	bne label5
	b label7
label5:
	uxth r3, r0
	strh r3, [r2, #0]
	add r0, r0, #1
	cmp r1, r0
	bne label5
	b label7
