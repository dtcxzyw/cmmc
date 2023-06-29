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
pcrel1184:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel1184)
pcrel1185:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(pcrel1185)
pcrel1186:
	auipc a0, %pcrel_hi(C)
	addi s3, a0, %pcrel_lo(pcrel1186)
	mv s4, zero
	bge zero, s0, label126
	ble s0, zero, label5
	slli a0, zero, 12
	add s6, s2, a0
	mv s5, zero
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label5
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label5
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label5
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label5
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label5
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label5
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label5
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label5
	j label957
label126:
	mv s4, zero
	bge zero, s0, label16
	ble s0, zero, label12
	slli a0, zero, 12
	add s6, s1, a0
	mv s5, zero
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label12
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label12
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label12
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label12
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label12
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label12
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label12
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label12
label963:
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label12
	j label1016
label16:
	li a0, 65
	jal _sysy_starttime
	mv a0, zero
	mv a1, zero
	bge zero, s0, label162
	slliw a2, zero, 12
	add a3, s3, a2
	ble s0, zero, label22
	mv a2, zero
	addiw a4, zero, 4
	bge a4, s0, label25
	slli a2, zero, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label25
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label25
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label25
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label25
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label25
	j label1018
label162:
	mv a1, zero
	slliw a2, zero, 12
	add a3, s1, a2
	bge zero, s0, label211
	mv a2, zero
	bge zero, s0, label96
	slliw a4, zero, 12
	add t1, s2, a4
	slli a4, zero, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label98
	addiw a2, zero, 1
	bge a2, s0, label96
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, zero, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label98
	addiw a2, a2, 1
	bge a2, s0, label96
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, zero, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label98
	addiw a2, a2, 1
	bge a2, s0, label96
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, zero, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label98
	addiw a2, a2, 1
	bge a2, s0, label96
	j label1000
label1071:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label25
label969:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label25
	j label1022
label211:
	mv a1, zero
	bge zero, s0, label215
	slliw a2, zero, 12
	add a3, s1, a2
	ble s0, zero, label82
	mv a2, zero
	addiw a4, zero, 4
	bge a4, s0, label85
	slli a2, zero, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label85
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label85
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label85
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label85
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label85
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label85
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label85
	j label992
label215:
	mv a1, zero
	slliw a2, zero, 12
	add a3, s3, a2
	bge zero, s0, label40
	mv a2, zero
	bge zero, s0, label62
	slliw a4, zero, 12
	add t1, s2, a4
	slli a4, zero, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label64
	addiw a2, zero, 1
	bge a2, s0, label62
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, zero, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label64
	addiw a2, a2, 1
	bge a2, s0, label62
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, zero, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label64
	addiw a2, a2, 1
	bge a2, s0, label62
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, zero, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label64
	addiw a2, a2, 1
	bge a2, s0, label62
	j label985
label40:
	addiw a0, a0, 1
	li a1, 5
	bge a0, a1, label226
	mv a1, zero
	bge zero, s0, label162
	slliw a2, zero, 12
	add a3, s3, a2
	ble s0, zero, label22
	mv a2, zero
	addiw a4, zero, 4
	bge a4, s0, label25
	slli a2, zero, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label25
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label25
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label25
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label25
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label25
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label25
	j label1071
label226:
	mv a2, zero
	mv s2, zero
	bge zero, s0, label44
	ble s0, zero, label46
	slli a0, zero, 12
	add a4, s1, a0
	mv a0, zero
	mv a1, zero
	addiw a3, zero, 4
	bge a3, s0, label53
	j label52
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
label985:
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label64
	j label1038
label98:
	ble s0, zero, label114
	slliw a4, a2, 12
	add a4, s3, a4
	li a5, 4
	ble s0, a5, label482
	slli a5, a1, 2
	add a5, t1, a5
	lw t2, 0(a5)
	li a5, 4
	mv t4, zero
	j label111
label482:
	mv t3, zero
	slli a5, a1, 2
	add a5, t1, a5
	lw a5, 0(a5)
	addiw t1, zero, 4
	bge t1, s0, label104
label109:
	slli t2, t3, 2
	add t2, a4, t2
	lw t4, 0(t2)
	slli t3, t3, 2
	add t3, a3, t3
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
label1053:
	addiw a2, a2, 1
	bge a2, s0, label96
	j label1106
label107:
	slli t2, t1, 2
	add t2, a4, t2
	lw t3, 0(t2)
	slli t4, t1, 2
	add t4, a3, t4
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label114
	j label107
label114:
	addiw a2, a2, 1
	bge a2, s0, label96
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label98
	addiw a2, a2, 1
	bge a2, s0, label96
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label98
	addiw a2, a2, 1
	bge a2, s0, label96
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label98
	addiw a2, a2, 1
	bge a2, s0, label96
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label98
	addiw a2, a2, 1
	bge a2, s0, label96
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label98
	j label1053
label104:
	addiw t1, t3, 4
	bge t1, s0, label495
	j label106
label495:
	mv t1, t3
	j label107
label106:
	slli t2, t3, 2
	add t2, a4, t2
	lw t4, 0(t2)
	slli t3, t3, 2
	add t3, a3, t3
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
label111:
	slli t3, t4, 2
	add t3, a4, t3
	lw t5, 0(t3)
	slli t4, t4, 2
	add t4, a3, t4
	lw t6, 0(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 0(t3)
	lw t5, 4(t3)
	lw t6, 4(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 4(t3)
	lw t5, 8(t3)
	lw t6, 8(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 8(t3)
	lw t5, 12(t3)
	lw t4, 12(t4)
	mulw t4, t2, t4
	addw t4, t4, t5
	sw t4, 12(t3)
	addiw t3, a5, 4
	bge t3, s0, label594
	mv t4, a5
	mv a5, t3
	j label111
label594:
	mv t3, a5
	slli a5, a1, 2
	add a5, t1, a5
	lw a5, 0(a5)
	addiw t1, t3, 4
	bge t1, s0, label104
	j label109
label1000:
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label98
	j label1053
label96:
	addiw a1, a1, 1
	slliw a2, a1, 12
	add a3, s1, a2
	bge a1, s0, label211
	mv a2, zero
	bge zero, s0, label96
	slliw a4, zero, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label98
	addiw a2, zero, 1
	bge a2, s0, label96
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label98
	addiw a2, a2, 1
	bge a2, s0, label96
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label98
	addiw a2, a2, 1
	bge a2, s0, label96
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label98
	addiw a2, a2, 1
	bge a2, s0, label96
	j label1000
label1106:
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label98
	j label1053
label1038:
	addiw a2, a2, 1
	bge a2, s0, label62
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label64
	j label1038
label64:
	ble s0, zero, label80
	slliw a4, a2, 12
	add a4, s1, a4
	li a5, 4
	ble s0, a5, label303
	slli a5, a1, 2
	add a5, t1, a5
	lw t2, 0(a5)
	li a5, 4
	mv t4, zero
label67:
	slli t3, t4, 2
	add t3, a4, t3
	lw t5, 0(t3)
	slli t4, t4, 2
	add t4, a3, t4
	lw t6, 0(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 0(t3)
	lw t5, 4(t3)
	lw t6, 4(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 4(t3)
	lw t5, 8(t3)
	lw t6, 8(t4)
	mulw t6, t2, t6
	addw t5, t6, t5
	sw t5, 8(t3)
	lw t5, 12(t3)
	lw t4, 12(t4)
	mulw t4, t2, t4
	addw t4, t4, t5
	sw t4, 12(t3)
	addiw t3, a5, 4
	bge t3, s0, label337
	mv t4, a5
	mv a5, t3
	j label67
label337:
	mv t3, a5
	slli a5, a1, 2
	add a5, t1, a5
	lw a5, 0(a5)
	addiw t1, t3, 4
	bge t1, s0, label75
	j label74
label75:
	addiw t1, t3, 4
	bge t1, s0, label377
	j label77
label377:
	mv t1, t3
	j label78
label77:
	slli t2, t3, 2
	add t2, a4, t2
	lw t4, 0(t2)
	slli t3, t3, 2
	add t3, a3, t3
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
	bge t1, s0, label377
	j label77
label78:
	slli t2, t1, 2
	add t2, a4, t2
	lw t3, 0(t2)
	slli t4, t1, 2
	add t4, a3, t4
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	addiw t1, t1, 1
	bge t1, s0, label80
	j label78
label303:
	mv t3, zero
	slli a5, a1, 2
	add a5, t1, a5
	lw a5, 0(a5)
	addiw t1, zero, 4
	bge t1, s0, label75
label74:
	slli t2, t3, 2
	add t2, a4, t2
	lw t4, 0(t2)
	slli t3, t3, 2
	add t3, a3, t3
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
	j label74
label62:
	addiw a1, a1, 1
	slliw a2, a1, 12
	add a3, s3, a2
	bge a1, s0, label40
	mv a2, zero
	bge zero, s0, label62
	slliw a4, zero, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label64
	addiw a2, zero, 1
	bge a2, s0, label62
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label64
	addiw a2, a2, 1
	bge a2, s0, label62
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label64
	addiw a2, a2, 1
	bge a2, s0, label62
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label64
	addiw a2, a2, 1
	bge a2, s0, label62
	j label985
label80:
	addiw a2, a2, 1
	bge a2, s0, label62
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label64
	addiw a2, a2, 1
	bge a2, s0, label62
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label64
	addiw a2, a2, 1
	bge a2, s0, label62
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label64
	addiw a2, a2, 1
	bge a2, s0, label62
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label64
	addiw a2, a2, 1
	bge a2, s0, label62
	slliw a4, a2, 12
	add t1, s2, a4
	slli a4, a1, 2
	add a4, t1, a4
	lw a4, 0(a4)
	bne a4, zero, label64
	j label1038
label25:
	addiw a4, a2, 4
	bge a4, s0, label28
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label28
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label28
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label28
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label28
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label28
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label28
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label28
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label28
	j label1076
label28:
	addiw a4, a2, 4
	bge a4, s0, label31
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label31
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label31
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label31
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label31
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label31
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label31
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label31
	j label1026
label31:
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label22
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label22
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label22
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label22
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label22
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label22
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label22
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label22
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label22
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label22
label1082:
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label22
	j label1082
label85:
	addiw a4, a2, 4
	bge a4, s0, label87
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label87
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label87
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label87
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label87
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label87
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label87
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label87
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label87
	j label1099
label87:
	addiw a4, a2, 4
	bge a4, s0, label89
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label89
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label89
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label89
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label89
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label89
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label89
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label89
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label89
	j label1100
label89:
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label82
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label82
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label82
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label82
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label82
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label82
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label82
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label82
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label82
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label82
label1101:
	slli a4, a2, 2
	add a4, a3, a4
	sw zero, 0(a4)
	addiw a2, a2, 1
	bge a2, s0, label82
	j label1101
label1099:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label87
	j label1099
label1100:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label89
	j label1100
label992:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label85
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label85
label1098:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label85
	j label1098
label82:
	addiw a1, a1, 1
	bge a1, s0, label215
	slliw a2, a1, 12
	add a3, s1, a2
	ble s0, zero, label82
	mv a2, zero
	addiw a4, zero, 4
	bge a4, s0, label85
	slli a2, zero, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label85
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label85
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label85
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label85
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label85
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label85
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label85
	j label992
label1026:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label31
	j label1079
label1076:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label28
	j label1076
label1079:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label31
	j label1079
label1018:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label25
	j label1071
label22:
	addiw a1, a1, 1
	bge a1, s0, label162
	slliw a2, a1, 12
	add a3, s3, a2
	ble s0, zero, label22
	mv a2, zero
	addiw a4, zero, 4
	bge a4, s0, label25
	slli a2, zero, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label25
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label25
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label25
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label25
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label25
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label25
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label25
	j label969
label1022:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label25
label1075:
	slli a2, a2, 2
	add a2, a3, a2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a4
	addiw a4, a4, 4
	bge a4, s0, label25
	j label1075
label5:
	addiw s4, s4, 1
	bge s4, s0, label126
	ble s0, zero, label5
	slli a0, s4, 12
	add s6, s2, a0
	mv s5, zero
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label5
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label5
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label5
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label5
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label5
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label5
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label5
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label5
label957:
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label5
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label5
label1063:
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label5
	j label1063
label1016:
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label12
label1069:
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label12
	j label1069
label12:
	addiw s4, s4, 1
	bge s4, s0, label16
	ble s0, zero, label12
	slli a0, s4, 12
	add s6, s1, a0
	mv s5, zero
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label12
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label12
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label12
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label12
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label12
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label12
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label12
	jal getint
	slli a1, s5, 2
	add a1, s6, a1
	sw a0, 0(a1)
	addiw s5, s5, 1
	bge s5, s0, label12
	j label963
label52:
	slli a1, a1, 2
	add a1, a4, a1
	lw t1, 0(a1)
	lw a5, 4(a1)
	addw a0, a0, t1
	addw a0, a0, a5
	lw a5, 8(a1)
	addw a0, a0, a5
	lw a1, 12(a1)
	addw a0, a0, a1
	mv a1, a3
	addiw a3, a3, 4
	bge a3, s0, label53
	j label52
label53:
	addiw a3, a1, 4
	bge a3, s0, label57
	j label56
label57:
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label281
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label281
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label281
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label281
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label281
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label281
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label281
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label281
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label281
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label281
label1090:
	slli a3, a1, 2
	add a3, a4, a3
	lw a3, 0(a3)
	addw a0, a0, a3
	addiw a1, a1, 1
	bge a1, s0, label281
	j label1090
label281:
	mv s2, a0
	addiw a2, a2, 1
	bge a2, s0, label44
	ble s0, zero, label46
	slli a0, a2, 12
	add a4, s1, a0
	mv a0, s2
	mv a1, zero
	addiw a3, zero, 4
	bge a3, s0, label53
	j label52
label56:
	slli a1, a1, 2
	add a1, a4, a1
	lw a5, 0(a1)
	lw t1, 4(a1)
	addw a0, a0, a5
	addw a0, a0, t1
	lw a5, 8(a1)
	addw a0, a0, a5
	lw a1, 12(a1)
	addw a0, a0, a1
	mv a1, a3
	addiw a3, a3, 4
	bge a3, s0, label57
	j label56
label46:
	addiw a2, a2, 1
	bge a2, s0, label44
	ble s0, zero, label46
	slli a0, a2, 12
	add a4, s1, a0
	mv a0, s2
	mv a1, zero
	addiw a3, zero, 4
	bge a3, s0, label53
	j label52
