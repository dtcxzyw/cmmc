.arch armv7ve
.data
.align 4
.globl x
x:
	.zero	4
.text
.syntax unified
.arm
.fpu vfpv4
.globl v_sf
v_sf:
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	vstr s0, [r0, #0]
	bx lr
