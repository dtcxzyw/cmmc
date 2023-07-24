.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl select_gpr_gpr_gpr
select_gpr_gpr_gpr:
	cmp r0, #0
	mov r0, r2
	movne r0, r1
	bx lr
.globl select_not_gpr_gpr_gpr
select_not_gpr_gpr_gpr:
	cmp r0, #0
	mov r0, r2
	moveq r0, r1
	bx lr
.globl select_gpr_fpr_fpr
select_gpr_fpr_fpr:
	cmp r0, #0
	vmovne.f32 s1, s0
	vmov.f32 s0, s1
	bx lr
.globl select_not_gpr_fpr_fpr
select_not_gpr_fpr_fpr:
	cmp r0, #0
	vmoveq.f32 s1, s0
	vmov.f32 s0, s1
	bx lr
.globl select_slt_gpr_gpr
select_slt_gpr_gpr:
	cmp r0, r1
	mov r0, r3
	movlt r0, r2
	bx lr
.globl select_slt_fpr_fpr
select_slt_fpr_fpr:
	cmp r0, r1
	vmovlt.f32 s1, s0
	vmov.f32 s0, s1
	bx lr
.globl select_sle_gpr_gpr
select_sle_gpr_gpr:
	cmp r0, r1
	mov r0, r3
	movle r0, r2
	bx lr
.globl select_sle_fpr_fpr
select_sle_fpr_fpr:
	cmp r0, r1
	vmovle.f32 s1, s0
	vmov.f32 s0, s1
	bx lr
.globl select_sgt_gpr_gpr
select_sgt_gpr_gpr:
	cmp r0, r1
	mov r0, r3
	movgt r0, r2
	bx lr
.globl select_sgt_fpr_fpr
select_sgt_fpr_fpr:
	cmp r0, r1
	vmovgt.f32 s1, s0
	vmov.f32 s0, s1
	bx lr
.globl select_sge_gpr_gpr
select_sge_gpr_gpr:
	cmp r0, r1
	mov r0, r3
	movge r0, r2
	bx lr
.globl select_sge_fpr_fpr
select_sge_fpr_fpr:
	cmp r0, r1
	vmovge.f32 s1, s0
	vmov.f32 s0, s1
	bx lr
.globl select_eq_gpr_gpr
select_eq_gpr_gpr:
	cmp r0, r1
	mov r0, r3
	moveq r0, r2
	bx lr
.globl select_eq_fpr_fpr
select_eq_fpr_fpr:
	cmp r0, r1
	vmoveq.f32 s1, s0
	vmov.f32 s0, s1
	bx lr
.globl select_ne_gpr_gpr
select_ne_gpr_gpr:
	cmp r0, r1
	mov r0, r3
	movne r0, r2
	bx lr
.globl select_ne_fpr_fpr
select_ne_fpr_fpr:
	cmp r0, r1
	vmovne.f32 s1, s0
	vmov.f32 s0, s1
	bx lr
.globl select_feq_gpr_gpr
select_feq_gpr_gpr:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	moveq r1, r0
	mov r0, r1
	bx lr
.globl select_feq_fpr_fpr
select_feq_fpr_fpr:
	vcmp.f32 s0, s1
	vmov.f32 s0, s3
	vmrs APSR_nzcv, FPSCR
	vmoveq.f32 s0, s2
	bx lr
.globl select_fne_gpr_gpr
select_fne_gpr_gpr:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	movne r1, r0
	mov r0, r1
	bx lr
.globl select_fne_fpr_fpr
select_fne_fpr_fpr:
	vcmp.f32 s0, s1
	vmov.f32 s0, s3
	vmrs APSR_nzcv, FPSCR
	vmovne.f32 s0, s2
	bx lr
.globl select_flt_gpr_gpr
select_flt_gpr_gpr:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	movmi r1, r0
	mov r0, r1
	bx lr
.globl select_flt_fpr_fpr
select_flt_fpr_fpr:
	vcmp.f32 s0, s1
	vmov.f32 s0, s3
	vmrs APSR_nzcv, FPSCR
	vmovmi.f32 s0, s2
	bx lr
.globl select_fle_gpr_gpr
select_fle_gpr_gpr:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	movls r1, r0
	mov r0, r1
	bx lr
.globl select_fle_fpr_fpr
select_fle_fpr_fpr:
	vcmp.f32 s0, s1
	vmov.f32 s0, s3
	vmrs APSR_nzcv, FPSCR
	vmovls.f32 s0, s2
	bx lr
.globl select_fgt_gpr_gpr
select_fgt_gpr_gpr:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	movgt r1, r0
	mov r0, r1
	bx lr
.globl select_fgt_fpr_fpr
select_fgt_fpr_fpr:
	vcmp.f32 s0, s1
	vmov.f32 s0, s3
	vmrs APSR_nzcv, FPSCR
	vmovgt.f32 s0, s2
	bx lr
.globl select_fge_gpr_gpr
select_fge_gpr_gpr:
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	movge r1, r0
	mov r0, r1
	bx lr
.globl select_fge_fpr_fpr
select_fge_fpr_fpr:
	vcmp.f32 s0, s1
	vmov.f32 s0, s3
	vmrs APSR_nzcv, FPSCR
	vmovge.f32 s0, s2
	bx lr
.globl select_cross
select_cross:
	push { r4 }
	mov r3, #10
	mov r4, #1
	cmp r0, r1
	movlt r3, r4
	mov r0, #0
	movwlt r0, #1
	cmp r1, r2
	movlt r0, r3
	pop { r4 }
	bx lr
.globl select_cross_fpr
select_cross_fpr:
	cmp r0, r1
	mov r0, #0
	movwlt r0, #1
	cmp r1, r2
	mov r3, r0
	blt label210
	vmov s0, r0
	vcvt.f32.s32 s0, s0
	b label211
label210:
	mov r1, #1065353216
	cmp r0, #0
	vmov s1, r1
	movw r1, #0
	movt r1, #16672
	vmov s0, r1
	vmovne.f32 s0, s1
label211:
	bx lr
.globl select_round
select_round:
	movw r0, #4048
	movt r0, #49225
	vmov s1, r0
	movw r0, #4068
	movt r0, #16585
	vcmp.f32 s0, s1
	vmov s1, r0
	vmrs APSR_nzcv, FPSCR
	vadd.f32 s1, s0, s1
	vmovmi.f32 s0, s1
	bx lr
.globl select_bitset
select_bitset:
	eor r1, r1, #1
	orrs r1, r0, r1
	mov r0, #0
	moveq r0, r2
	bx lr
.globl select_imax
select_imax:
	cmp r0, r1
	movle r0, r1
	bx lr
.globl select_imin
select_imin:
	cmp r0, r1
	movge r0, r1
	bx lr
.globl select_zero
select_zero:
	cmp r0, #0
	mov r0, #0
	moveq r0, r1
	bx lr
.globl select_sgt_zero
select_sgt_zero:
	cmp r0, #0
	mov r0, #0
	movgt r0, r1
	bx lr
.globl select_slt_zero
select_slt_zero:
	and r0, r1, r0, asr #31
	bx lr
.globl select_imm
select_imm:
	cmp r0, #0
	mov r0, #0
	movwne r0, #1
	add r0, r0, #1
	bx lr
.globl select_one
select_one:
	cmp r0, #1
	mov r0, r2
	moveq r0, r1
	bx lr
.globl select_constant
select_constant:
	cmp r0, #0
	movw r1, #48348
	movw r0, #49414
	movt r1, #36635
	movt r0, #51810
	movne r0, r1
	bx lr
