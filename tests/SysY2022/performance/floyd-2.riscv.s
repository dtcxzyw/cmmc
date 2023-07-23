.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
temp:
	.zero	8388608
.align 4
w:
	.zero	8388608
.align 4
dst:
	.zero	8388608
.text
.globl main
main:
	addi sp, sp, -32
	sd s0, 24(sp)
	sd s2, 16(sp)
	sd s1, 8(sp)
	sd ra, 0(sp)
	jal getint
pcrel373:
	auipc a1, %pcrel_hi(w)
	mv s0, a0
	addi a0, a1, %pcrel_lo(pcrel373)
	mv s2, a0
	jal getarray
	li a0, 62
	jal _sysy_starttime
	mv a2, zero
pcrel374:
	auipc a1, %pcrel_hi(dst)
	addi s1, a1, %pcrel_lo(pcrel374)
pcrel375:
	auipc a1, %pcrel_hi(temp)
	addi a0, a1, %pcrel_lo(pcrel375)
	ble s0, zero, label43
	mv a1, zero
	mv a4, zero
	mv a3, zero
	bgt s0, zero, label9
	li a4, -1
	li a1, 1
	mv a3, a0
	sw a4, 0(a0)
	ble s0, a1, label10
	mulw a4, s0, a1
	mv a3, a4
	bgt s0, a1, label9
	li a4, -1
	addiw a1, a1, 1
	sh2add a3, a3, a0
	sw a4, 0(a3)
	ble s0, a1, label10
	mulw a4, s0, a1
	mv a3, a4
	bgt s0, a1, label9
	li a4, -1
	addiw a1, a1, 1
	sh2add a3, a3, a0
	sw a4, 0(a3)
	ble s0, a1, label10
	j label296
label43:
	mv a3, zero
	mv a1, zero
	ble s0, zero, label25
	mv a4, zero
	mv a5, zero
	mv a2, zero
	mv t0, zero
	mv t2, a0
	lw t1, 0(a0)
	blt t1, zero, label23
	mv t3, zero
	mv t4, a0
	lw t2, 0(a0)
	blt t2, zero, label23
	lw t5, 0(a0)
	bge t5, zero, label21
	mv t3, a0
	addw t1, t1, t2
	sw t1, 0(a0)
	li t0, 1
	ble s0, t0, label17
	mv t2, a0
	lw t1, 0(a0)
	blt t1, zero, label23
	j label206
label21:
	sh2add t6, t3, a0
	addw t5, t1, t2
	lw t4, 0(t6)
	ble t4, t5, label23
	sh2add t3, t3, a0
	addw t1, t1, t2
	sw t1, 0(t3)
	addiw t0, t0, 1
	ble s0, t0, label17
	sh2add t2, a2, a0
	lw t1, 0(t2)
	blt t1, zero, label23
	addw t3, a1, t0
	sh2add t4, t3, a0
	lw t2, 0(t4)
	blt t2, zero, label23
	addw t3, a5, t0
	sh2add t4, t3, a0
	lw t5, 0(t4)
	bge t5, zero, label21
	sh2add t3, t3, a0
	addw t1, t1, t2
	sw t1, 0(t3)
	addiw t0, t0, 1
	ble s0, t0, label17
	sh2add t2, a2, a0
	lw t1, 0(t2)
	blt t1, zero, label23
	addw t3, a1, t0
	sh2add t4, t3, a0
	lw t2, 0(t4)
	blt t2, zero, label23
	addw t3, a5, t0
	sh2add t4, t3, a0
	lw t5, 0(t4)
	bge t5, zero, label21
	j label339
label228:
	addw t3, a5, t0
	sh2add t4, t3, a0
	lw t5, 0(t4)
	bge t5, zero, label21
	j label250
label24:
	addiw a3, a3, 1
	mulw a1, s0, a3
	ble s0, a3, label25
	mv a4, zero
	mv a5, zero
	mv a2, a3
	ble s0, zero, label24
	mv t0, zero
	sh2add t2, a3, a0
	lw t1, 0(t2)
	blt t1, zero, label23
	mv t3, a1
	sh2add t4, a1, a0
	lw t2, 0(t4)
	blt t2, zero, label23
	mv t3, zero
	mv t4, a0
	lw t5, 0(a0)
	bge t5, zero, label21
	mv t3, a0
	addw t1, t1, t2
	sw t1, 0(a0)
	li t0, 1
	ble s0, t0, label17
	sh2add t2, a3, a0
	lw t1, 0(t2)
	blt t1, zero, label23
	addw t3, a1, t0
	sh2add t4, t3, a0
	lw t2, 0(t4)
	blt t2, zero, label23
	j label228
label17:
	addiw a4, a4, 1
	mulw a5, s0, a4
	addw a2, a3, a5
	ble s0, a4, label24
	mv t0, zero
	ble s0, zero, label17
	sh2add t2, a2, a0
	lw t1, 0(t2)
	blt t1, zero, label23
	sext.w t3, a1
	sh2add t4, t3, a0
	lw t2, 0(t4)
	blt t2, zero, label23
	mv t3, a5
	sh2add t4, a5, a0
	lw t5, 0(t4)
	bge t5, zero, label21
	sh2add t3, a5, a0
	addw t1, t1, t2
	sw t1, 0(t3)
	li t0, 1
	ble s0, t0, label17
	sh2add t2, a2, a0
	lw t1, 0(t2)
	blt t1, zero, label23
	addw t3, a1, t0
	sh2add t4, t3, a0
	lw t2, 0(t4)
	blt t2, zero, label23
	addw t3, a5, t0
	sh2add t4, t3, a0
	lw t5, 0(t4)
	bge t5, zero, label21
label250:
	sh2add t3, t3, a0
	addw t1, t1, t2
	sw t1, 0(t3)
	addiw t0, t0, 1
	ble s0, t0, label17
label272:
	sh2add t2, a2, a0
	lw t1, 0(t2)
	blt t1, zero, label23
	j label294
label25:
	mulw s2, s0, s0
	beq s0, zero, label26
	mv a2, zero
	li a1, 4
	ble s2, a1, label29
	j label31
label23:
	addiw t0, t0, 1
	ble s0, t0, label17
	sh2add t2, a2, a0
	lw t1, 0(t2)
	blt t1, zero, label23
label206:
	addw t3, a1, t0
	sh2add t4, t3, a0
	lw t2, 0(t4)
	blt t2, zero, label23
	j label228
label294:
	addw t3, a1, t0
	sh2add t4, t3, a0
	lw t2, 0(t4)
	blt t2, zero, label23
	j label316
label339:
	sh2add t3, t3, a0
	addw t1, t1, t2
	sw t1, 0(t3)
	addiw t0, t0, 1
	ble s0, t0, label17
	j label272
label316:
	addw t3, a5, t0
	sh2add t4, t3, a0
	lw t5, 0(t4)
	bge t5, zero, label21
	j label339
label296:
	mulw a4, s0, a1
	addw a3, a2, a4
	bgt s0, a1, label9
label318:
	li a4, -1
	addiw a1, a1, 1
	sh2add a3, a3, a0
	sw a4, 0(a3)
	ble s0, a1, label10
	mulw a4, s0, a1
	addw a3, a2, a4
	bgt s0, a1, label9
	j label322
label10:
	addiw a2, a2, 1
	ble s0, a2, label43
	ble s0, zero, label10
	mv a1, zero
	mv a4, zero
	mv a3, a2
	bgt s0, zero, label9
	li a4, -1
	li a1, 1
	sh2add a3, a2, a0
	sw a4, 0(a3)
	ble s0, a1, label10
	mulw a4, s0, a1
	addw a3, a2, a4
	bgt s0, a1, label9
	li a4, -1
	addiw a1, a1, 1
	sh2add a3, a3, a0
	sw a4, 0(a3)
	ble s0, a1, label10
	mulw a4, s0, a1
	addw a3, a2, a4
	bgt s0, a1, label9
	li a4, -1
	addiw a1, a1, 1
	sh2add a3, a3, a0
	sw a4, 0(a3)
	ble s0, a1, label10
	mulw a4, s0, a1
	addw a3, a2, a4
	bgt s0, a1, label9
	j label318
label322:
	li a4, -1
	addiw a1, a1, 1
	sh2add a3, a3, a0
	sw a4, 0(a3)
	ble s0, a1, label10
label323:
	mulw a4, s0, a1
	addw a3, a2, a4
	bgt s0, a1, label9
	j label322
label9:
	sh2add a5, a3, s2
	lw a4, 0(a5)
	addiw a1, a1, 1
	sh2add a3, a3, a0
	sw a4, 0(a3)
	ble s0, a1, label10
	mulw a4, s0, a1
	addw a3, a2, a4
	bgt s0, a1, label9
	li a4, -1
	addiw a1, a1, 1
	sh2add a3, a3, a0
	sw a4, 0(a3)
	ble s0, a1, label10
	mulw a4, s0, a1
	addw a3, a2, a4
	bgt s0, a1, label9
	li a4, -1
	addiw a1, a1, 1
	sh2add a3, a3, a0
	sw a4, 0(a3)
	ble s0, a1, label10
	mulw a4, s0, a1
	addw a3, a2, a4
	bgt s0, a1, label9
	li a4, -1
	addiw a1, a1, 1
	sh2add a3, a3, a0
	sw a4, 0(a3)
	ble s0, a1, label10
	mulw a4, s0, a1
	addw a3, a2, a4
	bgt s0, a1, label9
	li a4, -1
	addiw a1, a1, 1
	sh2add a3, a3, a0
	sw a4, 0(a3)
	ble s0, a1, label10
	j label323
label31:
	sh2add a3, a2, a0
	sh2add a2, a2, s1
	lw a4, 0(a3)
	sw a4, 0(a2)
	lw a5, 4(a3)
	sw a5, 4(a2)
	lw a4, 8(a3)
	sw a4, 8(a2)
	lw a3, 12(a3)
	sw a3, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s2, a1, label29
	j label31
label29:
	sh2add a3, a2, a0
	sh2add a4, a2, s1
	lw a1, 0(a3)
	addiw a2, a2, 1
	sw a1, 0(a4)
	ble s2, a2, label26
	j label29
label26:
	li a0, 64
	jal _sysy_stoptime
	mv a0, s2
	mv a1, s1
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s2, 16(sp)
	ld s0, 24(sp)
	addi sp, sp, 32
	ret
