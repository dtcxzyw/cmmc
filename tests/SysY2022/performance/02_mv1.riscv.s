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
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s4, 24(sp)
	sd s3, 32(sp)
	sd s1, 40(sp)
	sd s6, 48(sp)
	sd s2, 56(sp)
	jal getint
	mv s1, zero
	addiw s4, a0, -20
	addiw s5, a0, -4
	mv s0, a0
pcrel358:
	auipc a0, %pcrel_hi(A)
	addi s3, a0, %pcrel_lo(pcrel358)
	ble s0, zero, label59
.p2align 2
label4:
	ble s0, zero, label62
	li a1, 8040
	mv s6, zero
	mul a0, s1, a1
	add s2, s3, a0
.p2align 2
label6:
	jal getint
	sh2add a1, s6, s2
	addiw s6, s6, 1
	sw a0, 0(a1)
	bgt s0, s6, label6
	addiw s1, s1, 1
	bgt s0, s1, label4
pcrel359:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(pcrel359)
	bgt s0, zero, label79
	j label10
.p2align 2
label62:
	addiw s1, s1, 1
	bgt s0, s1, label4
pcrel360:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(pcrel360)
	ble s0, zero, label10
label79:
	mv s2, zero
	j label48
label10:
	li a0, 59
	jal _sysy_starttime
pcrel361:
	auipc a1, %pcrel_hi(C)
	addi s2, a1, %pcrel_lo(pcrel361)
	mv a1, zero
	j label11
.p2align 2
label48:
	jal getint
	sh2add a1, s2, s1
	addiw s2, s2, 1
	sw a0, 0(a1)
	bgt s0, s2, label48
	j label10
.p2align 2
label11:
	bgt s0, zero, label40
	j label83
.p2align 2
label116:
	mv a2, zero
	mv a3, s1
	li a2, 1
	sw zero, 0(s1)
	bgt s0, a2, label28
	mv a0, zero
	li a3, 8040
	mv a4, zero
	mv a2, s3
	bgt s0, zero, label165
	addiw a1, a1, 1
	li a0, 50
	blt a1, a0, label11
	j label39
.p2align 2
label165:
	mv a3, zero
	ble s0, zero, label168
.p2align 2
label34:
	sh2add a5, a3, a2
	lw a4, 0(a5)
	beq a4, zero, label35
	sh2add t1, a3, s2
	sh2add a5, a0, s1
	lw t0, 0(a5)
	lw t1, 0(t1)
	mulw a4, a4, t1
	addw t0, t0, a4
	sw t0, 0(a5)
.p2align 2
label35:
	addiw a3, a3, 1
	bgt s0, a3, label34
	addiw a0, a0, 1
	li a3, 8040
	mulw a4, a0, a3
	add a2, s3, a4
	bgt s0, a0, label165
	addiw a1, a1, 1
	li a0, 50
	blt a1, a0, label11
	j label39
.p2align 2
label83:
	mv a0, zero
	li a3, 8040
	mv a4, zero
	mv a2, s3
	bgt s0, zero, label90
	addiw a1, a1, 1
	li a0, 50
	blt a1, a0, label11
	j label39
.p2align 2
label90:
	mv a3, zero
	ble s0, zero, label17
.p2align 2
label18:
	sh2add a5, a3, a2
	lw a4, 0(a5)
	beq a4, zero, label19
	sh2add t0, a3, s1
	sh2add a5, a0, s2
	lw t1, 0(a5)
	lw t0, 0(t0)
	mulw a4, a4, t0
	addw t1, t1, a4
	sw t1, 0(a5)
.p2align 2
label19:
	addiw a3, a3, 1
	bgt s0, a3, label18
	addiw a0, a0, 1
	li a3, 8040
	mulw a4, a0, a3
	add a2, s3, a4
	bgt s0, a0, label90
	bgt s0, zero, label22
	mv a0, zero
	mv a4, zero
	mv a2, s3
	addiw a1, a1, 1
	li a0, 50
	blt a1, a0, label11
	j label39
.p2align 2
label17:
	addiw a0, a0, 1
	li a3, 8040
	mulw a4, a0, a3
	add a2, s3, a4
	bgt s0, a0, label90
	bgt s0, zero, label22
	mv a0, zero
	mv a4, zero
	mv a2, s3
	addiw a1, a1, 1
	li a0, 50
	blt a1, a0, label11
	j label39
.p2align 2
label22:
	li a0, 4
	bgt s0, a0, label23
	j label116
.p2align 2
label200:
	mv a0, zero
	li a3, 8040
	mv a4, zero
	mv a2, s3
	bgt s0, zero, label90
	addiw a1, a1, 1
	li a0, 50
	blt a1, a0, label11
	j label39
.p2align 2
label168:
	addiw a0, a0, 1
	li a3, 8040
	mulw a4, a0, a3
	add a2, s3, a4
	bgt s0, a0, label165
	addiw a1, a1, 1
	li a0, 50
	blt a1, a0, label11
	j label39
.p2align 2
label141:
	sh2add a3, a0, s1
	addiw a0, a0, 4
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	ble s5, a0, label292
.p2align 2
label26:
	sh2add a3, a0, s1
	addiw a0, a0, 4
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	bgt s5, a0, label26
	mv a2, a0
.p2align 2
label28:
	sh2add a3, a2, s1
	addiw a2, a2, 1
	sw zero, 0(a3)
	bgt s0, a2, label28
	mv a0, zero
	li a3, 8040
	mv a4, zero
	mv a2, s3
	bgt s0, zero, label165
	addiw a1, a1, 1
	li a0, 50
	blt a1, a0, label11
	j label39
.p2align 2
label292:
	mv a2, a0
	sh2add a3, a0, s1
	addiw a2, a0, 1
	sw zero, 0(a3)
	bgt s0, a2, label28
	mv a0, zero
	li a3, 8040
	mv a4, zero
	mv a2, s3
	bgt s0, zero, label165
	addiw a1, a1, 1
	li a0, 50
	blt a1, a0, label11
label39:
	li a0, 67
	jal _sysy_stoptime
	mv a0, s0
	mv a1, s2
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s4, 24(sp)
	ld s3, 32(sp)
	ld s1, 40(sp)
	ld s6, 48(sp)
	ld s2, 56(sp)
	addi sp, sp, 64
	ret
.p2align 2
label23:
	li a2, 16
	ble s5, a2, label119
	mv a2, zero
.p2align 2
label24:
	sh2add a0, a2, s1
	sd zero, 0(a0)
	sd zero, 8(a0)
	sd zero, 16(a0)
	sd zero, 24(a0)
	sd zero, 32(a0)
	sd zero, 40(a0)
	sd zero, 48(a0)
	sd zero, 56(a0)
	addiw a0, a2, 16
	ble s4, a0, label141
	mv a2, a0
	j label24
.p2align 2
label119:
	mv a0, zero
	mv a3, s1
	li a0, 4
	sw zero, 0(s1)
	sw zero, 4(s1)
	sw zero, 8(s1)
	sw zero, 12(s1)
	bgt s5, a0, label26
	mv a2, a0
	sh2add a3, a0, s1
	addiw a2, a0, 1
	sw zero, 0(a3)
	bgt s0, a2, label28
	mv a0, zero
	li a3, 8040
	mv a4, zero
	mv a2, s3
	bgt s0, zero, label165
	addiw a1, a1, 1
	li a0, 50
	blt a1, a0, label11
	j label39
.p2align 2
label40:
	li a3, 4
	ble s0, a3, label193
	li a3, 16
	ble s5, a3, label203
	mv a2, zero
.p2align 2
label46:
	sh2add a0, a2, s2
	sd zero, 0(a0)
	sd zero, 8(a0)
	sd zero, 16(a0)
	sd zero, 24(a0)
	sd zero, 32(a0)
	sd zero, 40(a0)
	sd zero, 48(a0)
	sd zero, 56(a0)
	addiw a0, a2, 16
	ble s4, a0, label235
	mv a2, a0
	j label46
.p2align 2
label41:
	sh2add a0, a2, s2
	addiw a2, a2, 1
	sw zero, 0(a0)
	bgt s0, a2, label41
	j label200
.p2align 2
label203:
	mv a0, zero
	mv a3, s2
	li a0, 4
	sw zero, 0(s2)
	sw zero, 4(s2)
	sw zero, 8(s2)
	sw zero, 12(s2)
	ble s5, a0, label298
.p2align 2
label44:
	sh2add a3, a0, s2
	addiw a0, a0, 4
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	bgt s5, a0, label44
	mv a2, a0
	sh2add a0, a0, s2
	addiw a2, a2, 1
	sw zero, 0(a0)
	bgt s0, a2, label41
	mv a0, zero
	li a3, 8040
	mv a4, zero
	mv a2, s3
	bgt s0, zero, label90
	addiw a1, a1, 1
	li a0, 50
	blt a1, a0, label11
	j label39
.p2align 2
label298:
	mv a2, a0
	sh2add a0, a0, s2
	addiw a2, a2, 1
	sw zero, 0(a0)
	bgt s0, a2, label41
	mv a0, zero
	li a3, 8040
	mv a4, zero
	mv a2, s3
	bgt s0, zero, label90
	addiw a1, a1, 1
	li a0, 50
	blt a1, a0, label11
	j label39
.p2align 2
label235:
	sh2add a3, a0, s2
	addiw a0, a0, 4
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	bgt s5, a0, label44
	mv a2, a0
	sh2add a0, a0, s2
	addiw a2, a2, 1
	sw zero, 0(a0)
	bgt s0, a2, label41
	mv a0, zero
	li a3, 8040
	mv a4, zero
	mv a2, s3
	bgt s0, zero, label90
	addiw a1, a1, 1
	li a0, 50
	blt a1, a0, label11
	j label39
.p2align 2
label59:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(label59)
	bgt s0, zero, label79
	j label10
.p2align 2
label193:
	mv a2, zero
	j label41
