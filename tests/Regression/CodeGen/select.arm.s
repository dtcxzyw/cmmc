.arch armv7-a
.data
.text
.syntax unified
.arm
.fpu vfp
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
	vmov s0, r1
	vmov s1, r2
	cmp r0, #0
	vmovne.f32 s1, s0
	vmov r0, s1
	bx lr
.globl select_not_gpr_fpr_fpr
select_not_gpr_fpr_fpr:
	vmov s0, r1
	vmov s1, r2
	cmp r0, #0
	vmoveq.f32 s1, s0
	vmov r0, s1
	bx lr
.globl select_slt_gpr_gpr
select_slt_gpr_gpr:
	cmp r0, r1
	mov r0, r3
	movlt r0, r2
	bx lr
.globl select_slt_fpr_fpr
select_slt_fpr_fpr:
	vmov s0, r2
	vmov s1, r3
	cmp r0, r1
	vmovlt.f32 s1, s0
	vmov r0, s1
	bx lr
.globl select_sle_gpr_gpr
select_sle_gpr_gpr:
	cmp r0, r1
	mov r0, r3
	movle r0, r2
	bx lr
.globl select_sle_fpr_fpr
select_sle_fpr_fpr:
	vmov s0, r2
	vmov s1, r3
	cmp r0, r1
	vmovle.f32 s1, s0
	vmov r0, s1
	bx lr
.globl select_sgt_gpr_gpr
select_sgt_gpr_gpr:
	cmp r0, r1
	mov r0, r3
	movgt r0, r2
	bx lr
.globl select_sgt_fpr_fpr
select_sgt_fpr_fpr:
	vmov s0, r2
	vmov s1, r3
	cmp r0, r1
	vmovgt.f32 s1, s0
	vmov r0, s1
	bx lr
.globl select_sge_gpr_gpr
select_sge_gpr_gpr:
	cmp r0, r1
	mov r0, r3
	movge r0, r2
	bx lr
.globl select_sge_fpr_fpr
select_sge_fpr_fpr:
	vmov s0, r2
	vmov s1, r3
	cmp r0, r1
	vmovge.f32 s1, s0
	vmov r0, s1
	bx lr
.globl select_eq_gpr_gpr
select_eq_gpr_gpr:
	cmp r0, r1
	mov r0, r3
	moveq r0, r2
	bx lr
.globl select_eq_fpr_fpr
select_eq_fpr_fpr:
	vmov s0, r2
	vmov s1, r3
	cmp r0, r1
	vmoveq.f32 s1, s0
	vmov r0, s1
	bx lr
.globl select_ne_gpr_gpr
select_ne_gpr_gpr:
	cmp r0, r1
	mov r0, r3
	movne r0, r2
	bx lr
.globl select_ne_fpr_fpr
select_ne_fpr_fpr:
	vmov s0, r2
	vmov s1, r3
	cmp r0, r1
	vmovne.f32 s1, s0
	vmov r0, s1
	bx lr
.globl select_feq_gpr_gpr
select_feq_gpr_gpr:
	vmov s0, r0
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	mov r0, r3
	moveq r0, r2
	bx lr
.globl select_feq_fpr_fpr
select_feq_fpr_fpr:
	vmov s1, r0
	vmov s2, r1
	vmov s0, r2
	vmov s3, r3
	vcmp.f32 s1, s2
	vmrs APSR_nzcv, FPSCR
	vmov.f32 s1, s3
	vmoveq.f32 s1, s0
	vmov r0, s1
	bx lr
.globl select_fne_gpr_gpr
select_fne_gpr_gpr:
	vmov s0, r0
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	mov r0, r3
	movne r0, r2
	bx lr
.globl select_fne_fpr_fpr
select_fne_fpr_fpr:
	vmov s1, r0
	vmov s2, r1
	vmov s0, r2
	vmov s3, r3
	vcmp.f32 s1, s2
	vmrs APSR_nzcv, FPSCR
	vmov.f32 s1, s3
	vmovne.f32 s1, s0
	vmov r0, s1
	bx lr
.globl select_flt_gpr_gpr
select_flt_gpr_gpr:
	vmov s0, r0
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	mov r0, r3
	movmi r0, r2
	bx lr
.globl select_flt_fpr_fpr
select_flt_fpr_fpr:
	vmov s1, r0
	vmov s2, r1
	vmov s0, r2
	vmov s3, r3
	vcmp.f32 s1, s2
	vmrs APSR_nzcv, FPSCR
	vmov.f32 s1, s3
	vmovmi.f32 s1, s0
	vmov r0, s1
	bx lr
.globl select_fle_gpr_gpr
select_fle_gpr_gpr:
	vmov s0, r0
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	mov r0, r3
	movls r0, r2
	bx lr
.globl select_fle_fpr_fpr
select_fle_fpr_fpr:
	vmov s1, r0
	vmov s2, r1
	vmov s0, r2
	vmov s3, r3
	vcmp.f32 s1, s2
	vmrs APSR_nzcv, FPSCR
	vmov.f32 s1, s3
	vmovls.f32 s1, s0
	vmov r0, s1
	bx lr
.globl select_fgt_gpr_gpr
select_fgt_gpr_gpr:
	vmov s0, r0
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	mov r0, r3
	movgt r0, r2
	bx lr
.globl select_fgt_fpr_fpr
select_fgt_fpr_fpr:
	vmov s1, r0
	vmov s2, r1
	vmov s0, r2
	vmov s3, r3
	vcmp.f32 s1, s2
	vmrs APSR_nzcv, FPSCR
	vmov.f32 s1, s3
	vmovgt.f32 s1, s0
	vmov r0, s1
	bx lr
.globl select_fge_gpr_gpr
select_fge_gpr_gpr:
	vmov s0, r0
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	mov r0, r3
	movge r0, r2
	bx lr
.globl select_fge_fpr_fpr
select_fge_fpr_fpr:
	vmov s1, r0
	vmov s2, r1
	vmov s0, r2
	vmov s3, r3
	vcmp.f32 s1, s2
	vmrs APSR_nzcv, FPSCR
	vmov.f32 s1, s3
	vmovge.f32 s1, s0
	vmov r0, s1
	bx lr
.globl select_cross
select_cross:
	cmp r0, r1
	mov r3, #0
	movwlt r3, #1
	mov r0, r3
	cmp r1, r2
	bge label195
	mov r1, #1
	mov r0, #10
	cmp r3, #0
	movne r0, r1
label195:
	bx lr
.globl select_cross_fpr
select_cross_fpr:
	cmp r0, r1
	mov r0, #0
	movwlt r0, #1
	mov r3, r0
	cmp r1, r2
	bge label221
	mov r1, #1065353216
	vmov s1, r1
	movw r1, #0
	movt r1, #16672
	vmov s0, r1
	cmp r0, #0
	vmovne.f32 s0, s1
	b label211
label221:
	vmov s0, r3
	vcvt.f32.s32 s0, s0
label211:
	vmov r0, s0
	bx lr
.globl select_round
select_round:
	vmov s0, r0
	movw r0, #4048
	movt r0, #49225
	vmov s1, r0
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bmi label231
label232:
	vmov r0, s0
	bx lr
label231:
	movw r0, #4068
	movt r0, #16585
	vmov s1, r0
	vadd.f32 s0, s0, s1
	b label232
