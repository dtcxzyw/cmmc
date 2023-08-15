.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl test
test:
	mv a2, a0
	lui a4, 349525
	addiw a3, a4, 1366
	ble a1, zero, label15
	addiw a4, a1, -3
	li a0, 3
	ble a1, a0, label24
	mv a0, a2
	mv a5, zero
	j label11
.p2align 2
label14:
	addi a0, a0, 16
.p2align 2
label11:
	lw t2, 0(a0)
	addiw a5, a5, 4
	mul t0, t2, a3
	srli t3, t0, 63
	srli t1, t0, 32
	add t4, t3, t1
	sw t4, 0(a0)
	lw t2, 4(a0)
	mul t0, t2, a3
	srli t3, t0, 63
	srli t1, t0, 32
	add t2, t3, t1
	sw t2, 4(a0)
	lw t4, 8(a0)
	mul t0, t4, a3
	srli t2, t0, 63
	srli t1, t0, 32
	add t4, t2, t1
	sw t4, 8(a0)
	lw t3, 12(a0)
	mul t0, t3, a3
	srli t2, t0, 63
	srli t1, t0, 32
	add t3, t2, t1
	sw t3, 12(a0)
	bgt a4, a5, label14
label3:
	ble a1, a5, label15
	sh2add a0, a5, a2
	mv a2, a5
	j label6
label9:
	addi a0, a0, 4
label6:
	lw t0, 0(a0)
	addiw a2, a2, 1
	mul a4, t0, a3
	srli t1, a4, 63
	srli a5, a4, 32
	add t0, t1, a5
	sw t0, 0(a0)
	bgt a1, a2, label9
label15:
	ret
label24:
	mv a5, zero
	j label3
