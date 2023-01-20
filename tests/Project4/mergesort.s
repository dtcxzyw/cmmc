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

merge:
    addiu $sp, $sp, -216
    sw $ra, 16($sp)
    sw $s0, 192($sp)
    sw $s1, 196($sp)
    sw $s2, 68($sp)
    sw $s3, 56($sp)
    sw $s4, 44($sp)
    sw $s5, 40($sp)
    sw $s6, 164($sp)
    sw $s7, 84($sp)
    move $t0, $a0
    move $t1, $a1
    move $t2, $a2
    move $t3, $a3
    addiu $t4, $t2, 1
    sw $a3, 176($sp)
    sw $a2, 168($sp)
    sw $a1, 204($sp)
    sw $a0, 208($sp)
    bge $t4, $t3, .BB1
    move $t0, $a3
    move $t1, $a2
    addu $t2, $t0, $t1
    li $t3, 2
    .set nomacro
    div $zero, $t2, $t3
    .set macro
    mflo $t4
    move $t5, $a0
    move $t6, $a1
    move $a3, $t4
    sw $t4, 200($sp)
    jal merge
    move $t7, $v0
    lw $t8, 208($sp)
    move $a0, $t8
    lw $t9, 204($sp)
    move $a1, $t9
    lw $s0, 200($sp)
    move $a2, $s0
    lw $s1, 176($sp)
    move $a3, $s1
    jal merge
    move $s2, $v0
    lw $s3, 168($sp)
    sne $s4, $s3, $s1
    sb $s4, 48($sp)
    beq $s3, $s1, .BB2
    move $t0, $s3
    move $t1, $s3
    lw $t2, 200($sp)
    move $t3, $t2
    move $t4, $s3
    sw $s3, 120($sp)
    sw $t2, 116($sp)
    sw $s3, 172($sp)
    beq $t1, $t2, .BB9
    move $t0, $s3
    move $t1, $s3
    move $t3, $t2
    move $t5, $s3
    lw $t6, 176($sp)
    sw $s3, 184($sp)
    sw $t2, 140($sp)
    sw $s3, 128($sp)
    beq $t3, $t6, .BB3
    b .BB6
.BB1:
    move $v0, $zero
    lw $s7, 84($sp)
    lw $s6, 164($sp)
    lw $s5, 40($sp)
    lw $s4, 44($sp)
    lw $s3, 56($sp)
    lw $s2, 68($sp)
    lw $s1, 196($sp)
    lw $s0, 192($sp)
    lw $ra, 16($sp)
    addiu $sp, $sp, 216
    jr $ra
.BB2:
    lb $t0, 48($sp)
    move $t1, $t0
    sb $t0, 96($sp)
    beqz $t1, .BB1
    b .BB7
.BB3:
    lw $t0, 128($sp)
    move $t1, $t0
    lw $t2, 140($sp)
    move $t3, $t2
    lw $t4, 184($sp)
    move $t5, $t4
    lw $t6, 200($sp)
    sw $t4, 36($sp)
    sw $t2, 60($sp)
    sw $t0, 72($sp)
    beq $t1, $t6, .BB10
    b .BB8
.BB4:
    lw $t0, 92($sp)
    move $t1, $t0
    sw $t0, 144($sp)
.BB5:
    lw $t0, 208($sp)
    move $t1, $t0
    li $t2, 4
    lw $t3, 144($sp)
    mult $t3, $t2
    mflo $t4
    addu $t1, $t1, $t4
    lw $t5, 204($sp)
    move $t6, $t5
    li $t7, 4
    mult $t3, $t7
    mflo $t8
    addu $t6, $t6, $t8
    lw $t9, 0($t6)
    sw $t9, 0($t1)
    addiu $s0, $t3, 1
    lw $s1, 176($sp)
    sw $s0, 92($sp)
    beq $s0, $s1, .BB1
    b .BB4
.BB6:
    lw $t0, 128($sp)
    move $t1, $t0
    lw $t2, 140($sp)
    move $t3, $t2
    lw $t4, 184($sp)
    move $t5, $t4
    sw $t4, 136($sp)
    sw $t2, 124($sp)
    sw $t0, 180($sp)
    lw $t0, 208($sp)
    move $t1, $t0
    li $t2, 4
    lw $t3, 180($sp)
    mult $t3, $t2
    mflo $t4
    addu $t1, $t1, $t4
    lw $t5, 0($t1)
    move $t6, $t0
    li $t7, 4
    lw $t8, 124($sp)
    mult $t8, $t7
    mflo $t9
    addu $t6, $t6, $t9
    lw $s0, 0($t6)
    sw $s0, 148($sp)
    sw $t1, 188($sp)
    bge $t5, $s0, .BB12
    b .BB11
.BB7:
    lw $t0, 168($sp)
    move $t1, $t0
    sw $t0, 144($sp)
    b .BB5
.BB8:
    lw $t0, 72($sp)
    move $t1, $t0
    lw $t2, 60($sp)
    move $t3, $t2
    lw $t4, 36($sp)
    move $t5, $t4
    sw $t4, 28($sp)
    sw $t2, 112($sp)
    sw $t0, 100($sp)
    lw $t0, 204($sp)
    move $t1, $t0
    li $t2, 4
    move $t3, $t4
    mult $t3, $t2
    mflo $t4
    addu $t1, $t1, $t4
    lw $t5, 208($sp)
    move $t6, $t5
    li $t7, 4
    lw $t8, 100($sp)
    mult $t8, $t7
    mflo $t9
    addu $t6, $t6, $t9
    lw $s0, 0($t6)
    sw $s0, 0($t1)
    addiu $s1, $t8, 1
    addiu $s2, $t3, 1
    move $s3, $s2
    move $s4, $s1
    lw $s5, 112($sp)
    move $s6, $s5
    move $s7, $s2
    lw $t0, 176($sp)
    sw $s2, 104($sp)
    sw $s5, 108($sp)
    sw $s1, 24($sp)
    sw $s2, 132($sp)
    beq $s3, $t0, .BB13
    move $t0, $s1
    move $t1, $s1
    move $t2, $s5
    move $t3, $s5
    move $t4, $s2
    move $t5, $s2
    lw $t6, 200($sp)
    sw $s2, 120($sp)
    sw $s5, 116($sp)
    sw $s1, 172($sp)
    beq $t1, $t6, .BB9
    move $t0, $s1
    move $t1, $s1
    move $t2, $s5
    move $t3, $s5
    move $t4, $s2
    move $t5, $s2
    lw $t6, 176($sp)
    sw $s2, 184($sp)
    sw $s5, 140($sp)
    sw $s1, 128($sp)
    beq $t3, $t6, .BB3
    b .BB6
.BB9:
    lw $t0, 172($sp)
    move $t1, $t0
    lw $t2, 116($sp)
    move $t3, $t2
    lw $t4, 120($sp)
    move $t5, $t4
    lw $t6, 200($sp)
    sw $t4, 36($sp)
    sw $t2, 60($sp)
    sw $t0, 72($sp)
    beq $t1, $t6, .BB10
    b .BB8
.BB10:
    lw $t0, 72($sp)
    move $t1, $t0
    lw $t2, 60($sp)
    move $t3, $t2
    lw $t4, 36($sp)
    move $t5, $t4
    sw $t4, 152($sp)
    sw $t2, 80($sp)
    sw $t0, 160($sp)
    lw $t0, 204($sp)
    move $t1, $t0
    li $t2, 4
    move $t3, $t4
    mult $t3, $t2
    mflo $t4
    addu $t1, $t1, $t4
    lw $t5, 208($sp)
    move $t6, $t5
    li $t7, 4
    lw $t8, 80($sp)
    mult $t8, $t7
    mflo $t9
    addu $t6, $t6, $t9
    lw $s0, 0($t6)
    sw $s0, 0($t1)
    addiu $s1, $t8, 1
    addiu $s2, $t3, 1
    move $s3, $s2
    lw $s4, 160($sp)
    move $s5, $s4
    move $s6, $s1
    move $s7, $s2
    lw $t0, 176($sp)
    sw $s2, 104($sp)
    sw $s1, 108($sp)
    sw $s4, 24($sp)
    sw $s2, 132($sp)
    beq $s3, $t0, .BB13
    move $t0, $s4
    move $t1, $s4
    move $t2, $s1
    move $t3, $s1
    move $t4, $s2
    move $t5, $s2
    lw $t6, 200($sp)
    sw $s2, 120($sp)
    sw $s1, 116($sp)
    sw $s4, 172($sp)
    beq $t1, $t6, .BB9
    move $t0, $s4
    move $t1, $s4
    move $t2, $s1
    move $t3, $s1
    move $t4, $s2
    move $t5, $s2
    lw $t6, 176($sp)
    sw $s2, 184($sp)
    sw $s1, 140($sp)
    sw $s4, 128($sp)
    beq $t3, $t6, .BB3
    b .BB6
.BB11:
    lw $t0, 180($sp)
    move $t1, $t0
    lw $t2, 124($sp)
    move $t3, $t2
    lw $t4, 136($sp)
    move $t5, $t4
    sw $t4, 32($sp)
    sw $t2, 156($sp)
    sw $t0, 76($sp)
    lw $t0, 204($sp)
    move $t1, $t0
    li $t2, 4
    move $t3, $t4
    mult $t3, $t2
    mflo $t4
    addu $t1, $t1, $t4
    lw $t5, 188($sp)
    lw $t6, 0($t5)
    sw $t6, 0($t1)
    lw $t7, 76($sp)
    addiu $t8, $t7, 1
    addiu $t9, $t3, 1
    move $s0, $t9
    move $s1, $t8
    lw $s2, 156($sp)
    move $s3, $s2
    move $s4, $t9
    lw $s5, 176($sp)
    sw $t9, 104($sp)
    sw $s2, 108($sp)
    sw $t8, 24($sp)
    sw $t9, 132($sp)
    beq $s0, $s5, .BB13
    move $t0, $t8
    move $t1, $t8
    move $t2, $s2
    move $t3, $s2
    move $t4, $t9
    move $t5, $t9
    lw $t6, 200($sp)
    sw $t9, 120($sp)
    sw $s2, 116($sp)
    sw $t8, 172($sp)
    beq $t1, $t6, .BB9
    move $t0, $t8
    move $t1, $t8
    move $t2, $s2
    move $t3, $s2
    move $t4, $t9
    move $t5, $t9
    move $t6, $s5
    sw $t9, 184($sp)
    sw $s2, 140($sp)
    sw $t8, 128($sp)
    beq $t3, $t6, .BB3
    b .BB6
.BB12:
    lw $t0, 124($sp)
    move $t1, $t0
    lw $t2, 180($sp)
    move $t3, $t2
    lw $t4, 136($sp)
    move $t5, $t4
    sw $t4, 88($sp)
    sw $t2, 64($sp)
    sw $t0, 52($sp)
    lw $t0, 204($sp)
    move $t1, $t0
    li $t2, 4
    move $t3, $t4
    mult $t3, $t2
    mflo $t4
    addu $t1, $t1, $t4
    lw $t5, 148($sp)
    sw $t5, 0($t1)
    lw $t6, 52($sp)
    addiu $t7, $t6, 1
    addiu $t8, $t3, 1
    move $t9, $t8
    lw $s0, 64($sp)
    move $s1, $s0
    move $s2, $t7
    move $s3, $t8
    lw $s4, 176($sp)
    sw $t8, 104($sp)
    sw $t7, 108($sp)
    sw $s0, 24($sp)
    sw $t8, 132($sp)
    beq $t9, $s4, .BB13
    move $t0, $s0
    move $t1, $s0
    move $t2, $t7
    move $t3, $t7
    move $t4, $t8
    move $t5, $t8
    lw $t6, 200($sp)
    sw $t8, 120($sp)
    sw $t7, 116($sp)
    sw $s0, 172($sp)
    beq $t1, $t6, .BB9
    move $t0, $s0
    move $t1, $s0
    move $t2, $t7
    move $t3, $t7
    move $t4, $t8
    move $t5, $t8
    move $t6, $s4
    sw $t8, 184($sp)
    sw $t7, 140($sp)
    sw $s0, 128($sp)
    beq $t3, $t6, .BB3
    b .BB6
.BB13:
    li $t0, -1
    sb $t0, 96($sp)
    beqz $t0, .BB1
    b .BB7

.globl main
main:
    addiu $sp, $sp, -968
    sw $ra, 16($sp)
    sw $s0, 60($sp)
    sw $s1, 124($sp)
    sw $s2, 956($sp)
    sw $s3, 948($sp)
    sw $s4, 536($sp)
    sw $s5, 128($sp)
    sw $s6, 64($sp)
    sw $s7, 72($sp)
    addiu $t0, $sp, 540
    addiu $t1, $sp, 136
    jal read
    move $t2, $v0
    sgt $t3, $t2, $zero
    sb $t3, 112($sp)
    sw $v0, 80($sp)
    sw $t1, 28($sp)
    sw $t0, 56($sp)
    blez $t2, .BB16
    li $t0, 15
    move $t1, $v0
    sw $t0, 84($sp)
    ble $t1, $t0, .BB19
    b .BB18
.BB15:
    move $v0, $zero
    lw $s7, 72($sp)
    lw $s6, 64($sp)
    lw $s5, 128($sp)
    lw $s4, 536($sp)
    lw $s3, 948($sp)
    lw $s2, 956($sp)
    lw $s1, 124($sp)
    lw $s0, 60($sp)
    lw $ra, 16($sp)
    addiu $sp, $sp, 968
    jr $ra
.BB16:
    lb $t0, 112($sp)
    move $t1, $t0
    sb $t0, 113($sp)
.BB17:
    lw $t0, 56($sp)
    move $a0, $t0
    lw $t1, 28($sp)
    move $a1, $t1
    move $a2, $zero
    lw $t2, 80($sp)
    move $a3, $t2
    jal merge
    move $t3, $v0
    lb $t4, 113($sp)
    beqz $t4, .BB15
    li $t0, 15
    lw $t1, 80($sp)
    sw $t0, 92($sp)
    ble $t1, $t0, .BB23
    b .BB22
.BB18:
    lw $t0, 56($sp)
    move $t1, $t0
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    addiu $t3, $t0, 4
    jal read
    move $t4, $v0
    sw $v0, 0($t3)
    addiu $t5, $t0, 8
    jal read
    move $t6, $v0
    sw $v0, 0($t5)
    addiu $t7, $t0, 12
    jal read
    move $t8, $v0
    sw $v0, 0($t7)
    addiu $t9, $t0, 16
    jal read
    move $s0, $v0
    sw $v0, 0($t9)
    addiu $s1, $t0, 20
    jal read
    move $s2, $v0
    sw $v0, 0($s1)
    addiu $s3, $t0, 24
    jal read
    move $s4, $v0
    sw $v0, 0($s3)
    addiu $s5, $t0, 28
    jal read
    move $s6, $v0
    sw $v0, 0($s5)
    addiu $s7, $t0, 32
    jal read
    move $t0, $v0
    sw $v0, 0($s7)
    lw $t1, 56($sp)
    addiu $t2, $t1, 36
    jal read
    move $t3, $v0
    sw $v0, 0($t2)
    addiu $t4, $t1, 40
    jal read
    move $t5, $v0
    sw $v0, 0($t4)
    addiu $t6, $t1, 44
    jal read
    move $t7, $v0
    sw $v0, 0($t6)
    addiu $t8, $t1, 48
    jal read
    move $t9, $v0
    sw $v0, 0($t8)
    addiu $s0, $t1, 52
    jal read
    move $s1, $v0
    sw $v0, 0($s0)
    addiu $s2, $t1, 56
    jal read
    move $s3, $v0
    sw $v0, 0($s2)
    addiu $s4, $t1, 60
    jal read
    move $s5, $v0
    sw $v0, 0($s4)
    li $s6, 16
    lw $s7, 80($sp)
    ble $s7, $s6, .BB20
    li $t0, 31
    move $t1, $s7
    sw $t0, 36($sp)
    ble $t1, $t0, .BB25
    b .BB24
.BB19:
    lw $t0, 56($sp)
    move $t1, $t0
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    li $t3, 1
    lw $t4, 80($sp)
    ble $t4, $t3, .BB20
    lw $t0, 56($sp)
    addiu $t1, $t0, 4
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    li $t3, 2
    lw $t4, 80($sp)
    ble $t4, $t3, .BB20
    b .BB26
.BB20:
    lw $t0, 56($sp)
    move $a0, $t0
    lw $t1, 28($sp)
    move $a1, $t1
    move $a2, $zero
    lw $t2, 80($sp)
    move $a3, $t2
    jal merge
    move $t3, $v0
    li $t4, 15
    lw $t5, 80($sp)
    ble $t5, $t4, .BB23
    b .BB22
.BB21:
    lw $t0, 56($sp)
    addiu $t1, $t0, 4
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 2
    lw $t4, 80($sp)
    ble $t4, $t3, .BB15
    b .BB31
.BB22:
    lw $t0, 56($sp)
    lw $t1, 0($t0)
    move $a0, $t1
    jal write
    addiu $t2, $t0, 4
    lw $t3, 0($t2)
    move $a0, $t3
    jal write
    addiu $t4, $t0, 8
    lw $t5, 0($t4)
    move $a0, $t5
    jal write
    addiu $t6, $t0, 12
    lw $t7, 0($t6)
    move $a0, $t7
    jal write
    addiu $t8, $t0, 16
    lw $t9, 0($t8)
    move $a0, $t9
    jal write
    addiu $s0, $t0, 20
    lw $s1, 0($s0)
    move $a0, $s1
    jal write
    addiu $s2, $t0, 24
    lw $s3, 0($s2)
    move $a0, $s3
    jal write
    addiu $s4, $t0, 28
    lw $s5, 0($s4)
    move $a0, $s5
    jal write
    addiu $s6, $t0, 32
    lw $s7, 0($s6)
    move $a0, $s7
    jal write
    addiu $t0, $t0, 36
    lw $t1, 0($t0)
    move $a0, $t1
    jal write
    lw $t2, 56($sp)
    addiu $t3, $t2, 40
    lw $t4, 0($t3)
    move $a0, $t4
    jal write
    addiu $t5, $t2, 44
    lw $t6, 0($t5)
    move $a0, $t6
    jal write
    addiu $t7, $t2, 48
    lw $t8, 0($t7)
    move $a0, $t8
    jal write
    addiu $t9, $t2, 52
    lw $s0, 0($t9)
    move $a0, $s0
    jal write
    addiu $s1, $t2, 56
    lw $s2, 0($s1)
    move $a0, $s2
    jal write
    addiu $s3, $t2, 60
    lw $s4, 0($s3)
    move $a0, $s4
    jal write
    li $s5, 16
    lw $s6, 80($sp)
    ble $s6, $s5, .BB15
    li $t0, 31
    move $t1, $s6
    sw $t0, 52($sp)
    ble $t1, $t0, .BB30
    b .BB29
.BB23:
    lw $t0, 56($sp)
    lw $t1, 0($t0)
    move $a0, $t1
    jal write
    li $t2, 1
    lw $t3, 80($sp)
    sw $t2, 48($sp)
    sw $t1, 40($sp)
    ble $t3, $t2, .BB15
    b .BB21
.BB24:
    lw $t0, 56($sp)
    addiu $t1, $t0, 64
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    addiu $t3, $t0, 68
    jal read
    move $t4, $v0
    sw $v0, 0($t3)
    addiu $t5, $t0, 72
    jal read
    move $t6, $v0
    sw $v0, 0($t5)
    addiu $t7, $t0, 76
    jal read
    move $t8, $v0
    sw $v0, 0($t7)
    addiu $t9, $t0, 80
    jal read
    move $s0, $v0
    sw $v0, 0($t9)
    addiu $s1, $t0, 84
    jal read
    move $s2, $v0
    sw $v0, 0($s1)
    addiu $s3, $t0, 88
    jal read
    move $s4, $v0
    sw $v0, 0($s3)
    addiu $s5, $t0, 92
    jal read
    move $s6, $v0
    sw $v0, 0($s5)
    addiu $s7, $t0, 96
    jal read
    move $t0, $v0
    sw $v0, 0($s7)
    lw $t1, 56($sp)
    addiu $t2, $t1, 100
    jal read
    move $t3, $v0
    sw $v0, 0($t2)
    addiu $t4, $t1, 104
    jal read
    move $t5, $v0
    sw $v0, 0($t4)
    addiu $t6, $t1, 108
    jal read
    move $t7, $v0
    sw $v0, 0($t6)
    addiu $t8, $t1, 112
    jal read
    move $t9, $v0
    sw $v0, 0($t8)
    addiu $s0, $t1, 116
    jal read
    move $s1, $v0
    sw $v0, 0($s0)
    addiu $s2, $t1, 120
    jal read
    move $s3, $v0
    sw $v0, 0($s2)
    addiu $s4, $t1, 124
    jal read
    move $s5, $v0
    sw $v0, 0($s4)
    li $s6, 32
    lw $s7, 80($sp)
    ble $s7, $s6, .BB20
    li $t0, 47
    move $t1, $s7
    sw $t0, 100($sp)
    ble $t1, $t0, .BB33
    b .BB27
.BB25:
    lw $t0, 56($sp)
    addiu $t1, $t0, 64
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    li $t3, 17
    lw $t4, 80($sp)
    ble $t4, $t3, .BB20
    b .BB32
.BB26:
    lw $t0, 56($sp)
    addiu $t1, $t0, 8
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    li $t3, 3
    lw $t4, 80($sp)
    ble $t4, $t3, .BB20
    b .BB28
.BB27:
    lw $t0, 56($sp)
    addiu $t1, $t0, 128
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    addiu $t3, $t0, 132
    jal read
    move $t4, $v0
    sw $v0, 0($t3)
    addiu $t5, $t0, 136
    jal read
    move $t6, $v0
    sw $v0, 0($t5)
    addiu $t7, $t0, 140
    jal read
    move $t8, $v0
    sw $v0, 0($t7)
    addiu $t9, $t0, 144
    jal read
    move $s0, $v0
    sw $v0, 0($t9)
    addiu $s1, $t0, 148
    jal read
    move $s2, $v0
    sw $v0, 0($s1)
    addiu $s3, $t0, 152
    jal read
    move $s4, $v0
    sw $v0, 0($s3)
    addiu $s5, $t0, 156
    jal read
    move $s6, $v0
    sw $v0, 0($s5)
    addiu $s7, $t0, 160
    jal read
    move $t0, $v0
    sw $v0, 0($s7)
    lw $t1, 56($sp)
    addiu $t2, $t1, 164
    jal read
    move $t3, $v0
    sw $v0, 0($t2)
    addiu $t4, $t1, 168
    jal read
    move $t5, $v0
    sw $v0, 0($t4)
    addiu $t6, $t1, 172
    jal read
    move $t7, $v0
    sw $v0, 0($t6)
    addiu $t8, $t1, 176
    jal read
    move $t9, $v0
    sw $v0, 0($t8)
    addiu $s0, $t1, 180
    jal read
    move $s1, $v0
    sw $v0, 0($s0)
    addiu $s2, $t1, 184
    jal read
    move $s3, $v0
    sw $v0, 0($s2)
    addiu $s4, $t1, 188
    jal read
    move $s5, $v0
    sw $v0, 0($s4)
    li $s6, 48
    lw $s7, 80($sp)
    ble $s7, $s6, .BB20
    li $t0, 63
    move $t1, $s7
    sw $t0, 116($sp)
    ble $t1, $t0, .BB46
    b .BB45
.BB28:
    lw $t0, 56($sp)
    addiu $t1, $t0, 12
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    li $t3, 4
    lw $t4, 80($sp)
    ble $t4, $t3, .BB20
    b .BB35
.BB29:
    lw $t0, 56($sp)
    addiu $t1, $t0, 64
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    addiu $t3, $t0, 68
    lw $t4, 0($t3)
    move $a0, $t4
    jal write
    addiu $t5, $t0, 72
    lw $t6, 0($t5)
    move $a0, $t6
    jal write
    addiu $t7, $t0, 76
    lw $t8, 0($t7)
    move $a0, $t8
    jal write
    addiu $t9, $t0, 80
    lw $s0, 0($t9)
    move $a0, $s0
    jal write
    addiu $s1, $t0, 84
    lw $s2, 0($s1)
    move $a0, $s2
    jal write
    addiu $s3, $t0, 88
    lw $s4, 0($s3)
    move $a0, $s4
    jal write
    addiu $s5, $t0, 92
    lw $s6, 0($s5)
    move $a0, $s6
    jal write
    addiu $s7, $t0, 96
    lw $t0, 0($s7)
    move $a0, $t0
    jal write
    lw $t1, 56($sp)
    addiu $t2, $t1, 100
    lw $t3, 0($t2)
    move $a0, $t3
    jal write
    addiu $t4, $t1, 104
    lw $t5, 0($t4)
    move $a0, $t5
    jal write
    addiu $t6, $t1, 108
    lw $t7, 0($t6)
    move $a0, $t7
    jal write
    addiu $t8, $t1, 112
    lw $t9, 0($t8)
    move $a0, $t9
    jal write
    addiu $s0, $t1, 116
    lw $s1, 0($s0)
    move $a0, $s1
    jal write
    addiu $s2, $t1, 120
    lw $s3, 0($s2)
    move $a0, $s3
    jal write
    addiu $s4, $t1, 124
    lw $s5, 0($s4)
    move $a0, $s5
    jal write
    li $s6, 32
    lw $s7, 80($sp)
    ble $s7, $s6, .BB15
    li $t0, 47
    move $t1, $s7
    sw $t0, 44($sp)
    ble $t1, $t0, .BB43
    b .BB42
.BB30:
    lw $t0, 56($sp)
    addiu $t1, $t0, 64
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 17
    lw $t4, 80($sp)
    ble $t4, $t3, .BB15
    b .BB36
.BB31:
    lw $t0, 56($sp)
    addiu $t1, $t0, 8
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 3
    lw $t4, 80($sp)
    ble $t4, $t3, .BB15
    lw $t0, 56($sp)
    addiu $t1, $t0, 12
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 4
    lw $t4, 80($sp)
    ble $t4, $t3, .BB15
    b .BB37
.BB32:
    lw $t0, 56($sp)
    addiu $t1, $t0, 68
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    li $t3, 18
    lw $t4, 80($sp)
    ble $t4, $t3, .BB20
    b .BB34
.BB33:
    lw $t0, 56($sp)
    addiu $t1, $t0, 128
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    li $t3, 33
    lw $t4, 80($sp)
    ble $t4, $t3, .BB38
    b .BB39
.BB34:
    lw $t0, 56($sp)
    addiu $t1, $t0, 72
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    li $t3, 19
    lw $t4, 80($sp)
    ble $t4, $t3, .BB38
    b .BB40
.BB35:
    lw $t0, 56($sp)
    addiu $t1, $t0, 16
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    li $t3, 5
    lw $t4, 80($sp)
    ble $t4, $t3, .BB38
    lw $t0, 56($sp)
    addiu $t1, $t0, 20
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    li $t3, 6
    lw $t4, 80($sp)
    ble $t4, $t3, .BB38
    b .BB49
.BB36:
    lw $t0, 56($sp)
    addiu $t1, $t0, 68
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 18
    lw $t4, 80($sp)
    ble $t4, $t3, .BB15
    lw $t0, 56($sp)
    addiu $t1, $t0, 72
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 19
    lw $t4, 80($sp)
    ble $t4, $t3, .BB15
    b .BB44
.BB37:
    lw $t0, 56($sp)
    addiu $t1, $t0, 16
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 5
    lw $t4, 80($sp)
    ble $t4, $t3, .BB15
    b .BB52
.BB38:
    lw $t0, 56($sp)
    move $a0, $t0
    lw $t1, 28($sp)
    move $a1, $t1
    move $a2, $zero
    lw $t2, 80($sp)
    move $a3, $t2
    jal merge
    move $t3, $v0
    li $t4, 15
    lw $t5, 80($sp)
    sw $t4, 92($sp)
    ble $t5, $t4, .BB23
    b .BB22
.BB39:
    lw $t0, 56($sp)
    addiu $t1, $t0, 132
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    li $t3, 34
    lw $t4, 80($sp)
    ble $t4, $t3, .BB38
    b .BB47
.BB40:
    lw $t0, 56($sp)
    addiu $t1, $t0, 76
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    li $t3, 20
    lw $t4, 80($sp)
    ble $t4, $t3, .BB38
    b .BB48
.BB41:
    li $t0, 49
    sw $t0, 940($sp)
    b .BB63
.BB42:
    lw $t0, 56($sp)
    addiu $t1, $t0, 128
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    addiu $t3, $t0, 132
    lw $t4, 0($t3)
    move $a0, $t4
    jal write
    addiu $t5, $t0, 136
    lw $t6, 0($t5)
    move $a0, $t6
    jal write
    addiu $t7, $t0, 140
    lw $t8, 0($t7)
    move $a0, $t8
    jal write
    addiu $t9, $t0, 144
    lw $s0, 0($t9)
    move $a0, $s0
    jal write
    addiu $s1, $t0, 148
    lw $s2, 0($s1)
    move $a0, $s2
    jal write
    addiu $s3, $t0, 152
    lw $s4, 0($s3)
    move $a0, $s4
    jal write
    addiu $s5, $t0, 156
    lw $s6, 0($s5)
    move $a0, $s6
    jal write
    addiu $s7, $t0, 160
    lw $t0, 0($s7)
    move $a0, $t0
    jal write
    lw $t1, 56($sp)
    addiu $t2, $t1, 164
    lw $t3, 0($t2)
    move $a0, $t3
    jal write
    addiu $t4, $t1, 168
    lw $t5, 0($t4)
    move $a0, $t5
    jal write
    addiu $t6, $t1, 172
    lw $t7, 0($t6)
    move $a0, $t7
    jal write
    addiu $t8, $t1, 176
    lw $t9, 0($t8)
    move $a0, $t9
    jal write
    addiu $s0, $t1, 180
    lw $s1, 0($s0)
    move $a0, $s1
    jal write
    addiu $s2, $t1, 184
    lw $s3, 0($s2)
    move $a0, $s3
    jal write
    addiu $s4, $t1, 188
    lw $s5, 0($s4)
    move $a0, $s5
    jal write
    li $s6, 48
    lw $s7, 80($sp)
    ble $s7, $s6, .BB15
    li $t0, 63
    move $t1, $s7
    sw $t0, 88($sp)
    ble $t1, $t0, .BB51
    b .BB55
.BB43:
    lw $t0, 56($sp)
    addiu $t1, $t0, 128
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 33
    lw $t4, 80($sp)
    ble $t4, $t3, .BB15
    b .BB50
.BB44:
    lw $t0, 56($sp)
    addiu $t1, $t0, 76
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 20
    lw $t4, 80($sp)
    ble $t4, $t3, .BB15
    b .BB58
.BB45:
    lw $t0, 56($sp)
    addiu $t1, $t0, 192
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    addiu $t3, $t0, 196
    jal read
    move $t4, $v0
    sw $v0, 0($t3)
    addiu $t5, $t0, 200
    jal read
    move $t6, $v0
    sw $v0, 0($t5)
    addiu $t7, $t0, 204
    jal read
    move $t8, $v0
    sw $v0, 0($t7)
    addiu $t9, $t0, 208
    jal read
    move $s0, $v0
    sw $v0, 0($t9)
    addiu $s1, $t0, 212
    jal read
    move $s2, $v0
    sw $v0, 0($s1)
    addiu $s3, $t0, 216
    jal read
    move $s4, $v0
    sw $v0, 0($s3)
    addiu $s5, $t0, 220
    jal read
    move $s6, $v0
    sw $v0, 0($s5)
    addiu $s7, $t0, 224
    jal read
    move $t0, $v0
    sw $v0, 0($s7)
    lw $t1, 56($sp)
    addiu $t2, $t1, 228
    jal read
    move $t3, $v0
    sw $v0, 0($t2)
    addiu $t4, $t1, 232
    jal read
    move $t5, $v0
    sw $v0, 0($t4)
    addiu $t6, $t1, 236
    jal read
    move $t7, $v0
    sw $v0, 0($t6)
    addiu $t8, $t1, 240
    jal read
    move $t9, $v0
    sw $v0, 0($t8)
    addiu $s0, $t1, 244
    jal read
    move $s1, $v0
    sw $v0, 0($s0)
    addiu $s2, $t1, 248
    jal read
    move $s3, $v0
    sw $v0, 0($s2)
    addiu $s4, $t1, 252
    jal read
    move $s5, $v0
    sw $v0, 0($s4)
    li $s6, 64
    lw $s7, 80($sp)
    ble $s7, $s6, .BB20
    li $t0, 64
    addiu $t1, $t0, 15
    move $t2, $s7
    sw $t1, 108($sp)
    sw $t0, 944($sp)
    bge $t1, $t2, .BB53
    b .BB60
.BB46:
    lw $t0, 56($sp)
    addiu $t1, $t0, 192
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    li $t3, 49
    lw $t4, 80($sp)
    ble $t4, $t3, .BB56
    li $t0, 49
    sw $t0, 96($sp)
    b .BB54
.BB47:
    lw $t0, 56($sp)
    addiu $t1, $t0, 136
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    li $t3, 35
    lw $t4, 80($sp)
    ble $t4, $t3, .BB56
    li $t0, 35
    sw $t0, 96($sp)
    b .BB54
.BB48:
    lw $t0, 56($sp)
    addiu $t1, $t0, 80
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    li $t3, 21
    lw $t4, 80($sp)
    ble $t4, $t3, .BB56
    li $t0, 21
    sw $t0, 96($sp)
    b .BB54
.BB49:
    lw $t0, 56($sp)
    addiu $t1, $t0, 24
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    li $t3, 7
    lw $t4, 80($sp)
    ble $t4, $t3, .BB56
    li $t0, 7
    sw $t0, 96($sp)
    b .BB54
.BB50:
    lw $t0, 56($sp)
    addiu $t1, $t0, 132
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 34
    lw $t4, 80($sp)
    ble $t4, $t3, .BB15
    b .BB57
.BB51:
    lw $t0, 56($sp)
    addiu $t1, $t0, 192
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 49
    lw $t4, 80($sp)
    ble $t4, $t3, .BB15
    b .BB41
.BB52:
    lw $t0, 56($sp)
    addiu $t1, $t0, 20
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 6
    lw $t4, 80($sp)
    ble $t4, $t3, .BB15
    b .BB59
.BB53:
    lw $t0, 944($sp)
    move $t1, $t0
    sw $t0, 96($sp)
.BB54:
    lw $t0, 56($sp)
    move $t1, $t0
    li $t2, 4
    lw $t3, 96($sp)
    mult $t3, $t2
    mflo $t4
    addu $t1, $t1, $t4
    jal read
    move $t5, $v0
    sw $v0, 0($t1)
    addiu $t6, $t3, 1
    lw $t7, 80($sp)
    sw $t6, 132($sp)
    bge $t6, $t7, .BB56
    move $t0, $t6
    move $t1, $t6
    sw $t6, 96($sp)
    b .BB54
.BB55:
    lw $t0, 56($sp)
    addiu $t1, $t0, 192
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    addiu $t3, $t0, 196
    lw $t4, 0($t3)
    move $a0, $t4
    jal write
    addiu $t5, $t0, 200
    lw $t6, 0($t5)
    move $a0, $t6
    jal write
    addiu $t7, $t0, 204
    lw $t8, 0($t7)
    move $a0, $t8
    jal write
    addiu $t9, $t0, 208
    lw $s0, 0($t9)
    move $a0, $s0
    jal write
    addiu $s1, $t0, 212
    lw $s2, 0($s1)
    move $a0, $s2
    jal write
    addiu $s3, $t0, 216
    lw $s4, 0($s3)
    move $a0, $s4
    jal write
    addiu $s5, $t0, 220
    lw $s6, 0($s5)
    move $a0, $s6
    jal write
    addiu $s7, $t0, 224
    lw $t0, 0($s7)
    move $a0, $t0
    jal write
    lw $t1, 56($sp)
    addiu $t2, $t1, 228
    lw $t3, 0($t2)
    move $a0, $t3
    jal write
    addiu $t4, $t1, 232
    lw $t5, 0($t4)
    move $a0, $t5
    jal write
    addiu $t6, $t1, 236
    lw $t7, 0($t6)
    move $a0, $t7
    jal write
    addiu $t8, $t1, 240
    lw $t9, 0($t8)
    move $a0, $t9
    jal write
    addiu $s0, $t1, 244
    lw $s1, 0($s0)
    move $a0, $s1
    jal write
    addiu $s2, $t1, 248
    lw $s3, 0($s2)
    move $a0, $s3
    jal write
    addiu $s4, $t1, 252
    lw $s5, 0($s4)
    move $a0, $s5
    jal write
    li $s6, 64
    lw $s7, 80($sp)
    ble $s7, $s6, .BB15
    li $t0, 64
    addiu $t1, $t0, 15
    move $t2, $s7
    sw $t1, 76($sp)
    sw $t0, 24($sp)
    bge $t1, $t2, .BB62
    b .BB61
.BB56:
    li $t0, -1
    sb $t0, 113($sp)
    b .BB17
.BB57:
    lw $t0, 56($sp)
    addiu $t1, $t0, 136
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 35
    lw $t4, 80($sp)
    ble $t4, $t3, .BB15
    li $t0, 35
    sw $t0, 940($sp)
    b .BB63
.BB58:
    lw $t0, 56($sp)
    addiu $t1, $t0, 80
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 21
    lw $t4, 80($sp)
    ble $t4, $t3, .BB15
    li $t0, 21
    sw $t0, 940($sp)
    b .BB63
.BB59:
    lw $t0, 56($sp)
    addiu $t1, $t0, 24
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 7
    lw $t4, 80($sp)
    ble $t4, $t3, .BB15
    li $t0, 7
    sw $t0, 940($sp)
    b .BB63
.BB60:
    lw $t0, 944($sp)
    move $t1, $t0
    sw $t0, 32($sp)
    lw $t0, 56($sp)
    move $t1, $t0
    li $t2, 4
    lw $t3, 32($sp)
    mult $t3, $t2
    mflo $t4
    addu $t1, $t1, $t4
    jal read
    move $t5, $v0
    sw $v0, 0($t1)
    addiu $t6, $t1, 4
    jal read
    move $t7, $v0
    sw $v0, 0($t6)
    addiu $t8, $t1, 8
    jal read
    move $t9, $v0
    sw $v0, 0($t8)
    addiu $s0, $t1, 12
    jal read
    move $s1, $v0
    sw $v0, 0($s0)
    addiu $s2, $t1, 16
    jal read
    move $s3, $v0
    sw $v0, 0($s2)
    addiu $s4, $t1, 20
    jal read
    move $s5, $v0
    sw $v0, 0($s4)
    addiu $s6, $t1, 24
    jal read
    move $s7, $v0
    sw $v0, 0($s6)
    addiu $t0, $t1, 28
    jal read
    sw $t1, 104($sp)
    move $t1, $v0
    sw $v0, 0($t0)
    lw $t2, 104($sp)
    addiu $t3, $t2, 32
    jal read
    move $t4, $v0
    sw $v0, 0($t3)
    addiu $t5, $t2, 36
    jal read
    move $t6, $v0
    sw $v0, 0($t5)
    addiu $t7, $t2, 40
    jal read
    move $t8, $v0
    sw $v0, 0($t7)
    addiu $t9, $t2, 44
    jal read
    move $s0, $v0
    sw $v0, 0($t9)
    addiu $s1, $t2, 48
    jal read
    move $s2, $v0
    sw $v0, 0($s1)
    addiu $s3, $t2, 52
    jal read
    move $s4, $v0
    sw $v0, 0($s3)
    addiu $s5, $t2, 56
    jal read
    move $s6, $v0
    sw $v0, 0($s5)
    addiu $s7, $t2, 60
    jal read
    move $t0, $v0
    sw $v0, 0($s7)
    lw $t1, 32($sp)
    addiu $t2, $t1, 16
    lw $t3, 80($sp)
    sw $t2, 952($sp)
    bge $t2, $t3, .BB20
    move $t0, $t2
    move $t1, $t2
    addiu $t2, $t1, 15
    sw $t2, 108($sp)
    sw $t1, 944($sp)
    bge $t2, $t3, .BB53
    b .BB60
.BB61:
    lw $t0, 24($sp)
    move $t1, $t0
    sw $t0, 68($sp)
    b .BB64
.BB62:
    lw $t0, 24($sp)
    move $t1, $t0
    sw $t0, 940($sp)
.BB63:
    lw $t0, 56($sp)
    move $t1, $t0
    li $t2, 4
    lw $t3, 940($sp)
    mult $t3, $t2
    mflo $t4
    addu $t1, $t1, $t4
    lw $t5, 0($t1)
    move $a0, $t5
    jal write
    addiu $t6, $t3, 1
    lw $t7, 80($sp)
    sw $t6, 960($sp)
    bge $t6, $t7, .BB15
    move $t0, $t6
    move $t1, $t6
    sw $t6, 940($sp)
    b .BB63
.BB64:
    lw $t0, 56($sp)
    move $t1, $t0
    li $t2, 4
    lw $t3, 68($sp)
    mult $t3, $t2
    mflo $t4
    addu $t1, $t1, $t4
    lw $t5, 0($t1)
    move $a0, $t5
    jal write
    addiu $t6, $t1, 4
    lw $t7, 0($t6)
    move $a0, $t7
    jal write
    addiu $t8, $t1, 8
    lw $t9, 0($t8)
    move $a0, $t9
    jal write
    addiu $s0, $t1, 12
    lw $s1, 0($s0)
    move $a0, $s1
    jal write
    addiu $s2, $t1, 16
    lw $s3, 0($s2)
    move $a0, $s3
    jal write
    addiu $s4, $t1, 20
    lw $s5, 0($s4)
    move $a0, $s5
    jal write
    addiu $s6, $t1, 24
    lw $s7, 0($s6)
    move $a0, $s7
    jal write
    addiu $t0, $t1, 28
    sw $t1, 104($sp)
    lw $t1, 0($t0)
    move $a0, $t1
    jal write
    lw $t2, 104($sp)
    addiu $t3, $t2, 32
    lw $t4, 0($t3)
    move $a0, $t4
    jal write
    addiu $t5, $t2, 36
    lw $t6, 0($t5)
    move $a0, $t6
    jal write
    addiu $t7, $t2, 40
    lw $t8, 0($t7)
    move $a0, $t8
    jal write
    addiu $t9, $t2, 44
    lw $s0, 0($t9)
    move $a0, $s0
    jal write
    addiu $s1, $t2, 48
    lw $s2, 0($s1)
    move $a0, $s2
    jal write
    addiu $s3, $t2, 52
    lw $s4, 0($s3)
    move $a0, $s4
    jal write
    addiu $s5, $t2, 56
    lw $s6, 0($s5)
    move $a0, $s6
    jal write
    addiu $s7, $t2, 60
    lw $t0, 0($s7)
    move $a0, $t0
    jal write
    lw $t1, 68($sp)
    addiu $t2, $t1, 16
    lw $t3, 80($sp)
    sw $t2, 120($sp)
    bge $t2, $t3, .BB15
    move $t0, $t2
    move $t1, $t2
    addiu $t2, $t1, 15
    sw $t2, 76($sp)
    sw $t1, 24($sp)
    bge $t2, $t3, .BB62
    b .BB61

