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
hanoi:
    addiu $sp, $sp, -96
    sw $ra, 16($sp)
    sw $s0, 36($sp)
    sw $s1, 44($sp)
    sw $s2, 52($sp)
    sw $s3, 24($sp)
    move $t0, $a0
    move $t1, $a1
    move $t2, $a2
    move $t3, $a3
    li $t4, 1
    sw $t3, 56($sp)
    sw $t2, 48($sp)
    sw $t1, 40($sp)
    sw $t0, 32($sp)
    bne $t0, $t4, .BB1
    li $t0, 10000
    lw $t1, 40($sp)
    mult $t1, $t0
    mflo $t2
    lw $t3, 56($sp)
    addu $t4, $t2, $t3
    move $a0, $t4
    jal write
    move $v0, $zero
    lw $s3, 24($sp)
    lw $s2, 52($sp)
    lw $s1, 44($sp)
    lw $s0, 36($sp)
    lw $ra, 16($sp)
    addiu $sp, $sp, 96
    jr $ra
.BB1:
    lw $t0, 32($sp)
    addiu $t1, $t0, -1
    move $a0, $t1
    lw $t2, 40($sp)
    move $a1, $t2
    lw $t3, 56($sp)
    move $a2, $t3
    lw $t4, 48($sp)
    move $a3, $t4
    sw $t1, 88($sp)
    jal hanoi
    move $t5, $v0
    li $t6, 10000
    lw $t7, 40($sp)
    mult $t7, $t6
    mflo $t8
    lw $t9, 56($sp)
    addu $s0, $t8, $t9
    move $a0, $s0
    jal write
    lw $s1, 88($sp)
    move $a0, $s1
    lw $s2, 48($sp)
    move $a1, $s2
    move $a2, $t7
    move $a3, $t9
    sw $t8, 76($sp)
    sw $t6, 72($sp)
    sw $t5, 92($sp)
    jal hanoi
    move $s3, $v0
    move $v0, $zero
    lw $s3, 24($sp)
    lw $s2, 52($sp)
    lw $s1, 44($sp)
    lw $s0, 36($sp)
    lw $ra, 16($sp)
    addiu $sp, $sp, 96
    jr $ra

.globl main
main:
    addiu $sp, $sp, -32
    sw $ra, 16($sp)
    li $a0, 3
    li $a1, 1
    li $a2, 2
    li $a3, 3
    jal hanoi
    move $t0, $v0
    move $v0, $zero
    lw $ra, 16($sp)
    addiu $sp, $sp, 32
    jr $ra

