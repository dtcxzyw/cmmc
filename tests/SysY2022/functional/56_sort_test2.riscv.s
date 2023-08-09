.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[40] RegSpill[0] CalleeSaved[32]
	addi sp, sp, -72
	li a4, 3
	li a5, 1
	li t0, 5
	addi a0, sp, 32
	slli a2, a4, 32
	sd ra, 0(sp)
	addi a1, a0, 4
	li a4, 2
	addi a3, a2, 4
	sd s0, 8(sp)
	slli a2, a4, 32
	li s0, 10
	li a4, 1
	sd s1, 16(sp)
	sd s2, 24(sp)
	sd a3, 32(sp)
	addi a3, a2, 9
	slli a2, a5, 32
	sd a3, 40(sp)
	li a5, 8
	slli a3, t0, 32
	sd a2, 48(sp)
	addi a2, a3, 6
	slli a3, a5, 32
	sd a2, 56(sp)
	addi a2, a3, 7
	sd a2, 64(sp)
	blt a4, s0, label5
	j label34
.p2align 2
label42:
	mv t0, zero
	addiw a4, a4, 1
	addi a1, a1, 4
	sw a2, 4(a3)
	bge a4, s0, label34
.p2align 2
label5:
	addiw a5, a4, -1
	lw a2, 0(a1)
	sh2add a3, a5, a0
	blt a5, zero, label42
.p2align 2
label9:
	lw t1, 0(a3)
	slt t0, a2, t1
	beq t0, zero, label47
	lw t0, 0(a3)
	addiw a5, a5, -1
	sw t0, 4(a3)
	addi a3, a3, -4
	bge a5, zero, label9
	mv t0, zero
	addiw a4, a4, 1
	addi a1, a1, 4
	sw a2, 4(a3)
	blt a4, s0, label5
label34:
	mv s1, a0
	mv s2, zero
	j label15
.p2align 2
label18:
	addi s1, s1, 4
.p2align 2
label15:
	lw a0, 0(s1)
	jal putint
	mv a0, s0
	jal putch
	addiw s2, s2, 1
	blt s2, s0, label18
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 72
	ret
label47:
	sw a2, 4(a3)
	addiw a4, a4, 1
	addi a1, a1, 4
	blt a4, s0, label5
	j label34
