.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[40] RegSpill[0] CalleeSaved[32]
	addi sp, sp, -72
	li a3, 3
	li a4, 9
	li a5, 5
	addi a2, sp, 32
	slli a0, a3, 32
	sd ra, 0(sp)
	li a3, 2
	addi a1, a0, 4
	sd s0, 8(sp)
	li s0, 10
	sd s1, 16(sp)
	sd s2, 24(sp)
	sd a1, 32(sp)
	slli a1, a3, 32
	li a3, 1
	addi a0, a1, 9
	slli a1, a3, 32
	sd a0, 40(sp)
	li a3, 8
	slli a0, a5, 32
	sd a1, 48(sp)
	addi a1, a0, 6
	slli a0, a3, 32
	sd a1, 56(sp)
	mv a3, zero
	addi a1, a0, 7
	sd a1, 64(sp)
	j label2
.p2align 2
label46:
	addiw a3, a3, 1
	bge a3, a4, label101
.p2align 2
label2:
	subw a0, s0, a3
	addiw a1, a0, -1
	ble a1, zero, label11
	mv a0, a2
	mv a5, zero
	lw t0, 0(a2)
	lw t1, 4(a2)
	bgt t0, t1, label8
	li a5, 1
	bgt a1, a5, label10
	j label98
.p2align 2
label8:
	sw t0, 4(a0)
	sw t1, 0(a0)
	addiw a5, a5, 1
	ble a1, a5, label46
.p2align 2
label10:
	addi a0, a0, 4
	lw t0, 0(a0)
	lw t1, 4(a0)
	bgt t0, t1, label8
	addiw a5, a5, 1
	bgt a1, a5, label10
	j label102
label101:
	mv s1, a2
	mv s2, zero
	j label13
.p2align 2
label16:
	addi s1, s1, 4
.p2align 2
label13:
	lw a0, 0(s1)
	jal putint
	mv a0, s0
	jal putch
	addiw s2, s2, 1
	blt s2, s0, label16
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 72
	ret
.p2align 2
label102:
	addiw a3, a3, 1
	blt a3, a4, label2
	j label101
label11:
	addiw a3, a3, 1
	blt a3, a4, label2
	j label101
label98:
	addiw a3, a3, 1
	blt a3, a4, label2
	j label101
