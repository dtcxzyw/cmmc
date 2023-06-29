.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
a:
	.zero	40000000
.text
.globl main
main:
	addi sp, sp, -40
	sd s0, 32(sp)
	sd s1, 24(sp)
	sd s3, 16(sp)
	sd s2, 8(sp)
	sd ra, 0(sp)
pcrel237:
	auipc a0, %pcrel_hi(a)
	addi a0, a0, %pcrel_lo(pcrel237)
	mv s0, a0
	jal getarray
	mv s1, a0
	addiw s3, a0, -1
	srliw a0, a0, 31
	add a0, s1, a0
	sraiw s2, a0, 1
	li a0, 59
	jal _sysy_starttime
	mv a1, s3
	mv a0, zero
	addiw a3, s3, 1
	slliw a2, zero, 2
	add a2, s0, a2
	lw a2, 0(a2)
	mv a4, zero
	bge zero, a3, label10
	addiw a3, a3, -1
	slliw a5, a3, 2
	add a5, s0, a5
	lw a5, 0(a5)
	bge a5, a2, label7
	bge zero, a3, label14
	addiw a4, zero, 1
	slliw a5, a4, 2
	add a5, s0, a5
	lw a5, 0(a5)
	blt a5, a2, label10
	bne a4, a3, label20
	slliw a3, zero, 2
	add a3, s0, a3
	sw a2, 0(a3)
	slliw a5, a4, 2
	add a5, s0, a5
	lw t1, 0(a5)
	sw t1, 0(a3)
	sw a2, 0(a5)
	ble a4, s2, label17
	mv a1, a4
	addiw a3, a4, 1
	slliw a2, zero, 2
	add a2, s0, a2
	lw a2, 0(a2)
	mv a4, zero
	bge zero, a3, label10
	addiw a3, a3, -1
	slliw a5, a3, 2
	add a5, s0, a5
	lw a5, 0(a5)
	bge a5, a2, label7
	bge zero, a3, label14
	j label192
label178:
	bge a4, a3, label14
label192:
	addiw a4, a4, 1
	slliw a5, a4, 2
	add a5, s0, a5
	lw a5, 0(a5)
	blt a5, a2, label10
	j label206
label14:
	bne a4, a3, label20
	slliw a3, a0, 2
	add a3, s0, a3
	sw a2, 0(a3)
	slliw a5, a4, 2
	add a5, s0, a5
	lw t1, 0(a5)
	sw t1, 0(a3)
	sw a2, 0(a5)
	ble a4, s2, label17
	mv a1, a4
	addiw a3, a4, 1
	slliw a2, a0, 2
	add a2, s0, a2
	lw a2, 0(a2)
	mv a4, a0
	bge a0, a3, label10
	addiw a3, a3, -1
	slliw a5, a3, 2
	add a5, s0, a5
	lw a5, 0(a5)
	bge a5, a2, label7
	bge a0, a3, label14
	addiw a4, a0, 1
	slliw a5, a4, 2
	add a5, s0, a5
	lw a5, 0(a5)
	blt a5, a2, label10
	bne a4, a3, label20
	slliw a3, a0, 2
	add a3, s0, a3
	sw a2, 0(a3)
	slliw a5, a4, 2
	add a5, s0, a5
	lw t1, 0(a5)
	sw t1, 0(a3)
	sw a2, 0(a5)
	ble a4, s2, label17
	mv a1, a4
	addiw a3, a4, 1
	slliw a2, a0, 2
	add a2, s0, a2
	lw a2, 0(a2)
	mv a4, a0
	bge a0, a3, label10
	addiw a3, a3, -1
	slliw a5, a3, 2
	add a5, s0, a5
	lw a5, 0(a5)
	bge a5, a2, label7
	j label178
label17:
	bge a4, s2, label19
	addiw a0, a4, 1
	addiw a3, a1, 1
	slliw a2, a0, 2
	add a2, s0, a2
	lw a2, 0(a2)
	mv a4, a0
	bge a0, a3, label10
	addiw a3, a3, -1
	slliw a5, a3, 2
	add a5, s0, a5
	lw a5, 0(a5)
	bge a5, a2, label7
	bge a0, a3, label14
	addiw a4, a0, 1
	slliw a5, a4, 2
	add a5, s0, a5
	lw a5, 0(a5)
	blt a5, a2, label10
	bne a4, a3, label20
	slliw a3, a0, 2
	add a3, s0, a3
	sw a2, 0(a3)
	slliw a5, a4, 2
	add a5, s0, a5
	lw t1, 0(a5)
	sw t1, 0(a3)
	sw a2, 0(a5)
	ble a4, s2, label17
	mv a1, a4
	addiw a3, a4, 1
	slliw a2, a0, 2
	add a2, s0, a2
	lw a2, 0(a2)
	mv a4, a0
	bge a0, a3, label10
	addiw a3, a3, -1
	slliw a5, a3, 2
	add a5, s0, a5
	lw a5, 0(a5)
	bge a5, a2, label7
	j label178
label19:
	li a0, 61
	jal _sysy_stoptime
	mv a0, s1
	mv a1, s0
	jal putarray
	slli a0, s2, 2
	add a0, s0, a0
	lw a0, 0(a0)
	slli a1, a0, 1
	srli a1, a1, 56
	add a1, a0, a1
	sraiw a1, a1, 8
	li a2, 256
	mulw a1, a1, a2
	subw a0, a0, a1
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s3, 16(sp)
	ld s1, 24(sp)
	ld s0, 32(sp)
	addi sp, sp, 40
	ret
label10:
	bge a4, a3, label14
	addiw a4, a4, 1
	slliw a5, a4, 2
	add a5, s0, a5
	lw a5, 0(a5)
	blt a5, a2, label10
	bne a4, a3, label20
	slliw a3, a0, 2
	add a3, s0, a3
	sw a2, 0(a3)
	slliw a5, a4, 2
	add a5, s0, a5
	lw t1, 0(a5)
	sw t1, 0(a3)
	sw a2, 0(a5)
	ble a4, s2, label17
	mv a1, a4
	addiw a3, a4, 1
	slliw a2, a0, 2
	add a2, s0, a2
	lw a2, 0(a2)
	mv a4, a0
	bge a0, a3, label10
	addiw a3, a3, -1
	slliw a5, a3, 2
	add a5, s0, a5
	lw a5, 0(a5)
	bge a5, a2, label7
	bge a0, a3, label14
	addiw a4, a0, 1
	slliw a5, a4, 2
	add a5, s0, a5
	lw a5, 0(a5)
	blt a5, a2, label10
	bne a4, a3, label20
	slliw a3, a0, 2
	add a3, s0, a3
	sw a2, 0(a3)
	slliw a5, a4, 2
	add a5, s0, a5
	lw t1, 0(a5)
	sw t1, 0(a3)
	sw a2, 0(a5)
	ble a4, s2, label17
label150:
	mv a1, a4
	addiw a3, a4, 1
	slliw a2, a0, 2
	add a2, s0, a2
	lw a2, 0(a2)
	mv a4, a0
	bge a0, a3, label10
	j label164
label206:
	bne a4, a3, label20
	j label217
label20:
	slliw a5, a4, 2
	add a5, s0, a5
	lw t1, 0(a5)
	slliw t2, a3, 2
	add t2, s0, t2
	lw t3, 0(t2)
	sw t3, 0(a5)
	sw t1, 0(t2)
	bge a4, a3, label10
	addiw a3, a3, -1
	slliw a5, a3, 2
	add a5, s0, a5
	lw a5, 0(a5)
	bge a5, a2, label7
	bge a4, a3, label14
	addiw a4, a4, 1
	slliw a5, a4, 2
	add a5, s0, a5
	lw a5, 0(a5)
	blt a5, a2, label10
	bne a4, a3, label20
	slliw a3, a0, 2
	add a3, s0, a3
	sw a2, 0(a3)
	slliw a5, a4, 2
	add a5, s0, a5
	lw t1, 0(a5)
	sw t1, 0(a3)
	sw a2, 0(a5)
	ble a4, s2, label17
	mv a1, a4
	addiw a3, a4, 1
	slliw a2, a0, 2
	add a2, s0, a2
	lw a2, 0(a2)
	mv a4, a0
	bge a0, a3, label10
	addiw a3, a3, -1
	slliw a5, a3, 2
	add a5, s0, a5
	lw a5, 0(a5)
	bge a5, a2, label7
	bge a0, a3, label14
	addiw a4, a0, 1
	slliw a5, a4, 2
	add a5, s0, a5
	lw a5, 0(a5)
	blt a5, a2, label10
	j label206
label217:
	slliw a3, a0, 2
	add a3, s0, a3
	sw a2, 0(a3)
	slliw a5, a4, 2
	add a5, s0, a5
	lw t1, 0(a5)
	sw t1, 0(a3)
	sw a2, 0(a5)
	ble a4, s2, label17
	j label150
label164:
	addiw a3, a3, -1
	slliw a5, a3, 2
	add a5, s0, a5
	lw a5, 0(a5)
	bge a5, a2, label7
	j label178
label7:
	bge a4, a3, label10
	addiw a3, a3, -1
	slliw a5, a3, 2
	add a5, s0, a5
	lw a5, 0(a5)
	bge a5, a2, label7
	bge a4, a3, label14
	addiw a4, a4, 1
	slliw a5, a4, 2
	add a5, s0, a5
	lw a5, 0(a5)
	blt a5, a2, label10
	bne a4, a3, label20
	slliw a3, a0, 2
	add a3, s0, a3
	sw a2, 0(a3)
	slliw a5, a4, 2
	add a5, s0, a5
	lw t1, 0(a5)
	sw t1, 0(a3)
	sw a2, 0(a5)
	ble a4, s2, label17
	j label150
