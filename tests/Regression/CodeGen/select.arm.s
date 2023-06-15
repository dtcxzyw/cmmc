.arch armv7-a
.data
.text
.syntax unified
.arm
.fpu neon
.globl select_gpr_gpr_gpr
select_gpr_gpr_gpr:
	push { r4, r5 }
	cmp r0, #0
	mov r4, #0
	movwne r4, #1
	cmp r4, #0
	mov r5, r2
	moveq r5, r1
	mov r0, r5
	pop { r4, r5 }
	bx lr
.globl select_gpr_fpr_fpr
select_gpr_fpr_fpr:
	push { r4 }
	vmov s0, r1
	vmov s1, r2
	cmp r0, #0
	mov r4, #0
	movwne r4, #1
	cmp r4, #0
	vmov.f32 s2, s1
	vmoveq.f32 s2, s0
	vmov r0, s2
	pop { r4 }
	bx lr
.globl select_slt_gpr_gpr
select_slt_gpr_gpr:
	push { r4, r5 }
	cmp r0, r1
	mov r4, #0
	movwlt r4, #1
	cmp r4, #0
	mov r5, r3
	moveq r5, r2
	mov r0, r5
	pop { r4, r5 }
	bx lr
.globl select_slt_fpr_fpr
select_slt_fpr_fpr:
	push { r4 }
	vmov s0, r2
	vmov s1, r3
	cmp r0, r1
	mov r4, #0
	movwlt r4, #1
	cmp r4, #0
	vmov.f32 s2, s1
	vmoveq.f32 s2, s0
	vmov r0, s2
	pop { r4 }
	bx lr
.globl select_sle_gpr_gpr
select_sle_gpr_gpr:
	push { r4, r5 }
	cmp r0, r1
	mov r4, #0
	movwle r4, #1
	cmp r4, #0
	mov r5, r3
	moveq r5, r2
	mov r0, r5
	pop { r4, r5 }
	bx lr
.globl select_sle_fpr_fpr
select_sle_fpr_fpr:
	push { r4 }
	vmov s0, r2
	vmov s1, r3
	cmp r0, r1
	mov r4, #0
	movwle r4, #1
	cmp r4, #0
	vmov.f32 s2, s1
	vmoveq.f32 s2, s0
	vmov r0, s2
	pop { r4 }
	bx lr
.globl select_sgt_gpr_gpr
select_sgt_gpr_gpr:
	push { r4, r5 }
	cmp r0, r1
	mov r4, #0
	movwgt r4, #1
	cmp r4, #0
	mov r5, r3
	moveq r5, r2
	mov r0, r5
	pop { r4, r5 }
	bx lr
.globl select_sgt_fpr_fpr
select_sgt_fpr_fpr:
	push { r4 }
	vmov s0, r2
	vmov s1, r3
	cmp r0, r1
	mov r4, #0
	movwgt r4, #1
	cmp r4, #0
	vmov.f32 s2, s1
	vmoveq.f32 s2, s0
	vmov r0, s2
	pop { r4 }
	bx lr
.globl select_sge_gpr_gpr
select_sge_gpr_gpr:
	push { r4, r5 }
	cmp r0, r1
	mov r4, #0
	movwge r4, #1
	cmp r4, #0
	mov r5, r3
	moveq r5, r2
	mov r0, r5
	pop { r4, r5 }
	bx lr
.globl select_sge_fpr_fpr
select_sge_fpr_fpr:
	push { r4 }
	vmov s0, r2
	vmov s1, r3
	cmp r0, r1
	mov r4, #0
	movwge r4, #1
	cmp r4, #0
	vmov.f32 s2, s1
	vmoveq.f32 s2, s0
	vmov r0, s2
	pop { r4 }
	bx lr
.globl select_eq_gpr_gpr
select_eq_gpr_gpr:
	push { r4, r5 }
	cmp r0, r1
	mov r4, #0
	movweq r4, #1
	cmp r4, #0
	mov r5, r3
	moveq r5, r2
	mov r0, r5
	pop { r4, r5 }
	bx lr
.globl select_eq_fpr_fpr
select_eq_fpr_fpr:
	push { r4 }
	vmov s0, r2
	vmov s1, r3
	cmp r0, r1
	mov r4, #0
	movweq r4, #1
	cmp r4, #0
	vmov.f32 s2, s1
	vmoveq.f32 s2, s0
	vmov r0, s2
	pop { r4 }
	bx lr
.globl select_ne_gpr_gpr
select_ne_gpr_gpr:
	push { r4, r5 }
	cmp r0, r1
	mov r4, #0
	movwne r4, #1
	cmp r4, #0
	mov r5, r3
	moveq r5, r2
	mov r0, r5
	pop { r4, r5 }
	bx lr
.globl select_ne_fpr_fpr
select_ne_fpr_fpr:
	push { r4 }
	vmov s0, r2
	vmov s1, r3
	cmp r0, r1
	mov r4, #0
	movwne r4, #1
	cmp r4, #0
	vmov.f32 s2, s1
	vmoveq.f32 s2, s0
	vmov r0, s2
	pop { r4 }
	bx lr
.globl select_feq_gpr_gpr
select_feq_gpr_gpr:
	push { r4, r5 }
	vmov s0, r0
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, fpcsr
	mov r4, #0
	movweq r4, #1
	cmp r4, #0
	mov r5, r3
	moveq r5, r2
	mov r0, r5
	pop { r4, r5 }
	bx lr
.globl select_feq_fpr_fpr
select_feq_fpr_fpr:
	push { r4 }
	vmov s0, r0
	vmov s1, r1
	vmov s2, r2
	vmov s3, r3
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, fpcsr
	mov r4, #0
	movweq r4, #1
	cmp r4, #0
	vmov.f32 s4, s3
	vmoveq.f32 s4, s2
	vmov r0, s4
	pop { r4 }
	bx lr
.globl select_fne_gpr_gpr
select_fne_gpr_gpr:
	push { r4, r5 }
	vmov s0, r0
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, fpcsr
	mov r4, #0
	movwne r4, #1
	cmp r4, #0
	mov r5, r3
	moveq r5, r2
	mov r0, r5
	pop { r4, r5 }
	bx lr
.globl select_fne_fpr_fpr
select_fne_fpr_fpr:
	push { r4 }
	vmov s0, r0
	vmov s1, r1
	vmov s2, r2
	vmov s3, r3
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, fpcsr
	mov r4, #0
	movwne r4, #1
	cmp r4, #0
	vmov.f32 s4, s3
	vmoveq.f32 s4, s2
	vmov r0, s4
	pop { r4 }
	bx lr
.globl select_flt_gpr_gpr
select_flt_gpr_gpr:
	push { r4, r5 }
	vmov s0, r0
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, fpcsr
	mov r4, #0
	movwmi r4, #1
	cmp r4, #0
	mov r5, r3
	moveq r5, r2
	mov r0, r5
	pop { r4, r5 }
	bx lr
.globl select_flt_fpr_fpr
select_flt_fpr_fpr:
	push { r4 }
	vmov s0, r0
	vmov s1, r1
	vmov s2, r2
	vmov s3, r3
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, fpcsr
	mov r4, #0
	movwmi r4, #1
	cmp r4, #0
	vmov.f32 s4, s3
	vmoveq.f32 s4, s2
	vmov r0, s4
	pop { r4 }
	bx lr
.globl select_fle_gpr_gpr
select_fle_gpr_gpr:
	push { r4, r5 }
	vmov s0, r0
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, fpcsr
	mov r4, #0
	movwls r4, #1
	cmp r4, #0
	mov r5, r3
	moveq r5, r2
	mov r0, r5
	pop { r4, r5 }
	bx lr
.globl select_fle_fpr_fpr
select_fle_fpr_fpr:
	push { r4 }
	vmov s0, r0
	vmov s1, r1
	vmov s2, r2
	vmov s3, r3
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, fpcsr
	mov r4, #0
	movwls r4, #1
	cmp r4, #0
	vmov.f32 s4, s3
	vmoveq.f32 s4, s2
	vmov r0, s4
	pop { r4 }
	bx lr
.globl select_fgt_gpr_gpr
select_fgt_gpr_gpr:
	push { r4, r5 }
	vmov s0, r0
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, fpcsr
	mov r4, #0
	movwgt r4, #1
	cmp r4, #0
	mov r5, r3
	moveq r5, r2
	mov r0, r5
	pop { r4, r5 }
	bx lr
.globl select_fgt_fpr_fpr
select_fgt_fpr_fpr:
	push { r4 }
	vmov s0, r0
	vmov s1, r1
	vmov s2, r2
	vmov s3, r3
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, fpcsr
	mov r4, #0
	movwgt r4, #1
	cmp r4, #0
	vmov.f32 s4, s3
	vmoveq.f32 s4, s2
	vmov r0, s4
	pop { r4 }
	bx lr
.globl select_fge_gpr_gpr
select_fge_gpr_gpr:
	push { r4, r5 }
	vmov s0, r0
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, fpcsr
	mov r4, #0
	movwge r4, #1
	cmp r4, #0
	mov r5, r3
	moveq r5, r2
	mov r0, r5
	pop { r4, r5 }
	bx lr
.globl select_fge_fpr_fpr
select_fge_fpr_fpr:
	push { r4 }
	vmov s0, r0
	vmov s1, r1
	vmov s2, r2
	vmov s3, r3
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, fpcsr
	mov r4, #0
	movwge r4, #1
	cmp r4, #0
	vmov.f32 s4, s3
	vmoveq.f32 s4, s2
	vmov r0, s4
	pop { r4 }
	bx lr
