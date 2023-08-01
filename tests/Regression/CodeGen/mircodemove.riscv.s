.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl test
test:
	li a2, 1431655766
	bgt a1, zero, label3
label2:
	ret
label3:
	addiw a4, a1, -4
	li a5, 4
	ble a1, a5, label16
	mv a3, zero
.p2align 2
label4:
	sh2add a5, a3, a0
	addiw a3, a3, 4
	lw t2, 0(a5)
	mul t0, t2, a2
	srli t2, t0, 63
	srli t1, t0, 32
	add t0, t2, t1
	sw t0, 0(a5)
	lw t2, 4(a5)
	mul t0, t2, a2
	srli t2, t0, 63
	srli t1, t0, 32
	add t0, t2, t1
	sw t0, 4(a5)
	lw t2, 8(a5)
	mul t0, t2, a2
	srli t2, t0, 63
	srli t1, t0, 32
	add t0, t2, t1
	sw t0, 8(a5)
	lw t2, 12(a5)
	mul t0, t2, a2
	srli t2, t0, 63
	srli t1, t0, 32
	add t0, t2, t1
	sw t0, 12(a5)
	bgt a4, a3, label4
label6:
	sh2add a4, a3, a0
	addiw a3, a3, 1
	lw t1, 0(a4)
	mul a5, t1, a2
	srli t1, a5, 63
	srli t0, a5, 32
	add a5, t1, t0
	sw a5, 0(a4)
	bgt a1, a3, label6
	j label2
label16:
	mv a3, zero
	j label6
