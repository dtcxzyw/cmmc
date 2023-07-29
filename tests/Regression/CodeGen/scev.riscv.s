.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl foo4
foo4:
.p2align 2
	bgt a1, zero, label2
	j label13
label3:
	addiw a2, a1, -4
	addiw a5, a1, -20
	li a4, 16
	bgt a2, a4, label28
	mv a3, zero
	mv a4, zero
	j label7
label28:
	mv a3, zero
	mv a4, zero
label4:
	sh2add t0, a4, a0
	addiw t1, a3, 4
	addiw t2, a3, 8
	addiw a4, a4, 16
	sw a3, 0(t0)
	sw t1, 4(t0)
	addiw t1, a3, 12
	sw t2, 8(t0)
	addiw t2, a3, 16
	sw t1, 12(t0)
	addiw t1, a3, 20
	sw t2, 16(t0)
	addiw t2, a3, 24
	sw t1, 20(t0)
	addiw t1, a3, 28
	sw t2, 24(t0)
	addiw t2, a3, 32
	sw t1, 28(t0)
	addiw t1, a3, 36
	sw t2, 32(t0)
	addiw t2, a3, 40
	sw t1, 36(t0)
	addiw t1, a3, 44
	sw t2, 40(t0)
	addiw t2, a3, 48
	sw t1, 44(t0)
	addiw t1, a3, 52
	sw t2, 48(t0)
	addiw t2, a3, 56
	sw t1, 52(t0)
	addiw t1, a3, 60
	sw t2, 56(t0)
	sw t1, 60(t0)
	addiw t0, a3, 64
	bgt a5, a4, label66
	mv a3, a4
	mv a4, t0
	j label7
label66:
	mv a3, t0
	j label4
label7:
	sh2add a5, a3, a0
	addiw t0, a4, 4
	addiw t1, a4, 8
	addiw a3, a3, 4
	sw a4, 0(a5)
	sw t0, 4(a5)
	addiw t0, a4, 12
	sw t1, 8(a5)
	addiw a4, a4, 16
	sw t0, 12(a5)
	bgt a2, a3, label7
	mv a2, a4
	mv a4, a3
label10:
	sh2add a3, a4, a0
	addiw a4, a4, 1
	sw a2, 0(a3)
	addiw a2, a2, 4
	bgt a1, a4, label10
label13:
	ret
label2:
	li a3, 4
	bgt a1, a3, label3
	mv a2, zero
	mv a4, zero
	j label10
