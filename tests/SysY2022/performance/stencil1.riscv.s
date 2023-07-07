.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
image_in:
	.zero	4194304
.align 4
image_out:
	.zero	4194304
.text
.globl main
main:
	addi sp, sp, -32
pcrel190:
	auipc a0, %pcrel_hi(image_in)
	sd s0, 24(sp)
	addi a0, a0, %pcrel_lo(pcrel190)
	sd s2, 16(sp)
	mv s0, a0
	sd s1, 8(sp)
	sd ra, 0(sp)
	jal getarray
	mv s2, a0
	li a0, 23
	jal _sysy_starttime
pcrel191:
	auipc a0, %pcrel_hi(image_out)
	addi s1, a0, %pcrel_lo(pcrel191)
	li a0, 1
	li a1, 1023
	bge a0, a1, label19
	j label18
label19:
	mv a0, zero
label7:
	slliw a1, a0, 10
	sh2add a2, a1, s0
	sh2add a1, a1, s1
	lw a2, 0(a2)
	sw a2, 0(a1)
	addiw a1, a0, 1
	slliw a1, a1, 10
	addiw a2, a1, -1
	sh2add a3, a2, s0
	sh2add a2, a2, s1
	lw a3, 0(a3)
	sw a3, 0(a2)
	sh2add a2, a1, s0
	sh2add a1, a1, s1
	lw a2, 0(a2)
	sw a2, 0(a1)
	addiw a1, a0, 2
	slliw a1, a1, 10
	addiw a2, a1, -1
	sh2add a3, a2, s0
	sh2add a2, a2, s1
	lw a3, 0(a3)
	sw a3, 0(a2)
	sh2add a2, a1, s0
	sh2add a1, a1, s1
	lw a2, 0(a2)
	sw a2, 0(a1)
	addiw a1, a0, 3
	addiw a0, a0, 4
	slliw a1, a1, 10
	addiw a2, a1, -1
	sh2add a3, a2, s0
	sh2add a2, a2, s1
	lw a3, 0(a3)
	sw a3, 0(a2)
	sh2add a2, a1, s0
	sh2add a1, a1, s1
	lw a2, 0(a2)
	sw a2, 0(a1)
	slliw a1, a0, 10
	addiw a1, a1, -1
	sh2add a2, a1, s0
	sh2add a1, a1, s1
	lw a2, 0(a2)
	sw a2, 0(a1)
	li a1, 1024
	bge a0, a1, label132
	j label7
label132:
	mv a0, zero
	j label9
label18:
	li a2, 1
label4:
	addiw a1, a2, -1
	slliw a3, a2, 10
	slliw a4, a1, 10
	addiw a2, a2, 1
	addiw a1, a4, -1
	addw a4, a0, a4
	addw a1, a0, a1
	sh2add a4, a4, s0
	sh2add a5, a1, s0
	addw a1, a0, a3
	addiw a3, a3, -1
	sh2add t0, a1, s0
	addw a3, a0, a3
	sh2add a1, a1, s1
	lw t0, 0(t0)
	sh2add a3, a3, s0
	slliw t0, t0, 3
	lw a5, 0(a5)
	subw a5, t0, a5
	lw t0, 0(a4)
	lw a4, 4(a4)
	subw a5, a5, t0
	subw a4, a5, a4
	lw a5, 0(a3)
	lw a3, 8(a3)
	subw a4, a4, a5
	subw a3, a4, a3
	slliw a4, a2, 10
	addiw a5, a4, -1
	addw a4, a0, a4
	addw a5, a0, a5
	sh2add a4, a4, s0
	sh2add a5, a5, s0
	lw a5, 0(a5)
	subw a3, a3, a5
	lw a5, 0(a4)
	lw a4, 4(a4)
	subw a3, a3, a5
	subw a3, a3, a4
	li a4, 255
	min a3, a3, a4
	max a3, a3, zero
	sw a3, 0(a1)
	li a1, 1023
	bge a2, a1, label6
	j label4
label6:
	addiw a0, a0, 1
	li a1, 1023
	bge a0, a1, label19
	j label18
label9:
	sh2add a1, a0, s0
	sh2add a2, a0, s1
	lw a3, 0(a1)
	addiw a0, a0, 4
	sw a3, 0(a2)
	lui a3, 1023
	add a4, a1, a3
	add a3, a2, a3
	lw a4, 0(a4)
	sw a4, 0(a3)
	lw a3, 4(a1)
	sw a3, 4(a2)
	li a3, 4190212
	add a5, a2, a3
	add a4, a1, a3
	addi a3, a3, 4
	lw a4, 0(a4)
	sw a4, 0(a5)
	add a5, a2, a3
	lw a4, 8(a1)
	sw a4, 8(a2)
	add a4, a1, a3
	addi a3, a3, 4
	lw a4, 0(a4)
	sw a4, 0(a5)
	lw a4, 12(a1)
	add a1, a1, a3
	sw a4, 12(a2)
	add a2, a2, a3
	lw a1, 0(a1)
	sw a1, 0(a2)
	li a1, 1024
	bge a0, a1, label11
	j label9
label11:
	li a0, 59
	jal _sysy_stoptime
	mv a1, s1
	lui a0, 256
	jal putarray
	mv a0, s2
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s2, 16(sp)
	ld s0, 24(sp)
	addi sp, sp, 32
	ret
