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
	mv s5, zero
	mv s0, a0
pcrel821:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel821)
pcrel822:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(pcrel822)
pcrel823:
	auipc a0, %pcrel_hi(C)
	addi s3, a0, %pcrel_lo(pcrel823)
	ble s0, zero, label126
	ble s0, zero, label114
	j label643
label126:
	mv s4, zero
	ble s0, zero, label6
	ble s0, zero, label106
	slli a0, zero, 12
	mv s6, zero
	add s5, s1, a0
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label106
	j label581
label6:
	li a0, 65
	jal _sysy_starttime
	mv a0, zero
	mv a2, zero
	ble s0, zero, label134
	slliw a1, zero, 12
	add a1, s3, a1
	ble s0, zero, label23
label645:
	mv a4, zero
	addiw a3, zero, 4
	ble s0, a3, label14
label694:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	j label12
label134:
	mv a2, zero
	slliw a1, zero, 12
	add a1, s1, a1
	ble s0, zero, label183
	mv a3, zero
	ble s0, zero, label86
	slliw a4, zero, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label88
	j label750
label12:
	addiw a3, a4, 4
	ble s0, a3, label14
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label14
	j label697
label183:
	mv a2, zero
	ble s0, zero, label187
	slliw a1, zero, 12
	add a1, s1, a1
	ble s0, zero, label83
	j label655
label187:
	mv a2, zero
	slliw a1, zero, 12
	add a1, s3, a1
	ble s0, zero, label51
	mv a3, zero
	ble s0, zero, label32
	slliw a4, zero, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label35
label708:
	addiw a3, a3, 1
	ble s0, a3, label32
label196:
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label35
	j label658
label32:
	addiw a2, a2, 1
	slliw a1, a2, 12
	add a1, s3, a1
	ble s0, a2, label51
	mv a3, zero
	ble s0, zero, label32
	slliw a4, zero, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label35
	j label708
label51:
	addiw a0, a0, 1
	li a1, 5
	bge a0, a1, label334
	mv a2, zero
	ble s0, zero, label134
	slliw a1, zero, 12
	add a1, s3, a1
	ble s0, zero, label23
	j label645
label334:
	mv a0, zero
	mv s2, zero
	ble s0, zero, label55
	ble s0, zero, label57
	slli a1, zero, 12
	mv a4, zero
	mv a3, zero
	add a1, s1, a1
	addiw a2, zero, 4
	ble s0, a2, label63
	j label70
label55:
	li a0, 84
	jal _sysy_stoptime
	mv a0, s2
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s6, 24(sp)
	ld s1, 32(sp)
	ld s2, 40(sp)
	ld s5, 48(sp)
	ld s0, 56(sp)
	addi sp, sp, 64
	ret
label88:
	ble s0, zero, label104
	slliw a4, a3, 12
	li t0, 4
	add a4, s3, a4
	ble s0, t0, label454
	sh2add t0, a2, a5
	lw t0, 0(t0)
	mv t3, zero
	li t1, 4
	j label101
label454:
	mv t2, zero
	sh2add a5, a2, a5
	lw a5, 0(a5)
	addiw t0, zero, 4
	ble s0, t0, label94
	j label99
label94:
	addiw t0, t2, 4
	ble s0, t0, label467
	j label98
label467:
	mv t0, t2
	sh2add t1, t2, a4
	lw t2, 0(t1)
	sh2add t3, t0, a1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw t0, t0, 1
	ble s0, t0, label104
	sh2add t1, t0, a4
	lw t2, 0(t1)
	sh2add t3, t0, a1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw t0, t0, 1
	ble s0, t0, label104
	sh2add t1, t0, a4
	lw t2, 0(t1)
	sh2add t3, t0, a1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw t0, t0, 1
	ble s0, t0, label104
	j label736
label104:
	addiw a3, a3, 1
	ble s0, a3, label86
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label88
	addiw a3, a3, 1
	ble s0, a3, label86
	j label435
label736:
	sh2add t1, t0, a4
	lw t2, 0(t1)
	sh2add t3, t0, a1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw t0, t0, 1
	ble s0, t0, label104
	j label736
label99:
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
	ble s0, t0, label94
	j label99
label101:
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
	ble s0, t2, label566
	mv t3, t1
	mv t1, t2
	j label101
label566:
	mv t2, t1
	sh2add a5, a2, a5
	lw a5, 0(a5)
	addiw t0, t1, 4
	ble s0, t0, label94
	j label99
label98:
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
	ble s0, t0, label467
	j label98
label750:
	addiw a3, a3, 1
	ble s0, a3, label86
label435:
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label88
	j label682
label86:
	addiw a2, a2, 1
	slliw a1, a2, 12
	add a1, s1, a1
	ble s0, a2, label183
	mv a3, zero
	ble s0, zero, label86
	slliw a4, zero, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label88
	j label750
label682:
	addiw a3, a3, 1
	ble s0, a3, label86
	j label435
label707:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label74
	j label398
label727:
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label83
	j label727
label83:
	addiw a2, a2, 1
	ble s0, a2, label187
	slliw a1, a2, 12
	add a1, s1, a1
	ble s0, zero, label83
	mv a4, zero
	addiw a3, zero, 4
	ble s0, a3, label74
	j label707
label19:
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label23
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label23
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label23
	j label701
label23:
	addiw a2, a2, 1
	ble s0, a2, label134
	slliw a1, a2, 12
	add a1, s3, a1
	ble s0, zero, label23
	mv a4, zero
	addiw a3, zero, 4
	ble s0, a3, label14
	j label694
label701:
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label23
	j label701
label658:
	addiw a3, a3, 1
	ble s0, a3, label32
	j label196
label35:
	ble s0, zero, label34
	slliw a4, a3, 12
	li t0, 4
	add a4, s1, a4
	ble s0, t0, label216
	j label711
label34:
	addiw a3, a3, 1
	ble s0, a3, label32
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label35
	addiw a3, a3, 1
	ble s0, a3, label32
	j label196
label255:
	mv t0, t2
	sh2add t1, t2, a4
	lw t2, 0(t1)
	sh2add t3, t0, a1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw t0, t0, 1
	ble s0, t0, label34
	sh2add t1, t0, a4
	lw t2, 0(t1)
	sh2add t3, t0, a1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw t0, t0, 1
	ble s0, t0, label34
	sh2add t1, t0, a4
	lw t2, 0(t1)
	sh2add t3, t0, a1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw t0, t0, 1
	ble s0, t0, label34
label715:
	sh2add t1, t0, a4
	lw t2, 0(t1)
	sh2add t3, t0, a1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw t0, t0, 1
	ble s0, t0, label34
	j label715
label216:
	mv t2, zero
	sh2add a5, a2, a5
	lw a5, 0(a5)
	addiw t0, zero, 4
	ble s0, t0, label42
	j label41
label42:
	addiw t0, t2, 4
	ble s0, t0, label255
label44:
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
	ble s0, t0, label255
	j label44
label41:
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
	ble s0, t0, label42
	j label41
label711:
	sh2add t0, a2, a5
	lw t0, 0(t0)
	mv t3, zero
	li t1, 4
label48:
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
	ble s0, t2, label328
	mv t3, t1
	mv t1, t2
	j label48
label328:
	mv t2, t1
	sh2add a5, a2, a5
	lw a5, 0(a5)
	addiw t0, t1, 4
	ble s0, t0, label42
	j label41
label74:
	addiw a3, a4, 4
	ble s0, a3, label404
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label404
	j label725
label404:
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label78
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label78
	j label726
label78:
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label83
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label83
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label83
	j label727
label655:
	mv a4, zero
	addiw a3, zero, 4
	ble s0, a3, label74
	j label707
label14:
	addiw a3, a4, 4
	ble s0, a3, label149
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label149
	j label698
label149:
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label19
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label19
	j label158
label725:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label404
	j label725
label726:
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label78
	j label726
label398:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label74
label724:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label74
	j label724
label158:
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label19
	j label700
label697:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label14
	j label697
label700:
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label19
	j label700
label698:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label149
	j label698
label594:
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label114
	j label692
label114:
	addiw s5, s5, 1
	ble s0, s5, label126
	ble s0, zero, label114
	slli a0, s5, 12
	mv s6, zero
	add s4, s2, a0
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label114
	j label594
label692:
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label114
label746:
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label114
	j label746
label581:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label106
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label106
label742:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label106
	j label742
label63:
	addiw a2, a3, 4
	ble s0, a2, label354
	j label69
label354:
	mv a2, a4
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addiw a3, a3, 1
	addw a2, a2, a4
	ble s0, a3, label363
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addiw a3, a3, 1
	addw a2, a2, a4
	ble s0, a3, label363
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addiw a3, a3, 1
	addw a2, a2, a4
	ble s0, a3, label363
	j label721
label363:
	mv s2, a2
	addiw a0, a0, 1
	ble s0, a0, label55
	ble s0, zero, label57
	slli a1, a0, 12
	mv a4, a2
	mv a3, zero
	add a1, s1, a1
	addiw a2, zero, 4
	ble s0, a2, label63
label70:
	sh2add a3, a3, a1
	lw a5, 0(a3)
	addw a4, a4, a5
	lw a5, 4(a3)
	addw a4, a4, a5
	lw a5, 8(a3)
	lw a3, 12(a3)
	addw a4, a4, a5
	addw a4, a4, a3
	mv a3, a2
	addiw a2, a2, 4
	ble s0, a2, label63
	j label70
label721:
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addiw a3, a3, 1
	addw a2, a2, a4
	ble s0, a3, label363
	j label721
label69:
	sh2add a3, a3, a1
	lw a5, 0(a3)
	addw a4, a4, a5
	lw a5, 4(a3)
	addw a4, a4, a5
	lw a5, 8(a3)
	lw a3, 12(a3)
	addw a4, a4, a5
	addw a4, a4, a3
	mv a3, a2
	addiw a2, a2, 4
	ble s0, a2, label354
	j label69
label106:
	addiw s4, s4, 1
	ble s0, s4, label6
	ble s0, zero, label106
	slli a0, s4, 12
	mv s6, zero
	add s5, s1, a0
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label106
	j label581
label57:
	addiw a0, a0, 1
	ble s0, a0, label55
	ble s0, zero, label57
	slli a1, a0, 12
	mv a4, s2
	mv a3, zero
	add a1, s1, a1
	addiw a2, zero, 4
	ble s0, a2, label63
	j label70
label643:
	slli a0, s5, 12
	mv s6, zero
	add s4, s2, a0
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label114
	j label594
