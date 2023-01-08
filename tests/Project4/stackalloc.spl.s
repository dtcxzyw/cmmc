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
    addiu $sp, $sp, -3192
    sw $ra, 0($sp)
    sw $s0, 540($sp)
    sw $s1, 576($sp)
    sw $s2, 468($sp)
    sw $s3, 480($sp)
    sw $s4, 412($sp)
    sw $s5, 1160($sp)
    sw $s6, 564($sp)
    sw $s7, 492($sp)
    addiu $t0, $sp, 588
    jal read
    move $t1, $v0
    sgt $t2, $t1, 0
    sb $t2, 124($sp)
    sw $t1, 144($sp)
    sw $t0, 116($sp)
    blez $t1, .BB1
    lw $t0, 116($sp)
    move $t1, $t0
    lw $t2, 144($sp)
    move $t3, $t2
    sw $t3, 148($sp)
    sw $t1, 136($sp)
    b .BB6
.BB1:
    lw $t0, 116($sp)
    move $t1, $t0
    lw $t2, 144($sp)
    move $t3, $t2
    lb $t4, 124($sp)
    move $t5, $t4
    sb $t5, 132($sp)
    sw $t3, 112($sp)
    sw $t1, 152($sp)
    b .BB5
.BB2:
    lw $t0, 48($sp)
    move $t1, $t0
    lw $t2, 80($sp)
    move $t3, $t2
    lw $t4, 224($sp)
    move $t5, $t4
    lb $t6, 40($sp)
    move $t7, $t6
    sb $t7, 32($sp)
    sw $t5, 84($sp)
    sw $t3, 64($sp)
    sw $t1, 100($sp)
    b .BB20
.BB3:
    lw $t0, 76($sp)
    move $t1, $t0
    lw $t2, 72($sp)
    move $t3, $t2
    sw $t3, 184($sp)
    sw $t1, 176($sp)
    b .BB14
.BB4:
    lw $t0, 568($sp)
    move $t1, $t0
    lw $t2, 496($sp)
    move $t3, $t2
    li $t4, -1
    sb $t4, 132($sp)
    sw $t3, 112($sp)
    sw $t1, 152($sp)
.BB5:
    li $t0, 1
    lw $t1, 112($sp)
    ble $t1, $t0, .BB10
    b .BB8
.BB6:
    li $t0, 15
    lw $t1, 148($sp)
    ble $t1, $t0, .BB7
    lw $t0, 136($sp)
    move $t1, $t0
    lw $t2, 148($sp)
    move $t3, $t2
    sw $t3, 96($sp)
    sw $t1, 164($sp)
    lw $t0, 164($sp)
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
    sw $t1, 1332($sp)
    lw $t1, 164($sp)
    sw $t2, 1328($sp)
    addiu $t2, $t1, 36
    jal read
    sw $t3, 1324($sp)
    move $t3, $v0
    sw $t3, 0($t2)
    sw $t4, 1320($sp)
    addiu $t4, $t1, 40
    jal read
    sw $t5, 1316($sp)
    move $t5, $v0
    sw $t5, 0($t4)
    sw $t6, 1312($sp)
    addiu $t6, $t1, 44
    jal read
    sw $t7, 1308($sp)
    move $t7, $v0
    sw $t7, 0($t6)
    sw $t8, 1304($sp)
    addiu $t8, $t1, 48
    jal read
    sw $t9, 1300($sp)
    move $t9, $v0
    sw $t9, 0($t8)
    sw $s0, 1296($sp)
    addiu $s0, $t1, 52
    jal read
    sw $s1, 1292($sp)
    move $s1, $v0
    sw $s1, 0($s0)
    sw $s2, 1288($sp)
    addiu $s2, $t1, 56
    jal read
    sw $s3, 1284($sp)
    move $s3, $v0
    sw $s3, 0($s2)
    sw $s4, 1280($sp)
    addiu $s4, $t1, 60
    jal read
    sw $s5, 1276($sp)
    move $s5, $v0
    sw $s5, 0($s4)
    sw $s6, 1272($sp)
    li $s6, 16
    sw $s7, 1268($sp)
    lw $s7, 96($sp)
    ble $s7, $s6, .BB55
    b .BB12
.BB7:
    lw $t0, 136($sp)
    move $t1, $t0
    lw $t2, 148($sp)
    move $t3, $t2
    sw $t3, 72($sp)
    sw $t1, 76($sp)
    lw $t0, 76($sp)
    move $t1, $t0
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 1
    lw $t4, 72($sp)
    ble $t4, $t3, .BB3
    lw $t0, 76($sp)
    move $t1, $t0
    lw $t2, 72($sp)
    move $t3, $t2
    sw $t3, 24($sp)
    sw $t1, 28($sp)
    b .BB16
.BB8:
    lw $t0, 152($sp)
    move $t1, $t0
    lw $t2, 112($sp)
    move $t3, $t2
    lb $t4, 132($sp)
    move $t5, $t4
    sb $t5, 40($sp)
    sw $t3, 80($sp)
    sw $t1, 48($sp)
.BB9:
    lw $t0, 48($sp)
    addiu $t1, $t0, 4
    lw $t2, 0($t1)
    move $t3, $t0
    lw $t4, 0($t3)
    sw $t2, 224($sp)
    ble $t4, $t2, .BB2
    lw $t0, 48($sp)
    move $t1, $t0
    lw $t2, 80($sp)
    move $t3, $t2
    lw $t4, 224($sp)
    move $t5, $t4
    lb $t6, 40($sp)
    move $t7, $t6
    sb $t7, 156($sp)
    sw $t5, 16($sp)
    sw $t3, 8($sp)
    sw $t1, 12($sp)
    b .BB17
.BB10:
    lw $t0, 152($sp)
    move $t1, $t0
    lw $t2, 112($sp)
    move $t3, $t2
    lb $t4, 132($sp)
    move $t5, $t4
    sb $t5, 41($sp)
    sw $t3, 44($sp)
    sw $t1, 52($sp)
.BB11:
    lb $t0, 41($sp)
    beqz $t0, .BB24
    lw $t0, 52($sp)
    move $t1, $t0
    lw $t2, 44($sp)
    move $t3, $t2
    sw $t3, 256($sp)
    sw $t1, 56($sp)
    b .BB22
.BB12:
    lw $t0, 164($sp)
    move $t1, $t0
    lw $t2, 96($sp)
    move $t3, $t2
    sw $t3, 180($sp)
    sw $t1, 168($sp)
    li $t0, 31
    lw $t1, 180($sp)
    ble $t1, $t0, .BB26
    lw $t0, 168($sp)
    move $t1, $t0
    lw $t2, 180($sp)
    move $t3, $t2
    sw $t3, 1188($sp)
    sw $t1, 1192($sp)
    b .BB25
.BB13:
    lw $t0, 1168($sp)
    move $t1, $t0
    lw $t2, 1176($sp)
    move $t3, $t2
    sw $t3, 184($sp)
    sw $t1, 176($sp)
.BB14:
    li $t0, 1
    lw $t1, 184($sp)
    ble $t1, $t0, .BB18
    lw $t0, 176($sp)
    move $t1, $t0
    lw $t2, 184($sp)
    move $t3, $t2
    sw $t3, 1148($sp)
    sw $t1, 1144($sp)
    b .BB33
.BB15:
    lw $t0, 376($sp)
    move $t1, $t0
    lw $t2, 384($sp)
    move $t3, $t2
    li $t4, -1
    sb $t4, 41($sp)
    sw $t3, 44($sp)
    sw $t1, 52($sp)
    b .BB11
.BB16:
    lw $t0, 28($sp)
    addiu $t1, $t0, 4
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 2
    lw $t4, 24($sp)
    ble $t4, $t3, .BB28
    lw $t0, 28($sp)
    move $t1, $t0
    lw $t2, 24($sp)
    move $t3, $t2
    sw $t3, 1176($sp)
    sw $t1, 1168($sp)
    lw $t0, 1168($sp)
    addiu $t1, $t0, 8
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 3
    lw $t4, 1176($sp)
    ble $t4, $t3, .BB13
    b .BB40
.BB17:
    lw $t0, 12($sp)
    addiu $t1, $t0, 4
    move $t2, $t0
    lw $t3, 0($t2)
    sw $t3, 0($t1)
    lw $t4, 16($sp)
    sw $t4, 0($t2)
    li $t5, 2
    lw $t6, 8($sp)
    ble $t6, $t5, .BB42
    lw $t0, 12($sp)
    move $t1, $t0
    lw $t2, 8($sp)
    move $t3, $t2
    lb $t4, 156($sp)
    move $t5, $t4
    sb $t5, 1140($sp)
    sw $t3, 1136($sp)
    sw $t1, 1172($sp)
    b .BB31
.BB18:
    lw $t0, 176($sp)
    move $t1, $t0
    lw $t2, 184($sp)
    move $t3, $t2
    li $t4, -1
    sb $t4, 41($sp)
    sw $t3, 44($sp)
    sw $t1, 52($sp)
    b .BB11
.BB19:
    lw $t0, 1144($sp)
    move $t1, $t0
    lw $t2, 1148($sp)
    move $t3, $t2
    lw $t4, 20($sp)
    move $t5, $t4
    li $t6, -1
    sb $t6, 32($sp)
    sw $t5, 84($sp)
    sw $t3, 64($sp)
    sw $t1, 100($sp)
.BB20:
    lw $t0, 100($sp)
    addiu $t1, $t0, 4
    lw $t2, 84($sp)
    sw $t2, 0($t1)
    li $t3, 2
    lw $t4, 64($sp)
    ble $t4, $t3, .BB44
    lw $t0, 100($sp)
    move $t1, $t0
    lw $t2, 64($sp)
    move $t3, $t2
    li $t4, 2
    lb $t5, 32($sp)
    move $t6, $t5
    sb $t6, 1128($sp)
    sw $t4, 192($sp)
    sw $t3, 988($sp)
    sw $t1, 1152($sp)
    b .BB34
.BB21:
    lw $t0, 488($sp)
    move $t1, $t0
    lw $t2, 476($sp)
    move $t3, $t2
    sw $t3, 256($sp)
    sw $t1, 56($sp)
.BB22:
    li $t0, 15
    lw $t1, 256($sp)
    ble $t1, $t0, .BB36
    b .BB35
.BB23:
    lw $t0, 1152($sp)
    move $t1, $t0
    lw $t2, 988($sp)
    move $t3, $t2
    lw $t4, 192($sp)
    move $t5, $t4
    lw $t6, 60($sp)
    move $t7, $t6
    lw $t8, 88($sp)
    move $t9, $t8
    lb $s0, 1128($sp)
    move $s1, $s0
    sb $s1, 1076($sp)
    sw $t9, 1068($sp)
    sw $t7, 1060($sp)
    sw $t5, 1052($sp)
    sw $t3, 1044($sp)
    sw $t1, 1036($sp)
    b .BB58
.BB24:
    move $v0, $zero
    lw $s7, 492($sp)
    lw $s6, 564($sp)
    lw $s5, 1160($sp)
    lw $s4, 412($sp)
    lw $s3, 480($sp)
    lw $s2, 468($sp)
    lw $s1, 576($sp)
    lw $s0, 540($sp)
    lw $ra, 0($sp)
    addiu $sp, $sp, 3192
    jr $ra
.BB25:
    lw $t0, 1192($sp)
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
    sw $t1, 1456($sp)
    lw $t1, 1192($sp)
    sw $t2, 1452($sp)
    addiu $t2, $t1, 100
    jal read
    sw $t3, 1448($sp)
    move $t3, $v0
    sw $t3, 0($t2)
    sw $t4, 1444($sp)
    addiu $t4, $t1, 104
    jal read
    sw $t5, 1440($sp)
    move $t5, $v0
    sw $t5, 0($t4)
    sw $t6, 1436($sp)
    addiu $t6, $t1, 108
    jal read
    sw $t7, 1432($sp)
    move $t7, $v0
    sw $t7, 0($t6)
    sw $t8, 1428($sp)
    addiu $t8, $t1, 112
    jal read
    sw $t9, 1424($sp)
    move $t9, $v0
    sw $t9, 0($t8)
    sw $s0, 1420($sp)
    addiu $s0, $t1, 116
    jal read
    sw $s1, 1416($sp)
    move $s1, $v0
    sw $s1, 0($s0)
    sw $s2, 1412($sp)
    addiu $s2, $t1, 120
    jal read
    sw $s3, 1408($sp)
    move $s3, $v0
    sw $s3, 0($s2)
    sw $s4, 1524($sp)
    addiu $s4, $t1, 124
    jal read
    sw $s5, 1460($sp)
    move $s5, $v0
    sw $s5, 0($s4)
    sw $s6, 1536($sp)
    li $s6, 32
    sw $s7, 1532($sp)
    lw $s7, 1188($sp)
    ble $s7, $s6, .BB30
    lw $t0, 1192($sp)
    move $t1, $t0
    lw $t2, 1188($sp)
    move $t3, $t2
    sw $t3, 200($sp)
    sw $t1, 196($sp)
    b .BB59
.BB26:
    lw $t0, 168($sp)
    move $t1, $t0
    lw $t2, 180($sp)
    move $t3, $t2
    sw $t3, 1180($sp)
    sw $t1, 1184($sp)
    lw $t0, 1184($sp)
    addiu $t1, $t0, 64
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 17
    lw $t4, 1180($sp)
    ble $t4, $t3, .BB27
    lw $t0, 1184($sp)
    move $t1, $t0
    lw $t2, 1180($sp)
    move $t3, $t2
    sw $t3, 208($sp)
    sw $t1, 204($sp)
    b .BB39
.BB27:
    lw $t0, 1184($sp)
    move $t1, $t0
    lw $t2, 1180($sp)
    move $t3, $t2
    sw $t3, 184($sp)
    sw $t1, 176($sp)
    b .BB14
.BB28:
    lw $t0, 28($sp)
    move $t1, $t0
    lw $t2, 24($sp)
    move $t3, $t2
    sw $t3, 184($sp)
    sw $t1, 176($sp)
    b .BB14
.BB29:
    lw $t0, 204($sp)
    move $t1, $t0
    lw $t2, 208($sp)
    move $t3, $t2
    sw $t3, 184($sp)
    sw $t1, 176($sp)
    b .BB14
.BB30:
    lw $t0, 1192($sp)
    move $t1, $t0
    lw $t2, 1188($sp)
    move $t3, $t2
    sw $t3, 184($sp)
    sw $t1, 176($sp)
    b .BB14
.BB31:
    lw $t0, 1172($sp)
    addiu $t1, $t0, 8
    lw $t2, 0($t1)
    addiu $t3, $t0, 4
    lw $t4, 0($t3)
    sw $t2, 172($sp)
    ble $t4, $t2, .BB32
    lw $t0, 1172($sp)
    move $t1, $t0
    lw $t2, 1136($sp)
    move $t3, $t2
    lw $t4, 172($sp)
    move $t5, $t4
    lb $t6, 1140($sp)
    move $t7, $t6
    sb $t7, 508($sp)
    sw $t5, 516($sp)
    sw $t3, 524($sp)
    sw $t1, 216($sp)
    b .BB66
.BB32:
    lw $t0, 1172($sp)
    move $t1, $t0
    lw $t2, 1136($sp)
    move $t3, $t2
    lw $t4, 172($sp)
    move $t5, $t4
    lb $t6, 1140($sp)
    move $t7, $t6
    sb $t7, 420($sp)
    sw $t5, 1156($sp)
    sw $t3, 572($sp)
    sw $t1, 500($sp)
    b .BB48
.BB33:
    lw $t0, 1144($sp)
    addiu $t1, $t0, 4
    lw $t2, 0($t1)
    move $t3, $t0
    lw $t4, 0($t3)
    sw $t2, 20($sp)
    ble $t4, $t2, .BB19
    lw $t0, 1144($sp)
    move $t1, $t0
    lw $t2, 1148($sp)
    move $t3, $t2
    lw $t4, 20($sp)
    move $t5, $t4
    sw $t5, 584($sp)
    sw $t3, 476($sp)
    sw $t1, 488($sp)
    lw $t0, 488($sp)
    addiu $t1, $t0, 4
    move $t2, $t0
    lw $t3, 0($t2)
    sw $t3, 0($t1)
    lw $t4, 584($sp)
    sw $t4, 0($t2)
    li $t5, 2
    lw $t6, 476($sp)
    ble $t6, $t5, .BB21
    b .BB65
.BB34:
    lw $t0, 1152($sp)
    move $t1, $t0
    li $t2, 4
    lw $t3, 192($sp)
    mult $t3, $t2
    mflo $t4
    addu $t1, $t1, $t4
    lw $t5, 0($t1)
    addiu $t6, $t3, -1
    li $t7, -1
    sw $t6, 88($sp)
    sw $t5, 60($sp)
    ble $t6, $t7, .BB23
    lw $t0, 1152($sp)
    move $t1, $t0
    lw $t2, 988($sp)
    move $t3, $t2
    lw $t4, 192($sp)
    move $t5, $t4
    lw $t6, 60($sp)
    move $t7, $t6
    lw $t8, 88($sp)
    move $t9, $t8
    lb $s0, 1128($sp)
    move $s1, $s0
    sb $s1, 1028($sp)
    sw $t9, 1020($sp)
    sw $t7, 1012($sp)
    sw $t5, 996($sp)
    sw $t3, 1004($sp)
    sw $t1, 548($sp)
    b .BB53
.BB35:
    lw $t0, 56($sp)
    move $t1, $t0
    lw $t2, 256($sp)
    move $t3, $t2
    sw $t3, 1112($sp)
    sw $t1, 1120($sp)
    lw $t0, 1120($sp)
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
    sw $t1, 1728($sp)
    lw $t1, 1120($sp)
    sw $t2, 1724($sp)
    addiu $t2, $t1, 36
    sw $t3, 1720($sp)
    lw $t3, 0($t2)
    move $a0, $t3
    jal write
    sw $t4, 1716($sp)
    addiu $t4, $t1, 40
    sw $t5, 1712($sp)
    lw $t5, 0($t4)
    move $a0, $t5
    jal write
    sw $t6, 1708($sp)
    addiu $t6, $t1, 44
    sw $t7, 1704($sp)
    lw $t7, 0($t6)
    move $a0, $t7
    jal write
    sw $t8, 1700($sp)
    addiu $t8, $t1, 48
    sw $t9, 1696($sp)
    lw $t9, 0($t8)
    move $a0, $t9
    jal write
    sw $s0, 1692($sp)
    addiu $s0, $t1, 52
    sw $s1, 1688($sp)
    lw $s1, 0($s0)
    move $a0, $s1
    jal write
    sw $s2, 1680($sp)
    addiu $s2, $t1, 56
    sw $s3, 1684($sp)
    lw $s3, 0($s2)
    move $a0, $s3
    jal write
    sw $s4, 1668($sp)
    addiu $s4, $t1, 60
    sw $s5, 1676($sp)
    lw $s5, 0($s4)
    move $a0, $s5
    jal write
    sw $s6, 1640($sp)
    li $s6, 16
    sw $s7, 1644($sp)
    lw $s7, 1112($sp)
    ble $s7, $s6, .BB24
    lw $t0, 1120($sp)
    move $t1, $t0
    lw $t2, 1112($sp)
    move $t3, $t2
    sw $t3, 1092($sp)
    sw $t1, 1084($sp)
    b .BB50
.BB36:
    lw $t0, 56($sp)
    move $t1, $t0
    lw $t2, 256($sp)
    move $t3, $t2
    sw $t3, 120($sp)
    sw $t1, 140($sp)
    lw $t0, 140($sp)
    move $t1, $t0
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 1
    lw $t4, 120($sp)
    ble $t4, $t3, .BB24
    lw $t0, 140($sp)
    move $t1, $t0
    lw $t2, 120($sp)
    move $t3, $t2
    sw $t3, 1108($sp)
    sw $t1, 1100($sp)
    lw $t0, 1100($sp)
    addiu $t1, $t0, 4
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 2
    lw $t4, 1108($sp)
    ble $t4, $t3, .BB24
    b .BB68
.BB37:
    lw $t0, 1036($sp)
    move $t1, $t0
    lw $t2, 1044($sp)
    move $t3, $t2
    lb $t4, 1076($sp)
    move $t5, $t4
    sb $t5, 41($sp)
    sw $t3, 44($sp)
    sw $t1, 52($sp)
    b .BB11
.BB38:
    lw $t0, 216($sp)
    move $t1, $t0
    lw $t2, 524($sp)
    move $t3, $t2
    li $t4, 2
    lw $t5, 516($sp)
    move $t6, $t5
    move $t7, $zero
    lb $t8, 508($sp)
    move $t9, $t8
    sb $t9, 1076($sp)
    sw $t7, 1068($sp)
    sw $t6, 1060($sp)
    sw $t4, 1052($sp)
    sw $t3, 1044($sp)
    sw $t1, 1036($sp)
    b .BB58
.BB39:
    lw $t0, 204($sp)
    addiu $t1, $t0, 68
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 18
    lw $t4, 208($sp)
    ble $t4, $t3, .BB29
    lw $t0, 204($sp)
    move $t1, $t0
    lw $t2, 208($sp)
    move $t3, $t2
    sw $t3, 220($sp)
    sw $t1, 440($sp)
    b .BB62
.BB40:
    lw $t0, 1168($sp)
    move $t1, $t0
    lw $t2, 1176($sp)
    move $t3, $t2
    sw $t3, 536($sp)
    sw $t1, 212($sp)
    lw $t0, 212($sp)
    addiu $t1, $t0, 12
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 4
    lw $t4, 536($sp)
    ble $t4, $t3, .BB63
    lw $t0, 212($sp)
    move $t1, $t0
    lw $t2, 536($sp)
    move $t3, $t2
    sw $t3, 236($sp)
    sw $t1, 228($sp)
    lw $t0, 228($sp)
    addiu $t1, $t0, 16
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 5
    lw $t4, 236($sp)
    ble $t4, $t3, .BB43
    b .BB75
.BB41:
    lw $t0, 456($sp)
    move $t1, $t0
    lw $t2, 448($sp)
    move $t3, $t2
    sw $t3, 384($sp)
    sw $t1, 376($sp)
    b .BB78
.BB42:
    lw $t0, 12($sp)
    move $t1, $t0
    lw $t2, 8($sp)
    move $t3, $t2
    lb $t4, 156($sp)
    move $t5, $t4
    sb $t5, 41($sp)
    sw $t3, 44($sp)
    sw $t1, 52($sp)
    b .BB11
.BB43:
    lw $t0, 228($sp)
    move $t1, $t0
    lw $t2, 236($sp)
    move $t3, $t2
    sw $t3, 384($sp)
    sw $t1, 376($sp)
    b .BB78
.BB44:
    lw $t0, 100($sp)
    move $t1, $t0
    lw $t2, 64($sp)
    move $t3, $t2
    lb $t4, 32($sp)
    move $t5, $t4
    sb $t5, 41($sp)
    sw $t3, 44($sp)
    sw $t1, 52($sp)
    b .BB11
.BB45:
    lw $t0, 1040($sp)
    move $t1, $t0
    lw $t2, 1032($sp)
    move $t3, $t2
    li $t4, -1
    sb $t4, 132($sp)
    sw $t3, 112($sp)
    sw $t1, 152($sp)
    b .BB5
.BB46:
    lw $t0, 1088($sp)
    move $t1, $t0
    lw $t2, 1080($sp)
    move $t3, $t2
    li $t4, -1
    sb $t4, 132($sp)
    sw $t3, 112($sp)
    sw $t1, 152($sp)
    b .BB5
.BB47:
    lw $t0, 240($sp)
    move $t1, $t0
    lw $t2, 244($sp)
    move $t3, $t2
    lw $t4, 408($sp)
    move $t5, $t4
    li $t6, -1
    sb $t6, 420($sp)
    sw $t5, 1156($sp)
    sw $t3, 572($sp)
    sw $t1, 500($sp)
.BB48:
    lw $t0, 500($sp)
    addiu $t1, $t0, 8
    lw $t2, 1156($sp)
    sw $t2, 0($t1)
    li $t3, 3
    lw $t4, 572($sp)
    ble $t4, $t3, .BB49
    lw $t0, 500($sp)
    move $t1, $t0
    lw $t2, 572($sp)
    move $t3, $t2
    li $t4, 3
    lb $t5, 420($sp)
    move $t6, $t5
    sb $t6, 1128($sp)
    sw $t4, 192($sp)
    sw $t3, 988($sp)
    sw $t1, 1152($sp)
    b .BB34
.BB49:
    lw $t0, 500($sp)
    move $t1, $t0
    lw $t2, 572($sp)
    move $t3, $t2
    lb $t4, 420($sp)
    move $t5, $t4
    sb $t5, 41($sp)
    sw $t3, 44($sp)
    sw $t1, 52($sp)
    b .BB11
.BB50:
    li $t0, 31
    lw $t1, 1092($sp)
    ble $t1, $t0, .BB51
    b .BB67
.BB51:
    lw $t0, 1084($sp)
    move $t1, $t0
    lw $t2, 1092($sp)
    move $t3, $t2
    sw $t3, 324($sp)
    sw $t1, 316($sp)
    b .BB79
.BB52:
    lw $t0, 248($sp)
    move $t1, $t0
    lw $t2, 252($sp)
    move $t3, $t2
    lw $t4, 260($sp)
    move $t5, $t4
    lw $t6, 276($sp)
    move $t7, $t6
    lw $t8, 424($sp)
    move $t9, $t8
    lb $s0, 292($sp)
    move $s1, $s0
    sb $s1, 1028($sp)
    sw $t9, 1020($sp)
    sw $t7, 1012($sp)
    sw $t5, 996($sp)
    sw $t3, 1004($sp)
    sw $t1, 548($sp)
.BB53:
    lw $t0, 548($sp)
    move $t1, $t0
    li $t2, 4
    lw $t3, 1020($sp)
    mult $t3, $t2
    mflo $t4
    addu $t1, $t1, $t4
    lw $t5, 0($t1)
    lw $t6, 1012($sp)
    ble $t5, $t6, .BB57
    lw $t0, 548($sp)
    move $t1, $t0
    lw $t2, 1004($sp)
    move $t3, $t2
    lw $t4, 996($sp)
    move $t5, $t4
    lw $t6, 1012($sp)
    move $t7, $t6
    lw $t8, 1020($sp)
    move $t9, $t8
    lb $s0, 1028($sp)
    move $s1, $s0
    sb $s1, 292($sp)
    sw $t9, 284($sp)
    sw $t7, 276($sp)
    sw $t5, 260($sp)
    sw $t3, 252($sp)
    sw $t1, 248($sp)
.BB54:
    lw $t0, 284($sp)
    addiu $t1, $t0, 1
    lw $t2, 248($sp)
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
    sw $s0, 424($sp)
    ble $s0, $s1, .BB74
    b .BB52
.BB55:
    lw $t0, 164($sp)
    move $t1, $t0
    lw $t2, 96($sp)
    move $t3, $t2
    sw $t3, 184($sp)
    sw $t1, 176($sp)
    b .BB14
.BB56:
    lw $t0, 432($sp)
    move $t1, $t0
    lw $t2, 436($sp)
    move $t3, $t2
    sw $t3, 1016($sp)
    sw $t1, 1024($sp)
    b .BB88
.BB57:
    lw $t0, 548($sp)
    move $t1, $t0
    lw $t2, 1004($sp)
    move $t3, $t2
    lw $t4, 996($sp)
    move $t5, $t4
    lw $t6, 1012($sp)
    move $t7, $t6
    lw $t8, 1020($sp)
    move $t9, $t8
    lb $s0, 1028($sp)
    move $s1, $s0
    sb $s1, 1076($sp)
    sw $t9, 1068($sp)
    sw $t7, 1060($sp)
    sw $t5, 1052($sp)
    sw $t3, 1044($sp)
    sw $t1, 1036($sp)
.BB58:
    lw $t0, 1068($sp)
    addiu $t1, $t0, 1
    lw $t2, 1036($sp)
    move $t3, $t2
    li $t4, 4
    mult $t1, $t4
    mflo $t5
    addu $t3, $t3, $t5
    lw $t6, 1060($sp)
    sw $t6, 0($t3)
    lw $t7, 1052($sp)
    addiu $t8, $t7, 1
    lw $t9, 1044($sp)
    sw $t8, 268($sp)
    bge $t8, $t9, .BB37
    lw $t0, 1036($sp)
    move $t1, $t0
    lw $t2, 1044($sp)
    move $t3, $t2
    lw $t4, 268($sp)
    move $t5, $t4
    lb $t6, 1076($sp)
    move $t7, $t6
    sb $t7, 1128($sp)
    sw $t5, 192($sp)
    sw $t3, 988($sp)
    sw $t1, 1152($sp)
    b .BB34
.BB59:
    li $t0, 47
    lw $t1, 200($sp)
    ble $t1, $t0, .BB61
    lw $t0, 196($sp)
    move $t1, $t0
    lw $t2, 200($sp)
    move $t3, $t2
    sw $t3, 464($sp)
    sw $t1, 560($sp)
    lw $t0, 560($sp)
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
    sw $t1, 1916($sp)
    lw $t1, 560($sp)
    sw $t2, 1872($sp)
    addiu $t2, $t1, 164
    jal read
    sw $t3, 1868($sp)
    move $t3, $v0
    sw $t3, 0($t2)
    sw $t4, 1876($sp)
    addiu $t4, $t1, 168
    jal read
    sw $t5, 1908($sp)
    move $t5, $v0
    sw $t5, 0($t4)
    sw $t6, 1904($sp)
    addiu $t6, $t1, 172
    jal read
    sw $t7, 1888($sp)
    move $t7, $v0
    sw $t7, 0($t6)
    sw $t8, 1892($sp)
    addiu $t8, $t1, 176
    jal read
    sw $t9, 1900($sp)
    move $t9, $v0
    sw $t9, 0($t8)
    sw $s0, 1896($sp)
    addiu $s0, $t1, 180
    jal read
    sw $s1, 1880($sp)
    move $s1, $v0
    sw $s1, 0($s0)
    sw $s2, 1884($sp)
    addiu $s2, $t1, 184
    jal read
    sw $s3, 1920($sp)
    move $s3, $v0
    sw $s3, 0($s2)
    sw $s4, 1996($sp)
    addiu $s4, $t1, 188
    jal read
    sw $s5, 1992($sp)
    move $s5, $v0
    sw $s5, 0($s4)
    sw $s6, 1988($sp)
    li $s6, 48
    sw $s7, 1984($sp)
    lw $s7, 464($sp)
    ble $s7, $s6, .BB60
    b .BB69
.BB60:
    lw $t0, 560($sp)
    move $t1, $t0
    lw $t2, 464($sp)
    move $t3, $t2
    sw $t3, 184($sp)
    sw $t1, 176($sp)
    b .BB14
.BB61:
    lw $t0, 196($sp)
    move $t1, $t0
    lw $t2, 200($sp)
    move $t3, $t2
    sw $t3, 448($sp)
    sw $t1, 456($sp)
    lw $t0, 456($sp)
    addiu $t1, $t0, 128
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 33
    lw $t4, 448($sp)
    ble $t4, $t3, .BB41
    lw $t0, 456($sp)
    move $t1, $t0
    lw $t2, 448($sp)
    move $t3, $t2
    sw $t3, 368($sp)
    sw $t1, 360($sp)
    b .BB71
.BB62:
    lw $t0, 440($sp)
    addiu $t1, $t0, 72
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 19
    lw $t4, 220($sp)
    ble $t4, $t3, .BB73
    lw $t0, 440($sp)
    move $t1, $t0
    lw $t2, 220($sp)
    move $t3, $t2
    sw $t3, 396($sp)
    sw $t1, 392($sp)
    lw $t0, 392($sp)
    addiu $t1, $t0, 76
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 20
    lw $t4, 396($sp)
    ble $t4, $t3, .BB64
    lw $t0, 392($sp)
    move $t1, $t0
    lw $t2, 396($sp)
    move $t3, $t2
    sw $t3, 1048($sp)
    sw $t1, 1056($sp)
    b .BB86
.BB63:
    lw $t0, 212($sp)
    move $t1, $t0
    lw $t2, 536($sp)
    move $t3, $t2
    sw $t3, 184($sp)
    sw $t1, 176($sp)
    b .BB14
.BB64:
    lw $t0, 392($sp)
    move $t1, $t0
    lw $t2, 396($sp)
    move $t3, $t2
    sw $t3, 384($sp)
    sw $t1, 376($sp)
    b .BB78
.BB65:
    lw $t0, 488($sp)
    move $t1, $t0
    lw $t2, 476($sp)
    move $t3, $t2
    sw $t3, 244($sp)
    sw $t1, 240($sp)
    lw $t0, 240($sp)
    addiu $t1, $t0, 8
    lw $t2, 0($t1)
    addiu $t3, $t0, 4
    lw $t4, 0($t3)
    sw $t2, 408($sp)
    ble $t4, $t2, .BB47
    lw $t0, 240($sp)
    move $t1, $t0
    lw $t2, 244($sp)
    move $t3, $t2
    lw $t4, 408($sp)
    move $t5, $t4
    li $t6, -1
    sb $t6, 508($sp)
    sw $t5, 516($sp)
    sw $t3, 524($sp)
    sw $t1, 216($sp)
.BB66:
    lw $t0, 216($sp)
    addiu $t1, $t0, 8
    addiu $t2, $t0, 4
    lw $t3, 0($t2)
    sw $t3, 0($t1)
    move $t4, $t0
    lw $t5, 0($t4)
    lw $t6, 516($sp)
    ble $t5, $t6, .BB38
    lw $t0, 216($sp)
    move $t1, $t0
    lw $t2, 524($sp)
    move $t3, $t2
    li $t4, 2
    lw $t5, 516($sp)
    move $t6, $t5
    move $t7, $zero
    lb $t8, 508($sp)
    move $t9, $t8
    sb $t9, 292($sp)
    sw $t7, 284($sp)
    sw $t6, 276($sp)
    sw $t4, 260($sp)
    sw $t3, 252($sp)
    sw $t1, 248($sp)
    b .BB54
.BB67:
    lw $t0, 1084($sp)
    move $t1, $t0
    lw $t2, 1092($sp)
    move $t3, $t2
    sw $t3, 308($sp)
    sw $t1, 300($sp)
    lw $t0, 300($sp)
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
    sw $t1, 2088($sp)
    lw $t1, 300($sp)
    sw $t2, 2092($sp)
    addiu $t2, $t1, 100
    sw $t3, 2096($sp)
    lw $t3, 0($t2)
    move $a0, $t3
    jal write
    sw $t4, 2100($sp)
    addiu $t4, $t1, 104
    sw $t5, 2140($sp)
    lw $t5, 0($t4)
    move $a0, $t5
    jal write
    sw $t6, 2208($sp)
    addiu $t6, $t1, 108
    sw $t7, 2204($sp)
    lw $t7, 0($t6)
    move $a0, $t7
    jal write
    sw $t8, 2200($sp)
    addiu $t8, $t1, 112
    sw $t9, 2196($sp)
    lw $t9, 0($t8)
    move $a0, $t9
    jal write
    sw $s0, 2192($sp)
    addiu $s0, $t1, 116
    sw $s1, 2188($sp)
    lw $s1, 0($s0)
    move $a0, $s1
    jal write
    sw $s2, 2184($sp)
    addiu $s2, $t1, 120
    sw $s3, 2180($sp)
    lw $s3, 0($s2)
    move $a0, $s3
    jal write
    sw $s4, 2176($sp)
    addiu $s4, $t1, 124
    sw $s5, 2172($sp)
    lw $s5, 0($s4)
    move $a0, $s5
    jal write
    sw $s6, 2168($sp)
    li $s6, 32
    sw $s7, 2164($sp)
    lw $s7, 308($sp)
    ble $s7, $s6, .BB24
    lw $t0, 300($sp)
    move $t1, $t0
    lw $t2, 308($sp)
    move $t3, $t2
    sw $t3, 436($sp)
    sw $t1, 432($sp)
    li $t0, 47
    lw $t1, 436($sp)
    ble $t1, $t0, .BB89
    b .BB56
.BB68:
    lw $t0, 1100($sp)
    move $t1, $t0
    lw $t2, 1108($sp)
    move $t3, $t2
    sw $t3, 336($sp)
    sw $t1, 328($sp)
    lw $t0, 328($sp)
    addiu $t1, $t0, 8
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 3
    lw $t4, 336($sp)
    ble $t4, $t3, .BB24
    lw $t0, 328($sp)
    move $t1, $t0
    lw $t2, 336($sp)
    move $t3, $t2
    sw $t3, 556($sp)
    sw $t1, 460($sp)
    b .BB80
.BB69:
    lw $t0, 560($sp)
    move $t1, $t0
    lw $t2, 464($sp)
    move $t3, $t2
    sw $t3, 352($sp)
    sw $t1, 344($sp)
    li $t0, 63
    lw $t1, 352($sp)
    ble $t1, $t0, .BB70
    lw $t0, 344($sp)
    move $t1, $t0
    lw $t2, 352($sp)
    move $t3, $t2
    sw $t3, 1096($sp)
    sw $t1, 1104($sp)
    b .BB81
.BB70:
    lw $t0, 344($sp)
    move $t1, $t0
    lw $t2, 352($sp)
    move $t3, $t2
    sw $t3, 1080($sp)
    sw $t1, 1088($sp)
    b .BB83
.BB71:
    lw $t0, 360($sp)
    addiu $t1, $t0, 132
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 34
    lw $t4, 368($sp)
    ble $t4, $t3, .BB72
    lw $t0, 360($sp)
    move $t1, $t0
    lw $t2, 368($sp)
    move $t3, $t2
    sw $t3, 1064($sp)
    sw $t1, 1072($sp)
    b .BB84
.BB72:
    lw $t0, 360($sp)
    move $t1, $t0
    lw $t2, 368($sp)
    move $t3, $t2
    sw $t3, 384($sp)
    sw $t1, 376($sp)
    b .BB78
.BB73:
    lw $t0, 440($sp)
    move $t1, $t0
    lw $t2, 220($sp)
    move $t3, $t2
    sw $t3, 384($sp)
    sw $t1, 376($sp)
    b .BB78
.BB74:
    lw $t0, 248($sp)
    move $t1, $t0
    lw $t2, 252($sp)
    move $t3, $t2
    lw $t4, 260($sp)
    move $t5, $t4
    lw $t6, 276($sp)
    move $t7, $t6
    lw $t8, 424($sp)
    move $t9, $t8
    lb $s0, 292($sp)
    move $s1, $s0
    sb $s1, 1076($sp)
    sw $t9, 1068($sp)
    sw $t7, 1060($sp)
    sw $t5, 1052($sp)
    sw $t3, 1044($sp)
    sw $t1, 1036($sp)
    b .BB58
.BB75:
    lw $t0, 228($sp)
    move $t1, $t0
    lw $t2, 236($sp)
    move $t3, $t2
    sw $t3, 404($sp)
    sw $t1, 400($sp)
    lw $t0, 400($sp)
    addiu $t1, $t0, 20
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 6
    lw $t4, 404($sp)
    ble $t4, $t3, .BB77
    b .BB87
.BB76:
    lw $t0, 1056($sp)
    move $t1, $t0
    lw $t2, 1048($sp)
    move $t3, $t2
    li $t4, -1
    sb $t4, 132($sp)
    sw $t3, 112($sp)
    sw $t1, 152($sp)
    b .BB5
.BB77:
    lw $t0, 400($sp)
    move $t1, $t0
    lw $t2, 404($sp)
    move $t3, $t2
    sw $t3, 384($sp)
    sw $t1, 376($sp)
.BB78:
    li $t0, 1
    lw $t1, 384($sp)
    ble $t1, $t0, .BB15
    lw $t0, 376($sp)
    move $t1, $t0
    lw $t2, 384($sp)
    move $t3, $t2
    li $t4, -1
    sb $t4, 40($sp)
    sw $t3, 80($sp)
    sw $t1, 48($sp)
    b .BB9
.BB79:
    lw $t0, 316($sp)
    addiu $t1, $t0, 64
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 17
    lw $t4, 324($sp)
    ble $t4, $t3, .BB24
    lw $t0, 316($sp)
    move $t1, $t0
    lw $t2, 324($sp)
    move $t3, $t2
    sw $t3, 452($sp)
    sw $t1, 444($sp)
    lw $t0, 444($sp)
    addiu $t1, $t0, 68
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 18
    lw $t4, 452($sp)
    ble $t4, $t3, .BB24
    lw $t0, 444($sp)
    move $t1, $t0
    lw $t2, 452($sp)
    move $t3, $t2
    sw $t3, 544($sp)
    sw $t1, 1000($sp)
    b .BB90
.BB80:
    lw $t0, 460($sp)
    addiu $t1, $t0, 12
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 4
    lw $t4, 556($sp)
    ble $t4, $t3, .BB24
    lw $t0, 460($sp)
    move $t1, $t0
    lw $t2, 556($sp)
    move $t3, $t2
    sw $t3, 472($sp)
    sw $t1, 580($sp)
    b .BB91
.BB81:
    lw $t0, 1104($sp)
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
    sw $t1, 2440($sp)
    lw $t1, 1104($sp)
    sw $t2, 2436($sp)
    addiu $t2, $t1, 228
    jal read
    sw $t3, 2432($sp)
    move $t3, $v0
    sw $t3, 0($t2)
    sw $t4, 2428($sp)
    addiu $t4, $t1, 232
    jal read
    sw $t5, 2424($sp)
    move $t5, $v0
    sw $t5, 0($t4)
    sw $t6, 2420($sp)
    addiu $t6, $t1, 236
    jal read
    sw $t7, 2416($sp)
    move $t7, $v0
    sw $t7, 0($t6)
    sw $t8, 2412($sp)
    addiu $t8, $t1, 240
    jal read
    sw $t9, 2408($sp)
    move $t9, $v0
    sw $t9, 0($t8)
    sw $s0, 2404($sp)
    addiu $s0, $t1, 244
    jal read
    sw $s1, 2400($sp)
    move $s1, $v0
    sw $s1, 0($s0)
    sw $s2, 2396($sp)
    addiu $s2, $t1, 248
    jal read
    sw $s3, 2392($sp)
    move $s3, $v0
    sw $s3, 0($s2)
    sw $s4, 2388($sp)
    addiu $s4, $t1, 252
    jal read
    sw $s5, 2384($sp)
    move $s5, $v0
    sw $s5, 0($s4)
    sw $s6, 2380($sp)
    li $s6, 64
    sw $s7, 2376($sp)
    lw $s7, 1096($sp)
    ble $s7, $s6, .BB92
    lw $t0, 1104($sp)
    move $t1, $t0
    lw $t2, 1096($sp)
    move $t3, $t2
    li $t4, 64
    sw $t4, 1164($sp)
    sw $t3, 416($sp)
    sw $t1, 484($sp)
.BB82:
    lw $t0, 1164($sp)
    addiu $t1, $t0, 15
    lw $t2, 416($sp)
    bge $t1, $t2, .BB93
    b .BB99
.BB83:
    lw $t0, 1088($sp)
    addiu $t1, $t0, 192
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 49
    lw $t4, 1080($sp)
    ble $t4, $t3, .BB46
    lw $t0, 1088($sp)
    move $t1, $t0
    lw $t2, 1080($sp)
    move $t3, $t2
    li $t4, 49
    sw $t4, 504($sp)
    sw $t3, 496($sp)
    sw $t1, 568($sp)
    b .BB94
.BB84:
    lw $t0, 1072($sp)
    addiu $t1, $t0, 136
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 35
    lw $t4, 1064($sp)
    ble $t4, $t3, .BB85
    lw $t0, 1072($sp)
    move $t1, $t0
    lw $t2, 1064($sp)
    move $t3, $t2
    li $t4, 35
    sw $t4, 504($sp)
    sw $t3, 496($sp)
    sw $t1, 568($sp)
    b .BB94
.BB85:
    lw $t0, 1072($sp)
    move $t1, $t0
    lw $t2, 1064($sp)
    move $t3, $t2
    li $t4, -1
    sb $t4, 132($sp)
    sw $t3, 112($sp)
    sw $t1, 152($sp)
    b .BB5
.BB86:
    lw $t0, 1056($sp)
    addiu $t1, $t0, 80
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 21
    lw $t4, 1048($sp)
    ble $t4, $t3, .BB76
    lw $t0, 1056($sp)
    move $t1, $t0
    lw $t2, 1048($sp)
    move $t3, $t2
    li $t4, 21
    sw $t4, 504($sp)
    sw $t3, 496($sp)
    sw $t1, 568($sp)
    b .BB94
.BB87:
    lw $t0, 400($sp)
    move $t1, $t0
    lw $t2, 404($sp)
    move $t3, $t2
    sw $t3, 1032($sp)
    sw $t1, 1040($sp)
    lw $t0, 1040($sp)
    addiu $t1, $t0, 24
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 7
    lw $t4, 1032($sp)
    ble $t4, $t3, .BB45
    lw $t0, 1040($sp)
    move $t1, $t0
    lw $t2, 1032($sp)
    move $t3, $t2
    li $t4, 7
    sw $t4, 504($sp)
    sw $t3, 496($sp)
    sw $t1, 568($sp)
    b .BB94
.BB88:
    lw $t0, 1024($sp)
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
    sw $t1, 2492($sp)
    lw $t1, 1024($sp)
    sw $t2, 2620($sp)
    addiu $t2, $t1, 164
    sw $t3, 2616($sp)
    lw $t3, 0($t2)
    move $a0, $t3
    jal write
    sw $t4, 2612($sp)
    addiu $t4, $t1, 168
    sw $t5, 2528($sp)
    lw $t5, 0($t4)
    move $a0, $t5
    jal write
    sw $t6, 2536($sp)
    addiu $t6, $t1, 172
    sw $t7, 2540($sp)
    lw $t7, 0($t6)
    move $a0, $t7
    jal write
    sw $t8, 2544($sp)
    addiu $t8, $t1, 176
    sw $t9, 2548($sp)
    lw $t9, 0($t8)
    move $a0, $t9
    jal write
    sw $s0, 2552($sp)
    addiu $s0, $t1, 180
    sw $s1, 2556($sp)
    lw $s1, 0($s0)
    move $a0, $s1
    jal write
    sw $s2, 2504($sp)
    addiu $s2, $t1, 184
    sw $s3, 2560($sp)
    lw $s3, 0($s2)
    move $a0, $s3
    jal write
    sw $s4, 2564($sp)
    addiu $s4, $t1, 188
    sw $s5, 2532($sp)
    lw $s5, 0($s4)
    move $a0, $s5
    jal write
    sw $s6, 2568($sp)
    li $s6, 48
    sw $s7, 2572($sp)
    lw $s7, 1016($sp)
    ble $s7, $s6, .BB24
    lw $t0, 1024($sp)
    move $t1, $t0
    lw $t2, 1016($sp)
    move $t3, $t2
    sw $t3, 520($sp)
    sw $t1, 512($sp)
    b .BB101
.BB89:
    lw $t0, 432($sp)
    move $t1, $t0
    lw $t2, 436($sp)
    move $t3, $t2
    sw $t3, 992($sp)
    sw $t1, 1008($sp)
    lw $t0, 1008($sp)
    addiu $t1, $t0, 128
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 33
    lw $t4, 992($sp)
    ble $t4, $t3, .BB24
    lw $t0, 1008($sp)
    move $t1, $t0
    lw $t2, 992($sp)
    move $t3, $t2
    sw $t3, 532($sp)
    sw $t1, 528($sp)
    b .BB95
.BB90:
    lw $t0, 1000($sp)
    addiu $t1, $t0, 72
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 19
    lw $t4, 544($sp)
    ble $t4, $t3, .BB24
    lw $t0, 1000($sp)
    move $t1, $t0
    lw $t2, 544($sp)
    move $t3, $t2
    sw $t3, 428($sp)
    sw $t1, 552($sp)
    b .BB97
.BB91:
    lw $t0, 580($sp)
    addiu $t1, $t0, 16
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 5
    lw $t4, 472($sp)
    ble $t4, $t3, .BB24
    lw $t0, 580($sp)
    move $t1, $t0
    lw $t2, 472($sp)
    move $t3, $t2
    sw $t3, 104($sp)
    sw $t1, 160($sp)
    b .BB98
.BB92:
    lw $t0, 1104($sp)
    move $t1, $t0
    lw $t2, 1096($sp)
    move $t3, $t2
    sw $t3, 184($sp)
    sw $t1, 176($sp)
    b .BB14
.BB93:
    lw $t0, 484($sp)
    move $t1, $t0
    lw $t2, 416($sp)
    move $t3, $t2
    lw $t4, 1164($sp)
    move $t5, $t4
    sw $t5, 504($sp)
    sw $t3, 496($sp)
    sw $t1, 568($sp)
.BB94:
    lw $t0, 568($sp)
    move $t1, $t0
    li $t2, 4
    lw $t3, 504($sp)
    mult $t3, $t2
    mflo $t4
    addu $t1, $t1, $t4
    jal read
    move $t5, $v0
    sw $t5, 0($t1)
    addiu $t6, $t3, 1
    lw $t7, 496($sp)
    sw $t6, 188($sp)
    bge $t6, $t7, .BB4
    lw $t0, 568($sp)
    move $t0, $t0
    lw $t1, 496($sp)
    move $t1, $t1
    lw $t2, 188($sp)
    move $t3, $t2
    sw $t3, 504($sp)
    sw $t1, 496($sp)
    sw $t0, 568($sp)
    b .BB94
.BB95:
    lw $t0, 528($sp)
    addiu $t1, $t0, 132
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 34
    lw $t4, 532($sp)
    ble $t4, $t3, .BB24
    lw $t0, 528($sp)
    move $t1, $t0
    lw $t2, 532($sp)
    move $t3, $t2
    sw $t3, 356($sp)
    sw $t1, 364($sp)
    b .BB103
.BB96:
    lw $t0, 108($sp)
    move $t1, $t0
    lw $t2, 92($sp)
    move $t3, $t2
    sw $t3, 184($sp)
    sw $t1, 176($sp)
    b .BB14
.BB97:
    lw $t0, 552($sp)
    addiu $t1, $t0, 76
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 20
    lw $t4, 428($sp)
    ble $t4, $t3, .BB24
    lw $t0, 552($sp)
    move $t1, $t0
    lw $t2, 428($sp)
    move $t3, $t2
    sw $t3, 272($sp)
    sw $t1, 348($sp)
    b .BB104
.BB98:
    lw $t0, 160($sp)
    addiu $t1, $t0, 20
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 6
    lw $t4, 104($sp)
    ble $t4, $t3, .BB24
    lw $t0, 160($sp)
    move $t1, $t0
    lw $t2, 104($sp)
    move $t3, $t2
    sw $t3, 332($sp)
    sw $t1, 340($sp)
    b .BB105
.BB99:
    lw $t0, 484($sp)
    move $t1, $t0
    lw $t2, 416($sp)
    move $t3, $t2
    lw $t4, 1164($sp)
    move $t5, $t4
    sw $t5, 36($sp)
    sw $t3, 92($sp)
    sw $t1, 108($sp)
    lw $t0, 108($sp)
    move $t1, $t0
    li $t2, 4
    lw $t3, 36($sp)
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
    sw $t1, 2844($sp)
    move $t1, $v0
    sw $t1, 0($t0)
    sw $t2, 2848($sp)
    lw $t2, 2844($sp)
    addiu $t3, $t2, 32
    jal read
    sw $t4, 2840($sp)
    move $t4, $v0
    sw $t4, 0($t3)
    sw $t5, 2852($sp)
    addiu $t5, $t2, 36
    jal read
    sw $t6, 2836($sp)
    move $t6, $v0
    sw $t6, 0($t5)
    sw $t7, 2832($sp)
    addiu $t7, $t2, 40
    jal read
    sw $t8, 2828($sp)
    move $t8, $v0
    sw $t8, 0($t7)
    sw $t9, 2824($sp)
    addiu $t9, $t2, 44
    jal read
    sw $s0, 2820($sp)
    move $s0, $v0
    sw $s0, 0($t9)
    sw $s1, 2812($sp)
    addiu $s1, $t2, 48
    jal read
    sw $s2, 2808($sp)
    move $s2, $v0
    sw $s2, 0($s1)
    sw $s3, 2804($sp)
    addiu $s3, $t2, 52
    jal read
    sw $s4, 2816($sp)
    move $s4, $v0
    sw $s4, 0($s3)
    sw $s5, 2800($sp)
    addiu $s5, $t2, 56
    jal read
    sw $s6, 2796($sp)
    move $s6, $v0
    sw $s6, 0($s5)
    sw $s7, 2792($sp)
    addiu $s7, $t2, 60
    jal read
    sw $t0, 2788($sp)
    move $t0, $v0
    sw $t0, 0($s7)
    sw $t1, 2784($sp)
    lw $t1, 36($sp)
    addiu $t2, $t1, 16
    sw $t3, 2780($sp)
    lw $t3, 92($sp)
    sw $t2, 232($sp)
    bge $t2, $t3, .BB96
    lw $t0, 108($sp)
    move $t1, $t0
    lw $t2, 92($sp)
    move $t3, $t2
    lw $t4, 232($sp)
    move $t5, $t4
    sw $t5, 1164($sp)
    sw $t3, 416($sp)
    sw $t1, 484($sp)
    b .BB82
.BB100:
    lw $t0, 512($sp)
    move $t1, $t0
    lw $t2, 520($sp)
    move $t3, $t2
    sw $t3, 388($sp)
    sw $t1, 68($sp)
    lw $t0, 68($sp)
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
    sw $t1, 2920($sp)
    lw $t1, 68($sp)
    sw $t2, 2904($sp)
    addiu $t2, $t1, 228
    sw $t3, 2900($sp)
    lw $t3, 0($t2)
    move $a0, $t3
    jal write
    sw $t4, 2896($sp)
    addiu $t4, $t1, 232
    sw $t5, 2892($sp)
    lw $t5, 0($t4)
    move $a0, $t5
    jal write
    sw $t6, 2888($sp)
    addiu $t6, $t1, 236
    sw $t7, 2884($sp)
    lw $t7, 0($t6)
    move $a0, $t7
    jal write
    sw $t8, 2876($sp)
    addiu $t8, $t1, 240
    sw $t9, 2868($sp)
    lw $t9, 0($t8)
    move $a0, $t9
    jal write
    sw $s0, 2872($sp)
    addiu $s0, $t1, 244
    sw $s1, 2940($sp)
    lw $s1, 0($s0)
    move $a0, $s1
    jal write
    sw $s2, 2860($sp)
    addiu $s2, $t1, 248
    sw $s3, 2856($sp)
    lw $s3, 0($s2)
    move $a0, $s3
    jal write
    sw $s4, 2864($sp)
    addiu $s4, $t1, 252
    sw $s5, 2936($sp)
    lw $s5, 0($s4)
    move $a0, $s5
    jal write
    sw $s6, 2932($sp)
    li $s6, 64
    sw $s7, 2912($sp)
    lw $s7, 388($sp)
    ble $s7, $s6, .BB24
    b .BB106
.BB101:
    li $t0, 63
    lw $t1, 520($sp)
    ble $t1, $t0, .BB102
    b .BB100
.BB102:
    lw $t0, 512($sp)
    move $t1, $t0
    lw $t2, 520($sp)
    move $t3, $t2
    sw $t3, 372($sp)
    sw $t1, 380($sp)
    lw $t0, 380($sp)
    addiu $t1, $t0, 192
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 49
    lw $t4, 372($sp)
    ble $t4, $t3, .BB24
    lw $t0, 380($sp)
    move $t1, $t0
    lw $t2, 372($sp)
    move $t3, $t2
    li $t4, 49
    sw $t4, 280($sp)
    sw $t3, 288($sp)
    sw $t1, 296($sp)
    b .BB109
.BB103:
    lw $t0, 364($sp)
    addiu $t1, $t0, 136
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 35
    lw $t4, 356($sp)
    ble $t4, $t3, .BB24
    lw $t0, 364($sp)
    move $t1, $t0
    lw $t2, 356($sp)
    move $t3, $t2
    li $t4, 35
    sw $t4, 280($sp)
    sw $t3, 288($sp)
    sw $t1, 296($sp)
    b .BB109
.BB104:
    lw $t0, 348($sp)
    addiu $t1, $t0, 80
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 21
    lw $t4, 272($sp)
    ble $t4, $t3, .BB24
    lw $t0, 348($sp)
    move $t1, $t0
    lw $t2, 272($sp)
    move $t3, $t2
    li $t4, 21
    sw $t4, 280($sp)
    sw $t3, 288($sp)
    sw $t1, 296($sp)
    b .BB109
.BB105:
    lw $t0, 340($sp)
    addiu $t1, $t0, 24
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 7
    lw $t4, 332($sp)
    ble $t4, $t3, .BB24
    lw $t0, 340($sp)
    move $t1, $t0
    lw $t2, 332($sp)
    move $t3, $t2
    li $t4, 7
    sw $t4, 280($sp)
    sw $t3, 288($sp)
    sw $t1, 296($sp)
    b .BB109
.BB106:
    lw $t0, 68($sp)
    move $t1, $t0
    lw $t2, 388($sp)
    move $t3, $t2
    li $t4, 64
    sw $t4, 304($sp)
    sw $t3, 312($sp)
    sw $t1, 320($sp)
.BB107:
    lw $t0, 304($sp)
    addiu $t1, $t0, 15
    lw $t2, 312($sp)
    bge $t1, $t2, .BB108
    b .BB110
.BB108:
    lw $t0, 320($sp)
    move $t1, $t0
    lw $t2, 312($sp)
    move $t3, $t2
    lw $t4, 304($sp)
    move $t5, $t4
    sw $t5, 280($sp)
    sw $t3, 288($sp)
    sw $t1, 296($sp)
.BB109:
    lw $t0, 296($sp)
    move $t1, $t0
    li $t2, 4
    lw $t3, 280($sp)
    mult $t3, $t2
    mflo $t4
    addu $t1, $t1, $t4
    lw $t5, 0($t1)
    move $a0, $t5
    jal write
    addiu $t6, $t3, 1
    lw $t7, 288($sp)
    sw $t6, 1132($sp)
    bge $t6, $t7, .BB24
    lw $t0, 296($sp)
    move $t0, $t0
    lw $t1, 288($sp)
    move $t1, $t1
    lw $t2, 1132($sp)
    move $t3, $t2
    sw $t3, 280($sp)
    sw $t1, 288($sp)
    sw $t0, 296($sp)
    b .BB109
.BB110:
    lw $t0, 320($sp)
    move $t1, $t0
    lw $t2, 312($sp)
    move $t3, $t2
    lw $t4, 304($sp)
    move $t5, $t4
    sw $t5, 1124($sp)
    sw $t3, 1116($sp)
    sw $t1, 264($sp)
    lw $t0, 264($sp)
    move $t1, $t0
    li $t2, 4
    lw $t3, 1124($sp)
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
    sw $t1, 3056($sp)
    lw $t1, 0($t0)
    move $a0, $t1
    jal write
    sw $t2, 3060($sp)
    lw $t2, 3056($sp)
    addiu $t3, $t2, 32
    sw $t4, 3064($sp)
    lw $t4, 0($t3)
    move $a0, $t4
    jal write
    sw $t5, 3068($sp)
    addiu $t5, $t2, 36
    sw $t6, 3072($sp)
    lw $t6, 0($t5)
    move $a0, $t6
    jal write
    sw $t7, 3076($sp)
    addiu $t7, $t2, 40
    sw $t8, 3080($sp)
    lw $t8, 0($t7)
    move $a0, $t8
    jal write
    sw $t9, 3084($sp)
    addiu $t9, $t2, 44
    sw $s0, 3088($sp)
    lw $s0, 0($t9)
    move $a0, $s0
    jal write
    sw $s1, 3092($sp)
    addiu $s1, $t2, 48
    sw $s2, 3096($sp)
    lw $s2, 0($s1)
    move $a0, $s2
    jal write
    sw $s3, 3100($sp)
    addiu $s3, $t2, 52
    sw $s4, 3104($sp)
    lw $s4, 0($s3)
    move $a0, $s4
    jal write
    sw $s5, 3108($sp)
    addiu $s5, $t2, 56
    sw $s6, 3112($sp)
    lw $s6, 0($s5)
    move $a0, $s6
    jal write
    sw $s7, 3116($sp)
    addiu $s7, $t2, 60
    sw $t0, 3120($sp)
    lw $t0, 0($s7)
    move $a0, $t0
    jal write
    sw $t1, 3124($sp)
    lw $t1, 1124($sp)
    addiu $t2, $t1, 16
    sw $t3, 3128($sp)
    lw $t3, 1116($sp)
    sw $t2, 128($sp)
    bge $t2, $t3, .BB24
    lw $t0, 264($sp)
    move $t1, $t0
    lw $t2, 1116($sp)
    move $t3, $t2
    lw $t4, 128($sp)
    move $t5, $t4
    sw $t5, 304($sp)
    sw $t3, 312($sp)
    sw $t1, 320($sp)
    b .BB107

