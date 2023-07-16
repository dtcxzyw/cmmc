.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
b:
	.zero	12508
.align 4
a:
	.zero	16348
.text
.globl main
main:
	addi sp, sp, -64
pcrel247:
	auipc a0, %pcrel_hi(a)
	sd s3, 56(sp)
	addi s3, a0, %pcrel_lo(pcrel247)
	sd s1, 48(sp)
	mv a0, zero
	sd s6, 40(sp)
	sd s2, 32(sp)
	sd s4, 24(sp)
	sd s5, 16(sp)
	sd s0, 8(sp)
	sd ra, 0(sp)
label2:
	addi a1, a0, 4
	li a2, 4087
	bge a1, a2, label5
	sh2add a2, a0, s3
	mv a0, a1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	j label2
label5:
	sh2add a1, a0, s3
	addi a0, a0, 1
	sw zero, 0(a1)
	li a1, 4087
	bge a0, a1, label7
	j label5
label7:
	auipc a1, %pcrel_hi(b)
	addi a0, a1, %pcrel_lo(label7)
	mv a1, zero
label8:
	addi a2, a1, 4
	li a3, 3127
	bge a2, a3, label10
	sh2add a1, a1, a0
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	j label8
label10:
	sh2add a2, a1, a0
	addi a1, a1, 1
	sw zero, 0(a2)
	li a2, 3127
	bge a1, a2, label12
	j label10
label12:
	li a3, 4584
	li a1, 9
	addi s1, a0, 1416
	addi s0, a0, 1416
	mv s6, zero
	add a2, s3, a3
	li a3, 2
	sw a1, 0(a2)
	li a2, 1
	sw a2, 1420(a0)
	li a2, 3
	sw a3, 1424(a0)
	sw a2, 1428(a0)
	sw a1, 1452(a0)
	li a1, 8040
	lw s2, 1416(a0)
	add a2, a0, a1
	li a1, 12108
	lw s4, 0(a2)
	add a2, a0, a1
	lw s5, 0(a2)
label13:
	sh2add a1, s6, s0
	lw a0, 0(a1)
	jal putint
	li a0, 10
	addiw s6, s6, 1
	bge s6, a0, label15
	j label13
label15:
	li a0, 10
	jal putch
	li a2, 4584
	add a1, s3, a2
	lw a0, 0(a1)
	jal putint
	li a0, 10
	jal putch
	li a1, 10
	bge s5, a1, label16
	mv a2, s5
	mv a0, s4
	addiw a1, s5, 4
	li a3, 10
	bge a1, a3, label23
	j label26
label16:
	addiw a0, s2, 3
	sh1add s1, a0, a0
	blt s1, zero, label17
label18:
	sh2add a1, s1, s0
	lw a0, 0(a1)
	jal putint
	li a0, 32
	jal putch
	addiw s1, s1, -1
	blt s1, zero, label17
	j label18
label26:
	sh2add a2, a2, s1
	li a3, 128875
	li a4, -1932965947
	mulw t0, a0, a3
	mul t2, t0, a4
	srli t1, t2, 32
	add a5, t1, t0
	srliw t3, a5, 31
	sraiw t2, a5, 11
	li a5, 3724
	add t1, t3, t2
	mulw t2, t1, a5
	addiw t1, a0, 7
	subw t0, t0, t2
	sw t0, 0(a2)
	mulw t0, t1, a3
	mul t2, t0, a4
	srli t3, t2, 32
	add t1, t3, t0
	srliw t3, t1, 31
	sraiw t2, t1, 11
	add t1, t3, t2
	mulw t2, t1, a5
	addiw t1, a0, 14
	subw t0, t0, t2
	sw t0, 4(a2)
	mulw t0, t1, a3
	mul t2, t0, a4
	srli t3, t2, 32
	add t1, t3, t0
	srliw t4, t1, 31
	sraiw t2, t1, 11
	add t3, t4, t2
	mulw t2, t3, a5
	subw t1, t0, t2
	addiw t0, a0, 21
	addiw a0, a0, 28
	mulw a3, t0, a3
	sw t1, 8(a2)
	mul t2, a3, a4
	srli t1, t2, 32
	add a4, t1, a3
	srliw t1, a4, 31
	sraiw t0, a4, 11
	add t2, t1, t0
	mulw a4, t2, a5
	subw a3, a3, a4
	sw a3, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	li a3, 10
	bge a1, a3, label23
	j label26
label23:
	sh2add a1, a2, s1
	li a5, 128875
	li a4, -1932965947
	addiw a2, a2, 1
	mulw a3, a0, a5
	addiw a0, a0, 7
	mul a5, a3, a4
	srli t0, a5, 32
	add a4, t0, a3
	srliw t0, a4, 31
	sraiw a5, a4, 11
	add a4, t0, a5
	li a5, 3724
	mulw t0, a4, a5
	subw a3, a3, t0
	sw a3, 0(a1)
	li a1, 10
	bge a2, a1, label16
	j label23
label17:
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s4, 24(sp)
	ld s2, 32(sp)
	ld s6, 40(sp)
	ld s1, 48(sp)
	ld s3, 56(sp)
	addi sp, sp, 64
	ret
