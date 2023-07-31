.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
.p2align 2
	addi sp, sp, -96
	sd ra, 0(sp)
	sd s4, 8(sp)
	addi s4, sp, 56
	sd s0, 16(sp)
	sd s5, 24(sp)
	sd s1, 32(sp)
	sd s2, 40(sp)
	sd s3, 48(sp)
	jal getint
	mv s0, a0
	jal getint
	mv s1, a0
	jal getint
	mv s2, a0
	jal getint
	mv s5, zero
	mv s3, a0
.p2align 2
label2:
	jal getint
	sh2add a1, s5, s4
	addiw s5, s5, 1
	sw a0, 0(a1)
	li a0, 10
	blt s5, a0, label2
	sltiu a0, s0, 1
	sltu a1, zero, s1
	and a2, a0, a1
	beq s2, zero, label5
	remw a2, a2, s2
label5:
	lw a4, 56(sp)
	mv t4, zero
	lw t0, 60(sp)
	lw a3, 64(sp)
	sltu t3, zero, a3
	lw a1, 68(sp)
	lw t1, 72(sp)
	sltiu a5, a1, 1
	and t2, a5, t3
	lw a5, 76(sp)
	beq a5, zero, label150
	mv t4, t1
label150:
	mv t3, t2
	bne t0, zero, label152
	mv t3, t4
label152:
	lw t2, 80(sp)
	addw t4, t3, t2
	beq t2, zero, label154
	mv t3, t4
label154:
	addiw t4, t3, 1
	sltiu t6, s3, 1
	addw t3, s3, a2
	bne t6, zero, label156
	mv a2, t3
label156:
	addiw a6, a2, 1
	lw t3, 84(sp)
	bne t3, zero, label21
	j label77
label7:
	lw t5, 88(sp)
	mv s4, t5
	lw t4, 92(sp)
	sltiu s5, t4, 1
	addw a7, t5, s5
	bne t4, zero, label158
	j label157
label21:
	remw a2, t4, t3
	j label7
label157:
	mv s4, a7
label158:
	addiw s5, s4, 1
	mv s4, s5
	subw a7, s5, s0
	bne a0, zero, label160
	mv s4, a7
label160:
	mulw a7, a2, s4
	mv a2, a4
	bne a6, zero, label162
	mv a2, a7
label162:
	sltiu a7, s2, 1
	addw a6, s3, a7
	bne t6, zero, label164
	mv a7, a6
label164:
	addiw t6, a7, 1
	beq t6, zero, label9
	remw s1, s1, t6
label9:
	addw t6, a2, s1
	beq s1, zero, label166
	mv a2, t6
label166:
	addiw a2, a2, 1
	subw t6, a4, t0
	beq t0, zero, label168
	mv a4, t6
label168:
	mulw a2, a2, a4
	beq a3, zero, label11
	remw a2, a2, a3
label11:
	subw a4, t1, a5
	mv a3, t1
	beq a5, zero, label170
	mv a3, a4
label170:
	addiw a3, a3, 1
	beq t2, zero, label14
	subw a4, zero, t2
	remw a3, a3, a4
label14:
	sltiu t0, t5, 1
	mv a5, t3
	subw a4, t3, t0
	bne t5, zero, label172
	mv a5, a4
label172:
	mulw a3, a3, a5
	beq t4, zero, label16
	subw a4, zero, t4
	remw a3, a3, a4
label16:
	addw a4, s0, a3
	bne a0, zero, label174
	mv a3, a4
label174:
	addiw a0, a3, 1
	subw a3, a1, a0
	beq a0, zero, label176
	mv a1, a3
label176:
	mulw a0, a2, a1
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s0, 16(sp)
	ld s5, 24(sp)
	ld s1, 32(sp)
	ld s2, 40(sp)
	ld s3, 48(sp)
	addi sp, sp, 96
	ret
label77:
	mv a2, t4
	j label7
