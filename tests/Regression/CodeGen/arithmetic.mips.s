.data
.text
.globl add_imm
add_imm:
	addiu $t0, $a0, 1
	move $v0, $t0
	jr $ra
	nop
.globl add_large_imm
add_large_imm:
	li $t0, 262144
	addu $t1, $a0, $t0
	move $v0, $t1
	jr $ra
	nop
.globl add_reg
add_reg:
	addu $t0, $a0, $a1
	move $v0, $t0
	jr $ra
	nop
.globl and_imm
and_imm:
	andi $t0, $a0, 1
	move $v0, $t0
	jr $ra
	nop
.globl and_large_imm
and_large_imm:
	li $t0, 262144
	and $t1, $a0, $t0
	move $v0, $t1
	jr $ra
	nop
.globl and_reg
and_reg:
	and $t0, $a0, $a1
	move $v0, $t0
	jr $ra
	nop
.globl or_imm
or_imm:
	ori $t0, $a0, 1
	move $v0, $t0
	jr $ra
	nop
.globl or_large_imm
or_large_imm:
	li $t0, 262144
	or $t1, $a0, $t0
	move $v0, $t1
	jr $ra
	nop
.globl or_reg
or_reg:
	or $t0, $a0, $a1
	move $v0, $t0
	jr $ra
	nop
.globl xor_imm
xor_imm:
	xori $t0, $a0, 1
	move $v0, $t0
	jr $ra
	nop
.globl xor_large_imm
xor_large_imm:
	li $t0, 262144
	xor $t1, $a0, $t0
	move $v0, $t1
	jr $ra
	nop
.globl xor_reg
xor_reg:
	xor $t0, $a0, $a1
	move $v0, $t0
	jr $ra
	nop
.globl sub_imm
sub_imm:
	addiu $t0, $a0, -1
	move $v0, $t0
	jr $ra
	nop
.globl sub_reg
sub_reg:
	subu $t0, $a0, $a1
	move $v0, $t0
	jr $ra
	nop
.globl mul_imm
mul_imm:
	li $t0, 3
	mult $a0, $t0
	mflo $t1
	move $v0, $t1
	jr $ra
	nop
.globl mul_reg
mul_reg:
	mult $a0, $a1
	mflo $t0
	move $v0, $t0
	jr $ra
	nop
.globl div_imm
div_imm:
	li $t0, 3
	div $zero, $a0, $t0
	mflo $t1
	move $v0, $t1
	jr $ra
	nop
.globl div_reg
div_reg:
	div $zero, $a0, $a1
	mflo $t0
	move $v0, $t0
	jr $ra
	nop
.globl mod_imm
mod_imm:
	li $t0, 3
	div $zero, $a0, $t0
	mfhi $t1
	move $v0, $t1
	jr $ra
	nop
.globl mod_reg
mod_reg:
	div $zero, $a0, $a1
	mfhi $t0
	move $v0, $t0
	jr $ra
	nop
.globl shl_imm
shl_imm:
	sll $t0, $a0, 3
	move $v0, $t0
	jr $ra
	nop
.globl shl_reg
shl_reg:
	sllv $t0, $a0, $a1
	move $v0, $t0
	jr $ra
	nop
.globl ashr_imm
ashr_imm:
	sra $t0, $a0, 3
	move $v0, $t0
	jr $ra
	nop
.globl ashr_reg
ashr_reg:
	srav $t0, $a0, $a1
	move $v0, $t0
	jr $ra
	nop
