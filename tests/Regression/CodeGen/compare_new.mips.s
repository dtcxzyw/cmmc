.data
.text
.globl icmp_eq
icmp_eq:
	xor $t0, $a0, $a1
	sltiu $v0, $t0, 1
	jr $ra
	nop
.globl icmp_ne
icmp_ne:
	xor $t0, $a0, $a1
	sltu $v0, $zero, $t0
	jr $ra
	nop
.globl icmp_slt
icmp_slt:
	slt $v0, $a0, $a1
	jr $ra
	nop
.globl icmp_sle
icmp_sle:
	slt $t0, $a1, $a0
	xori $v0, $t0, 1
	jr $ra
	nop
.globl icmp_sgt
icmp_sgt:
	slt $v0, $a1, $a0
	jr $ra
	nop
.globl icmp_sge
icmp_sge:
	slt $t0, $a0, $a1
	xori $v0, $t0, 1
	jr $ra
	nop
.globl icmp_ult
icmp_ult:
	sltu $v0, $a0, $a1
	jr $ra
	nop
.globl icmp_ule
icmp_ule:
	sltu $t0, $a1, $a0
	xori $v0, $t0, 1
	jr $ra
	nop
.globl icmp_ugt
icmp_ugt:
	sltu $v0, $a1, $a0
	jr $ra
	nop
.globl icmp_uge
icmp_uge:
	sltu $t0, $a0, $a1
	xori $v0, $t0, 1
	jr $ra
	nop
.globl fcmp_oeq
fcmp_oeq:
	c.eq.s $f12, $f14
	li $v0, 1
	movf $v0, $zero, $fcc0
	jr $ra
	nop
.globl fcmp_olt
fcmp_olt:
	c.olt.s $f12, $f14
	li $v0, 1
	movf $v0, $zero, $fcc0
	jr $ra
	nop
.globl fcmp_ole
fcmp_ole:
	c.ole.s $f12, $f14
	li $v0, 1
	movf $v0, $zero, $fcc0
	jr $ra
	nop
.globl fcmp_ogt
fcmp_ogt:
	c.ule.s $f12, $f14
	li $v0, 1
	movt $v0, $zero, $fcc0
	jr $ra
	nop
.globl fcmp_oge
fcmp_oge:
	c.ult.s $f12, $f14
	li $v0, 1
	movt $v0, $zero, $fcc0
	jr $ra
	nop
.globl fcmp_une
fcmp_une:
	c.eq.s $f12, $f14
	li $v0, 1
	movt $v0, $zero, $fcc0
	jr $ra
	nop
.globl fcmp_ult
fcmp_ult:
	c.ult.s $f12, $f14
	li $v0, 1
	movt $v0, $zero, $fcc0
	jr $ra
	nop
.globl fcmp_ule
fcmp_ule:
	c.ule.s $f12, $f14
	li $v0, 1
	movt $v0, $zero, $fcc0
	jr $ra
	nop
.globl fcmp_ugt
fcmp_ugt:
	c.olt.s $f12, $f14
	li $v0, 1
	movf $v0, $zero, $fcc0
	jr $ra
	nop
.globl fcmp_uge
fcmp_uge:
	c.ole.s $f12, $f14
	li $v0, 1
	movf $v0, $zero, $fcc0
	jr $ra
	nop