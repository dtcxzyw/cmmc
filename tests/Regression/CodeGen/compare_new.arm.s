.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl icmp_eq
icmp_eq:
.p2align 4
	sub r0, r0, r1
	clz r0, r0
	lsr r0, r0, #5
	bx lr
.globl icmp_ne
icmp_ne:
.p2align 4
	cmp r0, r1
	mov r0, #0
	movwne r0, #1
	bx lr
.globl icmp_slt
icmp_slt:
.p2align 4
	cmp r0, r1
	mov r0, #0
	movwlt r0, #1
	bx lr
.globl icmp_sle
icmp_sle:
.p2align 4
	cmp r0, r1
	mov r0, #0
	movwle r0, #1
	bx lr
.globl icmp_sgt
icmp_sgt:
.p2align 4
	cmp r0, r1
	mov r0, #0
	movwgt r0, #1
	bx lr
.globl icmp_sge
icmp_sge:
.p2align 4
	cmp r0, r1
	mov r0, #0
	movwge r0, #1
	bx lr
.globl icmp_ult
icmp_ult:
.p2align 4
	cmp r0, r1
	mov r0, #0
	movwlo r0, #1
	bx lr
.globl icmp_ule
icmp_ule:
.p2align 4
	cmp r0, r1
	mov r0, #0
	movwls r0, #1
	bx lr
.globl icmp_ugt
icmp_ugt:
.p2align 4
	cmp r0, r1
	mov r0, #0
	movwhi r0, #1
	bx lr
.globl icmp_uge
icmp_uge:
.p2align 4
	cmp r0, r1
	mov r0, #0
	movwhs r0, #1
	bx lr
.globl fcmp_oeq
fcmp_oeq:
.p2align 4
	vcmp.f32 s0, s1
	mov r0, #0
	vmrs APSR_nzcv, FPSCR
	movweq r0, #1
	bx lr
.globl fcmp_olt
fcmp_olt:
.p2align 4
	vcmp.f32 s0, s1
	mov r0, #0
	vmrs APSR_nzcv, FPSCR
	movwmi r0, #1
	bx lr
.globl fcmp_ole
fcmp_ole:
.p2align 4
	vcmp.f32 s0, s1
	mov r0, #0
	vmrs APSR_nzcv, FPSCR
	movwls r0, #1
	bx lr
.globl fcmp_ogt
fcmp_ogt:
.p2align 4
	vcmp.f32 s0, s1
	mov r0, #0
	vmrs APSR_nzcv, FPSCR
	movwgt r0, #1
	bx lr
.globl fcmp_oge
fcmp_oge:
.p2align 4
	vcmp.f32 s0, s1
	mov r0, #0
	vmrs APSR_nzcv, FPSCR
	movwge r0, #1
	bx lr
.globl fcmp_une
fcmp_une:
.p2align 4
	vcmp.f32 s0, s1
	mov r0, #0
	vmrs APSR_nzcv, FPSCR
	movwne r0, #1
	bx lr
.globl fcmp_ult
fcmp_ult:
.p2align 4
	vcmp.f32 s0, s1
	mov r0, #0
	vmrs APSR_nzcv, FPSCR
	movwlt r0, #1
	bx lr
.globl fcmp_ule
fcmp_ule:
.p2align 4
	vcmp.f32 s0, s1
	mov r0, #0
	vmrs APSR_nzcv, FPSCR
	movwle r0, #1
	bx lr
.globl fcmp_ugt
fcmp_ugt:
.p2align 4
	vcmp.f32 s0, s1
	mov r0, #0
	vmrs APSR_nzcv, FPSCR
	movwhi r0, #1
	bx lr
.globl fcmp_uge
fcmp_uge:
.p2align 4
	vcmp.f32 s0, s1
	mov r0, #0
	vmrs APSR_nzcv, FPSCR
	movwhs r0, #1
	bx lr
