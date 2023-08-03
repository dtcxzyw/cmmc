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
	addi sp, sp, -104
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s3, 24(sp)
	sd s2, 32(sp)
	sd s4, 40(sp)
	sd s8, 48(sp)
	sd s9, 56(sp)
	sd s1, 64(sp)
	sd s6, 72(sp)
	sd s7, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
	li s5, 4
	li s7, 50
	li s6, 16
	mv s9, zero
	addiw s2, a0, -20
	addiw s3, a0, -4
	mv s0, a0
pcrel402:
	auipc a0, %pcrel_hi(A)
	addi s4, a0, %pcrel_lo(pcrel402)
	li a0, 1005
	mv s8, s4
	slli s1, a0, 3
	ble s0, zero, label11
.p2align 2
label5:
	mv s10, s8
	mv s11, zero
.p2align 2
label6:
	jal getint
	addiw s11, s11, 1
	sw a0, 0(s10)
	bgt s0, s11, label9
	addiw s9, s9, 1
	add s8, s8, s1
	bgt s0, s9, label5
	j label11
.p2align 2
label9:
	addi s10, s10, 4
	j label6
label11:
	auipc a0, %pcrel_hi(B)
	addi s8, a0, %pcrel_lo(label11)
	ble s0, zero, label17
	mv s9, s8
	mv s10, zero
.p2align 2
label13:
	jal getint
	addiw s10, s10, 1
	sw a0, 0(s9)
	ble s0, s10, label17
	addi s9, s9, 4
	j label13
label17:
	li a0, 59
	jal _sysy_starttime
	mv a0, zero
pcrel403:
	auipc a1, %pcrel_hi(C)
	addi s9, a1, %pcrel_lo(pcrel403)
.p2align 2
label18:
	bgt s0, zero, label71
	j label20
.p2align 2
label50:
	mv a4, s9
	mv a5, a2
	mv t0, zero
	ble s0, zero, label55
.p2align 2
label56:
	lw t1, 0(a5)
	beq t1, zero, label57
	lw t2, 0(a1)
	lw t5, 0(a4)
	mulw t3, t1, t5
	addw t4, t2, t3
	sw t4, 0(a1)
.p2align 2
label57:
	addiw t0, t0, 1
	addi a5, a5, 4
	addi a4, a4, 4
	bgt s0, t0, label56
	addiw a3, a3, 1
	add a2, a2, s1
	addi a1, a1, 4
	bgt s0, a3, label50
	addiw a0, a0, 1
	blt a0, s7, label18
	j label60
.p2align 2
label71:
	ble s0, s5, label72
	ble s3, s6, label79
	mv a1, s9
	mv a2, zero
.p2align 2
label81:
	sd zero, 0(a1)
	addiw a2, a2, 16
	sd zero, 8(a1)
	sd zero, 16(a1)
	sd zero, 24(a1)
	sd zero, 32(a1)
	sd zero, 40(a1)
	sd zero, 48(a1)
	sd zero, 56(a1)
	ble s2, a2, label84
	addi a1, a1, 64
	j label81
.p2align 2
label84:
	sh2add a1, a2, s9
	addiw a2, a2, 4
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	bgt s3, a2, label89
	j label361
.p2align 2
label86:
	sw zero, 0(a1)
	addiw a2, a2, 4
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	ble s3, a2, label269
.p2align 2
label89:
	addi a1, a1, 16
	j label86
.p2align 2
label73:
	sw zero, 0(a1)
	addiw a2, a2, 1
	ble s0, a2, label234
.p2align 2
label76:
	addi a1, a1, 4
	j label73
.p2align 2
label269:
	sh2add a1, a2, s9
	addiw a2, a2, 1
	sw zero, 0(a1)
	bgt s0, a2, label76
	mv a1, s9
	mv a2, s4
	mv a3, zero
	bgt s0, zero, label62
	j label25
label133:
	mv a1, s8
	mv a2, s4
	mv a3, zero
	j label46
.p2align 2
label26:
	bgt s0, s5, label33
	j label27
label46:
	bgt s0, a3, label50
	j label183
.p2align 2
label62:
	mv a4, s8
	mv a5, a2
	mv t0, zero
	ble s0, zero, label67
.p2align 2
label68:
	lw t1, 0(a5)
	beq t1, zero, label69
	lw t2, 0(a1)
	lw t5, 0(a4)
	mulw t4, t1, t5
	addw t3, t2, t4
	sw t3, 0(a1)
.p2align 2
label69:
	addiw t0, t0, 1
	addi a5, a5, 4
	addi a4, a4, 4
	bgt s0, t0, label68
	addiw a3, a3, 1
	add a2, a2, s1
	addi a1, a1, 4
	bgt s0, a3, label62
	bgt s0, zero, label26
	j label133
.p2align 2
label55:
	addiw a3, a3, 1
	add a2, a2, s1
	addi a1, a1, 4
	bgt s0, a3, label50
	addiw a0, a0, 1
	blt a0, s7, label18
	j label60
.p2align 2
label67:
	addiw a3, a3, 1
	add a2, a2, s1
	addi a1, a1, 4
	bgt s0, a3, label62
	bgt s0, zero, label26
	j label133
.p2align 2
label33:
	ble s3, s6, label145
	mv a1, s8
	mv a2, zero
.p2align 2
label35:
	sd zero, 0(a1)
	addiw a2, a2, 16
	sd zero, 8(a1)
	sd zero, 16(a1)
	sd zero, 24(a1)
	sd zero, 32(a1)
	sd zero, 40(a1)
	sd zero, 48(a1)
	sd zero, 56(a1)
	ble s2, a2, label165
	addi a1, a1, 64
	j label35
.p2align 2
label28:
	sw zero, 0(a1)
	addiw a2, a2, 1
	ble s0, a2, label31
.p2align 2
label32:
	addi a1, a1, 4
	j label28
label145:
	mv a1, s8
	li a2, 4
	sw zero, 0(s8)
	sw zero, 4(s8)
	sw zero, 8(s8)
	sw zero, 12(s8)
	bgt s3, a2, label44
.p2align 2
label176:
	sh2add a1, a2, s8
	addiw a2, a2, 1
	sw zero, 0(a1)
	bgt s0, a2, label32
	mv a1, s8
	mv a2, s4
	mv a3, zero
	bgt s0, zero, label50
	j label183
.p2align 2
label165:
	sh2add a1, a2, s8
	addiw a2, a2, 4
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	bgt s3, a2, label44
	j label365
.p2align 2
label41:
	sw zero, 0(a1)
	addiw a2, a2, 4
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	ble s3, a2, label176
.p2align 2
label44:
	addi a1, a1, 16
	j label41
.p2align 2
label31:
	mv a1, s8
	mv a2, s4
	mv a3, zero
	bgt s0, zero, label50
label183:
	addiw a0, a0, 1
	blt a0, s7, label18
	j label60
label27:
	mv a1, s8
	mv a2, zero
	j label28
label72:
	mv a1, s9
	mv a2, zero
	j label73
label79:
	mv a1, s9
	li a2, 4
	sw zero, 0(s9)
	sw zero, 4(s9)
	sw zero, 8(s9)
	sw zero, 12(s9)
	bgt s3, a2, label89
	sh2add a1, a2, s9
	j label73
.p2align 2
label361:
	sh2add a1, a2, s9
	addiw a2, a2, 1
	sw zero, 0(a1)
	bgt s0, a2, label76
	mv a1, s9
	mv a2, s4
	mv a3, zero
	bgt s0, zero, label62
	j label25
.p2align 2
label365:
	sh2add a1, a2, s8
	addiw a2, a2, 1
	sw zero, 0(a1)
	bgt s0, a2, label32
	mv a1, s8
	mv a2, s4
	mv a3, zero
	bgt s0, zero, label50
	j label183
label60:
	li a0, 67
	jal _sysy_stoptime
	mv a0, s0
	mv a1, s9
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s3, 24(sp)
	ld s2, 32(sp)
	ld s4, 40(sp)
	ld s8, 48(sp)
	ld s9, 56(sp)
	ld s1, 64(sp)
	ld s6, 72(sp)
	ld s7, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 104
	ret
label20:
	mv a1, s9
	mv a2, s4
	mv a3, zero
	bgt s0, zero, label62
label25:
	bgt s0, zero, label26
	j label133
.p2align 2
label234:
	mv a1, s9
	mv a2, s4
	mv a3, zero
	bgt s0, zero, label62
	j label25
