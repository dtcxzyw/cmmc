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

.globl fact
.align 4
fact:
    addiu $sp, $sp, -40
    sw $ra, 0($sp)
    move $t0, $a0
    li $t1, 1
    sw $t0, 20($sp)
    bne $t0, $t1, .BB1
    lw $t0, 20($sp)
    move $t1, $t0
    sw $t1, 16($sp)
    lw $t0, 16($sp)
    move $v0, $t0
    lw $ra, 0($sp)
    addiu $sp, $sp, 40
    jr $ra
.BB1:
    lw $t0, 20($sp)
    move $t1, $t0
    sw $t1, 12($sp)
    lw $t0, 12($sp)
    addiu $t1, $t0, -1
    move $a0, $t1
    sw $t1, 32($sp)
    jal fact
    move $t2, $v0
    lw $t3, 12($sp)
    mult $t2, $t3
    mflo $t4
    move $v0, $t4
    lw $ra, 0($sp)
    addiu $sp, $sp, 40
    jr $ra

.globl main
.align 4
main:
    addiu $sp, $sp, -24
    sw $ra, 0($sp)
    jal read
    move $t0, $v0
    li $t1, 1
    sw $t0, 16($sp)
    ble $t0, $t1, .BB3
    lw $t0, 16($sp)
    move $t1, $t0
    sw $t1, 12($sp)
    lw $t0, 12($sp)
    move $a0, $t0
    jal fact
    move $t1, $v0
    move $a0, $t1
    jal write
    li $v0, 0
    lw $ra, 0($sp)
    addiu $sp, $sp, 24
    jr $ra
.BB3:
    li $a0, 1
    jal write
    li $v0, 0
    lw $ra, 0($sp)
    addiu $sp, $sp, 24
    jr $ra

