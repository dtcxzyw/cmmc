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
pcrel823:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel823)
pcrel824:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(pcrel824)
pcrel825:
	auipc a0, %pcrel_hi(C)
	addi s3, a0, %pcrel_lo(pcrel825)
	ble s0, zero, label126
	ble s0, zero, label8
	j label643
label126:
	mv s4, zero
	ble s0, zero, label16
	ble s0, zero, label12
	slli a0, zero, 12
	mv s6, zero
	add s5, s1, a0
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label12
	j label157
label16:
	li a0, 65
	jal _sysy_starttime
	mv a0, zero
	mv a2, zero
	ble s0, zero, label162
	slliw a1, zero, 12
	add a1, s3, a1
	ble s0, zero, label33
	j label651
label162:
	mv a2, zero
	slliw a1, zero, 12
	add a1, s1, a1
	ble s0, zero, label211
	mv a3, zero
	ble s0, zero, label96
	slliw a4, zero, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label98
	j label757
label211:
	mv a2, zero
	ble s0, zero, label215
	slliw a1, zero, 12
	add a1, s1, a1
	ble s0, zero, label82
	mv a4, zero
	addiw a3, zero, 4
	ble s0, a3, label85
	j label714
label215:
	mv a2, zero
	slliw a1, zero, 12
	add a1, s3, a1
	ble s0, zero, label40
	mv a3, zero
	ble s0, zero, label62
	slliw a4, zero, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label64
	j label715
label40:
	addiw a0, a0, 1
	li a1, 5
	bge a0, a1, label226
	mv a2, zero
	ble s0, zero, label162
	slliw a1, zero, 12
	add a1, s3, a1
	ble s0, zero, label33
	j label651
label226:
	mv a0, zero
	mv s2, zero
	ble s0, zero, label44
	ble s0, zero, label58
	j label663
label757:
	addiw a3, a3, 1
	ble s0, a3, label96
label463:
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label98
	j label685
label96:
	addiw a2, a2, 1
	slliw a1, a2, 12
	add a1, s1, a1
	ble s0, a2, label211
	mv a3, zero
	ble s0, zero, label96
	slliw a4, zero, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label98
	j label757
label98:
	ble s0, zero, label114
	slliw a4, a3, 12
	li t0, 4
	add a4, s3, a4
	ble s0, t0, label482
	sh2add t0, a2, a5
	li t1, 4
	mv t3, zero
	lw t0, 0(t0)
	j label111
label482:
	mv t2, zero
	sh2add a5, a2, a5
	lw a5, 0(a5)
	addiw t0, zero, 4
	ble s0, t0, label104
	j label109
label104:
	addiw t0, t2, 4
	ble s0, t0, label495
	j label108
label495:
	mv t0, t2
	sh2add t1, t2, a4
	sh2add t3, t2, a1
	lw t2, 0(t1)
	addiw t0, t0, 1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	ble s0, t0, label114
	sh2add t1, t0, a4
	sh2add t3, t0, a1
	lw t2, 0(t1)
	addiw t0, t0, 1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	ble s0, t0, label114
	sh2add t1, t0, a4
	sh2add t3, t0, a1
	lw t2, 0(t1)
	addiw t0, t0, 1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	ble s0, t0, label114
	j label742
label108:
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
	ble s0, t0, label495
	j label108
label114:
	addiw a3, a3, 1
	ble s0, a3, label96
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label98
	addiw a3, a3, 1
	ble s0, a3, label96
	j label463
label742:
	sh2add t1, t0, a4
	sh2add t3, t0, a1
	lw t2, 0(t1)
	addiw t0, t0, 1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	ble s0, t0, label114
	j label742
label109:
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
	ble s0, t0, label104
	j label109
label111:
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
	ble s0, t2, label594
	mv t3, t1
	mv t1, t2
	j label111
label594:
	mv t2, t1
	sh2add a5, a2, a5
	lw a5, 0(a5)
	addiw t0, t1, 4
	ble s0, t0, label104
	j label109
label685:
	addiw a3, a3, 1
	ble s0, a3, label96
	j label463
label25:
	addiw a3, a4, 4
	ble s0, a3, label182
	j label181
label182:
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label29
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label29
	j label707
label29:
	sh2add a4, a3, a1
	addiw a3, a3, 1
	sw zero, 0(a4)
	ble s0, a3, label33
	sh2add a4, a3, a1
	addiw a3, a3, 1
	sw zero, 0(a4)
	ble s0, a3, label33
	sh2add a4, a3, a1
	addiw a3, a3, 1
	sw zero, 0(a4)
	ble s0, a3, label33
	j label708
label33:
	addiw a2, a2, 1
	ble s0, a2, label162
	slliw a1, a2, 12
	add a1, s3, a1
	ble s0, zero, label33
	mv a4, zero
	addiw a3, zero, 4
	ble s0, a3, label25
	j label701
label708:
	sh2add a4, a3, a1
	addiw a3, a3, 1
	sw zero, 0(a4)
	ble s0, a3, label33
	j label708
label715:
	addiw a3, a3, 1
	ble s0, a3, label62
label284:
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label64
	j label670
label62:
	addiw a2, a2, 1
	slliw a1, a2, 12
	add a1, s3, a1
	ble s0, a2, label40
	mv a3, zero
	ble s0, zero, label62
	slliw a4, zero, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label64
	j label715
label670:
	addiw a3, a3, 1
	ble s0, a3, label62
	j label284
label85:
	addiw a3, a4, 4
	ble s0, a3, label433
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label433
	j label731
label433:
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label90
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label90
	j label732
label90:
	sh2add a4, a3, a1
	addiw a3, a3, 1
	sw zero, 0(a4)
	ble s0, a3, label82
	sh2add a4, a3, a1
	addiw a3, a3, 1
	sw zero, 0(a4)
	ble s0, a3, label82
	sh2add a4, a3, a1
	addiw a3, a3, 1
	sw zero, 0(a4)
	ble s0, a3, label82
label735:
	sh2add a4, a3, a1
	addiw a3, a3, 1
	sw zero, 0(a4)
	ble s0, a3, label82
	j label735
label64:
	ble s0, zero, label80
	slliw a4, a3, 12
	li t0, 4
	add a4, s1, a4
	ble s0, t0, label303
	j label672
label726:
	sh2add t1, t0, a4
	sh2add t3, t0, a1
	lw t2, 0(t1)
	addiw t0, t0, 1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	ble s0, t0, label80
	j label726
label80:
	addiw a3, a3, 1
	ble s0, a3, label62
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label64
	addiw a3, a3, 1
	ble s0, a3, label62
	j label284
label672:
	sh2add t0, a2, a5
	li t1, 4
	mv t3, zero
	lw t0, 0(t0)
	j label67
label303:
	mv t1, zero
	sh2add a5, a2, a5
	mv t2, zero
	lw a5, 0(a5)
	addiw t0, zero, 4
	ble s0, t0, label74
	j label79
label74:
	addiw t0, t2, 4
	ble s0, t0, label351
	j label78
label351:
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
	j label726
label78:
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
	ble s0, t0, label351
	j label78
label79:
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
	ble s0, t0, label74
	j label79
label67:
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
	ble s0, t2, label70
	mv t3, t1
	mv t1, t2
	j label67
label70:
	sh2add a5, a2, a5
	mv t2, t1
	lw a5, 0(a5)
	addiw t0, t1, 4
	ble s0, t0, label74
	j label79
label651:
	mv a4, zero
	addiw a3, zero, 4
	ble s0, a3, label25
label701:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label25
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label25
	j label704
label732:
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label90
	j label732
label731:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label433
	j label731
label714:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label85
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label85
label730:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label85
	j label730
label82:
	addiw a2, a2, 1
	ble s0, a2, label215
	slliw a1, a2, 12
	add a1, s1, a1
	ble s0, zero, label82
	mv a4, zero
	addiw a3, zero, 4
	ble s0, a3, label85
	j label714
label704:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label25
	j label704
label181:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label182
label706:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label182
	j label706
label707:
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label29
	j label707
label643:
	slli a0, s5, 12
	mv s6, zero
	add s4, s2, a0
	jal getint
	sh2add a1, s6, s4
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label8
label138:
	jal getint
	sh2add a1, s6, s4
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label8
	jal getint
	sh2add a1, s6, s4
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label8
label695:
	jal getint
	sh2add a1, s6, s4
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label8
	j label695
label157:
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label12
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label12
label699:
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label12
	j label699
label280:
	mv s2, a2
label58:
	addiw a0, a0, 1
	ble s0, a0, label44
	ble s0, zero, label58
	slli a1, a0, 12
	mv a4, s2
	mv a3, zero
	add a1, s1, a1
	addiw a2, zero, 4
	ble s0, a2, label51
	j label50
label258:
	mv a2, a4
	sh2add a4, a3, a1
	addiw a3, a3, 1
	lw a4, 0(a4)
	addw a2, a2, a4
	ble s0, a3, label280
	sh2add a4, a3, a1
	addiw a3, a3, 1
	lw a4, 0(a4)
	addw a2, a2, a4
	ble s0, a3, label280
	sh2add a4, a3, a1
	addiw a3, a3, 1
	lw a4, 0(a4)
	addw a2, a2, a4
	ble s0, a3, label280
	j label720
label54:
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
	ble s0, a2, label258
	j label54
label720:
	sh2add a4, a3, a1
	addiw a3, a3, 1
	lw a4, 0(a4)
	addw a2, a2, a4
	ble s0, a3, label280
	j label720
label50:
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
	ble s0, a2, label51
	j label50
label51:
	addiw a2, a3, 4
	ble s0, a2, label258
	j label54
label8:
	addiw s5, s5, 1
	ble s0, s5, label126
	ble s0, zero, label8
	slli a0, s5, 12
	mv s6, zero
	add s4, s2, a0
	jal getint
	sh2add a1, s6, s4
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label8
	j label138
label12:
	addiw s4, s4, 1
	ble s0, s4, label16
	ble s0, zero, label12
	slli a0, s4, 12
	mv s6, zero
	add s5, s1, a0
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label12
	j label157
label663:
	slli a1, a0, 12
	mv a4, s2
	mv a3, zero
	add a1, s1, a1
	addiw a2, zero, 4
	ble s0, a2, label51
	j label50
label44:
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
