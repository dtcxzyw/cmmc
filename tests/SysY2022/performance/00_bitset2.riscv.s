.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
a:
	.zero	40000
.text
.p2align 2
.globl main
main:
	addi sp, sp, -40
	sd ra, 0(sp)
	sd s1, 8(sp)
	sd s2, 16(sp)
	sd s0, 24(sp)
	sd s3, 32(sp)
	jal getint
	mv s1, a0
	jal getint
	mv s2, a0
	li a0, 56
	jal _sysy_starttime
	lui t2, 281475
pcrel158:
	auipc a2, %pcrel_hi(a)
	lui a5, 244141
	lui a0, 4876
	lui a3, 4878
	li a4, 1
	lui t1, 73
	addi s0, a2, %pcrel_lo(pcrel158)
	addiw a1, a0, -865
	addiw a2, a3, 725
	addiw a0, a5, -1529
	lui a3, 524288
	addiw a5, t1, 992
	addiw t0, a3, 1
	addiw a3, t2, -103
	ble s1, zero, label8
	mv t2, s2
	mv t1, s1
	j label2
.p2align 2
label5:
	andi s2, a6, 1
	xori s3, t3, 1
	mv a7, t6
	or s1, s2, s3
	beq s1, zero, label146
	mv a7, zero
label146:
	and s3, a6, t0
	mv a6, a7
	xori s2, s3, 1
	or s1, t3, s2
	bne s1, zero, label148
	subw a6, a7, t6
label148:
	addw t5, t5, a6
	sh2add t3, t4, s0
	sw t5, 0(t3)
	ble t1, zero, label8
.p2align 2
label2:
	mulw t5, t2, a1
	addw t2, t5, a2
	mul t3, t2, a3
	srli a6, t3, 63
	srai t4, t3, 60
	add t6, a6, t4
	mulw t5, t6, a0
	subw t3, t2, t5
	mv t4, t3
	bge t3, zero, label136
	addw t4, t3, a0
label136:
	mulw t6, t4, a1
	addw t3, t6, a2
	mul t2, t3, a3
	srli t6, t2, 63
	srai t5, t2, 60
	add a6, t6, t5
	mulw a7, a6, a0
	subw t6, t3, a7
	mv t2, t6
	bge t6, zero, label138
	addw t2, t6, a0
label138:
	andi t3, t2, 1
	lui a7, 458130
	lui s1, 559241
	addiw a6, a7, -635
	mul t5, t4, a6
	srli a6, t5, 63
	srai t6, t5, 49
	add a7, a6, t6
	addiw t6, s1, -1911
	mulw t5, a7, a5
	subw a6, t4, t5
	mul a7, a6, t6
	srli t4, a7, 32
	add t5, t4, a6
	srliw a7, t5, 31
	sraiw t6, t5, 4
	add t4, a7, t6
	slliw t6, t4, 4
	sh2add s1, t4, s0
	subw s2, t6, t4
	lw t5, 0(s1)
	slli s1, s2, 1
	subw a7, a6, s1
	mv s1, t5
	sllw t6, a4, a7
	addiw a6, t6, -1
	bge t5, zero, label142
	addw s1, t5, a6
label142:
	sraw a6, s1, a7
	mv s2, a6
	bge a6, zero, label144
	addiw s2, a6, 1
label144:
	andi s1, s2, -2
	addiw t1, t1, -1
	subw a7, a6, s1
	bne t3, a7, label5
	sh2add t3, t4, s0
	sw t5, 0(t3)
	bgt t1, zero, label2
label8:
	li a0, 64
	jal _sysy_stoptime
	mv a1, s0
	li a2, 625
	slli a0, a2, 4
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s2, 16(sp)
	ld s0, 24(sp)
	ld s3, 32(sp)
	addi sp, sp, 40
	ret
