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
	sd s1, 48(sp)
	sd s2, 40(sp)
	sd s3, 32(sp)
	sd s4, 24(sp)
	sd s5, 16(sp)
	sd s0, 8(sp)
	sd ra, 0(sp)
pcrel941:
	auipc a0, %pcrel_hi(x)
	addi a0, a0, %pcrel_lo(pcrel941)
	mv s1, a0
	jal getarray
	addiw s2, a0, -1
pcrel942:
	auipc a0, %pcrel_hi(y)
	addi a0, a0, %pcrel_lo(pcrel942)
	mv s3, a0
	jal getarray
pcrel943:
	auipc a0, %pcrel_hi(v)
	addi a0, a0, %pcrel_lo(pcrel943)
	mv s4, a0
	jal getarray
pcrel944:
	auipc a0, %pcrel_hi(a)
	addi a0, a0, %pcrel_lo(pcrel944)
	mv s5, a0
	jal getarray
	li a0, 39
	jal _sysy_starttime
pcrel945:
	auipc a0, %pcrel_hi(b)
	addi s0, a0, %pcrel_lo(pcrel945)
	mv a0, zero
	ble s2, zero, label96
	mv a1, zero
	addiw a2, zero, 4
	bge a2, s2, label7
	slliw a1, zero, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label7
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label7
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label7
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label7
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label7
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label7
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label7
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label7
label864:
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label7
	j label886
label7:
	addiw a2, a1, 4
	bge a2, s2, label10
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label10
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label10
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label10
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label10
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label10
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label10
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label10
	j label867
label10:
	addiw a2, a1, 4
	bge a2, s2, label12
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label12
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label12
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label12
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label12
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label12
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label12
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label12
	j label870
label364:
	mv a2, zero
	bge zero, s2, label66
	slliw a1, zero, 2
	add a3, s1, a1
	lw t1, 0(a3)
	lw a4, 4(a3)
	addiw a1, zero, 1
	bge t1, a4, label378
	slliw a4, a1, 2
	add a4, s1, a4
	lw a4, 0(a4)
	mv t2, t1
	addiw a5, t1, 4
	bge a5, a4, label59
	j label65
label66:
	addiw a0, a0, 1
	li a1, 100
	bge a0, a1, label67
	ble s2, zero, label96
	mv a1, zero
	addiw a2, zero, 4
	bge a2, s2, label7
	slliw a1, zero, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label7
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label7
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label7
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label7
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label7
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label7
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label7
	j label898
label378:
	mv a3, a4
	bge t1, a4, label382
	slliw a2, a2, 2
	add a2, s0, a2
	lw a2, 0(a2)
	addiw a2, a2, -1
	slliw a3, a1, 2
	add a3, s1, a3
	lw a3, 0(a3)
	addiw a4, t1, 4
	bge a4, a3, label51
	j label50
label382:
	mv a2, a1
	bge a1, s2, label66
	slliw a1, a1, 2
	add a3, s1, a1
	lw t1, 0(a3)
	lw a4, 4(a3)
	addiw a1, a2, 1
	bge t1, a4, label378
	slliw a4, a1, 2
	add a4, s1, a4
	lw a4, 0(a4)
	mv t2, t1
	addiw a5, t1, 4
	bge a5, a4, label59
	j label65
label51:
	addiw a4, t1, 4
	bge a4, a3, label437
	j label53
label437:
	mv a4, t1
label54:
	slliw a5, a4, 2
	add a5, s3, a5
	lw a5, 0(a5)
	slliw a5, a5, 2
	add a5, s5, a5
	lw t1, 0(a5)
	slliw t2, a4, 2
	add t2, s4, t2
	lw t2, 0(t2)
	mulw t2, a2, t2
	addw t1, t2, t1
	sw t1, 0(a5)
	addiw a4, a4, 1
	bge a4, a3, label491
	j label54
label491:
	mv a2, a1
	bge a1, s2, label66
	slliw a1, a1, 2
	add a3, s1, a1
	lw t1, 0(a3)
	lw a4, 4(a3)
	addiw a1, a2, 1
	bge t1, a4, label378
	slliw a4, a1, 2
	add a4, s1, a4
	lw a4, 0(a4)
	mv t2, t1
	addiw a5, t1, 4
	bge a5, a4, label59
	j label65
label59:
	addiw a5, t2, 4
	bge a5, a4, label504
	j label64
label504:
	mv a5, t2
	j label61
label64:
	slliw t1, t2, 2
	add t1, s3, t1
	lw t3, 0(t1)
	slliw t3, t3, 2
	add t3, s5, t3
	lw t4, 0(t3)
	slliw t2, t2, 2
	add t2, s4, t2
	lw t5, 0(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 4(t1)
	slliw t3, t3, 2
	add t3, s5, t3
	lw t4, 0(t3)
	lw t5, 4(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 8(t1)
	slliw t3, t3, 2
	add t3, s5, t3
	lw t4, 0(t3)
	lw t5, 8(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t1, 12(t1)
	slliw t1, t1, 2
	add t1, s5, t1
	lw t3, 0(t1)
	lw t2, 12(t2)
	addw t2, t3, t2
	sw t2, 0(t1)
	mv t2, a5
	addiw a5, a5, 4
	bge a5, a4, label504
	j label64
label61:
	slliw t1, a5, 2
	add t1, s3, t1
	lw t1, 0(t1)
	slliw t1, t1, 2
	add t1, s5, t1
	lw t2, 0(t1)
	slliw t3, a5, 2
	add t3, s4, t3
	lw t3, 0(t3)
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw a5, a5, 1
	bge a5, a4, label63
	j label61
label50:
	slliw a5, t1, 2
	add a5, s3, a5
	lw t2, 0(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	slliw t1, t1, 2
	add t1, s4, t1
	lw t4, 0(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 4(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 4(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 8(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 8(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw a5, 12(a5)
	slliw a5, a5, 2
	add a5, s5, a5
	lw t2, 0(a5)
	lw t1, 12(t1)
	mulw t1, a2, t1
	addw t1, t1, t2
	sw t1, 0(a5)
	mv t1, a4
	addiw a4, a4, 4
	bge a4, a3, label51
	j label50
label63:
	slliw a4, a2, 2
	add a4, s1, a4
	lw t1, 0(a4)
	lw a3, 4(a3)
	bge t1, a3, label382
	slliw a2, a2, 2
	add a2, s0, a2
	lw a2, 0(a2)
	addiw a2, a2, -1
	slliw a3, a1, 2
	add a3, s1, a3
	lw a3, 0(a3)
	addiw a4, t1, 4
	bge a4, a3, label51
	j label50
label53:
	slliw a5, t1, 2
	add a5, s3, a5
	lw t2, 0(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	slliw t1, t1, 2
	add t1, s4, t1
	lw t4, 0(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 4(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 4(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 8(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 8(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw a5, 12(a5)
	slliw a5, a5, 2
	add a5, s5, a5
	lw t2, 0(a5)
	lw t1, 12(t1)
	mulw t1, a2, t1
	addw t1, t1, t2
	sw t1, 0(a5)
	mv t1, a4
	addiw a4, a4, 4
	bge a4, a3, label437
	j label53
label65:
	slliw t1, t2, 2
	add t1, s3, t1
	lw t3, 0(t1)
	slliw t3, t3, 2
	add t3, s5, t3
	lw t4, 0(t3)
	slliw t2, t2, 2
	add t2, s4, t2
	lw t5, 0(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 4(t1)
	slliw t3, t3, 2
	add t3, s5, t3
	lw t4, 0(t3)
	lw t5, 4(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 8(t1)
	slliw t3, t3, 2
	add t3, s5, t3
	lw t4, 0(t3)
	lw t5, 8(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t1, 12(t1)
	slliw t1, t1, 2
	add t1, s5, t1
	lw t3, 0(t1)
	lw t2, 12(t2)
	addw t2, t3, t2
	sw t2, 0(t1)
	mv t2, a5
	addiw a5, a5, 4
	bge a5, a4, label59
	j label65
label75:
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label624
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label624
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label624
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label624
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label624
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label624
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label624
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label624
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label624
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label624
	j label904
label624:
	mv a2, zero
	bge zero, s2, label66
	slliw a1, zero, 2
	add a3, s1, a1
	lw t1, 0(a3)
	lw a4, 4(a3)
	addiw a1, zero, 1
	bge t1, a4, label378
	slliw a4, a1, 2
	add a4, s1, a4
	lw a4, 0(a4)
	mv t2, t1
	addiw a5, t1, 4
	bge a5, a4, label59
	j label65
label12:
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label128
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label128
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label128
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label128
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label128
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label128
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label128
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label128
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label128
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label128
	j label893
label128:
	mv a2, zero
	bge zero, s2, label40
	slliw a1, zero, 2
	add a3, s1, a1
	lw t1, 0(a3)
	lw a4, 4(a3)
	addiw a1, zero, 1
	bge t1, a4, label147
	slliw a4, a1, 2
	add a4, s1, a4
	lw a4, 0(a4)
	mv t2, t1
	addiw a5, t1, 4
	bge a5, a4, label21
label27:
	slliw t1, t2, 2
	add t1, s3, t1
	lw t3, 0(t1)
	slliw t3, t3, 2
	add t3, s0, t3
	lw t4, 0(t3)
	slliw t2, t2, 2
	add t2, s4, t2
	lw t5, 0(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 4(t1)
	slliw t3, t3, 2
	add t3, s0, t3
	lw t4, 0(t3)
	lw t5, 4(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 8(t1)
	slliw t3, t3, 2
	add t3, s0, t3
	lw t4, 0(t3)
	lw t5, 8(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t1, 12(t1)
	slliw t1, t1, 2
	add t1, s0, t1
	lw t3, 0(t1)
	lw t2, 12(t2)
	addw t2, t3, t2
	sw t2, 0(t1)
	mv t2, a5
	addiw a5, a5, 4
	bge a5, a4, label21
	j label27
label35:
	addiw a4, t1, 4
	bge a4, a3, label307
	j label39
label307:
	mv a4, t1
label37:
	slliw a5, a4, 2
	add a5, s3, a5
	lw a5, 0(a5)
	slliw a5, a5, 2
	add a5, s0, a5
	lw t1, 0(a5)
	slliw t2, a4, 2
	add t2, s4, t2
	lw t2, 0(t2)
	mulw t2, a2, t2
	addw t1, t2, t1
	sw t1, 0(a5)
	addiw a4, a4, 1
	bge a4, a3, label323
	j label37
label323:
	mv a2, a1
	bge a1, s2, label40
	slliw a1, a1, 2
	add a3, s1, a1
	lw t1, 0(a3)
	lw a4, 4(a3)
	addiw a1, a2, 1
	bge t1, a4, label147
	slliw a4, a1, 2
	add a4, s1, a4
	lw a4, 0(a4)
	mv t2, t1
	addiw a5, t1, 4
	bge a5, a4, label21
	j label27
label21:
	addiw a5, t2, 4
	bge a5, a4, label160
	j label26
label160:
	mv a5, t2
label23:
	slliw t1, a5, 2
	add t1, s3, t1
	lw t1, 0(t1)
	slliw t1, t1, 2
	add t1, s0, t1
	lw t2, 0(t1)
	slliw t3, a5, 2
	add t3, s4, t3
	lw t3, 0(t3)
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw a5, a5, 1
	bge a5, a4, label25
	j label23
label25:
	slliw a4, a2, 2
	add a4, s1, a4
	lw t1, 0(a4)
	lw a3, 4(a3)
	bge t1, a3, label252
	slliw a2, a2, 2
	add a2, s5, a2
	lw a2, 0(a2)
	addiw a2, a2, -1
	slliw a3, a1, 2
	add a3, s1, a3
	lw a3, 0(a3)
	addiw a4, t1, 4
	bge a4, a3, label35
label34:
	slliw a5, t1, 2
	add a5, s3, a5
	lw t2, 0(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	slliw t1, t1, 2
	add t1, s4, t1
	lw t4, 0(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 4(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 4(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 8(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 8(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw a5, 12(a5)
	slliw a5, a5, 2
	add a5, s0, a5
	lw t2, 0(a5)
	lw t1, 12(t1)
	mulw t1, a2, t1
	addw t1, t1, t2
	sw t1, 0(a5)
	mv t1, a4
	addiw a4, a4, 4
	bge a4, a3, label35
	j label34
label39:
	slliw a5, t1, 2
	add a5, s3, a5
	lw t2, 0(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	slliw t1, t1, 2
	add t1, s4, t1
	lw t4, 0(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 4(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 4(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 8(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 8(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw a5, 12(a5)
	slliw a5, a5, 2
	add a5, s0, a5
	lw t2, 0(a5)
	lw t1, 12(t1)
	mulw t1, a2, t1
	addw t1, t1, t2
	sw t1, 0(a5)
	mv t1, a4
	addiw a4, a4, 4
	bge a4, a3, label307
	j label39
label26:
	slliw t1, t2, 2
	add t1, s3, t1
	lw t3, 0(t1)
	slliw t3, t3, 2
	add t3, s0, t3
	lw t4, 0(t3)
	slliw t2, t2, 2
	add t2, s4, t2
	lw t5, 0(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 4(t1)
	slliw t3, t3, 2
	add t3, s0, t3
	lw t4, 0(t3)
	lw t5, 4(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 8(t1)
	slliw t3, t3, 2
	add t3, s0, t3
	lw t4, 0(t3)
	lw t5, 8(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t1, 12(t1)
	slliw t1, t1, 2
	add t1, s0, t1
	lw t3, 0(t1)
	lw t2, 12(t2)
	addw t2, t3, t2
	sw t2, 0(t1)
	mv t2, a5
	addiw a5, a5, 4
	bge a5, a4, label160
	j label26
label96:
	mv a2, zero
	bge zero, s2, label40
	slliw a1, zero, 2
	add a3, s1, a1
	lw t1, 0(a3)
	lw a4, 4(a3)
	addiw a1, zero, 1
	bge t1, a4, label147
	slliw a4, a1, 2
	add a4, s1, a4
	lw a4, 0(a4)
	mv t2, t1
	addiw a5, t1, 4
	bge a5, a4, label21
	j label27
label898:
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label7
	j label864
label67:
	li a0, 47
	jal _sysy_stoptime
	mv a0, s2
	mv a1, s0
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s4, 24(sp)
	ld s3, 32(sp)
	ld s2, 40(sp)
	ld s1, 48(sp)
	addi sp, sp, 56
	ret
label40:
	ble s2, zero, label364
	mv a1, zero
	addiw a2, zero, 4
	bge a2, s2, label70
	slliw a1, zero, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label70
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label70
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label70
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label70
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label70
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label70
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label70
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label70
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label70
	j label899
label147:
	mv a3, a4
	bge t1, a4, label252
	slliw a2, a2, 2
	add a2, s5, a2
	lw a2, 0(a2)
	addiw a2, a2, -1
	slliw a3, a1, 2
	add a3, s1, a3
	lw a3, 0(a3)
	addiw a4, t1, 4
	bge a4, a3, label35
	j label34
label252:
	mv a2, a1
	bge a1, s2, label40
	slliw a1, a1, 2
	add a3, s1, a1
	lw t1, 0(a3)
	lw a4, 4(a3)
	addiw a1, a2, 1
	bge t1, a4, label147
	slliw a4, a1, 2
	add a4, s1, a4
	lw a4, 0(a4)
	mv t2, t1
	addiw a5, t1, 4
	bge a5, a4, label21
	j label27
label904:
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label624
	j label904
label893:
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label128
	j label893
label70:
	addiw a2, a1, 4
	bge a2, s2, label73
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label73
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label73
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label73
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label73
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label73
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label73
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label73
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label73
	j label900
label73:
	addiw a2, a1, 4
	bge a2, s2, label75
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label75
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label75
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label75
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label75
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label75
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label75
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label75
	j label881
label899:
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label70
	j label899
label900:
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label73
	j label900
label881:
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label75
label903:
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label75
	j label903
label870:
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label12
	j label892
label867:
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label10
	j label889
label886:
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label7
	j label886
label889:
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label10
	j label889
label892:
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s2, label12
	j label892
