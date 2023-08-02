.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl test
test:
	lui a2, 349525
	addiw a3, a2, 1366
	ble a1, zero, label14
	addiw a4, a1, -4
	li a2, 4
	ble a1, a2, label23
	mv a2, a0
	mv a5, zero
.p2align 2
label8:
	lw t3, 0(a2)
	addiw a5, a5, 4
	mul t0, t3, a3
	srli t2, t0, 63
	srli t1, t0, 32
	add t4, t2, t1
	sw t4, 0(a2)
	lw t3, 4(a2)
	mul t0, t3, a3
	srli t2, t0, 63
	srli t1, t0, 32
	add t3, t2, t1
	sw t3, 4(a2)
	lw t5, 8(a2)
	mul t0, t5, a3
	srli t4, t0, 63
	srli t1, t0, 32
	add t3, t4, t1
	sw t3, 8(a2)
	lw t2, 12(a2)
	mul t0, t2, a3
	srli t3, t0, 63
	srli t1, t0, 32
	add t2, t3, t1
	sw t2, 12(a2)
	ble a4, a5, label47
	addi a2, a2, 16
	j label8
label3:
	lw t0, 0(a0)
	addiw a5, a5, 1
	mul a2, t0, a3
	srli t1, a2, 63
	srli a4, a2, 32
	add t0, t1, a4
	sw t0, 0(a0)
	ble a1, a5, label14
	addi a0, a0, 4
	j label3
label47:
	sh2add a0, a5, a0
	j label3
label14:
	ret
label23:
	mv a5, zero
	j label3
