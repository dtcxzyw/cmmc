.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[80] RegSpill[0] CalleeSaved[64]
	addi sp, sp, -144
	li a3, 2
	sd ra, 0(sp)
	addi a0, sp, 64
	slli a2, a3, 32
	sd s2, 8(sp)
	addi a1, a2, 1
	li s2, 2
	sd s0, 16(sp)
	addi s0, a0, 8
	sd s5, 24(sp)
	sd s3, 32(sp)
	mv s3, zero
	sd s1, 40(sp)
	li s1, 20
	sd s6, 48(sp)
	sd s4, 56(sp)
	sd a1, 64(sp)
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
	lw s5, 0(s0)
	lw s4, -4(s0)
	lw s6, -8(s0)
	addw a1, s5, s4
	addw a0, a1, s6
	sw a0, 0(s0)
	jal putint
	li a0, 10
	jal putch
	addiw s2, s2, 1
	addw a1, s3, s5
	addw a0, s4, a1
	addw s3, s6, a0
	bge s2, s1, label7
	addi s0, s0, 4
	j label2
label7:
	mv a0, s3
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s0, 16(sp)
	ld s5, 24(sp)
	ld s3, 32(sp)
	ld s1, 40(sp)
	ld s6, 48(sp)
	ld s4, 56(sp)
	addi sp, sp, 144
	ret
