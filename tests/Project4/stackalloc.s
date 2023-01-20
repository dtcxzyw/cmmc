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
    addiu $sp, $sp, -760
    sw $ra, 16($sp)
    sw $s0, 584($sp)
    sw $s1, 660($sp)
    sw $s2, 36($sp)
    sw $s3, 652($sp)
    sw $s4, 632($sp)
    sw $s5, 744($sp)
    sw $s6, 596($sp)
    sw $s7, 624($sp)
    addiu $t0, $sp, 124
    jal read
    move $t1, $v0
    sgt $t2, $t1, $zero
    sb $t2, 544($sp)
    sw $v0, 732($sp)
    sw $t0, 76($sp)
    blez $t1, .BB1
    li $t0, 15
    sw $t0, 116($sp)
    ble $t1, $t0, .BB5
    b .BB4
.BB1:
    lb $t0, 544($sp)
    move $t1, $t0
    li $t2, 1
    lw $t3, 732($sp)
    sw $t2, 540($sp)
    sb $t0, 704($sp)
    ble $t3, $t2, .BB3
    move $t1, $t0
    lw $t2, 76($sp)
    addiu $t3, $t2, 4
    lw $t4, 0($t3)
    lw $t5, 0($t2)
    sw $t5, 656($sp)
    sw $t4, 748($sp)
    sw $t3, 692($sp)
    sb $t0, 672($sp)
    ble $t5, $t4, .BB6
.BB2:
    lb $t0, 672($sp)
    move $t1, $t0
    sb $t0, 688($sp)
    b .BB12
.BB3:
    lb $t0, 704($sp)
    move $t1, $t0
    sb $t0, 648($sp)
    beqz $t1, .BB56
    li $t0, 15
    lw $t1, 732($sp)
    sw $t0, 728($sp)
    ble $t1, $t0, .BB24
    b .BB23
.BB4:
    jal read
    move $t0, $v0
    lw $t1, 76($sp)
    sw $v0, 0($t1)
    addiu $t2, $t1, 4
    jal read
    move $t3, $v0
    sw $v0, 0($t2)
    addiu $t4, $t1, 8
    jal read
    move $t5, $v0
    sw $v0, 0($t4)
    addiu $t6, $t1, 12
    jal read
    move $t7, $v0
    sw $v0, 0($t6)
    addiu $t8, $t1, 16
    jal read
    move $t9, $v0
    sw $v0, 0($t8)
    addiu $s0, $t1, 20
    jal read
    move $s1, $v0
    sw $v0, 0($s0)
    addiu $s2, $t1, 24
    jal read
    move $s3, $v0
    sw $v0, 0($s2)
    addiu $s4, $t1, 28
    jal read
    move $s5, $v0
    sw $v0, 0($s4)
    addiu $s6, $t1, 32
    jal read
    move $s7, $v0
    sw $v0, 0($s6)
    addiu $t0, $t1, 36
    jal read
    move $t1, $v0
    sw $v0, 0($t0)
    lw $t2, 76($sp)
    addiu $t3, $t2, 40
    jal read
    move $t4, $v0
    sw $v0, 0($t3)
    addiu $t5, $t2, 44
    jal read
    move $t6, $v0
    sw $v0, 0($t5)
    addiu $t7, $t2, 48
    jal read
    move $t8, $v0
    sw $v0, 0($t7)
    addiu $t9, $t2, 52
    jal read
    move $s0, $v0
    sw $v0, 0($t9)
    addiu $s1, $t2, 56
    jal read
    move $s2, $v0
    sw $v0, 0($s1)
    addiu $s3, $t2, 60
    jal read
    move $s4, $v0
    sw $v0, 0($s3)
    li $s5, 16
    lw $s6, 732($sp)
    ble $s6, $s5, .BB9
    li $t0, 31
    move $t1, $s6
    sw $t0, 664($sp)
    ble $t1, $t0, .BB17
    b .BB8
.BB5:
    jal read
    move $t0, $v0
    lw $t1, 76($sp)
    sw $v0, 0($t1)
    li $t2, 1
    lw $t3, 732($sp)
    sw $t2, 612($sp)
    sw $v0, 32($sp)
    ble $t3, $t2, .BB9
    b .BB11
.BB6:
    lw $t0, 748($sp)
    move $t1, $t0
    lb $t2, 672($sp)
    move $t3, $t2
    lw $t4, 76($sp)
    addiu $t5, $t4, 4
    sw $t0, 0($t5)
    li $t6, 2
    lw $t7, 732($sp)
    sw $t6, 120($sp)
    sw $t5, 64($sp)
    sb $t2, 712($sp)
    sw $t0, 532($sp)
    ble $t7, $t6, .BB14
    b .BB22
.BB7:
    lb $t0, 52($sp)
    move $t1, $t0
    sb $t0, 648($sp)
    beqz $t1, .BB56
    b .BB39
.BB8:
    lw $t0, 76($sp)
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
    lw $t1, 76($sp)
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
    b .BB16
.BB9:
    li $t0, 1
    lw $t1, 732($sp)
    sw $t0, 680($sp)
    ble $t1, $t0, .BB10
    lw $t0, 76($sp)
    addiu $t1, $t0, 4
    lw $t2, 0($t1)
    lw $t3, 0($t0)
    sw $t3, 72($sp)
    sw $t2, 628($sp)
    sw $t1, 28($sp)
    ble $t3, $t2, .BB21
    b .BB28
.BB10:
    li $t0, -1
    sb $t0, 648($sp)
    beqz $t0, .BB56
    li $t0, 15
    lw $t1, 732($sp)
    sw $t0, 728($sp)
    ble $t1, $t0, .BB24
    b .BB23
.BB11:
    lw $t0, 76($sp)
    addiu $t1, $t0, 4
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    li $t3, 2
    lw $t4, 732($sp)
    ble $t4, $t3, .BB9
    b .BB18
.BB12:
    lw $t0, 76($sp)
    addiu $t1, $t0, 4
    lw $t2, 0($t0)
    sw $t2, 0($t1)
    lw $t3, 748($sp)
    sw $t3, 0($t0)
    li $t4, 2
    lw $t5, 732($sp)
    ble $t5, $t4, .BB13
    lb $t0, 688($sp)
    move $t1, $t0
    lw $t2, 76($sp)
    addiu $t3, $t2, 8
    lw $t4, 0($t3)
    addiu $t5, $t2, 4
    lw $t6, 0($t5)
    sw $t6, 104($sp)
    sw $t4, 88($sp)
    sw $t3, 556($sp)
    sw $t5, 112($sp)
    sb $t0, 85($sp)
    ble $t6, $t4, .BB19
    move $t0, $t4
    move $t1, $t4
    lb $t2, 85($sp)
    move $t3, $t2
    sb $t2, 600($sp)
    sw $t4, 580($sp)
    b .BB29
.BB13:
    lb $t0, 688($sp)
    move $t1, $t0
    sb $t0, 648($sp)
    beqz $t1, .BB56
    li $t0, 15
    lw $t1, 732($sp)
    sw $t0, 728($sp)
    ble $t1, $t0, .BB24
    b .BB23
.BB14:
    lb $t0, 712($sp)
    move $t1, $t0
    sb $t0, 648($sp)
    beqz $t1, .BB56
    li $t0, 15
    lw $t1, 732($sp)
    sw $t0, 728($sp)
    ble $t1, $t0, .BB24
    b .BB23
.BB15:
    li $t0, 15
    lw $t1, 732($sp)
    sw $t0, 728($sp)
    ble $t1, $t0, .BB24
    b .BB23
.BB16:
    li $t0, 47
    lw $t1, 732($sp)
    sw $t0, 676($sp)
    ble $t1, $t0, .BB40
    b .BB25
.BB17:
    lw $t0, 76($sp)
    addiu $t1, $t0, 64
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    li $t3, 17
    lw $t4, 732($sp)
    ble $t4, $t3, .BB9
    b .BB26
.BB18:
    lw $t0, 76($sp)
    addiu $t1, $t0, 8
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    li $t3, 3
    lw $t4, 732($sp)
    ble $t4, $t3, .BB9
    b .BB27
.BB19:
    lw $t0, 88($sp)
    move $t1, $t0
    lb $t2, 85($sp)
    move $t3, $t2
    lw $t4, 76($sp)
    addiu $t5, $t4, 8
    sw $t0, 0($t5)
    li $t6, 3
    lw $t7, 732($sp)
    sw $t5, 560($sp)
    sb $t2, 713($sp)
    sw $t6, 48($sp)
    sw $t0, 568($sp)
    ble $t7, $t6, .BB31
.BB20:
    li $t0, 3
    lb $t1, 713($sp)
    move $t2, $t1
    sb $t1, 588($sp)
    sw $t0, 752($sp)
    b .BB38
.BB21:
    lw $t0, 628($sp)
    move $t1, $t0
    li $t2, -1
    lw $t3, 76($sp)
    addiu $t4, $t3, 4
    sw $t0, 0($t4)
    li $t5, 2
    lw $t6, 732($sp)
    sw $t5, 120($sp)
    sw $t4, 64($sp)
    sb $t2, 712($sp)
    sw $t0, 532($sp)
    ble $t6, $t5, .BB14
.BB22:
    li $t0, 2
    lb $t1, 712($sp)
    move $t2, $t1
    sb $t1, 588($sp)
    sw $t0, 752($sp)
    b .BB38
.BB23:
    lw $t0, 76($sp)
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
    lw $t2, 76($sp)
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
    ble $s6, $s5, .BB56
    li $t0, 31
    move $t1, $s6
    sw $t0, 720($sp)
    ble $t1, $t0, .BB49
    b .BB48
.BB24:
    lw $t0, 76($sp)
    lw $t1, 0($t0)
    move $a0, $t1
    jal write
    li $t2, 1
    lw $t3, 732($sp)
    sw $t2, 668($sp)
    sw $t1, 708($sp)
    ble $t3, $t2, .BB56
    b .BB35
.BB25:
    lw $t0, 76($sp)
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
    lw $t1, 76($sp)
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
    b .BB41
.BB26:
    lw $t0, 76($sp)
    addiu $t1, $t0, 68
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    li $t3, 18
    lw $t4, 732($sp)
    ble $t4, $t3, .BB9
    b .BB42
.BB27:
    lw $t0, 76($sp)
    addiu $t1, $t0, 12
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    li $t3, 4
    lw $t4, 732($sp)
    ble $t4, $t3, .BB9
    b .BB43
.BB28:
    lw $t0, 76($sp)
    addiu $t1, $t0, 4
    lw $t2, 0($t0)
    sw $t2, 0($t1)
    lw $t3, 628($sp)
    sw $t3, 0($t0)
    li $t4, 2
    lw $t5, 732($sp)
    ble $t5, $t4, .BB15
    addiu $t1, $t0, 8
    lw $t2, 0($t1)
    addiu $t3, $t0, 4
    lw $t4, 0($t3)
    sw $t4, 640($sp)
    sw $t3, 552($sp)
    sw $t2, 536($sp)
    sw $t1, 44($sp)
    ble $t4, $t2, .BB44
    move $t0, $t2
    move $t1, $t2
    li $t2, -1
    sb $t2, 600($sp)
    sw $t1, 580($sp)
.BB29:
    lw $t0, 76($sp)
    addiu $t1, $t0, 8
    addiu $t2, $t0, 4
    lw $t3, 0($t2)
    sw $t3, 0($t1)
    lw $t4, 0($t0)
    lw $t5, 580($sp)
    ble $t4, $t5, .BB45
    li $t0, 2
    move $t1, $t5
    move $t2, $t5
    move $t3, $zero
    lb $t4, 600($sp)
    move $t5, $t4
    sb $t4, 84($sp)
    sw $zero, 80($sp)
    sw $t2, 700($sp)
    sw $t0, 564($sp)
.BB30:
    lw $t0, 80($sp)
    addiu $t1, $t0, 1
    lw $t2, 76($sp)
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
    sw $s0, 108($sp)
    ble $s0, $s1, .BB36
    b .BB46
.BB31:
    lb $t0, 713($sp)
    move $t1, $t0
    sb $t0, 648($sp)
    beqz $t1, .BB56
    li $t0, 15
    lw $t1, 732($sp)
    sw $t0, 728($sp)
    ble $t1, $t0, .BB24
    b .BB23
.BB32:
    lw $t0, 752($sp)
    move $t1, $t0
    lw $t2, 548($sp)
    move $t3, $t2
    lw $t4, 636($sp)
    move $t5, $t4
    lb $t6, 588($sp)
    move $t7, $t6
    sb $t6, 689($sp)
    sw $t4, 644($sp)
    sw $t2, 736($sp)
    sw $t0, 524($sp)
.BB33:
    lw $t0, 76($sp)
    move $t1, $t0
    li $t2, 4
    lw $t3, 644($sp)
    mult $t3, $t2
    mflo $t4
    addu $t1, $t1, $t4
    lw $t5, 0($t1)
    lw $t6, 736($sp)
    ble $t5, $t6, .BB34
    lw $t0, 524($sp)
    move $t1, $t0
    move $t2, $t6
    move $t3, $t6
    lw $t4, 644($sp)
    move $t5, $t4
    lb $t6, 689($sp)
    move $t7, $t6
    sb $t6, 84($sp)
    sw $t4, 80($sp)
    sw $t3, 700($sp)
    sw $t0, 564($sp)
    b .BB30
.BB34:
    lw $t0, 524($sp)
    move $t1, $t0
    lw $t2, 736($sp)
    move $t3, $t2
    lw $t4, 644($sp)
    move $t5, $t4
    lb $t6, 689($sp)
    move $t7, $t6
    sb $t6, 52($sp)
    sw $t4, 608($sp)
    sw $t2, 576($sp)
    sw $t0, 100($sp)
    b .BB37
.BB35:
    lw $t0, 76($sp)
    addiu $t1, $t0, 4
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 2
    lw $t4, 732($sp)
    ble $t4, $t3, .BB56
    b .BB50
.BB36:
    lw $t0, 564($sp)
    move $t1, $t0
    lw $t2, 700($sp)
    move $t3, $t2
    lw $t4, 108($sp)
    move $t5, $t4
    lb $t6, 84($sp)
    move $t7, $t6
    sb $t6, 52($sp)
    sw $t4, 608($sp)
    sw $t2, 576($sp)
    sw $t0, 100($sp)
.BB37:
    lw $t0, 608($sp)
    addiu $t1, $t0, 1
    lw $t2, 76($sp)
    move $t3, $t2
    li $t4, 4
    mult $t1, $t4
    mflo $t5
    addu $t3, $t3, $t5
    lw $t6, 576($sp)
    sw $t6, 0($t3)
    lw $t7, 100($sp)
    addiu $t8, $t7, 1
    lw $t9, 732($sp)
    sw $t8, 56($sp)
    bge $t8, $t9, .BB7
    move $t0, $t8
    move $t1, $t8
    lb $t2, 52($sp)
    move $t3, $t2
    sb $t2, 588($sp)
    sw $t8, 752($sp)
.BB38:
    lw $t0, 76($sp)
    move $t1, $t0
    li $t2, 4
    lw $t3, 752($sp)
    mult $t3, $t2
    mflo $t4
    addu $t1, $t1, $t4
    lw $t5, 0($t1)
    addiu $t6, $t3, -1
    li $t7, -1
    sw $t6, 636($sp)
    sw $t5, 548($sp)
    ble $t6, $t7, .BB47
    b .BB32
.BB39:
    li $t0, 15
    lw $t1, 732($sp)
    sw $t0, 728($sp)
    ble $t1, $t0, .BB24
    b .BB23
.BB40:
    lw $t0, 76($sp)
    addiu $t1, $t0, 128
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    li $t3, 33
    lw $t4, 732($sp)
    ble $t4, $t3, .BB54
    b .BB51
.BB41:
    li $t0, 63
    lw $t1, 732($sp)
    sw $t0, 620($sp)
    ble $t1, $t0, .BB59
    b .BB58
.BB42:
    lw $t0, 76($sp)
    addiu $t1, $t0, 72
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    li $t3, 19
    lw $t4, 732($sp)
    ble $t4, $t3, .BB54
    b .BB52
.BB43:
    lw $t0, 76($sp)
    addiu $t1, $t0, 16
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    li $t3, 5
    lw $t4, 732($sp)
    ble $t4, $t3, .BB54
    b .BB53
.BB44:
    lw $t0, 536($sp)
    move $t1, $t0
    li $t2, -1
    lw $t3, 76($sp)
    addiu $t4, $t3, 8
    sw $t0, 0($t4)
    li $t5, 3
    lw $t6, 732($sp)
    sw $t4, 560($sp)
    sb $t2, 713($sp)
    sw $t5, 48($sp)
    sw $t0, 568($sp)
    ble $t6, $t5, .BB31
    b .BB20
.BB45:
    li $t0, 2
    lw $t1, 580($sp)
    move $t2, $t1
    move $t3, $zero
    lb $t4, 600($sp)
    move $t5, $t4
    sb $t4, 52($sp)
    sw $zero, 608($sp)
    sw $t1, 576($sp)
    sw $t0, 100($sp)
    b .BB37
.BB46:
    lw $t0, 564($sp)
    move $t1, $t0
    lw $t2, 700($sp)
    move $t3, $t2
    lw $t4, 108($sp)
    move $t5, $t4
    lb $t6, 84($sp)
    move $t7, $t6
    sb $t6, 689($sp)
    sw $t4, 644($sp)
    sw $t2, 736($sp)
    sw $t0, 524($sp)
    b .BB33
.BB47:
    lw $t0, 752($sp)
    move $t1, $t0
    lw $t2, 548($sp)
    move $t3, $t2
    lw $t4, 636($sp)
    move $t5, $t4
    lb $t6, 588($sp)
    move $t7, $t6
    sb $t6, 52($sp)
    sw $t4, 608($sp)
    sw $t2, 576($sp)
    sw $t0, 100($sp)
    b .BB37
.BB48:
    lw $t0, 76($sp)
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
    lw $t1, 76($sp)
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
    ble $s7, $s6, .BB56
    li $t0, 47
    move $t1, $s7
    sw $t0, 616($sp)
    ble $t1, $t0, .BB73
    b .BB67
.BB49:
    lw $t0, 76($sp)
    addiu $t1, $t0, 64
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 17
    lw $t4, 732($sp)
    ble $t4, $t3, .BB56
    lw $t0, 76($sp)
    addiu $t1, $t0, 68
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 18
    lw $t4, 732($sp)
    ble $t4, $t3, .BB56
    b .BB68
.BB50:
    lw $t0, 76($sp)
    addiu $t1, $t0, 8
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 3
    lw $t4, 732($sp)
    ble $t4, $t3, .BB56
    b .BB57
.BB51:
    lw $t0, 76($sp)
    addiu $t1, $t0, 132
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    li $t3, 34
    lw $t4, 732($sp)
    ble $t4, $t3, .BB54
    b .BB61
.BB52:
    lw $t0, 76($sp)
    addiu $t1, $t0, 76
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    li $t3, 20
    lw $t4, 732($sp)
    ble $t4, $t3, .BB54
    b .BB63
.BB53:
    lw $t0, 76($sp)
    addiu $t1, $t0, 20
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    li $t3, 6
    lw $t4, 732($sp)
    ble $t4, $t3, .BB54
    b .BB65
.BB54:
    li $t0, 1
    lw $t1, 732($sp)
    sw $t0, 92($sp)
    ble $t1, $t0, .BB55
    li $t0, -1
    lw $t1, 76($sp)
    addiu $t2, $t1, 4
    lw $t3, 0($t2)
    lw $t4, 0($t1)
    sw $t4, 656($sp)
    sw $t3, 748($sp)
    sw $t2, 692($sp)
    sb $t0, 672($sp)
    ble $t4, $t3, .BB6
    b .BB2
.BB55:
    li $t0, -1
    sb $t0, 648($sp)
    beqz $t0, .BB56
    li $t0, 15
    lw $t1, 732($sp)
    sw $t0, 728($sp)
    ble $t1, $t0, .BB24
    b .BB23
.BB56:
    move $v0, $zero
    lw $s7, 624($sp)
    lw $s6, 596($sp)
    lw $s5, 744($sp)
    lw $s4, 632($sp)
    lw $s3, 652($sp)
    lw $s2, 36($sp)
    lw $s1, 660($sp)
    lw $s0, 584($sp)
    lw $ra, 16($sp)
    addiu $sp, $sp, 760
    jr $ra
.BB57:
    lw $t0, 76($sp)
    addiu $t1, $t0, 12
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 4
    lw $t4, 732($sp)
    ble $t4, $t3, .BB56
    b .BB69
.BB58:
    lw $t0, 76($sp)
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
    lw $t1, 76($sp)
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
    sw $t1, 604($sp)
    sw $t0, 40($sp)
    bge $t1, $t2, .BB70
    b .BB75
.BB59:
    lw $t0, 76($sp)
    addiu $t1, $t0, 192
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    li $t3, 49
    lw $t4, 732($sp)
    ble $t4, $t3, .BB60
    li $t0, 49
    sw $t0, 572($sp)
    b .BB71
.BB60:
    li $t0, -1
    li $t1, 1
    lw $t2, 732($sp)
    sw $t1, 540($sp)
    sb $t0, 704($sp)
    ble $t2, $t1, .BB3
    move $t1, $t0
    lw $t2, 76($sp)
    addiu $t3, $t2, 4
    lw $t4, 0($t3)
    lw $t5, 0($t2)
    sw $t5, 656($sp)
    sw $t4, 748($sp)
    sw $t3, 692($sp)
    sb $t0, 672($sp)
    ble $t5, $t4, .BB6
    b .BB2
.BB61:
    lw $t0, 76($sp)
    addiu $t1, $t0, 136
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    li $t3, 35
    lw $t4, 732($sp)
    ble $t4, $t3, .BB62
    li $t0, 35
    sw $t0, 572($sp)
    b .BB71
.BB62:
    li $t0, -1
    li $t1, 1
    lw $t2, 732($sp)
    sw $t1, 540($sp)
    sb $t0, 704($sp)
    ble $t2, $t1, .BB3
    move $t1, $t0
    lw $t2, 76($sp)
    addiu $t3, $t2, 4
    lw $t4, 0($t3)
    lw $t5, 0($t2)
    sw $t5, 656($sp)
    sw $t4, 748($sp)
    sw $t3, 692($sp)
    sb $t0, 672($sp)
    ble $t5, $t4, .BB6
    b .BB2
.BB63:
    lw $t0, 76($sp)
    addiu $t1, $t0, 80
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    li $t3, 21
    lw $t4, 732($sp)
    ble $t4, $t3, .BB64
    li $t0, 21
    sw $t0, 572($sp)
    b .BB71
.BB64:
    li $t0, -1
    li $t1, 1
    lw $t2, 732($sp)
    sw $t1, 540($sp)
    sb $t0, 704($sp)
    ble $t2, $t1, .BB3
    move $t1, $t0
    lw $t2, 76($sp)
    addiu $t3, $t2, 4
    lw $t4, 0($t3)
    lw $t5, 0($t2)
    sw $t5, 656($sp)
    sw $t4, 748($sp)
    sw $t3, 692($sp)
    sb $t0, 672($sp)
    ble $t5, $t4, .BB6
    b .BB2
.BB65:
    lw $t0, 76($sp)
    addiu $t1, $t0, 24
    jal read
    move $t2, $v0
    sw $v0, 0($t1)
    li $t3, 7
    lw $t4, 732($sp)
    ble $t4, $t3, .BB66
    li $t0, 7
    sw $t0, 572($sp)
    b .BB71
.BB66:
    li $t0, -1
    li $t1, 1
    lw $t2, 732($sp)
    sw $t1, 540($sp)
    sb $t0, 704($sp)
    ble $t2, $t1, .BB3
    move $t1, $t0
    lw $t2, 76($sp)
    addiu $t3, $t2, 4
    lw $t4, 0($t3)
    lw $t5, 0($t2)
    sw $t5, 656($sp)
    sw $t4, 748($sp)
    sw $t3, 692($sp)
    sb $t0, 672($sp)
    ble $t5, $t4, .BB6
    b .BB2
.BB67:
    lw $t0, 76($sp)
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
    lw $t1, 76($sp)
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
    ble $s7, $s6, .BB56
    li $t0, 63
    move $t1, $s7
    sw $t0, 696($sp)
    ble $t1, $t0, .BB77
    lw $t0, 76($sp)
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
    lw $t1, 76($sp)
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
    ble $s7, $s6, .BB56
    b .BB76
.BB68:
    lw $t0, 76($sp)
    addiu $t1, $t0, 72
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 19
    lw $t4, 732($sp)
    ble $t4, $t3, .BB56
    b .BB74
.BB69:
    lw $t0, 76($sp)
    addiu $t1, $t0, 16
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 5
    lw $t4, 732($sp)
    ble $t4, $t3, .BB56
    lw $t0, 76($sp)
    addiu $t1, $t0, 20
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 6
    lw $t4, 732($sp)
    ble $t4, $t3, .BB56
    b .BB80
.BB70:
    lw $t0, 40($sp)
    move $t1, $t0
    sw $t0, 572($sp)
.BB71:
    lw $t0, 76($sp)
    move $t1, $t0
    li $t2, 4
    lw $t3, 572($sp)
    mult $t3, $t2
    mflo $t4
    addu $t1, $t1, $t4
    jal read
    move $t5, $v0
    sw $v0, 0($t1)
    addiu $t6, $t3, 1
    lw $t7, 732($sp)
    sw $t6, 96($sp)
    bge $t6, $t7, .BB72
    move $t0, $t6
    move $t1, $t6
    sw $t6, 572($sp)
    b .BB71
.BB72:
    li $t0, -1
    li $t1, 1
    lw $t2, 732($sp)
    sw $t1, 540($sp)
    sb $t0, 704($sp)
    ble $t2, $t1, .BB3
    move $t1, $t0
    lw $t2, 76($sp)
    addiu $t3, $t2, 4
    lw $t4, 0($t3)
    lw $t5, 0($t2)
    sw $t5, 656($sp)
    sw $t4, 748($sp)
    sw $t3, 692($sp)
    sb $t0, 672($sp)
    ble $t5, $t4, .BB6
    b .BB2
.BB73:
    lw $t0, 76($sp)
    addiu $t1, $t0, 128
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 33
    lw $t4, 732($sp)
    ble $t4, $t3, .BB56
    lw $t0, 76($sp)
    addiu $t1, $t0, 132
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 34
    lw $t4, 732($sp)
    ble $t4, $t3, .BB56
    b .BB78
.BB74:
    lw $t0, 76($sp)
    addiu $t1, $t0, 76
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 20
    lw $t4, 732($sp)
    ble $t4, $t3, .BB56
    lw $t0, 76($sp)
    addiu $t1, $t0, 80
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 21
    lw $t4, 732($sp)
    ble $t4, $t3, .BB56
    b .BB79
.BB75:
    lw $t0, 40($sp)
    move $t1, $t0
    sw $t0, 716($sp)
    lw $t0, 76($sp)
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
    sw $t1, 592($sp)
    move $t1, $v0
    sw $v0, 0($t0)
    lw $t2, 592($sp)
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
    sw $t2, 528($sp)
    bge $t2, $t3, .BB9
    move $t0, $t2
    move $t1, $t2
    addiu $t2, $t1, 15
    sw $t2, 604($sp)
    sw $t1, 40($sp)
    bge $t2, $t3, .BB70
    b .BB75
.BB76:
    li $t0, 64
    addiu $t1, $t0, 15
    lw $t2, 732($sp)
    sw $t1, 60($sp)
    sw $t0, 684($sp)
    bge $t1, $t2, .BB81
    b .BB83
.BB77:
    lw $t0, 76($sp)
    addiu $t1, $t0, 192
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 49
    lw $t4, 732($sp)
    ble $t4, $t3, .BB56
    li $t0, 49
    sw $t0, 740($sp)
    b .BB82
.BB78:
    lw $t0, 76($sp)
    addiu $t1, $t0, 136
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 35
    lw $t4, 732($sp)
    ble $t4, $t3, .BB56
    li $t0, 35
    sw $t0, 740($sp)
    b .BB82
.BB79:
    li $t0, 21
    sw $t0, 740($sp)
    b .BB82
.BB80:
    lw $t0, 76($sp)
    addiu $t1, $t0, 24
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 7
    lw $t4, 732($sp)
    ble $t4, $t3, .BB56
    li $t0, 7
    sw $t0, 740($sp)
    b .BB82
.BB81:
    lw $t0, 684($sp)
    move $t1, $t0
    sw $t0, 740($sp)
.BB82:
    lw $t0, 76($sp)
    move $t1, $t0
    li $t2, 4
    lw $t3, 740($sp)
    mult $t3, $t2
    mflo $t4
    addu $t1, $t1, $t4
    lw $t5, 0($t1)
    move $a0, $t5
    jal write
    addiu $t6, $t3, 1
    lw $t7, 732($sp)
    sw $t6, 68($sp)
    bge $t6, $t7, .BB56
    move $t0, $t6
    move $t1, $t6
    sw $t6, 740($sp)
    b .BB82
.BB83:
    lw $t0, 684($sp)
    move $t1, $t0
    sw $t0, 724($sp)
    lw $t0, 76($sp)
    move $t1, $t0
    li $t2, 4
    lw $t3, 724($sp)
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
    sw $t1, 592($sp)
    lw $t1, 0($t0)
    move $a0, $t1
    jal write
    lw $t2, 592($sp)
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
    lw $t1, 724($sp)
    addiu $t2, $t1, 16
    lw $t3, 732($sp)
    sw $t2, 24($sp)
    bge $t2, $t3, .BB56
    move $t0, $t2
    move $t1, $t2
    addiu $t2, $t1, 15
    sw $t2, 60($sp)
    sw $t1, 684($sp)
    bge $t2, $t3, .BB81
    b .BB83

