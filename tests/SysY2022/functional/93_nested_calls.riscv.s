.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[40] RegSpill[0] CalleeSaved[64]
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
	li s5, 10
	mv s6, zero
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
	beq s2, zero, label7
	remw a2, a2, s2
label7:
	ld a1, 64(sp)
	ld t0, 72(sp)
	srai a5, a1, 32
	sext.w a4, a1
	sext.w a3, t0
	ld t3, 80(sp)
	srai a1, t0, 32
	sltu t5, zero, a3
	sext.w t1, t3
	srai t0, t3, 32
	sltiu t4, a1, 1
	and t2, t4, t5
	mv t4, zero
	beq t0, zero, label157
	mv t4, t1
label157:
	mv t3, t2
	bne a5, zero, label159
	mv t3, t4
label159:
	ld t5, 88(sp)
	mv a6, t3
	sext.w t2, t5
	addw t4, t3, t2
	beq t2, zero, label161
	mv a6, t4
label161:
	addiw t4, a6, 1
	addw t3, s3, a2
	sltiu t6, s3, 1
	mv a7, a2
	bne t6, zero, label163
	mv a7, t3
label163:
	addiw a6, a7, 1
	srai t3, t5, 32
	beq t3, zero, label79
	remw a2, t4, t3
label9:
	ld a7, 96(sp)
	srai t4, a7, 32
	sext.w t5, a7
	sltiu s5, t4, 1
	mv a7, t5
	addw s4, t5, s5
	bne t4, zero, label165
	mv a7, s4
label165:
	addiw s6, a7, 1
	mv s4, s6
	subw s5, s6, s0
	bne a0, zero, label167
	mv s4, s5
label167:
	mulw s6, a2, s4
	mv a7, a4
	bne a6, zero, label169
	mv a7, s6
label169:
	sltiu s4, s2, 1
	mv a2, s4
	addw a6, s3, s4
	bne t6, zero, label171
	mv a2, a6
label171:
	addiw t6, a2, 1
	beq t6, zero, label12
	remw s1, s1, t6
label12:
	addw t6, a7, s1
	mv a2, a7
	beq s1, zero, label173
	mv a2, t6
label173:
	addiw t6, a2, 1
	subw a7, a4, a5
	mv a6, a4
	beq a5, zero, label175
	mv a6, a7
label175:
	mulw a2, t6, a6
	beq a3, zero, label14
	remw a2, a2, a3
label14:
	subw a3, t1, t0
	mv a4, t1
	beq t0, zero, label177
	mv a4, a3
label177:
	addiw a3, a4, 1
	beq t2, zero, label17
	subw a4, zero, t2
	remw a3, a3, a4
label17:
	sltiu t0, t5, 1
	mv a4, t3
	subw a5, t3, t0
	bne t5, zero, label179
	mv a4, a5
label179:
	mulw a3, a3, a4
	beq t4, zero, label19
	subw a4, zero, t4
	remw a3, a3, a4
label19:
	addw a5, s0, a3
	mv a4, a3
	bne a0, zero, label181
	mv a4, a5
label181:
	addiw a0, a4, 1
	mv a3, a1
	subw a5, a1, a0
	beq a0, zero, label183
	mv a3, a5
label183:
	mulw a0, a2, a3
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
	j label9
