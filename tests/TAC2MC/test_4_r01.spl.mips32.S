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
    addiu $sp, $sp, -112
    sw $ra, 0($sp)
    sw $s0, 8($sp)
    sw $s1, 12($sp)
    sw $s2, 16($sp)
    sw $s3, 20($sp)
    sw $s4, 72($sp)
    sw $s5, 68($sp)
    move $t0, $a0
    move $t1, $a1
    move $t2, $a2
    move $t3, $a3
    li $t4, 1
    sw $t3, 44($sp)
    sw $t2, 48($sp)
    sw $t1, 52($sp)
    sw $t0, 60($sp)
    bne $t0, $t4, .BB1
    lw $t0, 44($sp)
    move $t1, $t0
    lw $t2, 52($sp)
    move $t3, $t2
    sw $t3, 56($sp)
    sw $t1, 40($sp)
    li $t0, 10000
    lw $t1, 56($sp)
    mult $t1, $t0
    mflo $t2
    lw $t3, 40($sp)
    addu $t4, $t2, $t3
    move $a0, $t4
    sw $t4, 76($sp)
    sw $t2, 84($sp)
    sw $t0, 80($sp)
    jal write
    li $v0, 0
    lw $s5, 68($sp)
    lw $s4, 72($sp)
    lw $s3, 20($sp)
    lw $s2, 16($sp)
    lw $s1, 12($sp)
    lw $s0, 8($sp)
    lw $ra, 0($sp)
    addiu $sp, $sp, 112
    jr $ra
.BB1:
    lw $t0, 48($sp)
    move $t1, $t0
    lw $t2, 44($sp)
    move $t3, $t2
    lw $t4, 52($sp)
    move $t5, $t4
    lw $t6, 60($sp)
    move $t7, $t6
    sw $t7, 24($sp)
    sw $t5, 28($sp)
    sw $t3, 32($sp)
    sw $t1, 36($sp)
    lw $t0, 24($sp)
    addiu $t1, $t0, -1
    move $a0, $t1
    lw $t2, 28($sp)
    move $a1, $t2
    lw $t3, 32($sp)
    move $a2, $t3
    lw $t4, 36($sp)
    move $a3, $t4
    sw $t1, 108($sp)
    jal hanoi
    move $t5, $v0
    li $t6, 10000
    lw $t7, 28($sp)
    mult $t7, $t6
    mflo $t8
    lw $t9, 32($sp)
    addu $s0, $t8, $t9
    move $a0, $s0
    sw $t6, 100($sp)
    sw $t5, 104($sp)
    sw $t8, 96($sp)
    jal write
    lw $s1, 108($sp)
    move $a0, $s1
    lw $s2, 36($sp)
    move $a1, $s2
    lw $s3, 28($sp)
    move $a2, $s3
    lw $s4, 32($sp)
    move $a3, $s4
    jal hanoi
    move $s5, $v0
    li $v0, 0
    lw $s5, 68($sp)
    lw $s4, 72($sp)
    lw $s3, 20($sp)
    lw $s2, 16($sp)
    lw $s1, 12($sp)
    lw $s0, 8($sp)
    lw $ra, 0($sp)
    addiu $sp, $sp, 112
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

