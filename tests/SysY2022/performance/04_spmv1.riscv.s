.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
x:
	.zero	400040
.align 4
y:
	.zero	12000000
.align 4
v:
	.zero	12000000
.align 4
a:
	.zero	400040
.align 4
b:
	.zero	400040
.text
.globl main
main:
	addi sp, sp, -56
	sd s4, 48(sp)
	sd s5, 40(sp)
	sd s0, 32(sp)
	sd s2, 24(sp)
	sd s3, 16(sp)
	sd s1, 8(sp)
	sd ra, 0(sp)
pcrel959:
	auipc a0, %pcrel_hi(x)
	addi a0, a0, %pcrel_lo(pcrel959)
	mv s4, a0
	jal getarray
	addiw s5, a0, -1
pcrel960:
	auipc a0, %pcrel_hi(y)
	addi a0, a0, %pcrel_lo(pcrel960)
	mv s2, a0
	jal getarray
pcrel961:
	auipc a0, %pcrel_hi(v)
	addi a0, a0, %pcrel_lo(pcrel961)
	mv s3, a0
	jal getarray
pcrel962:
	auipc a0, %pcrel_hi(a)
	addi a0, a0, %pcrel_lo(pcrel962)
	mv s1, a0
	jal getarray
	li a0, 39
	jal _sysy_starttime
pcrel963:
	auipc a0, %pcrel_hi(b)
	addi s0, a0, %pcrel_lo(pcrel963)
	mv a0, zero
	ble s5, zero, label96
	mv a2, zero
	addiw a1, zero, 4
	ble s5, a1, label7
	sh2add a2, zero, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label7
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label7
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label7
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label7
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label7
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label7
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label7
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label7
	j label878
label96:
	mv a2, zero
	ble s5, zero, label17
	sh2add a4, zero, s4
	lw t0, 0(a4)
	lw a3, 4(a4)
	addiw a1, zero, 1
	bge t0, a3, label67
	sh2add a3, a1, s4
	lw a3, 0(a3)
	mv t1, t0
	addiw a5, t0, 4
	ble a3, a5, label60
	j label66
label878:
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label7
	j label902
label7:
	addiw a1, a2, 4
	ble s5, a1, label111
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label111
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label111
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label111
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label111
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label111
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label111
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label111
	j label881
label111:
	mv a1, a2
	addiw a2, a2, 4
	ble s5, a2, label12
	sh2add a1, a1, s0
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s5, a2, label12
	sh2add a1, a1, s0
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s5, a2, label12
	sh2add a1, a1, s0
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s5, a2, label12
	sh2add a1, a1, s0
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s5, a2, label12
	sh2add a1, a1, s0
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s5, a2, label12
	sh2add a1, a1, s0
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s5, a2, label12
	sh2add a1, a1, s0
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s5, a2, label12
	sh2add a1, a1, s0
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s5, a2, label12
	j label906
label12:
	sh2add a2, a1, s0
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s5, a1, label128
	sh2add a2, a1, s0
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s5, a1, label128
	sh2add a2, a1, s0
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s5, a1, label128
	sh2add a2, a1, s0
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s5, a1, label128
	sh2add a2, a1, s0
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s5, a1, label128
	sh2add a2, a1, s0
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s5, a1, label128
	sh2add a2, a1, s0
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s5, a1, label128
	sh2add a2, a1, s0
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s5, a1, label128
	sh2add a2, a1, s0
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s5, a1, label128
	sh2add a2, a1, s0
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s5, a1, label128
	j label909
label128:
	mv a2, zero
	ble s5, zero, label17
	sh2add a4, zero, s4
	lw t0, 0(a4)
	lw a3, 4(a4)
	addiw a1, zero, 1
	bge t0, a3, label67
	sh2add a3, a1, s4
	lw a3, 0(a3)
	mv t1, t0
	addiw a5, t0, 4
	ble a3, a5, label60
	j label66
label20:
	addiw a0, a0, 1
	li a1, 100
	bge a0, a1, label21
	ble s5, zero, label96
	mv a2, zero
	addiw a1, zero, 4
	ble s5, a1, label7
	sh2add a2, zero, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label7
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label7
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label7
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label7
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label7
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label7
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label7
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label7
	j label878
label67:
	bge t0, a3, label525
	sh2add a2, a2, s1
	lw a2, 0(a2)
	addiw a2, a2, -1
	sh2add a3, a1, s4
	lw a3, 0(a3)
	addiw a4, t0, 4
	ble a3, a4, label74
	j label73
label525:
	mv a2, a1
	ble s5, a1, label17
	sh2add a4, a1, s4
	lw t0, 0(a4)
	lw a3, 4(a4)
	addiw a1, a1, 1
	bge t0, a3, label67
	sh2add a3, a1, s4
	lw a3, 0(a3)
	mv t1, t0
	addiw a5, t0, 4
	ble a3, a5, label60
	j label66
label60:
	addiw a5, t1, 4
	ble a3, a5, label433
	j label62
label433:
	mv a5, t1
	sh2add t0, t1, s2
	lw t0, 0(t0)
	sh2add t0, t0, s0
	lw t1, 0(t0)
	sh2add t2, a5, s3
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	addiw a5, a5, 1
	ble a3, a5, label65
	sh2add t0, a5, s2
	lw t0, 0(t0)
	sh2add t0, t0, s0
	lw t1, 0(t0)
	sh2add t2, a5, s3
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	addiw a5, a5, 1
	ble a3, a5, label65
	sh2add t0, a5, s2
	lw t0, 0(t0)
	sh2add t0, t0, s0
	lw t1, 0(t0)
	sh2add t2, a5, s3
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	addiw a5, a5, 1
	ble a3, a5, label65
	sh2add t0, a5, s2
	lw t0, 0(t0)
	sh2add t0, t0, s0
	lw t1, 0(t0)
	sh2add t2, a5, s3
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	addiw a5, a5, 1
	ble a3, a5, label65
	sh2add t0, a5, s2
	lw t0, 0(t0)
	sh2add t0, t0, s0
	lw t1, 0(t0)
	sh2add t2, a5, s3
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	addiw a5, a5, 1
	ble a3, a5, label65
	sh2add t0, a5, s2
	lw t0, 0(t0)
	sh2add t0, t0, s0
	lw t1, 0(t0)
	sh2add t2, a5, s3
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	addiw a5, a5, 1
	ble a3, a5, label65
	sh2add t0, a5, s2
	lw t0, 0(t0)
	sh2add t0, t0, s0
	lw t1, 0(t0)
	sh2add t2, a5, s3
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	addiw a5, a5, 1
	ble a3, a5, label65
	sh2add t0, a5, s2
	lw t0, 0(t0)
	sh2add t0, t0, s0
	lw t1, 0(t0)
	sh2add t2, a5, s3
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	addiw a5, a5, 1
	ble a3, a5, label65
	sh2add t0, a5, s2
	lw t0, 0(t0)
	sh2add t0, t0, s0
	lw t1, 0(t0)
	sh2add t2, a5, s3
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	addiw a5, a5, 1
	ble a3, a5, label65
	sh2add t0, a5, s2
	lw t0, 0(t0)
	sh2add t0, t0, s0
	lw t1, 0(t0)
	sh2add t2, a5, s3
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	addiw a5, a5, 1
	ble a3, a5, label65
	j label924
label62:
	sh2add t0, t1, s2
	lw t2, 0(t0)
	sh2add t2, t2, s0
	lw t3, 0(t2)
	sh2add t1, t1, s3
	lw t4, 0(t1)
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 4(t0)
	sh2add t2, t2, s0
	lw t3, 0(t2)
	lw t4, 4(t1)
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 8(t0)
	sh2add t2, t2, s0
	lw t3, 0(t2)
	lw t4, 8(t1)
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t0, 12(t0)
	sh2add t0, t0, s0
	lw t2, 0(t0)
	lw t1, 12(t1)
	addw t1, t2, t1
	sw t1, 0(t0)
	mv t1, a5
	addiw a5, a5, 4
	ble a3, a5, label433
	j label62
label924:
	sh2add t0, a5, s2
	lw t0, 0(t0)
	sh2add t0, t0, s0
	lw t1, 0(t0)
	sh2add t2, a5, s3
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	addiw a5, a5, 1
	ble a3, a5, label65
	j label924
label73:
	sh2add a5, t0, s2
	lw t1, 0(a5)
	sh2add t1, t1, s0
	lw t2, 0(t1)
	sh2add t0, t0, s3
	lw t3, 0(t0)
	mulw t3, a2, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	lw t1, 4(a5)
	sh2add t1, t1, s0
	lw t2, 0(t1)
	lw t3, 4(t0)
	mulw t3, a2, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	lw t1, 8(a5)
	sh2add t1, t1, s0
	lw t2, 0(t1)
	lw t3, 8(t0)
	mulw t3, a2, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	lw a5, 12(a5)
	sh2add a5, a5, s0
	lw t1, 0(a5)
	lw t0, 12(t0)
	mulw t0, a2, t0
	addw t0, t1, t0
	sw t0, 0(a5)
	mv t0, a4
	addiw a4, a4, 4
	ble a3, a4, label74
	j label73
label74:
	addiw a4, t0, 4
	ble a3, a4, label580
	j label78
label580:
	mv a4, t0
label76:
	sh2add a5, a4, s2
	lw a5, 0(a5)
	sh2add a5, a5, s0
	lw t0, 0(a5)
	sh2add t1, a4, s3
	lw t1, 0(t1)
	mulw t1, a2, t1
	addw t0, t0, t1
	sw t0, 0(a5)
	addiw a4, a4, 1
	ble a3, a4, label596
	j label76
label596:
	mv a2, a1
	ble s5, a1, label17
	sh2add a4, a1, s4
	lw t0, 0(a4)
	lw a3, 4(a4)
	addiw a1, a1, 1
	bge t0, a3, label67
	sh2add a3, a1, s4
	lw a3, 0(a3)
	mv t1, t0
	addiw a5, t0, 4
	ble a3, a5, label60
label66:
	sh2add t0, t1, s2
	lw t2, 0(t0)
	sh2add t2, t2, s0
	lw t3, 0(t2)
	sh2add t1, t1, s3
	lw t4, 0(t1)
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 4(t0)
	sh2add t2, t2, s0
	lw t3, 0(t2)
	lw t4, 4(t1)
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 8(t0)
	sh2add t2, t2, s0
	lw t3, 0(t2)
	lw t4, 8(t1)
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t0, 12(t0)
	sh2add t0, t0, s0
	lw t2, 0(t0)
	lw t1, 12(t1)
	addw t1, t2, t1
	sw t1, 0(t0)
	mv t1, a5
	addiw a5, a5, 4
	ble a3, a5, label60
	j label66
label78:
	sh2add a5, t0, s2
	lw t1, 0(a5)
	sh2add t1, t1, s0
	lw t2, 0(t1)
	sh2add t0, t0, s3
	lw t3, 0(t0)
	mulw t3, a2, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	lw t1, 4(a5)
	sh2add t1, t1, s0
	lw t2, 0(t1)
	lw t3, 4(t0)
	mulw t3, a2, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	lw t1, 8(a5)
	sh2add t1, t1, s0
	lw t2, 0(t1)
	lw t3, 8(t0)
	mulw t3, a2, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	lw a5, 12(a5)
	sh2add a5, a5, s0
	lw t1, 0(a5)
	lw t0, 12(t0)
	mulw t0, a2, t0
	addw t0, t1, t0
	sw t0, 0(a5)
	mv t0, a4
	addiw a4, a4, 4
	ble a3, a4, label580
	j label78
label17:
	ble s5, zero, label140
	mv a2, zero
	addiw a1, zero, 4
	ble s5, a1, label48
	sh2add a2, zero, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label48
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label48
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label48
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label48
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label48
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label48
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label48
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label48
	j label890
label140:
	mv a2, zero
	ble s5, zero, label20
	sh2add a4, zero, s4
	lw t0, 0(a4)
	lw a3, 4(a4)
	addiw a1, zero, 1
	bge t0, a3, label23
	sh2add a3, a1, s4
	lw a3, 0(a3)
	mv t1, t0
	addiw a5, t0, 4
	ble a3, a5, label38
	j label44
label890:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label48
	j label914
label48:
	addiw a1, a2, 4
	ble s5, a1, label388
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label388
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label388
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label388
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label388
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label388
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label388
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label388
	j label893
label388:
	mv a1, a2
	addiw a2, a2, 4
	ble s5, a2, label53
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s5, a2, label53
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s5, a2, label53
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s5, a2, label53
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s5, a2, label53
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s5, a2, label53
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s5, a2, label53
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s5, a2, label53
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s5, a2, label53
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s5, a2, label53
	j label920
label38:
	addiw a5, t1, 4
	ble a3, a5, label285
	j label43
label285:
	mv a5, t1
	sh2add t0, t1, s2
	lw t0, 0(t0)
	sh2add t0, t0, s1
	lw t1, 0(t0)
	sh2add t2, a5, s3
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	addiw a5, a5, 1
	ble a3, a5, label42
	sh2add t0, a5, s2
	lw t0, 0(t0)
	sh2add t0, t0, s1
	lw t1, 0(t0)
	sh2add t2, a5, s3
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	addiw a5, a5, 1
	ble a3, a5, label42
	sh2add t0, a5, s2
	lw t0, 0(t0)
	sh2add t0, t0, s1
	lw t1, 0(t0)
	sh2add t2, a5, s3
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	addiw a5, a5, 1
	ble a3, a5, label42
	sh2add t0, a5, s2
	lw t0, 0(t0)
	sh2add t0, t0, s1
	lw t1, 0(t0)
	sh2add t2, a5, s3
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	addiw a5, a5, 1
	ble a3, a5, label42
	sh2add t0, a5, s2
	lw t0, 0(t0)
	sh2add t0, t0, s1
	lw t1, 0(t0)
	sh2add t2, a5, s3
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	addiw a5, a5, 1
	ble a3, a5, label42
	sh2add t0, a5, s2
	lw t0, 0(t0)
	sh2add t0, t0, s1
	lw t1, 0(t0)
	sh2add t2, a5, s3
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	addiw a5, a5, 1
	ble a3, a5, label42
	sh2add t0, a5, s2
	lw t0, 0(t0)
	sh2add t0, t0, s1
	lw t1, 0(t0)
	sh2add t2, a5, s3
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	addiw a5, a5, 1
	ble a3, a5, label42
	sh2add t0, a5, s2
	lw t0, 0(t0)
	sh2add t0, t0, s1
	lw t1, 0(t0)
	sh2add t2, a5, s3
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	addiw a5, a5, 1
	ble a3, a5, label42
	sh2add t0, a5, s2
	lw t0, 0(t0)
	sh2add t0, t0, s1
	lw t1, 0(t0)
	sh2add t2, a5, s3
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	addiw a5, a5, 1
	ble a3, a5, label42
	sh2add t0, a5, s2
	lw t0, 0(t0)
	sh2add t0, t0, s1
	lw t1, 0(t0)
	sh2add t2, a5, s3
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	addiw a5, a5, 1
	ble a3, a5, label42
	j label913
label43:
	sh2add t0, t1, s2
	lw t2, 0(t0)
	sh2add t2, t2, s1
	lw t3, 0(t2)
	sh2add t1, t1, s3
	lw t4, 0(t1)
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 4(t0)
	sh2add t2, t2, s1
	lw t3, 0(t2)
	lw t4, 4(t1)
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 8(t0)
	sh2add t2, t2, s1
	lw t3, 0(t2)
	lw t4, 8(t1)
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t0, 12(t0)
	sh2add t0, t0, s1
	lw t2, 0(t0)
	lw t1, 12(t1)
	addw t1, t2, t1
	sw t1, 0(t0)
	mv t1, a5
	addiw a5, a5, 4
	ble a3, a5, label285
	j label43
label913:
	sh2add t0, a5, s2
	lw t0, 0(t0)
	sh2add t0, t0, s1
	lw t1, 0(t0)
	sh2add t2, a5, s3
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	addiw a5, a5, 1
	ble a3, a5, label42
	j label913
label23:
	bge t0, a3, label163
	sh2add a2, a2, s0
	lw a2, 0(a2)
	addiw a2, a2, -1
	sh2add a3, a1, s4
	lw a3, 0(a3)
	addiw a4, t0, 4
	ble a3, a4, label29
	j label34
label163:
	mv a2, a1
	ble s5, a1, label20
	sh2add a4, a1, s4
	lw t0, 0(a4)
	lw a3, 4(a4)
	addiw a1, a1, 1
	bge t0, a3, label23
	sh2add a3, a1, s4
	lw a3, 0(a3)
	mv t1, t0
	addiw a5, t0, 4
	ble a3, a5, label38
	j label44
label34:
	sh2add a5, t0, s2
	lw t1, 0(a5)
	sh2add t1, t1, s1
	lw t2, 0(t1)
	sh2add t0, t0, s3
	lw t3, 0(t0)
	mulw t3, a2, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	lw t1, 4(a5)
	sh2add t1, t1, s1
	lw t2, 0(t1)
	lw t3, 4(t0)
	mulw t3, a2, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	lw t1, 8(a5)
	sh2add t1, t1, s1
	lw t2, 0(t1)
	lw t3, 8(t0)
	mulw t3, a2, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	lw a5, 12(a5)
	sh2add a5, a5, s1
	lw t1, 0(a5)
	lw t0, 12(t0)
	mulw t0, a2, t0
	addw t0, t1, t0
	sw t0, 0(a5)
	mv t0, a4
	addiw a4, a4, 4
	ble a3, a4, label29
	j label34
label29:
	addiw a4, t0, 4
	ble a3, a4, label180
	j label31
label180:
	mv a4, t0
	j label32
label31:
	sh2add a5, t0, s2
	lw t1, 0(a5)
	sh2add t1, t1, s1
	lw t2, 0(t1)
	sh2add t0, t0, s3
	lw t3, 0(t0)
	mulw t3, a2, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	lw t1, 4(a5)
	sh2add t1, t1, s1
	lw t2, 0(t1)
	lw t3, 4(t0)
	mulw t3, a2, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	lw t1, 8(a5)
	sh2add t1, t1, s1
	lw t2, 0(t1)
	lw t3, 8(t0)
	mulw t3, a2, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	lw a5, 12(a5)
	sh2add a5, a5, s1
	lw t1, 0(a5)
	lw t0, 12(t0)
	mulw t0, a2, t0
	addw t0, t1, t0
	sw t0, 0(a5)
	mv t0, a4
	addiw a4, a4, 4
	ble a3, a4, label180
	j label31
label32:
	sh2add a5, a4, s2
	lw a5, 0(a5)
	sh2add a5, a5, s1
	lw t0, 0(a5)
	sh2add t1, a4, s3
	lw t1, 0(t1)
	mulw t1, a2, t1
	addw t0, t0, t1
	sw t0, 0(a5)
	addiw a4, a4, 1
	ble a3, a4, label234
	j label32
label234:
	mv a2, a1
	ble s5, a1, label20
	sh2add a4, a1, s4
	lw t0, 0(a4)
	lw a3, 4(a4)
	addiw a1, a1, 1
	bge t0, a3, label23
	sh2add a3, a1, s4
	lw a3, 0(a3)
	mv t1, t0
	addiw a5, t0, 4
	ble a3, a5, label38
label44:
	sh2add t0, t1, s2
	lw t2, 0(t0)
	sh2add t2, t2, s1
	lw t3, 0(t2)
	sh2add t1, t1, s3
	lw t4, 0(t1)
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 4(t0)
	sh2add t2, t2, s1
	lw t3, 0(t2)
	lw t4, 4(t1)
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 8(t0)
	sh2add t2, t2, s1
	lw t3, 0(t2)
	lw t4, 8(t1)
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t0, 12(t0)
	sh2add t0, t0, s1
	lw t2, 0(t0)
	lw t1, 12(t1)
	addw t1, t2, t1
	sw t1, 0(t0)
	mv t1, a5
	addiw a5, a5, 4
	ble a3, a5, label38
	j label44
label53:
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s5, a1, label405
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s5, a1, label405
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s5, a1, label405
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s5, a1, label405
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s5, a1, label405
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s5, a1, label405
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s5, a1, label405
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s5, a1, label405
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s5, a1, label405
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s5, a1, label405
	j label921
label405:
	mv a2, zero
	ble s5, zero, label20
	sh2add a4, zero, s4
	lw t0, 0(a4)
	lw a3, 4(a4)
	addiw a1, zero, 1
	bge t0, a3, label23
	sh2add a3, a1, s4
	lw a3, 0(a3)
	mv t1, t0
	addiw a5, t0, 4
	ble a3, a5, label38
	j label44
label921:
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s5, a1, label405
	j label921
label909:
	sh2add a2, a1, s0
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s5, a1, label128
	j label909
label42:
	sh2add a3, a2, s4
	lw t0, 0(a3)
	lw a3, 4(a4)
	bge t0, a3, label163
	sh2add a2, a2, s0
	lw a2, 0(a2)
	addiw a2, a2, -1
	sh2add a3, a1, s4
	lw a3, 0(a3)
	addiw a4, t0, 4
	ble a3, a4, label29
	j label34
label65:
	sh2add a3, a2, s4
	lw t0, 0(a3)
	lw a3, 4(a4)
	bge t0, a3, label525
	sh2add a2, a2, s1
	lw a2, 0(a2)
	addiw a2, a2, -1
	sh2add a3, a1, s4
	lw a3, 0(a3)
	addiw a4, t0, 4
	ble a3, a4, label74
	j label73
label914:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label48
	j label914
label893:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label388
label917:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label388
	j label917
label920:
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s5, a2, label53
	j label920
label881:
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label111
	j label905
label902:
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label7
	j label902
label905:
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label111
	j label905
label906:
	sh2add a1, a1, s0
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s5, a2, label12
	j label906
label21:
	li a0, 47
	jal _sysy_stoptime
	mv a0, s5
	mv a1, s0
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s0, 32(sp)
	ld s5, 40(sp)
	ld s4, 48(sp)
	addi sp, sp, 56
	ret
