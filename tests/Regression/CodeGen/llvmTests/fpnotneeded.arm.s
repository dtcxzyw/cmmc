.arch armv7ve
.data
.data
.align 4
.globl i
i:
	.4byte	1
.align 4
.globl f
f:
	.4byte	1065353216
.text
.syntax unified
.arm
.fpu vfpv4
.globl foo
foo:
	movw r0, #:lower16:f
	movt r0, #:upper16:f
	mov r1, #1073741824
	vmov s0, r1
	vstr s0, [r0, #0]
	bx lr
.globl fv
fv:
	mov r0, #1065353216
	vmov s0, r0
	bx lr
.globl iv
iv:
	movw r0, #:lower16:i
	movt r0, #:upper16:i
	ldr r0, [r0, #0]
	bx lr
.globl vif
vif:
	bx lr
.globl vv
vv:
	bx lr
