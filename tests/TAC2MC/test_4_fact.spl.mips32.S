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

fact:
    addiu $sp, $sp, -32
    sw $ra, 16($sp)
    move $t0, $a0
    li $t1, 1
    sw $a0, 24($sp)
    bne $t0, $t1, .BB1
    move $v0, $a0
    addiu $sp, $sp, 32
    jr $ra
.BB1:
    lw $t0, 24($sp)
    addiu $t1, $t0, -1
    move $a0, $t1
    jal fact
    move $t2, $v0
    lw $t3, 24($sp)
    mult $t2, $t3
    mflo $t4
    move $v0, $t4
    lw $ra, 16($sp)
    addiu $sp, $sp, 32
    jr $ra

.globl main
main:
    addiu $sp, $sp, -32
    sw $ra, 16($sp)
    jal read
    move $t0, $v0
    li $t1, 1
    sw $v0, 24($sp)
    ble $t0, $t1, .BB3
    move $a0, $v0
    jal fact
    move $t1, $v0
    move $a0, $v0
    jal write
    move $v0, $zero
    lw $ra, 16($sp)
    addiu $sp, $sp, 32
    jr $ra
.BB3:
    li $a0, 1
    jal write
    move $v0, $zero
    lw $ra, 16($sp)
    addiu $sp, $sp, 32
    jr $ra

