.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
.p2align 2
	addi sp, sp, -136
	li a0, 1
	sd s0, 128(sp)
	addi s0, sp, 0
	sd s5, 120(sp)
	sd s1, 112(sp)
	li s1, 2
	sd s2, 104(sp)
	mv s2, zero
	sd s3, 96(sp)
	sd s4, 88(sp)
	sd ra, 80(sp)
	sw a0, 0(sp)
	sw s1, 4(sp)
	sd zero, 8(sp)
	sd zero, 16(sp)
	sd zero, 24(sp)
	sd zero, 32(sp)
	sd zero, 40(sp)
	sd zero, 48(sp)
	sd zero, 56(sp)
	sd zero, 64(sp)
	sd zero, 72(sp)
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
	ld ra, 80(sp)
	ld s4, 88(sp)
	ld s3, 96(sp)
	ld s2, 104(sp)
	ld s1, 112(sp)
	ld s5, 120(sp)
	ld s0, 128(sp)
	addi sp, sp, 136
	ret
