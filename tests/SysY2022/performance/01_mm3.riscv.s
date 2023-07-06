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
pcrel825:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel825)
pcrel826:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(pcrel826)
pcrel827:
	auipc a0, %pcrel_hi(C)
	addi s3, a0, %pcrel_lo(pcrel827)
	ble s0, zero, label126
	ble s0, zero, label8
	j label643
label126:
	mv s4, zero
	ble s0, zero, label16
	ble s0, zero, label15
	slli a0, zero, 12
	mv s6, zero
	add s5, s1, a0
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label15
	j label156
label16:
	li a0, 65
	jal _sysy_starttime
	mv a0, zero
	mv a2, zero
	ble s0, zero, label162
	slliw a1, zero, 12
	add a1, s3, a1
	ble s0, zero, label33
	j label650
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
label762:
	addiw a3, a3, 1
	ble s0, a3, label96
	j label463
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
	j label762
label463:
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label98
	addiw a3, a3, 1
	ble s0, a3, label96
	j label463
label650:
	mv a4, zero
	addiw a3, zero, 4
	ble s0, a3, label25
label705:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label25
	j label171
label211:
	mv a2, zero
	ble s0, zero, label215
	slliw a1, zero, 12
	add a1, s1, a1
	ble s0, zero, label39
	mv a4, zero
	addiw a3, zero, 4
	ble s0, a3, label42
	j label718
label215:
	mv a2, zero
	slliw a1, zero, 12
	add a1, s3, a1
	ble s0, zero, label53
	mv a3, zero
	ble s0, zero, label75
	slliw a4, zero, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label78
	j label775
label53:
	addiw a0, a0, 1
	li a1, 5
	bge a0, a1, label269
	mv a2, zero
	ble s0, zero, label162
	slliw a1, zero, 12
	add a1, s3, a1
	ble s0, zero, label33
	j label650
label269:
	mv a0, zero
	mv s2, zero
	ble s0, zero, label57
	ble s0, zero, label59
	slli a1, zero, 12
	mv a4, zero
	mv a3, zero
	add a1, s1, a1
	addiw a2, zero, 4
	ble s0, a2, label66
	j label65
label78:
	ble s0, zero, label77
	slliw a4, a3, 12
	li t0, 4
	add a4, s1, a4
	ble s0, t0, label347
	j label737
label77:
	addiw a3, a3, 1
	ble s0, a3, label75
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label78
	addiw a3, a3, 1
	ble s0, a3, label75
	j label327
label88:
	addiw t0, t2, 4
	ble s0, t0, label395
	j label90
label395:
	mv t0, t2
	sh2add t1, t2, a4
	sh2add t3, t2, a1
	lw t2, 0(t1)
	addiw t0, t0, 1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	ble s0, t0, label77
	sh2add t1, t0, a4
	sh2add t3, t0, a1
	lw t2, 0(t1)
	addiw t0, t0, 1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	ble s0, t0, label77
	sh2add t1, t0, a4
	sh2add t3, t0, a1
	lw t2, 0(t1)
	addiw t0, t0, 1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	ble s0, t0, label77
	j label742
label90:
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
	ble s0, t0, label395
	j label90
label742:
	sh2add t1, t0, a4
	sh2add t3, t0, a1
	lw t2, 0(t1)
	addiw t0, t0, 1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	ble s0, t0, label77
	j label742
label25:
	addiw a3, a4, 4
	ble s0, a3, label182
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label182
	j label710
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
	j label711
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
	j label712
label33:
	addiw a2, a2, 1
	ble s0, a2, label162
	slliw a1, a2, 12
	add a1, s3, a1
	ble s0, zero, label33
	mv a4, zero
	addiw a3, zero, 4
	ble s0, a3, label25
	j label705
label712:
	sh2add a4, a3, a1
	addiw a3, a3, 1
	sw zero, 0(a4)
	ble s0, a3, label33
	j label712
label327:
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label78
	j label677
label775:
	addiw a3, a3, 1
	ble s0, a3, label75
	j label327
label75:
	addiw a2, a2, 1
	slliw a1, a2, 12
	add a1, s3, a1
	ble s0, a2, label53
	mv a3, zero
	ble s0, zero, label75
	slliw a4, zero, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label78
	j label775
label677:
	addiw a3, a3, 1
	ble s0, a3, label75
	j label327
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
	ble s0, t0, label105
label104:
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
	ble s0, t0, label105
	j label104
label105:
	addiw t0, t2, 4
	ble s0, t0, label521
	j label109
label521:
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
	j label747
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
label747:
	sh2add t1, t0, a4
	sh2add t3, t0, a1
	lw t2, 0(t1)
	addiw t0, t0, 1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	ble s0, t0, label114
	j label747
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
	ble s0, t0, label521
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
	ble s0, t0, label105
	j label104
label737:
	sh2add t0, a2, a5
	li t1, 4
	mv t3, zero
	lw t0, 0(t0)
	j label81
label347:
	mv t1, zero
	sh2add a5, a2, a5
	mv t2, zero
	lw a5, 0(a5)
	addiw t0, zero, 4
	ble s0, t0, label88
label93:
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
	ble s0, t0, label88
	j label93
label81:
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
	ble s0, t2, label84
	mv t3, t1
	mv t1, t2
	j label81
label84:
	sh2add a5, a2, a5
	mv t2, t1
	lw a5, 0(a5)
	addiw t0, t1, 4
	ble s0, t0, label88
	j label93
label42:
	addiw a3, a4, 4
	ble s0, a3, label231
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label231
	j label722
label231:
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label46
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label46
	j label723
label46:
	sh2add a4, a3, a1
	addiw a3, a3, 1
	sw zero, 0(a4)
	ble s0, a3, label39
	sh2add a4, a3, a1
	addiw a3, a3, 1
	sw zero, 0(a4)
	ble s0, a3, label39
	sh2add a4, a3, a1
	addiw a3, a3, 1
	sw zero, 0(a4)
	ble s0, a3, label39
label724:
	sh2add a4, a3, a1
	addiw a3, a3, 1
	sw zero, 0(a4)
	ble s0, a3, label39
	j label724
label723:
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label46
	j label723
label722:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label231
	j label722
label718:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	j label40
label39:
	addiw a2, a2, 1
	ble s0, a2, label215
	slliw a1, a2, 12
	add a1, s1, a1
	ble s0, zero, label39
	mv a4, zero
	addiw a3, zero, 4
	ble s0, a3, label42
	j label718
label40:
	addiw a3, a4, 4
	ble s0, a3, label42
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label42
label721:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label42
	j label721
label171:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label25
	j label708
label710:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label182
	j label710
label711:
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label29
	j label711
label708:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label25
	j label708
label138:
	jal getint
	sh2add a1, s6, s4
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label8
	j label645
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
label645:
	jal getint
	sh2add a1, s6, s4
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label8
label699:
	jal getint
	sh2add a1, s6, s4
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label8
	j label699
label156:
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label15
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label15
label703:
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label15
	j label703
label65:
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
	j label65
label302:
	mv a2, a4
	sh2add a4, a3, a1
	addiw a3, a3, 1
	lw a4, 0(a4)
	addw a2, a2, a4
	ble s0, a3, label311
	sh2add a4, a3, a1
	addiw a3, a3, 1
	lw a4, 0(a4)
	addw a2, a2, a4
	ble s0, a3, label311
	sh2add a4, a3, a1
	addiw a3, a3, 1
	lw a4, 0(a4)
	addw a2, a2, a4
	ble s0, a3, label311
	j label733
label311:
	mv s2, a2
	addiw a0, a0, 1
	ble s0, a0, label57
	ble s0, zero, label59
	slli a1, a0, 12
	mv a4, a2
	mv a3, zero
	add a1, s1, a1
	addiw a2, zero, 4
	ble s0, a2, label66
	j label65
label733:
	sh2add a4, a3, a1
	addiw a3, a3, 1
	lw a4, 0(a4)
	addw a2, a2, a4
	ble s0, a3, label311
	j label733
label72:
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
	ble s0, a2, label302
	j label72
label66:
	addiw a2, a3, 4
	ble s0, a2, label302
	j label72
label15:
	addiw s4, s4, 1
	ble s0, s4, label16
	ble s0, zero, label15
	slli a0, s4, 12
	mv s6, zero
	add s5, s1, a0
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label15
	j label156
label59:
	addiw a0, a0, 1
	ble s0, a0, label57
	ble s0, zero, label59
	slli a1, a0, 12
	mv a4, s2
	mv a3, zero
	add a1, s1, a1
	addiw a2, zero, 4
	ble s0, a2, label66
	j label65
label643:
	slli a0, s5, 12
	mv s6, zero
	add s4, s2, a0
	jal getint
	sh2add a1, s6, s4
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label8
	j label138
label57:
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
