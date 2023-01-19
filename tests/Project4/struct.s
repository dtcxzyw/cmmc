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
    addiu $sp, $sp, -48
    sw $ra, 16($sp)
    addiu $t0, $sp, 32
    move $t1, $a0
    move $t2, $t0
    move $t3, $t1
    lw $t4, 0($t3)
    sw $t4, 0($t2)
    addiu $t5, $t0, 4
    addiu $t6, $t1, 4
    lw $t7, 0($t6)
    sw $t7, 0($t5)
    sw $t7, 28($sp)
    sw $t4, 24($sp)
    beqz $t7, .BB1
    addiu $t0, $sp, 40
    move $t1, $t0
    lw $t2, 28($sp)
    sw $t2, 0($t1)
    addiu $t3, $t0, 4
    lw $t4, 24($sp)
    .set nomacro
    div $zero, $t4, $t2
    .set macro
    mflo $t5
    mult $t5, $t2
    mflo $t6
    subu $t7, $t4, $t6
    sw $t7, 0($t3)
    move $a0, $t0
    jal gcd
    move $t8, $v0
    move $v0, $t8
    lw $ra, 16($sp)
    addiu $sp, $sp, 48
    jr $ra
.BB1:
    lw $t0, 24($sp)
    move $v0, $t0
    lw $ra, 16($sp)
    addiu $sp, $sp, 48
    jr $ra

.globl main
main:
    addiu $sp, $sp, -32
    sw $ra, 16($sp)
    addiu $t0, $sp, 24
    move $t1, $t0
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    addiu $t3, $t0, 4
    jal read
    move $t4, $v0
    sw $t4, 0($t3)
    move $a0, $t0
    jal gcd
    move $t5, $v0
    move $a0, $t5
    jal write
    move $v0, $zero
    lw $ra, 16($sp)
    addiu $sp, $sp, 32
    jr $ra

