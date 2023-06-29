.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
A:
	.zero	4194304
.align 4
B:
	.zero	4194304
.align 4
C:
	.zero	4194304
.text
.globl main
main:
	addi sp, sp, -64
	sd s0, 56(sp)
	sd s5, 48(sp)
	sd s2, 40(sp)
	sd s1, 32(sp)
	sd s6, 24(sp)
	sd s3, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s0, a0
pcrel1214:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel1214)
pcrel1215:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(pcrel1215)
pcrel1216:
	auipc a0, %pcrel_hi(C)
	addi s3, a0, %pcrel_lo(pcrel1216)
	mv s5, zero
	bge zero, s0, label126
	ble s0, zero, label5
	slli a0, zero, 12
	add s4, s2, a0
	mv s6, zero
	jal getint
	slli a1, s6, 2
	add a1, s4, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	slli a1, s6, 2
	add a1, s4, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	slli a1, s6, 2
	add a1, s4, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	slli a1, s6, 2
	add a1, s4, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	slli a1, s6, 2
	add a1, s4, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	slli a1, s6, 2
	add a1, s4, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	slli a1, s6, 2
	add a1, s4, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	slli a1, s6, 2
	add a1, s4, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	j label976
label126:
	mv s4, zero
	bge zero, s0, label16
	ble s0, zero, label12
	slli a0, zero, 12
	add s5, s1, a0
	mv s6, zero
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label12
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label12
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label12
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label12
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label12
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label12
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label12
	j label926
label976:
	jal getint
	slli a1, s6, 2
	add a1, s4, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	j label1032
label926:
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label12
	j label982
label16:
	li a0, 65
	jal _sysy_starttime
	mv a0, zero
	mv a2, zero
	bge zero, s0, label162
	slliw a1, zero, 12
	add a1, s3, a1
	ble s0, zero, label33
	mv a4, zero
	addiw a3, zero, 4
	bge a3, s0, label25
	slli a4, zero, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
	j label1040
label162:
	mv a2, zero
	slliw a1, zero, 12
	add a1, s1, a1
	bge zero, s0, label211
	mv a3, zero
	bge zero, s0, label96
	slliw a4, zero, 12
	add a5, s2, a4
	slli a4, zero, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label98
	addiw a3, zero, 1
	bge a3, s0, label96
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, zero, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label98
	addiw a3, a3, 1
	bge a3, s0, label96
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, zero, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label98
	addiw a3, a3, 1
	bge a3, s0, label96
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, zero, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label98
	addiw a3, a3, 1
	bge a3, s0, label96
	j label1022
label98:
	ble s0, zero, label114
	slliw a4, a3, 12
	add a4, s3, a4
	li t1, 4
	ble s0, t1, label482
	slli t1, a2, 2
	add t1, a5, t1
	lw t1, 0(t1)
	li t2, 4
	mv t4, zero
	j label111
label482:
	mv t3, zero
	slli t1, a2, 2
	add a5, a5, t1
	lw a5, 0(a5)
	addiw t1, zero, 4
	bge t1, s0, label104
	j label109
label107:
	slli t2, t1, 2
	add t2, a4, t2
	lw t3, 0(t2)
	slli t4, t1, 2
	add t4, a1, t4
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label114
	j label107
label114:
	addiw a3, a3, 1
	bge a3, s0, label96
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label98
	addiw a3, a3, 1
	bge a3, s0, label96
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label98
	addiw a3, a3, 1
	bge a3, s0, label96
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label98
	addiw a3, a3, 1
	bge a3, s0, label96
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label98
	addiw a3, a3, 1
	bge a3, s0, label96
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label98
	j label1078
label104:
	addiw t1, t3, 4
	bge t1, s0, label495
	j label106
label495:
	mv t1, t3
	j label107
label111:
	slli t3, t4, 2
	add t3, a4, t3
	lw t5, 0(t3)
	slli t4, t4, 2
	add t4, a1, t4
	lw t6, 0(t4)
	mulw t6, t1, t6
	addw t5, t6, t5
	sw t5, 0(t3)
	lw t5, 4(t3)
	lw t6, 4(t4)
	mulw t6, t1, t6
	addw t5, t6, t5
	sw t5, 4(t3)
	lw t5, 8(t3)
	lw t6, 8(t4)
	mulw t6, t1, t6
	addw t5, t6, t5
	sw t5, 8(t3)
	lw t5, 12(t3)
	lw t4, 12(t4)
	mulw t4, t1, t4
	addw t4, t4, t5
	sw t4, 12(t3)
	addiw t3, t2, 4
	bge t3, s0, label594
	mv t4, t2
	mv t2, t3
	j label111
label594:
	mv t3, t2
	slli t1, a2, 2
	add a5, a5, t1
	lw a5, 0(a5)
	addiw t1, t2, 4
	bge t1, s0, label104
label109:
	slli t2, t3, 2
	add t2, a4, t2
	lw t4, 0(t2)
	slli t3, t3, 2
	add t3, a1, t3
	lw t5, 0(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 8(t2)
	lw t4, 12(t2)
	lw t3, 12(t3)
	mulw t3, a5, t3
	addw t3, t3, t4
	sw t3, 12(t2)
	mv t3, t1
	addiw t1, t1, 4
	bge t1, s0, label104
	j label109
label106:
	slli t2, t3, 2
	add t2, a4, t2
	lw t4, 0(t2)
	slli t3, t3, 2
	add t3, a1, t3
	lw t5, 0(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 8(t2)
	lw t4, 12(t2)
	lw t3, 12(t3)
	mulw t3, a5, t3
	addw t3, t3, t4
	sw t3, 12(t2)
	mv t3, t1
	addiw t1, t1, 4
	bge t1, s0, label495
	j label106
label1096:
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
	j label988
label211:
	mv a2, zero
	bge zero, s0, label215
	slliw a1, zero, 12
	add a1, s1, a1
	ble s0, zero, label82
	mv a4, zero
	addiw a3, zero, 4
	bge a3, s0, label86
	slli a4, zero, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label86
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label86
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label86
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label86
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label86
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label86
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label86
	j label1012
label215:
	mv a2, zero
	slliw a1, zero, 12
	add a1, s3, a1
	bge zero, s0, label40
	mv a3, zero
	bge zero, s0, label62
	slliw a4, zero, 12
	add a5, s2, a4
	slli a4, zero, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label65
	addiw a3, zero, 1
	bge a3, s0, label62
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, zero, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label65
	addiw a3, a3, 1
	bge a3, s0, label62
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, zero, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label65
	addiw a3, a3, 1
	bge a3, s0, label62
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, zero, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label65
	addiw a3, a3, 1
	bge a3, s0, label62
	j label1004
label40:
	addiw a0, a0, 1
	li a1, 5
	bge a0, a1, label226
	mv a2, zero
	bge zero, s0, label162
	slliw a1, zero, 12
	add a1, s3, a1
	ble s0, zero, label33
	mv a4, zero
	addiw a3, zero, 4
	bge a3, s0, label25
	slli a4, zero, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
	j label1096
label226:
	mv a0, zero
	mv s2, zero
	bge zero, s0, label44
	ble s0, zero, label58
	slli a1, zero, 12
	add a1, s1, a1
	mv a3, zero
	mv a4, zero
	addiw a2, zero, 4
	bge a2, s0, label240
	j label57
label1004:
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label65
	j label1060
label62:
	addiw a2, a2, 1
	slliw a1, a2, 12
	add a1, s3, a1
	bge a2, s0, label40
	mv a3, zero
	bge zero, s0, label62
	slliw a4, zero, 12
	add a5, s2, a4
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label65
	addiw a3, zero, 1
	bge a3, s0, label62
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label65
	addiw a3, a3, 1
	bge a3, s0, label62
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label65
	addiw a3, a3, 1
	bge a3, s0, label62
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label65
	addiw a3, a3, 1
	bge a3, s0, label62
	j label1004
label65:
	ble s0, zero, label64
	slliw a4, a3, 12
	add a4, s1, a4
	li t1, 4
	ble s0, t1, label304
	j label727
label86:
	addiw a3, a4, 4
	bge a3, s0, label88
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label88
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label88
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label88
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label88
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label88
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label88
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label88
	j label1071
label1022:
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label98
	j label1078
label96:
	addiw a2, a2, 1
	slliw a1, a2, 12
	add a1, s1, a1
	bge a2, s0, label211
	mv a3, zero
	bge zero, s0, label96
	slliw a4, zero, 12
	add a5, s2, a4
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label98
	addiw a3, zero, 1
	bge a3, s0, label96
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label98
	addiw a3, a3, 1
	bge a3, s0, label96
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label98
	addiw a3, a3, 1
	bge a3, s0, label96
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label98
	addiw a3, a3, 1
	bge a3, s0, label96
	j label1022
label64:
	addiw a3, a3, 1
	bge a3, s0, label62
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label65
	addiw a3, a3, 1
	bge a3, s0, label62
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label65
	addiw a3, a3, 1
	bge a3, s0, label62
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label65
	addiw a3, a3, 1
	bge a3, s0, label62
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label65
	addiw a3, a3, 1
	bge a3, s0, label62
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label65
	j label1060
label78:
	slli t2, t1, 2
	add t2, a4, t2
	lw t3, 0(t2)
	slli t4, t1, 2
	add t4, a1, t4
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label64
	j label78
label1078:
	addiw a3, a3, 1
	bge a3, s0, label96
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label98
	j label1078
label88:
	addiw a3, a4, 4
	bge a3, s0, label443
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label443
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label443
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label443
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label443
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label443
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label443
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label443
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label443
	j label1128
label443:
	mv a3, a4
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label82
	slli a4, a3, 2
	add a4, a1, a4
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label82
	slli a4, a3, 2
	add a4, a1, a4
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label82
	slli a4, a3, 2
	add a4, a1, a4
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label82
	slli a4, a3, 2
	add a4, a1, a4
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label82
	slli a4, a3, 2
	add a4, a1, a4
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label82
	slli a4, a3, 2
	add a4, a1, a4
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label82
	slli a4, a3, 2
	add a4, a1, a4
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label82
	slli a4, a3, 2
	add a4, a1, a4
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label82
	slli a4, a3, 2
	add a4, a1, a4
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label82
label1131:
	slli a4, a3, 2
	add a4, a1, a4
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label82
	j label1131
label988:
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
	j label1044
label25:
	addiw a3, a4, 4
	bge a3, s0, label27
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label27
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label27
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label27
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label27
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label27
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label27
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label27
	j label1047
label27:
	addiw a3, a4, 4
	bge a3, s0, label187
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label187
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label187
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label187
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label187
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label187
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label187
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label187
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label187
	j label1104
label187:
	mv a3, a4
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label33
	slli a4, a3, 2
	add a4, a1, a4
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label33
	slli a4, a3, 2
	add a4, a1, a4
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label33
	slli a4, a3, 2
	add a4, a1, a4
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label33
	slli a4, a3, 2
	add a4, a1, a4
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label33
	slli a4, a3, 2
	add a4, a1, a4
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label33
	slli a4, a3, 2
	add a4, a1, a4
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label33
	slli a4, a3, 2
	add a4, a1, a4
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label33
	slli a4, a3, 2
	add a4, a1, a4
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label33
	slli a4, a3, 2
	add a4, a1, a4
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label33
	j label1105
label33:
	addiw a2, a2, 1
	bge a2, s0, label162
	slliw a1, a2, 12
	add a1, s3, a1
	ble s0, zero, label33
	mv a4, zero
	addiw a3, zero, 4
	bge a3, s0, label25
	slli a4, zero, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
	j label988
label1105:
	slli a4, a3, 2
	add a4, a1, a4
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label33
	j label1105
label1060:
	addiw a3, a3, 1
	bge a3, s0, label62
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label65
	j label1060
label727:
	slli t1, a2, 2
	add t1, a5, t1
	lw t1, 0(t1)
	li t2, 4
	mv t4, zero
label68:
	slli t3, t4, 2
	add t3, a4, t3
	lw t5, 0(t3)
	slli t4, t4, 2
	add t4, a1, t4
	lw t6, 0(t4)
	mulw t6, t1, t6
	addw t5, t6, t5
	sw t5, 0(t3)
	lw t5, 4(t3)
	lw t6, 4(t4)
	mulw t6, t1, t6
	addw t5, t6, t5
	sw t5, 4(t3)
	lw t5, 8(t3)
	lw t6, 8(t4)
	mulw t6, t1, t6
	addw t5, t6, t5
	sw t5, 8(t3)
	lw t5, 12(t3)
	lw t4, 12(t4)
	mulw t4, t1, t4
	addw t4, t4, t5
	sw t4, 12(t3)
	addiw t3, t2, 4
	bge t3, s0, label71
	mv t4, t2
	mv t2, t3
	j label68
label71:
	slli t1, a2, 2
	add a5, a5, t1
	lw a5, 0(a5)
	mv t3, t2
	addiw t1, t2, 4
	bge t1, s0, label75
label80:
	slli t2, t3, 2
	add t2, a4, t2
	lw t4, 0(t2)
	slli t3, t3, 2
	add t3, a1, t3
	lw t5, 0(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 8(t2)
	lw t4, 12(t2)
	lw t3, 12(t3)
	mulw t3, a5, t3
	addw t3, t3, t4
	sw t3, 12(t2)
	mv t3, t1
	addiw t1, t1, 4
	bge t1, s0, label75
	j label80
label75:
	addiw t1, t3, 4
	bge t1, s0, label352
	j label77
label352:
	mv t1, t3
	j label78
label77:
	slli t2, t3, 2
	add t2, a4, t2
	lw t4, 0(t2)
	slli t3, t3, 2
	add t3, a1, t3
	lw t5, 0(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t5, a5, t5
	addw t4, t5, t4
	sw t4, 8(t2)
	lw t4, 12(t2)
	lw t3, 12(t3)
	mulw t3, a5, t3
	addw t3, t3, t4
	sw t3, 12(t2)
	mv t3, t1
	addiw t1, t1, 4
	bge t1, s0, label352
	j label77
label304:
	mv t2, zero
	slli t1, a2, 2
	add a5, a5, t1
	lw a5, 0(a5)
	mv t3, zero
	addiw t1, zero, 4
	bge t1, s0, label75
	j label80
label1128:
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label443
	j label1128
label1071:
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label88
label1127:
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label88
	j label1127
label82:
	addiw a2, a2, 1
	bge a2, s0, label215
	slliw a1, a2, 12
	add a1, s1, a1
	ble s0, zero, label82
	mv a4, zero
	addiw a3, zero, 4
	bge a3, s0, label86
	slli a4, zero, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label86
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label86
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label86
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label86
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label86
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label86
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label86
label1012:
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label86
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label86
label1124:
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label86
	j label1124
label1047:
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label27
	j label1103
label1104:
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label187
	j label1104
label1044:
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
label1100:
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
	j label1100
label1103:
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label27
	j label1103
label1040:
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label25
	j label1096
label1032:
	jal getint
	slli a1, s6, 2
	add a1, s4, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
label1088:
	jal getint
	slli a1, s6, 2
	add a1, s4, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	j label1088
label982:
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label12
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label12
label1094:
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label12
	j label1094
label240:
	mv a2, a3
	addiw a3, a4, 4
	bge a3, s0, label245
	j label53
label245:
	mv a3, a4
	slli a4, a4, 2
	add a4, a1, a4
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label267
	slli a4, a3, 2
	add a4, a1, a4
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label267
	slli a4, a3, 2
	add a4, a1, a4
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label267
	slli a4, a3, 2
	add a4, a1, a4
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label267
	slli a4, a3, 2
	add a4, a1, a4
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label267
	slli a4, a3, 2
	add a4, a1, a4
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label267
	slli a4, a3, 2
	add a4, a1, a4
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label267
	slli a4, a3, 2
	add a4, a1, a4
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label267
	slli a4, a3, 2
	add a4, a1, a4
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label267
	slli a4, a3, 2
	add a4, a1, a4
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label267
	j label1115
label53:
	slli a4, a4, 2
	add a4, a1, a4
	lw a5, 0(a4)
	lw t1, 4(a4)
	addw a2, a2, a5
	addw a2, a2, t1
	lw a5, 8(a4)
	addw a2, a2, a5
	lw a4, 12(a4)
	addw a2, a2, a4
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label245
	j label53
label1115:
	slli a4, a3, 2
	add a4, a1, a4
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label267
	j label1115
label5:
	addiw s5, s5, 1
	bge s5, s0, label126
	ble s0, zero, label5
	slli a0, s5, 12
	add s4, s2, a0
	mv s6, zero
	jal getint
	slli a1, s6, 2
	add a1, s4, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	slli a1, s6, 2
	add a1, s4, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	slli a1, s6, 2
	add a1, s4, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	slli a1, s6, 2
	add a1, s4, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	slli a1, s6, 2
	add a1, s4, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	slli a1, s6, 2
	add a1, s4, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	slli a1, s6, 2
	add a1, s4, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	slli a1, s6, 2
	add a1, s4, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	j label976
label12:
	addiw s4, s4, 1
	bge s4, s0, label16
	ble s0, zero, label12
	slli a0, s4, 12
	add s5, s1, a0
	mv s6, zero
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label12
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label12
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label12
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label12
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label12
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label12
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label12
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label12
	j label982
label267:
	mv s2, a2
	addiw a0, a0, 1
	bge a0, s0, label44
	ble s0, zero, label58
	slli a1, a0, 12
	add a1, s1, a1
	mv a3, a2
	mv a4, zero
	addiw a2, zero, 4
	bge a2, s0, label240
	j label57
label58:
	addiw a0, a0, 1
	bge a0, s0, label44
	ble s0, zero, label58
	slli a1, a0, 12
	add a1, s1, a1
	mv a3, s2
	mv a4, zero
	addiw a2, zero, 4
	bge a2, s0, label240
label57:
	slli a4, a4, 2
	add a4, a1, a4
	lw t1, 0(a4)
	lw a5, 4(a4)
	addw a3, a3, t1
	addw a3, a3, a5
	lw a5, 8(a4)
	addw a3, a3, a5
	lw a4, 12(a4)
	addw a3, a3, a4
	mv a4, a2
	addiw a2, a2, 4
	bge a2, s0, label240
	j label57
label44:
	li a0, 84
	jal _sysy_stoptime
	mv a0, s2
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s6, 24(sp)
	ld s1, 32(sp)
	ld s2, 40(sp)
	ld s5, 48(sp)
	ld s0, 56(sp)
	addi sp, sp, 64
	ret
