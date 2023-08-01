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
.p2align 2
.globl main
main:
	addi sp, sp, -96
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s6, 24(sp)
	sd s1, 32(sp)
	sd s3, 40(sp)
	sd s2, 48(sp)
	sd s4, 56(sp)
	sd s9, 64(sp)
	sd s7, 72(sp)
	sd s8, 80(sp)
	sd s10, 88(sp)
	jal getint
	li s8, 16
	li s9, 50
	li s4, 8040
	mv s2, zero
	addiw s5, a0, -20
	addiw s6, a0, -4
	li s7, 4
	mv s0, a0
pcrel336:
	auipc a0, %pcrel_hi(A)
	addi s3, a0, %pcrel_lo(pcrel336)
label2:
	ble s0, s2, label9
.p2align 2
label4:
	ble s0, zero, label62
	mul a0, s2, s4
	mv s10, zero
	add s1, s3, a0
.p2align 2
label6:
	jal getint
	sh2add a1, s10, s1
	addiw s10, s10, 1
	sw a0, 0(a1)
	bgt s0, s10, label6
	addiw s2, s2, 1
	bgt s0, s2, label4
label9:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(label9)
	ble s0, zero, label10
	mv s2, zero
	j label48
label10:
	li a0, 59
	jal _sysy_starttime
	mv a1, zero
pcrel337:
	auipc a2, %pcrel_hi(C)
	addi s2, a2, %pcrel_lo(pcrel337)
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
label165:
	mv a3, zero
	ble s0, zero, label168
.p2align 2
label34:
	sh2add a5, a3, a0
	lw a4, 0(a5)
	beq a4, zero, label35
	sh2add t0, a3, s2
	sh2add a5, a2, s1
	lw t1, 0(a5)
	lw t0, 0(t0)
	mulw a4, a4, t0
	addw t1, t1, a4
	sw t1, 0(a5)
.p2align 2
label35:
	addiw a3, a3, 1
	bgt s0, a3, label34
	addiw a2, a2, 1
	mulw a3, a2, s4
	add a0, s3, a3
	bgt s0, a2, label165
	addiw a1, a1, 1
	blt a1, s9, label11
	j label39
.p2align 2
label40:
	bgt s0, s7, label43
	j label193
.p2align 2
label41:
	sh2add a2, a0, s2
	addiw a0, a0, 1
	sw zero, 0(a2)
	bgt s0, a0, label41
	mv a2, zero
	mv a3, zero
	mv a0, s3
	bgt s0, zero, label90
	j label89
.p2align 2
label43:
	ble s6, s8, label203
	mv a2, zero
	j label46
.p2align 2
label44:
	sh2add a0, a2, s2
	addiw a2, a2, 4
	sw zero, 0(a0)
	sw zero, 4(a0)
	sw zero, 8(a0)
	sw zero, 12(a0)
	bgt s6, a2, label44
.p2align 2
label213:
	mv a0, a2
	sh2add a2, a2, s2
	addiw a0, a0, 1
	sw zero, 0(a2)
	bgt s0, a0, label41
	j label308
.p2align 2
label46:
	sh2add a0, a2, s2
	addiw a2, a2, 16
	sd zero, 0(a0)
	sd zero, 8(a0)
	sd zero, 16(a0)
	sd zero, 24(a0)
	sd zero, 32(a0)
	sd zero, 40(a0)
	sd zero, 48(a0)
	sd zero, 56(a0)
	bgt s5, a2, label46
	sh2add a0, a2, s2
	addiw a2, a2, 4
	sw zero, 0(a0)
	sw zero, 4(a0)
	sw zero, 8(a0)
	sw zero, 12(a0)
	bgt s6, a2, label44
	mv a0, a2
	sh2add a2, a2, s2
	addiw a0, a0, 1
	sw zero, 0(a2)
	bgt s0, a0, label41
	mv a2, zero
	mv a3, zero
	mv a0, s3
	bgt s0, zero, label90
	j label89
.p2align 2
label296:
	mv a2, zero
	j label30
.p2align 2
label90:
	mv a3, zero
	ble s0, zero, label17
.p2align 2
label18:
	sh2add a5, a3, a0
	lw a4, 0(a5)
	beq a4, zero, label19
	sh2add t0, a3, s1
	sh2add a5, a2, s2
	lw t1, 0(a5)
	lw t2, 0(t0)
	mulw a4, a4, t2
	addw t0, t1, a4
	sw t0, 0(a5)
.p2align 2
label19:
	addiw a3, a3, 1
	bgt s0, a3, label18
	addiw a2, a2, 1
	mulw a3, a2, s4
	add a0, s3, a3
	bgt s0, a2, label90
	ble s0, zero, label296
.p2align 2
label22:
	ble s0, s7, label116
	bgt s6, s8, label120
	j label119
.p2align 2
label301:
	mv a0, a2
	j label28
.p2align 2
label120:
	mv a2, zero
.p2align 2
label24:
	sh2add a0, a2, s1
	addiw a2, a2, 16
	sd zero, 0(a0)
	sd zero, 8(a0)
	sd zero, 16(a0)
	sd zero, 24(a0)
	sd zero, 32(a0)
	sd zero, 40(a0)
	sd zero, 48(a0)
	sd zero, 56(a0)
	bgt s5, a2, label24
.p2align 2
label26:
	sh2add a0, a2, s1
	addiw a2, a2, 4
	sw zero, 0(a0)
	sw zero, 4(a0)
	sw zero, 8(a0)
	sw zero, 12(a0)
	bgt s6, a2, label26
	j label301
.p2align 2
label28:
	sh2add a3, a0, s1
	addiw a0, a0, 1
	sw zero, 0(a3)
	bgt s0, a0, label28
	j label296
.p2align 2
label30:
	mulw a3, a2, s4
	add a0, s3, a3
	bgt s0, a2, label165
label164:
	addiw a1, a1, 1
	blt a1, s9, label11
	j label39
.p2align 2
label17:
	addiw a2, a2, 1
	mulw a3, a2, s4
	add a0, s3, a3
	bgt s0, a2, label90
	bgt s0, zero, label22
	j label296
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
	ld s6, 24(sp)
	ld s1, 32(sp)
	ld s3, 40(sp)
	ld s2, 48(sp)
	ld s4, 56(sp)
	ld s9, 64(sp)
	ld s7, 72(sp)
	ld s8, 80(sp)
	ld s10, 88(sp)
	addi sp, sp, 96
	ret
label83:
	mv a2, zero
	mv a3, zero
	mv a0, s3
	bgt s0, zero, label90
	j label89
.p2align 2
label168:
	addiw a2, a2, 1
	mulw a3, a2, s4
	add a0, s3, a3
	bgt s0, a2, label165
	j label164
label116:
	mv a0, zero
	mv a3, s1
	li a0, 1
	sw zero, 0(s1)
	bgt s0, a0, label28
	j label296
label203:
	mv a2, zero
	mv a0, s2
	li a2, 4
	sw zero, 0(s2)
	sw zero, 4(s2)
	sw zero, 8(s2)
	sw zero, 12(s2)
	bgt s6, a2, label44
	j label213
label89:
	bgt s0, zero, label22
	j label296
.p2align 2
label308:
	mv a2, zero
	mv a3, zero
	mv a0, s3
	bgt s0, zero, label90
	j label89
label193:
	mv a0, zero
	j label41
label62:
	addiw s2, s2, 1
	j label2
label119:
	mv a2, zero
	mv a0, s1
	li a2, 4
	sw zero, 0(s1)
	sw zero, 4(s1)
	sw zero, 8(s1)
	sw zero, 12(s1)
	bgt s6, a2, label26
	j label301
