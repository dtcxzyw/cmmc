.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -72
	li a0, 12884901892
	li a2, 9
	li a1, 8589934601
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, sp, 32
	sd s1, 16(sp)
	li s1, 10
	sd s2, 24(sp)
	sd a0, 32(sp)
	li a0, 4294967296
	sd a1, 40(sp)
	li a1, 21474836486
	sd a0, 48(sp)
	li a0, 34359738375
	sd a1, 56(sp)
	mv a1, zero
	sd a0, 64(sp)
	mv a3, s1
	addi a0, s1, -1
	bge zero, a2, label26
.p2align 2
label27:
	mv a3, zero
	ble a0, zero, label30
.p2align 2
label6:
	sh2add t0, a3, s0
	lw a4, 0(t0)
	lw a5, 4(t0)
	addiw t0, a3, 1
	bgt a4, a5, label7
	mv a3, t0
	bgt a0, t0, label6
	j label86
.p2align 2
label7:
	sh2add a3, a3, s0
	sw a4, 4(a3)
	sw a5, 0(a3)
	mv a3, t0
	bgt a0, t0, label6
	addiw a1, a1, 1
	subw a3, s1, a1
	addi a0, a3, -1
	blt a1, a2, label27
label26:
	mv s2, zero
	j label9
.p2align 2
label86:
	addiw a1, a1, 1
	subw a3, s1, a1
	addi a0, a3, -1
	blt a1, a2, label27
	j label26
.p2align 2
label9:
	sh2add a2, s2, s0
	lw a0, 0(a2)
	jal putint
	mv a0, s1
	jal putch
	addiw s2, s2, 1
	blt s2, s1, label9
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 72
	ret
label30:
	addiw a1, a1, 1
	subw a3, s1, a1
	addi a0, a3, -1
	blt a1, a2, label27
	j label26
