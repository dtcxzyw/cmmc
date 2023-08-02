.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -104
	sd ra, 0(sp)
	sd s4, 8(sp)
	addi s4, sp, 64
	sd s0, 16(sp)
	sd s5, 24(sp)
	sd s1, 32(sp)
	sd s6, 40(sp)
	sd s2, 48(sp)
	sd s3, 56(sp)
	jal getint
	mv s0, a0
	jal getint
	mv s1, a0
	jal getint
	mv s2, a0
	jal getint
	mv s6, zero
	li s5, 10
	mv s3, a0
.p2align 2
label2:
	jal getint
	addiw s6, s6, 1
	sw a0, 0(s4)
	bge s6, s5, label6
	addi s4, s4, 4
	j label2
label6:
	sltiu a0, s0, 1
	sltu a1, zero, s1
	and a2, a0, a1
	beq s2, zero, label8
	remw a2, a2, s2
label8:
	lw t0, 64(sp)
	lw a4, 68(sp)
	lw a3, 72(sp)
	sltu t4, zero, a3
	lw a1, 76(sp)
	lw t1, 80(sp)
	sltiu t3, a1, 1
	lw a5, 84(sp)
	and t2, t3, t4
	mv t4, zero
	beq a5, zero, label151
	mv t4, t1
label151:
	mv t3, t2
	bne a4, zero, label153
	mv t3, t4
label153:
	lw t2, 88(sp)
	mv t5, t3
	addw t4, t3, t2
	beq t2, zero, label155
	mv t5, t4
label155:
	addiw t4, t5, 1
	addw t3, s3, a2
	sltiu t6, s3, 1
	mv t5, a2
	bne t6, zero, label157
	mv t5, t3
label157:
	addiw a6, t5, 1
	lw t3, 92(sp)
	bne t3, zero, label24
	j label79
label10:
	lw t5, 96(sp)
	mv s4, t5
	lw t4, 100(sp)
	sltiu s5, t4, 1
	addw a7, t5, s5
	bne t4, zero, label159
	j label158
label24:
	remw a2, t4, t3
	j label10
label158:
	mv s4, a7
label159:
	addiw a7, s4, 1
	mv s6, a7
	subw s5, a7, s0
	bne a0, zero, label161
	mv s6, s5
label161:
	mulw s4, a2, s6
	mv a7, t0
	bne a6, zero, label163
	mv a7, s4
label163:
	sltiu a6, s2, 1
	mv s4, a6
	addw a2, s3, a6
	bne t6, zero, label165
	mv s4, a2
label165:
	addiw t6, s4, 1
	beq t6, zero, label13
	remw s1, s1, t6
label13:
	addw a2, a7, s1
	mv a6, a7
	beq s1, zero, label167
	mv a6, a2
label167:
	addiw t6, a6, 1
	subw a2, t0, a4
	mv a7, t0
	beq a4, zero, label169
	mv a7, a2
label169:
	mulw a2, t6, a7
	beq a3, zero, label16
	remw a2, a2, a3
label16:
	subw a3, t1, a5
	mv a4, t1
	beq a5, zero, label171
	mv a4, a3
label171:
	addiw a3, a4, 1
	beq t2, zero, label19
	subw a4, zero, t2
	remw a3, a3, a4
label19:
	sltiu t0, t5, 1
	mv a4, t3
	subw a5, t3, t0
	bne t5, zero, label173
	mv a4, a5
label173:
	mulw a3, a3, a4
	beq t4, zero, label21
	subw a4, zero, t4
	remw a3, a3, a4
label21:
	addw a5, s0, a3
	mv a4, a3
	bne a0, zero, label175
	mv a4, a5
label175:
	addiw a0, a4, 1
	mv a5, a1
	subw a3, a1, a0
	beq a0, zero, label177
	mv a5, a3
label177:
	mulw a0, a2, a5
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s0, 16(sp)
	ld s5, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s2, 48(sp)
	ld s3, 56(sp)
	addi sp, sp, 104
	ret
label79:
	mv a2, t4
	j label10
