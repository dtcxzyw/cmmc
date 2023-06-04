.data
.text
.globl add_imm
add_imm:
	addiu $sp, $sp, -8
	addiu $t0, $a0, 1
	move $v0, $t0
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl add_large_imm
add_large_imm:
	addiu $sp, $sp, -8
	li $t0, 262144
	addu $t1, $a0, $t0
	move $v0, $t1
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl add_reg
add_reg:
	addiu $sp, $sp, -8
	addu $t0, $a0, $a1
	move $v0, $t0
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl and_imm
and_imm:
	addiu $sp, $sp, -8
	andi $t0, $a0, 1
	move $v0, $t0
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl and_large_imm
and_large_imm:
	addiu $sp, $sp, -8
	li $t0, 262144
	and $t1, $a0, $t0
	move $v0, $t1
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl and_reg
and_reg:
	addiu $sp, $sp, -8
	and $t0, $a0, $a1
	move $v0, $t0
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl or_imm
or_imm:
	addiu $sp, $sp, -8
	ori $t0, $a0, 1
	move $v0, $t0
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl or_large_imm
or_large_imm:
	addiu $sp, $sp, -8
	li $t0, 262144
	or $t1, $a0, $t0
	move $v0, $t1
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl or_reg
or_reg:
	addiu $sp, $sp, -8
	or $t0, $a0, $a1
	move $v0, $t0
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl xor_imm
xor_imm:
	addiu $sp, $sp, -8
	xori $t0, $a0, 1
	move $v0, $t0
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl xor_large_imm
xor_large_imm:
	addiu $sp, $sp, -8
	li $t0, 262144
	xor $t1, $a0, $t0
	move $v0, $t1
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl xor_reg
xor_reg:
	addiu $sp, $sp, -8
	xor $t0, $a0, $a1
	move $v0, $t0
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl sub_imm
sub_imm:
	addiu $sp, $sp, -8
	addiu $t0, $a0, -1
	move $v0, $t0
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl sub_reg
sub_reg:
	addiu $sp, $sp, -8
	subu $t0, $a0, $a1
	move $v0, $t0
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl mul_imm
mul_imm:
	addiu $sp, $sp, -8
	li $t0, 3
	mult $a0, $t0
	mflo $t1
	move $v0, $t1
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl mul_reg
mul_reg:
	addiu $sp, $sp, -8
	mult $a0, $a1
	mflo $t0
	move $v0, $t0
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl div_imm
div_imm:
	addiu $sp, $sp, -8
	li $t0, 3
	div $zero, $a0, $t0
	mflo $t1
	move $v0, $t1
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl div_reg
div_reg:
	addiu $sp, $sp, -8
	div $zero, $a0, $a1
	mflo $t0
	move $v0, $t0
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl mod_imm
mod_imm:
	addiu $sp, $sp, -8
	li $t0, 3
	div $zero, $a0, $t0
	mfhi $t1
	move $v0, $t1
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl mod_reg
mod_reg:
	addiu $sp, $sp, -8
	div $zero, $a0, $a1
	mfhi $t0
	move $v0, $t0
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl shl_imm
shl_imm:
	addiu $sp, $sp, -8
	sll $t0, $a0, 3
	move $v0, $t0
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl shl_reg
shl_reg:
	addiu $sp, $sp, -8
	sllv $t0, $a0, $a1
	move $v0, $t0
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl ashr_imm
ashr_imm:
	addiu $sp, $sp, -8
	sra $t0, $a0, 3
	move $v0, $t0
	addiu $sp, $sp, 8
	jr $ra
	nop
.globl ashr_reg
ashr_reg:
	addiu $sp, $sp, -8
	srav $t0, $a0, $a1
	move $v0, $t0
	addiu $sp, $sp, 8
	jr $ra
	nop
