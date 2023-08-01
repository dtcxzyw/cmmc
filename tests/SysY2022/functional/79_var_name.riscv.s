.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -136
	li a0, 1
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, sp, 56
	sd s5, 16(sp)
	sd s1, 24(sp)
	li s1, 2
	sd s2, 32(sp)
	mv s2, zero
	sd s3, 40(sp)
	sd s4, 48(sp)
	sw a0, 56(sp)
	sw s1, 60(sp)
	sd zero, 64(sp)
	sd zero, 72(sp)
	sd zero, 80(sp)
	sd zero, 88(sp)
	sd zero, 96(sp)
	sd zero, 104(sp)
	sd zero, 112(sp)
	sd zero, 120(sp)
	sd zero, 128(sp)
.p2align 2
label2:
	sh2add a0, s1, s0
	lw s3, 0(a0)
	lw s4, -4(a0)
	lw s5, -8(a0)
	addw a2, s3, s4
	addw a1, a2, s5
	sw a1, 0(a0)
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	addiw s1, s1, 1
	addw a1, s2, s3
	addw a0, s4, a1
	addw s2, s5, a0
	li a0, 20
	blt s1, a0, label2
	mv a0, s2
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s2, 32(sp)
	ld s3, 40(sp)
	ld s4, 48(sp)
	addi sp, sp, 136
	ret
