.data
_prompt: .asciiz "Enter an integer:"
_ret: .asciiz "\n"
.text
_entry:
    jal main
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
write:
    li $v0, 1
    syscall
    li $v0, 4
    la $a0, _ret
    syscall
    move $v0, $0
    jr $ra

test:
    addiu $sp, $sp, -184
    sw $ra, 72($sp)
    sw $s0, 148($sp)
    sw $s1, 124($sp)
    sw $s2, 120($sp)
    sw $s3, 112($sp)
    sw $s4, 104($sp)
    sw $s5, 96($sp)
    sw $s6, 88($sp)
    sw $s7, 84($sp)
    move $t0, $a0
    move $t1, $a1
    move $t2, $a2
    move $t3, $a3
    lw $t4, 16($sp)
    lw $t5, 20($sp)
    lw $t6, 24($sp)
    lw $t7, 28($sp)
    lw $t8, 32($sp)
    lw $t9, 36($sp)
    lw $s0, 40($sp)
    lw $s1, 44($sp)
    lw $s2, 48($sp)
    lw $s3, 52($sp)
    lw $s4, 56($sp)
    lw $s5, 60($sp)
    lw $s6, 64($sp)
    sw $s6, 152($sp)
    sw $s5, 160($sp)
    sw $s4, 168($sp)
    sw $s3, 176($sp)
    sw $a0, 132($sp)
    sw $a1, 136($sp)
    sw $a2, 140($sp)
    sw $a3, 144($sp)
    sw $t4, 128($sp)
    sw $t5, 116($sp)
    sw $t6, 108($sp)
    sw $t7, 100($sp)
    sw $t8, 92($sp)
    sw $t9, 156($sp)
    sw $s0, 164($sp)
    sw $s1, 172($sp)
    sw $s2, 80($sp)
    bnez $t0, .BB1
    move $v0, $a0
    lw $s6, 88($sp)
    lw $s5, 96($sp)
    lw $s4, 104($sp)
    lw $s3, 112($sp)
    lw $s2, 120($sp)
    lw $s1, 124($sp)
    lw $s0, 148($sp)
    addiu $sp, $sp, 184
    jr $ra
.BB1:
    lw $t0, 132($sp)
    addiu $t1, $t0, -1
    move $a0, $t1
    lw $t2, 144($sp)
    move $a1, $t2
    lw $t3, 128($sp)
    move $a2, $t3
    lw $t4, 108($sp)
    move $a3, $t4
    lw $t5, 92($sp)
    sw $t5, 16($sp)
    lw $t6, 80($sp)
    sw $t6, 20($sp)
    lw $t7, 168($sp)
    sw $t7, 24($sp)
    lw $t8, 152($sp)
    sw $t8, 28($sp)
    lw $t9, 160($sp)
    sw $t9, 32($sp)
    lw $s0, 176($sp)
    sw $s0, 36($sp)
    lw $s1, 172($sp)
    sw $s1, 40($sp)
    lw $s2, 164($sp)
    sw $s2, 44($sp)
    lw $s3, 156($sp)
    sw $s3, 48($sp)
    lw $s4, 100($sp)
    sw $s4, 52($sp)
    lw $s5, 116($sp)
    sw $s5, 56($sp)
    lw $s6, 140($sp)
    sw $s6, 60($sp)
    lw $s7, 136($sp)
    sw $s7, 64($sp)
    jal test
    move $t0, $v0
    addiu $t1, $t0, 1
    move $v0, $t1
    lw $s7, 84($sp)
    lw $s6, 88($sp)
    lw $s5, 96($sp)
    lw $s4, 104($sp)
    lw $s3, 112($sp)
    lw $s2, 120($sp)
    lw $s1, 124($sp)
    lw $s0, 148($sp)
    lw $ra, 72($sp)
    addiu $sp, $sp, 184
    jr $ra

.globl main
main:
    addiu $sp, $sp, -88
    sw $ra, 72($sp)
    sw $s0, 80($sp)
    sw $s1, 80($sp)
    sw $s2, 80($sp)
    sw $s3, 80($sp)
    sw $s4, 80($sp)
    sw $s5, 80($sp)
    sw $s6, 80($sp)
    jal read
    move $t0, $v0
    jal read
    move $t1, $v0
    jal read
    move $t2, $v0
    jal read
    move $t3, $v0
    jal read
    move $t4, $v0
    jal read
    move $t5, $v0
    jal read
    move $t6, $v0
    jal read
    move $t7, $v0
    jal read
    move $t8, $v0
    jal read
    move $t9, $v0
    jal read
    move $s0, $v0
    jal read
    move $s1, $v0
    jal read
    move $s2, $v0
    jal read
    move $s3, $v0
    jal read
    move $s4, $v0
    jal read
    move $s5, $v0
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
    jal test
    move $s6, $v0
    move $a0, $v0
    jal write
    move $v0, $zero
    lw $ra, 72($sp)
    addiu $sp, $sp, 88
    jr $ra

