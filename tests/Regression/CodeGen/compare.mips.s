.data
.text
.p2align 2
.globl seqz
seqz:
	sltiu $v0, $a0, 1
	jr $ra
	nop
.p2align 2
.globl seqi
seqi:
	xori $t0, $a0, 1
	sltiu $v0, $t0, 1
	jr $ra
	nop
.p2align 2
.globl seq
seq:
	xor $t0, $a0, $a1
	sltiu $v0, $t0, 1
	jr $ra
	nop
.p2align 2
.globl snei
snei:
	xori $t0, $a0, 1
	sltu $v0, $zero, $t0
	jr $ra
	nop
.p2align 2
.globl sne
sne:
	xor $t0, $a0, $a1
	sltu $v0, $zero, $t0
	jr $ra
	nop
.p2align 2
.globl snez
snez:
	sltu $v0, $zero, $a0
	jr $ra
	nop
.p2align 2
.globl slti
slti:
	slti $v0, $a0, 1
	jr $ra
	nop
.p2align 2
.globl slt
slt:
	slt $v0, $a0, $a1
	jr $ra
	nop
.p2align 2
.globl sgti
sgti:
	li $t0, 1
	slt $v0, $t0, $a0
	jr $ra
	nop
.p2align 2
.globl sgt
sgt:
	slt $v0, $a1, $a0
	jr $ra
	nop
.p2align 2
.globl slei
slei:
	slti $v0, $a0, 2
	jr $ra
	nop
.p2align 2
.globl sle
sle:
	slt $t0, $a1, $a0
	xori $v0, $t0, 1
	jr $ra
	nop
.p2align 2
.globl sgei
sgei:
	slt $v0, $zero, $a0
	jr $ra
	nop
.p2align 2
.globl sge
sge:
	slt $t0, $a0, $a1
	xori $v0, $t0, 1
	jr $ra
	nop
.p2align 2
.globl seq_all_one
seq_all_one:
	li $t0, -1
	xor $t0, $a0, $t0
	sltiu $v0, $t0, 1
	jr $ra
	nop
.p2align 2
.globl sne_all_one
sne_all_one:
	li $t0, -1
	xor $t0, $a0, $t0
	sltu $v0, $zero, $t0
	jr $ra
	nop
.p2align 2
.globl slt_all_one
slt_all_one:
	slti $v0, $a0, -1
	jr $ra
	nop
.p2align 2
.globl sgt_all_one
sgt_all_one:
	li $t0, -1
	slt $v0, $t0, $a0
	jr $ra
	nop
.p2align 2
.globl sle_all_one
sle_all_one:
	srl $v0, $a0, 31
	jr $ra
	nop
.p2align 2
.globl sge_all_one
sge_all_one:
	li $t0, -2
	slt $v0, $t0, $a0
	jr $ra
	nop
.p2align 2
.globl feq
feq:
	c.eq.s $f12, $f14
	li $v0, 1
	movf $v0, $zero, $fcc0
	jr $ra
	nop
.p2align 2
.globl fne
fne:
	c.eq.s $f12, $f14
	li $v0, 1
	movt $v0, $zero, $fcc0
	jr $ra
	nop
.p2align 2
.globl flt
flt:
	c.olt.s $f12, $f14
	li $v0, 1
	movf $v0, $zero, $fcc0
	jr $ra
	nop
.p2align 2
.globl fgt
fgt:
	c.ule.s $f12, $f14
	li $v0, 1
	movt $v0, $zero, $fcc0
	jr $ra
	nop
.p2align 2
.globl fle
fle:
	c.ole.s $f12, $f14
	li $v0, 1
	movf $v0, $zero, $fcc0
	jr $ra
	nop
.p2align 2
.globl fge
fge:
	c.ult.s $f12, $f14
	li $v0, 1
	movt $v0, $zero, $fcc0
	jr $ra
	nop
.p2align 2
.globl fltz
fltz:
	mtc1 $zero, $f4
	c.olt.s $f12, $f4
	li $v0, 1
	movf $v0, $zero, $fcc0
	jr $ra
	nop
.p2align 2
.globl sgez
sgez:
	li $t0, -1
	slt $v0, $t0, $a0
	jr $ra
	nop
