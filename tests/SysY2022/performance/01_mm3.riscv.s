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
pcrel828:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel828)
pcrel829:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(pcrel829)
pcrel830:
	auipc a0, %pcrel_hi(C)
	addi s3, a0, %pcrel_lo(pcrel830)
	ble s0, zero, label126
	ble s0, zero, label114
	j label643
label126:
	mv s4, zero
	ble s0, zero, label11
	ble s0, zero, label10
	j label644
label11:
	li a0, 65
	jal _sysy_starttime
	mv a0, zero
	mv a2, zero
	ble s0, zero, label148
	slliw a1, zero, 12
	add a1, s3, a1
	ble s0, zero, label28
	j label647
label148:
	mv a2, zero
	slliw a1, zero, 12
	add a1, s1, a1
	ble s0, zero, label197
	mv a3, zero
	ble s0, zero, label33
	slliw a4, zero, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label35
	j label757
label197:
	mv a2, zero
	ble s0, zero, label337
	slliw a1, zero, 12
	add a1, s1, a1
	ble s0, zero, label98
	mv a4, zero
	addiw a3, zero, 4
	ble s0, a3, label101
	j label770
label757:
	addiw a3, a3, 1
	ble s0, a3, label33
	j label200
label33:
	addiw a2, a2, 1
	slliw a1, a2, 12
	add a1, s1, a1
	ble s0, a2, label197
	mv a3, zero
	ble s0, zero, label33
	slliw a4, zero, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label35
	j label757
label200:
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label35
	addiw a3, a3, 1
	ble s0, a3, label33
	j label200
label705:
	sh2add a4, a3, a1
	addiw a3, a3, 1
	sw zero, 0(a4)
	ble s0, a3, label28
	j label705
label28:
	addiw a2, a2, 1
	ble s0, a2, label148
	slliw a1, a2, 12
	add a1, s3, a1
	ble s0, zero, label28
	mv a4, zero
	addiw a3, zero, 4
	ble s0, a3, label19
	j label698
label647:
	mv a4, zero
	addiw a3, zero, 4
	ble s0, a3, label19
label698:
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
	j label701
label770:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	j label99
label337:
	mv a2, zero
	slliw a1, zero, 12
	add a1, s3, a1
	ble s0, zero, label56
	mv a3, zero
	ble s0, zero, label78
	slliw a4, zero, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label81
label720:
	addiw a3, a3, 1
	j label76
label56:
	addiw a0, a0, 1
	li a1, 5
	bge a0, a1, label348
	mv a2, zero
	ble s0, zero, label148
	slliw a1, zero, 12
	add a1, s3, a1
	ble s0, zero, label28
	j label647
label348:
	mv a0, zero
	mv s2, zero
	ble s0, zero, label60
	ble s0, zero, label74
	j label667
label76:
	ble s0, a3, label78
	j label406
label78:
	addiw a2, a2, 1
	slliw a1, a2, 12
	add a1, s3, a1
	ble s0, a2, label56
	mv a3, zero
	ble s0, zero, label78
	slliw a4, zero, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label81
	j label720
label99:
	addiw a3, a4, 4
	ble s0, a3, label101
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label101
	j label738
label80:
	addiw a3, a3, 1
	ble s0, a3, label78
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label81
	addiw a3, a3, 1
	ble s0, a3, label78
	j label406
label81:
	ble s0, zero, label80
	slliw a4, a3, 12
	li t0, 4
	add a4, s1, a4
	ble s0, t0, label426
	j label730
label87:
	sh2add a5, a2, a5
	mv t2, t1
	lw a5, 0(a5)
	addiw t0, t1, 4
	ble s0, t0, label92
label91:
	sh2add t1, t2, a4
	sh2add t2, t2, a1
	lw t3, 0(t1)
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
	ble s0, t0, label92
	j label91
label92:
	addiw t0, t2, 4
	ble s0, t0, label500
	j label94
label500:
	mv t0, t2
	sh2add t1, t2, a4
	sh2add t3, t2, a1
	lw t2, 0(t1)
	addiw t0, t0, 1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	ble s0, t0, label80
	sh2add t1, t0, a4
	sh2add t3, t0, a1
	lw t2, 0(t1)
	addiw t0, t0, 1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	ble s0, t0, label80
	sh2add t1, t0, a4
	sh2add t3, t0, a1
	lw t2, 0(t1)
	addiw t0, t0, 1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	ble s0, t0, label80
label735:
	sh2add t1, t0, a4
	sh2add t3, t0, a1
	lw t2, 0(t1)
	addiw t0, t0, 1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	ble s0, t0, label80
	j label735
label94:
	sh2add t1, t2, a4
	sh2add t2, t2, a1
	lw t3, 0(t1)
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
	ble s0, t0, label500
	j label94
label406:
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label81
	addiw a3, a3, 1
	ble s0, a3, label78
	j label406
label35:
	ble s0, zero, label51
	slliw a4, a3, 12
	li t0, 4
	add a4, s3, a4
	ble s0, t0, label219
	sh2add t0, a2, a5
	li t1, 4
	mv t3, zero
	lw t0, 0(t0)
	j label48
label41:
	addiw t0, t2, 4
	ble s0, t0, label232
	j label45
label232:
	mv t0, t2
	sh2add t1, t2, a4
	sh2add t3, t2, a1
	lw t2, 0(t1)
	addiw t0, t0, 1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	ble s0, t0, label51
	sh2add t1, t0, a4
	sh2add t3, t0, a1
	lw t2, 0(t1)
	addiw t0, t0, 1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	ble s0, t0, label51
	sh2add t1, t0, a4
	sh2add t3, t0, a1
	lw t2, 0(t1)
	addiw t0, t0, 1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	ble s0, t0, label51
	j label715
label51:
	addiw a3, a3, 1
	ble s0, a3, label33
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label35
	addiw a3, a3, 1
	ble s0, a3, label33
	j label200
label715:
	sh2add t1, t0, a4
	sh2add t3, t0, a1
	lw t2, 0(t1)
	addiw t0, t0, 1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	ble s0, t0, label51
	j label715
label45:
	sh2add t1, t2, a4
	sh2add t2, t2, a1
	lw t3, 0(t1)
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
	ble s0, t0, label232
	j label45
label219:
	mv t2, zero
	sh2add a5, a2, a5
	lw a5, 0(a5)
	addiw t0, zero, 4
	ble s0, t0, label41
label46:
	sh2add t1, t2, a4
	sh2add t2, t2, a1
	lw t3, 0(t1)
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
	ble s0, t0, label41
	j label46
label48:
	sh2add t2, t3, a4
	sh2add t3, t3, a1
	lw t4, 0(t2)
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
	ble s0, t2, label331
	mv t3, t1
	mv t1, t2
	j label48
label331:
	mv t2, t1
	sh2add a5, a2, a5
	lw a5, 0(a5)
	addiw t0, t1, 4
	ble s0, t0, label41
	j label46
label426:
	mv t1, zero
	sh2add a5, a2, a5
	mv t2, zero
	lw a5, 0(a5)
	addiw t0, zero, 4
	ble s0, t0, label92
	j label91
label730:
	sh2add t0, a2, a5
	li t1, 4
	mv t3, zero
	lw t0, 0(t0)
label84:
	sh2add t2, t3, a4
	sh2add t3, t3, a1
	lw t4, 0(t2)
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
	ble s0, t2, label87
	mv t3, t1
	mv t1, t2
	j label84
label101:
	addiw a3, a4, 4
	ble s0, a3, label555
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label555
	j label739
label555:
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label105
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label105
	j label740
label105:
	sh2add a4, a3, a1
	addiw a3, a3, 1
	sw zero, 0(a4)
	ble s0, a3, label98
	sh2add a4, a3, a1
	addiw a3, a3, 1
	sw zero, 0(a4)
	ble s0, a3, label98
	sh2add a4, a3, a1
	addiw a3, a3, 1
	sw zero, 0(a4)
	ble s0, a3, label98
label741:
	sh2add a4, a3, a1
	addiw a3, a3, 1
	sw zero, 0(a4)
	ble s0, a3, label98
	j label741
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
	j label702
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
label24:
	sh2add a4, a3, a1
	addiw a3, a3, 1
	sw zero, 0(a4)
	ble s0, a3, label28
	sh2add a4, a3, a1
	addiw a3, a3, 1
	sw zero, 0(a4)
	ble s0, a3, label28
	sh2add a4, a3, a1
	addiw a3, a3, 1
	sw zero, 0(a4)
	ble s0, a3, label28
	j label705
label740:
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label105
	j label740
label739:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label555
	j label739
label738:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label101
	j label738
label98:
	addiw a2, a2, 1
	ble s0, a2, label337
	slliw a1, a2, 12
	add a1, s1, a1
	ble s0, zero, label98
	mv a4, zero
	addiw a3, zero, 4
	ble s0, a3, label101
	j label770
label172:
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label24
	j label704
label701:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label19
	j label701
label702:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label163
	j label702
label704:
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label24
	j label704
label594:
	jal getint
	sh2add a1, s6, s4
	addiw s6, s6, 1
	sw a0, 0(a1)
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
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label114
	j label594
label692:
	jal getint
	sh2add a1, s6, s4
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label114
label748:
	jal getint
	sh2add a1, s6, s4
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label114
	j label748
label644:
	slli a0, s4, 12
	mv s6, zero
	add s5, s1, a0
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label10
label142:
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label10
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label10
label696:
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label10
	j label696
label389:
	mv s2, a2
	addiw a0, a0, 1
	ble s0, a0, label60
	ble s0, zero, label74
	j label667
label74:
	addiw a0, a0, 1
	ble s0, a0, label60
	ble s0, zero, label74
	slli a1, a0, 12
	mv a4, s2
	mv a3, zero
	add a1, s1, a1
	addiw a2, zero, 4
	ble s0, a2, label66
	j label73
label725:
	sh2add a4, a3, a1
	addiw a3, a3, 1
	lw a4, 0(a4)
	addw a2, a2, a4
	ble s0, a3, label389
	j label725
label66:
	addiw a2, a3, 4
	ble s0, a2, label367
	j label69
label367:
	mv a2, a4
	sh2add a4, a3, a1
	addiw a3, a3, 1
	lw a4, 0(a4)
	addw a2, a2, a4
	ble s0, a3, label389
	sh2add a4, a3, a1
	addiw a3, a3, 1
	lw a4, 0(a4)
	addw a2, a2, a4
	ble s0, a3, label389
	sh2add a4, a3, a1
	addiw a3, a3, 1
	lw a4, 0(a4)
	addw a2, a2, a4
	ble s0, a3, label389
	j label725
label667:
	slli a1, a0, 12
	mv a4, s2
	mv a3, zero
	add a1, s1, a1
	addiw a2, zero, 4
	ble s0, a2, label66
label73:
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
	ble s0, a2, label66
	j label73
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
	ble s0, a2, label367
	j label69
label10:
	addiw s4, s4, 1
	ble s0, s4, label11
	ble s0, zero, label10
	slli a0, s4, 12
	mv s6, zero
	add s5, s1, a0
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label10
	j label142
label643:
	slli a0, s5, 12
	mv s6, zero
	add s4, s2, a0
	jal getint
	sh2add a1, s6, s4
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label114
	j label594
label60:
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
