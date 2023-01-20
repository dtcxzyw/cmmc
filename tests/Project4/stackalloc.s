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
    addiu $sp, $sp, -752
    sw $ra, 16($sp)
    sw $s0, 208($sp)
    sw $s1, 72($sp)
    sw $s2, 192($sp)
    sw $s3, 180($sp)
    sw $s4, 724($sp)
    sw $s5, 116($sp)
    sw $s6, 28($sp)
    sw $s7, 688($sp)
    addiu $t0, $sp, 260
    jal read
    move $t1, $v0
    sgt $t2, $t1, $zero
    sb $t2, 212($sp)
    sw $v0, 732($sp)
    sw $t0, 120($sp)
    blez $t1, .BB1
    li $t0, 15
    sw $t0, 220($sp)
    ble $t1, $t0, .BB5
    b .BB2
.BB1:
    lb $t0, 212($sp)
    move $t1, $t0
    li $t2, 1
    lw $t3, 732($sp)
    sw $t2, 140($sp)
    sb $t0, 248($sp)
    ble $t3, $t2, .BB3
    move $t1, $t0
    lw $t2, 120($sp)
    addiu $t3, $t2, 4
    lw $t4, 0($t3)
    lw $t5, 0($t2)
    sw $t5, 216($sp)
    sw $t4, 68($sp)
    sw $t3, 736($sp)
    sb $t0, 664($sp)
    ble $t5, $t4, .BB6
    b .BB64
.BB2:
    lw $t0, 120($sp)
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
    lw $t1, 120($sp)
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
    lw $s7, 732($sp)
    ble $s7, $s6, .BB9
    b .BB4
.BB3:
    lb $t0, 248($sp)
    move $t1, $t0
    sb $t0, 213($sp)
    beqz $t1, .BB77
    li $t0, 15
    lw $t1, 732($sp)
    sw $t0, 684($sp)
    ble $t1, $t0, .BB26
    b .BB25
.BB4:
    li $t0, 31
    lw $t1, 732($sp)
    sw $t0, 228($sp)
    ble $t1, $t0, .BB18
    b .BB8
.BB5:
    lw $t0, 120($sp)
    move $t1, $t0
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    li $t3, 1
    lw $t4, 732($sp)
    ble $t4, $t3, .BB9
    b .BB11
.BB6:
    lw $t0, 68($sp)
    move $t1, $t0
    lb $t2, 664($sp)
    move $t3, $t2
    lw $t4, 120($sp)
    addiu $t5, $t4, 4
    sw $t0, 0($t5)
    li $t6, 2
    lw $t7, 732($sp)
    sw $t6, 668($sp)
    sw $t5, 672($sp)
    sb $t2, 708($sp)
    sw $t0, 32($sp)
    ble $t7, $t6, .BB15
.BB7:
    li $t0, 2
    lb $t1, 708($sp)
    move $t2, $t1
    sb $t1, 176($sp)
    sw $t0, 660($sp)
    b .BB22
.BB8:
    lw $t0, 120($sp)
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
    lw $t1, 120($sp)
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
    lw $s7, 732($sp)
    ble $s7, $s6, .BB9
    b .BB17
.BB9:
    li $t0, 1
    lw $t1, 732($sp)
    sw $t0, 188($sp)
    ble $t1, $t0, .BB10
    lw $t0, 120($sp)
    addiu $t1, $t0, 4
    lw $t2, 0($t1)
    lw $t3, 0($t0)
    sw $t3, 232($sp)
    sw $t2, 204($sp)
    sw $t1, 700($sp)
    ble $t3, $t2, .BB23
    b .BB30
.BB10:
    li $t0, -1
    sb $t0, 213($sp)
    beqz $t0, .BB77
    li $t0, 15
    lw $t1, 732($sp)
    sw $t0, 684($sp)
    ble $t1, $t0, .BB26
    b .BB25
.BB11:
    lw $t0, 120($sp)
    addiu $t1, $t0, 4
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    li $t3, 2
    lw $t4, 732($sp)
    ble $t4, $t3, .BB9
    b .BB19
.BB12:
    lw $t0, 120($sp)
    addiu $t1, $t0, 4
    lw $t2, 0($t0)
    sw $t2, 0($t1)
    lw $t3, 68($sp)
    sw $t3, 0($t0)
    li $t4, 2
    lw $t5, 732($sp)
    ble $t5, $t4, .BB14
    lb $t0, 177($sp)
    move $t1, $t0
    lw $t2, 120($sp)
    addiu $t3, $t2, 8
    lw $t4, 0($t3)
    addiu $t5, $t2, 4
    lw $t6, 0($t5)
    sw $t6, 84($sp)
    sw $t4, 696($sp)
    sw $t3, 152($sp)
    sw $t5, 92($sp)
    sb $t0, 53($sp)
    ble $t6, $t4, .BB20
    move $t0, $t4
    move $t1, $t4
    lb $t2, 53($sp)
    move $t3, $t2
    sb $t2, 740($sp)
    sw $t4, 128($sp)
.BB13:
    lw $t0, 120($sp)
    addiu $t1, $t0, 8
    addiu $t2, $t0, 4
    lw $t3, 0($t2)
    sw $t3, 0($t1)
    lw $t4, 0($t0)
    lw $t5, 128($sp)
    ble $t4, $t5, .BB36
    b .BB31
.BB14:
    lb $t0, 177($sp)
    move $t1, $t0
    sb $t0, 213($sp)
    beqz $t1, .BB77
    li $t0, 15
    lw $t1, 732($sp)
    sw $t0, 684($sp)
    ble $t1, $t0, .BB26
    b .BB25
.BB15:
    lb $t0, 708($sp)
    move $t1, $t0
    sb $t0, 213($sp)
    beqz $t1, .BB77
    li $t0, 15
    lw $t1, 732($sp)
    sw $t0, 684($sp)
    ble $t1, $t0, .BB26
    b .BB25
.BB16:
    lw $t0, 660($sp)
    move $t1, $t0
    lw $t2, 244($sp)
    move $t3, $t2
    lw $t4, 196($sp)
    move $t5, $t4
    lb $t6, 176($sp)
    move $t7, $t6
    sb $t6, 224($sp)
    sw $t4, 172($sp)
    sw $t2, 160($sp)
    sw $t0, 80($sp)
    b .BB37
.BB17:
    li $t0, 47
    lw $t1, 732($sp)
    sw $t0, 744($sp)
    ble $t1, $t0, .BB40
    b .BB27
.BB18:
    lw $t0, 120($sp)
    addiu $t1, $t0, 64
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    li $t3, 17
    lw $t4, 732($sp)
    ble $t4, $t3, .BB9
    b .BB28
.BB19:
    lw $t0, 120($sp)
    addiu $t1, $t0, 8
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    li $t3, 3
    lw $t4, 732($sp)
    ble $t4, $t3, .BB9
    b .BB29
.BB20:
    lw $t0, 696($sp)
    move $t1, $t0
    lb $t2, 53($sp)
    move $t3, $t2
    lw $t4, 120($sp)
    addiu $t5, $t4, 8
    sw $t0, 0($t5)
    li $t6, 3
    lw $t7, 732($sp)
    sw $t5, 712($sp)
    sb $t2, 40($sp)
    sw $t6, 112($sp)
    sw $t0, 136($sp)
    ble $t7, $t6, .BB33
.BB21:
    li $t0, 3
    lb $t1, 40($sp)
    move $t2, $t1
    sb $t1, 176($sp)
    sw $t0, 660($sp)
.BB22:
    lw $t0, 120($sp)
    move $t1, $t0
    li $t2, 4
    lw $t3, 660($sp)
    mult $t3, $t2
    mflo $t4
    addu $t1, $t1, $t4
    lw $t5, 0($t1)
    addiu $t6, $t3, -1
    li $t7, -1
    sw $t6, 196($sp)
    sw $t5, 244($sp)
    ble $t6, $t7, .BB16
    move $t0, $t3
    move $t1, $t3
    move $t2, $t5
    move $t3, $t5
    move $t4, $t6
    move $t5, $t6
    lb $t6, 176($sp)
    move $t7, $t6
    sb $t6, 64($sp)
    sw $t5, 48($sp)
    sw $t3, 676($sp)
    sw $t1, 256($sp)
    b .BB44
.BB23:
    lw $t0, 204($sp)
    move $t1, $t0
    li $t2, -1
    lw $t3, 120($sp)
    addiu $t4, $t3, 4
    sw $t0, 0($t4)
    li $t5, 2
    lw $t6, 732($sp)
    sw $t5, 668($sp)
    sw $t4, 672($sp)
    sb $t2, 708($sp)
    sw $t0, 32($sp)
    ble $t6, $t5, .BB15
    b .BB7
.BB24:
    li $t0, 15
    lw $t1, 732($sp)
    sw $t0, 684($sp)
    ble $t1, $t0, .BB26
.BB25:
    lw $t0, 120($sp)
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
    lw $t2, 120($sp)
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
    lw $s6, 732($sp)
    ble $s6, $s5, .BB77
    li $t0, 31
    move $t1, $s6
    sw $t0, 720($sp)
    ble $t1, $t0, .BB35
    lw $t0, 120($sp)
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
    lw $t1, 120($sp)
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
    lw $s7, 732($sp)
    ble $s7, $s6, .BB77
    b .BB47
.BB26:
    lw $t0, 120($sp)
    lw $t1, 0($t0)
    move $a0, $t1
    jal write
    li $t2, 1
    lw $t3, 732($sp)
    sw $t2, 24($sp)
    sw $t1, 56($sp)
    ble $t3, $t2, .BB77
    lw $t0, 120($sp)
    addiu $t1, $t0, 4
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 2
    lw $t4, 732($sp)
    ble $t4, $t3, .BB77
    b .BB48
.BB27:
    lw $t0, 120($sp)
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
    lw $t1, 120($sp)
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
    lw $s7, 732($sp)
    ble $s7, $s6, .BB9
    b .BB39
.BB28:
    lw $t0, 120($sp)
    addiu $t1, $t0, 68
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    li $t3, 18
    lw $t4, 732($sp)
    ble $t4, $t3, .BB9
    b .BB41
.BB29:
    lw $t0, 120($sp)
    addiu $t1, $t0, 12
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    li $t3, 4
    lw $t4, 732($sp)
    ble $t4, $t3, .BB9
    b .BB42
.BB30:
    lw $t0, 120($sp)
    addiu $t1, $t0, 4
    lw $t2, 0($t0)
    sw $t2, 0($t1)
    lw $t3, 204($sp)
    sw $t3, 0($t0)
    li $t4, 2
    lw $t5, 732($sp)
    ble $t5, $t4, .BB24
    lw $t0, 120($sp)
    addiu $t1, $t0, 8
    lw $t2, 0($t1)
    addiu $t3, $t0, 4
    lw $t4, 0($t3)
    sw $t4, 100($sp)
    sw $t3, 144($sp)
    sw $t2, 240($sp)
    sw $t1, 108($sp)
    ble $t4, $t2, .BB46
    move $t0, $t2
    move $t1, $t2
    li $t2, -1
    sb $t2, 740($sp)
    sw $t1, 128($sp)
    b .BB13
.BB31:
    li $t0, 2
    lw $t1, 128($sp)
    move $t2, $t1
    move $t3, $zero
    lb $t4, 740($sp)
    move $t5, $t4
    sb $t4, 52($sp)
    sw $t3, 124($sp)
    sw $t1, 252($sp)
    sw $t0, 184($sp)
.BB32:
    lw $t0, 124($sp)
    addiu $t1, $t0, 1
    lw $t2, 120($sp)
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
    sw $s0, 88($sp)
    ble $s0, $s1, .BB34
    b .BB43
.BB33:
    lb $t0, 40($sp)
    move $t1, $t0
    sb $t0, 213($sp)
    beqz $t1, .BB77
    li $t0, 15
    lw $t1, 732($sp)
    sw $t0, 684($sp)
    ble $t1, $t0, .BB26
    b .BB25
.BB34:
    lw $t0, 184($sp)
    move $t1, $t0
    lw $t2, 252($sp)
    move $t3, $t2
    lw $t4, 88($sp)
    move $t5, $t4
    lb $t6, 52($sp)
    move $t7, $t6
    sb $t6, 224($sp)
    sw $t4, 172($sp)
    sw $t2, 160($sp)
    sw $t0, 80($sp)
    b .BB37
.BB35:
    lw $t0, 120($sp)
    addiu $t1, $t0, 64
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 17
    lw $t4, 732($sp)
    ble $t4, $t3, .BB77
    b .BB54
.BB36:
    li $t0, 2
    lw $t1, 128($sp)
    move $t2, $t1
    move $t3, $zero
    lb $t4, 740($sp)
    move $t5, $t4
    sb $t4, 224($sp)
    sw $t3, 172($sp)
    sw $t1, 160($sp)
    sw $t0, 80($sp)
.BB37:
    lw $t0, 172($sp)
    addiu $t1, $t0, 1
    lw $t2, 120($sp)
    move $t3, $t2
    li $t4, 4
    mult $t1, $t4
    mflo $t5
    addu $t3, $t3, $t5
    lw $t6, 160($sp)
    sw $t6, 0($t3)
    lw $t7, 80($sp)
    addiu $t8, $t7, 1
    lw $t9, 732($sp)
    sw $t8, 36($sp)
    bge $t8, $t9, .BB38
    move $t0, $t8
    move $t1, $t8
    lb $t2, 224($sp)
    move $t3, $t2
    sb $t2, 176($sp)
    sw $t8, 660($sp)
    b .BB22
.BB38:
    lb $t0, 224($sp)
    move $t1, $t0
    sb $t0, 213($sp)
    beqz $t1, .BB77
    li $t0, 15
    lw $t1, 732($sp)
    sw $t0, 684($sp)
    ble $t1, $t0, .BB26
    b .BB25
.BB39:
    li $t0, 63
    lw $t1, 732($sp)
    sw $t0, 236($sp)
    ble $t1, $t0, .BB56
    b .BB55
.BB40:
    lw $t0, 120($sp)
    addiu $t1, $t0, 128
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    li $t3, 33
    lw $t4, 732($sp)
    ble $t4, $t3, .BB52
    b .BB49
.BB41:
    lw $t0, 120($sp)
    addiu $t1, $t0, 72
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    li $t3, 19
    lw $t4, 732($sp)
    ble $t4, $t3, .BB52
    b .BB50
.BB42:
    lw $t0, 120($sp)
    addiu $t1, $t0, 16
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    li $t3, 5
    lw $t4, 732($sp)
    ble $t4, $t3, .BB52
    b .BB51
.BB43:
    lw $t0, 184($sp)
    move $t1, $t0
    lw $t2, 252($sp)
    move $t3, $t2
    lw $t4, 88($sp)
    move $t5, $t4
    lb $t6, 52($sp)
    move $t7, $t6
    sb $t6, 64($sp)
    sw $t4, 48($sp)
    sw $t2, 676($sp)
    sw $t0, 256($sp)
.BB44:
    lw $t0, 120($sp)
    move $t1, $t0
    li $t2, 4
    lw $t3, 48($sp)
    mult $t3, $t2
    mflo $t4
    addu $t1, $t1, $t4
    lw $t5, 0($t1)
    lw $t6, 676($sp)
    ble $t5, $t6, .BB45
    lw $t0, 256($sp)
    move $t1, $t0
    move $t2, $t6
    move $t3, $t6
    lw $t4, 48($sp)
    move $t5, $t4
    lb $t6, 64($sp)
    move $t7, $t6
    sb $t6, 52($sp)
    sw $t4, 124($sp)
    sw $t3, 252($sp)
    sw $t0, 184($sp)
    b .BB32
.BB45:
    lw $t0, 256($sp)
    move $t1, $t0
    lw $t2, 676($sp)
    move $t3, $t2
    lw $t4, 48($sp)
    move $t5, $t4
    lb $t6, 64($sp)
    move $t7, $t6
    sb $t6, 224($sp)
    sw $t4, 172($sp)
    sw $t2, 160($sp)
    sw $t0, 80($sp)
    b .BB37
.BB46:
    lw $t0, 240($sp)
    move $t1, $t0
    li $t2, -1
    lw $t3, 120($sp)
    addiu $t4, $t3, 8
    sw $t0, 0($t4)
    li $t5, 3
    lw $t6, 732($sp)
    sw $t4, 712($sp)
    sb $t2, 40($sp)
    sw $t5, 112($sp)
    sw $t0, 136($sp)
    ble $t6, $t5, .BB33
    b .BB21
.BB47:
    li $t0, 47
    lw $t1, 732($sp)
    sw $t0, 132($sp)
    ble $t1, $t0, .BB66
    lw $t0, 120($sp)
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
    lw $t1, 120($sp)
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
    lw $s7, 732($sp)
    ble $s7, $s6, .BB77
    b .BB65
.BB48:
    lw $t0, 120($sp)
    addiu $t1, $t0, 8
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 3
    lw $t4, 732($sp)
    ble $t4, $t3, .BB77
    lw $t0, 120($sp)
    addiu $t1, $t0, 12
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 4
    lw $t4, 732($sp)
    ble $t4, $t3, .BB77
    b .BB67
.BB49:
    lw $t0, 120($sp)
    addiu $t1, $t0, 132
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    li $t3, 34
    lw $t4, 732($sp)
    ble $t4, $t3, .BB52
    b .BB58
.BB50:
    lw $t0, 120($sp)
    addiu $t1, $t0, 76
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    li $t3, 20
    lw $t4, 732($sp)
    ble $t4, $t3, .BB52
    b .BB60
.BB51:
    lw $t0, 120($sp)
    addiu $t1, $t0, 20
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    li $t3, 6
    lw $t4, 732($sp)
    ble $t4, $t3, .BB52
    b .BB62
.BB52:
    li $t0, 1
    lw $t1, 732($sp)
    sw $t0, 692($sp)
    ble $t1, $t0, .BB53
    li $t0, -1
    lw $t1, 120($sp)
    addiu $t2, $t1, 4
    lw $t3, 0($t2)
    lw $t4, 0($t1)
    sw $t4, 216($sp)
    sw $t3, 68($sp)
    sw $t2, 736($sp)
    sb $t0, 664($sp)
    ble $t4, $t3, .BB6
    b .BB64
.BB53:
    li $t0, -1
    sb $t0, 213($sp)
    beqz $t0, .BB77
    li $t0, 15
    lw $t1, 732($sp)
    sw $t0, 684($sp)
    ble $t1, $t0, .BB26
    b .BB25
.BB54:
    lw $t0, 120($sp)
    addiu $t1, $t0, 68
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 18
    lw $t4, 732($sp)
    ble $t4, $t3, .BB77
    lw $t0, 120($sp)
    addiu $t1, $t0, 72
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 19
    lw $t4, 732($sp)
    ble $t4, $t3, .BB77
    b .BB72
.BB55:
    lw $t0, 120($sp)
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
    lw $t1, 120($sp)
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
    lw $s7, 732($sp)
    ble $s7, $s6, .BB9
    li $t0, 64
    addiu $t1, $t0, 15
    move $t2, $s7
    sw $t1, 148($sp)
    sw $t0, 96($sp)
    bge $t1, $t2, .BB68
    b .BB73
.BB56:
    lw $t0, 120($sp)
    addiu $t1, $t0, 192
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    li $t3, 49
    lw $t4, 732($sp)
    ble $t4, $t3, .BB57
    li $t0, 49
    sw $t0, 104($sp)
    b .BB69
.BB57:
    li $t0, -1
    li $t1, 1
    lw $t2, 732($sp)
    sw $t1, 140($sp)
    sb $t0, 248($sp)
    ble $t2, $t1, .BB3
    move $t1, $t0
    lw $t2, 120($sp)
    addiu $t3, $t2, 4
    lw $t4, 0($t3)
    lw $t5, 0($t2)
    sw $t5, 216($sp)
    sw $t4, 68($sp)
    sw $t3, 736($sp)
    sb $t0, 664($sp)
    ble $t5, $t4, .BB6
    b .BB64
.BB58:
    lw $t0, 120($sp)
    addiu $t1, $t0, 136
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    li $t3, 35
    lw $t4, 732($sp)
    ble $t4, $t3, .BB59
    li $t0, 35
    sw $t0, 104($sp)
    b .BB69
.BB59:
    li $t0, -1
    li $t1, 1
    lw $t2, 732($sp)
    sw $t1, 140($sp)
    sb $t0, 248($sp)
    ble $t2, $t1, .BB3
    move $t1, $t0
    lw $t2, 120($sp)
    addiu $t3, $t2, 4
    lw $t4, 0($t3)
    lw $t5, 0($t2)
    sw $t5, 216($sp)
    sw $t4, 68($sp)
    sw $t3, 736($sp)
    sb $t0, 664($sp)
    ble $t5, $t4, .BB6
    b .BB64
.BB60:
    lw $t0, 120($sp)
    addiu $t1, $t0, 80
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    li $t3, 21
    lw $t4, 732($sp)
    ble $t4, $t3, .BB61
    li $t0, 21
    sw $t0, 104($sp)
    b .BB69
.BB61:
    li $t0, -1
    li $t1, 1
    lw $t2, 732($sp)
    sw $t1, 140($sp)
    sb $t0, 248($sp)
    ble $t2, $t1, .BB3
    move $t1, $t0
    lw $t2, 120($sp)
    addiu $t3, $t2, 4
    lw $t4, 0($t3)
    lw $t5, 0($t2)
    sw $t5, 216($sp)
    sw $t4, 68($sp)
    sw $t3, 736($sp)
    sb $t0, 664($sp)
    ble $t5, $t4, .BB6
    b .BB64
.BB62:
    lw $t0, 120($sp)
    addiu $t1, $t0, 24
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    li $t3, 7
    lw $t4, 732($sp)
    ble $t4, $t3, .BB63
    li $t0, 7
    sw $t0, 104($sp)
    b .BB69
.BB63:
    li $t0, -1
    li $t1, 1
    lw $t2, 732($sp)
    sw $t1, 140($sp)
    sb $t0, 248($sp)
    ble $t2, $t1, .BB3
    move $t1, $t0
    lw $t2, 120($sp)
    addiu $t3, $t2, 4
    lw $t4, 0($t3)
    lw $t5, 0($t2)
    sw $t5, 216($sp)
    sw $t4, 68($sp)
    sw $t3, 736($sp)
    sb $t0, 664($sp)
    ble $t5, $t4, .BB6
.BB64:
    lb $t0, 664($sp)
    move $t1, $t0
    sb $t0, 177($sp)
    b .BB12
.BB65:
    li $t0, 63
    lw $t1, 732($sp)
    sw $t0, 704($sp)
    ble $t1, $t0, .BB75
    b .BB74
.BB66:
    lw $t0, 120($sp)
    addiu $t1, $t0, 128
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 33
    lw $t4, 732($sp)
    ble $t4, $t3, .BB77
    b .BB71
.BB67:
    lw $t0, 120($sp)
    addiu $t1, $t0, 16
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 5
    lw $t4, 732($sp)
    ble $t4, $t3, .BB77
    b .BB78
.BB68:
    lw $t0, 96($sp)
    move $t1, $t0
    sw $t0, 104($sp)
.BB69:
    lw $t0, 120($sp)
    move $t1, $t0
    li $t2, 4
    lw $t3, 104($sp)
    mult $t3, $t2
    mflo $t4
    addu $t1, $t1, $t4
    jal read
    move $t5, $v0
    sw $v0, 0($t1)
    addiu $t6, $t3, 1
    lw $t7, 732($sp)
    sw $t6, 168($sp)
    bge $t6, $t7, .BB70
    move $t0, $t6
    move $t1, $t6
    sw $t6, 104($sp)
    b .BB69
.BB70:
    li $t0, -1
    li $t1, 1
    lw $t2, 732($sp)
    sw $t1, 140($sp)
    sb $t0, 248($sp)
    ble $t2, $t1, .BB3
    move $t1, $t0
    lw $t2, 120($sp)
    addiu $t3, $t2, 4
    lw $t4, 0($t3)
    lw $t5, 0($t2)
    sw $t5, 216($sp)
    sw $t4, 68($sp)
    sw $t3, 736($sp)
    sb $t0, 664($sp)
    ble $t5, $t4, .BB6
    b .BB64
.BB71:
    lw $t0, 120($sp)
    addiu $t1, $t0, 132
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 34
    lw $t4, 732($sp)
    ble $t4, $t3, .BB77
    b .BB76
.BB72:
    lw $t0, 120($sp)
    addiu $t1, $t0, 76
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 20
    lw $t4, 732($sp)
    ble $t4, $t3, .BB77
    lw $t0, 120($sp)
    addiu $t1, $t0, 80
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 21
    lw $t4, 732($sp)
    ble $t4, $t3, .BB77
    li $t0, 21
    sw $t0, 680($sp)
    b .BB80
.BB73:
    lw $t0, 96($sp)
    move $t1, $t0
    sw $t0, 716($sp)
    lw $t0, 120($sp)
    move $t1, $t0
    li $t2, 4
    lw $t3, 716($sp)
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
    sw $t1, 156($sp)
    move $t1, $v0
    sw $v0, 0($t0)
    lw $t2, 156($sp)
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
    lw $t1, 716($sp)
    addiu $t2, $t1, 16
    lw $t3, 732($sp)
    sw $t2, 164($sp)
    bge $t2, $t3, .BB9
    move $t0, $t2
    move $t1, $t2
    addiu $t2, $t1, 15
    sw $t2, 148($sp)
    sw $t1, 96($sp)
    bge $t2, $t3, .BB68
    b .BB73
.BB74:
    lw $t0, 120($sp)
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
    lw $t1, 120($sp)
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
    lw $s7, 732($sp)
    ble $s7, $s6, .BB77
    li $t0, 64
    addiu $t1, $t0, 15
    move $t2, $s7
    sw $t1, 76($sp)
    sw $t0, 200($sp)
    bge $t1, $t2, .BB79
    b .BB82
.BB75:
    lw $t0, 120($sp)
    addiu $t1, $t0, 192
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 49
    lw $t4, 732($sp)
    ble $t4, $t3, .BB77
    li $t0, 49
    sw $t0, 680($sp)
    b .BB80
.BB76:
    lw $t0, 120($sp)
    addiu $t1, $t0, 136
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 35
    lw $t4, 732($sp)
    ble $t4, $t3, .BB77
    li $t0, 35
    sw $t0, 680($sp)
    b .BB80
.BB77:
    move $v0, $zero
    lw $s7, 688($sp)
    lw $s6, 28($sp)
    lw $s5, 116($sp)
    lw $s4, 724($sp)
    lw $s3, 180($sp)
    lw $s2, 192($sp)
    lw $s1, 72($sp)
    lw $s0, 208($sp)
    lw $ra, 16($sp)
    addiu $sp, $sp, 752
    jr $ra
.BB78:
    lw $t0, 120($sp)
    addiu $t1, $t0, 20
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 6
    lw $t4, 732($sp)
    ble $t4, $t3, .BB77
    lw $t0, 120($sp)
    addiu $t1, $t0, 24
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 7
    lw $t4, 732($sp)
    ble $t4, $t3, .BB77
    li $t0, 7
    sw $t0, 680($sp)
    b .BB80
.BB79:
    lw $t0, 200($sp)
    move $t1, $t0
    sw $t0, 680($sp)
.BB80:
    lw $t0, 120($sp)
    move $t1, $t0
    li $t2, 4
    lw $t3, 680($sp)
    mult $t3, $t2
    mflo $t4
    addu $t1, $t1, $t4
    lw $t5, 0($t1)
    move $a0, $t5
    jal write
    addiu $t6, $t3, 1
    lw $t7, 732($sp)
    sw $t6, 60($sp)
    bge $t6, $t7, .BB77
    move $t0, $t6
    move $t1, $t6
    sw $t6, 680($sp)
    b .BB80
.BB81:
    lw $t0, 120($sp)
    move $t1, $t0
    li $t2, 4
    lw $t3, 728($sp)
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
    sw $t1, 156($sp)
    lw $t1, 0($t0)
    move $a0, $t1
    jal write
    lw $t2, 156($sp)
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
    lw $t1, 728($sp)
    addiu $t2, $t1, 16
    lw $t3, 732($sp)
    sw $t2, 44($sp)
    bge $t2, $t3, .BB77
    move $t0, $t2
    move $t1, $t2
    addiu $t2, $t1, 15
    sw $t2, 76($sp)
    sw $t1, 200($sp)
    bge $t2, $t3, .BB79
.BB82:
    lw $t0, 200($sp)
    move $t1, $t0
    sw $t0, 728($sp)
    b .BB81

