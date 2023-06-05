.data
.text
.globl seqz
seqz:
	sltiu $t0, $a0, 1
	move $v0, $t0
	jr $ra
	nop
.globl seqi
seqi:
	xori $t0, $a0, 1
	sltiu $t1, $t0, 1
	move $v0, $t1
	jr $ra
	nop
.globl seq
seq:
	xor $t0, $a0, $a1
	sltiu $t1, $t0, 1
	move $v0, $t1
	jr $ra
	nop
.globl snei
snei:
	xori $t0, $a0, 1
	sltiu $t1, $t0, 1
	xori $t2, $t1, 1
	move $v0, $t2
	jr $ra
	nop
.globl sne
sne:
	xor $t0, $a0, $a1
	sltiu $t1, $t0, 1
	xori $t2, $t1, 1
	move $v0, $t2
	jr $ra
	nop
.globl snez
snez:
	sltiu $t0, $a0, 1
	xori $t1, $t0, 1
	move $v0, $t1
	jr $ra
	nop
.globl slti
slti:
	slti $t0, $a0, 1
	move $v0, $t0
	jr $ra
	nop
.globl slt
slt:
	slt $t0, $a0, $a1
	move $v0, $t0
	jr $ra
	nop
.globl sgti
sgti:
	li $t0, 1
	slt $t1, $t0, $a0
	move $v0, $t1
	jr $ra
	nop
.globl sgt
sgt:
	slt $t0, $a1, $a0
	move $v0, $t0
	jr $ra
	nop
.globl slei
slei:
	slti $t0, $a0, 2
	move $v0, $t0
	jr $ra
	nop
.globl sle
sle:
	slt $t0, $a1, $a0
	xori $t1, $t0, 1
	move $v0, $t1
	jr $ra
	nop
.globl sgei
sgei:
	slt $t0, $zero, $a0
	move $v0, $t0
	jr $ra
	nop
.globl sge
sge:
	slt $t0, $a0, $a1
	xori $t1, $t0, 1
	move $v0, $t1
	jr $ra
	nop
.globl feq
feq:
	c.eq.s $f12, $f14
	li $t0, 1
	movf $t0, $zero, $fcc0
	move $v0, $t0
	jr $ra
	nop
.globl fne
fne:
	c.eq.s $f12, $f14
	li $t0, 1
	movt $t0, $zero, $fcc0
	move $v0, $t0
	jr $ra
	nop
.globl flt
flt:
	c.olt.s $f12, $f14
	li $t0, 1
	movf $t0, $zero, $fcc0
	move $v0, $t0
	jr $ra
	nop
.globl fgt
fgt:
	c.ule.s $f12, $f14
	li $t0, 1
	movt $t0, $zero, $fcc0
	move $v0, $t0
	jr $ra
	nop
.globl fle
fle:
	c.ole.s $f12, $f14
	li $t0, 1
	movf $t0, $zero, $fcc0
	move $v0, $t0
	jr $ra
	nop
.globl fge
fge:
	c.ult.s $f12, $f14
	li $t0, 1
	movt $t0, $zero, $fcc0
	move $v0, $t0
	jr $ra
	nop
