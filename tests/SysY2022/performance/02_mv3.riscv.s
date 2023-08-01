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
	addi sp, sp, -56
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s4, 24(sp)
	sd s3, 32(sp)
	sd s2, 40(sp)
	sd s1, 48(sp)
	jal getint
	mv s2, zero
	addiw s4, a0, -8
	mv s0, a0
pcrel265:
	auipc a0, %pcrel_hi(A)
	addi s3, a0, %pcrel_lo(pcrel265)
	bgt s0, zero, label39
label4:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(label4)
	ble s0, zero, label5
	mv s2, zero
	j label37
label5:
	li a0, 59
	jal _sysy_starttime
pcrel266:
	auipc a1, %pcrel_hi(C)
	addi s2, a1, %pcrel_lo(pcrel266)
	mv a1, zero
	j label6
.p2align 2
label37:
	jal getint
	sh2add a1, s2, s1
	addiw s2, s2, 1
	sw a0, 0(a1)
	bgt s0, s2, label37
	j label5
.p2align 2
label39:
	ble s0, zero, label40
	li a1, 8040
	mv s5, zero
	mul a0, s2, a1
	add s1, s3, a0
.p2align 2
label42:
	jal getint
	sh2add a1, s5, s1
	addiw s5, s5, 1
	sw a0, 0(a1)
	bgt s0, s5, label42
	addiw s2, s2, 1
	bgt s0, s2, label39
	j label4
.p2align 2
label6:
	bgt s0, zero, label32
	j label61
.p2align 2
label101:
	mv a3, zero
	ble s0, zero, label230
.p2align 2
label22:
	sh2add a5, a3, a0
	lw a4, 0(a5)
	beq a4, zero, label23
	sh2add t0, a3, s2
	sh2add a5, a2, s1
	lw t1, 0(a5)
	lw t0, 0(t0)
	mulw t2, a4, t0
	addw a4, t1, t2
	sw a4, 0(a5)
.p2align 2
label23:
	addiw a3, a3, 1
	bgt s0, a3, label22
	addiw a2, a2, 1
	li a4, 8040
	mulw a3, a2, a4
	add a0, s3, a3
	bgt s0, a2, label101
	addiw a1, a1, 1
	li a0, 50
	blt a1, a0, label6
	j label19
.p2align 2
label32:
	li a2, 8
	ble s0, a2, label150
	mv a0, zero
	mv a2, s2
	li a0, 8
	sd zero, 0(s2)
	sd zero, 8(s2)
	sd zero, 16(s2)
	sd zero, 24(s2)
	bgt s4, a0, label35
	j label237
.p2align 2
label33:
	sh2add a2, a0, s2
	addiw a0, a0, 1
	sw zero, 0(a2)
	bgt s0, a0, label33
.p2align 2
label157:
	mv a2, zero
	li a4, 8040
	mv a3, zero
	mv a0, s3
	bgt s0, zero, label68
	j label67
.p2align 2
label35:
	sh2add a2, a0, s2
	addiw a0, a0, 8
	sd zero, 0(a2)
	sd zero, 8(a2)
	sd zero, 16(a2)
	sd zero, 24(a2)
	bgt s4, a0, label35
	sh2add a2, a0, s2
	addiw a0, a0, 1
	sw zero, 0(a2)
	bgt s0, a0, label33
label239:
	mv a2, zero
	li a4, 8040
	mv a3, zero
	mv a0, s3
	ble s0, zero, label67
.p2align 2
label68:
	mv a3, zero
	bgt s0, zero, label29
	j label227
.p2align 2
label11:
	li a2, 8
	bgt s0, a2, label74
	j label73
.p2align 2
label29:
	sh2add a5, a3, a0
	lw a4, 0(a5)
	beq a4, zero, label31
	sh2add t1, a3, s1
	sh2add a5, a2, s2
	lw t0, 0(a5)
	lw t1, 0(t1)
	mulw a4, a4, t1
	addw t0, t0, a4
	sw t0, 0(a5)
.p2align 2
label31:
	addiw a3, a3, 1
	bgt s0, a3, label29
	addiw a2, a2, 1
	li a4, 8040
	mulw a3, a2, a4
	add a0, s3, a3
	bgt s0, a2, label68
	bgt s0, zero, label11
.p2align 2
label226:
	mv a2, zero
	j label16
.p2align 2
label74:
	mv a0, zero
.p2align 2
label12:
	sh2add a2, a0, s1
	addiw a0, a0, 8
	sd zero, 0(a2)
	sd zero, 8(a2)
	sd zero, 16(a2)
	sd zero, 24(a2)
	bgt s4, a0, label12
.p2align 2
label14:
	sh2add a2, a0, s1
	addiw a0, a0, 1
	sw zero, 0(a2)
	bgt s0, a0, label14
	j label226
.p2align 2
label16:
	li a4, 8040
	mulw a3, a2, a4
	add a0, s3, a3
	bgt s0, a2, label101
label100:
	addiw a1, a1, 1
	li a0, 50
	blt a1, a0, label6
	j label19
label40:
	addiw s2, s2, 1
	bgt s0, s2, label39
	j label4
label19:
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
	ld s2, 40(sp)
	ld s1, 48(sp)
	addi sp, sp, 56
	ret
label61:
	mv a2, zero
	li a4, 8040
	mv a3, zero
	mv a0, s3
	bgt s0, zero, label68
	j label67
.p2align 2
label230:
	addiw a2, a2, 1
	li a4, 8040
	mulw a3, a2, a4
	add a0, s3, a3
	bgt s0, a2, label101
	j label100
.p2align 2
label227:
	addiw a2, a2, 1
	li a4, 8040
	mulw a3, a2, a4
	add a0, s3, a3
	bgt s0, a2, label68
	bgt s0, zero, label11
	j label226
label150:
	mv a0, zero
	mv a2, s2
	li a0, 1
	sw zero, 0(s2)
	bgt s0, a0, label33
	j label157
label73:
	mv a0, zero
	mv a2, s1
	li a0, 1
	sw zero, 0(s1)
	bgt s0, a0, label14
	j label226
label67:
	bgt s0, zero, label11
	j label226
label237:
	sh2add a2, a0, s2
	addiw a0, a0, 1
	sw zero, 0(a2)
	bgt s0, a0, label33
	j label239
