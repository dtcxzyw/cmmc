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
pcrel1186:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel1186)
pcrel1187:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(pcrel1187)
pcrel1188:
	auipc a0, %pcrel_hi(C)
	addi s3, a0, %pcrel_lo(pcrel1188)
	mv s5, zero
	bge zero, s0, label126
	ble s0, zero, label8
	slli a0, zero, 12
	add s4, s2, a0
	mv s6, zero
	jal getint
	slli a1, s6, 2
	add a1, s4, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	slli a1, s6, 2
	add a1, s4, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	slli a1, s6, 2
	add a1, s4, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	slli a1, s6, 2
	add a1, s4, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	slli a1, s6, 2
	add a1, s4, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	slli a1, s6, 2
	add a1, s4, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	slli a1, s6, 2
	add a1, s4, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	j label1064
label126:
	mv s4, zero
	bge zero, s0, label11
	ble s0, zero, label111
	slli a0, zero, 12
	add s5, s1, a0
	mv s6, zero
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label111
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label111
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label111
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label111
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label111
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label111
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label111
	j label956
label11:
	li a0, 65
	jal _sysy_starttime
	mv a0, zero
	mv a2, zero
	bge zero, s0, label148
	slliw a1, zero, 12
	add a1, s3, a1
	ble s0, zero, label17
	mv a4, zero
	addiw a3, zero, 4
	bge a3, s0, label21
	slli a4, zero, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label21
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label21
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label21
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label21
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label21
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label21
	j label1071
label148:
	mv a2, zero
	slliw a1, zero, 12
	add a1, s1, a1
	bge zero, s0, label197
	mv a3, zero
	bge zero, s0, label91
	slliw a4, zero, 12
	add a5, s2, a4
	slli a4, zero, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label93
	addiw a3, zero, 1
	bge a3, s0, label91
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, zero, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label93
	addiw a3, a3, 1
	bge a3, s0, label91
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, zero, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label93
	addiw a3, a3, 1
	bge a3, s0, label91
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, zero, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label93
	addiw a3, a3, 1
	bge a3, s0, label91
	j label1001
label956:
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label111
	j label1009
label1071:
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label21
	j label969
label21:
	addiw a3, a4, 4
	bge a3, s0, label23
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label23
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label23
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label23
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label23
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label23
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label23
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label23
	j label1025
label197:
	mv a2, zero
	bge zero, s0, label201
	slliw a1, zero, 12
	add a1, s1, a1
	ble s0, zero, label77
	mv a4, zero
	addiw a3, zero, 4
	bge a3, s0, label81
	slli a4, zero, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label81
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label81
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label81
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label81
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label81
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label81
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label81
	j label992
label201:
	mv a2, zero
	slliw a1, zero, 12
	add a1, s3, a1
	bge zero, s0, label35
	mv a3, zero
	bge zero, s0, label57
	slliw a4, zero, 12
	add a5, s2, a4
	slli a4, zero, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label60
	addiw a3, zero, 1
	bge a3, s0, label57
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, zero, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label60
	addiw a3, a3, 1
	bge a3, s0, label57
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, zero, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label60
	addiw a3, a3, 1
	bge a3, s0, label57
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, zero, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label60
	addiw a3, a3, 1
	bge a3, s0, label57
	j label984
label35:
	addiw a0, a0, 1
	li a1, 5
	bge a0, a1, label212
	mv a2, zero
	bge zero, s0, label148
	slliw a1, zero, 12
	add a1, s3, a1
	ble s0, zero, label17
	mv a4, zero
	addiw a3, zero, 4
	bge a3, s0, label21
	slli a4, zero, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label21
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label21
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label21
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label21
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label21
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label21
	j label1071
label212:
	mv a0, zero
	mv s2, zero
	bge zero, s0, label54
	ble s0, zero, label52
	slli a1, zero, 12
	add a1, s1, a1
	mv a3, zero
	mv a4, zero
	addiw a2, zero, 4
	bge a2, s0, label226
label51:
	slli a4, a4, 2
	add a4, a1, a4
	lw a5, 0(a4)
	lw t1, 4(a4)
	addw a3, a3, a5
	addw a3, a3, t1
	lw a5, 8(a4)
	addw a3, a3, a5
	lw a4, 12(a4)
	addw a3, a3, a4
	mv a4, a2
	addiw a2, a2, 4
	bge a2, s0, label226
	j label51
label54:
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
label1001:
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label93
label1054:
	addiw a3, a3, 1
	bge a3, s0, label91
	j label1107
label99:
	addiw t1, t3, 4
	bge t1, s0, label481
	j label103
label481:
	mv t1, t3
label101:
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
	bge t1, s0, label109
	j label101
label109:
	addiw a3, a3, 1
	bge a3, s0, label91
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label93
	addiw a3, a3, 1
	bge a3, s0, label91
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label93
	addiw a3, a3, 1
	bge a3, s0, label91
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label93
	addiw a3, a3, 1
	bge a3, s0, label91
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label93
	addiw a3, a3, 1
	bge a3, s0, label91
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label93
	j label1054
label103:
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
	bge t1, s0, label481
	j label103
label1107:
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label93
	j label1054
label91:
	addiw a2, a2, 1
	slliw a1, a2, 12
	add a1, s1, a1
	bge a2, s0, label197
	mv a3, zero
	bge zero, s0, label91
	slliw a4, zero, 12
	add a5, s2, a4
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label93
	addiw a3, zero, 1
	bge a3, s0, label91
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label93
	addiw a3, a3, 1
	bge a3, s0, label91
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label93
	addiw a3, a3, 1
	bge a3, s0, label91
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label93
	addiw a3, a3, 1
	bge a3, s0, label91
	j label1001
label23:
	addiw a3, a4, 4
	bge a3, s0, label174
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label174
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label174
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label174
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label174
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label174
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label174
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label174
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label174
	j label1079
label174:
	mv a3, a4
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label17
	slli a4, a3, 2
	add a4, a1, a4
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label17
	slli a4, a3, 2
	add a4, a1, a4
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label17
	slli a4, a3, 2
	add a4, a1, a4
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label17
	slli a4, a3, 2
	add a4, a1, a4
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label17
	slli a4, a3, 2
	add a4, a1, a4
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label17
	slli a4, a3, 2
	add a4, a1, a4
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label17
	slli a4, a3, 2
	add a4, a1, a4
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label17
	slli a4, a3, 2
	add a4, a1, a4
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label17
	slli a4, a3, 2
	add a4, a1, a4
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label17
label1080:
	slli a4, a3, 2
	add a4, a1, a4
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label17
	j label1080
label984:
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label60
	j label1037
label57:
	addiw a2, a2, 1
	slliw a1, a2, 12
	add a1, s3, a1
	bge a2, s0, label35
	mv a3, zero
	bge zero, s0, label57
	slliw a4, zero, 12
	add a5, s2, a4
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label60
	addiw a3, zero, 1
	bge a3, s0, label57
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label60
	addiw a3, a3, 1
	bge a3, s0, label57
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label60
	addiw a3, a3, 1
	bge a3, s0, label57
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label60
	addiw a3, a3, 1
	bge a3, s0, label57
	j label984
label60:
	ble s0, zero, label59
	slliw a4, a3, 12
	add a4, s1, a4
	li t1, 4
	ble s0, t1, label290
	j label722
label1037:
	addiw a3, a3, 1
	bge a3, s0, label57
	j label1090
label59:
	addiw a3, a3, 1
	bge a3, s0, label57
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label60
	addiw a3, a3, 1
	bge a3, s0, label57
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label60
	addiw a3, a3, 1
	bge a3, s0, label57
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label60
	addiw a3, a3, 1
	bge a3, s0, label57
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label60
	addiw a3, a3, 1
	bge a3, s0, label57
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label60
	j label1037
label74:
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
	bge t1, s0, label59
	j label74
label1090:
	slliw a4, a3, 12
	add a5, s2, a4
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label60
	j label1037
label93:
	ble s0, zero, label109
	slliw a4, a3, 12
	add a4, s3, a4
	li t1, 4
	ble s0, t1, label468
	slli t1, a2, 2
	add t1, a5, t1
	lw t1, 0(t1)
	li t2, 4
	mv t4, zero
	j label106
label468:
	mv t3, zero
	slli t1, a2, 2
	add a5, a5, t1
	lw a5, 0(a5)
	addiw t1, zero, 4
	bge t1, s0, label99
label104:
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
	bge t1, s0, label99
	j label104
label106:
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
	bge t3, s0, label580
	mv t4, t2
	mv t2, t3
	j label106
label580:
	mv t3, t2
	slli t1, a2, 2
	add a5, a5, t1
	lw a5, 0(a5)
	addiw t1, t2, 4
	bge t1, s0, label99
	j label104
label722:
	slli t1, a2, 2
	add t1, a5, t1
	lw t1, 0(t1)
	li t2, 4
	mv t4, zero
	j label63
label290:
	mv t2, zero
	slli t1, a2, 2
	add a5, a5, t1
	lw a5, 0(a5)
	mv t3, zero
	addiw t1, zero, 4
	bge t1, s0, label71
	j label70
label66:
	slli t1, a2, 2
	add a5, a5, t1
	lw a5, 0(a5)
	mv t3, t2
	addiw t1, t2, 4
	bge t1, s0, label71
label70:
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
	bge t1, s0, label71
	j label70
label71:
	addiw t1, t3, 4
	bge t1, s0, label364
	j label73
label364:
	mv t1, t3
	j label74
label73:
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
	bge t1, s0, label364
	j label73
label63:
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
	bge t3, s0, label66
	mv t4, t2
	mv t2, t3
	j label63
label81:
	addiw a3, a4, 4
	bge a3, s0, label83
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label83
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label83
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label83
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label83
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label83
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label83
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label83
	j label1048
label83:
	addiw a3, a4, 4
	bge a3, s0, label429
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label429
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label429
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label429
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label429
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label429
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label429
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label429
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label429
	j label1102
label429:
	mv a3, a4
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label77
	slli a4, a3, 2
	add a4, a1, a4
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label77
	slli a4, a3, 2
	add a4, a1, a4
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label77
	slli a4, a3, 2
	add a4, a1, a4
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label77
	slli a4, a3, 2
	add a4, a1, a4
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label77
	slli a4, a3, 2
	add a4, a1, a4
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label77
	slli a4, a3, 2
	add a4, a1, a4
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label77
	slli a4, a3, 2
	add a4, a1, a4
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label77
	slli a4, a3, 2
	add a4, a1, a4
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label77
	slli a4, a3, 2
	add a4, a1, a4
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label77
label1103:
	slli a4, a3, 2
	add a4, a1, a4
	sw zero, 0(a4)
	addiw a3, a3, 1
	bge a3, s0, label77
	j label1103
label1048:
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label83
label1101:
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label83
	j label1101
label1102:
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label429
	j label1102
label77:
	addiw a2, a2, 1
	bge a2, s0, label201
	slliw a1, a2, 12
	add a1, s1, a1
	ble s0, zero, label77
	mv a4, zero
	addiw a3, zero, 4
	bge a3, s0, label81
	slli a4, zero, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label81
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label81
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label81
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label81
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label81
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label81
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label81
label992:
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label81
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label81
label1098:
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label81
	j label1098
label1079:
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label174
	j label1079
label17:
	addiw a2, a2, 1
	bge a2, s0, label148
	slliw a1, a2, 12
	add a1, s3, a1
	ble s0, zero, label17
	mv a4, zero
	addiw a3, zero, 4
	bge a3, s0, label21
	slli a4, zero, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label21
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label21
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label21
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label21
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label21
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label21
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label21
label969:
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label21
	j label1022
label1025:
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label23
label1078:
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label23
	j label1078
label1022:
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label21
label1075:
	slli a4, a4, 2
	add a4, a1, a4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	addiw a3, a3, 4
	bge a3, s0, label21
	j label1075
label1064:
	jal getint
	slli a1, s6, 2
	add a1, s4, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
label962:
	jal getint
	slli a1, s6, 2
	add a1, s4, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	slli a1, s6, 2
	add a1, s4, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
label1068:
	jal getint
	slli a1, s6, 2
	add a1, s4, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	j label1068
label1009:
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label111
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label111
label1115:
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label111
	j label1115
label226:
	mv a2, a3
	addiw a3, a4, 4
	bge a3, s0, label231
	j label47
label231:
	mv a3, a4
	slli a4, a4, 2
	add a4, a1, a4
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label253
	slli a4, a3, 2
	add a4, a1, a4
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label253
	slli a4, a3, 2
	add a4, a1, a4
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label253
	slli a4, a3, 2
	add a4, a1, a4
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label253
	slli a4, a3, 2
	add a4, a1, a4
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label253
	slli a4, a3, 2
	add a4, a1, a4
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label253
	slli a4, a3, 2
	add a4, a1, a4
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label253
	slli a4, a3, 2
	add a4, a1, a4
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label253
	slli a4, a3, 2
	add a4, a1, a4
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label253
	slli a4, a3, 2
	add a4, a1, a4
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label253
label1089:
	slli a4, a3, 2
	add a4, a1, a4
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	bge a3, s0, label253
	j label1089
label8:
	addiw s5, s5, 1
	bge s5, s0, label126
	ble s0, zero, label8
	slli a0, s5, 12
	add s4, s2, a0
	mv s6, zero
	jal getint
	slli a1, s6, 2
	add a1, s4, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	slli a1, s6, 2
	add a1, s4, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	slli a1, s6, 2
	add a1, s4, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	slli a1, s6, 2
	add a1, s4, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	slli a1, s6, 2
	add a1, s4, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	slli a1, s6, 2
	add a1, s4, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	slli a1, s6, 2
	add a1, s4, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	jal getint
	slli a1, s6, 2
	add a1, s4, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label8
	j label962
label111:
	addiw s4, s4, 1
	bge s4, s0, label11
	ble s0, zero, label111
	slli a0, s4, 12
	add s5, s1, a0
	mv s6, zero
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label111
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label111
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label111
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label111
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label111
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label111
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label111
	jal getint
	slli a1, s6, 2
	add a1, s5, a1
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label111
	j label1009
label253:
	mv s2, a2
	addiw a0, a0, 1
	bge a0, s0, label54
	ble s0, zero, label52
	slli a1, a0, 12
	add a1, s1, a1
	mv a3, a2
	mv a4, zero
	addiw a2, zero, 4
	bge a2, s0, label226
	j label51
label47:
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
	bge a3, s0, label231
	j label47
label52:
	addiw a0, a0, 1
	bge a0, s0, label54
	ble s0, zero, label52
	slli a1, a0, 12
	add a1, s1, a1
	mv a3, s2
	mv a4, zero
	addiw a2, zero, 4
	bge a2, s0, label226
	j label51
