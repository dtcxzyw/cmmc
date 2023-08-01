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
	li a4, 1152921497
	li t1, -2004318071
	li t2, 1876499845
	li t3, -2147483647
	li a5, 1
	li t0, 300000
	li a3, 19981013
	li a2, 19971231
	li a0, 1000000007
pcrel164:
	auipc a1, %pcrel_hi(a)
	addi s0, a1, %pcrel_lo(pcrel164)
	li a1, 64
	ble s1, zero, label8
	mv t4, s2
.p2align 2
label2:
	mulw t6, t4, a2
	addw t4, t6, a3
	mul t5, t4, a4
	srli a6, t5, 63
	srai t6, t5, 60
	add t5, a6, t6
	mulw a7, t5, a0
	subw t4, t4, a7
	mv t6, t4
	bge t4, zero, label141
	addw t6, t4, a0
.p2align 2
label141:
	mulw a6, t6, a2
	addw t4, a6, a3
	mul t5, t4, a4
	srli a7, t5, 63
	srai a6, t5, 60
	add a6, a7, a6
	mulw t5, a6, a0
	subw a6, t4, t5
	mv t4, a6
	bge a6, zero, label143
	addw t4, a6, a0
.p2align 2
label143:
	andi t5, t4, 1
	mul a6, t6, t2
	addiw s1, s1, -1
	srai a7, a6, 49
	srli a6, a6, 63
	add a7, a6, a7
	mulw a6, a7, t0
	subw a7, t6, a6
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
	subw s5, a1, s2
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
	beq s4, zero, label145
	mv s3, zero
.p2align 2
label145:
	and s4, s2, t3
	xori s5, s4, 1
	or s2, t5, s5
	mv t5, s3
	bne s2, zero, label147
	subw t5, s3, a7
.p2align 2
label147:
	addw a6, a6, t5
	sh2add t5, t6, s0
	sw a6, 0(t5)
	bgt s1, zero, label2
label8:
	mv a0, a1
	jal _sysy_stoptime
	mv a1, s0
	li a0, 10000
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
