.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl Test_get_quotient
Test_get_quotient:
	sdiv r0, r0, r1
	bx lr
.globl Test_get_quotient_and_remainder
Test_get_quotient_and_remainder:
	sdiv r2, r0, r1
	sdiv r3, r0, r1
	mls r0, r3, r1, r0
	add r0, r2, r0
	bx lr
.globl Test_get_remainder
Test_get_remainder:
	sdiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl Test_use_div_and_idiv
Test_use_div_and_idiv:
	sdiv r2, r0, r1
	udiv r0, r0, r1
	add r0, r2, r0
	bx lr
.globl Test_use_div_imm_imm
Test_use_div_imm_imm:
	mov r0, #64
	bx lr
.globl Test_use_div_imm_reg
Test_use_div_imm_reg:
	mov r1, #4
	sdiv r0, r1, r0
	bx lr
.globl Test_use_div_reg_imm
Test_use_div_reg_imm:
	movw r1, #33761
	movt r1, #15887
	smmul r0, r0, r1
	asr r1, r0, #3
	add r0, r1, r0, lsr #31
	bx lr
.globl Test_use_divrem_reg_imm
Test_use_divrem_reg_imm:
	push { r4 }
	movw r2, #33761
	movt r2, #15887
	smmul r1, r0, r2
	asr r3, r1, #3
	add r1, r3, r1, lsr #31
	mov r3, #33
	smmul r2, r0, r2
	asr r4, r2, #3
	add r2, r4, r2, lsr #31
	mls r0, r2, r3, r0
	add r0, r1, r0
	pop { r4 }
	bx lr
.globl Test_use_rem_imm_reg
Test_use_rem_imm_reg:
	mov r1, #4
	sdiv r0, r1, r0
	bx lr
.globl Test_use_rem_reg_imm
Test_use_rem_reg_imm:
	mov r1, #33
	movw r2, #33761
	movt r2, #15887
	smmul r2, r0, r2
	asr r3, r2, #3
	add r2, r3, r2, lsr #31
	mls r0, r2, r1, r0
	bx lr
