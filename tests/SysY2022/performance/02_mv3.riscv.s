.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
A:
	.zero	16160400
.align 4
B:
	.zero	8040
.align 4
C:
	.zero	8040
.text
.globl main
main:
.p2align 2
	addi sp, sp, -48
	sd s0, 40(sp)
	sd s2, 32(sp)
	sd s1, 24(sp)
	sd s3, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s1, zero
	mv s0, a0
pcrel330:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel330)
	bgt s0, zero, label4
	ble s0, zero, label10
label69:
	auipc a0, %pcrel_hi(B)
	mv s3, zero
	addi s1, a0, %pcrel_lo(label69)
	j label43
.p2align 2
label4:
	bgt s0, zero, label55
	addiw s1, s1, 1
	bgt s0, s1, label4
	j label10
.p2align 2
label55:
	li a0, 8040
	mv s4, zero
	mul a1, s1, a0
	add s3, s2, a1
.p2align 2
label7:
	jal getint
	sh2add a1, s4, s3
	addiw s4, s4, 1
	sw a0, 0(a1)
	bgt s0, s4, label7
	addiw s1, s1, 1
	bgt s0, s1, label4
	bgt s0, zero, label69
label10:
	li a0, 59
	jal _sysy_starttime
pcrel331:
	auipc a1, %pcrel_hi(B)
	addi a0, a1, %pcrel_lo(pcrel331)
pcrel332:
	auipc a1, %pcrel_hi(C)
	addi s1, a1, %pcrel_lo(pcrel332)
	mv a1, zero
	j label11
.p2align 2
label43:
	jal getint
	sh2add a1, s3, s1
	addiw s3, s3, 1
	sw a0, 0(a1)
	bgt s0, s3, label43
	j label10
.p2align 2
label11:
	bgt s0, zero, label37
	mv a2, zero
	li a5, 8040
	mv a4, zero
	mv a3, s2
	li a4, 8040
	mv a5, zero
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label11
	j label30
.p2align 2
label16:
	li a2, 4
	bgt s0, a2, label88
	mv a3, zero
	mv a4, a0
	li a3, 1
	sw zero, 0(a0)
	bgt s0, a3, label17
	mv a2, zero
	li a4, 8040
	mv a5, zero
	mv a3, s2
	bgt s0, zero, label112
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label11
	j label30
.p2align 2
label88:
	mv a2, zero
	mv a4, a0
	li a3, 8
	sw zero, 0(a0)
	li a2, 4
	sw zero, 4(a0)
	sw zero, 8(a0)
	sw zero, 12(a0)
	bgt s0, a3, label19
	mv a3, a2
	sh2add a4, a2, a0
	addiw a3, a2, 1
	sw zero, 0(a4)
	bgt s0, a3, label17
	mv a2, zero
	li a4, 8040
	mv a5, zero
	mv a3, s2
	bgt s0, zero, label112
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label11
	j label30
.p2align 2
label19:
	sh2add a4, a2, a0
	addiw a3, a2, 8
	sw zero, 0(a4)
	addiw a2, a2, 4
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	bgt s0, a3, label19
	mv a3, a2
	sh2add a4, a2, a0
	addiw a3, a2, 1
	sw zero, 0(a4)
	bgt s0, a3, label17
	mv a2, zero
	li a4, 8040
	mv a5, zero
	mv a3, s2
	bgt s0, zero, label112
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label11
	j label30
.p2align 2
label112:
	mv a4, zero
	bgt s0, zero, label25
	addiw a2, a2, 1
	li a4, 8040
	mulw a5, a2, a4
	add a3, s2, a5
	bgt s0, a2, label112
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label11
	j label30
.p2align 2
label25:
	sh2add t0, a4, a3
	lw a5, 0(t0)
	beq a5, zero, label26
	sh2add t2, a4, s1
	sh2add t0, a2, a0
	lw t1, 0(t0)
	lw t3, 0(t2)
	mulw t2, a5, t3
	addw a5, t1, t2
	sw a5, 0(t0)
	addiw a4, a4, 1
	bgt s0, a4, label25
	addiw a2, a2, 1
	li a4, 8040
	mulw a5, a2, a4
	add a3, s2, a5
	bgt s0, a2, label112
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label11
	j label30
.p2align 2
label37:
	li a4, 4
	bgt s0, a4, label162
	mv a3, zero
	mv a4, s1
	li a3, 1
	sw zero, 0(s1)
	bgt s0, a3, label40
	mv a2, zero
	li a5, 8040
	mv a4, zero
	mv a3, s2
	bgt s0, zero, label82
	li a4, 8040
	mv a5, zero
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label11
	j label30
.p2align 2
label82:
	mv a4, zero
	bgt s0, zero, label33
	addiw a2, a2, 1
	li a5, 8040
	mulw a4, a2, a5
	add a3, s2, a4
	bgt s0, a2, label82
	mv a2, zero
	li a4, 8040
	mv a5, zero
	mv a3, s2
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label11
	j label30
.p2align 2
label33:
	sh2add t0, a4, a3
	lw a5, 0(t0)
	beq a5, zero, label34
	sh2add t1, a4, a0
	sh2add t0, a2, s1
	lw t2, 0(t0)
	lw t1, 0(t1)
	mulw a5, a5, t1
	addw t2, t2, a5
	sw t2, 0(t0)
	addiw a4, a4, 1
	bgt s0, a4, label33
	addiw a2, a2, 1
	li a5, 8040
	mulw a4, a2, a5
	add a3, s2, a4
	bgt s0, a2, label82
	bgt s0, zero, label16
	mv a2, zero
	li a4, 8040
	mv a5, zero
	mv a3, s2
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label11
	j label30
.p2align 2
label34:
	addiw a4, a4, 1
	bgt s0, a4, label33
	addiw a2, a2, 1
	li a5, 8040
	mulw a4, a2, a5
	add a3, s2, a4
	bgt s0, a2, label82
	bgt s0, zero, label16
	mv a2, zero
	li a4, 8040
	mv a5, zero
	mv a3, s2
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label11
	j label30
.p2align 2
label26:
	addiw a4, a4, 1
	bgt s0, a4, label25
	addiw a2, a2, 1
	li a4, 8040
	mulw a5, a2, a4
	add a3, s2, a5
	bgt s0, a2, label112
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label11
label30:
	li a0, 67
	jal _sysy_stoptime
	mv a0, s0
	mv a1, s1
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s1, 24(sp)
	ld s2, 32(sp)
	ld s0, 40(sp)
	addi sp, sp, 48
	ret
.p2align 2
label40:
	sh2add a4, a3, s1
	addiw a3, a3, 1
	sw zero, 0(a4)
	bgt s0, a3, label40
	mv a2, zero
	li a5, 8040
	mv a4, zero
	mv a3, s2
	bgt s0, zero, label82
	li a4, 8040
	mv a5, zero
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label11
	j label30
.p2align 2
label162:
	mv a2, zero
.p2align 2
label38:
	sh2add a3, a2, s1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	addiw a3, a2, 8
	addiw a2, a2, 4
	bgt s0, a3, label38
	mv a3, a2
	sh2add a4, a2, s1
	addiw a3, a2, 1
	sw zero, 0(a4)
	bgt s0, a3, label40
	mv a2, zero
	li a5, 8040
	mv a4, zero
	mv a3, s2
	bgt s0, zero, label82
	li a4, 8040
	mv a5, zero
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label11
	j label30
.p2align 2
label17:
	sh2add a4, a3, a0
	addiw a3, a3, 1
	sw zero, 0(a4)
	bgt s0, a3, label17
	mv a2, zero
	li a4, 8040
	mv a5, zero
	mv a3, s2
	bgt s0, zero, label112
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label11
	j label30
