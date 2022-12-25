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

.align 4
.globl main
main:
    addiu $sp, $sp, -16
    sw $ra, 0($sp)
    jal read
    move $t0, $v0
    sw $t0, 12($sp)
    blez $t0, .BB1
    li $a0, 1
    jal write
    move $v0, $zero
    lw $ra, 0($sp)
    addiu $sp, $sp, 16
    jr $ra
.BB1:
    lw $t0, 12($sp)
    move $t1, $t0
    sw $t1, 8($sp)
    lw $t0, 8($sp)
    bgez $t0, .BB2
    li $a0, -1
    jal write
    move $v0, $zero
    lw $ra, 0($sp)
    addiu $sp, $sp, 16
    jr $ra
.BB2:
    move $a0, $zero
    jal write
    move $v0, $zero
    lw $ra, 0($sp)
    addiu $sp, $sp, 16
    jr $ra

