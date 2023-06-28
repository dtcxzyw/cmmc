.arch armv7ve
.data
.bss
.align 4
.globl var
var:
	.zero	4
.text
.syntax unified
.arm
.fpu vfpv4
.globl func
func:
	movw r0, #:lower16:var
	movt r0, #:upper16:var
	ldr r1, [r0, #0]
	str r1, [r0, #0]
	bx lr
.globl shrink_wrap
shrink_wrap:
	cmp r0, #0
	beq label11
	b label6
label11:
	movw r0, #:lower16:var
	movt r0, #:upper16:var
	ldr r1, [r0, #0]
	str r1, [r0, #0]
label6:
	bx lr
