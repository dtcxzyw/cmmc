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
pcrel827:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel827)
pcrel828:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(pcrel828)
pcrel829:
	auipc a0, %pcrel_hi(C)
	addi s3, a0, %pcrel_lo(pcrel829)
	mv s5, zero
	ble s0, zero, label126
	ble s0, zero, label114
	j label643
label126:
	mv s4, zero
	ble s0, zero, label11
	ble s0, zero, label7
	slli a0, zero, 12
	add s5, s1, a0
	mv s6, zero
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label7
	j label143
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
	j label761
label197:
	mv a2, zero
	ble s0, zero, label201
	slliw a1, zero, 12
	add a1, s1, a1
	ble s0, zero, label77
	mv a4, zero
	addiw a3, zero, 4
	ble s0, a3, label80
	j label715
label201:
	mv a2, zero
	slliw a1, zero, 12
	add a1, s3, a1
	ble s0, zero, label56
	mv a3, zero
	ble s0, zero, label55
	slliw a4, zero, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label39
label716:
	addiw a3, a3, 1
	ble s0, a3, label55
label210:
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label39
	j label661
label55:
	addiw a2, a2, 1
	slliw a1, a2, 12
	add a1, s3, a1
	ble s0, a2, label56
	mv a3, zero
	ble s0, zero, label55
	slliw a4, zero, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label39
	j label716
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
	ble s0, zero, label62
	slli a1, zero, 12
	add a1, s1, a1
	mv a4, zero
	mv a3, zero
	addiw a2, zero, 4
	ble s0, a2, label68
	j label75
label94:
	ble s0, zero, label93
	slliw a4, a3, 12
	add a4, s3, a4
	li t0, 4
	ble s0, t0, label469
	j label744
label469:
	mv t2, zero
	sh2add a5, a2, a5
	lw a5, 0(a5)
	addiw t0, zero, 4
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
	j label747
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
label747:
	sh2add t1, t0, a4
	lw t2, 0(t1)
	sh2add t3, t0, a1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw t0, t0, 1
	ble s0, t0, label93
	j label747
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
label761:
	addiw a3, a3, 1
	ble s0, a3, label91
label449:
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label94
	j label686
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
	j label761
label686:
	addiw a3, a3, 1
	ble s0, a3, label91
	j label449
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
	j label709
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
label709:
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label28
	j label709
label661:
	addiw a3, a3, 1
	ble s0, a3, label55
	j label210
label719:
	sh2add t0, a2, a5
	lw t0, 0(t0)
	li t1, 4
	mv t3, zero
	j label42
label39:
	ble s0, zero, label38
	slliw a4, a3, 12
	add a4, s1, a4
	li t0, 4
	ble s0, t0, label229
	j label719
label38:
	addiw a3, a3, 1
	ble s0, a3, label55
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label39
	addiw a3, a3, 1
	ble s0, a3, label55
	j label210
label49:
	addiw t0, t2, 4
	ble s0, t0, label277
	j label51
label277:
	mv t0, t2
	sh2add t1, t2, a4
	lw t2, 0(t1)
	sh2add t3, t0, a1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw t0, t0, 1
	ble s0, t0, label38
	sh2add t1, t0, a4
	lw t2, 0(t1)
	sh2add t3, t0, a1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw t0, t0, 1
	ble s0, t0, label38
	sh2add t1, t0, a4
	lw t2, 0(t1)
	sh2add t3, t0, a1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw t0, t0, 1
	ble s0, t0, label38
	j label724
label51:
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
	ble s0, t0, label277
	j label51
label724:
	sh2add t1, t0, a4
	lw t2, 0(t1)
	sh2add t3, t0, a1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw t0, t0, 1
	ble s0, t0, label38
	j label724
label42:
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
	ble s0, t2, label45
	mv t3, t1
	mv t1, t2
	j label42
label45:
	sh2add a5, a2, a5
	lw a5, 0(a5)
	mv t2, t1
	addiw t0, t1, 4
	ble s0, t0, label49
	j label54
label229:
	mv t1, zero
	sh2add a5, a2, a5
	lw a5, 0(a5)
	mv t2, zero
	addiw t0, zero, 4
	ble s0, t0, label49
label54:
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
	ble s0, t0, label49
	j label54
label744:
	sh2add t0, a2, a5
	lw t0, 0(t0)
	li t1, 4
	mv t3, zero
	j label107
label80:
	addiw a3, a4, 4
	ble s0, a3, label419
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label419
	j label735
label419:
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
	ble s0, a3, label77
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label77
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label77
label737:
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label77
	j label737
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
	addiw a3, a3, 4
	ble s0, a3, label19
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label19
	j label705
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
	j label172
label735:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label419
	j label735
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
label715:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label80
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label80
label734:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label80
	j label734
label77:
	addiw a2, a2, 1
	ble s0, a2, label201
	slliw a1, a2, 12
	add a1, s1, a1
	ble s0, zero, label77
	mv a4, zero
	addiw a3, zero, 4
	ble s0, a3, label80
	j label715
label172:
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label24
	j label708
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
label708:
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label24
	j label708
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
label594:
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label114
	j label696
label114:
	addiw s5, s5, 1
	ble s0, s5, label126
	ble s0, zero, label114
	slli a0, s5, 12
	add s4, s2, a0
	mv s6, zero
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label114
	j label594
label696:
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label114
label752:
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label114
	j label752
label7:
	addiw s4, s4, 1
	ble s0, s4, label11
	ble s0, zero, label7
	slli a0, s4, 12
	add s5, s1, a0
	mv s6, zero
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label7
label143:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label7
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label7
label700:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label7
	j label700
label68:
	addiw a2, a3, 4
	ble s0, a2, label368
	j label71
label368:
	mv a2, a4
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	ble s0, a3, label390
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	ble s0, a3, label390
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	ble s0, a3, label390
label731:
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	ble s0, a3, label390
	j label731
label390:
	mv s2, a2
	addiw a0, a0, 1
	ble s0, a0, label60
	ble s0, zero, label62
	slli a1, a0, 12
	add a1, s1, a1
	mv a4, a2
	mv a3, zero
	addiw a2, zero, 4
	ble s0, a2, label68
	j label75
label71:
	sh2add a3, a3, a1
	lw a5, 0(a3)
	addw a4, a4, a5
	lw a5, 4(a3)
	addw a4, a4, a5
	lw a5, 8(a3)
	addw a4, a4, a5
	lw a3, 12(a3)
	addw a4, a4, a3
	mv a3, a2
	addiw a2, a2, 4
	ble s0, a2, label368
	j label71
label75:
	sh2add a3, a3, a1
	lw a5, 0(a3)
	addw a4, a4, a5
	lw a5, 4(a3)
	addw a4, a4, a5
	lw a5, 8(a3)
	addw a4, a4, a5
	lw a3, 12(a3)
	addw a4, a4, a3
	mv a3, a2
	addiw a2, a2, 4
	ble s0, a2, label68
	j label75
label62:
	addiw a0, a0, 1
	ble s0, a0, label60
	ble s0, zero, label62
	slli a1, a0, 12
	add a1, s1, a1
	mv a4, s2
	mv a3, zero
	addiw a2, zero, 4
	ble s0, a2, label68
	j label75
label643:
	slli a0, s5, 12
	add s4, s2, a0
	mv s6, zero
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label114
	j label594
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
