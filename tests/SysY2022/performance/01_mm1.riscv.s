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
pcrel842:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel842)
pcrel843:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(pcrel843)
pcrel844:
	auipc a0, %pcrel_hi(C)
	addi s3, a0, %pcrel_lo(pcrel844)
	ble s0, zero, label126
	ble s0, zero, label8
	j label643
label126:
	mv s4, zero
	ble s0, zero, label11
	ble s0, zero, label111
	j label699
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
	bne a4, zero, label93
	j label763
label197:
	mv a2, zero
	ble s0, zero, label201
	slliw a1, zero, 12
	add a1, s1, a1
	ble s0, zero, label45
	j label659
label201:
	mv a2, zero
	slliw a1, zero, 12
	add a1, s3, a1
	ble s0, zero, label69
	mv a3, zero
	ble s0, zero, label50
	slliw a4, zero, 12
	add a5, s2, a4
	sh2add a4, zero, a5
	lw a4, 0(a4)
	bne a4, zero, label53
	j label777
label53:
	ble s0, zero, label52
	slliw a4, a3, 12
	li t0, 4
	add a4, s1, a4
	ble s0, t0, label273
	j label734
label449:
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label93
	j label688
label93:
	ble s0, zero, label109
	slliw a4, a3, 12
	li t0, 4
	add a4, s3, a4
	ble s0, t0, label468
	sh2add t0, a2, a5
	li t1, 4
	mv t3, zero
	lw t0, 0(t0)
	j label106
label507:
	mv t0, t2
	sh2add t1, t2, a4
	sh2add t3, t2, a1
	lw t2, 0(t1)
	addiw t0, t0, 1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	ble s0, t0, label109
	sh2add t1, t0, a4
	sh2add t3, t0, a1
	lw t2, 0(t1)
	addiw t0, t0, 1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	ble s0, t0, label109
	sh2add t1, t0, a4
	sh2add t3, t0, a1
	lw t2, 0(t1)
	addiw t0, t0, 1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	ble s0, t0, label109
	j label749
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
	ble s0, t0, label507
	j label104
label109:
	addiw a3, a3, 1
	ble s0, a3, label91
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label93
	addiw a3, a3, 1
	ble s0, a3, label91
	j label449
label749:
	sh2add t1, t0, a4
	sh2add t3, t0, a1
	lw t2, 0(t1)
	addiw t0, t0, 1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	ble s0, t0, label109
	j label749
label52:
	addiw a3, a3, 1
	ble s0, a3, label50
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a3, a3, 1
	ble s0, a3, label50
	j label253
label63:
	addiw t0, t2, 4
	ble s0, t0, label321
	j label65
label321:
	mv t0, t2
	sh2add t1, t2, a4
	sh2add t3, t2, a1
	lw t2, 0(t1)
	addiw t0, t0, 1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	ble s0, t0, label52
	sh2add t1, t0, a4
	sh2add t3, t0, a1
	lw t2, 0(t1)
	addiw t0, t0, 1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	ble s0, t0, label52
	sh2add t1, t0, a4
	sh2add t3, t0, a1
	lw t2, 0(t1)
	addiw t0, t0, 1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	ble s0, t0, label52
label739:
	sh2add t1, t0, a4
	sh2add t3, t0, a1
	lw t2, 0(t1)
	addiw t0, t0, 1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	ble s0, t0, label52
	j label739
label99:
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
	ble s0, t0, label100
	j label99
label106:
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
	ble s0, t2, label580
	mv t3, t1
	mv t1, t2
	j label106
label580:
	mv t2, t1
	sh2add a5, a2, a5
	lw a5, 0(a5)
	addiw t0, t1, 4
	ble s0, t0, label100
	j label99
label468:
	mv t2, zero
	sh2add a5, a2, a5
	lw a5, 0(a5)
	addiw t0, zero, 4
	ble s0, t0, label100
	j label99
label100:
	addiw t0, t2, 4
	ble s0, t0, label507
	j label104
label273:
	mv t1, zero
	sh2add a5, a2, a5
	mv t2, zero
	lw a5, 0(a5)
	addiw t0, zero, 4
	ble s0, t0, label63
label68:
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
	ble s0, t0, label63
	j label68
label65:
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
	ble s0, t0, label321
	j label65
label763:
	addiw a3, a3, 1
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
	bne a4, zero, label93
	j label763
label688:
	addiw a3, a3, 1
	ble s0, a3, label91
	j label449
label718:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label36
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label36
	j label721
label726:
	sh2add a4, a3, a1
	addiw a3, a3, 1
	sw zero, 0(a4)
	ble s0, a3, label45
	j label726
label45:
	addiw a2, a2, 1
	ble s0, a2, label201
	slliw a1, a2, 12
	add a1, s1, a1
	ble s0, zero, label45
	mv a4, zero
	addiw a3, zero, 4
	ble s0, a3, label36
	j label718
label704:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label20
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label20
	j label707
label713:
	sh2add a4, a3, a1
	addiw a3, a3, 1
	sw zero, 0(a4)
	ble s0, a3, label28
	j label713
label28:
	addiw a2, a2, 1
	ble s0, a2, label148
	slliw a1, a2, 12
	add a1, s3, a1
	ble s0, zero, label28
	mv a4, zero
	addiw a3, zero, 4
	ble s0, a3, label20
	j label704
label253:
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label53
	j label670
label777:
	addiw a3, a3, 1
	ble s0, a3, label50
	j label253
label50:
	addiw a2, a2, 1
	slliw a1, a2, 12
	add a1, s3, a1
	ble s0, a2, label69
	mv a3, zero
	ble s0, zero, label50
	slliw a4, zero, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label53
	j label777
label69:
	addiw a0, a0, 1
	li a1, 5
	bge a0, a1, label391
	mv a2, zero
	ble s0, zero, label148
	slliw a1, zero, 12
	add a1, s3, a1
	ble s0, zero, label28
	j label648
label391:
	mv a0, zero
	mv s2, zero
	ble s0, zero, label73
	ble s0, zero, label75
	slli a1, zero, 12
	mv a4, zero
	mv a3, zero
	add a1, s1, a1
	addiw a2, zero, 4
	ble s0, a2, label82
	j label81
label73:
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
label670:
	addiw a3, a3, 1
	ble s0, a3, label50
	j label253
label36:
	addiw a3, a4, 4
	ble s0, a3, label216
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label216
	j label722
label216:
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label41
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label41
	j label723
label41:
	sh2add a4, a3, a1
	addiw a3, a3, 1
	sw zero, 0(a4)
	ble s0, a3, label45
	sh2add a4, a3, a1
	addiw a3, a3, 1
	sw zero, 0(a4)
	ble s0, a3, label45
	sh2add a4, a3, a1
	addiw a3, a3, 1
	sw zero, 0(a4)
	ble s0, a3, label45
	j label726
label734:
	sh2add t0, a2, a5
	li t1, 4
	mv t3, zero
	lw t0, 0(t0)
label56:
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
	ble s0, t2, label59
	mv t3, t1
	mv t1, t2
	j label56
label59:
	sh2add a5, a2, a5
	mv t2, t1
	lw a5, 0(a5)
	addiw t0, t1, 4
	ble s0, t0, label63
	j label68
label659:
	mv a4, zero
	addiw a3, zero, 4
	ble s0, a3, label36
	j label718
label648:
	mv a4, zero
	addiw a3, zero, 4
	ble s0, a3, label20
	j label704
label20:
	addiw a3, a4, 4
	ble s0, a3, label168
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label168
	j label709
label168:
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label25
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label25
	j label710
label25:
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
	j label713
label723:
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label41
	j label723
label722:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label216
	j label722
label721:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label36
	j label721
label707:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label20
	j label707
label710:
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label25
	j label710
label709:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label168
	j label709
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
label702:
	jal getint
	sh2add a1, s6, s4
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label8
	j label702
label595:
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label111
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label111
label755:
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label111
	j label755
label82:
	addiw a2, a3, 4
	ble s0, a2, label424
label88:
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
	ble s0, a2, label424
	j label88
label424:
	mv a2, a4
	sh2add a4, a3, a1
	addiw a3, a3, 1
	lw a4, 0(a4)
	addw a2, a2, a4
	ble s0, a3, label433
	sh2add a4, a3, a1
	addiw a3, a3, 1
	lw a4, 0(a4)
	addw a2, a2, a4
	ble s0, a3, label433
	sh2add a4, a3, a1
	addiw a3, a3, 1
	lw a4, 0(a4)
	addw a2, a2, a4
	ble s0, a3, label433
	j label744
label433:
	mv s2, a2
	addiw a0, a0, 1
	ble s0, a0, label73
	ble s0, zero, label75
	slli a1, a0, 12
	mv a4, a2
	mv a3, zero
	add a1, s1, a1
	addiw a2, zero, 4
	ble s0, a2, label82
	j label81
label744:
	sh2add a4, a3, a1
	addiw a3, a3, 1
	lw a4, 0(a4)
	addw a2, a2, a4
	ble s0, a3, label433
	j label744
label81:
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
	ble s0, a2, label82
	j label81
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
label111:
	addiw s4, s4, 1
	ble s0, s4, label11
	ble s0, zero, label111
	slli a0, s4, 12
	mv s6, zero
	add s5, s1, a0
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label111
	j label595
label75:
	addiw a0, a0, 1
	ble s0, a0, label73
	ble s0, zero, label75
	slli a1, a0, 12
	mv a4, s2
	mv a3, zero
	add a1, s1, a1
	addiw a2, zero, 4
	ble s0, a2, label82
	j label81
label699:
	slli a0, s4, 12
	mv s6, zero
	add s5, s1, a0
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	ble s0, s6, label111
	j label595
