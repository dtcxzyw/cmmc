.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
a:
	.zero	40000
.text
.p2align 2
.globl main
main:
	addi sp, sp, -64
	sd ra, 0(sp)
	sd s1, 8(sp)
	sd s6, 16(sp)
	sd s2, 24(sp)
	sd s0, 32(sp)
	sd s5, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	jal getint
	mv s1, a0
	jal getint
	mv s2, a0
	li a0, 56
	jal _sysy_starttime
	lui t4, 458130
	lui t3, 559241
pcrel173:
	auipc a1, %pcrel_hi(a)
	lui a0, 4876
	lui a4, 4878
	li a5, 1
	lui a3, 244141
	addiw t1, t3, -1911
	addi s0, a1, %pcrel_lo(pcrel173)
	addiw a2, a4, 725
	lui t3, 281475
	addiw a1, a0, -865
	lui a4, 73
	addiw a0, a3, -1529
	addiw t0, a4, 992
	lui a3, 524288
	addiw a4, t3, -103
	addiw t2, a3, 1
	addiw t3, t4, -635
	li a3, 64
	ble s1, zero, label8
	mv t4, s2
.p2align 2
label2:
	mulw t6, t4, a1
	addw t4, t6, a2
	mul t5, t4, a4
	srli a6, t5, 63
	srai t6, t5, 60
	add a7, a6, t6
	mulw t5, a7, a0
	subw t4, t4, t5
	mv t6, t4
	bge t4, zero, label149
	addw t6, t4, a0
.p2align 2
label149:
	mulw a6, t6, a1
	addw t4, a6, a2
	mul t5, t4, a4
	srli a7, t5, 63
	srai a6, t5, 60
	add t5, a7, a6
	mulw a6, t5, a0
	subw t5, t4, a6
	mv t4, t5
	bge t5, zero, label151
	addw t4, t5, a0
.p2align 2
label151:
	andi t5, t4, 1
	mul a6, t6, t3
	addiw s1, s1, -1
	srli s3, a6, 63
	srai a7, a6, 49
	add a6, s3, a7
	mulw s2, a6, t0
	subw a7, t6, s2
	mul t6, a7, t1
	srli a6, t6, 32
	add t6, a6, a7
	srliw s2, t6, 31
	sraiw a6, t6, 4
	add t6, s2, a6
	slliw s2, t6, 4
	sh2add s3, t6, s0
	subw s4, s2, t6
	lw a6, 0(s3)
	slli s3, s4, 1
	subw s2, a7, s3
	subw s5, a3, s2
	slli s3, a6, 1
	sllw a7, a5, s2
	srl s4, s3, s5
	add s3, a6, s4
	sraw s2, s3, s2
	srliw s6, s2, 31
	add s5, s2, s6
	andi s4, s5, -2
	subw s3, s2, s4
	bne t5, s3, label6
	sh2add t5, t6, s0
	sw a6, 0(t5)
	bgt s1, zero, label2
	j label8
.p2align 2
label6:
	andi s3, s2, 1
	xori s5, t5, 1
	or s4, s3, s5
	mv s3, a7
	beq s4, zero, label153
	mv s3, zero
.p2align 2
label153:
	and s5, s2, t2
	xori s4, s5, 1
	or s2, t5, s4
	mv t5, s3
	bne s2, zero, label155
	subw t5, s3, a7
.p2align 2
label155:
	addw a6, a6, t5
	sh2add t5, t6, s0
	sw a6, 0(t5)
	bgt s1, zero, label2
label8:
	mv a0, a3
	jal _sysy_stoptime
	mv a1, s0
	li a2, 625
	slli a0, a2, 4
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s2, 24(sp)
	ld s0, 32(sp)
	ld s5, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	addi sp, sp, 64
	ret
