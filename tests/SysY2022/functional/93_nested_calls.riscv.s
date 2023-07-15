.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
	addi sp, sp, -96
	sd s4, 88(sp)
	addi s4, sp, 0
	sd s0, 80(sp)
	sd s5, 72(sp)
	sd s1, 64(sp)
	sd s2, 40(sp)
	sd s3, 56(sp)
	sd ra, 48(sp)
	jal getint
	mv s0, a0
	jal getint
	mv s1, a0
	jal getint
	mv s2, a0
	jal getint
	mv s5, zero
	mv s3, a0
label2:
	jal getint
	sh2add a1, s5, s4
	addiw s5, s5, 1
	sw a0, 0(a1)
	li a0, 10
	bge s5, a0, label4
	j label2
label4:
	sltiu a0, s0, 1
	sltu a1, zero, s1
	and a2, a0, a1
	beq s2, zero, label5
	j label42
label5:
	lw t0, 0(sp)
	mv t4, zero
	lw t1, 4(sp)
	lw a3, 8(sp)
	sltu t3, zero, a3
	lw a1, 12(sp)
	lw a5, 16(sp)
	sltiu a4, a1, 1
	and t2, a4, t3
	lw a4, 20(sp)
	beq a4, zero, label150
	mv t4, a5
label150:
	mv t3, t2
	bne t1, zero, label152
	mv t3, t4
label152:
	lw t2, 24(sp)
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
	lw t3, 28(sp)
	beq t3, zero, label78
	remw a2, t4, t3
	lw t5, 32(sp)
	mv s4, t5
	lw t4, 36(sp)
	sltiu s5, t4, 1
	addw a7, t5, s5
	bne t4, zero, label158
	mv s4, a7
	addiw s4, a7, 1
	mv s5, s4
	subw a7, s4, s0
	bne a0, zero, label160
	mv s5, a7
	mulw a7, a2, a7
	mv a2, t0
	bne a6, zero, label162
	mv a2, a7
	sltiu a7, s2, 1
	addw a6, s3, a7
	bne t6, zero, label164
	mv a7, a6
	addiw t6, a6, 1
	beq t6, zero, label10
	j label102
label78:
	mv a2, t4
	lw t5, 32(sp)
	mv s4, t5
	lw t4, 36(sp)
	sltiu s5, t4, 1
	addw a7, t5, s5
	bne t4, zero, label158
	mv s4, a7
	addiw s4, a7, 1
	mv s5, s4
	subw a7, s4, s0
	bne a0, zero, label160
	mv s5, a7
	mulw a7, a2, a7
	mv a2, t0
	bne a6, zero, label162
	mv a2, a7
	sltiu a7, s2, 1
	addw a6, s3, a7
	bne t6, zero, label164
	mv a7, a6
	addiw t6, a6, 1
	beq t6, zero, label10
	remw s1, s1, t6
	addw t6, a2, s1
	beq s1, zero, label166
	j label190
label158:
	addiw s4, s4, 1
	mv s5, s4
	subw a7, s4, s0
	bne a0, zero, label160
	mv s5, a7
label160:
	mulw a7, a2, s5
	mv a2, t0
	bne a6, zero, label162
	mv a2, a7
label162:
	sltiu a7, s2, 1
	addw a6, s3, a7
	bne t6, zero, label164
	mv a7, a6
label164:
	addiw t6, a7, 1
	beq t6, zero, label10
label102:
	remw s1, s1, t6
	addw t6, a2, s1
	beq s1, zero, label166
label190:
	mv a2, t6
	addiw a2, t6, 1
	subw t6, t0, t1
	beq t1, zero, label168
	mv t0, t6
	mulw a2, a2, t6
	beq a3, zero, label12
	remw a2, a2, a3
	subw t0, a5, a4
	mv a3, a5
	beq a4, zero, label170
	mv a3, t0
	addiw a3, t0, 1
	beq t2, zero, label14
	subw a4, zero, t2
	remw a3, a3, a4
	sltiu t0, t5, 1
	mv a4, t3
	subw a5, t3, t0
	bne t5, zero, label172
	mv a4, a5
	mulw a3, a3, a5
	beq t4, zero, label16
label214:
	subw a4, zero, t4
	remw a3, a3, a4
	addw a4, s0, a3
	bne a0, zero, label174
	j label220
label12:
	subw t0, a5, a4
	mv a3, a5
	beq a4, zero, label170
	mv a3, t0
label170:
	addiw a3, a3, 1
	beq t2, zero, label14
	subw a4, zero, t2
	remw a3, a3, a4
	sltiu t0, t5, 1
	mv a4, t3
	subw a5, t3, t0
	bne t5, zero, label172
	mv a4, a5
	mulw a3, a3, a5
	beq t4, zero, label16
	subw a4, zero, t4
	remw a3, a3, a4
	addw a4, s0, a3
	bne a0, zero, label174
	mv a3, a4
	addiw a0, a4, 1
	subw a3, a1, a0
	beq a0, zero, label176
label225:
	mv a1, a3
	j label176
label14:
	sltiu t0, t5, 1
	mv a4, t3
	subw a5, t3, t0
	bne t5, zero, label172
	mv a4, a5
label172:
	mulw a3, a3, a4
	beq t4, zero, label16
	subw a4, zero, t4
	remw a3, a3, a4
	addw a4, s0, a3
	bne a0, zero, label174
	mv a3, a4
	addiw a0, a4, 1
	subw a3, a1, a0
	beq a0, zero, label176
	j label225
label176:
	mulw a0, a2, a1
	ld ra, 48(sp)
	ld s3, 56(sp)
	ld s2, 40(sp)
	ld s1, 64(sp)
	ld s5, 72(sp)
	ld s0, 80(sp)
	ld s4, 88(sp)
	addi sp, sp, 96
	ret
label10:
	addw t6, a2, s1
	beq s1, zero, label166
	mv a2, t6
label166:
	addiw a2, a2, 1
	subw t6, t0, t1
	beq t1, zero, label168
	mv t0, t6
label168:
	mulw a2, a2, t0
	beq a3, zero, label12
	remw a2, a2, a3
	subw t0, a5, a4
	mv a3, a5
	beq a4, zero, label170
	mv a3, t0
	addiw a3, t0, 1
	beq t2, zero, label14
	subw a4, zero, t2
	remw a3, a3, a4
	sltiu t0, t5, 1
	mv a4, t3
	subw a5, t3, t0
	bne t5, zero, label172
	mv a4, a5
	mulw a3, a3, a5
	beq t4, zero, label16
	j label214
label16:
	addw a4, s0, a3
	bne a0, zero, label174
	mv a3, a4
label174:
	addiw a0, a3, 1
	subw a3, a1, a0
	beq a0, zero, label176
	j label225
label42:
	remw a2, a2, s2
	j label5
label220:
	mv a3, a4
	addiw a0, a4, 1
	subw a3, a1, a0
	beq a0, zero, label176
	j label225
