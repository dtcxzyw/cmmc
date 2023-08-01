.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -144
	li a0, 1
	sd ra, 0(sp)
	sd s1, 8(sp)
	addi s1, sp, 64
	sd s6, 16(sp)
	sd s0, 24(sp)
	li s0, 2
	sd s5, 32(sp)
	sd s3, 40(sp)
	mv s3, zero
	sd s2, 48(sp)
	li s2, 20
	sd s4, 56(sp)
	sw a0, 64(sp)
	sw s0, 68(sp)
	sd zero, 72(sp)
	sd zero, 80(sp)
	sd zero, 88(sp)
	sd zero, 96(sp)
	sd zero, 104(sp)
	sd zero, 112(sp)
	sd zero, 120(sp)
	sd zero, 128(sp)
	sd zero, 136(sp)
.p2align 2
label2:
	sh2add a0, s0, s1
	lw s5, 0(a0)
	lw s4, -4(a0)
	lw s6, -8(a0)
	addw a2, s5, s4
	addw a1, a2, s6
	sw a1, 0(a0)
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	addiw s0, s0, 1
	addw a1, s3, s5
	addw a0, s4, a1
	addw s3, s6, a0
	blt s0, s2, label2
	mv a0, s3
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s0, 24(sp)
	ld s5, 32(sp)
	ld s3, 40(sp)
	ld s2, 48(sp)
	ld s4, 56(sp)
	addi sp, sp, 144
	ret
