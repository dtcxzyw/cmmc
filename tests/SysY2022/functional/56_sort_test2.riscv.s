.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[40] RegSpill[0] CalleeSaved[32]
	addi sp, sp, -72
	li a4, 3
	li a5, 2
	li t0, 5
	addi a0, sp, 32
	slli a2, a4, 32
	sd ra, 0(sp)
	addi a1, a0, 4
	addi a3, a2, 4
	sd s0, 8(sp)
	slli a2, a5, 32
	li s0, 10
	li a5, 1
	addi a4, a2, 9
	sd s1, 16(sp)
	slli a2, a5, 32
	sd s2, 24(sp)
	li a5, 8
	sd a3, 32(sp)
	li a3, 1
	sd a4, 40(sp)
	slli a4, t0, 32
	sd a2, 48(sp)
	addi a2, a4, 6
	slli a4, a5, 32
	sd a2, 56(sp)
	addi a2, a4, 7
	sd a2, 64(sp)
	addiw a5, a3, -1
	lw a4, 0(a1)
	sh2add a2, a5, a0
	bge a5, zero, label8
	mv t0, zero
	addiw a3, a3, 1
	sw a4, 4(a2)
	blt a3, s0, label12
label103:
	mv s1, a0
	mv s2, zero
.p2align 2
label14:
	lw a0, 0(s1)
	jal putint
	mv a0, s0
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label18
	addi s1, s1, 4
	j label14
.p2align 2
label8:
	lw t1, 0(a2)
	slt t0, a4, t1
	beq t0, zero, label11
	lw t0, 0(a2)
	addiw a5, a5, -1
	sw t0, 4(a2)
	addi a2, a2, -4
	bge a5, zero, label8
	mv t0, zero
	addiw a3, a3, 1
	sw a4, 4(a2)
	bge a3, s0, label103
.p2align 2
label12:
	addi a1, a1, 4
	addiw a5, a3, -1
	lw a4, 0(a1)
	sh2add a2, a5, a0
	bge a5, zero, label8
	mv t0, zero
	addiw a3, a3, 1
	sw a4, 4(a2)
	blt a3, s0, label12
	j label103
label18:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 72
	ret
label11:
	sw a4, 4(a2)
	addiw a3, a3, 1
	blt a3, s0, label12
	j label103
