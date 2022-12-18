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

.globl main
.align 4
main:
    addiu $sp, $sp, -8
    sw $ra, 0($sp)
    li $a0, 19
    jal write
    li $v0, 0
    lw $ra, 0($sp)
    addiu $sp, $sp, 8
    jr $ra

