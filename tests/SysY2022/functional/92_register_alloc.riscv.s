.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -40
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s2, 16(sp)
	sd s1, 24(sp)
	sd s3, 32(sp)
	jal getint
	jal getint
	addiw s2, a0, -8
	mv s0, a0
	jal getint
	addw s3, s2, a0
	mv s1, a0
	jal getint
	addw s3, s3, a0
	mv s2, a0
	jal getint
	addiw a5, s2, 54
	addiw a4, s0, 56
	addiw a3, s0, 2
	addw a2, s3, a0
	subw a1, a2, a3
	addiw a2, s1, 4
	subw a3, a1, a2
	addiw a1, s2, 6
	subw a2, a3, a1
	addiw a3, a0, 8
	subw a1, a2, a3
	addw a2, s1, a4
	addw a3, s2, a2
	addw a4, a0, a3
	addiw a3, s0, 18
	addw a2, a1, a4
	subw a1, a2, a3
	addiw a2, s1, 24
	subw a3, a1, a2
	addiw a1, s2, 30
	subw a2, a3, a1
	addiw a3, a0, 36
	subw a1, a2, a3
	addiw a2, s0, 176
	addw a4, s1, a2
	addw a3, s2, a4
	addiw a4, s1, 44
	addw a2, a0, a3
	addiw a3, s0, 34
	addw a1, a1, a2
	subw a2, a1, a3
	addiw a3, a0, 64
	subw a1, a2, a4
	addiw a4, s0, 232
	subw a2, a1, a5
	subw a1, a2, a3
	addw a2, s1, a4
	addw a3, s2, a2
	addw a4, a0, a3
	addiw a3, s0, 50
	addw a2, a1, a4
	subw a1, a2, a3
	addiw a2, s1, 64
	subw a3, a1, a2
	addiw a1, s2, 78
	subw a2, a3, a1
	addiw a3, a0, 92
	subw a1, a2, a3
	addiw a2, s0, 336
	addw a3, s1, a2
	addw a4, s2, a3
	addw a2, a0, a4
	addw s0, a1, a2
	mv a0, s0
	jal putint
	mv a0, s0
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	ld s3, 32(sp)
	addi sp, sp, 40
	ret
