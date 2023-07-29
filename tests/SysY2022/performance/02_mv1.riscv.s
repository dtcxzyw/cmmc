.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
A:
	.zero	16160400
.align 8
B:
	.zero	8040
.align 8
C:
	.zero	8040
.text
.globl main
main:
.p2align 2
	addi sp, sp, -56
	sd s0, 48(sp)
	sd s5, 40(sp)
	sd s3, 32(sp)
	sd s2, 24(sp)
	sd s1, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s1, zero
	addiw s3, a0, -4
	mv s0, a0
pcrel323:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel323)
	ble s0, zero, label10
.p2align 2
label4:
	bgt s0, zero, label56
	addiw s1, s1, 1
	bgt s0, s1, label4
	j label10
.p2align 2
label7:
	jal getint
	sh2add a1, s5, s4
	addiw s5, s5, 1
	sw a0, 0(a1)
	bgt s0, s5, label7
	addiw s1, s1, 1
	bgt s0, s1, label4
	ble s0, zero, label10
pcrel324:
	auipc a0, %pcrel_hi(B)
	mv s4, zero
	addi s1, a0, %pcrel_lo(pcrel324)
	j label43
label10:
	li a0, 59
	jal _sysy_starttime
pcrel325:
	auipc a1, %pcrel_hi(B)
	addi a0, a1, %pcrel_lo(pcrel325)
pcrel326:
	auipc a1, %pcrel_hi(C)
	addi s1, a1, %pcrel_lo(pcrel326)
	mv a1, zero
	j label11
.p2align 2
label43:
	jal getint
	sh2add a1, s4, s1
	addiw s4, s4, 1
	sw a0, 0(a1)
	bgt s0, s4, label43
	j label10
.p2align 2
label11:
	bgt s0, zero, label37
	mv a2, zero
	li a4, 8040
	mv a5, zero
	mv a3, s2
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label11
	j label36
.p2align 2
label37:
	li a2, 4
	bgt s0, a2, label162
	mv a3, zero
	mv a4, s1
	li a3, 1
	sw zero, 0(s1)
	bgt s0, a3, label38
	mv a2, zero
	li a4, 8040
	mv a5, zero
	mv a3, s2
	bgt s0, zero, label83
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label11
	j label36
.p2align 2
label162:
	mv a2, zero
	mv a4, s1
	li a3, 4
	sd zero, 0(s1)
	sd zero, 8(s1)
	bgt s3, a3, label179
	sh2add a4, a3, s1
	addiw a3, a3, 1
	sw zero, 0(a4)
	bgt s0, a3, label38
	li a4, 8040
	mv a5, zero
	mv a3, s2
	bgt s0, zero, label83
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label11
	j label36
.p2align 2
label83:
	mv a4, zero
	bgt s0, zero, label18
	addiw a2, a2, 1
	li a4, 8040
	mulw a5, a2, a4
	add a3, s2, a5
	bgt s0, a2, label83
	mv a2, zero
	mv a5, zero
	mv a3, s2
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label11
	j label36
.p2align 2
label18:
	sh2add t0, a4, a3
	lw a5, 0(t0)
	beq a5, zero, label20
	sh2add t2, a4, a0
	sh2add t0, a2, s1
	lw t1, 0(t0)
	lw t2, 0(t2)
	mulw a5, a5, t2
	addw t1, t1, a5
	sw t1, 0(t0)
	addiw a4, a4, 1
	bgt s0, a4, label18
	addiw a2, a2, 1
	li a4, 8040
	mulw a5, a2, a4
	add a3, s2, a5
	bgt s0, a2, label83
	bgt s0, zero, label22
	mv a2, zero
	mv a5, zero
	mv a3, s2
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label11
	j label36
.p2align 2
label20:
	addiw a4, a4, 1
	bgt s0, a4, label18
	addiw a2, a2, 1
	li a4, 8040
	mulw a5, a2, a4
	add a3, s2, a5
	bgt s0, a2, label83
	bgt s0, zero, label22
	mv a2, zero
	mv a5, zero
	mv a3, s2
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label11
	j label36
.p2align 2
label22:
	li a2, 4
	bgt s0, a2, label110
	mv a3, zero
	mv a4, a0
	li a3, 1
	sw zero, 0(a0)
	bgt s0, a3, label25
	mv a2, zero
	li a4, 8040
	mv a5, zero
	mv a3, s2
	bgt s0, zero, label133
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label11
	j label36
.p2align 2
label110:
	mv a2, zero
.p2align 2
label23:
	sh2add a3, a2, a0
	sd zero, 0(a3)
	sd zero, 8(a3)
	addiw a3, a2, 4
	bgt s3, a3, label120
	sh2add a4, a3, a0
	addiw a3, a3, 1
	sw zero, 0(a4)
	bgt s0, a3, label25
	mv a2, zero
	li a4, 8040
	mv a5, zero
	mv a3, s2
	bgt s0, zero, label133
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label11
	j label36
.p2align 2
label120:
	mv a2, a3
	j label23
.p2align 2
label133:
	mv a4, zero
	bgt s0, zero, label31
	addiw a2, a2, 1
	li a4, 8040
	mulw a5, a2, a4
	add a3, s2, a5
	bgt s0, a2, label133
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label11
	j label36
.p2align 2
label31:
	sh2add t0, a4, a3
	lw a5, 0(t0)
	beq a5, zero, label33
	sh2add t1, a4, s1
	sh2add t0, a2, a0
	lw t2, 0(t0)
	lw t3, 0(t1)
	mulw t1, a5, t3
	addw a5, t2, t1
	sw a5, 0(t0)
	addiw a4, a4, 1
	bgt s0, a4, label31
	addiw a2, a2, 1
	li a4, 8040
	mulw a5, a2, a4
	add a3, s2, a5
	bgt s0, a2, label133
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label11
	j label36
.p2align 2
label33:
	addiw a4, a4, 1
	bgt s0, a4, label31
	addiw a2, a2, 1
	li a4, 8040
	mulw a5, a2, a4
	add a3, s2, a5
	bgt s0, a2, label133
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label11
	j label36
.p2align 2
label38:
	sh2add a4, a3, s1
	addiw a3, a3, 1
	sw zero, 0(a4)
	bgt s0, a3, label38
	mv a2, zero
	li a4, 8040
	mv a5, zero
	mv a3, s2
	bgt s0, zero, label83
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label11
	j label36
.p2align 2
label40:
	sh2add a4, a2, s1
	addiw a3, a2, 4
	sd zero, 0(a4)
	sd zero, 8(a4)
	bgt s3, a3, label179
	sh2add a4, a3, s1
	addiw a3, a3, 1
	sw zero, 0(a4)
	bgt s0, a3, label38
	mv a2, zero
	li a4, 8040
	mv a5, zero
	mv a3, s2
	bgt s0, zero, label83
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label11
	j label36
.p2align 2
label179:
	mv a2, a3
	j label40
label36:
	li a0, 67
	jal _sysy_stoptime
	mv a0, s0
	mv a1, s1
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s4, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	ld s5, 40(sp)
	ld s0, 48(sp)
	addi sp, sp, 56
	ret
.p2align 2
label25:
	sh2add a4, a3, a0
	addiw a3, a3, 1
	sw zero, 0(a4)
	bgt s0, a3, label25
	mv a2, zero
	li a4, 8040
	mv a5, zero
	mv a3, s2
	bgt s0, zero, label133
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label11
	j label36
.p2align 2
label56:
	li a1, 8040
	mv s5, zero
	mul a0, s1, a1
	add s4, s2, a0
	j label7
