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
	addi sp, sp, -56
	sd s0, 48(sp)
	sd s5, 40(sp)
	sd s2, 32(sp)
	sd s1, 24(sp)
	sd s4, 16(sp)
	sd s3, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s4, zero
	mv s0, a0
pcrel593:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel593)
pcrel594:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(pcrel594)
	ble s0, zero, label92
	j label407
label92:
	mv s3, zero
	ble s0, zero, label11
	j label408
label11:
	li a0, 65
	jal _sysy_starttime
pcrel595:
	auipc a1, %pcrel_hi(C)
	addi a0, a1, %pcrel_lo(pcrel595)
	mv a1, zero
	mv a2, zero
	ble s0, zero, label116
	mv a4, zero
	mv a5, zero
	mv a3, a0
	li a4, 4
	ble s0, a4, label22
	mv a5, a0
	sw zero, 0(a0)
	sw zero, 4(a0)
	sw zero, 8(a0)
	sw zero, 12(a0)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label22
	j label531
label116:
	mv a3, zero
	mv a4, zero
	mv a2, s1
	ble s0, zero, label145
	mv a5, zero
	mv t1, s2
	mv t0, s2
	lw a5, 0(s2)
	bne a5, zero, label30
	li a4, 1
	ble s0, a4, label37
	slliw a5, a4, 12
	add t1, s2, a5
	mv t0, t1
	lw a5, 0(t1)
	bne a5, zero, label30
	j label418
label145:
	mv a2, zero
	ble s0, zero, label217
	mv a4, zero
	mv a5, zero
	mv a3, s1
	li a4, 4
	ble s0, a4, label75
	mv a5, s1
	sw zero, 0(s1)
	sw zero, 4(s1)
	sw zero, 8(s1)
	sw zero, 12(s1)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label75
	j label564
label418:
	addiw a4, a4, 1
	ble s0, a4, label37
	j label482
label37:
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, s1, a4
	ble s0, a3, label145
	mv a4, zero
	ble s0, zero, label37
	mv a5, zero
	mv t1, s2
	sh2add t0, a3, s2
	lw a5, 0(t0)
	bne a5, zero, label30
	li a4, 1
	ble s0, a4, label37
	slliw a5, a4, 12
	add t1, s2, a5
	sh2add t0, a3, t1
	lw a5, 0(t0)
	bne a5, zero, label30
	addiw a4, a4, 1
	ble s0, a4, label37
	j label482
label511:
	addiw a4, a4, 1
	ble s0, a4, label37
	slliw a5, a4, 12
	add t1, s2, a5
	sh2add t0, a3, t1
	lw a5, 0(t0)
	bne a5, zero, label30
	j label511
label452:
	li t1, 4
	mv t3, zero
	j label32
label30:
	ble s0, zero, label29
	slliw t1, a4, 12
	li t2, 4
	add t0, a0, t1
	ble s0, t2, label167
	j label452
label32:
	sh2add t2, t3, t0
	sh2add t3, t3, a2
	lw t4, 0(t2)
	lw t6, 0(t3)
	mulw t5, a5, t6
	addw a6, t4, t5
	sw a6, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw a6, a5, t5
	addw t6, t4, a6
	sw t6, 4(t2)
	lw t4, 8(t2)
	lw a6, 8(t3)
	mulw t6, a5, a6
	addw t5, t4, t6
	sw t5, 8(t2)
	lw t4, 12(t2)
	lw t3, 12(t3)
	mulw t5, a5, t3
	addw t4, t4, t5
	sw t4, 12(t2)
	addiw t2, t1, 4
	ble s0, t2, label35
	mv t3, t1
	mv t1, t2
	j label32
label29:
	addiw a4, a4, 1
	ble s0, a4, label37
	slliw a5, a4, 12
	add t1, s2, a5
	sh2add t0, a3, t1
	lw a5, 0(t0)
	bne a5, zero, label30
	addiw a4, a4, 1
	ble s0, a4, label37
	slliw a5, a4, 12
	add t1, s2, a5
	sh2add t0, a3, t1
	lw a5, 0(t0)
	bne a5, zero, label30
	addiw a4, a4, 1
	ble s0, a4, label37
	slliw a5, a4, 12
	add t1, s2, a5
	sh2add t0, a3, t1
	lw a5, 0(t0)
	bne a5, zero, label30
	j label511
label167:
	mv t1, zero
	mv t2, t0
	mv t5, a2
	lw t3, 0(t0)
	li t1, 1
	lw t6, 0(a2)
	mulw t4, a5, t6
	addw t3, t3, t4
	sw t3, 0(t0)
	ble s0, t1, label29
	sh2add t2, t1, t0
	sh2add t5, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t6, 0(t5)
	mulw t4, a5, t6
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label29
	sh2add t2, t1, t0
	sh2add t5, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t6, 0(t5)
	mulw t4, a5, t6
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label29
	sh2add t2, t1, t0
	sh2add t5, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t6, 0(t5)
	mulw t4, a5, t6
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label29
	sh2add t2, t1, t0
	sh2add t5, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t6, 0(t5)
	mulw t4, a5, t6
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label29
	sh2add t2, t1, t0
	sh2add t5, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t6, 0(t5)
	mulw t4, a5, t6
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label29
label35:
	sh2add t2, t1, t0
	sh2add t5, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t6, 0(t5)
	mulw t4, a5, t6
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label29
	j label35
label217:
	mv a3, zero
	mv a4, zero
	mv a2, a0
	ble s0, zero, label42
	mv a5, zero
	mv t0, s2
	mv t1, s2
	lw a5, 0(s2)
	bne a5, zero, label61
	li a4, 1
	ble s0, a4, label69
	slliw a5, a4, 12
	add t0, s2, a5
	mv t1, t0
	lw a5, 0(t0)
	bne a5, zero, label61
	j label547
label42:
	addiw a1, a1, 1
	li a2, 5
	bge a1, a2, label228
	mv a2, zero
	ble s0, zero, label116
	mv a4, zero
	mv a5, zero
	mv a3, a0
	li a4, 4
	ble s0, a4, label22
	mv a5, a0
	sw zero, 0(a0)
	sw zero, 4(a0)
	sw zero, 8(a0)
	sw zero, 12(a0)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label22
	j label531
label228:
	mv s2, zero
	mv a0, zero
	ble s0, zero, label46
	mv a2, zero
	mv a3, zero
	mv a4, zero
	mv a1, s1
	li a2, 4
	ble s0, a2, label53
	j label52
label46:
	li a0, 84
	jal _sysy_stoptime
	mv a0, s2
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s3, 8(sp)
	ld s4, 16(sp)
	ld s1, 24(sp)
	ld s2, 32(sp)
	ld s5, 40(sp)
	ld s0, 48(sp)
	addi sp, sp, 56
	ret
label52:
	sh2add a3, a3, a1
	lw t1, 0(a3)
	lw t0, 4(a3)
	addw a5, a4, t1
	lw t1, 8(a3)
	addw a4, a5, t0
	lw t0, 12(a3)
	addw a5, a4, t1
	mv a3, a2
	addw a4, a5, t0
	addiw a2, a2, 4
	ble s0, a2, label53
	j label52
label547:
	addiw a4, a4, 1
	ble s0, a4, label69
label496:
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label61
	j label523
label69:
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, a0, a4
	ble s0, a3, label42
	mv a4, zero
	ble s0, zero, label69
	mv a5, zero
	mv t0, s2
	sh2add t1, a3, s2
	lw a5, 0(t1)
	bne a5, zero, label61
	li a4, 1
	ble s0, a4, label69
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label61
	addiw a4, a4, 1
	ble s0, a4, label69
	j label496
label523:
	addiw a4, a4, 1
	ble s0, a4, label69
	j label550
label68:
	addiw a4, a4, 1
	ble s0, a4, label69
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label61
	addiw a4, a4, 1
	ble s0, a4, label69
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label61
	addiw a4, a4, 1
	ble s0, a4, label69
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label61
	j label523
label550:
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label61
	j label523
label482:
	slliw a5, a4, 12
	add t1, s2, a5
	sh2add t0, a3, t1
	lw a5, 0(t0)
	bne a5, zero, label30
	j label511
label61:
	ble s0, zero, label68
	slliw t1, a4, 12
	li t2, 4
	add t0, s1, t1
	ble s0, t2, label286
	li t1, 4
	mv t3, zero
	j label63
label286:
	mv t1, zero
	mv t2, t0
	mv t6, a2
	lw t3, 0(t0)
	li t1, 1
	lw t5, 0(a2)
	mulw t4, a5, t5
	addw t3, t3, t4
	sw t3, 0(t0)
	ble s0, t1, label68
	sh2add t2, t1, t0
	sh2add t6, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t5, 0(t6)
	mulw t4, a5, t5
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label68
	sh2add t2, t1, t0
	sh2add t6, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t5, 0(t6)
	mulw t4, a5, t5
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label68
	sh2add t2, t1, t0
	sh2add t6, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t5, 0(t6)
	mulw t4, a5, t5
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label68
	sh2add t2, t1, t0
	sh2add t6, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t5, 0(t6)
	mulw t4, a5, t5
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label68
	sh2add t2, t1, t0
	sh2add t6, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t5, 0(t6)
	mulw t4, a5, t5
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label68
	j label66
label63:
	sh2add t2, t3, t0
	sh2add t3, t3, a2
	lw t4, 0(t2)
	lw t5, 0(t3)
	mulw t6, a5, t5
	addw a6, t4, t6
	sw a6, 0(t2)
	lw t4, 4(t2)
	lw t6, 4(t3)
	mulw t5, a5, t6
	addw a6, t4, t5
	sw a6, 4(t2)
	lw t4, 8(t2)
	lw a6, 8(t3)
	mulw t6, a5, a6
	addw t5, t4, t6
	sw t5, 8(t2)
	lw t4, 12(t2)
	lw t6, 12(t3)
	mulw t5, a5, t6
	addw t3, t4, t5
	sw t3, 12(t2)
	addiw t2, t1, 4
	ble s0, t2, label66
	mv t3, t1
	mv t1, t2
	j label63
label66:
	sh2add t2, t1, t0
	sh2add t6, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t5, 0(t6)
	mulw t4, a5, t5
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label68
	j label66
label564:
	sh2add a5, a5, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label75
	j label564
label531:
	sh2add a5, a5, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label22
	j label531
label71:
	addiw a2, a2, 1
	ble s0, a2, label217
	ble s0, zero, label71
	slliw a4, a2, 12
	mv a5, zero
	add a3, s1, a4
	li a4, 4
	ble s0, a4, label75
	mv a5, a3
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label75
	j label564
label17:
	addiw a2, a2, 1
	ble s0, a2, label116
	ble s0, zero, label17
	slliw a4, a2, 12
	mv a5, zero
	add a3, a0, a4
	li a4, 4
	ble s0, a4, label22
	mv a5, a3
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label22
	j label531
label75:
	sh2add a4, a5, a3
	addiw a5, a5, 1
	sw zero, 0(a4)
	ble s0, a5, label71
	j label75
label22:
	sh2add a4, a5, a3
	addiw a5, a5, 1
	sw zero, 0(a4)
	ble s0, a5, label17
	j label22
label53:
	sh2add a5, a3, a1
	addiw a3, a3, 1
	lw a2, 0(a5)
	addw a4, a4, a2
	ble s0, a3, label264
	j label53
label264:
	mv s2, a4
label56:
	addiw a0, a0, 1
	ble s0, a0, label46
	ble s0, zero, label56
	slli a2, a0, 12
	mv a3, zero
	mv a4, s2
	add a1, s1, a2
	li a2, 4
	ble s0, a2, label53
	j label52
label407:
	slli a0, s4, 12
	mv s5, zero
	add s3, s2, a0
	j label80
label82:
	addiw s4, s4, 1
	ble s0, s4, label92
	ble s0, zero, label82
	j label407
label80:
	jal getint
	sh2add a1, s5, s3
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label82
	j label80
label10:
	addiw s3, s3, 1
	ble s0, s3, label11
	ble s0, zero, label10
label408:
	slli a0, s3, 12
	mv s5, zero
	add s4, s1, a0
label8:
	jal getint
	sh2add a1, s5, s4
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label10
	j label8
