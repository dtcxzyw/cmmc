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

gcd:
    addiu $sp, $sp, -96
    sw $ra, 0($sp)
    addiu $t0, $sp, 52
    move $t1, $a0
    move $t2, $t0
    move $t3, $t1
    lw $t4, 0($t3)
    sw $t4, 0($t2)
    addiu $t5, $t0, 4
    addiu $t6, $t1, 4
    lw $t7, 0($t6)
    sw $t7, 0($t5)
    sw $t7, 36($sp)
    sw $t4, 32($sp)
    beqz $t7, .BB1
    lw $t0, 36($sp)
    move $t1, $t0
    lw $t2, 32($sp)
    move $t3, $t2
    sw $t3, 44($sp)
    sw $t1, 40($sp)
    addiu $t0, $sp, 64
    move $t1, $t0
    lw $t2, 40($sp)
    sw $t2, 0($t1)
    addiu $t3, $t0, 4
    lw $t4, 44($sp)
    div $t4, $t2
    mflo $t5
    mult $t5, $t2
    mflo $t6
    subu $t7, $t4, $t6
    sw $t7, 0($t3)
    move $a0, $t0
    sw $t7, 80($sp)
    sw $t6, 84($sp)
    sw $t5, 88($sp)
    sw $t3, 92($sp)
    sw $t1, 72($sp)
    sw $t0, 76($sp)
    jal gcd
    move $t8, $v0
    move $v0, $t8
    lw $ra, 0($sp)
    addiu $sp, $sp, 96
    jr $ra
.BB1:
    lw $t0, 32($sp)
    move $t1, $t0
    sw $t1, 48($sp)
    lw $t0, 48($sp)
    move $v0, $t0
    lw $ra, 0($sp)
    addiu $sp, $sp, 96
    jr $ra

.globl main
main:
    addiu $sp, $sp, -40
    sw $ra, 0($sp)
    addiu $t0, $sp, 32
    move $t1, $t0
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    addiu $t3, $t0, 4
    jal read
    move $t4, $v0
    sw $t4, 0($t3)
    move $a0, $t0
    sw $t4, 12($sp)
    sw $t3, 16($sp)
    sw $t2, 20($sp)
    sw $t1, 24($sp)
    sw $t0, 28($sp)
    jal gcd
    move $t5, $v0
    move $a0, $t5
    jal write
    move $v0, $zero
    lw $ra, 0($sp)
    addiu $sp, $sp, 40
    jr $ra

