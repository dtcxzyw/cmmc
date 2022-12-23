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
    addiu $sp, $sp, -104
    sw $ra, 0($sp)
    sw $s0, 8($sp)
    sw $s1, 12($sp)
    sw $s2, 20($sp)
    sw $s3, 64($sp)
    move $t0, $a0
    move $t1, $a1
    move $t2, $a2
    move $t3, $a3
    li $t4, 1
    sw $t3, 40($sp)
    sw $t2, 44($sp)
    sw $t1, 48($sp)
    sw $t0, 56($sp)
    bne $t0, $t4, .BB1
    lw $t0, 40($sp)
    move $t1, $t0
    lw $t2, 48($sp)
    move $t3, $t2
    sw $t3, 52($sp)
    sw $t1, 36($sp)
    li $t0, 10000
    lw $t1, 52($sp)
    mult $t1, $t0
    mflo $t2
    lw $t3, 36($sp)
    addu $t4, $t2, $t3
    move $a0, $t4
    jal write
    li $v0, 0
    lw $s3, 64($sp)
    lw $s2, 20($sp)
    lw $s1, 12($sp)
    lw $s0, 8($sp)
    lw $ra, 0($sp)
    addiu $sp, $sp, 104
    jr $ra
.BB1:
    lw $t0, 44($sp)
    move $t1, $t0
    lw $t2, 40($sp)
    move $t3, $t2
    lw $t4, 48($sp)
    move $t5, $t4
    lw $t6, 56($sp)
    move $t7, $t6
    sw $t7, 16($sp)
    sw $t5, 24($sp)
    sw $t3, 28($sp)
    sw $t1, 32($sp)
    lw $t0, 16($sp)
    addiu $t1, $t0, -1
    move $a0, $t1
    lw $t2, 24($sp)
    move $a1, $t2
    lw $t3, 28($sp)
    move $a2, $t3
    lw $t4, 32($sp)
    move $a3, $t4
    sw $t1, 100($sp)
    jal hanoi
    move $t5, $v0
    li $t6, 10000
    lw $t7, 24($sp)
    mult $t7, $t6
    mflo $t8
    lw $t9, 28($sp)
    addu $s0, $t8, $t9
    move $a0, $s0
    jal write
    lw $s1, 100($sp)
    move $a0, $s1
    lw $s2, 32($sp)
    move $a1, $s2
    move $a2, $t7
    move $a3, $t9
    sw $t6, 92($sp)
    sw $t5, 96($sp)
    sw $t8, 88($sp)
    jal hanoi
    move $s3, $v0
    li $v0, 0
    lw $s3, 64($sp)
    lw $s2, 20($sp)
    lw $s1, 12($sp)
    lw $s0, 8($sp)
    lw $ra, 0($sp)
    addiu $sp, $sp, 104
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

