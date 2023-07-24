.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl no_sat0_incorrect_constant
no_sat0_incorrect_constant:
.p2align 4
	cmp r0, #0
	mvn r1, #0
	movlt r0, r1
	bx lr
.globl no_sat0_incorrect_variable
no_sat0_incorrect_variable:
.p2align 4
	cmp r0, #0
	mov r2, #0
	mov r0, r1
	movlt r0, r2
	bx lr
.globl sat0_base_16bit
sat0_base_16bit:
.p2align 4
	sxth r1, r0
	uxth r0, r0
	cmp r1, #0
	mov r1, #0
	movlt r0, r1
	uxth r0, r0
	bx lr
.globl sat0_base_32bit
sat0_base_32bit:
.p2align 4
	cmp r0, #0
	mov r1, #0
	movlt r0, r1
	bx lr
.globl sat0_base_8bit
sat0_base_8bit:
.p2align 4
	sxtb r1, r0
	uxtb r0, r0
	cmp r1, #0
	mov r1, #0
	movlt r0, r1
	uxtb r0, r0
	bx lr
.globl sat0_lower_1
sat0_lower_1:
.p2align 4
	cmp r0, #0
	mov r1, #0
	movgt r1, r0
	mov r0, r1
	bx lr
.globl sat1_base_16bit
sat1_base_16bit:
.p2align 4
	sxth r1, r0
	uxth r0, r0
	cmn r1, #1
	mvn r1, #0
	movlt r0, r1
	uxth r0, r0
	bx lr
.globl sat1_base_32bit
sat1_base_32bit:
.p2align 4
	cmn r0, #1
	mvn r1, #0
	movlt r0, r1
	bx lr
.globl sat1_base_8bit
sat1_base_8bit:
.p2align 4
	sxtb r1, r0
	uxtb r0, r0
	cmn r1, #1
	mvn r1, #0
	movlt r0, r1
	uxtb r0, r0
	bx lr
.globl sat1_lower_1
sat1_lower_1:
.p2align 4
	cmn r0, #1
	mvn r1, #0
	movgt r1, r0
	mov r0, r1
	bx lr
