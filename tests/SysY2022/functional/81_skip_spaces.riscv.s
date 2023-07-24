.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
.p2align 2
	addi sp, sp, -424
	sd s0, 416(sp)
	addi s0, sp, 0
	sd s1, 408(sp)
	mv s1, zero
	sd ra, 400(sp)
.p2align 2
label2:
	jal getint
	bne a0, zero, label4
	bne s1, zero, label24
	j label47
.p2align 2
label4:
	jal getint
	sh2add a1, s1, s0
	addiw s1, s1, 1
	sw a0, 0(a1)
	j label2
label24:
	mv a1, zero
.p2align 2
label6:
	addiw a0, s1, -1
	sh2add a2, a0, s0
	lw a3, 0(a2)
	addw a1, a1, a3
	bne a0, zero, label33
	mv a0, a1
	j label9
label33:
	mv s1, a0
	j label6
.p2align 2
label47:
	mv a0, zero
label9:
	li a3, 1739733589
	li a4, 79
	ld ra, 400(sp)
	ld s1, 408(sp)
	mul a1, a0, a3
	ld s0, 416(sp)
	srli a3, a1, 63
	srai a2, a1, 37
	addi sp, sp, 424
	add a1, a3, a2
	mulw a2, a1, a4
	subw a0, a0, a2
	ret
