.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
image_in:
	.zero	2097152
.align 4
image_out:
	.zero	2097152
.text
.globl main
main:
	addi sp, sp, -32
pcrel189:
	auipc a1, %pcrel_hi(image_in)
	sd s0, 24(sp)
	addi a0, a1, %pcrel_lo(pcrel189)
	sd s2, 16(sp)
	mv s0, a0
	sd s1, 8(sp)
	sd ra, 0(sp)
	jal getarray
	mv s2, a0
	li a0, 23
	jal _sysy_starttime
	li a0, 1
pcrel190:
	auipc a1, %pcrel_hi(image_out)
	addi s1, a1, %pcrel_lo(pcrel190)
	li a1, 511
	bge a0, a1, label20
	j label19
label20:
	mv a0, zero
label8:
	slliw a1, a0, 9
	sh2add a3, a1, s0
	sh2add a1, a1, s1
	lw a2, 0(a3)
	addiw a3, a0, 1
	sw a2, 0(a1)
	slliw a1, a3, 9
	addiw a2, a1, -1
	sh2add a4, a2, s0
	sh2add a2, a2, s1
	lw a3, 0(a4)
	sw a3, 0(a2)
	sh2add a3, a1, s0
	sh2add a1, a1, s1
	lw a2, 0(a3)
	addiw a3, a0, 2
	sw a2, 0(a1)
	slliw a1, a3, 9
	addiw a2, a1, -1
	sh2add a4, a2, s0
	sh2add a2, a2, s1
	lw a3, 0(a4)
	sw a3, 0(a2)
	sh2add a3, a1, s0
	sh2add a1, a1, s1
	lw a2, 0(a3)
	addiw a3, a0, 3
	addiw a0, a0, 4
	sw a2, 0(a1)
	slliw a1, a3, 9
	addiw a2, a1, -1
	sh2add a4, a2, s0
	sh2add a2, a2, s1
	lw a3, 0(a4)
	sw a3, 0(a2)
	sh2add a3, a1, s0
	sh2add a1, a1, s1
	lw a2, 0(a3)
	sw a2, 0(a1)
	slliw a2, a0, 9
	addiw a1, a2, -1
	sh2add a4, a1, s1
	sh2add a3, a1, s0
	li a1, 1024
	lw a2, 0(a3)
	sw a2, 0(a4)
	bge a0, a1, label131
	j label8
label131:
	mv a1, zero
label10:
	sh2add a2, a1, s0
	sh2add a0, a1, s1
	lw a3, 0(a2)
	addiw a1, a1, 4
	sw a3, 0(a0)
	li a3, 2095104
	add a5, a0, a3
	add t0, a2, a3
	addi a3, a3, 4
	lw a4, 0(t0)
	add t0, a0, a3
	sw a4, 0(a5)
	add a5, a2, a3
	lw a4, 4(a2)
	addi a3, a3, 4
	sw a4, 4(a0)
	lw a4, 0(a5)
	add a5, a2, a3
	sw a4, 0(t0)
	add t0, a0, a3
	lw a4, 8(a2)
	addi a3, a3, 4
	sw a4, 8(a0)
	lw a4, 0(a5)
	sw a4, 0(t0)
	lw a4, 12(a2)
	sw a4, 12(a0)
	add a0, a0, a3
	add a4, a2, a3
	lw a2, 0(a4)
	sw a2, 0(a0)
	li a0, 512
	bge a1, a0, label12
	j label10
label19:
	addiw a1, a0, -1
	li a3, 1
label5:
	slliw a4, a3, 9
	addw a2, a0, a4
	sh2add t1, a2, s0
	sh2add a2, a2, s1
	lw t0, 0(t1)
	addiw t1, a3, -1
	slliw a5, t0, 3
	addiw a3, a3, 1
	slliw t0, t1, 9
	addw t3, a1, t0
	sh2add t2, t3, s0
	addw t3, a0, t0
	lw t1, 0(t2)
	sh2add t0, t3, s0
	subw a5, a5, t1
	lw t2, 0(t0)
	lw t0, 4(t0)
	subw t1, a5, t2
	subw a5, t1, t0
	addw t1, a1, a4
	sh2add a4, t1, s0
	lw t2, 0(a4)
	lw t0, 8(a4)
	subw a5, a5, t2
	subw a4, a5, t0
	slliw a5, a3, 9
	addw t0, a1, a5
	sh2add t1, t0, s0
	addw t0, a0, a5
	lw t2, 0(t1)
	sh2add a5, t0, s0
	subw a4, a4, t2
	lw t1, 0(a5)
	lw a5, 4(a5)
	subw t0, a4, t1
	subw a4, t0, a5
	li t0, 255
	min a5, a4, t0
	max a4, a5, zero
	sw a4, 0(a2)
	li a4, 1023
	bge a3, a4, label7
	j label5
label7:
	addiw a0, a0, 1
	li a1, 511
	bge a0, a1, label20
	j label19
label12:
	li a0, 59
	jal _sysy_stoptime
	mv a1, s1
	lui a0, 128
	jal putarray
	mv a0, s2
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s2, 16(sp)
	ld s0, 24(sp)
	addi sp, sp, 32
	ret
