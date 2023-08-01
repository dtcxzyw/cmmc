.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl select_icmp_eq
select_icmp_eq:
	cmp r0, r1
	vmoveq.f32 s1, s0
	vmov.f32 s0, s1
	bx lr
.p2align 4
.globl select_icmp_ne
select_icmp_ne:
	cmp r0, r1
	vmovne.f32 s1, s0
	vmov.f32 s0, s1
	bx lr
.p2align 4
.globl select_icmp_sge
select_icmp_sge:
	cmp r0, r1
	vmovge.f32 s1, s0
	vmov.f32 s0, s1
	bx lr
.p2align 4
.globl select_icmp_sgt
select_icmp_sgt:
	cmp r0, r1
	vmovgt.f32 s1, s0
	vmov.f32 s0, s1
	bx lr
.p2align 4
.globl select_icmp_sgt_zero
select_icmp_sgt_zero:
	cmp r0, #0
	mov r0, #0
	vmov s1, r0
	mov r0, #1065353216
	vmov s0, r0
	vmovgt.f32 s0, s1
	bx lr
.p2align 4
.globl select_icmp_sle
select_icmp_sle:
	cmp r0, r1
	vmovle.f32 s1, s0
	vmov.f32 s0, s1
	bx lr
.p2align 4
.globl select_icmp_slt
select_icmp_slt:
	cmp r0, r1
	vmovlt.f32 s1, s0
	vmov.f32 s0, s1
	bx lr
.p2align 4
.globl select_icmp_slt_one
select_icmp_slt_one:
	cmp r0, #1
	mov r0, #1065353216
	vmov s1, r0
	mov r0, #0
	vmov s0, r0
	vmovlt.f32 s0, s1
	bx lr
.p2align 4
.globl select_icmp_uge
select_icmp_uge:
	cmp r0, r1
	vmovhs.f32 s1, s0
	vmov.f32 s0, s1
	bx lr
.p2align 4
.globl select_icmp_ugt
select_icmp_ugt:
	cmp r0, r1
	vmovhi.f32 s1, s0
	vmov.f32 s0, s1
	bx lr
.p2align 4
.globl select_icmp_ule
select_icmp_ule:
	cmp r0, r1
	vmovls.f32 s1, s0
	vmov.f32 s0, s1
	bx lr
.p2align 4
.globl select_icmp_ult
select_icmp_ult:
	cmp r0, r1
	vmovlo.f32 s1, s0
	vmov.f32 s0, s1
	bx lr
