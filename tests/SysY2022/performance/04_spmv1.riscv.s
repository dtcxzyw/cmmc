.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
x:
	.zero	400040
.align 8
y:
	.zero	12000000
.align 8
v:
	.zero	12000000
.align 8
a:
	.zero	400040
.align 8
b:
	.zero	400040
.text
.p2align 2
.globl main
main:
	addi sp, sp, -88
pcrel575:
	auipc a1, %pcrel_hi(x)
	sd ra, 0(sp)
	sd s4, 8(sp)
	addi s4, a1, %pcrel_lo(pcrel575)
	sd s1, 16(sp)
	sd s6, 24(sp)
	sd s2, 32(sp)
	sd s3, 40(sp)
	sd s0, 48(sp)
	sd s5, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	mv a0, s4
	jal getarray
pcrel576:
	auipc a1, %pcrel_hi(y)
	mv s1, a0
	addi s2, a1, %pcrel_lo(pcrel576)
	mv a0, s2
	jal getarray
pcrel577:
	auipc a1, %pcrel_hi(v)
	addi s3, a1, %pcrel_lo(pcrel577)
	mv a0, s3
	jal getarray
pcrel578:
	auipc a1, %pcrel_hi(a)
	addi s0, a1, %pcrel_lo(pcrel578)
	mv a0, s0
	jal getarray
	li a0, 39
	jal _sysy_starttime
	li a3, 16
	li a4, 100
pcrel579:
	auipc a2, %pcrel_hi(b)
	mv a5, zero
	addiw a0, s1, -21
	addiw a1, s1, -5
	addiw s5, s1, -1
	addi s1, a2, %pcrel_lo(pcrel579)
	li a2, 4
.p2align 2
label2:
	bgt s5, zero, label41
	j label69
.p2align 2
label529:
	addiw a5, a5, 1
	blt a5, a4, label2
	j label21
.p2align 2
label41:
	ble s5, a2, label407
	ble a1, a3, label410
	mv t1, zero
	j label45
.p2align 2
label43:
	sh2add t0, t1, s1
	addiw t1, t1, 4
	sw zero, 0(t0)
	sw zero, 4(t0)
	sw zero, 8(t0)
	sw zero, 12(t0)
	bgt a1, t1, label43
.p2align 2
label420:
	mv t0, t1
	sh2add t2, t1, s1
	addiw t0, t1, 1
	sw zero, 0(t2)
	bgt s5, t0, label47
	j label538
.p2align 2
label45:
	sh2add t0, t1, s1
	addiw t1, t1, 16
	sd zero, 0(t0)
	sd zero, 8(t0)
	sd zero, 16(t0)
	sd zero, 24(t0)
	sd zero, 32(t0)
	sd zero, 40(t0)
	sd zero, 48(t0)
	sd zero, 56(t0)
	bgt a0, t1, label45
	sh2add t0, t1, s1
	addiw t1, t1, 4
	sw zero, 0(t0)
	sw zero, 4(t0)
	sw zero, 8(t0)
	sw zero, 12(t0)
	bgt a1, t1, label43
	mv t0, t1
	sh2add t2, t1, s1
	addiw t0, t1, 1
	sw zero, 0(t2)
	ble s5, t0, label550
.p2align 2
label47:
	sh2add t2, t0, s1
	addiw t0, t0, 1
	sw zero, 0(t2)
	bgt s5, t0, label47
.p2align 2
label449:
	mv t3, zero
	ble s5, zero, label73
.p2align 2
label6:
	addiw t0, t3, 1
	sh2add t2, t3, s4
	sh2add t1, t0, s4
	lw t4, 0(t2)
	lw t1, 0(t1)
	bge t4, t1, label84
	addiw t5, t4, 4
	addiw t2, t1, -4
	ble t1, t5, label90
	mv t6, t4
	j label15
.p2align 2
label8:
	sh2add a6, t6, s2
	sh2add s7, t6, s3
	lw a7, 0(a6)
	addiw t6, t6, 1
	sh2add a6, a7, s1
	lw a7, 0(a6)
	lw s6, 0(s7)
	addw a7, a7, s6
	sw a7, 0(a6)
	bgt t1, t6, label8
	sh2add a6, t3, s0
	lw t6, 0(a6)
	addi t3, t6, -1
	bgt t1, t5, label13
.p2align 2
label11:
	sh2add t5, t4, s2
	sh2add a6, t4, s3
	lw t6, 0(t5)
	addiw t4, t4, 1
	sh2add t2, t6, s1
	lw t5, 0(t2)
	lw a7, 0(a6)
	mulw t6, t3, a7
	addw t5, t5, t6
	sw t5, 0(t2)
	bgt t1, t4, label11
	mv t3, t0
	bgt s5, t0, label6
	j label525
.p2align 2
label13:
	sh2add t5, t4, s2
	lw t6, 0(t5)
	sh2add a6, t6, s1
	sh2add t6, t4, s3
	addiw t4, t4, 4
	lw a7, 0(a6)
	lw s6, 0(t6)
	mulw s7, t3, s6
	addw a7, a7, s7
	sw a7, 0(a6)
	lw a7, 4(t5)
	sh2add a6, a7, s1
	lw a7, 0(a6)
	lw s6, 4(t6)
	mulw s7, t3, s6
	addw a7, a7, s7
	sw a7, 0(a6)
	lw a7, 8(t5)
	sh2add a6, a7, s1
	lw a7, 0(a6)
	lw s6, 8(t6)
	mulw s7, t3, s6
	addw a7, a7, s7
	sw a7, 0(a6)
	lw a6, 12(t5)
	sh2add t5, a6, s1
	lw a6, 0(t5)
	lw t6, 12(t6)
	mulw a7, t3, t6
	addw a6, a6, a7
	sw a6, 0(t5)
	bgt t2, t4, label13
	j label11
.p2align 2
label15:
	sh2add a6, t6, s2
	lw a7, 0(a6)
	sh2add s6, a7, s1
	sh2add a7, t6, s3
	addiw t6, t6, 4
	lw s7, 0(s6)
	lw s8, 0(a7)
	addw s7, s7, s8
	sw s7, 0(s6)
	lw s8, 4(a6)
	sh2add s6, s8, s1
	lw s7, 0(s6)
	lw s8, 4(a7)
	addw s9, s7, s8
	sw s9, 0(s6)
	lw s8, 8(a6)
	sh2add s6, s8, s1
	lw s7, 0(s6)
	lw s8, 8(a7)
	addw s9, s7, s8
	sw s9, 0(s6)
	lw s7, 12(a6)
	sh2add a6, s7, s1
	lw s6, 0(a6)
	lw a7, 12(a7)
	addw s7, s6, a7
	sw s7, 0(a6)
	bgt t2, t6, label15
	sh2add a6, t6, s2
	sh2add s7, t6, s3
	lw a7, 0(a6)
	addiw t6, t6, 1
	sh2add a6, a7, s1
	lw a7, 0(a6)
	lw s6, 0(s7)
	addw a7, a7, s6
	sw a7, 0(a6)
	bgt t1, t6, label8
	sh2add a6, t3, s0
	lw t6, 0(a6)
	addi t3, t6, -1
	bgt t1, t5, label13
	j label11
.p2align 2
label525:
	ble s5, zero, label522
.p2align 2
label33:
	ble s5, a2, label362
	ble a1, a3, label365
	mv t1, zero
	j label37
.p2align 2
label35:
	sh2add t0, t1, s0
	addiw t1, t1, 4
	sw zero, 0(t0)
	sw zero, 4(t0)
	sw zero, 8(t0)
	sw zero, 12(t0)
	bgt a1, t1, label35
.p2align 2
label375:
	mv t0, t1
	sh2add t2, t1, s0
	addiw t0, t1, 1
	sw zero, 0(t2)
	bgt s5, t0, label39
	j label533
.p2align 2
label37:
	sh2add t0, t1, s0
	addiw t1, t1, 16
	sd zero, 0(t0)
	sd zero, 8(t0)
	sd zero, 16(t0)
	sd zero, 24(t0)
	sd zero, 32(t0)
	sd zero, 40(t0)
	sd zero, 48(t0)
	sd zero, 56(t0)
	bgt a0, t1, label37
	sh2add t0, t1, s0
	addiw t1, t1, 4
	sw zero, 0(t0)
	sw zero, 4(t0)
	sw zero, 8(t0)
	sw zero, 12(t0)
	bgt a1, t1, label35
	mv t0, t1
	sh2add t2, t1, s0
	addiw t0, t1, 1
	sw zero, 0(t2)
	ble s5, t0, label548
.p2align 2
label39:
	sh2add t2, t0, s0
	addiw t0, t0, 1
	sw zero, 0(t2)
	bgt s5, t0, label39
.p2align 2
label404:
	mv t3, zero
	ble s5, zero, label20
.p2align 2
label22:
	addiw t0, t3, 1
	sh2add t2, t3, s4
	sh2add t1, t0, s4
	lw t4, 0(t2)
	lw t1, 0(t1)
	bge t4, t1, label233
	addiw t5, t4, 4
	addiw t2, t1, -4
	ble t1, t5, label239
	mv t6, t4
	j label31
.p2align 2
label24:
	sh2add a6, t6, s2
	sh2add s6, t6, s3
	lw a7, 0(a6)
	addiw t6, t6, 1
	sh2add a6, a7, s0
	lw a7, 0(a6)
	lw s7, 0(s6)
	addw a7, a7, s7
	sw a7, 0(a6)
	bgt t1, t6, label24
	sh2add a6, t3, s1
	lw t6, 0(a6)
	addi t3, t6, -1
	bgt t1, t5, label29
.p2align 2
label27:
	sh2add t5, t4, s2
	sh2add a7, t4, s3
	lw t6, 0(t5)
	addiw t4, t4, 1
	sh2add t2, t6, s0
	lw t5, 0(t2)
	lw t6, 0(a7)
	mulw a6, t3, t6
	addw t5, t5, a6
	sw t5, 0(t2)
	bgt t1, t4, label27
	mv t3, t0
	bgt s5, t0, label22
	j label529
.p2align 2
label29:
	sh2add t5, t4, s2
	lw t6, 0(t5)
	sh2add a6, t6, s0
	sh2add t6, t4, s3
	addiw t4, t4, 4
	lw a7, 0(a6)
	lw s6, 0(t6)
	mulw s7, t3, s6
	addw a7, a7, s7
	sw a7, 0(a6)
	lw a7, 4(t5)
	sh2add a6, a7, s0
	lw a7, 0(a6)
	lw s6, 4(t6)
	mulw s7, t3, s6
	addw a7, a7, s7
	sw a7, 0(a6)
	lw a7, 8(t5)
	sh2add a6, a7, s0
	lw a7, 0(a6)
	lw s6, 8(t6)
	mulw s7, t3, s6
	addw a7, a7, s7
	sw a7, 0(a6)
	lw a7, 12(t5)
	sh2add t5, a7, s0
	lw a6, 0(t5)
	lw a7, 12(t6)
	mulw s6, t3, a7
	addw t6, a6, s6
	sw t6, 0(t5)
	bgt t2, t4, label29
	j label27
.p2align 2
label31:
	sh2add a6, t6, s2
	lw a7, 0(a6)
	sh2add s6, a7, s0
	sh2add a7, t6, s3
	addiw t6, t6, 4
	lw s7, 0(s6)
	lw s8, 0(a7)
	addw s7, s7, s8
	sw s7, 0(s6)
	lw s8, 4(a6)
	sh2add s6, s8, s0
	lw s7, 0(s6)
	lw s8, 4(a7)
	addw s9, s7, s8
	sw s9, 0(s6)
	lw s8, 8(a6)
	sh2add s6, s8, s0
	lw s7, 0(s6)
	lw s9, 8(a7)
	addw s8, s7, s9
	sw s8, 0(s6)
	lw s7, 12(a6)
	sh2add a6, s7, s0
	lw s6, 0(a6)
	lw s7, 12(a7)
	addw a7, s6, s7
	sw a7, 0(a6)
	bgt t2, t6, label31
	sh2add a6, t6, s2
	sh2add s6, t6, s3
	lw a7, 0(a6)
	addiw t6, t6, 1
	sh2add a6, a7, s0
	lw a7, 0(a6)
	lw s7, 0(s6)
	addw a7, a7, s7
	sw a7, 0(a6)
	bgt t1, t6, label24
	sh2add a6, t3, s1
	lw t6, 0(a6)
	addi t3, t6, -1
	bgt t1, t5, label29
	j label27
.p2align 2
label90:
	mv t6, t4
	sh2add a6, t4, s2
	sh2add s7, t4, s3
	lw a7, 0(a6)
	addiw t6, t4, 1
	sh2add a6, a7, s1
	lw a7, 0(a6)
	lw s6, 0(s7)
	addw a7, a7, s6
	sw a7, 0(a6)
	bgt t1, t6, label8
	sh2add a6, t3, s0
	lw t6, 0(a6)
	addi t3, t6, -1
	bgt t1, t5, label13
	j label11
.p2align 2
label239:
	mv t6, t4
	sh2add a6, t4, s2
	sh2add s6, t4, s3
	lw a7, 0(a6)
	addiw t6, t4, 1
	sh2add a6, a7, s0
	lw a7, 0(a6)
	lw s7, 0(s6)
	addw a7, a7, s7
	sw a7, 0(a6)
	bgt t1, t6, label24
	sh2add a6, t3, s1
	lw t6, 0(a6)
	addi t3, t6, -1
	bgt t1, t5, label29
	j label27
label69:
	mv t3, zero
	bgt s5, zero, label6
	j label73
label522:
	mv t3, zero
	bgt s5, zero, label22
	j label20
label73:
	bgt s5, zero, label33
	j label522
.p2align 2
label84:
	mv t3, t0
	bgt s5, t0, label6
	j label73
label20:
	addiw a5, a5, 1
	blt a5, a4, label2
	j label21
.p2align 2
label233:
	mv t3, t0
	bgt s5, t0, label22
	j label20
.p2align 2
label407:
	mv t0, zero
	mv t2, s1
	li t0, 1
	sw zero, 0(s1)
	bgt s5, t0, label47
	j label449
.p2align 2
label362:
	mv t0, zero
	mv t2, s0
	li t0, 1
	sw zero, 0(s0)
	bgt s5, t0, label39
	j label404
.p2align 2
label410:
	mv t1, zero
	mv t0, s1
	li t1, 4
	sw zero, 0(s1)
	sw zero, 4(s1)
	sw zero, 8(s1)
	sw zero, 12(s1)
	bgt a1, t1, label43
	j label420
.p2align 2
label365:
	mv t1, zero
	mv t0, s0
	li t1, 4
	sw zero, 0(s0)
	sw zero, 4(s0)
	sw zero, 8(s0)
	sw zero, 12(s0)
	bgt a1, t1, label35
	j label375
label21:
	li a0, 47
	jal _sysy_stoptime
	mv a0, s5
	mv a1, s1
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s1, 16(sp)
	ld s6, 24(sp)
	ld s2, 32(sp)
	ld s3, 40(sp)
	ld s0, 48(sp)
	ld s5, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	addi sp, sp, 88
	ret
.p2align 2
label538:
	mv t3, zero
	bgt s5, zero, label6
	j label73
.p2align 2
label533:
	mv t3, zero
	bgt s5, zero, label22
	j label20
.p2align 2
label550:
	mv t3, zero
	bgt s5, zero, label6
	j label73
.p2align 2
label548:
	mv t3, zero
	bgt s5, zero, label22
	j label20
