.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl icmp_eq
icmp_eq:
	sub r0, r0, r1
	clz r0, r0
	lsr r0, r0, #5
	bx lr
.p2align 4
.globl icmp_ne
icmp_ne:
	cmp r0, r1
	mov r0, #0
	movwne r0, #1
	bx lr
.p2align 4
.globl icmp_slt
icmp_slt:
	cmp r0, r1
	mov r0, #0
	movwlt r0, #1
	bx lr
.p2align 4
.globl icmp_sle
icmp_sle:
	cmp r0, r1
	mov r0, #0
	movwle r0, #1
	bx lr
.p2align 4
.globl icmp_sgt
icmp_sgt:
	cmp r0, r1
	mov r0, #0
	movwgt r0, #1
	bx lr
.p2align 4
.globl icmp_sge
icmp_sge:
	cmp r0, r1
	mov r0, #0
	movwge r0, #1
	bx lr
.p2align 4
.globl icmp_ult
icmp_ult:
	cmp r0, r1
	mov r0, #0
	movwlo r0, #1
	bx lr
.p2align 4
.globl icmp_ule
icmp_ule:
	cmp r0, r1
	mov r0, #0
	movwls r0, #1
	bx lr
.p2align 4
.globl icmp_ugt
icmp_ugt:
	cmp r0, r1
	mov r0, #0
	movwhi r0, #1
	bx lr
.p2align 4
.globl icmp_uge
icmp_uge:
	cmp r0, r1
	mov r0, #0
	movwhs r0, #1
	bx lr
.p2align 4
.globl fcmp_oeq
fcmp_oeq:
	vcmp.f32 s0, s1
	mov r0, #0
	vmrs APSR_nzcv, FPSCR
	movweq r0, #1
	bx lr
.p2align 4
.globl fcmp_olt
fcmp_olt:
	vcmp.f32 s0, s1
	mov r0, #0
	vmrs APSR_nzcv, FPSCR
	movwmi r0, #1
	bx lr
.p2align 4
.globl fcmp_ole
fcmp_ole:
	vcmp.f32 s0, s1
	mov r0, #0
	vmrs APSR_nzcv, FPSCR
	movwls r0, #1
	bx lr
.p2align 4
.globl fcmp_ogt
fcmp_ogt:
	vcmp.f32 s0, s1
	mov r0, #0
	vmrs APSR_nzcv, FPSCR
	movwgt r0, #1
	bx lr
.p2align 4
.globl fcmp_oge
fcmp_oge:
	vcmp.f32 s0, s1
	mov r0, #0
	vmrs APSR_nzcv, FPSCR
	movwge r0, #1
	bx lr
.p2align 4
.globl fcmp_une
fcmp_une:
	vcmp.f32 s0, s1
	mov r0, #0
	vmrs APSR_nzcv, FPSCR
	movwne r0, #1
	bx lr
.p2align 4
.globl fcmp_ult
fcmp_ult:
	vcmp.f32 s0, s1
	mov r0, #0
	vmrs APSR_nzcv, FPSCR
	movwlt r0, #1
	bx lr
.p2align 4
.globl fcmp_ule
fcmp_ule:
	vcmp.f32 s0, s1
	mov r0, #0
	vmrs APSR_nzcv, FPSCR
	movwle r0, #1
	bx lr
.p2align 4
.globl fcmp_ugt
fcmp_ugt:
	vcmp.f32 s0, s1
	mov r0, #0
	vmrs APSR_nzcv, FPSCR
	movwhi r0, #1
	bx lr
.p2align 4
.globl fcmp_uge
fcmp_uge:
	vcmp.f32 s0, s1
	mov r0, #0
	vmrs APSR_nzcv, FPSCR
	movwhs r0, #1
	bx lr
