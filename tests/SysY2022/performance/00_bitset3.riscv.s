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
	addi sp, sp, -48
	sd ra, 0(sp)
	sd s1, 8(sp)
	sd s2, 16(sp)
	sd s0, 24(sp)
	sd s4, 32(sp)
	sd s3, 40(sp)
	jal getint
	mv s1, a0
	jal getint
	mv s2, a0
	li a0, 56
	jal _sysy_starttime
	lui t1, 281475
pcrel166:
	auipc a2, %pcrel_hi(a)
	lui a3, 4878
	lui a0, 4876
	lui a5, 244141
	li a4, 1
	lui t2, 73
	addi s0, a2, %pcrel_lo(pcrel166)
	addiw a1, a0, -865
	addiw a2, a3, 725
	addiw a0, a5, -1529
	lui a3, 524288
	addiw a5, t2, 992
	addiw t0, a3, 1
	addiw a3, t1, -103
	ble s1, zero, label8
	mv t2, s2
	mv t1, s1
	j label2
.p2align 2
label151:
	addw t3, t5, a6
	sh2add t6, t4, s0
	sw t3, 0(t6)
	ble t1, zero, label8
.p2align 2
label2:
	mulw t5, t2, a1
	addw t2, t5, a2
	mul t3, t2, a3
	srli t6, t3, 63
	srai t4, t3, 60
	add t5, t6, t4
	mulw a6, t5, a0
	subw t3, t2, a6
	mv t4, t3
	bge t3, zero, label143
	addw t4, t3, a0
.p2align 2
label143:
	mulw t6, t4, a1
	addw t3, t6, a2
	mul t2, t3, a3
	srli t6, t2, 63
	srai t5, t2, 60
	add s1, t6, t5
	mulw a6, s1, a0
	subw a7, t3, a6
	mv t2, a7
	bge a7, zero, label145
	addw t2, a7, a0
.p2align 2
label145:
	andi t3, t2, 1
	lui a6, 458130
	lui s1, 559241
	li s4, 64
	addiw t1, t1, -1
	addiw a7, a6, -635
	mul t5, t4, a7
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
	sh2add s2, t4, s0
	subw s1, t6, t4
	lw t5, 0(s2)
	slli s2, s1, 1
	subw a7, a6, s2
	subw s3, s4, a7
	slli a6, t5, 1
	sllw t6, a4, a7
	srl s2, a6, s3
	add s1, t5, s2
	sraw a6, s1, a7
	srliw s3, a6, 31
	add s2, a6, s3
	andi s1, s2, -2
	subw a7, a6, s1
	beq t3, a7, label41
	andi s2, a6, 1
	xori s3, t3, 1
	mv a7, t6
	or s1, s2, s3
	beq s1, zero, label149
	mv a7, zero
.p2align 2
label149:
	and s3, a6, t0
	mv a6, a7
	xori s2, s3, 1
	or s1, t3, s2
	bne s1, zero, label151
	subw a6, a7, t6
	j label151
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
	ld s4, 32(sp)
	ld s3, 40(sp)
	addi sp, sp, 48
	ret
.p2align 2
label41:
	sh2add t3, t4, s0
	sw t5, 0(t3)
	bgt t1, zero, label2
	j label8
