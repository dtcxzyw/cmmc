.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
A:
	.zero	4194304
.align 8
B:
	.zero	4194304
.align 8
C:
	.zero	4194304
.text
.p2align 2
.globl main
main:
	addi sp, sp, -112
	sd ra, 0(sp)
	sd s4, 8(sp)
	sd s3, 16(sp)
	sd s5, 24(sp)
	sd s0, 32(sp)
	sd s1, 40(sp)
	sd s6, 48(sp)
	sd s2, 56(sp)
	sd s8, 64(sp)
	sd s9, 72(sp)
	sd s7, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
	li s7, 5
	li s6, 16
	addiw s3, a0, -20
	addiw s4, a0, -4
	mv s9, zero
pcrel762:
	auipc a1, %pcrel_hi(B)
	lui s0, 1
	sd a0, 104(sp)
	addi s1, a1, %pcrel_lo(pcrel762)
pcrel763:
	auipc a0, %pcrel_hi(A)
	addi s5, a0, %pcrel_lo(pcrel763)
	mv s8, s5
pcrel764:
	auipc a0, %pcrel_hi(C)
	addi s2, a0, %pcrel_lo(pcrel764)
	ld t3, 104(sp)
	bgt t3, zero, label139
	j label5
.p2align 2
label535:
	addiw s9, s9, 1
	add s8, s8, s0
	ld t3, 104(sp)
	ble t3, s9, label5
.p2align 2
label139:
	mv s10, s8
	mv s11, zero
.p2align 2
label140:
	jal getint
	addiw a1, s11, 1
	sw a0, 0(s10)
	ld t3, 104(sp)
	ble t3, a1, label535
	addi s10, s10, 4
	mv s11, a1
	j label140
label5:
	mv s8, s1
	mv s9, zero
	ld t3, 104(sp)
	bgt t3, zero, label133
	j label9
.p2align 2
label137:
	addi s10, s10, 4
	mv s11, a1
.p2align 2
label134:
	jal getint
	addiw a1, s11, 1
	sw a0, 0(s10)
	ld t3, 104(sp)
	bgt t3, a1, label137
	addiw s9, s9, 1
	add s8, s8, s0
	ble t3, s9, label9
.p2align 2
label133:
	mv s10, s8
	mv s11, zero
	j label134
label9:
	li a0, 65
	jal _sysy_starttime
	mv a0, zero
	j label10
label685:
	addiw a0, a0, 1
	bge a0, s7, label655
.p2align 2
label10:
	mv a1, s2
	mv a2, zero
	ld t3, 104(sp)
	bgt t3, zero, label15
	mv a1, s1
	mv a3, zero
	j label677
.p2align 2
label517:
	mv t4, t1
	mv t1, t5
.p2align 2
label128:
	sh2add t2, t4, t0
	sh2add t3, t4, a1
	lw t5, 0(t2)
	lw a6, 0(t3)
	mulw a7, a2, a6
	addw t6, t5, a7
	sw t6, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw a6, a2, t5
	addw t6, t4, a6
	sw t6, 4(t2)
	lw t5, 8(t2)
	lw t4, 8(t3)
	mulw t6, a2, t4
	addw a6, t5, t6
	sw a6, 8(t2)
	lw t4, 12(t2)
	lw t5, 12(t3)
	mulw t6, a2, t5
	addiw t5, t1, 4
	addw a6, t4, t6
	sw a6, 12(t2)
	ld t3, 104(sp)
	bgt t3, t5, label517
	sh2add t0, t1, t0
	sh2add t5, t1, a1
	lw t2, 0(t0)
	addiw t1, t1, 1
	lw t3, 0(t5)
	mulw t6, a2, t3
	addw t4, t2, t6
	sw t4, 0(t0)
	ld t3, 104(sp)
	ble t3, t1, label699
.p2align 2
label127:
	addi t0, t0, 4
	lw t2, 0(t0)
	sh2add t5, t1, a1
	addiw t1, t1, 1
	lw t3, 0(t5)
	mulw t6, a2, t3
	addw t4, t2, t6
	sw t4, 0(t0)
	ld t3, 104(sp)
	bgt t3, t1, label127
	add a4, a4, s0
	mv t0, a5
	ble t3, a5, label672
.p2align 2
label118:
	sh2add t1, a3, a4
	addiw a5, t0, 1
	lw a2, 0(t1)
	bne a2, zero, label463
	add a4, a4, s0
	mv t0, a5
	ld t3, 104(sp)
	bgt t3, a5, label118
	addiw a3, a3, 1
	add a1, a1, s0
	ble t3, a3, label695
.p2align 2
label113:
	mv a4, s5
	mv t0, zero
	ld t3, 104(sp)
	bgt t3, zero, label118
	addiw a3, a3, 1
	add a1, a1, s0
	bgt t3, a3, label113
label669:
	mv a1, s1
	mv a2, zero
	ld t3, 104(sp)
	bgt t3, zero, label93
	j label43
.p2align 2
label463:
	ld t3, 104(sp)
	ble t3, zero, label670
	slliw t2, t0, 12
	li t1, 4
	add t0, s2, t2
	ble t3, t1, label472
	mv t4, zero
	j label128
.p2align 2
label446:
	sh2add a3, a4, a1
	addiw a4, a4, 4
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	ble s4, a4, label694
.p2align 2
label106:
	addi a3, a3, 16
.p2align 2
label102:
	sw zero, 0(a3)
	addiw a4, a4, 4
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	bgt s4, a4, label106
	sh2add a3, a4, a1
	addiw a4, a4, 1
	sw zero, 0(a3)
	ld t3, 104(sp)
	ble t3, a4, label667
.p2align 2
label98:
	addi a3, a3, 4
.p2align 2
label94:
	sw zero, 0(a3)
	addiw a4, a4, 1
	ld t3, 104(sp)
	bgt t3, a4, label98
	addiw a2, a2, 1
	add a1, a1, s0
	ble t3, a2, label665
.p2align 2
label93:
	ld t3, 104(sp)
	li t1, 4
	ble t3, t1, label404
	ble s4, s6, label101
	mv a3, a1
	mv a4, zero
.p2align 2
label108:
	sd zero, 0(a3)
	addiw a4, a4, 16
	sd zero, 8(a3)
	sd zero, 16(a3)
	sd zero, 24(a3)
	sd zero, 32(a3)
	sd zero, 40(a3)
	sd zero, 48(a3)
	sd zero, 56(a3)
	ble s3, a4, label446
	addi a3, a3, 64
	j label108
.p2align 2
label192:
	sh2add a3, a4, a1
	addiw a4, a4, 4
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	ble s4, a4, label680
.p2align 2
label29:
	addi a3, a3, 16
	sw zero, 0(a3)
	addiw a4, a4, 4
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	bgt s4, a4, label29
	sh2add a3, a4, a1
	addiw a4, a4, 1
	sw zero, 0(a3)
	ld t3, 104(sp)
	ble t3, a4, label653
.p2align 2
label34:
	addi a3, a3, 4
	sw zero, 0(a3)
	addiw a4, a4, 1
	ld t3, 104(sp)
	bgt t3, a4, label34
	addiw a2, a2, 1
	add a1, a1, s0
	ble t3, a2, label654
.p2align 2
label15:
	ld t3, 104(sp)
	li t1, 4
	ble t3, t1, label16
	ble s4, s6, label172
	mv a3, a1
	mv a4, zero
.p2align 2
label19:
	sd zero, 0(a3)
	addiw a4, a4, 16
	sd zero, 8(a3)
	sd zero, 16(a3)
	sd zero, 24(a3)
	sd zero, 32(a3)
	sd zero, 40(a3)
	sd zero, 48(a3)
	sd zero, 56(a3)
	ble s3, a4, label192
	addi a3, a3, 64
	j label19
.p2align 2
label472:
	lw t2, 0(t0)
	mv t5, a1
	li t1, 1
	lw t3, 0(a1)
	mulw t6, a2, t3
	addw t4, t2, t6
	sw t4, 0(t0)
	ld t3, 104(sp)
	bgt t3, t1, label127
	add a4, a4, s0
	mv t0, a5
	bgt t3, a5, label118
	addiw a3, a3, 1
	add a1, a1, s0
	bgt t3, a3, label113
	j label698
.p2align 2
label699:
	add a4, a4, s0
	mv t0, a5
	ld t3, 104(sp)
	bgt t3, a5, label118
	addiw a3, a3, 1
	add a1, a1, s0
	bgt t3, a3, label113
	j label698
.p2align 2
label16:
	mv a3, a1
	li a4, 1
	sw zero, 0(a1)
	ld t3, 104(sp)
	bgt t3, a4, label34
	addiw a2, a2, 1
	add a1, a1, s0
	bgt t3, a2, label15
	j label654
.p2align 2
label101:
	mv a3, a1
	mv a4, zero
	j label102
.p2align 2
label694:
	sh2add a3, a4, a1
	addiw a4, a4, 1
	sw zero, 0(a3)
	ld t3, 104(sp)
	bgt t3, a4, label98
	addiw a2, a2, 1
	add a1, a1, s0
	bgt t3, a2, label93
	j label665
.p2align 2
label680:
	sh2add a3, a4, a1
	addiw a4, a4, 1
	sw zero, 0(a3)
	ld t3, 104(sp)
	bgt t3, a4, label34
	addiw a2, a2, 1
	add a1, a1, s0
	bgt t3, a2, label15
	j label654
.p2align 2
label172:
	mv a3, a1
	li a4, 4
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	bgt s4, a4, label29
	sh2add a3, a4, a1
	addiw a4, a4, 1
	sw zero, 0(a3)
	ld t3, 104(sp)
	bgt t3, a4, label34
.p2align 2
label653:
	addiw a2, a2, 1
	add a1, a1, s0
	ld t3, 104(sp)
	bgt t3, a2, label15
.p2align 2
label654:
	mv a1, s1
	mv a3, zero
	ld t3, 104(sp)
	bgt t3, zero, label113
label677:
	mv a1, s1
	mv a2, zero
	ld t3, 104(sp)
	bgt t3, zero, label93
	j label43
.p2align 2
label670:
	add a4, a4, s0
	mv t0, a5
	ld t3, 104(sp)
	bgt t3, a5, label118
	addiw a3, a3, 1
	add a1, a1, s0
	bgt t3, a3, label113
	j label669
.p2align 2
label672:
	addiw a3, a3, 1
	add a1, a1, s0
	ld t3, 104(sp)
	bgt t3, a3, label113
label698:
	mv a1, s1
	mv a2, zero
	ld t3, 104(sp)
	bgt t3, zero, label93
	j label43
label655:
	mv s2, zero
	mv a0, zero
	ld t3, 104(sp)
	bgt t3, zero, label74
	j label73
.p2align 2
label388:
	sh2add a2, a1, s1
	addiw a3, a1, 1
	mv a1, a4
	lw a4, 0(a2)
	ld t3, 104(sp)
	addw a1, a1, a4
	ble t3, a3, label691
.p2align 2
label91:
	addi a2, a2, 4
	lw a4, 0(a2)
	addiw a3, a3, 1
	ld t3, 104(sp)
	addw a1, a1, a4
	bgt t3, a3, label91
.p2align 2
label398:
	addiw a0, a0, 1
	add s1, s1, s0
	mv s2, a1
	ld t3, 104(sp)
	ble t3, a0, label73
.p2align 2
label74:
	ld t3, 104(sp)
	li t1, 4
	ble t3, t1, label309
	li a1, 20
	ble t3, a1, label313
	mv a4, zero
	mv a2, s2
.p2align 2
label76:
	sh2add a3, a4, s1
	lw a5, 0(a3)
	lw a4, 4(a3)
	addw t0, a2, a5
	lw a2, 8(a3)
	addw t2, t0, a4
	lw t3, 12(a3)
	addw a5, t2, a2
	sh2add a2, t1, s1
	addw a4, a5, t3
	lw t0, 0(a2)
	lw t2, 4(a2)
	addw a3, a4, t0
	lw t0, 8(a2)
	addw a5, a3, t2
	lw t2, 12(a2)
	addw a4, a5, t0
	lw t0, 16(a2)
	addw a3, a4, t2
	lw t2, 20(a2)
	addw a5, a3, t0
	lw t3, 24(a2)
	addw a4, a5, t2
	lw a5, 28(a2)
	addw t0, a4, t3
	lw t2, 32(a2)
	addw a3, t0, a5
	lw t3, 36(a2)
	addw a4, a3, t2
	lw a3, 40(a2)
	addw a5, a4, t3
	lw t2, 44(a2)
	addiw a4, t1, 12
	addw t0, a5, a3
	ld t3, 104(sp)
	addiw a3, a1, 16
	addw a2, t0, t2
	ble t3, a3, label369
	mv t1, a1
	mv a1, a3
	j label76
.p2align 2
label369:
	mv a3, a2
.p2align 2
label81:
	sh2add a2, a4, s1
	lw t1, 0(a2)
	lw a4, 4(a2)
	addw t0, a3, t1
	lw t1, 8(a2)
	addw a5, t0, a4
	lw t0, 12(a2)
	addw a3, a5, t1
	ld t3, 104(sp)
	addiw a5, a1, 4
	addw a4, a3, t0
	ble t3, a5, label388
	mv a3, a4
	mv a4, a1
	mv a1, a5
	j label81
label309:
	mv a2, s1
	li a3, 1
	lw a4, 0(s1)
	ld t3, 104(sp)
	addw a1, s2, a4
	bgt t3, a3, label91
	j label398
.p2align 2
label667:
	addiw a2, a2, 1
	add a1, a1, s0
	ld t3, 104(sp)
	bgt t3, a2, label93
.p2align 2
label665:
	mv a1, s2
	mv a3, zero
	ld t3, 104(sp)
	bgt t3, zero, label47
label226:
	addiw a0, a0, 1
	blt a0, s7, label10
	j label655
.p2align 2
label658:
	addiw a3, a3, 1
	add a1, a1, s0
	ld t3, 104(sp)
	ble t3, a3, label685
.p2align 2
label47:
	mv a4, s5
	mv t0, zero
	ld t3, 104(sp)
	bgt t3, zero, label52
	addiw a3, a3, 1
	add a1, a1, s0
	bgt t3, a3, label47
label656:
	addiw a0, a0, 1
	blt a0, s7, label10
	j label655
.p2align 2
label53:
	add a4, a4, s0
	mv t0, a5
	ld t3, 104(sp)
	ble t3, a5, label658
.p2align 2
label52:
	sh2add t1, a3, a4
	addiw a5, t0, 1
	lw a2, 0(t1)
	beq a2, zero, label53
	ld t3, 104(sp)
	ble t3, zero, label657
	slliw t2, t0, 12
	li t1, 4
	add t0, s1, t2
	ble t3, t1, label250
	mv t4, zero
.p2align 2
label63:
	sh2add t2, t4, t0
	sh2add t3, t4, a1
	lw t5, 0(t2)
	lw t6, 0(t3)
	mulw a6, a2, t6
	addw a7, t5, a6
	sw a7, 0(t2)
	lw t6, 4(t2)
	lw t4, 4(t3)
	mulw t5, a2, t4
	addw a6, t6, t5
	sw a6, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw a7, a2, t5
	addw a6, t4, a7
	sw a6, 8(t2)
	lw t6, 12(t2)
	lw t5, 12(t3)
	mulw t4, a2, t5
	addiw t5, t1, 4
	addw a6, t6, t4
	sw a6, 12(t2)
	ld t3, 104(sp)
	ble t3, t5, label294
	mv t4, t1
	mv t1, t5
	j label63
.p2align 2
label294:
	sh2add t0, t1, t0
	sh2add t3, t1, a1
	lw t2, 0(t0)
	addiw t1, t1, 1
	lw t5, 0(t3)
	mulw t4, a2, t5
	addw t6, t2, t4
	sw t6, 0(t0)
	ld t3, 104(sp)
	ble t3, t1, label689
.p2align 2
label61:
	addi t0, t0, 4
	lw t2, 0(t0)
	sh2add t3, t1, a1
	addiw t1, t1, 1
	lw t5, 0(t3)
	mulw t4, a2, t5
	addw t6, t2, t4
	sw t6, 0(t0)
	ld t3, 104(sp)
	bgt t3, t1, label61
	add a4, a4, s0
	mv t0, a5
	bgt t3, a5, label52
	addiw a3, a3, 1
	add a1, a1, s0
	bgt t3, a3, label47
label688:
	addiw a0, a0, 1
	blt a0, s7, label10
	j label655
.p2align 2
label250:
	lw t2, 0(t0)
	li t1, 1
	lw t5, 0(a1)
	mulw t4, a2, t5
	addw t6, t2, t4
	sw t6, 0(t0)
	ld t3, 104(sp)
	bgt t3, t1, label61
	add a4, a4, s0
	mv t0, a5
	bgt t3, a5, label52
	addiw a3, a3, 1
	add a1, a1, s0
	bgt t3, a3, label47
	j label688
.p2align 2
label689:
	add a4, a4, s0
	mv t0, a5
	ld t3, 104(sp)
	bgt t3, a5, label52
	addiw a3, a3, 1
	add a1, a1, s0
	bgt t3, a3, label47
	j label688
.p2align 2
label657:
	add a4, a4, s0
	mv t0, a5
	ld t3, 104(sp)
	bgt t3, a5, label52
	addiw a3, a3, 1
	add a1, a1, s0
	bgt t3, a3, label47
	j label656
label73:
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
	ld s5, 24(sp)
	ld s0, 32(sp)
	ld s1, 40(sp)
	ld s6, 48(sp)
	ld s2, 56(sp)
	ld s8, 64(sp)
	ld s9, 72(sp)
	ld s7, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 112
	ret
.p2align 2
label691:
	addiw a0, a0, 1
	add s1, s1, s0
	mv s2, a1
	ld t3, 104(sp)
	bgt t3, a0, label74
	j label73
label695:
	mv a1, s1
	mv a2, zero
	ld t3, 104(sp)
	bgt t3, zero, label93
label43:
	mv a1, s2
	mv a3, zero
	ld t3, 104(sp)
	bgt t3, zero, label47
	j label226
label313:
	li t1, 4
	mv a3, s2
	mv a4, zero
	mv a1, t1
	j label81
.p2align 2
label404:
	mv a3, a1
	mv a4, zero
	j label94
