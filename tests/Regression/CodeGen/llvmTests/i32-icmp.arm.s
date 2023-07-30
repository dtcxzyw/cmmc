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
.globl icmp_eq_constant
icmp_eq_constant:
.p2align 4
	sub r0, r0, #42
	clz r0, r0
	lsr r0, r0, #5
	bx lr
.globl icmp_eq_constant_2048
icmp_eq_constant_2048:
.p2align 4
	sub r0, r0, #2048
	clz r0, r0
	lsr r0, r0, #5
	bx lr
.globl icmp_eq_constant_2049
icmp_eq_constant_2049:
.p2align 4
	movw r1, #2049
	sub r0, r0, r1
	clz r0, r0
	lsr r0, r0, #5
	bx lr
.globl icmp_eq_constant_neg_2047
icmp_eq_constant_neg_2047:
.p2align 4
	movw r1, #63489
	movt r1, #65535
	sub r0, r0, r1
	clz r0, r0
	lsr r0, r0, #5
	bx lr
.globl icmp_eq_constant_neg_2048
icmp_eq_constant_neg_2048:
.p2align 4
	add r0, r0, #2048
	clz r0, r0
	lsr r0, r0, #5
	bx lr
.globl icmp_eqz
icmp_eqz:
.p2align 4
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
.globl icmp_ne_constant
icmp_ne_constant:
.p2align 4
	cmp r0, #42
	mov r0, #0
	movwne r0, #1
	bx lr
.globl icmp_ne_constant_2048
icmp_ne_constant_2048:
.p2align 4
	cmp r0, #2048
	mov r0, #0
	movwne r0, #1
	bx lr
.globl icmp_ne_constant_2049
icmp_ne_constant_2049:
.p2align 4
	movw r1, #2049
	cmp r0, r1
	mov r0, #0
	movwne r0, #1
	bx lr
.globl icmp_ne_constant_neg_2047
icmp_ne_constant_neg_2047:
.p2align 4
	movw r1, #63489
	movt r1, #65535
	cmp r0, r1
	mov r0, #0
	movwne r0, #1
	bx lr
.globl icmp_ne_constant_neg_2048
icmp_ne_constant_neg_2048:
.p2align 4
	cmn r0, #2048
	mov r0, #0
	movwne r0, #1
	bx lr
.globl icmp_ne_neg_1
icmp_ne_neg_1:
.p2align 4
	cmn r0, #1
	mov r0, #0
	movwne r0, #1
	bx lr
.globl icmp_nez
icmp_nez:
.p2align 4
	cmp r0, #0
	mov r0, #0
	movwne r0, #1
	bx lr
.globl icmp_sge
icmp_sge:
.p2align 4
	cmp r0, r1
	mov r0, #0
	movwge r0, #1
	bx lr
.globl icmp_sge_constant_2047
icmp_sge_constant_2047:
.p2align 4
	movw r1, #2046
	cmp r0, r1
	mov r0, #0
	movwgt r0, #1
	bx lr
.globl icmp_sge_constant_2048
icmp_sge_constant_2048:
.p2align 4
	movw r1, #2047
	cmp r0, r1
	mov r0, #0
	movwgt r0, #1
	bx lr
.globl icmp_sge_constant_neg_2047
icmp_sge_constant_neg_2047:
.p2align 4
	cmn r0, #2048
	mov r0, #0
	movwgt r0, #1
	bx lr
.globl icmp_sge_constant_neg_2048
icmp_sge_constant_neg_2048:
.p2align 4
	mvn r0, r0
	lsr r0, r0, #31
	bx lr
.globl icmp_sge_constant_zero
icmp_sge_constant_zero:
.p2align 4
	mvn r0, r0
	lsr r0, r0, #31
	bx lr
.globl icmp_sgt
icmp_sgt:
.p2align 4
	cmp r0, r1
	mov r0, #0
	movwgt r0, #1
	bx lr
.globl icmp_sgt_constant_2046
icmp_sgt_constant_2046:
.p2align 4
	movw r1, #2046
	cmp r0, r1
	mov r0, #0
	movwgt r0, #1
	bx lr
.globl icmp_sgt_constant_2047
icmp_sgt_constant_2047:
.p2align 4
	movw r1, #2047
	cmp r0, r1
	mov r0, #0
	movwgt r0, #1
	bx lr
.globl icmp_sgt_constant_neg_2049
icmp_sgt_constant_neg_2049:
.p2align 4
	mvn r1, #2048
	cmp r0, r1
	mov r0, #0
	movwgt r0, #1
	bx lr
.globl icmp_sgt_constant_neg_2050
icmp_sgt_constant_neg_2050:
.p2align 4
	movw r1, #63486
	movt r1, #65535
	cmp r0, r1
	mov r0, #0
	movwgt r0, #1
	bx lr
.globl icmp_sgt_constant_zero
icmp_sgt_constant_zero:
.p2align 4
	cmp r0, #0
	mov r0, #0
	movwgt r0, #1
	bx lr
.globl icmp_sle
icmp_sle:
.p2align 4
	cmp r0, r1
	mov r0, #0
	movwle r0, #1
	bx lr
.globl icmp_sle_constant_2046
icmp_sle_constant_2046:
.p2align 4
	movw r1, #2047
	cmp r0, r1
	mov r0, #0
	movwlt r0, #1
	bx lr
.globl icmp_sle_constant_2047
icmp_sle_constant_2047:
.p2align 4
	cmp r0, #2048
	mov r0, #0
	movwlt r0, #1
	bx lr
.globl icmp_sle_constant_neg_2049
icmp_sle_constant_neg_2049:
.p2align 4
	cmn r0, #2048
	mov r0, #0
	movwlt r0, #1
	bx lr
.globl icmp_sle_constant_neg_2050
icmp_sle_constant_neg_2050:
.p2align 4
	mvn r1, #2048
	cmp r0, r1
	mov r0, #0
	movwlt r0, #1
	bx lr
.globl icmp_sle_constant_zero
icmp_sle_constant_zero:
.p2align 4
	cmp r0, #1
	mov r0, #0
	movwlt r0, #1
	bx lr
.globl icmp_slt
icmp_slt:
.p2align 4
	cmp r0, r1
	mov r0, #0
	movwlt r0, #1
	bx lr
.globl icmp_slt_constant_2047
icmp_slt_constant_2047:
.p2align 4
	movw r1, #2047
	cmp r0, r1
	mov r0, #0
	movwlt r0, #1
	bx lr
.globl icmp_slt_constant_2048
icmp_slt_constant_2048:
.p2align 4
	cmp r0, #2048
	mov r0, #0
	movwlt r0, #1
	bx lr
.globl icmp_slt_constant_neg_2048
icmp_slt_constant_neg_2048:
.p2align 4
	cmn r0, #2048
	mov r0, #0
	movwlt r0, #1
	bx lr
.globl icmp_slt_constant_neg_2049
icmp_slt_constant_neg_2049:
.p2align 4
	mvn r1, #2048
	cmp r0, r1
	mov r0, #0
	movwlt r0, #1
	bx lr
.globl icmp_slt_constant_zero
icmp_slt_constant_zero:
.p2align 4
	lsr r0, r0, #31
	bx lr
.globl icmp_uge
icmp_uge:
.p2align 4
	cmp r0, r1
	mov r0, #0
	movwhs r0, #1
	bx lr
.globl icmp_uge_constant_2047
icmp_uge_constant_2047:
.p2align 4
	movw r1, #2047
	cmp r0, r1
	mov r0, #0
	movwhs r0, #1
	bx lr
.globl icmp_uge_constant_2048
icmp_uge_constant_2048:
.p2align 4
	cmp r0, #2048
	mov r0, #0
	movwhs r0, #1
	bx lr
.globl icmp_uge_constant_neg_2048
icmp_uge_constant_neg_2048:
.p2align 4
	cmn r0, #2048
	mov r0, #0
	movwhs r0, #1
	bx lr
.globl icmp_uge_constant_neg_2049
icmp_uge_constant_neg_2049:
.p2align 4
	mvn r1, #2048
	cmp r0, r1
	mov r0, #0
	movwhs r0, #1
	bx lr
.globl icmp_uge_constant_zero
icmp_uge_constant_zero:
.p2align 4
	mov r0, #1
	bx lr
.globl icmp_ugt
icmp_ugt:
.p2align 4
	cmp r0, r1
	mov r0, #0
	movwhi r0, #1
	bx lr
.globl icmp_ugt_constant_2046
icmp_ugt_constant_2046:
.p2align 4
	movw r1, #2046
	cmp r0, r1
	mov r0, #0
	movwhi r0, #1
	bx lr
.globl icmp_ugt_constant_2047
icmp_ugt_constant_2047:
.p2align 4
	movw r1, #2047
	cmp r0, r1
	mov r0, #0
	movwhi r0, #1
	bx lr
.globl icmp_ugt_constant_neg_2049
icmp_ugt_constant_neg_2049:
.p2align 4
	mvn r1, #2048
	cmp r0, r1
	mov r0, #0
	movwhi r0, #1
	bx lr
.globl icmp_ugt_constant_neg_2050
icmp_ugt_constant_neg_2050:
.p2align 4
	movw r1, #63486
	movt r1, #65535
	cmp r0, r1
	mov r0, #0
	movwhi r0, #1
	bx lr
.globl icmp_ugt_constant_zero
icmp_ugt_constant_zero:
.p2align 4
	cmp r0, #0
	mov r0, #0
	movwhi r0, #1
	bx lr
.globl icmp_ule
icmp_ule:
.p2align 4
	cmp r0, r1
	mov r0, #0
	movwls r0, #1
	bx lr
.globl icmp_ule_constant_2046
icmp_ule_constant_2046:
.p2align 4
	movw r1, #2046
	cmp r0, r1
	mov r0, #0
	movwls r0, #1
	bx lr
.globl icmp_ule_constant_2047
icmp_ule_constant_2047:
.p2align 4
	movw r1, #2047
	cmp r0, r1
	mov r0, #0
	movwls r0, #1
	bx lr
.globl icmp_ule_constant_neg_2049
icmp_ule_constant_neg_2049:
.p2align 4
	mvn r1, #2048
	cmp r0, r1
	mov r0, #0
	movwls r0, #1
	bx lr
.globl icmp_ule_constant_neg_2050
icmp_ule_constant_neg_2050:
.p2align 4
	movw r1, #63486
	movt r1, #65535
	cmp r0, r1
	mov r0, #0
	movwls r0, #1
	bx lr
.globl icmp_ule_constant_zero
icmp_ule_constant_zero:
.p2align 4
	cmp r0, #0
	mov r0, #0
	movwls r0, #1
	bx lr
.globl icmp_ult
icmp_ult:
.p2align 4
	cmp r0, r1
	mov r0, #0
	movwlo r0, #1
	bx lr
.globl icmp_ult_constant_2047
icmp_ult_constant_2047:
.p2align 4
	movw r1, #2047
	cmp r0, r1
	mov r0, #0
	movwlo r0, #1
	bx lr
.globl icmp_ult_constant_2048
icmp_ult_constant_2048:
.p2align 4
	cmp r0, #2048
	mov r0, #0
	movwlo r0, #1
	bx lr
.globl icmp_ult_constant_neg_2048
icmp_ult_constant_neg_2048:
.p2align 4
	cmn r0, #2048
	mov r0, #0
	movwlo r0, #1
	bx lr
.globl icmp_ult_constant_neg_2049
icmp_ult_constant_neg_2049:
.p2align 4
	mvn r1, #2048
	cmp r0, r1
	mov r0, #0
	movwlo r0, #1
	bx lr
.globl icmp_ult_constant_zero
icmp_ult_constant_zero:
.p2align 4
	mov r0, #0
	bx lr
