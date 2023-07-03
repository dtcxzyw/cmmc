.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
A:
	.zero	4194304
.align 4
B:
	.zero	4194304
.align 4
C:
	.zero	4194304
.text
.globl main
main:
	addi sp, sp, -64
	sd s0, 56(sp)
	sd s5, 48(sp)
	sd s2, 40(sp)
	sd s1, 32(sp)
	sd s6, 24(sp)
	sd s3, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s0, a0
pcrel835:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel835)
pcrel836:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(pcrel836)
pcrel837:
	auipc a0, %pcrel_hi(C)
	addi s3, a0, %pcrel_lo(pcrel837)
	mv s5, zero
	ble s0, zero, label126
	ble s0, zero, label8
	j label643
label126:
	mv s4, zero
	ble s0, zero, label11
	ble s0, zero, label114
	j label697
label11:
	li a0, 65
	jal _sysy_starttime
	mv a0, zero
	mv a2, zero
	ble s0, zero, label148
	slliw a1, zero, 12
	add a1, s3, a1
	ble s0, zero, label28
	j label648
label148:
	mv a2, zero
	slliw a1, zero, 12
	add a1, s1, a1
	ble s0, zero, label197
	mv a3, zero
	ble s0, zero, label91
	slliw a4, zero, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label94
	j label762
label648:
	mv a4, zero
	addiw a3, zero, 4
	ble s0, a3, label19
label702:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	j label17
label762:
	addiw a3, a3, 1
	j label89
label17:
	addiw a3, a4, 4
	ble s0, a3, label19
	j label157
label197:
	mv a2, zero
	ble s0, zero, label201
	slliw a1, zero, 12
	add a1, s1, a1
	ble s0, zero, label88
	j label658
label201:
	mv a2, zero
	slliw a1, zero, 12
	add a1, s3, a1
	ble s0, zero, label56
	mv a3, zero
	ble s0, zero, label37
	slliw a4, zero, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label40
label717:
	addiw a3, a3, 1
	ble s0, a3, label37
	j label210
label37:
	addiw a2, a2, 1
	slliw a1, a2, 12
	add a1, s3, a1
	ble s0, a2, label56
	mv a3, zero
	ble s0, zero, label37
	slliw a4, zero, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label40
	j label717
label56:
	addiw a0, a0, 1
	li a1, 5
	bge a0, a1, label348
	mv a2, zero
	ble s0, zero, label148
	slliw a1, zero, 12
	add a1, s3, a1
	ble s0, zero, label28
	j label648
label348:
	mv a0, zero
	mv s2, zero
	ble s0, zero, label60
	ble s0, zero, label74
	j label672
label60:
	li a0, 84
	jal _sysy_stoptime
	mv a0, s2
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s6, 24(sp)
	ld s1, 32(sp)
	ld s2, 40(sp)
	ld s5, 48(sp)
	ld s0, 56(sp)
	addi sp, sp, 64
	ret
label89:
	ble s0, a3, label91
	j label449
label91:
	addiw a2, a2, 1
	slliw a1, a2, 12
	add a1, s1, a1
	ble s0, a2, label197
	mv a3, zero
	ble s0, zero, label91
	slliw a4, zero, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label94
	j label762
label94:
	ble s0, zero, label93
	slliw a4, a3, 12
	add a4, s3, a4
	li t0, 4
	ble s0, t0, label469
	j label746
label469:
	mv t2, zero
	sh2add a5, a2, a5
	lw a5, 0(a5)
	addiw t0, zero, 4
	ble s0, t0, label100
label105:
	sh2add t1, t2, a4
	lw t3, 0(t1)
	sh2add t2, t2, a1
	lw t4, 0(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t1)
	lw t3, 4(t1)
	lw t4, 4(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 4(t1)
	lw t3, 8(t1)
	lw t4, 8(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 8(t1)
	lw t3, 12(t1)
	lw t2, 12(t2)
	mulw t2, a5, t2
	addw t2, t3, t2
	sw t2, 12(t1)
	mv t2, t0
	addiw t0, t0, 4
	ble s0, t0, label100
	j label105
label93:
	addiw a3, a3, 1
	ble s0, a3, label91
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label94
	addiw a3, a3, 1
	ble s0, a3, label91
	j label449
label749:
	sh2add t1, t0, a4
	lw t2, 0(t1)
	sh2add t3, t0, a1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw t0, t0, 1
	ble s0, t0, label93
	j label749
label100:
	addiw t0, t2, 4
	ble s0, t0, label482
	j label104
label482:
	mv t0, t2
	sh2add t1, t2, a4
	lw t2, 0(t1)
	sh2add t3, t0, a1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw t0, t0, 1
	ble s0, t0, label93
	sh2add t1, t0, a4
	lw t2, 0(t1)
	sh2add t3, t0, a1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw t0, t0, 1
	ble s0, t0, label93
	sh2add t1, t0, a4
	lw t2, 0(t1)
	sh2add t3, t0, a1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw t0, t0, 1
	ble s0, t0, label93
	j label749
label104:
	sh2add t1, t2, a4
	lw t3, 0(t1)
	sh2add t2, t2, a1
	lw t4, 0(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t1)
	lw t3, 4(t1)
	lw t4, 4(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 4(t1)
	lw t3, 8(t1)
	lw t4, 8(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 8(t1)
	lw t3, 12(t1)
	lw t2, 12(t2)
	mulw t2, a5, t2
	addw t2, t3, t2
	sw t2, 12(t1)
	mv t2, t0
	addiw t0, t0, 4
	ble s0, t0, label482
	j label104
label449:
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label94
	addiw a3, a3, 1
	ble s0, a3, label91
	j label449
label710:
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label28
	j label710
label28:
	addiw a2, a2, 1
	ble s0, a2, label148
	slliw a1, a2, 12
	add a1, s3, a1
	ble s0, zero, label28
	mv a4, zero
	addiw a3, zero, 4
	ble s0, a3, label19
	j label702
label210:
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label40
	j label661
label40:
	ble s0, zero, label39
	slliw a4, a3, 12
	add a4, s1, a4
	li t0, 4
	ble s0, t0, label230
	j label720
label39:
	addiw a3, a3, 1
	ble s0, a3, label37
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label40
	addiw a3, a3, 1
	ble s0, a3, label37
	j label210
label50:
	addiw t0, t2, 4
	ble s0, t0, label278
	j label52
label278:
	mv t0, t2
	sh2add t1, t2, a4
	lw t2, 0(t1)
	sh2add t3, t0, a1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw t0, t0, 1
	ble s0, t0, label39
	sh2add t1, t0, a4
	lw t2, 0(t1)
	sh2add t3, t0, a1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw t0, t0, 1
	ble s0, t0, label39
	sh2add t1, t0, a4
	lw t2, 0(t1)
	sh2add t3, t0, a1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw t0, t0, 1
	ble s0, t0, label39
label725:
	sh2add t1, t0, a4
	lw t2, 0(t1)
	sh2add t3, t0, a1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw t0, t0, 1
	ble s0, t0, label39
	j label725
label52:
	sh2add t1, t2, a4
	lw t3, 0(t1)
	sh2add t2, t2, a1
	lw t4, 0(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t1)
	lw t3, 4(t1)
	lw t4, 4(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 4(t1)
	lw t3, 8(t1)
	lw t4, 8(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 8(t1)
	lw t3, 12(t1)
	lw t2, 12(t2)
	mulw t2, a5, t2
	addw t2, t3, t2
	sw t2, 12(t1)
	mv t2, t0
	addiw t0, t0, 4
	ble s0, t0, label278
	j label52
label230:
	mv t1, zero
	sh2add a5, a2, a5
	lw a5, 0(a5)
	mv t2, zero
	addiw t0, zero, 4
	ble s0, t0, label50
label55:
	sh2add t1, t2, a4
	lw t3, 0(t1)
	sh2add t2, t2, a1
	lw t4, 0(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t1)
	lw t3, 4(t1)
	lw t4, 4(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 4(t1)
	lw t3, 8(t1)
	lw t4, 8(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 8(t1)
	lw t3, 12(t1)
	lw t2, 12(t2)
	mulw t2, a5, t2
	addw t2, t3, t2
	sw t2, 12(t1)
	mv t2, t0
	addiw t0, t0, 4
	ble s0, t0, label50
	j label55
label661:
	addiw a3, a3, 1
	ble s0, a3, label37
	j label210
label88:
	addiw a2, a2, 1
	ble s0, a2, label201
	slliw a1, a2, 12
	add a1, s1, a1
	ble s0, zero, label88
	mv a4, zero
	addiw a3, zero, 4
	ble s0, a3, label79
	j label716
label739:
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label88
	j label739
label79:
	addiw a3, a4, 4
	ble s0, a3, label418
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label418
	j label735
label418:
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label84
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label84
	j label736
label84:
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label88
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label88
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label88
	j label739
label19:
	addiw a3, a4, 4
	ble s0, a3, label163
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label163
	j label706
label163:
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label24
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label24
	j label707
label24:
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label28
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label28
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label28
	j label710
label746:
	sh2add t0, a2, a5
	lw t0, 0(t0)
	li t1, 4
	mv t3, zero
label107:
	sh2add t2, t3, a4
	lw t4, 0(t2)
	sh2add t3, t3, a1
	lw t5, 0(t3)
	mulw t5, t0, t5
	addw t4, t4, t5
	sw t4, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw t5, t0, t5
	addw t4, t4, t5
	sw t4, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t5, t0, t5
	addw t4, t4, t5
	sw t4, 8(t2)
	lw t4, 12(t2)
	lw t3, 12(t3)
	mulw t3, t0, t3
	addw t3, t4, t3
	sw t3, 12(t2)
	addiw t2, t1, 4
	ble s0, t2, label581
	mv t3, t1
	mv t1, t2
	j label107
label581:
	mv t2, t1
	sh2add a5, a2, a5
	lw a5, 0(a5)
	addiw t0, t1, 4
	ble s0, t0, label100
	j label105
label720:
	sh2add t0, a2, a5
	lw t0, 0(t0)
	li t1, 4
	mv t3, zero
label43:
	sh2add t2, t3, a4
	lw t4, 0(t2)
	sh2add t3, t3, a1
	lw t5, 0(t3)
	mulw t5, t0, t5
	addw t4, t4, t5
	sw t4, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw t5, t0, t5
	addw t4, t4, t5
	sw t4, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t5, t0, t5
	addw t4, t4, t5
	sw t4, 8(t2)
	lw t4, 12(t2)
	lw t3, 12(t3)
	mulw t3, t0, t3
	addw t3, t4, t3
	sw t3, 12(t2)
	addiw t2, t1, 4
	ble s0, t2, label46
	mv t3, t1
	mv t1, t2
	j label43
label46:
	sh2add a5, a2, a5
	lw a5, 0(a5)
	mv t2, t1
	addiw t0, t1, 4
	ble s0, t0, label50
	j label55
label658:
	mv a4, zero
	addiw a3, zero, 4
	ble s0, a3, label79
label716:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label79
	j label412
label736:
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label84
	j label736
label735:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label418
	j label735
label412:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label79
label734:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label79
	j label734
label706:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label163
	j label706
label707:
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label24
	j label707
label157:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label19
label705:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label19
	j label705
label138:
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label8
	j label645
label8:
	addiw s5, s5, 1
	ble s0, s5, label126
	ble s0, zero, label8
	slli a0, s5, 12
	add s4, s2, a0
	mv s6, zero
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label8
	j label138
label645:
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label8
label700:
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label8
	j label700
label594:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label114
	j label695
label114:
	addiw s4, s4, 1
	ble s0, s4, label11
	ble s0, zero, label114
	slli a0, s4, 12
	add s5, s1, a0
	mv s6, zero
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label114
	j label594
label695:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label114
label754:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label114
	j label754
label672:
	slli a1, a0, 12
	add a1, s1, a1
	mv a4, zero
	mv a3, s2
	addiw a2, zero, 4
	ble s0, a2, label67
	j label66
label380:
	mv a2, a4
	sh2add a4, a4, a1
	lw a4, 0(a4)
	addw a3, a3, a4
	addiw a2, a2, 1
	ble s0, a2, label389
	sh2add a4, a2, a1
	lw a4, 0(a4)
	addw a3, a3, a4
	addiw a2, a2, 1
	ble s0, a2, label389
	sh2add a4, a2, a1
	lw a4, 0(a4)
	addw a3, a3, a4
	addiw a2, a2, 1
	ble s0, a2, label389
	j label730
label389:
	mv s2, a3
	addiw a0, a0, 1
	ble s0, a0, label60
	ble s0, zero, label74
	j label672
label74:
	addiw a0, a0, 1
	ble s0, a0, label60
	ble s0, zero, label74
	slli a1, a0, 12
	add a1, s1, a1
	mv a4, zero
	mv a3, s2
	addiw a2, zero, 4
	ble s0, a2, label67
	j label66
label730:
	sh2add a4, a2, a1
	lw a4, 0(a4)
	addw a3, a3, a4
	addiw a2, a2, 1
	ble s0, a2, label389
	j label730
label66:
	sh2add a4, a4, a1
	lw a5, 0(a4)
	addw a3, a3, a5
	lw a5, 4(a4)
	addw a3, a3, a5
	lw a5, 8(a4)
	addw a3, a3, a5
	lw a4, 12(a4)
	addw a3, a3, a4
	mv a4, a2
	addiw a2, a2, 4
	ble s0, a2, label67
	j label66
label67:
	addiw a2, a4, 4
	ble s0, a2, label380
label73:
	sh2add a4, a4, a1
	lw a5, 0(a4)
	addw a3, a3, a5
	lw a5, 4(a4)
	addw a3, a3, a5
	lw a5, 8(a4)
	addw a3, a3, a5
	lw a4, 12(a4)
	addw a3, a3, a4
	mv a4, a2
	addiw a2, a2, 4
	ble s0, a2, label380
	j label73
label643:
	slli a0, s5, 12
	add s4, s2, a0
	mv s6, zero
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label8
	j label138
label697:
	slli a0, s4, 12
	add s5, s1, a0
	mv s6, zero
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label114
	j label594
