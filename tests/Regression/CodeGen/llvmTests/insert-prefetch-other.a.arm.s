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
	movs r1, r0
	ble label11
	movw r2, #:lower16:X
	mov r0, #0
	cmp r1, #1
	movt r2, #:upper16:X
	strh r0, [r2, #0]
	bne label17
	b label26
label11:
	mov r0, #0
	b label5
label17:
	mov r0, #1
label3:
	uxth r3, r0
	add r0, r0, #1
	strh r3, [r2, #0]
	cmp r1, r0
	bne label3
	b label5
label26:
	mov r0, #1
label5:
	bx lr
