.arch armv7ve
.data
.bss
.align 4
.globl var_21
var_21:
	.zero	4
.align 1
.globl var_29
var_29:
	.zero	1
.align 4
.globl var_390
var_390:
	.zero	4
.align 1
.globl var_11
var_11:
	.zero	1
.align 1
.globl var_370
var_370:
	.zero	1
.text
.syntax unified
.arm
.fpu vfpv4
.globl _Z3foov
_Z3foov:
	movw r0, #:lower16:var_21
	movt r0, #:upper16:var_21
	ldr r0, [r0, #0]
	movw r1, #:lower16:var_29
	movt r1, #:upper16:var_29
	ldrsb r1, [r1, #0]
	sxtb r1, r1
	rsb r1, r1, #0
	cmp r0, r1
	mov r0, #0
	movwlo r0, #1
	sub r0, r0, #1
	uxtb r0, r0
	uxtb r0, r0
	clz r0, r0
	lsr r0, r0, #5
	movw r1, #:lower16:var_390
	movt r1, #:upper16:var_390
	str r0, [r1, #0]
	movw r0, #:lower16:var_11
	movt r0, #:upper16:var_11
	ldrsb r0, [r0, #0]
	sxtb r0, r0
	uxtb r0, r0
	movw r1, #:lower16:var_370
	movt r1, #:upper16:var_370
	strb r0, [r1, #0]
	bx lr
