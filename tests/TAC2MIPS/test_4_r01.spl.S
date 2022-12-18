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

.globl hanoi
.align 4
hanoi:
    addiu $sp, $sp, -128
    sw $ra, 0($sp)
    sw $s0, 8($sp)
    sw $s1, 12($sp)
    sw $s2, 16($sp)
    sw $s3, 20($sp)
    sw $s4, 24($sp)
    sw $s5, 28($sp)
    sw $s6, 72($sp)
    sw $s7, 64($sp)
    move $t0, $a0
    move $t1, $a1
    move $t2, $a2
    move $t3, $a3
    li $t4, 1
    sw $t3, 52($sp)
    sw $t2, 56($sp)
    sw $t1, 60($sp)
    sw $t0, 76($sp)
    bne $t0, $t4, .BB1
    lw $t0, 52($sp)
    move $t1, $t0
    lw $t2, 60($sp)
    move $t3, $t2
    sw $t3, 68($sp)
    sw $t1, 48($sp)
    li $t0, 10000
    lw $t1, 68($sp)
    mult $t1, $t0
    mflo $t2
    lw $t3, 48($sp)
    addu $t4, $t2, $t3
    move $a0, $t4
    sw $t4, 84($sp)
    sw $t2, 92($sp)
    sw $t0, 88($sp)
    jal write
    li $v0, 0
    lw $s7, 64($sp)
    lw $s6, 72($sp)
    lw $s5, 28($sp)
    lw $s4, 24($sp)
    lw $s3, 20($sp)
    lw $s2, 16($sp)
    lw $s1, 12($sp)
    lw $s0, 8($sp)
    lw $ra, 0($sp)
    addiu $sp, $sp, 128
    jr $ra
.BB1:
    lw $t0, 56($sp)
    move $t1, $t0
    lw $t2, 52($sp)
    move $t3, $t2
    lw $t4, 60($sp)
    move $t5, $t4
    lw $t6, 76($sp)
    move $t7, $t6
    sw $t7, 32($sp)
    sw $t5, 36($sp)
    sw $t3, 40($sp)
    sw $t1, 44($sp)
    li $t0, 1
    lw $t1, 32($sp)
    subu $t2, $t1, $t0
    move $a0, $t2
    lw $t3, 36($sp)
    move $a1, $t3
    lw $t4, 40($sp)
    move $a2, $t4
    lw $t5, 44($sp)
    move $a3, $t5
    sw $t2, 116($sp)
    sw $t0, 120($sp)
    jal hanoi
    move $t6, $v0
    li $t7, 10000
    lw $s0, 36($sp)
    mult $s0, $t7
    mflo $s1
    lw $s2, 40($sp)
    addu $s3, $s1, $s2
    move $a0, $s3
    sw $t7, 108($sp)
    sw $t6, 112($sp)
    jal write
    lw $s4, 116($sp)
    move $a0, $s4
    lw $s5, 44($sp)
    move $a1, $s5
    lw $s6, 36($sp)
    move $a2, $s6
    lw $s7, 40($sp)
    move $a3, $s7
    jal hanoi
    move $t8, $v0
    li $v0, 0
    lw $s7, 64($sp)
    lw $s6, 72($sp)
    lw $s5, 28($sp)
    lw $s4, 24($sp)
    lw $s3, 20($sp)
    lw $s2, 16($sp)
    lw $s1, 12($sp)
    lw $s0, 8($sp)
    lw $ra, 0($sp)
    addiu $sp, $sp, 128
    jr $ra

.globl main
.align 4
main:
    addiu $sp, $sp, -16
    sw $ra, 0($sp)
    li $a0, 3
    li $a1, 1
    li $a2, 2
    li $a3, 3
    jal hanoi
    move $t0, $v0
    li $v0, 0
    lw $ra, 0($sp)
    addiu $sp, $sp, 16
    jr $ra

