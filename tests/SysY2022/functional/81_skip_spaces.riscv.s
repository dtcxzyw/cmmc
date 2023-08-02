.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -432
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, sp, 32
	sd s1, 16(sp)
	mv s1, s0
	sd s2, 24(sp)
	mv s2, zero
.p2align 2
label2:
	jal getint
	beq a0, zero, label6
	jal getint
	addiw s2, s2, 1
	sw a0, 0(s1)
	addi s1, s1, 4
	j label2
label6:
	beq s2, zero, label23
	mv a0, s2
	mv a1, zero
.p2align 2
label7:
	addiw a0, a0, -1
	sh2add a2, a0, s0
	lw a3, 0(a2)
	addw a1, a1, a3
	bne a0, zero, label7
label10:
	lui a4, 424740
	li t0, 79
	ld ra, 0(sp)
	addiw a2, a4, -1451
	ld s0, 8(sp)
	mul a0, a1, a2
	ld s1, 16(sp)
	srli a5, a0, 63
	srai a3, a0, 37
	ld s2, 24(sp)
	add a2, a5, a3
	addi sp, sp, 432
	mulw a4, a2, t0
	subw a0, a1, a4
	ret
label23:
	mv a1, zero
	j label10
