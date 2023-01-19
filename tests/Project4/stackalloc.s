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
main:
    addiu $sp, $sp, -640
    sw $ra, 16($sp)
    sw $s0, 608($sp)
    sw $s1, 68($sp)
    sw $s2, 84($sp)
    sw $s3, 128($sp)
    sw $s4, 164($sp)
    sw $s5, 116($sp)
    sw $s6, 100($sp)
    sw $s7, 36($sp)
    addiu $t0, $sp, 180
    jal read
    move $t1, $v0
    sgt $t2, $t1, $zero
    sb $t2, 124($sp)
    sw $t1, 32($sp)
    sw $t0, 108($sp)
    blez $t1, .BB1
    b .BB5
.BB1:
    lb $t0, 124($sp)
    move $t1, $t0
    sb $t1, 632($sp)
    b .BB4
.BB2:
    lw $t0, 56($sp)
    move $t1, $t0
    lb $t2, 156($sp)
    move $t3, $t2
    sb $t3, 88($sp)
    sw $t1, 588($sp)
    b .BB18
.BB3:
    li $t0, -1
    sb $t0, 632($sp)
.BB4:
    li $t0, 1
    lw $t1, 32($sp)
    ble $t1, $t0, .BB9
    b .BB7
.BB5:
    li $t0, 15
    lw $t1, 32($sp)
    ble $t1, $t0, .BB6
    lw $t0, 108($sp)
    move $t1, $t0
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    addiu $t3, $t0, 4
    jal read
    move $t4, $v0
    sw $t4, 0($t3)
    addiu $t5, $t0, 8
    jal read
    move $t6, $v0
    sw $t6, 0($t5)
    addiu $t7, $t0, 12
    jal read
    move $t8, $v0
    sw $t8, 0($t7)
    addiu $t9, $t0, 16
    jal read
    move $s0, $v0
    sw $s0, 0($t9)
    addiu $s1, $t0, 20
    jal read
    move $s2, $v0
    sw $s2, 0($s1)
    addiu $s3, $t0, 24
    jal read
    move $s4, $v0
    sw $s4, 0($s3)
    addiu $s5, $t0, 28
    jal read
    move $s6, $v0
    sw $s6, 0($s5)
    addiu $s7, $t0, 32
    jal read
    move $t0, $v0
    sw $t0, 0($s7)
    lw $t1, 108($sp)
    addiu $t2, $t1, 36
    jal read
    move $t3, $v0
    sw $t3, 0($t2)
    addiu $t4, $t1, 40
    jal read
    move $t5, $v0
    sw $t5, 0($t4)
    addiu $t6, $t1, 44
    jal read
    move $t7, $v0
    sw $t7, 0($t6)
    addiu $t8, $t1, 48
    jal read
    move $t9, $v0
    sw $t9, 0($t8)
    addiu $s0, $t1, 52
    jal read
    move $s1, $v0
    sw $s1, 0($s0)
    addiu $s2, $t1, 56
    jal read
    move $s3, $v0
    sw $s3, 0($s2)
    addiu $s4, $t1, 60
    jal read
    move $s5, $v0
    sw $s5, 0($s4)
    li $s6, 16
    lw $s7, 32($sp)
    ble $s7, $s6, .BB12
    b .BB11
.BB6:
    lw $t0, 108($sp)
    move $t1, $t0
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 1
    lw $t4, 32($sp)
    ble $t4, $t3, .BB12
    b .BB14
.BB7:
    lb $t0, 632($sp)
    move $t1, $t0
    sb $t1, 156($sp)
.BB8:
    lw $t0, 108($sp)
    addiu $t1, $t0, 4
    lw $t2, 0($t1)
    move $t3, $t0
    lw $t4, 0($t3)
    sw $t2, 56($sp)
    ble $t4, $t2, .BB2
    lb $t0, 156($sp)
    move $t1, $t0
    sb $t1, 168($sp)
    b .BB15
.BB9:
    lb $t0, 632($sp)
    move $t1, $t0
    sb $t1, 24($sp)
.BB10:
    lb $t0, 24($sp)
    beqz $t0, .BB21
    b .BB19
.BB11:
    li $t0, 31
    lw $t1, 32($sp)
    ble $t1, $t0, .BB23
    b .BB22
.BB12:
    li $t0, 1
    lw $t1, 32($sp)
    ble $t1, $t0, .BB16
    b .BB26
.BB13:
    li $t0, -1
    sb $t0, 24($sp)
    b .BB10
.BB14:
    lw $t0, 108($sp)
    addiu $t1, $t0, 4
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 2
    lw $t4, 32($sp)
    ble $t4, $t3, .BB12
    lw $t0, 108($sp)
    addiu $t1, $t0, 8
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 3
    lw $t4, 32($sp)
    ble $t4, $t3, .BB12
    b .BB33
.BB15:
    lw $t0, 108($sp)
    addiu $t1, $t0, 4
    move $t2, $t0
    lw $t3, 0($t2)
    sw $t3, 0($t1)
    lw $t4, 56($sp)
    sw $t4, 0($t2)
    li $t5, 2
    lw $t6, 32($sp)
    ble $t6, $t5, .BB34
    lb $t0, 168($sp)
    move $t1, $t0
    sb $t1, 76($sp)
    b .BB24
.BB16:
    li $t0, -1
    sb $t0, 24($sp)
    b .BB10
.BB17:
    lw $t0, 624($sp)
    move $t1, $t0
    li $t2, -1
    sb $t2, 88($sp)
    sw $t1, 588($sp)
.BB18:
    lw $t0, 108($sp)
    addiu $t1, $t0, 4
    lw $t2, 588($sp)
    sw $t2, 0($t1)
    li $t3, 2
    lw $t4, 32($sp)
    ble $t4, $t3, .BB35
    li $t0, 2
    lb $t1, 88($sp)
    move $t2, $t1
    sb $t2, 52($sp)
    sw $t0, 44($sp)
    b .BB27
.BB19:
    li $t0, 15
    lw $t1, 32($sp)
    ble $t1, $t0, .BB29
    b .BB28
.BB20:
    lw $t0, 44($sp)
    move $t1, $t0
    lw $t2, 580($sp)
    move $t3, $t2
    lw $t4, 600($sp)
    move $t5, $t4
    lb $t6, 52($sp)
    move $t7, $t6
    sb $t7, 620($sp)
    sw $t5, 40($sp)
    sw $t3, 592($sp)
    sw $t1, 584($sp)
    b .BB46
.BB21:
    move $v0, $zero
    lw $s7, 36($sp)
    lw $s6, 100($sp)
    lw $s5, 116($sp)
    lw $s4, 164($sp)
    lw $s3, 128($sp)
    lw $s2, 84($sp)
    lw $s1, 68($sp)
    lw $s0, 608($sp)
    lw $ra, 16($sp)
    addiu $sp, $sp, 640
    jr $ra
.BB22:
    lw $t0, 108($sp)
    addiu $t1, $t0, 64
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    addiu $t3, $t0, 68
    jal read
    move $t4, $v0
    sw $t4, 0($t3)
    addiu $t5, $t0, 72
    jal read
    move $t6, $v0
    sw $t6, 0($t5)
    addiu $t7, $t0, 76
    jal read
    move $t8, $v0
    sw $t8, 0($t7)
    addiu $t9, $t0, 80
    jal read
    move $s0, $v0
    sw $s0, 0($t9)
    addiu $s1, $t0, 84
    jal read
    move $s2, $v0
    sw $s2, 0($s1)
    addiu $s3, $t0, 88
    jal read
    move $s4, $v0
    sw $s4, 0($s3)
    addiu $s5, $t0, 92
    jal read
    move $s6, $v0
    sw $s6, 0($s5)
    addiu $s7, $t0, 96
    jal read
    move $t0, $v0
    sw $t0, 0($s7)
    lw $t1, 108($sp)
    addiu $t2, $t1, 100
    jal read
    move $t3, $v0
    sw $t3, 0($t2)
    addiu $t4, $t1, 104
    jal read
    move $t5, $v0
    sw $t5, 0($t4)
    addiu $t6, $t1, 108
    jal read
    move $t7, $v0
    sw $t7, 0($t6)
    addiu $t8, $t1, 112
    jal read
    move $t9, $v0
    sw $t9, 0($t8)
    addiu $s0, $t1, 116
    jal read
    move $s1, $v0
    sw $s1, 0($s0)
    addiu $s2, $t1, 120
    jal read
    move $s3, $v0
    sw $s3, 0($s2)
    addiu $s4, $t1, 124
    jal read
    move $s5, $v0
    sw $s5, 0($s4)
    li $s6, 32
    lw $s7, 32($sp)
    ble $s7, $s6, .BB12
    b .BB47
.BB23:
    lw $t0, 108($sp)
    addiu $t1, $t0, 64
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 17
    lw $t4, 32($sp)
    ble $t4, $t3, .BB12
    b .BB32
.BB24:
    lw $t0, 108($sp)
    addiu $t1, $t0, 8
    lw $t2, 0($t1)
    addiu $t3, $t0, 4
    lw $t4, 0($t3)
    sw $t2, 136($sp)
    ble $t4, $t2, .BB25
    lw $t0, 136($sp)
    move $t1, $t0
    lb $t2, 76($sp)
    move $t3, $t2
    sb $t3, 612($sp)
    sw $t1, 64($sp)
    b .BB51
.BB25:
    lw $t0, 136($sp)
    move $t1, $t0
    lb $t2, 76($sp)
    move $t3, $t2
    sb $t3, 176($sp)
    sw $t1, 144($sp)
    b .BB39
.BB26:
    lw $t0, 108($sp)
    addiu $t1, $t0, 4
    lw $t2, 0($t1)
    move $t3, $t0
    lw $t4, 0($t3)
    sw $t2, 624($sp)
    ble $t4, $t2, .BB17
    lw $t0, 108($sp)
    addiu $t1, $t0, 4
    move $t2, $t0
    lw $t3, 0($t2)
    sw $t3, 0($t1)
    lw $t4, 624($sp)
    sw $t4, 0($t2)
    li $t5, 2
    lw $t6, 32($sp)
    ble $t6, $t5, .BB19
    b .BB50
.BB27:
    lw $t0, 108($sp)
    move $t1, $t0
    li $t2, 4
    lw $t3, 44($sp)
    mult $t3, $t2
    mflo $t4
    addu $t1, $t1, $t4
    lw $t5, 0($t1)
    addiu $t6, $t3, -1
    li $t7, -1
    sw $t6, 600($sp)
    sw $t5, 580($sp)
    ble $t6, $t7, .BB20
    lw $t0, 44($sp)
    move $t1, $t0
    lw $t2, 580($sp)
    move $t3, $t2
    lw $t4, 600($sp)
    move $t5, $t4
    lb $t6, 52($sp)
    move $t7, $t6
    sb $t7, 104($sp)
    sw $t5, 160($sp)
    sw $t3, 92($sp)
    sw $t1, 112($sp)
    b .BB43
.BB28:
    lw $t0, 108($sp)
    move $t1, $t0
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    addiu $t3, $t0, 4
    lw $t4, 0($t3)
    move $a0, $t4
    jal write
    addiu $t5, $t0, 8
    lw $t6, 0($t5)
    move $a0, $t6
    jal write
    addiu $t7, $t0, 12
    lw $t8, 0($t7)
    move $a0, $t8
    jal write
    addiu $t9, $t0, 16
    lw $s0, 0($t9)
    move $a0, $s0
    jal write
    addiu $s1, $t0, 20
    lw $s2, 0($s1)
    move $a0, $s2
    jal write
    addiu $s3, $t0, 24
    lw $s4, 0($s3)
    move $a0, $s4
    jal write
    addiu $s5, $t0, 28
    lw $s6, 0($s5)
    move $a0, $s6
    jal write
    addiu $s7, $t0, 32
    lw $t0, 0($s7)
    move $a0, $t0
    jal write
    lw $t1, 108($sp)
    addiu $t2, $t1, 36
    lw $t3, 0($t2)
    move $a0, $t3
    jal write
    addiu $t4, $t1, 40
    lw $t5, 0($t4)
    move $a0, $t5
    jal write
    addiu $t6, $t1, 44
    lw $t7, 0($t6)
    move $a0, $t7
    jal write
    addiu $t8, $t1, 48
    lw $t9, 0($t8)
    move $a0, $t9
    jal write
    addiu $s0, $t1, 52
    lw $s1, 0($s0)
    move $a0, $s1
    jal write
    addiu $s2, $t1, 56
    lw $s3, 0($s2)
    move $a0, $s3
    jal write
    addiu $s4, $t1, 60
    lw $s5, 0($s4)
    move $a0, $s5
    jal write
    li $s6, 16
    lw $s7, 32($sp)
    ble $s7, $s6, .BB21
    b .BB41
.BB29:
    lw $t0, 108($sp)
    move $t1, $t0
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 1
    lw $t4, 32($sp)
    ble $t4, $t3, .BB21
    lw $t0, 108($sp)
    addiu $t1, $t0, 4
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 2
    lw $t4, 32($sp)
    ble $t4, $t3, .BB21
    b .BB53
.BB30:
    lb $t0, 620($sp)
    move $t1, $t0
    sb $t1, 24($sp)
    b .BB10
.BB31:
    li $t0, 2
    lw $t1, 64($sp)
    move $t2, $t1
    move $t3, $zero
    lb $t4, 612($sp)
    move $t5, $t4
    sb $t5, 620($sp)
    sw $t3, 40($sp)
    sw $t2, 592($sp)
    sw $t0, 584($sp)
    b .BB46
.BB32:
    lw $t0, 108($sp)
    addiu $t1, $t0, 68
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 18
    lw $t4, 32($sp)
    ble $t4, $t3, .BB12
    b .BB49
.BB33:
    lw $t0, 108($sp)
    addiu $t1, $t0, 12
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 4
    lw $t4, 32($sp)
    ble $t4, $t3, .BB12
    lw $t0, 108($sp)
    addiu $t1, $t0, 16
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 5
    lw $t4, 32($sp)
    ble $t4, $t3, .BB59
    b .BB57
.BB34:
    lb $t0, 168($sp)
    move $t1, $t0
    sb $t1, 24($sp)
    b .BB10
.BB35:
    lb $t0, 88($sp)
    move $t1, $t0
    sb $t1, 24($sp)
    b .BB10
.BB36:
    li $t0, -1
    sb $t0, 632($sp)
    b .BB4
.BB37:
    li $t0, -1
    sb $t0, 632($sp)
    b .BB4
.BB38:
    lw $t0, 48($sp)
    move $t1, $t0
    li $t2, -1
    sb $t2, 176($sp)
    sw $t1, 144($sp)
.BB39:
    lw $t0, 108($sp)
    addiu $t1, $t0, 8
    lw $t2, 144($sp)
    sw $t2, 0($t1)
    li $t3, 3
    lw $t4, 32($sp)
    ble $t4, $t3, .BB40
    li $t0, 3
    lb $t1, 176($sp)
    move $t2, $t1
    sb $t2, 52($sp)
    sw $t0, 44($sp)
    b .BB27
.BB40:
    lb $t0, 176($sp)
    move $t1, $t0
    sb $t1, 24($sp)
    b .BB10
.BB41:
    li $t0, 31
    lw $t1, 32($sp)
    ble $t1, $t0, .BB60
    b .BB52
.BB42:
    lw $t0, 132($sp)
    move $t1, $t0
    lw $t2, 628($sp)
    move $t3, $t2
    lw $t4, 80($sp)
    move $t5, $t4
    lb $t6, 53($sp)
    move $t7, $t6
    sb $t7, 104($sp)
    sw $t5, 160($sp)
    sw $t3, 92($sp)
    sw $t1, 112($sp)
.BB43:
    lw $t0, 108($sp)
    move $t1, $t0
    li $t2, 4
    lw $t3, 160($sp)
    mult $t3, $t2
    mflo $t4
    addu $t1, $t1, $t4
    lw $t5, 0($t1)
    lw $t6, 92($sp)
    ble $t5, $t6, .BB45
    lw $t0, 112($sp)
    move $t1, $t0
    lw $t2, 92($sp)
    move $t3, $t2
    lw $t4, 160($sp)
    move $t5, $t4
    lb $t6, 104($sp)
    move $t7, $t6
    sb $t7, 53($sp)
    sw $t5, 148($sp)
    sw $t3, 628($sp)
    sw $t1, 132($sp)
.BB44:
    lw $t0, 148($sp)
    addiu $t1, $t0, 1
    lw $t2, 108($sp)
    move $t3, $t2
    li $t4, 4
    mult $t1, $t4
    mflo $t5
    addu $t3, $t3, $t5
    move $t6, $t2
    li $t7, 4
    mult $t0, $t7
    mflo $t8
    addu $t6, $t6, $t8
    lw $t9, 0($t6)
    sw $t9, 0($t3)
    addiu $s0, $t0, -1
    li $s1, -1
    sw $s0, 80($sp)
    ble $s0, $s1, .BB56
    b .BB42
.BB45:
    lw $t0, 112($sp)
    move $t1, $t0
    lw $t2, 92($sp)
    move $t3, $t2
    lw $t4, 160($sp)
    move $t5, $t4
    lb $t6, 104($sp)
    move $t7, $t6
    sb $t7, 620($sp)
    sw $t5, 40($sp)
    sw $t3, 592($sp)
    sw $t1, 584($sp)
.BB46:
    lw $t0, 40($sp)
    addiu $t1, $t0, 1
    lw $t2, 108($sp)
    move $t3, $t2
    li $t4, 4
    mult $t1, $t4
    mflo $t5
    addu $t3, $t3, $t5
    lw $t6, 592($sp)
    sw $t6, 0($t3)
    lw $t7, 584($sp)
    addiu $t8, $t7, 1
    lw $t9, 32($sp)
    sw $t8, 28($sp)
    bge $t8, $t9, .BB30
    lw $t0, 28($sp)
    move $t1, $t0
    lb $t2, 620($sp)
    move $t3, $t2
    sb $t3, 52($sp)
    sw $t1, 44($sp)
    b .BB27
.BB47:
    li $t0, 47
    lw $t1, 32($sp)
    ble $t1, $t0, .BB48
    lw $t0, 108($sp)
    addiu $t1, $t0, 128
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    addiu $t3, $t0, 132
    jal read
    move $t4, $v0
    sw $t4, 0($t3)
    addiu $t5, $t0, 136
    jal read
    move $t6, $v0
    sw $t6, 0($t5)
    addiu $t7, $t0, 140
    jal read
    move $t8, $v0
    sw $t8, 0($t7)
    addiu $t9, $t0, 144
    jal read
    move $s0, $v0
    sw $s0, 0($t9)
    addiu $s1, $t0, 148
    jal read
    move $s2, $v0
    sw $s2, 0($s1)
    addiu $s3, $t0, 152
    jal read
    move $s4, $v0
    sw $s4, 0($s3)
    addiu $s5, $t0, 156
    jal read
    move $s6, $v0
    sw $s6, 0($s5)
    addiu $s7, $t0, 160
    jal read
    move $t0, $v0
    sw $t0, 0($s7)
    lw $t1, 108($sp)
    addiu $t2, $t1, 164
    jal read
    move $t3, $v0
    sw $t3, 0($t2)
    addiu $t4, $t1, 168
    jal read
    move $t5, $v0
    sw $t5, 0($t4)
    addiu $t6, $t1, 172
    jal read
    move $t7, $v0
    sw $t7, 0($t6)
    addiu $t8, $t1, 176
    jal read
    move $t9, $v0
    sw $t9, 0($t8)
    addiu $s0, $t1, 180
    jal read
    move $s1, $v0
    sw $s1, 0($s0)
    addiu $s2, $t1, 184
    jal read
    move $s3, $v0
    sw $s3, 0($s2)
    addiu $s4, $t1, 188
    jal read
    move $s5, $v0
    sw $s5, 0($s4)
    li $s6, 48
    lw $s7, 32($sp)
    ble $s7, $s6, .BB12
    b .BB54
.BB48:
    lw $t0, 108($sp)
    addiu $t1, $t0, 128
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 33
    lw $t4, 32($sp)
    ble $t4, $t3, .BB59
    b .BB55
.BB49:
    lw $t0, 108($sp)
    addiu $t1, $t0, 72
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 19
    lw $t4, 32($sp)
    ble $t4, $t3, .BB59
    lw $t0, 108($sp)
    addiu $t1, $t0, 76
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 20
    lw $t4, 32($sp)
    ble $t4, $t3, .BB59
    b .BB67
.BB50:
    lw $t0, 108($sp)
    addiu $t1, $t0, 8
    lw $t2, 0($t1)
    addiu $t3, $t0, 4
    lw $t4, 0($t3)
    sw $t2, 48($sp)
    ble $t4, $t2, .BB38
    lw $t0, 48($sp)
    move $t1, $t0
    li $t2, -1
    sb $t2, 612($sp)
    sw $t1, 64($sp)
.BB51:
    lw $t0, 108($sp)
    addiu $t1, $t0, 8
    addiu $t2, $t0, 4
    lw $t3, 0($t2)
    sw $t3, 0($t1)
    move $t4, $t0
    lw $t5, 0($t4)
    lw $t6, 64($sp)
    ble $t5, $t6, .BB31
    li $t0, 2
    lw $t1, 64($sp)
    move $t2, $t1
    move $t3, $zero
    lb $t4, 612($sp)
    move $t5, $t4
    sb $t5, 53($sp)
    sw $t3, 148($sp)
    sw $t2, 628($sp)
    sw $t0, 132($sp)
    b .BB44
.BB52:
    lw $t0, 108($sp)
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
    lw $t1, 108($sp)
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
    lw $s7, 32($sp)
    ble $s7, $s6, .BB21
    li $t0, 47
    lw $t1, 32($sp)
    ble $t1, $t0, .BB70
    b .BB69
.BB53:
    lw $t0, 108($sp)
    addiu $t1, $t0, 8
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 3
    lw $t4, 32($sp)
    ble $t4, $t3, .BB21
    b .BB61
.BB54:
    li $t0, 63
    lw $t1, 32($sp)
    ble $t1, $t0, .BB64
    b .BB62
.BB55:
    lw $t0, 108($sp)
    addiu $t1, $t0, 132
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 34
    lw $t4, 32($sp)
    ble $t4, $t3, .BB59
    b .BB65
.BB56:
    lw $t0, 132($sp)
    move $t1, $t0
    lw $t2, 628($sp)
    move $t3, $t2
    lw $t4, 80($sp)
    move $t5, $t4
    lb $t6, 53($sp)
    move $t7, $t6
    sb $t7, 620($sp)
    sw $t5, 40($sp)
    sw $t3, 592($sp)
    sw $t1, 584($sp)
    b .BB46
.BB57:
    lw $t0, 108($sp)
    addiu $t1, $t0, 20
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 6
    lw $t4, 32($sp)
    ble $t4, $t3, .BB59
    b .BB68
.BB58:
    li $t0, -1
    sb $t0, 632($sp)
    b .BB4
.BB59:
    li $t0, 1
    lw $t1, 32($sp)
    ble $t1, $t0, .BB13
    li $t0, -1
    sb $t0, 156($sp)
    b .BB8
.BB60:
    lw $t0, 108($sp)
    addiu $t1, $t0, 64
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 17
    lw $t4, 32($sp)
    ble $t4, $t3, .BB21
    lw $t0, 108($sp)
    addiu $t1, $t0, 68
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 18
    lw $t4, 32($sp)
    ble $t4, $t3, .BB21
    b .BB71
.BB61:
    lw $t0, 108($sp)
    addiu $t1, $t0, 12
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 4
    lw $t4, 32($sp)
    ble $t4, $t3, .BB21
    b .BB72
.BB62:
    lw $t0, 108($sp)
    addiu $t1, $t0, 192
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    addiu $t3, $t0, 196
    jal read
    move $t4, $v0
    sw $t4, 0($t3)
    addiu $t5, $t0, 200
    jal read
    move $t6, $v0
    sw $t6, 0($t5)
    addiu $t7, $t0, 204
    jal read
    move $t8, $v0
    sw $t8, 0($t7)
    addiu $t9, $t0, 208
    jal read
    move $s0, $v0
    sw $s0, 0($t9)
    addiu $s1, $t0, 212
    jal read
    move $s2, $v0
    sw $s2, 0($s1)
    addiu $s3, $t0, 216
    jal read
    move $s4, $v0
    sw $s4, 0($s3)
    addiu $s5, $t0, 220
    jal read
    move $s6, $v0
    sw $s6, 0($s5)
    addiu $s7, $t0, 224
    jal read
    move $t0, $v0
    sw $t0, 0($s7)
    lw $t1, 108($sp)
    addiu $t2, $t1, 228
    jal read
    move $t3, $v0
    sw $t3, 0($t2)
    addiu $t4, $t1, 232
    jal read
    move $t5, $v0
    sw $t5, 0($t4)
    addiu $t6, $t1, 236
    jal read
    move $t7, $v0
    sw $t7, 0($t6)
    addiu $t8, $t1, 240
    jal read
    move $t9, $v0
    sw $t9, 0($t8)
    addiu $s0, $t1, 244
    jal read
    move $s1, $v0
    sw $s1, 0($s0)
    addiu $s2, $t1, 248
    jal read
    move $s3, $v0
    sw $s3, 0($s2)
    addiu $s4, $t1, 252
    jal read
    move $s5, $v0
    sw $s5, 0($s4)
    li $s6, 64
    lw $s7, 32($sp)
    ble $s7, $s6, .BB12
    li $t0, 64
    sw $t0, 140($sp)
.BB63:
    lw $t0, 140($sp)
    addiu $t1, $t0, 15
    lw $t2, 32($sp)
    bge $t1, $t2, .BB73
    b .BB78
.BB64:
    lw $t0, 108($sp)
    addiu $t1, $t0, 192
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 49
    lw $t4, 32($sp)
    ble $t4, $t3, .BB37
    li $t0, 49
    sw $t0, 604($sp)
    b .BB74
.BB65:
    lw $t0, 108($sp)
    addiu $t1, $t0, 136
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 35
    lw $t4, 32($sp)
    ble $t4, $t3, .BB66
    li $t0, 35
    sw $t0, 604($sp)
    b .BB74
.BB66:
    li $t0, -1
    sb $t0, 632($sp)
    b .BB4
.BB67:
    lw $t0, 108($sp)
    addiu $t1, $t0, 80
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 21
    lw $t4, 32($sp)
    ble $t4, $t3, .BB58
    li $t0, 21
    sw $t0, 604($sp)
    b .BB74
.BB68:
    lw $t0, 108($sp)
    addiu $t1, $t0, 24
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 7
    lw $t4, 32($sp)
    ble $t4, $t3, .BB36
    li $t0, 7
    sw $t0, 604($sp)
    b .BB74
.BB69:
    lw $t0, 108($sp)
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
    lw $t1, 108($sp)
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
    lw $s7, 32($sp)
    ble $s7, $s6, .BB21
    b .BB80
.BB70:
    lw $t0, 108($sp)
    addiu $t1, $t0, 128
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 33
    lw $t4, 32($sp)
    ble $t4, $t3, .BB21
    b .BB75
.BB71:
    lw $t0, 108($sp)
    addiu $t1, $t0, 72
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 19
    lw $t4, 32($sp)
    ble $t4, $t3, .BB21
    b .BB76
.BB72:
    lw $t0, 108($sp)
    addiu $t1, $t0, 16
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 5
    lw $t4, 32($sp)
    ble $t4, $t3, .BB21
    b .BB77
.BB73:
    lw $t0, 140($sp)
    move $t1, $t0
    sw $t1, 604($sp)
.BB74:
    lw $t0, 108($sp)
    move $t1, $t0
    li $t2, 4
    lw $t3, 604($sp)
    mult $t3, $t2
    mflo $t4
    addu $t1, $t1, $t4
    jal read
    move $t5, $v0
    sw $t5, 0($t1)
    addiu $t6, $t3, 1
    lw $t7, 32($sp)
    sw $t6, 616($sp)
    bge $t6, $t7, .BB3
    lw $t0, 616($sp)
    move $t1, $t0
    sw $t1, 604($sp)
    b .BB74
.BB75:
    lw $t0, 108($sp)
    addiu $t1, $t0, 132
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 34
    lw $t4, 32($sp)
    ble $t4, $t3, .BB21
    b .BB82
.BB76:
    lw $t0, 108($sp)
    addiu $t1, $t0, 76
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 20
    lw $t4, 32($sp)
    ble $t4, $t3, .BB21
    b .BB83
.BB77:
    lw $t0, 108($sp)
    addiu $t1, $t0, 20
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 6
    lw $t4, 32($sp)
    ble $t4, $t3, .BB21
    b .BB84
.BB78:
    lw $t0, 140($sp)
    move $t1, $t0
    sw $t1, 152($sp)
    lw $t0, 108($sp)
    move $t1, $t0
    li $t2, 4
    lw $t3, 152($sp)
    mult $t3, $t2
    mflo $t4
    addu $t1, $t1, $t4
    jal read
    move $t5, $v0
    sw $t5, 0($t1)
    addiu $t6, $t1, 4
    jal read
    move $t7, $v0
    sw $t7, 0($t6)
    addiu $t8, $t1, 8
    jal read
    move $t9, $v0
    sw $t9, 0($t8)
    addiu $s0, $t1, 12
    jal read
    move $s1, $v0
    sw $s1, 0($s0)
    addiu $s2, $t1, 16
    jal read
    move $s3, $v0
    sw $s3, 0($s2)
    addiu $s4, $t1, 20
    jal read
    move $s5, $v0
    sw $s5, 0($s4)
    addiu $s6, $t1, 24
    jal read
    move $s7, $v0
    sw $s7, 0($s6)
    addiu $t0, $t1, 28
    jal read
    sw $t1, 596($sp)
    move $t1, $v0
    sw $t1, 0($t0)
    lw $t2, 596($sp)
    addiu $t3, $t2, 32
    jal read
    move $t4, $v0
    sw $t4, 0($t3)
    addiu $t5, $t2, 36
    jal read
    move $t6, $v0
    sw $t6, 0($t5)
    addiu $t7, $t2, 40
    jal read
    move $t8, $v0
    sw $t8, 0($t7)
    addiu $t9, $t2, 44
    jal read
    move $s0, $v0
    sw $s0, 0($t9)
    addiu $s1, $t2, 48
    jal read
    move $s2, $v0
    sw $s2, 0($s1)
    addiu $s3, $t2, 52
    jal read
    move $s4, $v0
    sw $s4, 0($s3)
    addiu $s5, $t2, 56
    jal read
    move $s6, $v0
    sw $s6, 0($s5)
    addiu $s7, $t2, 60
    jal read
    move $t0, $v0
    sw $t0, 0($s7)
    lw $t1, 152($sp)
    addiu $t2, $t1, 16
    lw $t3, 32($sp)
    sw $t2, 60($sp)
    bge $t2, $t3, .BB12
    lw $t0, 60($sp)
    move $t1, $t0
    sw $t1, 140($sp)
    b .BB63
.BB79:
    lw $t0, 108($sp)
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
    lw $t1, 108($sp)
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
    lw $s7, 32($sp)
    ble $s7, $s6, .BB21
    b .BB85
.BB80:
    li $t0, 63
    lw $t1, 32($sp)
    ble $t1, $t0, .BB81
    b .BB79
.BB81:
    lw $t0, 108($sp)
    addiu $t1, $t0, 192
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 49
    lw $t4, 32($sp)
    ble $t4, $t3, .BB21
    li $t0, 49
    sw $t0, 72($sp)
    b .BB88
.BB82:
    lw $t0, 108($sp)
    addiu $t1, $t0, 136
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 35
    lw $t4, 32($sp)
    ble $t4, $t3, .BB21
    li $t0, 35
    sw $t0, 72($sp)
    b .BB88
.BB83:
    lw $t0, 108($sp)
    addiu $t1, $t0, 80
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 21
    lw $t4, 32($sp)
    ble $t4, $t3, .BB21
    li $t0, 21
    sw $t0, 72($sp)
    b .BB88
.BB84:
    lw $t0, 108($sp)
    addiu $t1, $t0, 24
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 7
    lw $t4, 32($sp)
    ble $t4, $t3, .BB21
    li $t0, 7
    sw $t0, 72($sp)
    b .BB88
.BB85:
    li $t0, 64
    sw $t0, 636($sp)
.BB86:
    lw $t0, 636($sp)
    addiu $t1, $t0, 15
    lw $t2, 32($sp)
    bge $t1, $t2, .BB87
    b .BB89
.BB87:
    lw $t0, 636($sp)
    move $t1, $t0
    sw $t1, 72($sp)
.BB88:
    lw $t0, 108($sp)
    move $t1, $t0
    li $t2, 4
    lw $t3, 72($sp)
    mult $t3, $t2
    mflo $t4
    addu $t1, $t1, $t4
    lw $t5, 0($t1)
    move $a0, $t5
    jal write
    addiu $t6, $t3, 1
    lw $t7, 32($sp)
    sw $t6, 172($sp)
    bge $t6, $t7, .BB21
    lw $t0, 172($sp)
    move $t1, $t0
    sw $t1, 72($sp)
    b .BB88
.BB89:
    lw $t0, 636($sp)
    move $t1, $t0
    sw $t1, 120($sp)
    lw $t0, 108($sp)
    move $t1, $t0
    li $t2, 4
    lw $t3, 120($sp)
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
    sw $t1, 596($sp)
    lw $t1, 0($t0)
    move $a0, $t1
    jal write
    lw $t2, 596($sp)
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
    lw $t1, 120($sp)
    addiu $t2, $t1, 16
    lw $t3, 32($sp)
    sw $t2, 96($sp)
    bge $t2, $t3, .BB21
    lw $t0, 96($sp)
    move $t1, $t0
    sw $t1, 636($sp)
    b .BB86

