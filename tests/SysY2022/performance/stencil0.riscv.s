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
	bge a0, a1, label24
label4:
	addiw a1, a0, -1
	li a2, 1024
	li a3, 512
	mv a4, zero
	li a5, 1
label5:
	addw t0, a0, a3
	addiw a5, a5, 1
	sh2add t2, t0, s0
	sh2add t0, t0, s1
	lw t3, 0(t2)
	addw t2, a1, a4
	slli t1, t3, 3
	sh2add t3, t2, s0
	lw t4, 0(t3)
	addw t3, a0, a4
	subw t1, t1, t4
	addiw a4, a4, 512
	sh2add t2, t3, s0
	lw t4, 0(t2)
	lw t2, 4(t2)
	subw t3, t1, t4
	subw t1, t3, t2
	addw t3, a1, a3
	addiw a3, a3, 512
	sh2add t2, t3, s0
	lw t4, 0(t2)
	lw t2, 8(t2)
	subw t3, t1, t4
	subw t1, t3, t2
	addw t3, a1, a2
	sh2add t4, t3, s0
	addw t3, a0, a2
	lw t2, 0(t4)
	addiw a2, a2, 512
	subw t1, t1, t2
	sh2add t2, t3, s0
	lw t4, 0(t2)
	lw t3, 4(t2)
	subw t1, t1, t4
	li t4, 255
	subw t2, t1, t3
	min t3, t2, t4
	max t1, t3, zero
	sw t1, 0(t0)
	li t0, 1023
	blt a5, t0, label5
	addiw a0, a0, 1
	li a1, 511
	blt a0, a1, label4
label24:
	li a0, 512
	mv a1, zero
	mv a2, zero
label11:
	sh2add a4, a1, s0
	addiw a2, a2, 4
	sh2add a5, a1, s1
	lw a3, 0(a4)
	sw a3, 0(a5)
	addiw a3, a0, -1
	sh2add a5, a3, s1
	sh2add t0, a3, s0
	addiw a3, a1, 512
	lw a4, 0(t0)
	sh2add t0, a3, s1
	sw a4, 0(a5)
	sh2add a5, a3, s0
	addiw a3, a0, 511
	lw a4, 0(a5)
	sh2add a5, a3, s1
	sw a4, 0(t0)
	sh2add t0, a3, s0
	addiw a3, a1, 1024
	lw a4, 0(t0)
	sh2add t0, a3, s0
	sw a4, 0(a5)
	sh2add a5, a3, s1
	lw a4, 0(t0)
	addiw a3, a0, 1023
	sh2add t0, a3, s0
	sw a4, 0(a5)
	sh2add a5, a3, s1
	lw a4, 0(t0)
	addiw a3, a1, 1536
	sh2add t0, a3, s1
	sw a4, 0(a5)
	sh2add a5, a3, s0
	addiw a3, a0, 1535
	lw a4, 0(a5)
	sh2add a5, a3, s0
	sh2add a3, a3, s1
	sw a4, 0(t0)
	lw a4, 0(a5)
	sw a4, 0(a3)
	li a3, 2048
	addw a0, a0, a3
	addw a1, a1, a3
	li a3, 1024
	blt a2, a3, label11
	mv a1, zero
label15:
	sh2add a0, a1, s0
	sh2add a2, a1, s1
	lw a3, 0(a0)
	addiw a1, a1, 4
	sw a3, 0(a2)
	li a3, 2095104
	add t0, a2, a3
	add a5, a0, a3
	addi a3, a3, 4
	lw a4, 0(a5)
	add a5, a2, a3
	sw a4, 0(t0)
	add t0, a0, a3
	lw a4, 4(a0)
	addi a3, a3, 4
	sw a4, 4(a2)
	lw a4, 0(t0)
	add t0, a2, a3
	sw a4, 0(a5)
	add a5, a0, a3
	lw a4, 8(a0)
	addi a3, a3, 4
	sw a4, 8(a2)
	lw a4, 0(a5)
	sw a4, 0(t0)
	lw a4, 12(a0)
	sw a4, 12(a2)
	add a2, a2, a3
	add a4, a0, a3
	lw a0, 0(a4)
	sw a0, 0(a2)
	li a0, 512
	blt a1, a0, label15
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
