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
.p2align 2
	addi sp, sp, -64
pcrel240:
	auipc a0, %pcrel_hi(a)
	sd s3, 56(sp)
	addi s3, a0, %pcrel_lo(pcrel240)
	sd s1, 48(sp)
	mv a0, zero
	sd s6, 40(sp)
	sd s2, 32(sp)
	sd s4, 24(sp)
	sd s5, 16(sp)
	sd s0, 8(sp)
	sd ra, 0(sp)
.p2align 2
label2:
	sh2add a1, a0, s3
	li a2, 4087
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	addi a1, a0, 8
	addi a0, a0, 4
	blt a1, a2, label2
	sh2add a1, a0, s3
	addi a0, a0, 1
	sw zero, 0(a1)
	li a1, 4087
	blt a0, a1, label4
label238:
	auipc a1, %pcrel_hi(b)
	addi a0, a1, %pcrel_lo(label238)
	mv a1, zero
	j label7
label4:
	sh2add a1, a0, s3
	addi a0, a0, 1
	sw zero, 0(a1)
	li a1, 4087
	blt a0, a1, label4
	j label238
.p2align 2
label7:
	sh2add a2, a1, a0
	li a3, 3127
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	addi a2, a1, 8
	addi a1, a1, 4
	blt a2, a3, label7
	sh2add a2, a1, a0
	addi a1, a1, 1
	sw zero, 0(a2)
	li a2, 3127
	bge a1, a2, label11
label9:
	sh2add a2, a1, a0
	addi a1, a1, 1
	sw zero, 0(a2)
	li a2, 3127
	blt a1, a2, label9
label11:
	li a3, 4584
	li a1, 9
	addi s1, a0, 1416
	mv s6, zero
	add a2, s3, a3
	mv s0, s1
	li a3, 1
	sw a1, 0(a2)
	li a2, 2
	sw a3, 1420(a0)
	li a3, 3
	sw a2, 1424(a0)
	li a2, 8040
	sw a3, 1428(a0)
	sw a1, 1452(a0)
	add a1, a0, a2
	lw s2, 1416(a0)
	li a2, 12108
	add a0, a0, a2
	lw s4, 0(a1)
	lw s5, 0(a0)
.p2align 2
label12:
	sh2add a1, s6, s0
	lw a0, 0(a1)
	jal putint
	li a0, 10
	addiw s6, s6, 1
	blt s6, a0, label12
	jal putch
	li a1, 4584
	add a2, s3, a1
	lw a0, 0(a2)
	jal putint
	li a0, 10
	jal putch
	li a1, 10
	blt s5, a1, label19
label15:
	addiw a1, s2, 3
	sh1add a0, a1, a1
	mv s1, a0
	bge a0, zero, label17
	j label16
label19:
	addiw a0, s5, 4
	li a1, 10
	blt a0, a1, label109
	mv a0, s5
	mv a1, s4
	j label20
label109:
	mv a0, s4
	mv a1, s5
	j label23
label20:
	sh2add a2, a0, s1
	li a4, 128875
	li a5, -1932965947
	addiw a0, a0, 1
	mulw a3, a1, a4
	addiw a1, a1, 7
	mul t1, a3, a5
	srli t0, t1, 32
	li t1, 3724
	add a4, t0, a3
	srliw t0, a4, 31
	sraiw a5, a4, 11
	add a4, t0, a5
	mulw a5, a4, t1
	subw a3, a3, a5
	sw a3, 0(a2)
	li a2, 10
	blt a0, a2, label20
	j label15
label23:
	sh2add a2, a1, s1
	li a3, 128875
	li a4, -1932965947
	mulw t0, a0, a3
	mul t1, t0, a4
	srli t2, t1, 32
	add a5, t2, t0
	srliw t3, a5, 31
	sraiw t1, a5, 11
	li a5, 3724
	add t2, t3, t1
	mulw t1, t2, a5
	subw t0, t0, t1
	addiw t1, a0, 7
	sw t0, 0(a2)
	mulw t0, t1, a3
	mul t2, t0, a4
	srli t3, t2, 32
	add t1, t3, t0
	srliw t4, t1, 31
	sraiw t2, t1, 11
	add t3, t4, t2
	mulw t1, t3, a5
	subw t0, t0, t1
	addiw t1, a0, 14
	sw t0, 4(a2)
	mulw t0, t1, a3
	mul t2, t0, a4
	srli t3, t2, 32
	add t1, t3, t0
	srliw t3, t1, 31
	sraiw t2, t1, 11
	add t1, t3, t2
	mulw t2, t1, a5
	addiw t1, a0, 21
	subw t0, t0, t2
	mulw a3, t1, a3
	sw t0, 8(a2)
	mul t0, a3, a4
	srli t1, t0, 32
	add a4, t1, a3
	srliw t1, a4, 31
	sraiw t0, a4, 11
	add a4, t1, t0
	mulw a5, a4, a5
	li a4, 10
	subw t0, a3, a5
	addiw a3, a1, 8
	addiw a1, a1, 4
	sw t0, 12(a2)
	addiw a2, a0, 28
	blt a3, a4, label142
	mv a0, a1
	mv a1, a2
	j label20
label142:
	mv a0, a2
	j label23
label16:
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
.p2align 2
label17:
	sh2add a1, s1, s0
	lw a0, 0(a1)
	jal putint
	li a0, 32
	jal putch
	addiw s1, s1, -1
	bge s1, zero, label17
	j label16
