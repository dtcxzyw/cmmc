.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl select_const_fp
select_const_fp:
	cmp r0, #0
	movw r0, #0
	movt r0, #16448
	vmov s1, r0
	movw r0, #0
	movt r0, #16512
	vmov s0, r0
	vmovne.f32 s0, s1
	bx lr
.p2align 4
.globl select_const_int_easy
select_const_int_easy:
	cmp r0, #0
	mov r0, #0
	movwne r0, #1
	bx lr
.p2align 4
.globl select_const_int_harder
select_const_int_harder:
	cmp r0, #0
	mov r0, #38
	movne r0, #6
	bx lr
.p2align 4
.globl select_const_int_one_away
select_const_int_one_away:
	cmp r0, #0
	mov r0, #0
	movwne r0, #1
	rsb r0, r0, #4
	bx lr
.p2align 4
.globl select_const_int_pow2_zero
select_const_int_pow2_zero:
	cmp r0, #0
	mov r0, #0
	movne r0, #4
	bx lr
.p2align 4
.globl select_eq_10000_10001
select_eq_10000_10001:
	sub r0, r0, r1
	movw r1, #10002
	clz r0, r0
	lsr r0, r0, #5
	sub r0, r1, r0
	bx lr
.p2align 4
.globl select_eq_1_2
select_eq_1_2:
	sub r0, r0, r1
	clz r0, r0
	lsr r0, r0, #5
	rsb r0, r0, #2
	bx lr
.p2align 4
.globl select_eq_zero_negone
select_eq_zero_negone:
	sub r0, r0, r1
	clz r0, r0
	lsr r0, r0, #5
	rsb r0, r0, #0
	bx lr
.p2align 4
.globl select_ne_10001_10002
select_ne_10001_10002:
	cmp r0, r1
	movw r0, #10002
	subne r0, r0, #1
	bx lr
.p2align 4
.globl select_ne_1_2
select_ne_1_2:
	cmp r0, r1
	mov r0, #0
	movwne r0, #1
	rsb r0, r0, #2
	bx lr
.p2align 4
.globl select_ne_zero_negone
select_ne_zero_negone:
	cmp r0, r1
	mov r0, #0
	movwne r0, #1
	rsb r0, r0, #0
	bx lr
.p2align 4
.globl select_sge_zero_negone
select_sge_zero_negone:
	cmp r0, r1
	mov r0, #0
	movwge r0, #1
	rsb r0, r0, #0
	bx lr
.p2align 4
.globl select_sgt_negative_one_constant1_constant2
select_sgt_negative_one_constant1_constant2:
	mvn r1, #2
	cmn r0, #1
	mov r0, r1
	movgt r0, #7
	bx lr
.p2align 4
.globl select_sgt_zero_negone
select_sgt_zero_negone:
	cmp r0, r1
	mov r0, #0
	movwgt r0, #1
	rsb r0, r0, #0
	bx lr
.p2align 4
.globl select_sle_zero_negone
select_sle_zero_negone:
	cmp r0, r1
	mov r0, #0
	movwle r0, #1
	rsb r0, r0, #0
	bx lr
.p2align 4
.globl select_slt_zero_constant1_constant2
select_slt_zero_constant1_constant2:
	cmp r0, #0
	mvn r0, #2
	movlt r0, #7
	bx lr
.p2align 4
.globl select_slt_zero_negone
select_slt_zero_negone:
	cmp r0, r1
	mov r0, #0
	movwlt r0, #1
	rsb r0, r0, #0
	bx lr
.p2align 4
.globl select_uge_zero_negone
select_uge_zero_negone:
	cmp r0, r1
	mov r0, #0
	movwhs r0, #1
	rsb r0, r0, #0
	bx lr
.p2align 4
.globl select_ugt_zero_negone
select_ugt_zero_negone:
	cmp r0, r1
	mov r0, #0
	movwhi r0, #1
	rsb r0, r0, #0
	bx lr
.p2align 4
.globl select_ule_zero_negone
select_ule_zero_negone:
	cmp r0, r1
	mov r0, #0
	movwls r0, #1
	rsb r0, r0, #0
	bx lr
.p2align 4
.globl select_ult_zero_negone
select_ult_zero_negone:
	cmp r0, r1
	mov r0, #0
	movwlo r0, #1
	rsb r0, r0, #0
	bx lr
