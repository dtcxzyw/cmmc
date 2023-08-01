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
	addi sp, sp, -80
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s3, 24(sp)
	sd s2, 32(sp)
	sd s4, 40(sp)
	sd s7, 48(sp)
	sd s6, 56(sp)
	sd s1, 64(sp)
	sd s8, 72(sp)
	jal getint
	li s6, 4
	li s4, 8040
	mv s2, zero
	li s7, 50
	addiw s5, a0, -4
	mv s0, a0
pcrel271:
	auipc a0, %pcrel_hi(A)
	addi s3, a0, %pcrel_lo(pcrel271)
label2:
	ble s0, s2, label9
.p2align 2
label4:
	ble s0, zero, label54
	mul a0, s2, s4
	mv s8, zero
	add s1, s3, a0
.p2align 2
label6:
	jal getint
	sh2add a1, s8, s1
	addiw s8, s8, 1
	sw a0, 0(a1)
	bgt s0, s8, label6
	addiw s2, s2, 1
	bgt s0, s2, label4
label9:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(label9)
	ble s0, zero, label10
	mv s2, zero
	j label42
label10:
	li a0, 59
	jal _sysy_starttime
	mv a1, zero
pcrel272:
	auipc a2, %pcrel_hi(C)
	addi s2, a2, %pcrel_lo(pcrel272)
	j label11
.p2align 2
label42:
	jal getint
	sh2add a1, s2, s1
	addiw s2, s2, 1
	sw a0, 0(a1)
	bgt s0, s2, label42
	j label10
.p2align 2
label11:
	bgt s0, zero, label37
	j label75
.p2align 2
label132:
	mv a3, zero
	ble s0, zero, label31
.p2align 2
label32:
	sh2add a5, a3, a0
	lw a4, 0(a5)
	beq a4, zero, label33
	sh2add t0, a3, s2
	sh2add a5, a2, s1
	lw t1, 0(a5)
	lw t0, 0(t0)
	mulw a4, a4, t0
	addw t1, t1, a4
	sw t1, 0(a5)
.p2align 2
label33:
	addiw a3, a3, 1
	bgt s0, a3, label32
	addiw a2, a2, 1
	mulw a3, a2, s4
	add a0, s3, a3
	bgt s0, a2, label132
	addiw a1, a1, 1
	blt a1, s7, label11
	j label36
.p2align 2
label37:
	ble s0, s6, label160
	mv a0, zero
	mv a2, s2
	li a0, 4
	sd zero, 0(s2)
	sd zero, 8(s2)
	bgt s5, a0, label40
	j label241
.p2align 2
label38:
	sh2add a2, a0, s2
	addiw a0, a0, 1
	sw zero, 0(a2)
	bgt s0, a0, label38
.p2align 2
label167:
	mv a2, zero
	mv a3, zero
	mv a0, s3
	bgt s0, zero, label82
	j label81
.p2align 2
label40:
	sh2add a2, a0, s2
	addiw a0, a0, 4
	sd zero, 0(a2)
	sd zero, 8(a2)
	bgt s5, a0, label40
	sh2add a2, a0, s2
	addiw a0, a0, 1
	sw zero, 0(a2)
	bgt s0, a0, label38
.p2align 2
label243:
	mv a2, zero
	mv a3, zero
	mv a0, s3
	ble s0, zero, label81
.p2align 2
label82:
	mv a3, zero
	ble s0, zero, label17
.p2align 2
label18:
	sh2add a5, a3, a0
	lw a4, 0(a5)
	beq a4, zero, label19
	sh2add t1, a3, s1
	sh2add a5, a2, s2
	lw t0, 0(a5)
	lw t2, 0(t1)
	mulw t1, a4, t2
	addw a4, t0, t1
	sw a4, 0(a5)
.p2align 2
label19:
	addiw a3, a3, 1
	bgt s0, a3, label18
	addiw a2, a2, 1
	mulw a3, a2, s4
	add a0, s3, a3
	bgt s0, a2, label82
	ble s0, zero, label228
.p2align 2
label22:
	ble s0, s6, label108
	mv a0, zero
	mv a2, s1
	li a0, 4
	sd zero, 0(s1)
	sd zero, 8(s1)
	bgt s5, a0, label25
	j label233
.p2align 2
label23:
	sh2add a2, a0, s1
	addiw a0, a0, 1
	sw zero, 0(a2)
	bgt s0, a0, label23
.p2align 2
label115:
	mv a2, zero
	mv a3, zero
	mv a0, s3
	bgt s0, zero, label132
	j label131
.p2align 2
label25:
	sh2add a2, a0, s1
	addiw a0, a0, 4
	sd zero, 0(a2)
	sd zero, 8(a2)
	bgt s5, a0, label25
	sh2add a2, a0, s1
	addiw a0, a0, 1
	sw zero, 0(a2)
	bgt s0, a0, label23
.p2align 2
label235:
	mv a2, zero
	mv a3, zero
	mv a0, s3
	bgt s0, zero, label132
	j label131
.p2align 2
label31:
	addiw a2, a2, 1
	mulw a3, a2, s4
	add a0, s3, a3
	bgt s0, a2, label132
	addiw a1, a1, 1
	blt a1, s7, label11
	j label36
.p2align 2
label17:
	addiw a2, a2, 1
	mulw a3, a2, s4
	add a0, s3, a3
	bgt s0, a2, label82
	bgt s0, zero, label22
	j label228
label36:
	li a0, 67
	jal _sysy_stoptime
	mv a0, s0
	mv a1, s2
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s3, 24(sp)
	ld s2, 32(sp)
	ld s4, 40(sp)
	ld s7, 48(sp)
	ld s6, 56(sp)
	ld s1, 64(sp)
	ld s8, 72(sp)
	addi sp, sp, 80
	ret
label75:
	mv a2, zero
	mv a3, zero
	mv a0, s3
	bgt s0, zero, label82
	j label81
label228:
	mv a2, zero
	mv a3, zero
	mv a0, s3
	bgt s0, zero, label132
	j label131
label108:
	mv a0, zero
	mv a2, s1
	li a0, 1
	sw zero, 0(s1)
	bgt s0, a0, label23
	j label115
label160:
	mv a0, zero
	mv a2, s2
	li a0, 1
	sw zero, 0(s2)
	bgt s0, a0, label38
	j label167
label241:
	sh2add a2, a0, s2
	addiw a0, a0, 1
	sw zero, 0(a2)
	bgt s0, a0, label38
	j label243
label233:
	sh2add a2, a0, s1
	addiw a0, a0, 1
	sw zero, 0(a2)
	bgt s0, a0, label23
	j label235
label131:
	addiw a1, a1, 1
	blt a1, s7, label11
	j label36
label81:
	bgt s0, zero, label22
	j label228
label54:
	addiw s2, s2, 1
	j label2
