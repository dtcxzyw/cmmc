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
pcrel867:
	auipc a0, %pcrel_hi(x)
	addi a0, a0, %pcrel_lo(pcrel867)
	mv s4, a0
	jal getarray
	addiw s5, a0, -1
pcrel868:
	auipc a0, %pcrel_hi(y)
	addi a0, a0, %pcrel_lo(pcrel868)
	mv s2, a0
	jal getarray
pcrel869:
	auipc a0, %pcrel_hi(v)
	addi a0, a0, %pcrel_lo(pcrel869)
	mv s3, a0
	jal getarray
pcrel870:
	auipc a0, %pcrel_hi(a)
	addi a0, a0, %pcrel_lo(pcrel870)
	mv s1, a0
	jal getarray
	li a0, 39
	jal _sysy_starttime
pcrel871:
	auipc a0, %pcrel_hi(b)
	addi s0, a0, %pcrel_lo(pcrel871)
	mv a0, zero
	ble s5, zero, label96
	mv a2, zero
	addiw a1, zero, 4
	ble s5, a1, label6
	sh2add a2, zero, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label6
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label6
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label6
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label6
	j label783
label96:
	mv a2, zero
	ble s5, zero, label40
	sh2add a4, zero, s4
	lw t0, 0(a4)
	lw a3, 4(a4)
	addiw a1, zero, 1
	bge t0, a3, label28
	sh2add a3, a1, s4
	lw a3, 0(a3)
	mv t1, t0
	addiw a5, t0, 4
	ble a3, a5, label22
	j label21
label22:
	addiw a5, t1, 4
	ble a3, a5, label194
	j label24
label194:
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
	ble a3, a5, label27
	sh2add t0, a5, s2
	lw t0, 0(t0)
	sh2add t0, t0, s0
	lw t1, 0(t0)
	sh2add t2, a5, s3
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	addiw a5, a5, 1
	ble a3, a5, label27
	sh2add t0, a5, s2
	lw t0, 0(t0)
	sh2add t0, t0, s0
	lw t1, 0(t0)
	sh2add t2, a5, s3
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	addiw a5, a5, 1
	ble a3, a5, label27
	sh2add t0, a5, s2
	lw t0, 0(t0)
	sh2add t0, t0, s0
	lw t1, 0(t0)
	sh2add t2, a5, s3
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	addiw a5, a5, 1
	ble a3, a5, label27
	sh2add t0, a5, s2
	lw t0, 0(t0)
	sh2add t0, t0, s0
	lw t1, 0(t0)
	sh2add t2, a5, s3
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	addiw a5, a5, 1
	ble a3, a5, label27
	sh2add t0, a5, s2
	lw t0, 0(t0)
	sh2add t0, t0, s0
	lw t1, 0(t0)
	sh2add t2, a5, s3
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	addiw a5, a5, 1
	ble a3, a5, label27
label820:
	sh2add t0, a5, s2
	lw t0, 0(t0)
	sh2add t0, t0, s0
	lw t1, 0(t0)
	sh2add t2, a5, s3
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	addiw a5, a5, 1
	ble a3, a5, label27
	j label820
label21:
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
	ble a3, a5, label22
	j label21
label24:
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
	ble a3, a5, label194
	j label24
label27:
	sh2add a3, a2, s4
	lw t0, 0(a3)
	lw a3, 4(a4)
label28:
	bge t0, a3, label252
	sh2add a2, a2, s1
	lw a2, 0(a2)
	sh2add a3, a1, s4
	addiw a2, a2, -1
	lw a3, 0(a3)
	addiw a4, t0, 4
	ble a3, a4, label35
	j label34
label252:
	mv a2, a1
	ble s5, a1, label40
	sh2add a4, a1, s4
	lw t0, 0(a4)
	lw a3, 4(a4)
	addiw a1, a1, 1
	bge t0, a3, label28
	sh2add a3, a1, s4
	lw a3, 0(a3)
	mv t1, t0
	addiw a5, t0, 4
	ble a3, a5, label22
	j label21
label35:
	addiw a4, t0, 4
	ble a3, a4, label307
label39:
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
	ble a3, a4, label307
	j label39
label34:
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
	ble a3, a4, label35
	j label34
label307:
	mv a4, t0
label37:
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
	ble a3, a4, label323
	j label37
label323:
	mv a2, a1
	ble s5, a1, label40
	sh2add a4, a1, s4
	lw t0, 0(a4)
	lw a3, 4(a4)
	addiw a1, a1, 1
	bge t0, a3, label28
	sh2add a3, a1, s4
	lw a3, 0(a3)
	mv t1, t0
	addiw a5, t0, 4
	ble a3, a5, label22
	j label21
label40:
	ble s5, zero, label364
	mv a2, zero
	addiw a1, zero, 4
	ble s5, a1, label43
	sh2add a2, zero, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label43
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label43
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label43
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label43
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label43
	j label822
label364:
	mv a2, zero
	ble s5, zero, label77
	sh2add a4, zero, s4
	lw t0, 0(a4)
	lw a3, 4(a4)
	addiw a1, zero, 1
	bge t0, a3, label55
	sh2add a3, a1, s4
	lw a3, 0(a3)
	mv t1, t0
	addiw a5, t0, 4
	ble a3, a5, label71
	j label70
label64:
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
	ble a3, a4, label490
	j label64
label490:
	mv a2, a1
	ble s5, a1, label77
	sh2add a4, a1, s4
	lw t0, 0(a4)
	lw a3, 4(a4)
	addiw a1, a1, 1
	bge t0, a3, label55
	sh2add a3, a1, s4
	lw a3, 0(a3)
	mv t1, t0
	addiw a5, t0, 4
	ble a3, a5, label71
	j label70
label77:
	addiw a0, a0, 1
	li a1, 100
	bge a0, a1, label78
	ble s5, zero, label96
	mv a2, zero
	addiw a1, zero, 4
	ble s5, a1, label6
	sh2add a2, zero, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label6
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label6
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label6
	j label832
label78:
	li a0, 47
	jal _sysy_stoptime
	mv a0, s5
	mv a1, s0
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s0, 32(sp)
	ld s5, 40(sp)
	ld s4, 48(sp)
	addi sp, sp, 56
	ret
label55:
	bge t0, a3, label419
	sh2add a2, a2, s0
	lw a2, 0(a2)
	sh2add a3, a1, s4
	addiw a2, a2, -1
	lw a3, 0(a3)
	addiw a4, t0, 4
	ble a3, a4, label62
	j label61
label419:
	mv a2, a1
	ble s5, a1, label77
	sh2add a4, a1, s4
	lw t0, 0(a4)
	lw a3, 4(a4)
	addiw a1, a1, 1
	bge t0, a3, label55
	sh2add a3, a1, s4
	lw a3, 0(a3)
	mv t1, t0
	addiw a5, t0, 4
	ble a3, a5, label71
	j label70
label61:
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
	ble a3, a4, label62
	j label61
label62:
	addiw a4, t0, 4
	ble a3, a4, label474
label66:
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
	ble a3, a4, label474
	j label66
label474:
	mv a4, t0
	j label64
label71:
	addiw a5, t1, 4
	ble a3, a5, label575
label76:
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
	ble a3, a5, label575
	j label76
label575:
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
	ble a3, a5, label75
	sh2add t0, a5, s2
	lw t0, 0(t0)
	sh2add t0, t0, s1
	lw t1, 0(t0)
	sh2add t2, a5, s3
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	addiw a5, a5, 1
	ble a3, a5, label75
	sh2add t0, a5, s2
	lw t0, 0(t0)
	sh2add t0, t0, s1
	lw t1, 0(t0)
	sh2add t2, a5, s3
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	addiw a5, a5, 1
	ble a3, a5, label75
	sh2add t0, a5, s2
	lw t0, 0(t0)
	sh2add t0, t0, s1
	lw t1, 0(t0)
	sh2add t2, a5, s3
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	addiw a5, a5, 1
	ble a3, a5, label75
	sh2add t0, a5, s2
	lw t0, 0(t0)
	sh2add t0, t0, s1
	lw t1, 0(t0)
	sh2add t2, a5, s3
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	addiw a5, a5, 1
	ble a3, a5, label75
	sh2add t0, a5, s2
	lw t0, 0(t0)
	sh2add t0, t0, s1
	lw t1, 0(t0)
	sh2add t2, a5, s3
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	addiw a5, a5, 1
	ble a3, a5, label75
label831:
	sh2add t0, a5, s2
	lw t0, 0(t0)
	sh2add t0, t0, s1
	lw t1, 0(t0)
	sh2add t2, a5, s3
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	addiw a5, a5, 1
	ble a3, a5, label75
	j label831
label70:
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
	ble a3, a5, label71
	j label70
label75:
	sh2add a3, a2, s4
	lw t0, 0(a3)
	lw a3, 4(a4)
	bge t0, a3, label419
	sh2add a2, a2, s0
	lw a2, 0(a2)
	sh2add a3, a1, s4
	addiw a2, a2, -1
	lw a3, 0(a3)
	addiw a4, t0, 4
	ble a3, a4, label62
	j label61
label43:
	addiw a1, a2, 4
	ble s5, a1, label374
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label374
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label374
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label374
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label374
	j label823
label374:
	mv a1, a2
	addiw a2, a2, 4
	ble s5, a2, label48
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s5, a2, label48
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s5, a2, label48
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s5, a2, label48
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s5, a2, label48
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s5, a2, label48
	j label826
label48:
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s5, a1, label391
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s5, a1, label391
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s5, a1, label391
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s5, a1, label391
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s5, a1, label391
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s5, a1, label391
	j label827
label391:
	mv a2, zero
	ble s5, zero, label77
	sh2add a4, zero, s4
	lw t0, 0(a4)
	lw a3, 4(a4)
	addiw a1, zero, 1
	bge t0, a3, label55
	sh2add a3, a1, s4
	lw a3, 0(a3)
	mv t1, t0
	addiw a5, t0, 4
	ble a3, a5, label71
	j label70
label827:
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s5, a1, label391
	j label827
label6:
	addiw a1, a2, 4
	ble s5, a1, label106
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label106
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label106
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label106
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label106
	j label811
label106:
	mv a1, a2
	addiw a2, a2, 4
	ble s5, a2, label11
	sh2add a1, a1, s0
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s5, a2, label11
	sh2add a1, a1, s0
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s5, a2, label11
	sh2add a1, a1, s0
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s5, a2, label11
	sh2add a1, a1, s0
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s5, a2, label11
	sh2add a1, a1, s0
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s5, a2, label11
	j label814
label11:
	sh2add a2, a1, s0
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s5, a1, label123
	sh2add a2, a1, s0
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s5, a1, label123
	sh2add a2, a1, s0
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s5, a1, label123
	sh2add a2, a1, s0
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s5, a1, label123
	sh2add a2, a1, s0
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s5, a1, label123
	sh2add a2, a1, s0
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s5, a1, label123
	j label815
label123:
	mv a2, zero
	ble s5, zero, label40
	sh2add a4, zero, s4
	lw t0, 0(a4)
	lw a3, 4(a4)
	addiw a1, zero, 1
	bge t0, a3, label28
	sh2add a3, a1, s4
	lw a3, 0(a3)
	mv t1, t0
	addiw a5, t0, 4
	ble a3, a5, label22
	j label21
label815:
	sh2add a2, a1, s0
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s5, a1, label123
	j label815
label823:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label374
	j label823
label822:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label43
	j label822
label826:
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s5, a2, label48
	j label826
label783:
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label6
	j label810
label832:
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label6
	j label783
label810:
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label6
	j label810
label811:
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label106
	j label811
label814:
	sh2add a1, a1, s0
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s5, a2, label11
	j label814