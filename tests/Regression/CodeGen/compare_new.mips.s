.data
.text
.globl icmp_eq
icmp_eq:
.p2align 2
	xor $t0, $a0, $a1
	sltiu $v0, $t0, 1
	jr $ra
	nop
.globl icmp_ne
icmp_ne:
.p2align 2
	xor $t0, $a0, $a1
	sltu $v0, $zero, $t0
	jr $ra
	nop
.globl icmp_slt
icmp_slt:
.p2align 2
	slt $v0, $a0, $a1
	jr $ra
	nop
.globl icmp_sle
icmp_sle:
.p2align 2
	slt $t0, $a1, $a0
	xori $v0, $t0, 1
	jr $ra
	nop
.globl icmp_sgt
icmp_sgt:
.p2align 2
	slt $v0, $a1, $a0
	jr $ra
	nop
.globl icmp_sge
icmp_sge:
.p2align 2
	slt $t0, $a0, $a1
	xori $v0, $t0, 1
	jr $ra
	nop
.globl icmp_ult
icmp_ult:
.p2align 2
	sltu $v0, $a0, $a1
	jr $ra
	nop
.globl icmp_ule
icmp_ule:
.p2align 2
	sltu $t0, $a1, $a0
	xori $v0, $t0, 1
	jr $ra
	nop
.globl icmp_ugt
icmp_ugt:
.p2align 2
	sltu $v0, $a1, $a0
	jr $ra
	nop
.globl icmp_uge
icmp_uge:
.p2align 2
	sltu $t0, $a0, $a1
	xori $v0, $t0, 1
	jr $ra
	nop
.globl fcmp_oeq
fcmp_oeq:
.p2align 2
	c.eq.s $f12, $f14
	li $v0, 1
	movf $v0, $zero, $fcc0
	jr $ra
	nop
.globl fcmp_olt
fcmp_olt:
.p2align 2
	c.olt.s $f12, $f14
	li $v0, 1
	movf $v0, $zero, $fcc0
	jr $ra
	nop
.globl fcmp_ole
fcmp_ole:
.p2align 2
	c.ole.s $f12, $f14
	li $v0, 1
	movf $v0, $zero, $fcc0
	jr $ra
	nop
.globl fcmp_ogt
fcmp_ogt:
.p2align 2
	c.ule.s $f12, $f14
	li $v0, 1
	movt $v0, $zero, $fcc0
	jr $ra
	nop
.globl fcmp_oge
fcmp_oge:
.p2align 2
	c.ult.s $f12, $f14
	li $v0, 1
	movt $v0, $zero, $fcc0
	jr $ra
	nop
.globl fcmp_une
fcmp_une:
.p2align 2
	c.eq.s $f12, $f14
	li $v0, 1
	movt $v0, $zero, $fcc0
	jr $ra
	nop
.globl fcmp_ult
fcmp_ult:
.p2align 2
	c.ult.s $f12, $f14
	li $v0, 1
	movt $v0, $zero, $fcc0
	jr $ra
	nop
.globl fcmp_ule
fcmp_ule:
.p2align 2
	c.ule.s $f12, $f14
	li $v0, 1
	movt $v0, $zero, $fcc0
	jr $ra
	nop
.globl fcmp_ugt
fcmp_ugt:
.p2align 2
	c.olt.s $f12, $f14
	li $v0, 1
	movf $v0, $zero, $fcc0
	jr $ra
	nop
.globl fcmp_uge
fcmp_uge:
.p2align 2
	c.ole.s $f12, $f14
	li $v0, 1
	movf $v0, $zero, $fcc0
	jr $ra
	nop
