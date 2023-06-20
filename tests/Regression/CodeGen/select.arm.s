.arch armv7-a
.data
.text
.syntax unified
.arm
.fpu neon
.globl select_gpr_gpr_gpr
select_gpr_gpr_gpr:
	push { r4 }
	cmp r0, #0
	mov r4, r2
	movne r4, r1
	mov r0, r4
	pop { r4 }
	bx lr
.globl select_not_gpr_gpr_gpr
select_not_gpr_gpr_gpr:
	push { r4 }
	cmp r0, #0
	mov r4, r2
	moveq r4, r1
	mov r0, r4
	pop { r4 }
	bx lr
.globl select_gpr_fpr_fpr
select_gpr_fpr_fpr:
	vmov s0, r1
	vmov s1, r2
	cmp r0, #0
	vmov.f32 s2, s1
	vmovne.f32 s2, s0
	vmov r0, s2
	bx lr
.globl select_not_gpr_fpr_fpr
select_not_gpr_fpr_fpr:
	vmov s0, r1
	vmov s1, r2
	cmp r0, #0
	vmov.f32 s2, s1
	vmoveq.f32 s2, s0
	vmov r0, s2
	bx lr
.globl select_slt_gpr_gpr
select_slt_gpr_gpr:
	push { r4 }
	cmp r0, r1
	mov r4, r3
	movlt r4, r2
	mov r0, r4
	pop { r4 }
	bx lr
.globl select_slt_fpr_fpr
select_slt_fpr_fpr:
	vmov s0, r2
	vmov s1, r3
	cmp r0, r1
	vmov.f32 s2, s1
	vmovlt.f32 s2, s0
	vmov r0, s2
	bx lr
.globl select_sle_gpr_gpr
select_sle_gpr_gpr:
	push { r4 }
	cmp r0, r1
	mov r4, r3
	movle r4, r2
	mov r0, r4
	pop { r4 }
	bx lr
.globl select_sle_fpr_fpr
select_sle_fpr_fpr:
	vmov s0, r2
	vmov s1, r3
	cmp r0, r1
	vmov.f32 s2, s1
	vmovle.f32 s2, s0
	vmov r0, s2
	bx lr
.globl select_sgt_gpr_gpr
select_sgt_gpr_gpr:
	push { r4 }
	cmp r0, r1
	mov r4, r3
	movgt r4, r2
	mov r0, r4
	pop { r4 }
	bx lr
.globl select_sgt_fpr_fpr
select_sgt_fpr_fpr:
	vmov s0, r2
	vmov s1, r3
	cmp r0, r1
	vmov.f32 s2, s1
	vmovgt.f32 s2, s0
	vmov r0, s2
	bx lr
.globl select_sge_gpr_gpr
select_sge_gpr_gpr:
	push { r4 }
	cmp r0, r1
	mov r4, r3
	movge r4, r2
	mov r0, r4
	pop { r4 }
	bx lr
.globl select_sge_fpr_fpr
select_sge_fpr_fpr:
	vmov s0, r2
	vmov s1, r3
	cmp r0, r1
	vmov.f32 s2, s1
	vmovge.f32 s2, s0
	vmov r0, s2
	bx lr
.globl select_eq_gpr_gpr
select_eq_gpr_gpr:
	push { r4 }
	cmp r0, r1
	mov r4, r3
	moveq r4, r2
	mov r0, r4
	pop { r4 }
	bx lr
.globl select_eq_fpr_fpr
select_eq_fpr_fpr:
	vmov s0, r2
	vmov s1, r3
	cmp r0, r1
	vmov.f32 s2, s1
	vmoveq.f32 s2, s0
	vmov r0, s2
	bx lr
.globl select_ne_gpr_gpr
select_ne_gpr_gpr:
	push { r4 }
	cmp r0, r1
	mov r4, r3
	movne r4, r2
	mov r0, r4
	pop { r4 }
	bx lr
.globl select_ne_fpr_fpr
select_ne_fpr_fpr:
	vmov s0, r2
	vmov s1, r3
	cmp r0, r1
	vmov.f32 s2, s1
	vmovne.f32 s2, s0
	vmov r0, s2
	bx lr
.globl select_feq_gpr_gpr
select_feq_gpr_gpr:
	push { r4 }
	vmov s0, r0
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	mov r4, r3
	moveq r4, r2
	mov r0, r4
	pop { r4 }
	bx lr
.globl select_feq_fpr_fpr
select_feq_fpr_fpr:
	vmov s0, r0
	vmov s1, r1
	vmov s2, r2
	vmov s3, r3
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	vmov.f32 s4, s3
	vmoveq.f32 s4, s2
	vmov r0, s4
	bx lr
.globl select_fne_gpr_gpr
select_fne_gpr_gpr:
	push { r4 }
	vmov s0, r0
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	mov r4, r3
	movne r4, r2
	mov r0, r4
	pop { r4 }
	bx lr
.globl select_fne_fpr_fpr
select_fne_fpr_fpr:
	vmov s0, r0
	vmov s1, r1
	vmov s2, r2
	vmov s3, r3
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	vmov.f32 s4, s3
	vmovne.f32 s4, s2
	vmov r0, s4
	bx lr
.globl select_flt_gpr_gpr
select_flt_gpr_gpr:
	push { r4 }
	vmov s0, r0
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	mov r4, r3
	movmi r4, r2
	mov r0, r4
	pop { r4 }
	bx lr
.globl select_flt_fpr_fpr
select_flt_fpr_fpr:
	vmov s0, r0
	vmov s1, r1
	vmov s2, r2
	vmov s3, r3
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	vmov.f32 s4, s3
	vmovmi.f32 s4, s2
	vmov r0, s4
	bx lr
.globl select_fle_gpr_gpr
select_fle_gpr_gpr:
	push { r4 }
	vmov s0, r0
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	mov r4, r3
	movls r4, r2
	mov r0, r4
	pop { r4 }
	bx lr
.globl select_fle_fpr_fpr
select_fle_fpr_fpr:
	vmov s0, r0
	vmov s1, r1
	vmov s2, r2
	vmov s3, r3
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	vmov.f32 s4, s3
	vmovls.f32 s4, s2
	vmov r0, s4
	bx lr
.globl select_fgt_gpr_gpr
select_fgt_gpr_gpr:
	push { r4 }
	vmov s0, r0
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	mov r4, r3
	movgt r4, r2
	mov r0, r4
	pop { r4 }
	bx lr
.globl select_fgt_fpr_fpr
select_fgt_fpr_fpr:
	vmov s0, r0
	vmov s1, r1
	vmov s2, r2
	vmov s3, r3
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	vmov.f32 s4, s3
	vmovgt.f32 s4, s2
	vmov r0, s4
	bx lr
.globl select_fge_gpr_gpr
select_fge_gpr_gpr:
	push { r4 }
	vmov s0, r0
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	mov r4, r3
	movge r4, r2
	mov r0, r4
	pop { r4 }
	bx lr
.globl select_fge_fpr_fpr
select_fge_fpr_fpr:
	vmov s0, r0
	vmov s1, r1
	vmov s2, r2
	vmov s3, r3
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	vmov.f32 s4, s3
	vmovge.f32 s4, s2
	vmov r0, s4
	bx lr
.globl select_cross
select_cross:
	push { r4, r5, r6, r7, r8 }
	sub sp, sp, #12
	cmp r0, r1
	mov r4, #0
	movwlt r4, #1
	mov r5, r4
	cmp r1, r2
	str r4, [sp, #4]
	str r4, [sp, #8]
	bge label284
	mov r4, #1
	mov r5, #10
	ldr r6, [sp, #8]
	cmp r6, #0
	mov r7, r5
	movne r7, r4
	mov r8, r7
	str r7, [sp, #0]
	b label275
label284:
	ldr r4, [sp, #4]
	mov r5, r4
	str r4, [sp, #0]
label275:
	ldr r4, [sp, #0]
	mov r0, r4
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8 }
	bx lr
.globl select_cross_fpr
select_cross_fpr:
	push { r4, r5 }
	sub sp, sp, #12
	cmp r0, r1
	mov r4, #0
	movwlt r4, #1
	mov r5, r4
	cmp r1, r2
	str r4, [sp, #4]
	str r4, [sp, #8]
	bge label307
	vmov.f32 s0, #1
	vmov.f32 s1, #10
	cmp r4, #0
	vmov.f32 s2, s1
	vmovne.f32 s2, s0
	vmov.f32 s3, s2
	vstr s2, [sp, #0]
	b label297
label307:
	ldr r4, [sp, #4]
	vmov s0, r4
	vcvt.f32.s32 s1, s0
	vmov.f32 s2, s1
	vstr s1, [sp, #0]
label297:
	vldr s0, [sp, #0]
	vmov r0, s0
	add sp, sp, #12
	pop { r4, r5 }
	bx lr
.globl select_round
select_round:
	push { r4 }
	sub sp, sp, #8
	vmov s0, r0
	movw r4, #4048
	movt r4, #49225
	vmov s1, r4
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	vstr s0, [sp, #4]
	bge label333
	movw r4, #4068
	movt r4, #16585
	vmov s0, r4
	vldr s1, [sp, #4]
	vadd.f32 s2, s1, s0
	vmov.f32 s3, s2
	vstr s2, [sp, #0]
	b label324
label333:
	vldr s0, [sp, #4]
	vmov.f32 s1, s0
	vstr s0, [sp, #0]
label324:
	vldr s0, [sp, #0]
	vmov r0, s0
	add sp, sp, #8
	pop { r4 }
	bx lr
