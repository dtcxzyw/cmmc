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
    lw $t2, 0($a0)
    sw $t2, 0($t0)
    addiu $t3, $t0, 4
    addiu $t4, $t1, 4
    lw $t5, 0($t4)
    sw $t5, 0($t3)
    sw $t5, 24($sp)
    sw $t2, 28($sp)
    beqz $t5, .BB1
    addiu $t0, $sp, 40
    move $t1, $t5
    sw $t5, 0($t0)
    addiu $t2, $t0, 4
    lw $t3, 28($sp)
    .set nomacro
    div $zero, $t3, $t1
    .set macro
    mflo $t4
    mult $t4, $t1
    mflo $t5
    subu $t6, $t3, $t5
    sw $t6, 0($t2)
    move $a0, $t0
    jal gcd
    move $t7, $v0
    lw $ra, 16($sp)
    addiu $sp, $sp, 48
    jr $ra
.BB1:
    lw $t0, 28($sp)
    move $v0, $t0
    lw $ra, 16($sp)
    addiu $sp, $sp, 48
    jr $ra

.globl main
main:
    addiu $sp, $sp, -32
    sw $ra, 16($sp)
    addiu $t0, $sp, 24
    jal read
    move $t1, $v0
    sw $v0, 0($t0)
    addiu $t2, $t0, 4
    jal read
    move $t3, $v0
    sw $v0, 0($t2)
    move $a0, $t0
    jal gcd
    move $t4, $v0
    move $a0, $v0
    jal write
    move $v0, $zero
    lw $ra, 16($sp)
    addiu $sp, $sp, 32
    jr $ra

