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

test:
    addiu $sp, $sp, -264
    sw $ra, 72($sp)
    sw $s0, 80($sp)
    sw $s1, 84($sp)
    sw $s2, 88($sp)
    sw $s3, 92($sp)
    sw $s4, 96($sp)
    sw $s5, 100($sp)
    sw $s6, 104($sp)
    sw $s7, 108($sp)
    move $t0, $a0
    move $t1, $a1
    move $t2, $a2
    move $t3, $a3
    lw $t4, 16($sp)
    lw $t5, 20($sp)
    lw $t6, 24($sp)
    lw $t7, 28($sp)
    lw $t8, 32($sp)
    lw $t9, 36($sp)
    lw $s0, 40($sp)
    lw $s1, 44($sp)
    lw $s2, 48($sp)
    lw $s3, 52($sp)
    lw $s4, 56($sp)
    lw $s5, 60($sp)
    lw $s6, 64($sp)
    sw $s6, 248($sp)
    sw $s5, 244($sp)
    sw $s4, 240($sp)
    sw $s3, 236($sp)
    sw $t0, 164($sp)
    sw $t1, 204($sp)
    sw $t2, 208($sp)
    sw $t3, 216($sp)
    sw $t4, 224($sp)
    sw $t5, 232($sp)
    sw $t6, 212($sp)
    sw $t7, 220($sp)
    sw $t8, 228($sp)
    sw $t9, 136($sp)
    sw $s0, 200($sp)
    sw $s1, 196($sp)
    sw $s2, 184($sp)
    bnez $t0, .BB1
    lw $t0, 164($sp)
    move $t1, $t0
    sw $t1, 132($sp)
    lw $t0, 132($sp)
    move $v0, $t0
    lw $s7, 108($sp)
    lw $s6, 104($sp)
    lw $s5, 100($sp)
    lw $s4, 96($sp)
    lw $s3, 92($sp)
    lw $s2, 88($sp)
    lw $s1, 84($sp)
    lw $s0, 80($sp)
    lw $ra, 72($sp)
    addiu $sp, $sp, 264
    jr $ra
.BB1:
    lw $t0, 204($sp)
    move $t1, $t0
    lw $t2, 208($sp)
    move $t3, $t2
    lw $t4, 232($sp)
    move $t5, $t4
    lw $t6, 220($sp)
    move $t7, $t6
    lw $t8, 216($sp)
    move $t9, $t8
    lw $s0, 224($sp)
    move $s1, $s0
    lw $s2, 164($sp)
    move $s3, $s2
    lw $s4, 212($sp)
    move $s5, $s4
    lw $s6, 228($sp)
    move $s7, $s6
    lw $t0, 184($sp)
    sw $t1, 128($sp)
    move $t1, $t0
    lw $t2, 240($sp)
    sw $t3, 124($sp)
    move $t3, $t2
    lw $t4, 248($sp)
    sw $t5, 120($sp)
    move $t5, $t4
    lw $t6, 244($sp)
    sw $t7, 116($sp)
    move $t7, $t6
    lw $t8, 236($sp)
    sw $t9, 112($sp)
    move $t9, $t8
    lw $s0, 196($sp)
    sw $s1, 140($sp)
    move $s1, $s0
    lw $s2, 200($sp)
    sw $s3, 156($sp)
    move $s3, $s2
    lw $s4, 136($sp)
    sw $s5, 176($sp)
    move $s5, $s4
    sw $s5, 144($sp)
    sw $s3, 160($sp)
    sw $s1, 180($sp)
    sw $t9, 192($sp)
    sw $s7, 188($sp)
    sw $t1, 152($sp)
    sw $t3, 172($sp)
    sw $t5, 168($sp)
    sw $t7, 148($sp)
    lw $t0, 156($sp)
    addiu $t1, $t0, -1
    move $a0, $t1
    lw $t2, 112($sp)
    move $a1, $t2
    lw $t3, 140($sp)
    move $a2, $t3
    lw $t4, 176($sp)
    move $a3, $t4
    lw $t5, 188($sp)
    sw $t5, 16($sp)
    lw $t6, 152($sp)
    sw $t6, 20($sp)
    lw $t7, 172($sp)
    sw $t7, 24($sp)
    lw $t8, 168($sp)
    sw $t8, 28($sp)
    lw $t9, 148($sp)
    sw $t9, 32($sp)
    lw $s0, 192($sp)
    sw $s0, 36($sp)
    lw $s1, 180($sp)
    sw $s1, 40($sp)
    lw $s2, 160($sp)
    sw $s2, 44($sp)
    lw $s3, 144($sp)
    sw $s3, 48($sp)
    lw $s4, 116($sp)
    sw $s4, 52($sp)
    lw $s5, 120($sp)
    sw $s5, 56($sp)
    lw $s6, 124($sp)
    sw $s6, 60($sp)
    lw $s7, 128($sp)
    sw $s7, 64($sp)
    sw $t1, 260($sp)
    jal test
    move $t0, $v0
    addiu $t1, $t0, 1
    move $v0, $t1
    lw $s7, 108($sp)
    lw $s6, 104($sp)
    lw $s5, 100($sp)
    lw $s4, 96($sp)
    lw $s3, 92($sp)
    lw $s2, 88($sp)
    lw $s1, 84($sp)
    lw $s0, 80($sp)
    lw $ra, 72($sp)
    addiu $sp, $sp, 264
    jr $ra

.globl main
main:
    addiu $sp, $sp, -176
    sw $ra, 72($sp)
    sw $s0, 80($sp)
    sw $s1, 84($sp)
    sw $s2, 88($sp)
    sw $s3, 92($sp)
    sw $s4, 96($sp)
    sw $s5, 100($sp)
    sw $s6, 104($sp)
    jal read
    move $t0, $v0
    jal read
    move $t1, $v0
    jal read
    move $t2, $v0
    jal read
    move $t3, $v0
    jal read
    move $t4, $v0
    jal read
    move $t5, $v0
    jal read
    move $t6, $v0
    jal read
    move $t7, $v0
    jal read
    move $t8, $v0
    jal read
    move $t9, $v0
    jal read
    move $s0, $v0
    jal read
    move $s1, $v0
    jal read
    move $s2, $v0
    jal read
    move $s3, $v0
    jal read
    move $s4, $v0
    jal read
    move $s5, $v0
    li $a0, 10
    move $a1, $t0
    move $a2, $t1
    move $a3, $t2
    sw $t3, 16($sp)
    sw $t4, 20($sp)
    sw $t5, 24($sp)
    sw $t6, 28($sp)
    sw $t7, 32($sp)
    sw $t8, 36($sp)
    sw $t9, 40($sp)
    sw $s0, 44($sp)
    sw $s1, 48($sp)
    sw $s2, 52($sp)
    sw $s3, 56($sp)
    sw $s4, 60($sp)
    sw $s5, 64($sp)
    sw $t0, 128($sp)
    sw $t1, 132($sp)
    sw $t2, 136($sp)
    sw $t3, 140($sp)
    sw $t8, 160($sp)
    sw $t4, 144($sp)
    sw $t9, 164($sp)
    sw $t5, 148($sp)
    sw $t6, 152($sp)
    sw $t7, 156($sp)
    jal test
    move $s6, $v0
    move $a0, $s6
    jal write
    move $v0, $zero
    lw $ra, 72($sp)
    addiu $sp, $sp, 176
    jr $ra

