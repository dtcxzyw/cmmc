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
pcrel284:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel284)
	ble s0, zero, label13
label4:
	bgt s0, zero, label54
	addiw s1, s1, 1
	bgt s0, s1, label4
	j label13
label7:
	jal getint
	sh2add a1, s4, s3
	addiw s4, s4, 1
	sw a0, 0(a1)
	bgt s0, s4, label7
	addiw s1, s1, 1
	bgt s0, s1, label4
	bgt s0, zero, label10
	j label13
label11:
	jal getint
	sh2add a1, s3, s1
	addiw s3, s3, 1
	sw a0, 0(a1)
	bgt s0, s3, label11
label13:
	li a0, 59
	jal _sysy_starttime
pcrel285:
	auipc a1, %pcrel_hi(B)
	addi a0, a1, %pcrel_lo(pcrel285)
pcrel286:
	auipc a1, %pcrel_hi(C)
	addi s1, a1, %pcrel_lo(pcrel286)
	mv a1, zero
label14:
	bgt s0, zero, label85
	mv a2, zero
	li a5, 8040
	mv a4, zero
	mv a3, s2
	li a4, 8040
	mv a5, zero
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label14
	j label39
label85:
	mv a3, zero
	li a2, 4
	bgt s0, a2, label42
	mv a2, s1
	li a3, 1
	sw zero, 0(s1)
	bgt s0, a3, label43
	mv a2, zero
	li a5, 8040
	mv a4, zero
	mv a3, s2
	bgt s0, zero, label91
	li a4, 8040
	mv a5, zero
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label14
	j label39
label28:
	sh2add a2, a3, a0
	addiw a3, a3, 1
	sw zero, 0(a2)
	bgt s0, a3, label28
	mv a2, zero
	li a4, 8040
	mv a5, zero
	mv a3, s2
	bgt s0, zero, label138
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label14
	j label39
label40:
	addiw a2, a3, 4
	bgt s0, a2, label42
	sh2add a2, a3, s1
	addiw a3, a3, 1
	sw zero, 0(a2)
	bgt s0, a3, label43
	mv a2, zero
	li a5, 8040
	mv a4, zero
	mv a3, s2
	bgt s0, zero, label91
	li a4, 8040
	mv a5, zero
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label14
	j label39
label42:
	sh2add a3, a3, s1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a2
	j label40
label91:
	mv a4, zero
	bgt s0, zero, label21
	addiw a2, a2, 1
	li a5, 8040
	mulw a4, a2, a5
	add a3, s2, a4
	bgt s0, a2, label91
	mv a2, zero
	li a4, 8040
	mv a5, zero
	mv a3, s2
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label14
	j label39
label21:
	sh2add t0, a4, a3
	lw a5, 0(t0)
	beq a5, zero, label23
	sh2add t2, a4, a0
	sh2add t0, a2, s1
	lw t1, 0(t0)
	lw t2, 0(t2)
	mulw a5, a5, t2
	addw t1, t1, a5
	sw t1, 0(t0)
	addiw a4, a4, 1
	bgt s0, a4, label21
	addiw a2, a2, 1
	li a5, 8040
	mulw a4, a2, a5
	add a3, s2, a4
	bgt s0, a2, label91
	bgt s0, zero, label115
	mv a2, zero
	li a4, 8040
	mv a5, zero
	mv a3, s2
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label14
	j label39
label115:
	mv a3, zero
label25:
	addiw a2, a3, 4
	bgt s0, a2, label27
	sh2add a2, a3, a0
	addiw a3, a3, 1
	sw zero, 0(a2)
	bgt s0, a3, label28
	mv a2, zero
	li a4, 8040
	mv a5, zero
	mv a3, s2
	bgt s0, zero, label138
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label14
	j label39
label27:
	sh2add a3, a3, a0
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a2
	j label25
label138:
	mv a4, zero
	bgt s0, zero, label34
	addiw a2, a2, 1
	li a4, 8040
	mulw a5, a2, a4
	add a3, s2, a5
	bgt s0, a2, label138
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label14
	j label39
label34:
	sh2add t0, a4, a3
	lw a5, 0(t0)
	beq a5, zero, label35
	sh2add t1, a4, s1
	sh2add t0, a2, a0
	lw t2, 0(t0)
	lw t1, 0(t1)
	mulw t3, a5, t1
	addw a5, t2, t3
	sw a5, 0(t0)
	addiw a4, a4, 1
	bgt s0, a4, label34
	addiw a2, a2, 1
	li a4, 8040
	mulw a5, a2, a4
	add a3, s2, a5
	bgt s0, a2, label138
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label14
label39:
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
label23:
	addiw a4, a4, 1
	bgt s0, a4, label21
	addiw a2, a2, 1
	li a5, 8040
	mulw a4, a2, a5
	add a3, s2, a4
	bgt s0, a2, label91
	bgt s0, zero, label115
	mv a2, zero
	li a4, 8040
	mv a5, zero
	mv a3, s2
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label14
	j label39
label35:
	addiw a4, a4, 1
	bgt s0, a4, label34
	addiw a2, a2, 1
	li a4, 8040
	mulw a5, a2, a4
	add a3, s2, a5
	bgt s0, a2, label138
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label14
	j label39
label43:
	sh2add a2, a3, s1
	addiw a3, a3, 1
	sw zero, 0(a2)
	bgt s0, a3, label43
	mv a2, zero
	li a5, 8040
	mv a4, zero
	mv a3, s2
	bgt s0, zero, label91
	li a4, 8040
	mv a5, zero
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label14
	j label39
label54:
	li a1, 8040
	mv s4, zero
	mul a0, s1, a1
	add s3, s2, a0
	j label7
label10:
	auipc a0, %pcrel_hi(B)
	mv s3, zero
	addi s1, a0, %pcrel_lo(label10)
	j label11
