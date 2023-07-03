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
	b label2
label13:
	mov r0, #0
	b label7
label2:
	movw r0, #:lower16:X
	movt r0, #:upper16:X
	mov r2, r0
	mov r3, #0
	strh r3, [r0, #0]
	cmp r1, #1
	bne label19
	mov r0, #1
	b label7
label19:
	mov r0, #1
label5:
	uxth r3, r0
	strh r3, [r2, #0]
	add r0, r0, #1
	cmp r1, r0
	bne label5
label7:
	bx lr
