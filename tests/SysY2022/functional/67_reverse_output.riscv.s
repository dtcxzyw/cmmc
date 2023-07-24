.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
reverse:
.p2align 2
	addi sp, sp, -24
	sd s0, 16(sp)
	mv s0, a0
	sd s1, 8(sp)
	li a0, 2
	sd ra, 0(sp)
	bge s0, a0, label4
	jal getint
	jal putint
label3:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s0, 16(sp)
	addi sp, sp, 24
	ret
label4:
	jal getint
	mv s1, a0
	addiw a0, s0, -1
	jal reverse
	mv a0, s1
	jal putint
	j label3
.globl main
main:
.p2align 2
	addi sp, sp, -8
	li a0, 200
	sd ra, 0(sp)
	jal reverse
	ld ra, 0(sp)
	mv a0, zero
	addi sp, sp, 8
	ret
