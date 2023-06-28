.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl no_sat0_incorrect_constant
no_sat0_incorrect_constant:
	cmp r0, #0
	mvn r1, #0
	movlt r0, r1
	bx lr
.globl no_sat0_incorrect_variable
no_sat0_incorrect_variable:
	cmp r0, #0
	mov r2, #0
	mov r0, r1
	movlt r0, r2
	bx lr
.globl sat0_base_16bit
sat0_base_16bit:
	sxth r1, r0
	cmp r1, #0
	bge label23
	mov r0, #0
	b label15
label23:
	uxth r0, r0
label15:
	uxth r0, r0
	bx lr
.globl sat0_base_32bit
sat0_base_32bit:
	cmp r0, #0
	mov r1, #0
	movlt r0, r1
	bx lr
.globl sat0_base_8bit
sat0_base_8bit:
	sxtb r1, r0
	cmp r1, #0
	bge label42
	mov r0, #0
	b label34
label42:
	uxtb r0, r0
label34:
	uxtb r0, r0
	bx lr
.globl sat0_lower_1
sat0_lower_1:
	cmp r0, #0
	mov r1, #0
	movgt r1, r0
	mov r0, r1
	bx lr
.globl sat1_base_16bit
sat1_base_16bit:
	sxth r1, r0
	cmn r1, #1
	bge label61
	mvn r0, #0
	b label53
label61:
	uxth r0, r0
label53:
	uxth r0, r0
	bx lr
.globl sat1_base_32bit
sat1_base_32bit:
	cmn r0, #1
	mvn r1, #0
	movlt r0, r1
	bx lr
.globl sat1_base_8bit
sat1_base_8bit:
	sxtb r1, r0
	cmn r1, #1
	bge label80
	mvn r0, #0
	b label72
label80:
	uxtb r0, r0
label72:
	uxtb r0, r0
	bx lr
.globl sat1_lower_1
sat1_lower_1:
	cmn r0, #1
	mvn r1, #0
	movgt r1, r0
	mov r0, r1
	bx lr
