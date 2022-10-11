.data
_prompt: .asciiz "Enter an integer:"
_ret: .asciiz "\n"
.globl main
.text
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

fact:
    li $t4, 1
    beq $a0, $t4, label1
    j label2
label1:
    move $v0, $a0
    jr $ra
label2:
    addi $sp, $sp, -8
    sw $a0, ($sp)
    sw $ra, 4($sp)
    sub $a0, $a0, 1
    jal fact
    lw $a0, ($sp)
    lw $ra, 4($sp)
    addi $sp, $sp, 8
    mul $v0, $v0, $a0
    jr $ra

main:
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    jal read
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    move $t1, $v0
    li $t3, 1
    bgt $t1, $t3, label6
    j label7
label6:
    move $a0, $t1
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    jal fact
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    move $t2, $v0
    j label8
label7:
    li $t2, 1
label8:
    move $a0, $t2
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    jal write
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    move $v0, $0
    jr $ra
