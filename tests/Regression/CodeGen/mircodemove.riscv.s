.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl test
test:
	lui a3, 349525
	addiw a2, a3, 1366
	ble a1, zero, label7
	addiw a4, a1, -4
	li a3, 4
	ble a1, a3, label16
	mv a3, zero
.p2align 2
label3:
	sh2add a5, a3, a0
	addiw a3, a3, 4
	lw t2, 0(a5)
	mul t0, t2, a2
	srli t4, t0, 63
	srli t1, t0, 32
	add t2, t4, t1
	sw t2, 0(a5)
	lw t3, 4(a5)
	mul t0, t3, a2
	srli t2, t0, 63
	srli t1, t0, 32
	add t4, t2, t1
	sw t4, 4(a5)
	lw t3, 8(a5)
	mul t0, t3, a2
	srli t2, t0, 63
	srli t1, t0, 32
	add t4, t2, t1
	sw t4, 8(a5)
	lw t3, 12(a5)
	mul t0, t3, a2
	srli t2, t0, 63
	srli t1, t0, 32
	add t3, t2, t1
	sw t3, 12(a5)
	bgt a4, a3, label3
	mv a4, a3
label5:
	sh2add a5, a4, a0
	addiw a4, a4, 1
	lw t1, 0(a5)
	mul a3, t1, a2
	srli t2, a3, 63
	srli t0, a3, 32
	add t1, t2, t0
	sw t1, 0(a5)
	bgt a1, a4, label5
label7:
	ret
label16:
	mv a4, zero
	j label5
