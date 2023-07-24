.data
.text
.globl seqz
seqz:
.p2align 2
	sltiu $v0, $a0, 1
	jr $ra
	nop
.globl seqi
seqi:
.p2align 2
	xori $t0, $a0, 1
	sltiu $v0, $t0, 1
	jr $ra
	nop
.globl seq
seq:
.p2align 2
	xor $t0, $a0, $a1
	sltiu $v0, $t0, 1
	jr $ra
	nop
.globl snei
snei:
.p2align 2
	xori $t0, $a0, 1
	sltu $v0, $zero, $t0
	jr $ra
	nop
.globl sne
sne:
.p2align 2
	xor $t0, $a0, $a1
	sltu $v0, $zero, $t0
	jr $ra
	nop
.globl snez
snez:
.p2align 2
	sltu $v0, $zero, $a0
	jr $ra
	nop
.globl slti
slti:
.p2align 2
	slti $v0, $a0, 1
	jr $ra
	nop
.globl slt
slt:
.p2align 2
	slt $v0, $a0, $a1
	jr $ra
	nop
.globl sgti
sgti:
.p2align 2
	li $t0, 1
	slt $v0, $t0, $a0
	jr $ra
	nop
.globl sgt
sgt:
.p2align 2
	slt $v0, $a1, $a0
	jr $ra
	nop
.globl slei
slei:
.p2align 2
	slti $v0, $a0, 2
	jr $ra
	nop
.globl sle
sle:
.p2align 2
	slt $t0, $a1, $a0
	xori $v0, $t0, 1
	jr $ra
	nop
.globl sgei
sgei:
.p2align 2
	slt $v0, $zero, $a0
	jr $ra
	nop
.globl sge
sge:
.p2align 2
	slt $t0, $a0, $a1
	xori $v0, $t0, 1
	jr $ra
	nop
.globl seq_all_one
seq_all_one:
.p2align 2
	li $t0, -1
	xor $t0, $a0, $t0
	sltiu $v0, $t0, 1
	jr $ra
	nop
.globl sne_all_one
sne_all_one:
.p2align 2
	li $t0, -1
	xor $t0, $a0, $t0
	sltu $v0, $zero, $t0
	jr $ra
	nop
.globl slt_all_one
slt_all_one:
.p2align 2
	slti $v0, $a0, -1
	jr $ra
	nop
.globl sgt_all_one
sgt_all_one:
.p2align 2
	li $t0, -1
	slt $v0, $t0, $a0
	jr $ra
	nop
.globl sle_all_one
sle_all_one:
.p2align 2
	slti $v0, $a0, 0
	jr $ra
	nop
.globl sge_all_one
sge_all_one:
.p2align 2
	li $t0, -2
	slt $v0, $t0, $a0
	jr $ra
	nop
.globl feq
feq:
.p2align 2
	c.eq.s $f12, $f14
	li $v0, 1
	movf $v0, $zero, $fcc0
	jr $ra
	nop
.globl fne
fne:
.p2align 2
	c.eq.s $f12, $f14
	li $v0, 1
	movt $v0, $zero, $fcc0
	jr $ra
	nop
.globl flt
flt:
.p2align 2
	c.olt.s $f12, $f14
	li $v0, 1
	movf $v0, $zero, $fcc0
	jr $ra
	nop
.globl fgt
fgt:
.p2align 2
	c.ule.s $f12, $f14
	li $v0, 1
	movt $v0, $zero, $fcc0
	jr $ra
	nop
.globl fle
fle:
.p2align 2
	c.ole.s $f12, $f14
	li $v0, 1
	movf $v0, $zero, $fcc0
	jr $ra
	nop
.globl fge
fge:
.p2align 2
	c.ult.s $f12, $f14
	li $v0, 1
	movt $v0, $zero, $fcc0
	jr $ra
	nop
.globl fltz
fltz:
.p2align 2
	mtc1 $zero, $f4
	c.olt.s $f12, $f4
	li $v0, 1
	movf $v0, $zero, $fcc0
	jr $ra
	nop
