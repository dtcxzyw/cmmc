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

hanoi:
    addiu $sp, $sp, -56
    sw $ra, 16($sp)
    sw $s0, 24($sp)
    sw $s1, 28($sp)
    move $t0, $a0
    move $t1, $a1
    move $t2, $a2
    move $t3, $a3
    li $t4, 1
    sw $a3, 32($sp)
    sw $a2, 36($sp)
    sw $a1, 40($sp)
    sw $a0, 44($sp)
    bne $t0, $t4, .BB1
    li $t0, 10000
    mult $t1, $t0
    mflo $t2
    addu $t4, $t2, $t3
    move $a0, $t4
    jal write
    move $v0, $zero
    lw $ra, 16($sp)
    addiu $sp, $sp, 56
    jr $ra
.BB1:
    lw $t0, 44($sp)
    addiu $t1, $t0, -1
    move $a0, $t1
    lw $t2, 40($sp)
    move $a1, $t2
    lw $t3, 32($sp)
    move $a2, $t3
    lw $t4, 36($sp)
    move $a3, $t4
    sw $t1, 48($sp)
    jal hanoi
    li $t5, 10000
    lw $t6, 40($sp)
    mult $t6, $t5
    mflo $t7
    lw $t8, 32($sp)
    addu $t9, $t7, $t8
    move $a0, $t9
    jal write
    lw $s0, 48($sp)
    move $a0, $s0
    lw $s1, 36($sp)
    move $a1, $s1
    move $a2, $t6
    move $a3, $t8
    jal hanoi
    move $v0, $zero
    lw $s1, 28($sp)
    lw $s0, 24($sp)
    lw $ra, 16($sp)
    addiu $sp, $sp, 56
    jr $ra

.globl main
main:
    addiu $sp, $sp, -24
    sw $ra, 16($sp)
    li $a0, 3
    li $a1, 1
    li $a2, 2
    li $a3, 3
    jal hanoi
    move $v0, $zero
    lw $ra, 16($sp)
    addiu $sp, $sp, 24
    jr $ra

