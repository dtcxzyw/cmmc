.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
	addi sp, sp, -16
	sd s0, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s0, a0
	jal getint
	ld ra, 0(sp)
	xori a3, s0, 3
	xor a2, s0, a0
	ld s0, 8(sp)
	sltiu a1, a2, 1
	addi sp, sp, 16
	sltu a2, zero, a3
	and a0, a1, a2
	ret