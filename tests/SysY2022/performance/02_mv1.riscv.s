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
	addi sp, sp, -64
	sd s0, 56(sp)
	sd s5, 48(sp)
	sd s4, 40(sp)
	sd s3, 32(sp)
	sd s2, 24(sp)
	sd s1, 16(sp)
	sd s6, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s1, zero
	addiw s3, a0, -20
	addiw s4, a0, -4
	mv s0, a0
pcrel423:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel423)
	ble s0, zero, label10
.p2align 2
label4:
	bgt s0, zero, label64
	addiw s1, s1, 1
	bgt s0, s1, label4
	j label10
.p2align 2
label7:
	jal getint
	sh2add a1, s6, s5
	addiw s6, s6, 1
	sw a0, 0(a1)
	bgt s0, s6, label7
	addiw s1, s1, 1
	bgt s0, s1, label4
	bgt s0, zero, label78
label10:
	li a0, 59
	jal _sysy_starttime
pcrel424:
	auipc a1, %pcrel_hi(B)
	addi a0, a1, %pcrel_lo(pcrel424)
pcrel425:
	auipc a1, %pcrel_hi(C)
	addi s1, a1, %pcrel_lo(pcrel425)
	mv a1, zero
	j label11
.p2align 2
label49:
	jal getint
	sh2add a1, s5, s1
	addiw s5, s5, 1
	sw a0, 0(a1)
	bgt s0, s5, label49
	j label10
.p2align 2
label11:
	bgt s0, zero, label40
	mv a2, zero
	li a4, 8040
	mv a5, zero
	mv a3, s2
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label11
	j label39
.p2align 2
label40:
	li a2, 4
	bgt s0, a2, label43
	mv a3, zero
	mv a2, s1
	li a3, 1
	sw zero, 0(s1)
	bgt s0, a3, label41
	mv a2, zero
	li a4, 8040
	mv a5, zero
	mv a3, s2
	bgt s0, zero, label91
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label11
	j label39
.p2align 2
label43:
	li a4, 16
	bgt s4, a4, label205
	mv a2, zero
	mv a4, s1
	li a2, 4
	sw zero, 0(s1)
	sw zero, 4(s1)
	sw zero, 8(s1)
	sw zero, 12(s1)
	bgt s4, a2, label44
	mv a3, a2
	sh2add a2, a2, s1
	addiw a3, a3, 1
	sw zero, 0(a2)
	bgt s0, a3, label41
	mv a2, zero
	li a4, 8040
	mv a5, zero
	mv a3, s2
	bgt s0, zero, label91
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label11
	j label39
.p2align 2
label166:
	mv a4, zero
	bgt s0, zero, label35
	addiw a2, a2, 1
	li a4, 8040
	mulw a5, a2, a4
	add a3, s2, a5
	bgt s0, a2, label166
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label11
	j label39
.p2align 2
label35:
	sh2add t0, a4, a3
	lw a5, 0(t0)
	beq a5, zero, label36
	sh2add t2, a4, s1
	sh2add t0, a2, a0
	lw t1, 0(t0)
	lw t3, 0(t2)
	mulw t2, a5, t3
	addw a5, t1, t2
	sw a5, 0(t0)
	addiw a4, a4, 1
	bgt s0, a4, label35
	addiw a2, a2, 1
	li a4, 8040
	mulw a5, a2, a4
	add a3, s2, a5
	bgt s0, a2, label166
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label11
	j label39
.p2align 2
label36:
	addiw a4, a4, 1
	bgt s0, a4, label35
	addiw a2, a2, 1
	li a4, 8040
	mulw a5, a2, a4
	add a3, s2, a5
	bgt s0, a2, label166
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label11
label39:
	li a0, 67
	jal _sysy_stoptime
	mv a0, s0
	mv a1, s1
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s6, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	ld s4, 40(sp)
	ld s5, 48(sp)
	ld s0, 56(sp)
	addi sp, sp, 64
	ret
.p2align 2
label22:
	li a2, 4
	bgt s0, a2, label23
	mv a3, zero
	mv a4, a0
	li a3, 1
	sw zero, 0(a0)
	bgt s0, a3, label28
	mv a2, zero
	li a4, 8040
	mv a5, zero
	mv a3, s2
	bgt s0, zero, label166
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label11
	j label39
.p2align 2
label41:
	sh2add a2, a3, s1
	addiw a3, a3, 1
	sw zero, 0(a2)
	bgt s0, a3, label41
	mv a2, zero
	li a4, 8040
	mv a5, zero
	mv a3, s2
	bgt s0, zero, label91
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label11
	j label39
.p2align 2
label91:
	mv a4, zero
	bgt s0, zero, label18
	addiw a2, a2, 1
	li a4, 8040
	mulw a5, a2, a4
	add a3, s2, a5
	bgt s0, a2, label91
	mv a2, zero
	mv a5, zero
	mv a3, s2
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label11
	j label39
.p2align 2
label18:
	sh2add t0, a4, a3
	lw a5, 0(t0)
	beq a5, zero, label19
	sh2add t1, a4, a0
	sh2add t0, a2, s1
	lw t2, 0(t0)
	lw t1, 0(t1)
	mulw t3, a5, t1
	addw a5, t2, t3
	sw a5, 0(t0)
	addiw a4, a4, 1
	bgt s0, a4, label18
	addiw a2, a2, 1
	li a4, 8040
	mulw a5, a2, a4
	add a3, s2, a5
	bgt s0, a2, label91
	bgt s0, zero, label22
	mv a2, zero
	mv a5, zero
	mv a3, s2
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label11
	j label39
.p2align 2
label19:
	addiw a4, a4, 1
	bgt s0, a4, label18
	addiw a2, a2, 1
	li a4, 8040
	mulw a5, a2, a4
	add a3, s2, a5
	bgt s0, a2, label91
	bgt s0, zero, label22
	mv a2, zero
	mv a5, zero
	mv a3, s2
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label11
	j label39
.p2align 2
label205:
	mv a3, zero
	j label46
.p2align 2
label44:
	sh2add a4, a2, s1
	addiw a2, a2, 4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	bgt s4, a2, label44
	mv a3, a2
	sh2add a2, a2, s1
	addiw a3, a3, 1
	sw zero, 0(a2)
	bgt s0, a3, label41
	mv a2, zero
	li a4, 8040
	mv a5, zero
	mv a3, s2
	bgt s0, zero, label91
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label11
	j label39
.p2align 2
label46:
	sh2add a2, a3, s1
	sd zero, 0(a2)
	sd zero, 8(a2)
	sd zero, 16(a2)
	sd zero, 24(a2)
	sd zero, 32(a2)
	sd zero, 40(a2)
	sd zero, 48(a2)
	sd zero, 56(a2)
	addiw a2, a3, 16
	bgt s3, a2, label237
	sh2add a4, a2, s1
	addiw a2, a2, 4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	bgt s4, a2, label44
	mv a3, a2
	sh2add a2, a2, s1
	addiw a3, a3, 1
	sw zero, 0(a2)
	bgt s0, a3, label41
	mv a2, zero
	li a4, 8040
	mv a5, zero
	mv a3, s2
	bgt s0, zero, label91
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label11
	j label39
.p2align 2
label237:
	mv a3, a2
	j label46
.p2align 2
label28:
	sh2add a4, a3, a0
	addiw a3, a3, 1
	sw zero, 0(a4)
	bgt s0, a3, label28
	mv a2, zero
	li a4, 8040
	mv a5, zero
	mv a3, s2
	bgt s0, zero, label166
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label11
	j label39
.p2align 2
label23:
	li a3, 16
	bgt s4, a3, label121
	mv a2, zero
	mv a4, a0
	li a2, 4
	sw zero, 0(a0)
	sw zero, 4(a0)
	sw zero, 8(a0)
	sw zero, 12(a0)
	bgt s4, a2, label26
	mv a3, a2
	sh2add a4, a2, a0
	addiw a3, a2, 1
	sw zero, 0(a4)
	bgt s0, a3, label28
	mv a2, zero
	li a4, 8040
	mv a5, zero
	mv a3, s2
	bgt s0, zero, label166
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label11
	j label39
.p2align 2
label121:
	mv a3, zero
.p2align 2
label24:
	sh2add a2, a3, a0
	sd zero, 0(a2)
	sd zero, 8(a2)
	sd zero, 16(a2)
	sd zero, 24(a2)
	sd zero, 32(a2)
	sd zero, 40(a2)
	sd zero, 48(a2)
	sd zero, 56(a2)
	addiw a2, a3, 16
	bgt s3, a2, label143
	sh2add a4, a2, a0
	addiw a2, a2, 4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	bgt s4, a2, label26
	mv a3, a2
	sh2add a4, a2, a0
	addiw a3, a2, 1
	sw zero, 0(a4)
	bgt s0, a3, label28
	mv a2, zero
	li a4, 8040
	mv a5, zero
	mv a3, s2
	bgt s0, zero, label166
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label11
	j label39
.p2align 2
label143:
	mv a3, a2
	j label24
.p2align 2
label26:
	sh2add a4, a2, a0
	addiw a2, a2, 4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	bgt s4, a2, label26
	mv a3, a2
	sh2add a4, a2, a0
	addiw a3, a2, 1
	sw zero, 0(a4)
	bgt s0, a3, label28
	mv a2, zero
	li a4, 8040
	mv a5, zero
	mv a3, s2
	bgt s0, zero, label166
	addiw a1, a1, 1
	li a2, 50
	blt a1, a2, label11
	j label39
.p2align 2
label64:
	li a0, 8040
	mv s6, zero
	mul a1, s1, a0
	add s5, s2, a1
	j label7
label78:
	auipc a0, %pcrel_hi(B)
	mv s5, zero
	addi s1, a0, %pcrel_lo(label78)
	j label49
