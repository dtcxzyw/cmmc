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
.p2align 2
	addi sp, sp, -56
pcrel586:
	auipc a1, %pcrel_hi(x)
	sd s4, 48(sp)
	addi a0, a1, %pcrel_lo(pcrel586)
	sd s5, 40(sp)
	mv s4, a0
	sd s0, 32(sp)
	sd s2, 24(sp)
	sd s3, 16(sp)
	sd s1, 8(sp)
	sd ra, 0(sp)
	jal getarray
pcrel587:
	auipc a1, %pcrel_hi(y)
	addiw s5, a0, -1
	addi a0, a1, %pcrel_lo(pcrel587)
	mv s2, a0
	jal getarray
pcrel588:
	auipc a1, %pcrel_hi(v)
	addi a0, a1, %pcrel_lo(pcrel588)
	mv s3, a0
	jal getarray
pcrel589:
	auipc a1, %pcrel_hi(a)
	addi a0, a1, %pcrel_lo(pcrel589)
	mv s1, a0
	jal getarray
	li a0, 39
	jal _sysy_starttime
	mv a0, zero
pcrel590:
	auipc a1, %pcrel_hi(b)
	addi s0, a1, %pcrel_lo(pcrel590)
.p2align 2
label2:
	bgt s5, zero, label40
	mv a3, zero
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label27
.p2align 2
label40:
	li a2, 4
	bgt s5, a2, label389
	mv a1, zero
	mv a3, s0
	li a1, 1
	sw zero, 0(s0)
	bgt s5, a1, label43
	mv a3, zero
	bgt s5, zero, label6
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label27
.p2align 2
label28:
	addiw a2, a3, 1
	sh2add a5, a3, s4
	sh2add a1, a2, s4
	lw a4, 0(a5)
	lw a1, 0(a1)
	blt a4, a1, label29
	mv a3, a2
	bgt s5, a2, label28
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label27
.p2align 2
label36:
	sh2add a5, a4, s2
	lw t0, 0(a5)
	sh2add t1, t0, s1
	sh2add t0, a4, s3
	lw t2, 0(t1)
	lw t4, 0(t0)
	mulw t3, a3, t4
	addw t2, t2, t3
	sw t2, 0(t1)
	lw t3, 4(a5)
	sh2add t1, t3, s1
	lw t2, 0(t1)
	lw t4, 4(t0)
	mulw t3, a3, t4
	addw t2, t2, t3
	sw t2, 0(t1)
	lw t3, 8(a5)
	sh2add t1, t3, s1
	lw t2, 0(t1)
	lw t4, 8(t0)
	mulw t3, a3, t4
	addw t2, t2, t3
	sw t2, 0(t1)
	lw t3, 12(a5)
	sh2add a5, t3, s1
	lw t1, 0(a5)
	lw t0, 12(t0)
	mulw t2, a3, t0
	addw t1, t1, t2
	sw t1, 0(a5)
	addiw a5, a4, 8
	addiw a4, a4, 4
	bgt a1, a5, label36
.p2align 2
label38:
	sh2add t0, a4, s2
	sh2add t2, a4, s3
	lw t1, 0(t0)
	addiw a4, a4, 1
	sh2add a5, t1, s1
	lw t0, 0(a5)
	lw t3, 0(t2)
	mulw t1, a3, t3
	addw t0, t0, t1
	sw t0, 0(a5)
	bgt a1, a4, label38
	mv a3, a2
	bgt s5, a2, label28
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label27
.p2align 2
label6:
	addiw a2, a3, 1
	sh2add a5, a3, s4
	sh2add a1, a2, s4
	lw a4, 0(a5)
	lw a1, 0(a1)
	blt a4, a1, label7
	mv a3, a2
	bgt s5, a2, label6
	bgt s5, zero, label19
	mv a3, zero
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label27
.p2align 2
label7:
	addiw a5, a4, 4
	bgt a1, a5, label83
	mv t0, a4
	sh2add t1, a4, s2
	lw t2, 0(t1)
	sh2add a5, t2, s0
	sh2add t2, a4, s3
	addiw t0, a4, 1
	lw t1, 0(a5)
	lw t3, 0(t2)
	addw t1, t1, t3
	sw t1, 0(a5)
	bgt a1, t0, label8
	blt a4, a1, label13
	mv a3, a2
	bgt s5, a2, label6
	bgt s5, zero, label19
	mv a3, zero
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label27
.p2align 2
label83:
	mv a5, a4
	j label10
.p2align 2
label8:
	sh2add t1, t0, s2
	lw t2, 0(t1)
	sh2add a5, t2, s0
	sh2add t2, t0, s3
	addiw t0, t0, 1
	lw t1, 0(a5)
	lw t3, 0(t2)
	addw t1, t1, t3
	sw t1, 0(a5)
	bgt a1, t0, label8
	blt a4, a1, label13
	mv a3, a2
	bgt s5, a2, label6
	bgt s5, zero, label19
	mv a3, zero
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label27
.p2align 2
label10:
	sh2add t0, a5, s2
	lw t1, 0(t0)
	sh2add t2, t1, s0
	sh2add t1, a5, s3
	lw t3, 0(t2)
	lw t4, 0(t1)
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t4, 4(t0)
	sh2add t2, t4, s0
	lw t3, 0(t2)
	lw t5, 4(t1)
	addw t4, t3, t5
	sw t4, 0(t2)
	lw t5, 8(t0)
	sh2add t2, t5, s0
	lw t3, 0(t2)
	lw t4, 8(t1)
	addw t5, t3, t4
	sw t5, 0(t2)
	lw t3, 12(t0)
	sh2add t0, t3, s0
	lw t2, 0(t0)
	lw t1, 12(t1)
	addw t3, t2, t1
	sw t3, 0(t0)
	addiw t0, a5, 8
	addiw a5, a5, 4
	bgt a1, t0, label10
	mv t0, a5
	sh2add t1, a5, s2
	lw t2, 0(t1)
	sh2add a5, t2, s0
	sh2add t2, t0, s3
	addiw t0, t0, 1
	lw t1, 0(a5)
	lw t3, 0(t2)
	addw t1, t1, t3
	sw t1, 0(a5)
	bgt a1, t0, label8
	blt a4, a1, label13
	mv a3, a2
	bgt s5, a2, label6
	bgt s5, zero, label19
	mv a3, zero
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label27
.p2align 2
label13:
	addiw a5, a4, 4
	sh2add t1, a3, s1
	lw t0, 0(t1)
	addi a3, t0, -1
	bgt a1, a5, label14
.p2align 2
label16:
	sh2add t0, a4, s2
	lw t1, 0(t0)
	sh2add a5, t1, s0
	sh2add t1, a4, s3
	addiw a4, a4, 1
	lw t0, 0(a5)
	lw t2, 0(t1)
	mulw t3, a3, t2
	addw t0, t0, t3
	sw t0, 0(a5)
	bgt a1, a4, label16
	mv a3, a2
	bgt s5, a2, label6
	bgt s5, zero, label19
	mv a3, zero
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label27
.p2align 2
label29:
	addiw a5, a4, 4
	bgt a1, a5, label259
	mv t0, a4
	sh2add t1, a4, s2
	lw t2, 0(t1)
	sh2add a5, t2, s1
	sh2add t2, a4, s3
	addiw t0, a4, 1
	lw t1, 0(a5)
	lw t3, 0(t2)
	addw t1, t1, t3
	sw t1, 0(a5)
	bgt a1, t0, label32
	blt a4, a1, label35
	mv a3, a2
	bgt s5, a2, label28
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label27
.p2align 2
label259:
	mv a5, a4
.p2align 2
label30:
	sh2add t0, a5, s2
	lw t1, 0(t0)
	sh2add t2, t1, s1
	sh2add t1, a5, s3
	lw t3, 0(t2)
	lw t4, 0(t1)
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t4, 4(t0)
	sh2add t2, t4, s1
	lw t3, 0(t2)
	lw t4, 4(t1)
	addw t5, t3, t4
	sw t5, 0(t2)
	lw t4, 8(t0)
	sh2add t2, t4, s1
	lw t3, 0(t2)
	lw t4, 8(t1)
	addw t5, t3, t4
	sw t5, 0(t2)
	lw t3, 12(t0)
	sh2add t0, t3, s1
	lw t2, 0(t0)
	lw t3, 12(t1)
	addw t1, t2, t3
	sw t1, 0(t0)
	addiw t0, a5, 8
	addiw a5, a5, 4
	bgt a1, t0, label30
	mv t0, a5
	sh2add t1, a5, s2
	lw t2, 0(t1)
	sh2add a5, t2, s1
	sh2add t2, t0, s3
	addiw t0, t0, 1
	lw t1, 0(a5)
	lw t3, 0(t2)
	addw t1, t1, t3
	sw t1, 0(a5)
	bgt a1, t0, label32
	blt a4, a1, label35
	mv a3, a2
	bgt s5, a2, label28
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label27
.p2align 2
label32:
	sh2add t1, t0, s2
	lw t2, 0(t1)
	sh2add a5, t2, s1
	sh2add t2, t0, s3
	addiw t0, t0, 1
	lw t1, 0(a5)
	lw t3, 0(t2)
	addw t1, t1, t3
	sw t1, 0(a5)
	bgt a1, t0, label32
	blt a4, a1, label35
	mv a3, a2
	bgt s5, a2, label28
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label27
.p2align 2
label14:
	sh2add a5, a4, s2
	lw t0, 0(a5)
	sh2add t1, t0, s0
	sh2add t0, a4, s3
	lw t2, 0(t1)
	lw t3, 0(t0)
	mulw t4, a3, t3
	addw t2, t2, t4
	sw t2, 0(t1)
	lw t3, 4(a5)
	sh2add t1, t3, s0
	lw t2, 0(t1)
	lw t4, 4(t0)
	mulw t3, a3, t4
	addw t2, t2, t3
	sw t2, 0(t1)
	lw t3, 8(a5)
	sh2add t1, t3, s0
	lw t2, 0(t1)
	lw t3, 8(t0)
	mulw t4, a3, t3
	addw t5, t2, t4
	sw t5, 0(t1)
	lw t2, 12(a5)
	sh2add a5, t2, s0
	lw t1, 0(a5)
	lw t3, 12(t0)
	mulw t2, a3, t3
	addw t0, t1, t2
	sw t0, 0(a5)
	addiw a5, a4, 8
	addiw a4, a4, 4
	bgt a1, a5, label14
	j label16
.p2align 2
label35:
	addiw a5, a4, 4
	sh2add t1, a3, s0
	lw t0, 0(t1)
	addi a3, t0, -1
	bgt a1, a5, label36
	j label38
.p2align 2
label19:
	li a2, 4
	bgt s5, a2, label216
	mv a1, zero
	mv a3, s1
	li a1, 1
	sw zero, 0(s1)
	bgt s5, a1, label20
	mv a3, zero
	bgt s5, zero, label28
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label27
.p2align 2
label216:
	mv a2, zero
	mv a3, s1
	li a1, 8
	sw zero, 0(s1)
	li a2, 4
	sw zero, 4(s1)
	sw zero, 8(s1)
	sw zero, 12(s1)
	bgt s5, a1, label22
	mv a1, a2
	sh2add a3, a2, s1
	addiw a1, a2, 1
	sw zero, 0(a3)
	bgt s5, a1, label20
	mv a3, zero
	bgt s5, zero, label28
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label27
.p2align 2
label389:
	mv a2, zero
.p2align 2
label41:
	sh2add a1, a2, s0
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	addiw a1, a2, 8
	addiw a2, a2, 4
	bgt s5, a1, label41
	mv a1, a2
	sh2add a3, a2, s0
	addiw a1, a2, 1
	sw zero, 0(a3)
	bgt s5, a1, label43
	mv a3, zero
	bgt s5, zero, label6
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label27
.p2align 2
label20:
	sh2add a3, a1, s1
	addiw a1, a1, 1
	sw zero, 0(a3)
	bgt s5, a1, label20
	mv a3, zero
	bgt s5, zero, label28
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label27
.p2align 2
label43:
	sh2add a3, a1, s0
	addiw a1, a1, 1
	sw zero, 0(a3)
	bgt s5, a1, label43
	mv a3, zero
	bgt s5, zero, label6
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label27
.p2align 2
label22:
	sh2add a3, a2, s1
	addiw a1, a2, 8
	sw zero, 0(a3)
	addiw a2, a2, 4
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	bgt s5, a1, label22
	mv a1, a2
	sh2add a3, a2, s1
	addiw a1, a2, 1
	sw zero, 0(a3)
	bgt s5, a1, label20
	mv a3, zero
	bgt s5, zero, label28
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
label27:
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
