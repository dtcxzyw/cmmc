.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
a:
	.zero	120000040
.text
radixSort:
	addi sp, sp, -248
	sd s1, 240(sp)
	sd s3, 232(sp)
	sd s2, 224(sp)
	sd s0, 216(sp)
	sd s5, 208(sp)
	sd s4, 200(sp)
	sd ra, 192(sp)
	mv s1, a1
	addi s3, sp, 0
	addi s2, sp, 64
	addi s0, sp, 128
	addiw a1, a2, 1
	slt a1, a1, a3
	xori a1, a1, 1
	xori a4, a0, -1
	sltiu a4, a4, 1
	or a1, a1, a4
	sw zero, 128(sp)
	sw zero, 4(s0)
	sw zero, 8(s0)
	sw zero, 12(s0)
	sw zero, 16(s0)
	sw zero, 20(s0)
	sw zero, 24(s0)
	sw zero, 28(s0)
	sw zero, 32(s0)
	sw zero, 36(s0)
	sw zero, 40(s0)
	sw zero, 44(s0)
	sw zero, 48(s0)
	sw zero, 52(s0)
	sw zero, 56(s0)
	sw zero, 60(s0)
	sw zero, 64(sp)
	sw zero, 4(s2)
	sw zero, 8(s2)
	sw zero, 12(s2)
	sw zero, 16(s2)
	sw zero, 20(s2)
	sw zero, 24(s2)
	sw zero, 28(s2)
	sw zero, 32(s2)
	sw zero, 36(s2)
	sw zero, 40(s2)
	sw zero, 44(s2)
	sw zero, 48(s2)
	sw zero, 52(s2)
	sw zero, 56(s2)
	sw zero, 60(s2)
	sw zero, 0(sp)
	sw zero, 4(s3)
	sw zero, 8(s3)
	sw zero, 12(s3)
	sw zero, 16(s3)
	sw zero, 20(s3)
	sw zero, 24(s3)
	sw zero, 28(s3)
	sw zero, 32(s3)
	sw zero, 36(s3)
	sw zero, 40(s3)
	sw zero, 44(s3)
	sw zero, 48(s3)
	sw zero, 52(s3)
	sw zero, 56(s3)
	sw zero, 60(s3)
	beq a1, zero, label3
label2:
	ld ra, 192(sp)
	ld s4, 200(sp)
	ld s5, 208(sp)
	ld s0, 216(sp)
	ld s2, 224(sp)
	ld s3, 232(sp)
	ld s1, 240(sp)
	addi sp, sp, 248
	ret
label3:
	addiw s4, a0, -1
	bge a2, a3, label182
	mv a1, a2
label4:
	sh2add a4, a1, s1
	lw a4, 0(a4)
	ble a0, zero, label6
	mv t0, zero
label8:
	addiw a5, t0, 4
	ble a0, a5, label11
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	j label8
label11:
	addiw a5, t0, 4
	ble a0, a5, label208
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	j label11
label208:
	mv a5, t0
label14:
	addiw t0, a5, 4
	ble a0, t0, label18
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t0
	j label14
label18:
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label6
	j label18
label6:
	slli a5, a4, 1
	srli a5, a5, 60
	add a5, a4, a5
	andi a5, a5, -16
	subw a4, a4, a5
	sh2add a4, a4, s3
	lw a5, 0(a4)
	addiw a5, a5, 1
	sw a5, 0(a4)
	addiw a1, a1, 1
	ble a3, a1, label182
	j label4
label182:
	sw a2, 128(sp)
	lw a1, 0(sp)
	addw a1, a2, a1
	sw a1, 64(sp)
	li a1, 1
label24:
	addiw a3, a1, -1
	sh2add a3, a3, s2
	lw a5, 0(a3)
	sh2add a3, a1, s0
	sw a5, 0(a3)
	sh2add a4, a1, s3
	lw t0, 0(a4)
	addw t0, a5, t0
	sh2add a5, a1, s2
	sw t0, 0(a5)
	sw t0, 4(a3)
	lw t1, 4(a4)
	addw t0, t0, t1
	sw t0, 4(a5)
	sw t0, 8(a3)
	lw t1, 8(a4)
	addw t0, t0, t1
	sw t0, 8(a5)
	sw t0, 12(a3)
	lw a3, 12(a4)
	addw a3, t0, a3
	sw a3, 12(a5)
	addiw a3, a1, 4
	li a4, 13
	bge a3, a4, label26
	mv a1, a3
	j label24
label26:
	addiw a1, a1, 3
	sh2add a1, a1, s2
	lw a5, 0(a1)
	sh2add a4, a3, s0
	sw a5, 0(a4)
	sh2add a3, a3, s3
	lw t0, 0(a3)
	addw a5, a5, t0
	sw a5, 4(a1)
	sw a5, 4(a4)
	lw t0, 4(a3)
	addw a5, a5, t0
	sw a5, 8(a1)
	sw a5, 8(a4)
	lw a3, 8(a3)
	addw a3, a5, a3
	sw a3, 12(a1)
	mv a1, zero
label27:
	li a3, 16
	bge a1, a3, label29
	sh2add a3, a1, s0
	lw a3, 0(a3)
	j label36
label29:
	sw a2, 128(sp)
	lw a0, 0(sp)
	addw a0, a2, a0
	sw a0, 64(sp)
	mv s5, zero
	j label30
label38:
	addiw a1, a1, 1
	j label27
label36:
	sh2add a4, a1, s2
	lw a4, 0(a4)
	bge a3, a4, label38
	sh2add a3, a1, s0
	lw a4, 0(a3)
	sh2add a3, a4, s1
	lw a3, 0(a3)
	ble a0, zero, label330
	mv a5, a3
	mv t1, zero
	j label101
label330:
	mv a5, a3
label40:
	slli t0, a5, 1
	srli t0, t0, 60
	add t0, a5, t0
	andi t0, t0, -16
	subw a5, a5, t0
	beq a1, a5, label42
	j label45
label42:
	sh2add a5, a4, s1
	sw a3, 0(a5)
	addiw a3, a4, 1
	sh2add a4, a1, s0
	sw a3, 0(a4)
	j label36
label45:
	sh2add a5, a5, s0
	lw t0, 0(a5)
	sh2add t1, t0, s1
	lw a4, 0(t1)
	sw a3, 0(t1)
	addiw a3, t0, 1
	sw a3, 0(a5)
	ble a0, zero, label350
	mv a3, a4
	mv t0, zero
	j label86
label350:
	mv a3, a4
label46:
	slli a5, a3, 1
	srli a5, a5, 60
	add a5, a3, a5
	andi a5, a5, -16
	subw a3, a3, a5
	beq a1, a3, label355
	j label354
label355:
	mv a3, a4
	sh2add a4, a1, s0
	lw a4, 0(a4)
	sh2add a5, a4, s1
	sw a3, 0(a5)
	addiw a3, a4, 1
	sh2add a4, a1, s0
	sw a3, 0(a4)
	j label36
label86:
	addiw a5, t0, 4
	ble a0, a5, label89
	j label429
label101:
	addiw t0, t1, 4
	ble a0, t0, label104
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	j label101
label354:
	mv a3, a4
	ble a0, zero, label361
	mv t0, zero
	j label71
label361:
	mv a4, a3
label52:
	slli a5, a4, 1
	srli a5, a5, 60
	add a5, a4, a5
	andi a5, a5, -16
	subw a4, a4, a5
	sh2add a5, a4, s0
	lw t0, 0(a5)
	sh2add t1, t0, s1
	lw a4, 0(t1)
	sw a3, 0(t1)
	addiw a3, t0, 1
	sw a3, 0(a5)
	ble a0, zero, label372
	mv a3, a4
	mv t0, zero
	j label54
label372:
	mv a3, a4
	j label69
label54:
	addiw a5, t0, 4
	ble a0, a5, label57
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	j label54
label69:
	slli a5, a3, 1
	srli a5, a5, 60
	add a5, a3, a5
	andi a5, a5, -16
	subw a3, a3, a5
	beq a1, a3, label401
	j label354
label401:
	mv a3, a4
	sh2add a4, a1, s0
	lw a4, 0(a4)
	sh2add a5, a4, s1
	sw a3, 0(a5)
	addiw a3, a4, 1
	sh2add a4, a1, s0
	sw a3, 0(a4)
	j label36
label71:
	addiw a5, t0, 4
	ble a0, a5, label74
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	j label71
label57:
	addiw a5, t0, 4
	ble a0, a5, label382
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	j label57
label382:
	mv a5, t0
label60:
	addiw t0, a5, 4
	ble a0, t0, label63
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t0
	j label60
label63:
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label69
	j label63
label74:
	addiw a5, t0, 4
	ble a0, a5, label411
	j label410
label411:
	mv a5, t0
label77:
	addiw t0, a5, 4
	ble a0, t0, label80
	slli a5, a4, 1
	srli a5, a5, 48
	add a4, a4, a5
	sraiw a4, a4, 16
	mv a5, t0
	j label77
label80:
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t0, t0, 60
	add a4, a4, t0
	sraiw a4, a4, 4
	ble a0, a5, label52
	j label80
label410:
	slli t0, a4, 1
	srli t0, t0, 48
	add a4, a4, t0
	sraiw a4, a4, 16
	mv t0, a5
	j label74
label104:
	addiw t0, t1, 4
	ble a0, t0, label459
	slli t1, a5, 1
	srli t1, t1, 48
	add a5, a5, t1
	sraiw a5, a5, 16
	mv t1, t0
	j label104
label459:
	mv t0, t1
label108:
	addiw t1, t0, 4
	ble a0, t1, label111
	slli t0, a5, 1
	srli t0, t0, 48
	add a5, a5, t0
	sraiw a5, a5, 16
	mv t0, t1
	j label108
label111:
	addiw t0, t0, 1
	slli t1, a5, 1
	srli t1, t1, 60
	add a5, a5, t1
	sraiw a5, a5, 4
	ble a0, t0, label40
	j label111
label89:
	addiw a5, t0, 4
	ble a0, a5, label435
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	j label89
label435:
	mv a5, t0
label93:
	addiw t0, a5, 4
	ble a0, t0, label96
	j label440
label96:
	addiw a5, a5, 1
	slli t0, a3, 1
	srli t0, t0, 60
	add a3, a3, t0
	sraiw a3, a3, 4
	ble a0, a5, label46
	j label96
label440:
	slli a5, a3, 1
	srli a5, a5, 48
	add a3, a3, a5
	sraiw a3, a3, 16
	mv a5, t0
	j label93
label429:
	slli t0, a3, 1
	srli t0, t0, 48
	add a3, a3, t0
	sraiw a3, a3, 16
	mv t0, a5
	j label86
label30:
	li a0, 16
	bge s5, a0, label2
	ble s5, zero, label33
	j label34
label33:
	sh2add a0, s5, s0
	lw a2, 0(a0)
	sh2add a0, s5, s2
	lw a3, 0(a0)
	mv a0, s4
	mv a1, s1
	jal radixSort
	addiw s5, s5, 1
	j label30
label34:
	addiw a0, s5, -1
	sh2add a0, a0, s2
	lw a0, 0(a0)
	sh2add a1, s5, s0
	sw a0, 0(a1)
	sh2add a1, s5, s3
	lw a1, 0(a1)
	addw a0, a0, a1
	sh2add a1, s5, s2
	sw a0, 0(a1)
	sh2add a0, s5, s0
	lw a2, 0(a0)
	sh2add a0, s5, s2
	lw a3, 0(a0)
	mv a0, s4
	mv a1, s1
	jal radixSort
	addiw s5, s5, 1
	j label30
.globl main
main:
	addi sp, sp, -32
	sd s2, 24(sp)
	sd s1, 16(sp)
	sd s0, 8(sp)
	sd ra, 0(sp)
pcrel708:
	auipc a0, %pcrel_hi(a)
	addi s2, a0, %pcrel_lo(pcrel708)
	mv s1, s2
	mv a0, s2
	jal getarray
	mv s0, a0
	li a0, 90
	jal _sysy_starttime
	li a0, 8
	mv a1, s2
	mv a2, zero
	mv a3, s0
	jal radixSort
	ble s0, zero, label624
	mv a0, zero
	mv a2, zero
	j label606
label624:
	mv s0, zero
	j label617
label606:
	addiw a1, a0, 4
	ble s0, a1, label629
	j label609
label629:
	mv a1, a2
	j label610
label609:
	sh2add a3, a0, s1
	lw t0, 0(a3)
	lw a5, 4(a3)
	addiw a4, a0, 3
	remw a5, a5, a4
	addiw t1, a0, 1
	mulw t1, a5, t1
	addiw a5, a0, 2
	remw t0, t0, a5
	mulw t0, a0, t0
	addw a2, a2, t0
	addw a2, t1, a2
	lw t0, 8(a3)
	remw t0, t0, a1
	mulw a5, a5, t0
	addw a2, a2, a5
	lw a3, 12(a3)
	addiw a0, a0, 5
	remw a0, a3, a0
	mulw a0, a4, a0
	addw a2, a2, a0
	mv a0, a1
	j label606
label610:
	addiw a2, a0, 4
	ble s0, a2, label614
	sh2add a3, a0, s1
	lw t0, 0(a3)
	lw a5, 4(a3)
	addiw a4, a0, 3
	remw a5, a5, a4
	addiw t1, a0, 1
	mulw t1, a5, t1
	addiw a5, a0, 2
	remw t0, t0, a5
	mulw t0, a0, t0
	addw a1, a1, t0
	addw a1, t1, a1
	lw t0, 8(a3)
	remw t0, t0, a2
	mulw a5, a5, t0
	addw a1, a1, a5
	lw a3, 12(a3)
	addiw a0, a0, 5
	remw a0, a3, a0
	mulw a0, a4, a0
	addw a1, a1, a0
	mv a0, a2
	j label610
label614:
	sh2add a2, a0, s1
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a1, a2
	addiw a0, a0, 1
	ble s0, a0, label696
	j label614
label696:
	mv s0, a1
label617:
	li a0, 102
	jal _sysy_stoptime
	subw a0, zero, s0
	max a0, a0, s0
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 32
	ret
