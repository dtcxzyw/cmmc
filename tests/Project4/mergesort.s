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
    addiu $sp, $sp, -624
    sw $ra, 0($sp)
    sw $s0, 256($sp)
    sw $s1, 180($sp)
    sw $s2, 156($sp)
    sw $s3, 144($sp)
    sw $s4, 168($sp)
    sw $s5, 284($sp)
    sw $s6, 296($sp)
    sw $s7, 308($sp)
    move $t0, $a0
    move $t1, $a1
    move $t2, $a2
    move $t3, $a3
    addiu $t4, $t2, 1
    sw $t3, 104($sp)
    sw $t2, 100($sp)
    sw $t1, 112($sp)
    sw $t0, 108($sp)
    bge $t4, $t3, .BB8
    b .BB15
.BB1:
    lw $t0, 120($sp)
    move $t1, $t0
    lw $t2, 116($sp)
    move $t3, $t2
    lw $t4, 372($sp)
    move $t5, $t4
    lw $t6, 300($sp)
    move $t7, $t6
    lw $t8, 92($sp)
    move $t9, $t8
    move $s0, $t4
    move $s1, $t8
    move $s2, $t4
    sw $s2, 52($sp)
    sw $s1, 260($sp)
    sw $s0, 288($sp)
    sw $t9, 56($sp)
    sw $t7, 60($sp)
    sw $t5, 72($sp)
    sw $t3, 80($sp)
    sw $t1, 88($sp)
    b .BB9
.BB2:
    lw $t0, 152($sp)
    move $t1, $t0
    lw $t2, 140($sp)
    move $t3, $t2
    lw $t4, 428($sp)
    move $t5, $t4
    lw $t6, 268($sp)
    move $t7, $t6
    lw $t8, 164($sp)
    move $t9, $t8
    lw $s0, 176($sp)
    move $s1, $s0
    lw $s2, 412($sp)
    move $s3, $s2
    lw $s4, 420($sp)
    move $s5, $s4
    lw $s6, 436($sp)
    move $s7, $s6
    sw $s7, 316($sp)
    sw $s5, 320($sp)
    sw $s3, 324($sp)
    sw $s1, 328($sp)
    sw $t9, 332($sp)
    sw $t7, 336($sp)
    sw $t5, 340($sp)
    sw $t3, 344($sp)
    sw $t1, 348($sp)
    lw $t0, 344($sp)
    move $t1, $t0
    li $t2, 4
    lw $t3, 316($sp)
    mult $t3, $t2
    mflo $t4
    addu $t1, $t1, $t4
    lw $t5, 336($sp)
    sw $t5, 0($t1)
    lw $t6, 340($sp)
    addiu $t7, $t6, 1
    addiu $t8, $t3, 1
    move $t9, $t0
    lw $s0, 348($sp)
    move $s1, $s0
    move $s2, $t8
    lw $s3, 332($sp)
    move $s4, $s3
    lw $s5, 328($sp)
    move $s6, $s5
    lw $s7, 324($sp)
    move $t0, $s7
    sw $t1, 604($sp)
    lw $t1, 320($sp)
    sw $t2, 608($sp)
    move $t2, $t1
    move $t3, $t7
    sw $t4, 612($sp)
    move $t4, $t8
    sw $t4, 252($sp)
    sw $t3, 244($sp)
    sw $t2, 236($sp)
    sw $t0, 228($sp)
    sw $s6, 220($sp)
    sw $s4, 212($sp)
    sw $s2, 204($sp)
    sw $s1, 196($sp)
    sw $t9, 188($sp)
    b .BB17
.BB3:
    lw $t0, 152($sp)
    move $t1, $t0
    lw $t2, 140($sp)
    move $t3, $t2
    lw $t4, 420($sp)
    move $t5, $t4
    lw $t6, 264($sp)
    move $t7, $t6
    lw $t8, 164($sp)
    move $t9, $t8
    lw $s0, 176($sp)
    move $s1, $s0
    lw $s2, 412($sp)
    move $s3, $s2
    lw $s4, 428($sp)
    move $s5, $s4
    lw $s6, 436($sp)
    move $s7, $s6
    sw $s7, 352($sp)
    sw $s5, 356($sp)
    sw $s3, 360($sp)
    sw $s1, 368($sp)
    sw $t9, 304($sp)
    sw $t7, 292($sp)
    sw $t5, 280($sp)
    sw $t3, 276($sp)
    sw $t1, 272($sp)
    lw $t0, 276($sp)
    move $t1, $t0
    li $t2, 4
    lw $t3, 352($sp)
    mult $t3, $t2
    mflo $t4
    addu $t1, $t1, $t4
    lw $t5, 292($sp)
    lw $t6, 0($t5)
    sw $t6, 0($t1)
    lw $t7, 280($sp)
    addiu $t8, $t7, 1
    addiu $t9, $t3, 1
    move $s0, $t0
    lw $s1, 272($sp)
    move $s2, $s1
    move $s3, $t9
    lw $s4, 304($sp)
    move $s5, $s4
    lw $s6, 368($sp)
    move $s7, $s6
    lw $t0, 360($sp)
    sw $t1, 584($sp)
    move $t1, $t0
    sw $t2, 580($sp)
    move $t2, $t8
    lw $t3, 356($sp)
    sw $t4, 600($sp)
    move $t4, $t3
    move $t5, $t9
    sw $t5, 252($sp)
    sw $t4, 244($sp)
    sw $t2, 236($sp)
    sw $t1, 228($sp)
    sw $s7, 220($sp)
    sw $s5, 212($sp)
    sw $s3, 204($sp)
    sw $s2, 196($sp)
    sw $s0, 188($sp)
    b .BB17
.BB4:
    lw $t0, 160($sp)
    move $t1, $t0
    lw $t2, 172($sp)
    move $t3, $t2
    lw $t4, 184($sp)
    move $t5, $t4
    lw $t6, 248($sp)
    move $t7, $t6
    lw $t8, 240($sp)
    move $t9, $t8
    lw $s0, 232($sp)
    move $s1, $s0
    lw $s2, 224($sp)
    move $s3, $s2
    lw $s4, 216($sp)
    move $s5, $s4
    sw $s5, 200($sp)
    sw $s3, 68($sp)
    sw $s1, 76($sp)
    sw $t9, 84($sp)
    sw $t7, 96($sp)
    sw $t5, 312($sp)
    sw $t3, 208($sp)
    sw $t1, 128($sp)
    b .BB11
.BB5:
    lw $t0, 116($sp)
    move $t1, $t0
    lw $t2, 120($sp)
    move $t3, $t2
    lw $t4, 372($sp)
    move $t5, $t4
    lw $t6, 300($sp)
    move $t7, $t6
    lb $t8, 64($sp)
    move $t9, $t8
    sb $t9, 148($sp)
    sw $t7, 36($sp)
    sw $t5, 40($sp)
    sw $t3, 44($sp)
    sw $t1, 48($sp)
.BB6:
    lb $t0, 148($sp)
    beqz $t0, .BB8
    lw $t0, 48($sp)
    move $t1, $t0
    lw $t2, 44($sp)
    move $t3, $t2
    lw $t4, 36($sp)
    move $t5, $t4
    lw $t6, 40($sp)
    move $t7, $t6
    sw $t7, 136($sp)
    sw $t5, 132($sp)
    sw $t3, 380($sp)
    sw $t1, 192($sp)
.BB7:
    lw $t0, 380($sp)
    move $t1, $t0
    li $t2, 4
    lw $t3, 136($sp)
    mult $t3, $t2
    mflo $t4
    addu $t1, $t1, $t4
    lw $t5, 192($sp)
    move $t6, $t5
    li $t7, 4
    mult $t3, $t7
    mflo $t8
    addu $t6, $t6, $t8
    lw $t9, 0($t6)
    sw $t9, 0($t1)
    addiu $s0, $t3, 1
    lw $s1, 132($sp)
    sw $s0, 32($sp)
    beq $s0, $s1, .BB8
    lw $t0, 192($sp)
    move $t0, $t0
    lw $t1, 380($sp)
    move $t1, $t1
    lw $t2, 132($sp)
    move $t2, $t2
    lw $t3, 32($sp)
    move $t4, $t3
    sw $t4, 136($sp)
    sw $t2, 132($sp)
    sw $t1, 380($sp)
    sw $t0, 192($sp)
    b .BB7
.BB8:
    move $v0, $zero
    lw $s7, 308($sp)
    lw $s6, 296($sp)
    lw $s5, 284($sp)
    lw $s4, 168($sp)
    lw $s3, 144($sp)
    lw $s2, 156($sp)
    lw $s1, 180($sp)
    lw $s0, 256($sp)
    lw $ra, 0($sp)
    addiu $sp, $sp, 624
    jr $ra
.BB9:
    lw $t0, 288($sp)
    lw $t1, 56($sp)
    beq $t0, $t1, .BB10
    b .BB13
.BB10:
    lw $t0, 80($sp)
    move $t1, $t0
    lw $t2, 88($sp)
    move $t3, $t2
    lw $t4, 72($sp)
    move $t5, $t4
    lw $t6, 60($sp)
    move $t7, $t6
    lw $t8, 56($sp)
    move $t9, $t8
    lw $s0, 288($sp)
    move $s1, $s0
    lw $s2, 260($sp)
    move $s3, $s2
    lw $s4, 52($sp)
    move $s5, $s4
    sw $s5, 200($sp)
    sw $s3, 68($sp)
    sw $s1, 76($sp)
    sw $t9, 84($sp)
    sw $t7, 96($sp)
    sw $t5, 312($sp)
    sw $t3, 208($sp)
    sw $t1, 128($sp)
.BB11:
    lw $t0, 76($sp)
    lw $t1, 84($sp)
    beq $t0, $t1, .BB12
    b .BB16
.BB12:
    lw $t0, 208($sp)
    move $t1, $t0
    lw $t2, 128($sp)
    move $t3, $t2
    lw $t4, 312($sp)
    move $t5, $t4
    lw $t6, 96($sp)
    move $t7, $t6
    lw $t8, 84($sp)
    move $t9, $t8
    lw $s0, 76($sp)
    move $s1, $s0
    lw $s2, 68($sp)
    move $s3, $s2
    lw $s4, 200($sp)
    move $s5, $s4
    sw $s5, 376($sp)
    sw $s3, 384($sp)
    sw $s1, 388($sp)
    sw $t9, 392($sp)
    sw $t7, 396($sp)
    sw $t5, 400($sp)
    sw $t3, 404($sp)
    sw $t1, 408($sp)
    lw $t0, 404($sp)
    move $t1, $t0
    li $t2, 4
    lw $t3, 376($sp)
    mult $t3, $t2
    mflo $t4
    addu $t1, $t1, $t4
    lw $t5, 408($sp)
    move $t6, $t5
    li $t7, 4
    lw $t8, 384($sp)
    mult $t8, $t7
    mflo $t9
    addu $t6, $t6, $t9
    lw $s0, 0($t6)
    sw $s0, 0($t1)
    addiu $s1, $t8, 1
    addiu $s2, $t3, 1
    move $s3, $t0
    move $s4, $t5
    move $s5, $s2
    lw $s6, 400($sp)
    move $s7, $s6
    lw $t0, 396($sp)
    sw $t1, 544($sp)
    move $t1, $t0
    sw $t2, 576($sp)
    lw $t2, 392($sp)
    move $t3, $t2
    sw $t4, 572($sp)
    lw $t4, 388($sp)
    move $t5, $t4
    sw $t6, 568($sp)
    move $t6, $s1
    sw $t7, 564($sp)
    move $t7, $s2
    sw $t7, 252($sp)
    sw $t6, 244($sp)
    sw $t5, 236($sp)
    sw $t3, 228($sp)
    sw $t1, 220($sp)
    sw $s7, 212($sp)
    sw $s5, 204($sp)
    sw $s4, 196($sp)
    sw $s3, 188($sp)
    b .BB17
.BB13:
    lw $t0, 80($sp)
    move $t1, $t0
    lw $t2, 88($sp)
    move $t3, $t2
    lw $t4, 72($sp)
    move $t5, $t4
    lw $t6, 60($sp)
    move $t7, $t6
    lw $t8, 56($sp)
    move $t9, $t8
    lw $s0, 288($sp)
    move $s1, $s0
    lw $s2, 260($sp)
    move $s3, $s2
    lw $s4, 52($sp)
    move $s5, $s4
    sw $s5, 216($sp)
    sw $s3, 224($sp)
    sw $s1, 232($sp)
    sw $t9, 240($sp)
    sw $t7, 248($sp)
    sw $t5, 184($sp)
    sw $t3, 172($sp)
    sw $t1, 160($sp)
    lw $t0, 224($sp)
    lw $t1, 248($sp)
    beq $t0, $t1, .BB4
    lw $t0, 160($sp)
    move $t1, $t0
    lw $t2, 172($sp)
    move $t3, $t2
    lw $t4, 184($sp)
    move $t5, $t4
    lw $t6, 248($sp)
    move $t7, $t6
    lw $t8, 240($sp)
    move $t9, $t8
    lw $s0, 232($sp)
    move $s1, $s0
    lw $s2, 224($sp)
    move $s3, $s2
    lw $s4, 216($sp)
    move $s5, $s4
    sw $s5, 436($sp)
    sw $s3, 428($sp)
    sw $s1, 420($sp)
    sw $t9, 412($sp)
    sw $t7, 176($sp)
    sw $t5, 164($sp)
    sw $t3, 152($sp)
    sw $t1, 140($sp)
    lw $t0, 152($sp)
    move $t1, $t0
    li $t2, 4
    lw $t3, 420($sp)
    mult $t3, $t2
    mflo $t4
    addu $t1, $t1, $t4
    lw $t5, 0($t1)
    move $t6, $t0
    li $t7, 4
    lw $t8, 428($sp)
    mult $t8, $t7
    mflo $t9
    addu $t6, $t6, $t9
    lw $s0, 0($t6)
    sw $s0, 268($sp)
    sw $t1, 264($sp)
    bge $t5, $s0, .BB2
    b .BB3
.BB14:
    lw $t0, 188($sp)
    move $t1, $t0
    lw $t2, 196($sp)
    move $t3, $t2
    lw $t4, 212($sp)
    move $t5, $t4
    lw $t6, 220($sp)
    move $t7, $t6
    li $t8, -1
    sb $t8, 148($sp)
    sw $t7, 36($sp)
    sw $t5, 40($sp)
    sw $t3, 44($sp)
    sw $t1, 48($sp)
    b .BB6
.BB15:
    lw $t0, 112($sp)
    move $t1, $t0
    lw $t2, 108($sp)
    move $t3, $t2
    lw $t4, 104($sp)
    move $t5, $t4
    lw $t6, 100($sp)
    move $t7, $t6
    move $t8, $t6
    move $t9, $t4
    sw $t9, 300($sp)
    sw $t8, 372($sp)
    sw $t7, 364($sp)
    sw $t5, 124($sp)
    sw $t3, 120($sp)
    sw $t1, 116($sp)
    lw $t0, 124($sp)
    lw $t1, 364($sp)
    addu $t2, $t0, $t1
    li $t3, 2
    div $t2, $t3
    mflo $t4
    lw $t5, 120($sp)
    move $a0, $t5
    lw $t6, 116($sp)
    move $a1, $t6
    move $a2, $t1
    move $a3, $t4
    sw $t4, 92($sp)
    sw $t3, 448($sp)
    sw $t2, 452($sp)
    jal merge
    move $t7, $v0
    lw $t8, 120($sp)
    move $a0, $t8
    lw $t9, 116($sp)
    move $a1, $t9
    lw $s0, 92($sp)
    move $a2, $s0
    lw $s1, 300($sp)
    move $a3, $s1
    sw $t7, 444($sp)
    jal merge
    move $s2, $v0
    lw $s3, 372($sp)
    sne $s4, $s3, $s1
    sb $s4, 64($sp)
    beq $s3, $s1, .BB5
    b .BB1
.BB16:
    lw $t0, 208($sp)
    move $t1, $t0
    lw $t2, 128($sp)
    move $t3, $t2
    lw $t4, 76($sp)
    move $t5, $t4
    lw $t6, 312($sp)
    move $t7, $t6
    lw $t8, 96($sp)
    move $t9, $t8
    lw $s0, 84($sp)
    move $s1, $s0
    lw $s2, 68($sp)
    move $s3, $s2
    lw $s4, 200($sp)
    move $s5, $s4
    sw $s5, 416($sp)
    sw $s3, 424($sp)
    sw $s1, 432($sp)
    sw $t9, 12($sp)
    sw $t7, 16($sp)
    sw $t5, 20($sp)
    sw $t3, 24($sp)
    sw $t1, 28($sp)
    lw $t0, 24($sp)
    move $t1, $t0
    li $t2, 4
    lw $t3, 416($sp)
    mult $t3, $t2
    mflo $t4
    addu $t1, $t1, $t4
    lw $t5, 28($sp)
    move $t6, $t5
    li $t7, 4
    lw $t8, 20($sp)
    mult $t8, $t7
    mflo $t9
    addu $t6, $t6, $t9
    lw $s0, 0($t6)
    sw $s0, 0($t1)
    addiu $s1, $t8, 1
    addiu $s2, $t3, 1
    move $s3, $t0
    move $s4, $t5
    move $s5, $s2
    lw $s6, 16($sp)
    move $s7, $s6
    lw $t0, 12($sp)
    sw $t1, 516($sp)
    move $t1, $t0
    sw $t2, 512($sp)
    lw $t2, 432($sp)
    move $t3, $t2
    sw $t4, 508($sp)
    move $t4, $s1
    lw $t5, 424($sp)
    sw $t6, 504($sp)
    move $t6, $t5
    sw $t7, 500($sp)
    move $t7, $s2
    sw $t7, 252($sp)
    sw $t6, 244($sp)
    sw $t4, 236($sp)
    sw $t3, 228($sp)
    sw $t1, 220($sp)
    sw $s7, 212($sp)
    sw $s5, 204($sp)
    sw $s4, 196($sp)
    sw $s3, 188($sp)
.BB17:
    lw $t0, 204($sp)
    lw $t1, 220($sp)
    beq $t0, $t1, .BB14
    lw $t0, 196($sp)
    move $t1, $t0
    lw $t2, 188($sp)
    move $t3, $t2
    lw $t4, 212($sp)
    move $t5, $t4
    lw $t6, 220($sp)
    move $t7, $t6
    lw $t8, 228($sp)
    move $t9, $t8
    lw $s0, 236($sp)
    move $s1, $s0
    lw $s2, 244($sp)
    move $s3, $s2
    lw $s4, 252($sp)
    move $s5, $s4
    sw $s5, 52($sp)
    sw $s3, 260($sp)
    sw $s1, 288($sp)
    sw $t9, 56($sp)
    sw $t7, 60($sp)
    sw $t5, 72($sp)
    sw $t3, 80($sp)
    sw $t1, 88($sp)
    b .BB9

.globl main
main:
    addiu $sp, $sp, -3280
    sw $ra, 0($sp)
    sw $s0, 160($sp)
    sw $s1, 152($sp)
    sw $s2, 144($sp)
    sw $s3, 136($sp)
    sw $s4, 128($sp)
    sw $s5, 120($sp)
    sw $s6, 112($sp)
    sw $s7, 104($sp)
    addiu $t0, $sp, 384
    addiu $t1, $sp, 796
    jal read
    move $t2, $v0
    sgt $t3, $t2, 0
    sb $t3, 1356($sp)
    sw $t2, 1368($sp)
    sw $t1, 1404($sp)
    sw $t0, 1408($sp)
    blez $t2, .BB19
    b .BB20
.BB19:
    lw $t0, 1404($sp)
    move $t1, $t0
    lw $t2, 1408($sp)
    move $t3, $t2
    lw $t4, 1368($sp)
    move $t5, $t4
    lb $t6, 1356($sp)
    move $t7, $t6
    sb $t7, 1364($sp)
    sw $t5, 1376($sp)
    sw $t3, 1380($sp)
    sw $t1, 1384($sp)
    b .BB23
.BB20:
    lw $t0, 1404($sp)
    move $t1, $t0
    lw $t2, 1408($sp)
    move $t3, $t2
    lw $t4, 1368($sp)
    move $t5, $t4
    sw $t5, 1388($sp)
    sw $t3, 1392($sp)
    sw $t1, 1396($sp)
    li $t0, 15
    lw $t1, 1388($sp)
    ble $t1, $t0, .BB26
    b .BB25
.BB21:
    lw $t0, 1424($sp)
    move $t1, $t0
    lw $t2, 1432($sp)
    move $t3, $t2
    lw $t4, 1440($sp)
    move $t5, $t4
    sw $t5, 172($sp)
    sw $t3, 1400($sp)
    sw $t1, 212($sp)
    b .BB32
.BB22:
    lw $t0, 36($sp)
    move $t1, $t0
    lw $t2, 32($sp)
    move $t3, $t2
    lw $t4, 28($sp)
    move $t5, $t4
    li $t6, -1
    sb $t6, 1364($sp)
    sw $t5, 1376($sp)
    sw $t3, 1380($sp)
    sw $t1, 1384($sp)
.BB23:
    lw $t0, 1380($sp)
    move $a0, $t0
    lw $t1, 1384($sp)
    move $a1, $t1
    move $a2, $zero
    lw $t2, 1376($sp)
    move $a3, $t2
    jal merge
    move $t3, $v0
    lb $t4, 1364($sp)
    beqz $t4, .BB27
    lw $t0, 1380($sp)
    move $t1, $t0
    lw $t2, 1376($sp)
    move $t3, $t2
    sw $t3, 1456($sp)
    sw $t1, 1448($sp)
.BB24:
    li $t0, 15
    lw $t1, 1456($sp)
    ble $t1, $t0, .BB45
    b .BB34
.BB25:
    lw $t0, 1396($sp)
    move $t1, $t0
    lw $t2, 1392($sp)
    move $t3, $t2
    lw $t4, 1388($sp)
    move $t5, $t4
    sw $t5, 1416($sp)
    sw $t3, 1412($sp)
    sw $t1, 1352($sp)
    lw $t0, 1412($sp)
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
    sw $t1, 1612($sp)
    lw $t1, 1412($sp)
    sw $t2, 1608($sp)
    addiu $t2, $t1, 36
    jal read
    sw $t3, 1604($sp)
    move $t3, $v0
    sw $t3, 0($t2)
    sw $t4, 1600($sp)
    addiu $t4, $t1, 40
    jal read
    sw $t5, 1596($sp)
    move $t5, $v0
    sw $t5, 0($t4)
    sw $t6, 1592($sp)
    addiu $t6, $t1, 44
    jal read
    sw $t7, 1588($sp)
    move $t7, $v0
    sw $t7, 0($t6)
    sw $t8, 1584($sp)
    addiu $t8, $t1, 48
    jal read
    sw $t9, 1580($sp)
    move $t9, $v0
    sw $t9, 0($t8)
    sw $s0, 1576($sp)
    addiu $s0, $t1, 52
    jal read
    sw $s1, 1572($sp)
    move $s1, $v0
    sw $s1, 0($s0)
    sw $s2, 1568($sp)
    addiu $s2, $t1, 56
    jal read
    sw $s3, 1564($sp)
    move $s3, $v0
    sw $s3, 0($s2)
    sw $s4, 1560($sp)
    addiu $s4, $t1, 60
    jal read
    sw $s5, 1556($sp)
    move $s5, $v0
    sw $s5, 0($s4)
    sw $s6, 1552($sp)
    li $s6, 16
    sw $s7, 1548($sp)
    lw $s7, 1416($sp)
    ble $s7, $s6, .BB55
    lw $t0, 1352($sp)
    move $t1, $t0
    lw $t2, 1412($sp)
    move $t3, $t2
    lw $t4, 1416($sp)
    move $t5, $t4
    sw $t5, 1336($sp)
    sw $t3, 216($sp)
    sw $t1, 220($sp)
    b .BB28
.BB26:
    lw $t0, 1396($sp)
    move $t1, $t0
    lw $t2, 1392($sp)
    move $t3, $t2
    lw $t4, 1388($sp)
    move $t5, $t4
    sw $t5, 1440($sp)
    sw $t3, 1432($sp)
    sw $t1, 1424($sp)
    lw $t0, 1432($sp)
    move $t1, $t0
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 1
    lw $t4, 1440($sp)
    ble $t4, $t3, .BB21
    lw $t0, 1424($sp)
    move $t1, $t0
    lw $t2, 1432($sp)
    move $t3, $t2
    lw $t4, 1440($sp)
    move $t5, $t4
    sw $t5, 1328($sp)
    sw $t3, 1324($sp)
    sw $t1, 1320($sp)
    lw $t0, 1324($sp)
    addiu $t1, $t0, 4
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 2
    lw $t4, 1328($sp)
    ble $t4, $t3, .BB31
    lw $t0, 1320($sp)
    move $t1, $t0
    lw $t2, 1324($sp)
    move $t3, $t2
    lw $t4, 1328($sp)
    move $t5, $t4
    sw $t5, 380($sp)
    sw $t3, 1468($sp)
    sw $t1, 1472($sp)
    b .BB41
.BB27:
    move $v0, $zero
    lw $s7, 104($sp)
    lw $s6, 112($sp)
    lw $s5, 120($sp)
    lw $s4, 128($sp)
    lw $s3, 136($sp)
    lw $s2, 144($sp)
    lw $s1, 152($sp)
    lw $s0, 160($sp)
    lw $ra, 0($sp)
    addiu $sp, $sp, 3280
    jr $ra
.BB28:
    li $t0, 31
    lw $t1, 1336($sp)
    ble $t1, $t0, .BB39
    b .BB38
.BB29:
    lw $t0, 60($sp)
    move $t1, $t0
    lw $t2, 56($sp)
    move $t3, $t2
    lw $t4, 52($sp)
    move $t5, $t4
    li $t6, -1
    sb $t6, 1364($sp)
    sw $t5, 1376($sp)
    sw $t3, 1380($sp)
    sw $t1, 1384($sp)
    b .BB23
.BB30:
    lw $t0, 1428($sp)
    move $t1, $t0
    lw $t2, 1436($sp)
    move $t3, $t2
    lw $t4, 1444($sp)
    move $t5, $t4
    sw $t5, 172($sp)
    sw $t3, 1400($sp)
    sw $t1, 212($sp)
    b .BB32
.BB31:
    lw $t0, 1320($sp)
    move $t1, $t0
    lw $t2, 1324($sp)
    move $t3, $t2
    lw $t4, 1328($sp)
    move $t5, $t4
    sw $t5, 172($sp)
    sw $t3, 1400($sp)
    sw $t1, 212($sp)
.BB32:
    lw $t0, 1400($sp)
    move $a0, $t0
    lw $t1, 212($sp)
    move $a1, $t1
    move $a2, $zero
    lw $t2, 172($sp)
    move $a3, $t2
    jal merge
    move $t3, $v0
    li $t4, 15
    lw $t5, 172($sp)
    ble $t5, $t4, .BB33
    b .BB35
.BB33:
    lw $t0, 1400($sp)
    move $t1, $t0
    lw $t2, 172($sp)
    move $t3, $t2
    sw $t3, 1420($sp)
    sw $t1, 168($sp)
    b .BB37
.BB34:
    lw $t0, 1448($sp)
    move $t1, $t0
    lw $t2, 1456($sp)
    move $t3, $t2
    sw $t3, 1360($sp)
    sw $t1, 1372($sp)
    b .BB36
.BB35:
    lw $t0, 1400($sp)
    move $t1, $t0
    lw $t2, 172($sp)
    move $t3, $t2
    sw $t3, 1360($sp)
    sw $t1, 1372($sp)
.BB36:
    lw $t0, 1372($sp)
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
    sw $t1, 1784($sp)
    lw $t1, 1372($sp)
    sw $t2, 1780($sp)
    addiu $t2, $t1, 36
    sw $t3, 1776($sp)
    lw $t3, 0($t2)
    move $a0, $t3
    jal write
    sw $t4, 1772($sp)
    addiu $t4, $t1, 40
    sw $t5, 1768($sp)
    lw $t5, 0($t4)
    move $a0, $t5
    jal write
    sw $t6, 1764($sp)
    addiu $t6, $t1, 44
    sw $t7, 1760($sp)
    lw $t7, 0($t6)
    move $a0, $t7
    jal write
    sw $t8, 1756($sp)
    addiu $t8, $t1, 48
    sw $t9, 1752($sp)
    lw $t9, 0($t8)
    move $a0, $t9
    jal write
    sw $s0, 1748($sp)
    addiu $s0, $t1, 52
    sw $s1, 1744($sp)
    lw $s1, 0($s0)
    move $a0, $s1
    jal write
    sw $s2, 1740($sp)
    addiu $s2, $t1, 56
    sw $s3, 1736($sp)
    lw $s3, 0($s2)
    move $a0, $s3
    jal write
    sw $s4, 1732($sp)
    addiu $s4, $t1, 60
    sw $s5, 1728($sp)
    lw $s5, 0($s4)
    move $a0, $s5
    jal write
    sw $s6, 1724($sp)
    li $s6, 16
    sw $s7, 1720($sp)
    lw $s7, 1360($sp)
    ble $s7, $s6, .BB27
    lw $t0, 1372($sp)
    move $t1, $t0
    lw $t2, 1360($sp)
    move $t3, $t2
    sw $t3, 228($sp)
    sw $t1, 792($sp)
    li $t0, 31
    lw $t1, 228($sp)
    ble $t1, $t0, .BB50
    b .BB43
.BB37:
    lw $t0, 168($sp)
    move $t1, $t0
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 1
    lw $t4, 1420($sp)
    ble $t4, $t3, .BB27
    b .BB46
.BB38:
    lw $t0, 220($sp)
    move $t1, $t0
    lw $t2, 216($sp)
    move $t3, $t2
    lw $t4, 1336($sp)
    move $t5, $t4
    sw $t5, 1444($sp)
    sw $t3, 1436($sp)
    sw $t1, 1428($sp)
    lw $t0, 1436($sp)
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
    sw $t1, 1856($sp)
    lw $t1, 1436($sp)
    sw $t2, 1852($sp)
    addiu $t2, $t1, 100
    jal read
    sw $t3, 1848($sp)
    move $t3, $v0
    sw $t3, 0($t2)
    sw $t4, 1844($sp)
    addiu $t4, $t1, 104
    jal read
    sw $t5, 1840($sp)
    move $t5, $v0
    sw $t5, 0($t4)
    sw $t6, 1836($sp)
    addiu $t6, $t1, 108
    jal read
    sw $t7, 1832($sp)
    move $t7, $v0
    sw $t7, 0($t6)
    sw $t8, 1828($sp)
    addiu $t8, $t1, 112
    jal read
    sw $t9, 1824($sp)
    move $t9, $v0
    sw $t9, 0($t8)
    sw $s0, 1820($sp)
    addiu $s0, $t1, 116
    jal read
    sw $s1, 1816($sp)
    move $s1, $v0
    sw $s1, 0($s0)
    sw $s2, 1812($sp)
    addiu $s2, $t1, 120
    jal read
    sw $s3, 1808($sp)
    move $s3, $v0
    sw $s3, 0($s2)
    sw $s4, 1804($sp)
    addiu $s4, $t1, 124
    jal read
    sw $s5, 1800($sp)
    move $s5, $v0
    sw $s5, 0($s4)
    sw $s6, 1876($sp)
    li $s6, 32
    sw $s7, 1880($sp)
    lw $s7, 1444($sp)
    ble $s7, $s6, .BB30
    lw $t0, 1428($sp)
    move $t1, $t0
    lw $t2, 1436($sp)
    move $t3, $t2
    lw $t4, 1444($sp)
    move $t5, $t4
    sw $t5, 200($sp)
    sw $t3, 204($sp)
    sw $t1, 1332($sp)
    b .BB51
.BB39:
    lw $t0, 220($sp)
    move $t1, $t0
    lw $t2, 216($sp)
    move $t3, $t2
    lw $t4, 1336($sp)
    move $t5, $t4
    sw $t5, 1464($sp)
    sw $t3, 1460($sp)
    sw $t1, 1452($sp)
    lw $t0, 1460($sp)
    addiu $t1, $t0, 64
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 17
    lw $t4, 1464($sp)
    ble $t4, $t3, .BB40
    lw $t0, 1452($sp)
    move $t1, $t0
    lw $t2, 1460($sp)
    move $t3, $t2
    lw $t4, 1464($sp)
    move $t5, $t4
    sw $t5, 184($sp)
    sw $t3, 188($sp)
    sw $t1, 192($sp)
    b .BB48
.BB40:
    lw $t0, 1452($sp)
    move $t1, $t0
    lw $t2, 1460($sp)
    move $t3, $t2
    lw $t4, 1464($sp)
    move $t5, $t4
    sw $t5, 172($sp)
    sw $t3, 1400($sp)
    sw $t1, 212($sp)
    b .BB32
.BB41:
    lw $t0, 1468($sp)
    addiu $t1, $t0, 8
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 3
    lw $t4, 380($sp)
    ble $t4, $t3, .BB58
    lw $t0, 1472($sp)
    move $t1, $t0
    lw $t2, 1468($sp)
    move $t3, $t2
    lw $t4, 380($sp)
    move $t5, $t4
    sw $t5, 348($sp)
    sw $t3, 360($sp)
    sw $t1, 364($sp)
    lw $t0, 360($sp)
    addiu $t1, $t0, 12
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 4
    lw $t4, 348($sp)
    ble $t4, $t3, .BB42
    b .BB59
.BB42:
    lw $t0, 364($sp)
    move $t1, $t0
    lw $t2, 360($sp)
    move $t3, $t2
    lw $t4, 348($sp)
    move $t5, $t4
    sw $t5, 172($sp)
    sw $t3, 1400($sp)
    sw $t1, 212($sp)
    b .BB32
.BB43:
    lw $t0, 792($sp)
    move $t1, $t0
    lw $t2, 228($sp)
    move $t3, $t2
    sw $t3, 1316($sp)
    sw $t1, 368($sp)
    lw $t0, 368($sp)
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
    sw $t1, 2060($sp)
    lw $t1, 368($sp)
    sw $t2, 2064($sp)
    addiu $t2, $t1, 100
    sw $t3, 2092($sp)
    lw $t3, 0($t2)
    move $a0, $t3
    jal write
    sw $t4, 2084($sp)
    addiu $t4, $t1, 104
    sw $t5, 2000($sp)
    lw $t5, 0($t4)
    move $a0, $t5
    jal write
    sw $t6, 2068($sp)
    addiu $t6, $t1, 108
    sw $t7, 2072($sp)
    lw $t7, 0($t6)
    move $a0, $t7
    jal write
    sw $t8, 2076($sp)
    addiu $t8, $t1, 112
    sw $t9, 2004($sp)
    lw $t9, 0($t8)
    move $a0, $t9
    jal write
    sw $s0, 2008($sp)
    addiu $s0, $t1, 116
    sw $s1, 2012($sp)
    lw $s1, 0($s0)
    move $a0, $s1
    jal write
    sw $s2, 2016($sp)
    addiu $s2, $t1, 120
    sw $s3, 2020($sp)
    lw $s3, 0($s2)
    move $a0, $s3
    jal write
    sw $s4, 2024($sp)
    addiu $s4, $t1, 124
    sw $s5, 2028($sp)
    lw $s5, 0($s4)
    move $a0, $s5
    jal write
    sw $s6, 2096($sp)
    li $s6, 32
    sw $s7, 2032($sp)
    lw $s7, 1316($sp)
    ble $s7, $s6, .BB27
    b .BB60
.BB44:
    lw $t0, 72($sp)
    move $t1, $t0
    lw $t2, 68($sp)
    move $t3, $t2
    lw $t4, 64($sp)
    move $t5, $t4
    li $t6, -1
    sb $t6, 1364($sp)
    sw $t5, 1376($sp)
    sw $t3, 1380($sp)
    sw $t1, 1384($sp)
    b .BB23
.BB45:
    lw $t0, 1448($sp)
    move $t1, $t0
    lw $t2, 1456($sp)
    move $t3, $t2
    sw $t3, 1420($sp)
    sw $t1, 168($sp)
    b .BB37
.BB46:
    lw $t0, 168($sp)
    move $t1, $t0
    lw $t2, 1420($sp)
    move $t3, $t2
    sw $t3, 224($sp)
    sw $t1, 232($sp)
    lw $t0, 232($sp)
    addiu $t1, $t0, 4
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 2
    lw $t4, 224($sp)
    ble $t4, $t3, .BB27
    lw $t0, 232($sp)
    move $t1, $t0
    lw $t2, 224($sp)
    move $t3, $t2
    sw $t3, 272($sp)
    sw $t1, 288($sp)
    lw $t0, 288($sp)
    addiu $t1, $t0, 8
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 3
    lw $t4, 272($sp)
    ble $t4, $t3, .BB27
    b .BB61
.BB47:
    lw $t0, 336($sp)
    move $t1, $t0
    lw $t2, 324($sp)
    move $t3, $t2
    lw $t4, 312($sp)
    move $t5, $t4
    sw $t5, 180($sp)
    sw $t3, 196($sp)
    sw $t1, 208($sp)
    b .BB64
.BB48:
    lw $t0, 188($sp)
    addiu $t1, $t0, 68
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 18
    lw $t4, 184($sp)
    ble $t4, $t3, .BB57
    lw $t0, 192($sp)
    move $t1, $t0
    lw $t2, 188($sp)
    move $t3, $t2
    lw $t4, 184($sp)
    move $t5, $t4
    sw $t5, 1208($sp)
    sw $t3, 268($sp)
    sw $t1, 284($sp)
    lw $t0, 268($sp)
    addiu $t1, $t0, 72
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 19
    lw $t4, 1208($sp)
    ble $t4, $t3, .BB62
    b .BB65
.BB49:
    lw $t0, 304($sp)
    addiu $t1, $t0, 132
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 34
    lw $t4, 356($sp)
    ble $t4, $t3, .BB63
    lw $t0, 176($sp)
    move $t1, $t0
    lw $t2, 304($sp)
    move $t3, $t2
    lw $t4, 356($sp)
    move $t5, $t4
    sw $t5, 52($sp)
    sw $t3, 56($sp)
    sw $t1, 60($sp)
    b .BB73
.BB50:
    lw $t0, 792($sp)
    move $t1, $t0
    lw $t2, 228($sp)
    move $t3, $t2
    sw $t3, 316($sp)
    sw $t1, 328($sp)
    lw $t0, 328($sp)
    addiu $t1, $t0, 64
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 17
    lw $t4, 316($sp)
    ble $t4, $t3, .BB27
    lw $t0, 328($sp)
    move $t1, $t0
    lw $t2, 316($sp)
    move $t3, $t2
    sw $t3, 1272($sp)
    sw $t1, 1264($sp)
    lw $t0, 1264($sp)
    addiu $t1, $t0, 68
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 18
    lw $t4, 1272($sp)
    ble $t4, $t3, .BB27
    b .BB52
.BB51:
    li $t0, 47
    lw $t1, 200($sp)
    ble $t1, $t0, .BB56
    lw $t0, 1332($sp)
    move $t1, $t0
    lw $t2, 204($sp)
    move $t3, $t2
    lw $t4, 200($sp)
    move $t5, $t4
    sw $t5, 344($sp)
    sw $t3, 376($sp)
    sw $t1, 1344($sp)
    lw $t0, 376($sp)
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
    sw $t1, 2216($sp)
    lw $t1, 376($sp)
    sw $t2, 2220($sp)
    addiu $t2, $t1, 164
    jal read
    sw $t3, 2224($sp)
    move $t3, $v0
    sw $t3, 0($t2)
    sw $t4, 2228($sp)
    addiu $t4, $t1, 168
    jal read
    sw $t5, 2232($sp)
    move $t5, $v0
    sw $t5, 0($t4)
    sw $t6, 2236($sp)
    addiu $t6, $t1, 172
    jal read
    sw $t7, 2240($sp)
    move $t7, $v0
    sw $t7, 0($t6)
    sw $t8, 2244($sp)
    addiu $t8, $t1, 176
    jal read
    sw $t9, 2248($sp)
    move $t9, $v0
    sw $t9, 0($t8)
    sw $s0, 2252($sp)
    addiu $s0, $t1, 180
    jal read
    sw $s1, 2256($sp)
    move $s1, $v0
    sw $s1, 0($s0)
    sw $s2, 2260($sp)
    addiu $s2, $t1, 184
    jal read
    sw $s3, 2264($sp)
    move $s3, $v0
    sw $s3, 0($s2)
    sw $s4, 2268($sp)
    addiu $s4, $t1, 188
    jal read
    sw $s5, 2272($sp)
    move $s5, $v0
    sw $s5, 0($s4)
    sw $s6, 2276($sp)
    li $s6, 48
    sw $s7, 2280($sp)
    lw $s7, 344($sp)
    ble $s7, $s6, .BB54
    lw $t0, 1344($sp)
    move $t1, $t0
    lw $t2, 376($sp)
    move $t3, $t2
    lw $t4, 344($sp)
    move $t5, $t4
    sw $t5, 148($sp)
    sw $t3, 156($sp)
    sw $t1, 164($sp)
    li $t0, 63
    lw $t1, 148($sp)
    ble $t1, $t0, .BB72
    b .BB71
.BB52:
    lw $t0, 1264($sp)
    move $t1, $t0
    lw $t2, 1272($sp)
    move $t3, $t2
    sw $t3, 92($sp)
    sw $t1, 96($sp)
    lw $t0, 96($sp)
    addiu $t1, $t0, 72
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 19
    lw $t4, 92($sp)
    ble $t4, $t3, .BB27
    b .BB80
.BB53:
    lw $t0, 1200($sp)
    move $t1, $t0
    lw $t2, 788($sp)
    move $t3, $t2
    lw $t4, 1224($sp)
    move $t5, $t4
    sw $t5, 180($sp)
    sw $t3, 196($sp)
    sw $t1, 208($sp)
    b .BB64
.BB54:
    lw $t0, 1344($sp)
    move $t1, $t0
    lw $t2, 376($sp)
    move $t3, $t2
    lw $t4, 344($sp)
    move $t5, $t4
    sw $t5, 172($sp)
    sw $t3, 1400($sp)
    sw $t1, 212($sp)
    b .BB32
.BB55:
    lw $t0, 1352($sp)
    move $t1, $t0
    lw $t2, 1412($sp)
    move $t3, $t2
    lw $t4, 1416($sp)
    move $t5, $t4
    sw $t5, 172($sp)
    sw $t3, 1400($sp)
    sw $t1, 212($sp)
    b .BB32
.BB56:
    lw $t0, 1332($sp)
    move $t1, $t0
    lw $t2, 204($sp)
    move $t3, $t2
    lw $t4, 200($sp)
    move $t5, $t4
    sw $t5, 312($sp)
    sw $t3, 324($sp)
    sw $t1, 336($sp)
    lw $t0, 324($sp)
    addiu $t1, $t0, 128
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 33
    lw $t4, 312($sp)
    ble $t4, $t3, .BB47
    lw $t0, 336($sp)
    move $t1, $t0
    lw $t2, 324($sp)
    move $t3, $t2
    lw $t4, 312($sp)
    move $t5, $t4
    sw $t5, 356($sp)
    sw $t3, 304($sp)
    sw $t1, 176($sp)
    b .BB49
.BB57:
    lw $t0, 192($sp)
    move $t1, $t0
    lw $t2, 188($sp)
    move $t3, $t2
    lw $t4, 184($sp)
    move $t5, $t4
    sw $t5, 172($sp)
    sw $t3, 1400($sp)
    sw $t1, 212($sp)
    b .BB32
.BB58:
    lw $t0, 1472($sp)
    move $t1, $t0
    lw $t2, 1468($sp)
    move $t3, $t2
    lw $t4, 380($sp)
    move $t5, $t4
    sw $t5, 172($sp)
    sw $t3, 1400($sp)
    sw $t1, 212($sp)
    b .BB32
.BB59:
    lw $t0, 364($sp)
    move $t1, $t0
    lw $t2, 360($sp)
    move $t3, $t2
    lw $t4, 348($sp)
    move $t5, $t4
    sw $t5, 1224($sp)
    sw $t3, 788($sp)
    sw $t1, 1200($sp)
    lw $t0, 788($sp)
    addiu $t1, $t0, 16
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 5
    lw $t4, 1224($sp)
    ble $t4, $t3, .BB53
    lw $t0, 1200($sp)
    move $t1, $t0
    lw $t2, 788($sp)
    move $t3, $t2
    lw $t4, 1224($sp)
    move $t5, $t4
    sw $t5, 140($sp)
    sw $t3, 1280($sp)
    sw $t1, 1256($sp)
    b .BB67
.BB60:
    lw $t0, 368($sp)
    move $t1, $t0
    lw $t2, 1316($sp)
    move $t3, $t2
    sw $t3, 1248($sp)
    sw $t1, 1240($sp)
    li $t0, 47
    lw $t1, 1248($sp)
    ble $t1, $t0, .BB69
    lw $t0, 1240($sp)
    move $t1, $t0
    lw $t2, 1248($sp)
    move $t3, $t2
    sw $t3, 124($sp)
    sw $t1, 132($sp)
    lw $t0, 132($sp)
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
    sw $t1, 2520($sp)
    lw $t1, 132($sp)
    sw $t2, 2516($sp)
    addiu $t2, $t1, 164
    sw $t3, 2512($sp)
    lw $t3, 0($t2)
    move $a0, $t3
    jal write
    sw $t4, 2508($sp)
    addiu $t4, $t1, 168
    sw $t5, 2504($sp)
    lw $t5, 0($t4)
    move $a0, $t5
    jal write
    sw $t6, 2500($sp)
    addiu $t6, $t1, 172
    sw $t7, 2496($sp)
    lw $t7, 0($t6)
    move $a0, $t7
    jal write
    sw $t8, 2492($sp)
    addiu $t8, $t1, 176
    sw $t9, 2488($sp)
    lw $t9, 0($t8)
    move $a0, $t9
    jal write
    sw $s0, 2484($sp)
    addiu $s0, $t1, 180
    sw $s1, 2480($sp)
    lw $s1, 0($s0)
    move $a0, $s1
    jal write
    sw $s2, 2468($sp)
    addiu $s2, $t1, 184
    sw $s3, 2460($sp)
    lw $s3, 0($s2)
    move $a0, $s3
    jal write
    sw $s4, 2476($sp)
    addiu $s4, $t1, 188
    sw $s5, 2472($sp)
    lw $s5, 0($s4)
    move $a0, $s5
    jal write
    sw $s6, 2420($sp)
    li $s6, 48
    sw $s7, 2428($sp)
    lw $s7, 124($sp)
    ble $s7, $s6, .BB27
    b .BB84
.BB61:
    lw $t0, 288($sp)
    move $t1, $t0
    lw $t2, 272($sp)
    move $t3, $t2
    sw $t3, 1296($sp)
    sw $t1, 1288($sp)
    lw $t0, 1288($sp)
    addiu $t1, $t0, 12
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 4
    lw $t4, 1296($sp)
    ble $t4, $t3, .BB27
    lw $t0, 1288($sp)
    move $t1, $t0
    lw $t2, 1296($sp)
    move $t3, $t2
    sw $t3, 84($sp)
    sw $t1, 88($sp)
    b .BB70
.BB62:
    lw $t0, 284($sp)
    move $t1, $t0
    lw $t2, 268($sp)
    move $t3, $t2
    lw $t4, 1208($sp)
    move $t5, $t4
    sw $t5, 180($sp)
    sw $t3, 196($sp)
    sw $t1, 208($sp)
    b .BB64
.BB63:
    lw $t0, 176($sp)
    move $t1, $t0
    lw $t2, 304($sp)
    move $t3, $t2
    lw $t4, 356($sp)
    move $t5, $t4
    sw $t5, 180($sp)
    sw $t3, 196($sp)
    sw $t1, 208($sp)
.BB64:
    lw $t0, 196($sp)
    move $a0, $t0
    lw $t1, 208($sp)
    move $a1, $t1
    move $a2, $zero
    lw $t2, 180($sp)
    move $a3, $t2
    jal merge
    move $t3, $v0
    lw $t4, 196($sp)
    move $t5, $t4
    lw $t6, 180($sp)
    move $t7, $t6
    sw $t7, 1456($sp)
    sw $t5, 1448($sp)
    b .BB24
.BB65:
    lw $t0, 284($sp)
    move $t1, $t0
    lw $t2, 268($sp)
    move $t3, $t2
    lw $t4, 1208($sp)
    move $t5, $t4
    sw $t5, 1232($sp)
    sw $t3, 1216($sp)
    sw $t1, 300($sp)
    lw $t0, 1216($sp)
    addiu $t1, $t0, 76
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 20
    lw $t4, 1232($sp)
    ble $t4, $t3, .BB66
    b .BB74
.BB66:
    lw $t0, 300($sp)
    move $t1, $t0
    lw $t2, 1216($sp)
    move $t3, $t2
    lw $t4, 1232($sp)
    move $t5, $t4
    sw $t5, 180($sp)
    sw $t3, 196($sp)
    sw $t1, 208($sp)
    b .BB64
.BB67:
    lw $t0, 1280($sp)
    addiu $t1, $t0, 20
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 6
    lw $t4, 140($sp)
    ble $t4, $t3, .BB68
    lw $t0, 1256($sp)
    move $t1, $t0
    lw $t2, 1280($sp)
    move $t3, $t2
    lw $t4, 140($sp)
    move $t5, $t4
    sw $t5, 28($sp)
    sw $t3, 32($sp)
    sw $t1, 36($sp)
    lw $t0, 32($sp)
    addiu $t1, $t0, 24
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 7
    lw $t4, 28($sp)
    ble $t4, $t3, .BB22
    b .BB76
.BB68:
    lw $t0, 1256($sp)
    move $t1, $t0
    lw $t2, 1280($sp)
    move $t3, $t2
    lw $t4, 140($sp)
    move $t5, $t4
    sw $t5, 180($sp)
    sw $t3, 196($sp)
    sw $t1, 208($sp)
    b .BB64
.BB69:
    lw $t0, 1240($sp)
    move $t1, $t0
    lw $t2, 1248($sp)
    move $t3, $t2
    sw $t3, 108($sp)
    sw $t1, 116($sp)
    lw $t0, 116($sp)
    addiu $t1, $t0, 128
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 33
    lw $t4, 108($sp)
    ble $t4, $t3, .BB27
    lw $t0, 116($sp)
    move $t1, $t0
    lw $t2, 108($sp)
    move $t3, $t2
    sw $t3, 12($sp)
    sw $t1, 16($sp)
    b .BB78
.BB70:
    lw $t0, 88($sp)
    addiu $t1, $t0, 16
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 5
    lw $t4, 84($sp)
    ble $t4, $t3, .BB27
    lw $t0, 88($sp)
    move $t1, $t0
    lw $t2, 84($sp)
    move $t3, $t2
    sw $t3, 248($sp)
    sw $t1, 240($sp)
    b .BB81
.BB71:
    lw $t0, 164($sp)
    move $t1, $t0
    lw $t2, 156($sp)
    move $t3, $t2
    lw $t4, 148($sp)
    move $t5, $t4
    sw $t5, 1340($sp)
    sw $t3, 76($sp)
    sw $t1, 80($sp)
    lw $t0, 76($sp)
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
    sw $t1, 2692($sp)
    lw $t1, 76($sp)
    sw $t2, 2688($sp)
    addiu $t2, $t1, 228
    jal read
    sw $t3, 2684($sp)
    move $t3, $v0
    sw $t3, 0($t2)
    sw $t4, 2680($sp)
    addiu $t4, $t1, 232
    jal read
    sw $t5, 2676($sp)
    move $t5, $v0
    sw $t5, 0($t4)
    sw $t6, 2672($sp)
    addiu $t6, $t1, 236
    jal read
    sw $t7, 2668($sp)
    move $t7, $v0
    sw $t7, 0($t6)
    sw $t8, 2664($sp)
    addiu $t8, $t1, 240
    jal read
    sw $t9, 2660($sp)
    move $t9, $v0
    sw $t9, 0($t8)
    sw $s0, 2656($sp)
    addiu $s0, $t1, 244
    jal read
    sw $s1, 2652($sp)
    move $s1, $v0
    sw $s1, 0($s0)
    sw $s2, 2648($sp)
    addiu $s2, $t1, 248
    jal read
    sw $s3, 2644($sp)
    move $s3, $v0
    sw $s3, 0($s2)
    sw $s4, 2640($sp)
    addiu $s4, $t1, 252
    jal read
    sw $s5, 2636($sp)
    move $s5, $v0
    sw $s5, 0($s4)
    sw $s6, 2632($sp)
    li $s6, 64
    sw $s7, 2628($sp)
    lw $s7, 1340($sp)
    ble $s7, $s6, .BB86
    lw $t0, 80($sp)
    move $t1, $t0
    lw $t2, 76($sp)
    move $t3, $t2
    lw $t4, 1340($sp)
    move $t5, $t4
    li $t6, 64
    sw $t6, 1292($sp)
    sw $t5, 1300($sp)
    sw $t3, 1308($sp)
    sw $t1, 256($sp)
    b .BB90
.BB72:
    lw $t0, 164($sp)
    move $t1, $t0
    lw $t2, 156($sp)
    move $t3, $t2
    lw $t4, 148($sp)
    move $t5, $t4
    sw $t5, 64($sp)
    sw $t3, 68($sp)
    sw $t1, 72($sp)
    lw $t0, 68($sp)
    addiu $t1, $t0, 192
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 49
    lw $t4, 64($sp)
    ble $t4, $t3, .BB44
    lw $t0, 72($sp)
    move $t1, $t0
    lw $t2, 68($sp)
    move $t3, $t2
    lw $t4, 64($sp)
    move $t5, $t4
    li $t6, 49
    sw $t6, 1260($sp)
    sw $t5, 1268($sp)
    sw $t3, 1276($sp)
    sw $t1, 1284($sp)
    b .BB77
.BB73:
    lw $t0, 56($sp)
    addiu $t1, $t0, 136
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 35
    lw $t4, 52($sp)
    ble $t4, $t3, .BB29
    lw $t0, 60($sp)
    move $t1, $t0
    lw $t2, 56($sp)
    move $t3, $t2
    lw $t4, 52($sp)
    move $t5, $t4
    li $t6, 35
    sw $t6, 1260($sp)
    sw $t5, 1268($sp)
    sw $t3, 1276($sp)
    sw $t1, 1284($sp)
    b .BB77
.BB74:
    lw $t0, 300($sp)
    move $t1, $t0
    lw $t2, 1216($sp)
    move $t3, $t2
    lw $t4, 1232($sp)
    move $t5, $t4
    sw $t5, 40($sp)
    sw $t3, 44($sp)
    sw $t1, 48($sp)
    lw $t0, 44($sp)
    addiu $t1, $t0, 80
    jal read
    move $t2, $v0
    sw $t2, 0($t1)
    li $t3, 21
    lw $t4, 40($sp)
    ble $t4, $t3, .BB75
    lw $t0, 48($sp)
    move $t1, $t0
    lw $t2, 44($sp)
    move $t3, $t2
    lw $t4, 40($sp)
    move $t5, $t4
    li $t6, 21
    sw $t6, 1260($sp)
    sw $t5, 1268($sp)
    sw $t3, 1276($sp)
    sw $t1, 1284($sp)
    b .BB77
.BB75:
    lw $t0, 48($sp)
    move $t1, $t0
    lw $t2, 44($sp)
    move $t3, $t2
    lw $t4, 40($sp)
    move $t5, $t4
    li $t6, -1
    sb $t6, 1364($sp)
    sw $t5, 1376($sp)
    sw $t3, 1380($sp)
    sw $t1, 1384($sp)
    b .BB23
.BB76:
    lw $t0, 36($sp)
    move $t1, $t0
    lw $t2, 32($sp)
    move $t3, $t2
    lw $t4, 28($sp)
    move $t5, $t4
    li $t6, 7
    sw $t6, 1260($sp)
    sw $t5, 1268($sp)
    sw $t3, 1276($sp)
    sw $t1, 1284($sp)
.BB77:
    lw $t0, 1276($sp)
    move $t1, $t0
    li $t2, 4
    lw $t3, 1260($sp)
    mult $t3, $t2
    mflo $t4
    addu $t1, $t1, $t4
    jal read
    move $t5, $v0
    sw $t5, 0($t1)
    addiu $t6, $t3, 1
    lw $t7, 1268($sp)
    sw $t6, 1348($sp)
    bge $t6, $t7, .BB82
    lw $t0, 1284($sp)
    move $t0, $t0
    lw $t1, 1276($sp)
    move $t1, $t1
    lw $t2, 1268($sp)
    move $t2, $t2
    lw $t3, 1348($sp)
    move $t4, $t3
    sw $t4, 1260($sp)
    sw $t2, 1268($sp)
    sw $t1, 1276($sp)
    sw $t0, 1284($sp)
    b .BB77
.BB78:
    lw $t0, 16($sp)
    addiu $t1, $t0, 132
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 34
    lw $t4, 12($sp)
    ble $t4, $t3, .BB27
    b .BB87
.BB79:
    lw $t0, 280($sp)
    move $t1, $t0
    lw $t2, 296($sp)
    move $t3, $t2
    lw $t4, 308($sp)
    move $t5, $t4
    sw $t5, 172($sp)
    sw $t3, 1400($sp)
    sw $t1, 212($sp)
    b .BB32
.BB80:
    lw $t0, 96($sp)
    move $t1, $t0
    lw $t2, 92($sp)
    move $t3, $t2
    sw $t3, 236($sp)
    sw $t1, 8($sp)
    lw $t0, 8($sp)
    addiu $t1, $t0, 76
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 20
    lw $t4, 236($sp)
    ble $t4, $t3, .BB27
    lw $t0, 8($sp)
    move $t1, $t0
    lw $t2, 236($sp)
    move $t3, $t2
    sw $t3, 1212($sp)
    sw $t1, 1196($sp)
    b .BB88
.BB81:
    lw $t0, 240($sp)
    addiu $t1, $t0, 20
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 6
    lw $t4, 248($sp)
    ble $t4, $t3, .BB27
    lw $t0, 240($sp)
    move $t1, $t0
    lw $t2, 248($sp)
    move $t3, $t2
    sw $t3, 264($sp)
    sw $t1, 1204($sp)
    lw $t0, 1204($sp)
    addiu $t1, $t0, 24
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 7
    lw $t4, 264($sp)
    ble $t4, $t3, .BB27
    lw $t0, 1204($sp)
    move $t1, $t0
    lw $t2, 264($sp)
    move $t3, $t2
    li $t4, 7
    sw $t4, 292($sp)
    sw $t3, 276($sp)
    sw $t1, 352($sp)
    b .BB93
.BB82:
    lw $t0, 1284($sp)
    move $t1, $t0
    lw $t2, 1276($sp)
    move $t3, $t2
    lw $t4, 1268($sp)
    move $t5, $t4
    li $t6, -1
    sb $t6, 1364($sp)
    sw $t5, 1376($sp)
    sw $t3, 1380($sp)
    sw $t1, 1384($sp)
    b .BB23
.BB83:
    lw $t0, 24($sp)
    move $t1, $t0
    lw $t2, 20($sp)
    move $t3, $t2
    sw $t3, 1244($sp)
    sw $t1, 1252($sp)
    lw $t0, 1252($sp)
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
    sw $t1, 2884($sp)
    lw $t1, 1252($sp)
    sw $t2, 2880($sp)
    addiu $t2, $t1, 228
    sw $t3, 2876($sp)
    lw $t3, 0($t2)
    move $a0, $t3
    jal write
    sw $t4, 2872($sp)
    addiu $t4, $t1, 232
    sw $t5, 2868($sp)
    lw $t5, 0($t4)
    move $a0, $t5
    jal write
    sw $t6, 2864($sp)
    addiu $t6, $t1, 236
    sw $t7, 2860($sp)
    lw $t7, 0($t6)
    move $a0, $t7
    jal write
    sw $t8, 2856($sp)
    addiu $t8, $t1, 240
    sw $t9, 2852($sp)
    lw $t9, 0($t8)
    move $a0, $t9
    jal write
    sw $s0, 2848($sp)
    addiu $s0, $t1, 244
    sw $s1, 2844($sp)
    lw $s1, 0($s0)
    move $a0, $s1
    jal write
    sw $s2, 2840($sp)
    addiu $s2, $t1, 248
    sw $s3, 2836($sp)
    lw $s3, 0($s2)
    move $a0, $s3
    jal write
    sw $s4, 2832($sp)
    addiu $s4, $t1, 252
    sw $s5, 2828($sp)
    lw $s5, 0($s4)
    move $a0, $s5
    jal write
    sw $s6, 2824($sp)
    li $s6, 64
    sw $s7, 2820($sp)
    lw $s7, 1244($sp)
    ble $s7, $s6, .BB27
    lw $t0, 1252($sp)
    move $t1, $t0
    lw $t2, 1244($sp)
    move $t3, $t2
    li $t4, 64
    sw $t4, 372($sp)
    sw $t3, 340($sp)
    sw $t1, 332($sp)
    b .BB95
.BB84:
    lw $t0, 132($sp)
    move $t1, $t0
    lw $t2, 124($sp)
    move $t3, $t2
    sw $t3, 20($sp)
    sw $t1, 24($sp)
    li $t0, 63
    lw $t1, 20($sp)
    ble $t1, $t0, .BB85
    b .BB83
.BB85:
    lw $t0, 24($sp)
    move $t1, $t0
    lw $t2, 20($sp)
    move $t3, $t2
    sw $t3, 1228($sp)
    sw $t1, 1236($sp)
    lw $t0, 1236($sp)
    addiu $t1, $t0, 192
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 49
    lw $t4, 1228($sp)
    ble $t4, $t3, .BB27
    lw $t0, 1236($sp)
    move $t1, $t0
    lw $t2, 1228($sp)
    move $t3, $t2
    li $t4, 49
    sw $t4, 292($sp)
    sw $t3, 276($sp)
    sw $t1, 352($sp)
    b .BB93
.BB86:
    lw $t0, 80($sp)
    move $t1, $t0
    lw $t2, 76($sp)
    move $t3, $t2
    lw $t4, 1340($sp)
    move $t5, $t4
    sw $t5, 172($sp)
    sw $t3, 1400($sp)
    sw $t1, 212($sp)
    b .BB32
.BB87:
    lw $t0, 16($sp)
    move $t1, $t0
    lw $t2, 12($sp)
    move $t3, $t2
    sw $t3, 784($sp)
    sw $t1, 1220($sp)
    lw $t0, 1220($sp)
    addiu $t1, $t0, 136
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 35
    lw $t4, 784($sp)
    ble $t4, $t3, .BB27
    lw $t0, 1220($sp)
    move $t1, $t0
    lw $t2, 784($sp)
    move $t3, $t2
    li $t4, 35
    sw $t4, 292($sp)
    sw $t3, 276($sp)
    sw $t1, 352($sp)
    b .BB93
.BB88:
    lw $t0, 1196($sp)
    addiu $t1, $t0, 80
    lw $t2, 0($t1)
    move $a0, $t2
    jal write
    li $t3, 21
    lw $t4, 1212($sp)
    ble $t4, $t3, .BB27
    lw $t0, 1196($sp)
    move $t1, $t0
    lw $t2, 1212($sp)
    move $t3, $t2
    li $t4, 21
    sw $t4, 292($sp)
    sw $t3, 276($sp)
    sw $t1, 352($sp)
    b .BB93
.BB89:
    lw $t0, 256($sp)
    move $t1, $t0
    lw $t2, 1308($sp)
    move $t3, $t2
    lw $t4, 1300($sp)
    move $t5, $t4
    lw $t6, 1292($sp)
    move $t7, $t6
    sw $t7, 320($sp)
    sw $t5, 308($sp)
    sw $t3, 296($sp)
    sw $t1, 280($sp)
    lw $t0, 296($sp)
    move $t1, $t0
    li $t2, 4
    lw $t3, 320($sp)
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
    sw $t1, 3048($sp)
    move $t1, $v0
    sw $t1, 0($t0)
    sw $t2, 3056($sp)
    lw $t2, 3048($sp)
    addiu $t3, $t2, 32
    jal read
    sw $t4, 3064($sp)
    move $t4, $v0
    sw $t4, 0($t3)
    sw $t5, 3072($sp)
    addiu $t5, $t2, 36
    jal read
    sw $t6, 3076($sp)
    move $t6, $v0
    sw $t6, 0($t5)
    sw $t7, 3100($sp)
    addiu $t7, $t2, 40
    jal read
    sw $t8, 3116($sp)
    move $t8, $v0
    sw $t8, 0($t7)
    sw $t9, 3084($sp)
    addiu $t9, $t2, 44
    jal read
    sw $s0, 3040($sp)
    move $s0, $v0
    sw $s0, 0($t9)
    sw $s1, 3044($sp)
    addiu $s1, $t2, 48
    jal read
    sw $s2, 3052($sp)
    move $s2, $v0
    sw $s2, 0($s1)
    sw $s3, 3060($sp)
    addiu $s3, $t2, 52
    jal read
    sw $s4, 3068($sp)
    move $s4, $v0
    sw $s4, 0($s3)
    sw $s5, 3104($sp)
    addiu $s5, $t2, 56
    jal read
    sw $s6, 3096($sp)
    move $s6, $v0
    sw $s6, 0($s5)
    sw $s7, 2984($sp)
    addiu $s7, $t2, 60
    jal read
    sw $t0, 3080($sp)
    move $t0, $v0
    sw $t0, 0($s7)
    sw $t1, 3088($sp)
    lw $t1, 320($sp)
    addiu $t2, $t1, 16
    sw $t3, 3092($sp)
    lw $t3, 308($sp)
    sw $t2, 1304($sp)
    bge $t2, $t3, .BB79
    lw $t0, 280($sp)
    move $t1, $t0
    lw $t2, 296($sp)
    move $t3, $t2
    lw $t4, 308($sp)
    move $t5, $t4
    lw $t6, 1304($sp)
    move $t7, $t6
    sw $t7, 1292($sp)
    sw $t5, 1300($sp)
    sw $t3, 1308($sp)
    sw $t1, 256($sp)
.BB90:
    lw $t0, 1292($sp)
    addiu $t1, $t0, 15
    lw $t2, 1300($sp)
    bge $t1, $t2, .BB91
    b .BB89
.BB91:
    lw $t0, 256($sp)
    move $t1, $t0
    lw $t2, 1308($sp)
    move $t3, $t2
    lw $t4, 1300($sp)
    move $t5, $t4
    lw $t6, 1292($sp)
    move $t7, $t6
    sw $t7, 1260($sp)
    sw $t5, 1268($sp)
    sw $t3, 1276($sp)
    sw $t1, 1284($sp)
    b .BB77
.BB92:
    lw $t0, 332($sp)
    move $t1, $t0
    lw $t2, 340($sp)
    move $t3, $t2
    lw $t4, 372($sp)
    move $t5, $t4
    sw $t5, 292($sp)
    sw $t3, 276($sp)
    sw $t1, 352($sp)
.BB93:
    lw $t0, 352($sp)
    move $t1, $t0
    li $t2, 4
    lw $t3, 292($sp)
    mult $t3, $t2
    mflo $t4
    addu $t1, $t1, $t4
    lw $t5, 0($t1)
    move $a0, $t5
    jal write
    addiu $t6, $t3, 1
    lw $t7, 276($sp)
    sw $t6, 244($sp)
    bge $t6, $t7, .BB27
    lw $t0, 352($sp)
    move $t0, $t0
    lw $t1, 276($sp)
    move $t1, $t1
    lw $t2, 244($sp)
    move $t3, $t2
    sw $t3, 292($sp)
    sw $t1, 276($sp)
    sw $t0, 352($sp)
    b .BB93
.BB94:
    lw $t0, 332($sp)
    move $t1, $t0
    lw $t2, 340($sp)
    move $t3, $t2
    lw $t4, 372($sp)
    move $t5, $t4
    sw $t5, 252($sp)
    sw $t3, 260($sp)
    sw $t1, 1312($sp)
    lw $t0, 1312($sp)
    move $t1, $t0
    li $t2, 4
    lw $t3, 252($sp)
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
    sw $t1, 3160($sp)
    lw $t1, 0($t0)
    move $a0, $t1
    jal write
    sw $t2, 3164($sp)
    lw $t2, 3160($sp)
    addiu $t3, $t2, 32
    sw $t4, 3168($sp)
    lw $t4, 0($t3)
    move $a0, $t4
    jal write
    sw $t5, 3172($sp)
    addiu $t5, $t2, 36
    sw $t6, 3176($sp)
    lw $t6, 0($t5)
    move $a0, $t6
    jal write
    sw $t7, 3180($sp)
    addiu $t7, $t2, 40
    sw $t8, 3184($sp)
    lw $t8, 0($t7)
    move $a0, $t8
    jal write
    sw $t9, 3188($sp)
    addiu $t9, $t2, 44
    sw $s0, 3192($sp)
    lw $s0, 0($t9)
    move $a0, $s0
    jal write
    sw $s1, 3196($sp)
    addiu $s1, $t2, 48
    sw $s2, 3200($sp)
    lw $s2, 0($s1)
    move $a0, $s2
    jal write
    sw $s3, 3204($sp)
    addiu $s3, $t2, 52
    sw $s4, 3208($sp)
    lw $s4, 0($s3)
    move $a0, $s4
    jal write
    sw $s5, 3212($sp)
    addiu $s5, $t2, 56
    sw $s6, 3216($sp)
    lw $s6, 0($s5)
    move $a0, $s6
    jal write
    sw $s7, 3220($sp)
    addiu $s7, $t2, 60
    sw $t0, 3224($sp)
    lw $t0, 0($s7)
    move $a0, $t0
    jal write
    sw $t1, 3228($sp)
    lw $t1, 252($sp)
    addiu $t2, $t1, 16
    sw $t3, 3232($sp)
    lw $t3, 260($sp)
    sw $t2, 100($sp)
    bge $t2, $t3, .BB27
    lw $t0, 1312($sp)
    move $t1, $t0
    lw $t2, 260($sp)
    move $t3, $t2
    lw $t4, 100($sp)
    move $t5, $t4
    sw $t5, 372($sp)
    sw $t3, 340($sp)
    sw $t1, 332($sp)
.BB95:
    lw $t0, 372($sp)
    addiu $t1, $t0, 15
    lw $t2, 340($sp)
    bge $t1, $t2, .BB92
    b .BB94

