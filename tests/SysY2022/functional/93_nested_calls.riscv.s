.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -104
	sd ra, 0(sp)
	sd s5, 8(sp)
	addi s5, sp, 64
	sd s0, 16(sp)
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s2, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	jal getint
	mv s0, a0
	jal getint
	mv s1, a0
	jal getint
	mv s2, a0
	jal getint
	li s6, 10
	mv s4, zero
	mv s3, a0
.p2align 2
label2:
	jal getint
	sh2add a1, s4, s5
	addiw s4, s4, 1
	sw a0, 0(a1)
	blt s4, s6, label2
	sltiu a0, s0, 1
	sltu a1, zero, s1
	and a2, a0, a1
	beq s2, zero, label6
	remw a2, a2, s2
label6:
	lw a5, 64(sp)
	mv t4, zero
	lw a4, 68(sp)
	lw a3, 72(sp)
	sltu t3, zero, a3
	lw a1, 76(sp)
	lw t1, 80(sp)
	sltiu t0, a1, 1
	and t2, t0, t3
	lw t0, 84(sp)
	beq t0, zero, label151
	mv t4, t1
label151:
	mv t3, t2
	bne a4, zero, label153
	mv t3, t4
label153:
	lw t2, 88(sp)
	addw t4, t3, t2
	beq t2, zero, label155
	mv t3, t4
label155:
	addiw t4, t3, 1
	sltiu t6, s3, 1
	addw t3, s3, a2
	bne t6, zero, label157
	mv a2, t3
label157:
	addiw a6, a2, 1
	lw t3, 92(sp)
	bne t3, zero, label22
	j label78
label8:
	lw t5, 96(sp)
	mv s4, t5
	lw t4, 100(sp)
	sltiu s5, t4, 1
	addw a7, t5, s5
	bne t4, zero, label159
	j label158
label22:
	remw a2, t4, t3
	j label8
label158:
	mv s4, a7
label159:
	addiw a7, s4, 1
	subw s4, a7, s0
	bne a0, zero, label161
	mv a7, s4
label161:
	mulw a7, a2, a7
	mv a2, a5
	bne a6, zero, label163
	mv a2, a7
label163:
	sltiu a6, s2, 1
	addw a7, s3, a6
	bne t6, zero, label165
	mv a6, a7
label165:
	addiw t6, a6, 1
	beq t6, zero, label11
	remw s1, s1, t6
label11:
	addw t6, a2, s1
	beq s1, zero, label167
	mv a2, t6
label167:
	addiw a2, a2, 1
	subw t6, a5, a4
	beq a4, zero, label169
	mv a5, t6
label169:
	mulw a2, a2, a5
	beq a3, zero, label14
	remw a2, a2, a3
label14:
	subw a3, t1, t0
	mv a4, t1
	beq t0, zero, label171
	mv a4, a3
label171:
	addiw a3, a4, 1
	beq t2, zero, label17
	subw a4, zero, t2
	remw a3, a3, a4
label17:
	sltiu t0, t5, 1
	mv a4, t3
	subw a5, t3, t0
	bne t5, zero, label173
	mv a4, a5
label173:
	mulw a3, a3, a4
	beq t4, zero, label19
	subw a4, zero, t4
	remw a3, a3, a4
label19:
	addw a4, s0, a3
	bne a0, zero, label175
	mv a3, a4
label175:
	addiw a0, a3, 1
	subw a3, a1, a0
	beq a0, zero, label177
	mv a1, a3
label177:
	mulw a0, a2, a1
	ld ra, 0(sp)
	ld s5, 8(sp)
	ld s0, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s2, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	addi sp, sp, 104
	ret
label78:
	mv a2, t4
	j label8
