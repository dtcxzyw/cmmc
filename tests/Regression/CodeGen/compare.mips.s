.data
.section .rodata
.bss
.text
.globl seqz
seqz:
	sltiu $v0, $a0, 1
	jr $ra
	nop
.globl seqi
seqi:
	xori $t0, $a0, 1
	sltiu $v0, $t0, 1
	jr $ra
	nop
.globl seq
seq:
	xor $t0, $a0, $a1
	sltiu $v0, $t0, 1
	jr $ra
	nop
.globl snei
snei:
	xori $t0, $a0, 1
	sltu $v0, $zero, $t0
	jr $ra
	nop
.globl sne
sne:
	xor $t0, $a0, $a1
	sltu $v0, $zero, $t0
	jr $ra
	nop
.globl snez
snez:
	sltu $v0, $zero, $a0
	jr $ra
	nop
.globl slti
slti:
	slti $v0, $a0, 1
	jr $ra
	nop
.globl slt
slt:
	slt $v0, $a0, $a1
	jr $ra
	nop
.globl sgti
sgti:
	li $t0, 1
	slt $v0, $t0, $a0
	jr $ra
	nop
.globl sgt
sgt:
	slt $v0, $a1, $a0
	jr $ra
	nop
.globl slei
slei:
	slti $v0, $a0, 2
	jr $ra
	nop
.globl sle
sle:
	slt $t0, $a1, $a0
	xori $v0, $t0, 1
	jr $ra
	nop
.globl sgei
sgei:
	slt $v0, $zero, $a0
	jr $ra
	nop
.globl sge
sge:
	slt $t0, $a0, $a1
	xori $v0, $t0, 1
	jr $ra
	nop
.globl seq_all_one
seq_all_one:
	li $t0, -1
	xor $t0, $a0, $t0
	sltiu $v0, $t0, 1
	jr $ra
	nop
.globl sne_all_one
sne_all_one:
	li $t0, -1
	xor $t0, $a0, $t0
	sltu $v0, $zero, $t0
	jr $ra
	nop
.globl slt_all_one
slt_all_one:
	slti $v0, $a0, -1
	jr $ra
	nop
.globl sgt_all_one
sgt_all_one:
	li $t0, -1
	slt $v0, $t0, $a0
	jr $ra
	nop
.globl sle_all_one
sle_all_one:
	slti $v0, $a0, 0
	jr $ra
	nop
.globl sge_all_one
sge_all_one:
	li $t0, -2
	slt $v0, $t0, $a0
	jr $ra
	nop
.globl feq
feq:
	c.eq.s $f12, $f14
	li $v0, 1
	movf $v0, $zero, $fcc0
	jr $ra
	nop
.globl fne
fne:
	c.eq.s $f12, $f14
	li $v0, 1
	movt $v0, $zero, $fcc0
	jr $ra
	nop
.globl flt
flt:
	c.olt.s $f12, $f14
	li $v0, 1
	movf $v0, $zero, $fcc0
	jr $ra
	nop
.globl fgt
fgt:
	c.ule.s $f12, $f14
	li $v0, 1
	movt $v0, $zero, $fcc0
	jr $ra
	nop
.globl fle
fle:
	c.ole.s $f12, $f14
	li $v0, 1
	movf $v0, $zero, $fcc0
	jr $ra
	nop
.globl fge
fge:
	c.ult.s $f12, $f14
	li $v0, 1
	movt $v0, $zero, $fcc0
	jr $ra
	nop
.globl fltz
fltz:
	mtc1 $zero, $f4
	c.olt.s $f12, $f4
	li $v0, 1
	movf $v0, $zero, $fcc0
	jr $ra
	nop
