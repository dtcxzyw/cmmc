.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl icmp_i16_signed
icmp_i16_signed:
.p2align 4
	sxth r0, r0
	sxth r1, r1
	cmp r0, r1
	mov r0, #0
	movwlt r0, #1
	bx lr
.globl icmp_i16_unsigned
icmp_i16_unsigned:
.p2align 4
	uxth r0, r0
	uxth r1, r1
	cmp r0, r1
	mov r0, #0
	movwlt r0, #1
	bx lr
.globl icmp_i1_unsigned
icmp_i1_unsigned:
.p2align 4
	cmp r0, r1
	mov r0, #0
	movwlo r0, #1
	bx lr
.globl icmp_i8_signed
icmp_i8_signed:
.p2align 4
	sxtb r0, r0
	sxtb r1, r1
	cmp r0, r1
	mov r0, #0
	movwgt r0, #1
	bx lr
.globl icmp_i8_unsigned
icmp_i8_unsigned:
.p2align 4
	uxtb r0, r0
	uxtb r1, r1
	cmp r0, r1
	mov r0, #0
	movwgt r0, #1
	bx lr
