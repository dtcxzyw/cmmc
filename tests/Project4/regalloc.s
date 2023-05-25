.data
_prompt: .asciiz "Enter an integer:"
_ret: .asciiz "\n"
.text
_entry:
    jal main
    nop
    move $a0, $v0
    li $v0, 17
    syscall
read:
    li $v0, 4
    la $a0, _prompt
    syscall
    li $v0, 5
    syscall
    jr $ra
    nop
write:
    li $v0, 1
    syscall
    li $v0, 4
    la $a0, _ret
    syscall
    move $v0, $0
    jr $ra
    nop
test:
	addiu $sp, $sp, -192
	sw $ra, 72($sp)
	sw $s0, 156($sp)
	sw $s1, 152($sp)
	sw $s2, 148($sp)
	sw $s3, 144($sp)
	sw $s4, 140($sp)
	sw $s5, 80($sp)
	sw $s6, 84($sp)
	sw $s7, 88($sp)
	move $t0, $a0
	move $t1, $a1
	move $t2, $a2
	move $t3, $a3
	lw $t4, 208($sp)
	lw $t5, 212($sp)
	lw $t6, 216($sp)
	lw $t7, 220($sp)
	lw $t8, 224($sp)
	lw $t9, 228($sp)
	lw $s0, 232($sp)
	lw $s1, 236($sp)
	lw $s2, 240($sp)
	lw $s3, 244($sp)
	lw $s4, 248($sp)
	lw $s5, 252($sp)
	lw $s6, 256($sp)
	sw $s6, 96($sp)
	sw $s5, 100($sp)
	sw $s4, 104($sp)
	sw $s3, 108($sp)
	sw $t0, 112($sp)
	sw $t1, 116($sp)
	sw $t2, 120($sp)
	sw $t3, 124($sp)
	sw $t4, 128($sp)
	sw $t5, 132($sp)
	sw $t6, 136($sp)
	sw $t7, 188($sp)
	sw $t8, 184($sp)
	sw $t9, 180($sp)
	sw $s0, 176($sp)
	sw $s1, 172($sp)
	sw $s2, 168($sp)
	bne $a0, $zero, label4
	nop
	lw $t0, 112($sp)
	move $t1, $t0
	sw $t1, 92($sp)
label2:
	lw $t0, 92($sp)
	move $v0, $t0
	lw $s7, 88($sp)
	lw $s6, 84($sp)
	lw $s5, 80($sp)
	lw $s4, 140($sp)
	lw $s3, 144($sp)
	lw $s2, 148($sp)
	lw $s1, 152($sp)
	lw $s0, 156($sp)
	lw $ra, 72($sp)
	addiu $sp, $sp, 192
	jr $ra
	nop
label4:
	lw $t0, 112($sp)
	addiu $t1, $t0, -1
	move $a0, $t1
	lw $t2, 124($sp)
	move $a1, $t2
	lw $t3, 128($sp)
	move $a2, $t3
	lw $t4, 136($sp)
	move $a3, $t4
	lw $t5, 184($sp)
	sw $t5, 16($sp)
	lw $t6, 168($sp)
	sw $t6, 20($sp)
	lw $t7, 104($sp)
	sw $t7, 24($sp)
	lw $t8, 96($sp)
	sw $t8, 28($sp)
	lw $t9, 100($sp)
	sw $t9, 32($sp)
	lw $s0, 108($sp)
	sw $s0, 36($sp)
	lw $s1, 172($sp)
	sw $s1, 40($sp)
	lw $s2, 176($sp)
	sw $s2, 44($sp)
	lw $s3, 180($sp)
	sw $s3, 48($sp)
	lw $s4, 188($sp)
	sw $s4, 52($sp)
	lw $s5, 132($sp)
	sw $s5, 56($sp)
	lw $s6, 120($sp)
	sw $s6, 60($sp)
	lw $s7, 116($sp)
	sw $s7, 64($sp)
	sw $t1, 164($sp)
	jal test
	nop
	addiu $t0, $v0, 1
	move $t1, $t0
	sw $t1, 92($sp)
	b label2
	nop
.globl main
main:
	addiu $sp, $sp, -160
	sw $ra, 72($sp)
	sw $s0, 124($sp)
	sw $s1, 88($sp)
	sw $s2, 116($sp)
	sw $s3, 92($sp)
	sw $s4, 108($sp)
	jal read
	nop
	move $t0, $v0
	jal read
	nop
	move $t1, $v0
	jal read
	nop
	move $t2, $v0
	jal read
	nop
	move $t3, $v0
	jal read
	nop
	move $t4, $v0
	jal read
	nop
	move $t5, $v0
	jal read
	nop
	move $t6, $v0
	jal read
	nop
	move $t7, $v0
	jal read
	nop
	move $t8, $v0
	jal read
	nop
	move $t9, $v0
	jal read
	nop
	move $s0, $v0
	jal read
	nop
	move $s1, $v0
	jal read
	nop
	move $s2, $v0
	jal read
	nop
	move $s3, $v0
	jal read
	nop
	move $s4, $v0
	jal read
	nop
	li $a0, 10
	move $a1, $t0
	move $a2, $t1
	move $a3, $t2
	sw $t3, 16($sp)
	sw $t4, 20($sp)
	sw $t5, 24($sp)
	sw $t6, 28($sp)
	sw $t7, 32($sp)
	sw $t8, 36($sp)
	sw $t9, 40($sp)
	sw $s0, 44($sp)
	sw $s1, 48($sp)
	sw $s2, 52($sp)
	sw $s3, 56($sp)
	sw $s4, 60($sp)
	sw $v0, 64($sp)
	sw $t0, 96($sp)
	sw $t1, 100($sp)
	sw $t2, 104($sp)
	sw $t3, 156($sp)
	sw $t8, 144($sp)
	sw $t4, 120($sp)
	sw $t9, 140($sp)
	sw $t5, 152($sp)
	sw $t6, 112($sp)
	sw $t7, 148($sp)
	jal test
	nop
	move $a0, $v0
	jal write
	nop
	move $v0, $zero
	lw $ra, 72($sp)
	addiu $sp, $sp, 160
	jr $ra
	nop
