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
	addi sp, sp, -72
	sd ra, 0(sp)
	sd s1, 8(sp)
	sd s6, 16(sp)
	sd s2, 24(sp)
	sd s0, 32(sp)
	sd s5, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	jal getint
	mv s1, a0
	jal getint
	mv s2, a0
	li a0, 56
	jal _sysy_starttime
	lui t5, 458130
	lui t4, 281475
	lui t3, 559241
pcrel174:
	auipc a2, %pcrel_hi(a)
	lui a0, 4876
	lui a3, 4878
	li a5, 1
	lui a4, 244141
	addiw t1, t3, -1911
	addi s0, a2, %pcrel_lo(pcrel174)
	addiw a1, a0, -865
	addiw t3, t5, -635
	addiw a2, a3, 725
	addiw a0, a4, -1529
	lui a3, 524288
	lui a4, 73
	addiw t2, a3, 1
	addiw t0, a4, 992
	li a3, 64
	addiw a4, t4, -103
	ble s1, zero, label8
	mv t4, s2
.p2align 2
label2:
	mulw a6, t4, a1
	addw t4, a6, a2
	mul t5, t4, a4
	srli a6, t5, 63
	srai t6, t5, 60
	add s2, a6, t6
	mulw a7, s2, a0
	subw t5, t4, a7
	mv t6, t5
	bge t5, zero, label149
	addw t6, t5, a0
.p2align 2
label149:
	mulw a7, t6, a1
	addw t5, a7, a2
	mul t4, t5, a4
	srli a7, t4, 63
	srai a6, t4, 60
	add s2, a7, a6
	mulw s3, s2, a0
	subw a7, t5, s3
	mv t4, a7
	bge a7, zero, label151
	addw t4, a7, a0
.p2align 2
label151:
	andi t5, t4, 1
	mul a6, t6, t3
	addiw s1, s1, -1
	srli s4, a6, 63
	srai a7, a6, 49
	add s3, s4, a7
	mulw a6, s3, t0
	subw s2, t6, a6
	mul a7, s2, t1
	srli t6, a7, 32
	add a6, t6, s2
	srliw s3, a6, 31
	sraiw a7, a6, 4
	add t6, s3, a7
	slliw s6, t6, 4
	sh2add s4, t6, s0
	subw a7, s6, t6
	slli s5, a7, 1
	lw a6, 0(s4)
	subw s3, s2, s5
	slli s4, a6, 1
	subw s7, a3, s3
	sllw a7, a5, s3
	srl s6, s4, s7
	add s5, a6, s6
	sraw s2, s5, s3
	srliw s7, s2, 31
	add s6, s2, s7
	andi s4, s6, -2
	subw s3, s2, s4
	bne t5, s3, label6
	sh2add t5, t6, s0
	sw a6, 0(t5)
	bgt s1, zero, label2
	j label8
.p2align 2
label6:
	andi s5, s2, 1
	xori s6, t5, 1
	mv s3, a7
	or s4, s5, s6
	beq s4, zero, label153
	mv s3, zero
.p2align 2
label153:
	and s6, s2, t2
	mv s2, s3
	xori s5, s6, 1
	or s4, t5, s5
	bne s4, zero, label155
	subw s2, s3, a7
.p2align 2
label155:
	addw t5, a6, s2
	sh2add a7, t6, s0
	sw t5, 0(a7)
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
	ld s7, 64(sp)
	addi sp, sp, 72
	ret
