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
	sd s1, 40(sp)
	sd s2, 64(sp)
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
	blt s5, a0, label2
	sltiu a0, s0, 1
	sltu a1, zero, s1
	and a2, a0, a1
	beq s2, zero, label5
	remw a2, a2, s2
label5:
	lw t1, 0(sp)
	mv t4, zero
	lw t0, 4(sp)
	lw a3, 8(sp)
	sltu t3, zero, a3
	lw a1, 12(sp)
	lw a5, 16(sp)
	sltiu a4, a1, 1
	and t2, a4, t3
	lw a4, 20(sp)
	beq a4, zero, label149
	mv t4, a5
label149:
	mv t3, t2
	bne t0, zero, label151
	mv t3, t4
label151:
	lw t2, 24(sp)
	addw t4, t3, t2
	beq t2, zero, label153
	mv t3, t4
label153:
	addiw t4, t3, 1
	sltiu t6, s3, 1
	addw t3, s3, a2
	bne t6, zero, label155
	mv a2, t3
label155:
	addiw a6, a2, 1
	lw t3, 28(sp)
	bne t3, zero, label21
	mv a2, t4
	lw t5, 32(sp)
	lw t4, 36(sp)
	sltiu a7, t4, 1
	addw s4, t5, a7
	mv a7, t5
	bne t4, zero, label157
	mv a7, s4
	addiw a7, s4, 1
	subw s4, a7, s0
	bne a0, zero, label159
	mv a7, s4
	mulw a7, a2, s4
	mv a2, t1
	bne a6, zero, label161
	mv a2, a7
	sltiu a7, s2, 1
	addw a6, s3, a7
	bne t6, zero, label163
	mv a7, a6
	addiw t6, a6, 1
	bne t6, zero, label20
	addw t6, a2, s1
	beq s1, zero, label165
label185:
	mv a2, t6
	addiw a2, t6, 1
	subw t6, t1, t0
	beq t0, zero, label167
	mv t1, t6
	mulw a2, a2, t6
	bne a3, zero, label11
	subw a3, a5, a4
	beq a4, zero, label169
	mv a5, a3
	addiw a3, a3, 1
	bne t2, zero, label19
	sltiu t0, t5, 1
	mv a4, t3
	subw a5, t3, t0
	bne t5, zero, label171
	mv a4, a5
	mulw a3, a3, a5
	bne t4, zero, label16
	addw a4, s0, a3
	bne a0, zero, label173
label211:
	mv a3, a4
	addiw a0, a4, 1
	subw a3, a1, a0
	beq a0, zero, label175
	j label215
label21:
	remw a2, t4, t3
	lw t5, 32(sp)
	lw t4, 36(sp)
	sltiu a7, t4, 1
	addw s4, t5, a7
	mv a7, t5
	bne t4, zero, label157
	mv a7, s4
	addiw a7, s4, 1
	subw s4, a7, s0
	bne a0, zero, label159
	mv a7, s4
	mulw a7, a2, s4
	mv a2, t1
	bne a6, zero, label161
	mv a2, a7
	sltiu a7, s2, 1
	addw a6, s3, a7
	bne t6, zero, label163
	mv a7, a6
	addiw t6, a6, 1
	bne t6, zero, label20
	addw t6, a2, s1
	beq s1, zero, label165
	j label185
label157:
	addiw a7, a7, 1
	subw s4, a7, s0
	bne a0, zero, label159
	mv a7, s4
label159:
	mulw a7, a2, a7
	mv a2, t1
	bne a6, zero, label161
	mv a2, a7
label161:
	sltiu a7, s2, 1
	addw a6, s3, a7
	bne t6, zero, label163
	mv a7, a6
label163:
	addiw t6, a7, 1
	bne t6, zero, label20
	addw t6, a2, s1
	beq s1, zero, label165
	j label185
label20:
	remw s1, s1, t6
	addw t6, a2, s1
	beq s1, zero, label165
	mv a2, t6
	addiw a2, t6, 1
	subw t6, t1, t0
	beq t0, zero, label167
	mv t1, t6
	mulw a2, a2, t6
	bne a3, zero, label11
	subw a3, a5, a4
	beq a4, zero, label169
	mv a5, a3
	addiw a3, a3, 1
	bne t2, zero, label19
	sltiu t0, t5, 1
	mv a4, t3
	subw a5, t3, t0
	bne t5, zero, label171
	mv a4, a5
	mulw a3, a3, a5
	bne t4, zero, label16
	addw a4, s0, a3
	bne a0, zero, label173
	j label211
label16:
	subw a4, zero, t4
	remw a3, a3, a4
	addw a4, s0, a3
	bne a0, zero, label173
	mv a3, a4
label173:
	addiw a0, a3, 1
	subw a3, a1, a0
	beq a0, zero, label175
label215:
	mv a1, a3
	j label175
label11:
	remw a2, a2, a3
	subw a3, a5, a4
	beq a4, zero, label169
	mv a5, a3
label169:
	addiw a3, a5, 1
	bne t2, zero, label19
	sltiu t0, t5, 1
	mv a4, t3
	subw a5, t3, t0
	bne t5, zero, label171
	mv a4, a5
	mulw a3, a3, a5
	bne t4, zero, label16
	addw a4, s0, a3
	bne a0, zero, label173
	mv a3, a4
	addiw a0, a4, 1
	subw a3, a1, a0
	bne a0, zero, label215
label175:
	mulw a0, a2, a1
	ld ra, 48(sp)
	ld s3, 56(sp)
	ld s2, 64(sp)
	ld s1, 40(sp)
	ld s5, 72(sp)
	ld s0, 80(sp)
	ld s4, 88(sp)
	addi sp, sp, 96
	ret
label19:
	subw a4, zero, t2
	remw a3, a3, a4
	sltiu t0, t5, 1
	mv a4, t3
	subw a5, t3, t0
	bne t5, zero, label171
	mv a4, a5
	mulw a3, a3, a5
	bne t4, zero, label16
	addw a4, s0, a3
	bne a0, zero, label173
	mv a3, a4
	addiw a0, a4, 1
	subw a3, a1, a0
	beq a0, zero, label175
	j label215
label165:
	addiw a2, a2, 1
	subw t6, t1, t0
	beq t0, zero, label167
	mv t1, t6
label167:
	mulw a2, a2, t1
	bne a3, zero, label11
	subw a3, a5, a4
	beq a4, zero, label169
	mv a5, a3
	addiw a3, a3, 1
	bne t2, zero, label19
	sltiu t0, t5, 1
	mv a4, t3
	subw a5, t3, t0
	bne t5, zero, label171
	mv a4, a5
	mulw a3, a3, a5
	bne t4, zero, label16
	addw a4, s0, a3
	bne a0, zero, label173
	j label211
label171:
	mulw a3, a3, a4
	bne t4, zero, label16
	addw a4, s0, a3
	bne a0, zero, label173
	mv a3, a4
	addiw a0, a4, 1
	subw a3, a1, a0
	beq a0, zero, label175
	j label215
