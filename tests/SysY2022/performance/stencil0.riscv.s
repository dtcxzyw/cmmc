.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
image_in:
	.zero	2097152
.align 8
image_out:
	.zero	2097152
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[0] RegSpill[16] CalleeSaved[104]
	addi sp, sp, -120
pcrel543:
	auipc a1, %pcrel_hi(image_in)
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, a1, %pcrel_lo(pcrel543)
	sd s5, 16(sp)
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s2, 40(sp)
	sd s3, 48(sp)
	sd s8, 56(sp)
	sd s4, 64(sp)
	sd s7, 72(sp)
	sd s9, 80(sp)
	sd s11, 88(sp)
	sd s10, 96(sp)
	mv a0, s0
	jal getarray
	sd a0, 104(sp)
	li a0, 23
	jal _sysy_starttime
	lui a5, 2
	lui t0, 1
	li a1, 1
	li a7, 1024
pcrel544:
	auipc a0, %pcrel_hi(image_out)
	mv t5, zero
	li t3, 512
	li a2, 509
	li t4, 1
	li t2, 1023
	slli a4, a1, 11
	addi a6, a0, %pcrel_lo(pcrel544)
	li a1, 3
	add a3, s0, a4
	li a0, 255
	slli t1, a1, 11
	sd a6, 112(sp)
	j label2
.p2align 2
label12:
	slliw a6, s9, 3
	lw t6, 20(s1)
	subw s2, a6, s8
	subw s11, s2, s10
	lw s2, 20(s3)
	subw s8, s11, t6
	subw a6, s8, s6
	subw s11, a6, s2
	lw a6, 20(s4)
	subw s8, s11, s5
	subw s6, s8, s7
	subw s11, s6, a6
	slli s6, s2, 3
	min s5, s11, a0
	max s8, s5, zero
	sw s8, 16(a1)
	lw s2, 24(s1)
	subw s8, s6, s10
	subw s5, s8, t6
	lw s8, 24(s3)
	subw s6, s5, s2
	lw s3, 24(s4)
	subw t6, s6, s9
	subw s1, t6, s8
	subw s5, s1, s7
	subw t6, s5, a6
	subw s2, t6, s3
	min s1, s2, a0
	max a6, s1, zero
	sw a6, 20(a1)
	bge t4, t2, label173
	add a3, a3, a4
.p2align 2
label2:
	ld a6, 112(sp)
	sh2add t6, t5, s0
	addiw t4, t4, 1
	li s2, 1
	sh2add s1, t3, a6
	addiw t5, t5, 512
	addiw t3, t3, 512
	sh2add a6, a7, s0
	addi a1, s1, 4
	addiw a7, a7, 512
.p2align 2
label8:
	sh2add s1, s2, t6
	sh2add s3, s2, a3
	lw s8, 0(s3)
	slli s6, s8, 3
	lw s5, -4(s1)
	lw s7, 0(s1)
	subw s4, s6, s5
	lw s6, 4(s1)
	subw s9, s4, s7
	lw s4, -4(s3)
	subw s11, s9, s6
	lw s5, 4(s3)
	subw s10, s11, s4
	sh2add s4, s2, a6
	subw s9, s10, s5
	addiw s2, s2, 4
	lw s11, -4(s4)
	subw s10, s9, s11
	lw s11, 0(s4)
	subw s9, s10, s11
	lw s10, 4(s4)
	subw s9, s9, s10
	min s9, s9, a0
	max s9, s9, zero
	sw s9, 0(a1)
	slli s9, s5, 3
	subw s9, s9, s7
	subw s7, s9, s6
	lw s9, 8(s1)
	subw s7, s7, s9
	subw s8, s7, s8
	lw s7, 8(s3)
	subw s8, s8, s7
	subw s8, s8, s11
	lw s11, 8(s4)
	subw s8, s8, s10
	subw s8, s8, s11
	min s8, s8, a0
	max s8, s8, zero
	sw s8, 4(a1)
	slli s8, s7, 3
	subw s8, s8, s6
	subw s6, s8, s9
	lw s8, 12(s1)
	subw s6, s6, s8
	subw s5, s6, s5
	lw s6, 12(s3)
	subw s5, s5, s6
	subw s5, s5, s10
	subw s10, s5, s11
	lw s5, 12(s4)
	subw s10, s10, s5
	min s10, s10, a0
	max s10, s10, zero
	sw s10, 8(a1)
	slli s10, s6, 3
	subw s9, s10, s9
	lw s10, 16(s1)
	subw s9, s9, s8
	subw s9, s9, s10
	subw s7, s9, s7
	lw s9, 16(s3)
	subw s7, s7, s9
	subw s7, s7, s11
	subw s11, s7, s5
	lw s7, 16(s4)
	subw s11, s11, s7
	min s11, s11, a0
	max s11, s11, zero
	sw s11, 12(a1)
	bge s2, a2, label12
	addi a1, a1, 16
	j label8
label173:
	mv a0, s0
	li a1, 512
	mv a2, zero
	mv a3, zero
.p2align 2
label15:
	ld a6, 112(sp)
	addiw t5, a1, -1
	addiw a3, a3, 16
	sh2add t2, a2, a6
	addw a1, a1, a5
	sh2add t3, t5, s0
	lw t4, 0(a0)
	add t6, t2, a4
	addw a2, a2, a5
	sw t4, 0(t2)
	sh2add t4, t5, a6
	lw a7, 0(t3)
	add t5, a0, a4
	sw a7, 0(t4)
	lw a7, 0(t5)
	add t5, t3, a4
	sw a7, 0(t6)
	add t6, t4, a4
	lw a6, 0(t5)
	add t5, t2, t0
	sw a6, 0(t6)
	add a6, t3, t0
	add t6, a0, t0
	lw a7, 0(t6)
	sw a7, 0(t5)
	add t5, t2, t1
	add a7, t4, t0
	lw t6, 0(a6)
	sw t6, 0(a7)
	add a7, t3, t1
	add t6, a0, t1
	lw a6, 0(t6)
	sw a6, 0(t5)
	add t5, t2, a5
	add a6, t4, t1
	lw t6, 0(a7)
	add a7, a0, a5
	sw t6, 0(a6)
	lw a6, 0(a7)
	add a7, t3, a5
	sw a6, 0(t5)
	add a6, t4, a5
	lw t6, 0(a7)
	li a7, 5
	slli t5, a7, 11
	sw t6, 0(a6)
	add s1, t3, t5
	add a6, a0, t5
	add t6, t2, t5
	lw a7, 0(a6)
	sw a7, 0(t6)
	lui t6, 3
	add a7, t4, t5
	lw a6, 0(s1)
	add t5, t2, t6
	sw a6, 0(a7)
	add a7, t3, t6
	add a6, a0, t6
	lw s1, 0(a6)
	sw s1, 0(t5)
	add t5, t4, t6
	lw a6, 0(a7)
	li a7, 7
	sw a6, 0(t5)
	slli t5, a7, 11
	add a7, t3, t5
	add a6, a0, t5
	add t6, t2, t5
	lw s1, 0(a6)
	sw s1, 0(t6)
	lui t6, 4
	add s1, t4, t5
	lw a6, 0(a7)
	add t5, t2, t6
	add a7, a0, t6
	sw a6, 0(s1)
	lw a6, 0(a7)
	add a7, t3, t6
	sw a6, 0(t5)
	add t5, t4, t6
	lw a6, 0(a7)
	li a7, 9
	sw a6, 0(t5)
	slli t5, a7, 11
	add s1, t3, t5
	add a6, a0, t5
	add t6, t2, t5
	lw a7, 0(a6)
	sw a7, 0(t6)
	add a7, t4, t5
	lui t6, 5
	lw a6, 0(s1)
	add t5, t2, t6
	sw a6, 0(a7)
	add a7, t3, t6
	add a6, a0, t6
	lw s1, 0(a6)
	sw s1, 0(t5)
	add t5, t4, t6
	lw a6, 0(a7)
	li a7, 11
	sw a6, 0(t5)
	slli t5, a7, 11
	add s1, t4, t5
	add a7, a0, t5
	add t6, t2, t5
	lw a6, 0(a7)
	add a7, t3, t5
	sw a6, 0(t6)
	lui t6, 6
	lw a6, 0(a7)
	add t5, t2, t6
	sw a6, 0(s1)
	add s1, t3, t6
	add a6, a0, t6
	lw a7, 0(a6)
	sw a7, 0(t5)
	add a7, t4, t6
	lw a6, 0(s1)
	li s1, 13
	slli t5, s1, 11
	sw a6, 0(a7)
	add t6, t2, t5
	add a7, t3, t5
	add a6, a0, t5
	lw s1, 0(a6)
	sw s1, 0(t6)
	lui t6, 7
	add s1, t4, t5
	lw a6, 0(a7)
	add t5, t2, t6
	add a7, a0, t6
	sw a6, 0(s1)
	lw a6, 0(a7)
	add a7, t3, t6
	sw a6, 0(t5)
	add t5, t4, t6
	lw a6, 0(a7)
	li a7, 15
	sw a6, 0(t5)
	slli t5, a7, 11
	add a6, t3, t5
	add a7, a0, t5
	add t6, t2, t5
	lw t2, 0(a7)
	sw t2, 0(t6)
	add t6, t4, t5
	lw t2, 0(a6)
	sw t2, 0(t6)
	li t2, 1024
	bge a3, t2, label280
	lui t2, 8
	add a0, a0, t2
	j label15
label280:
	mv a1, zero
.p2align 2
label22:
	ld a6, 112(sp)
	li a5, 1023
	lw a2, 0(s0)
	sh2add a0, a1, a6
	slli a3, a5, 11
	addiw a1, a1, 16
	add a4, s0, a3
	sw a2, 0(a0)
	lw t0, 0(a4)
	add a2, a0, a3
	sw t0, 0(a2)
	addi a2, a3, 4
	lw a5, 4(s0)
	add t0, s0, a2
	add a4, a0, a2
	sw a5, 4(a0)
	lw a3, 0(t0)
	sw a3, 0(a4)
	addi a3, a2, 4
	lw a5, 8(s0)
	add t0, s0, a3
	add a4, a0, a3
	sw a5, 8(a0)
	lw a2, 0(t0)
	sw a2, 0(a4)
	addi a2, a3, 4
	lw a5, 12(s0)
	add a4, a0, a2
	sw a5, 12(a0)
	add a5, s0, a2
	lw a3, 0(a5)
	sw a3, 0(a4)
	addi a3, a2, 4
	lw t0, 16(s0)
	add a4, a0, a3
	sw t0, 16(a0)
	add t0, s0, a3
	lw a2, 0(t0)
	sw a2, 0(a4)
	addi a2, a3, 4
	lw a5, 20(s0)
	add a4, a0, a2
	sw a5, 20(a0)
	add a5, s0, a2
	lw a3, 0(a5)
	sw a3, 0(a4)
	addi a3, a2, 4
	lw t0, 24(s0)
	add a4, a0, a3
	sw t0, 24(a0)
	add t0, s0, a3
	lw a2, 0(t0)
	sw a2, 0(a4)
	addi a2, a3, 4
	lw a5, 28(s0)
	add t0, s0, a2
	add a4, a0, a2
	sw a5, 28(a0)
	lw a3, 0(t0)
	sw a3, 0(a4)
	addi a3, a2, 4
	lw a5, 32(s0)
	add t0, s0, a3
	add a4, a0, a3
	sw a5, 32(a0)
	lw a2, 0(t0)
	sw a2, 0(a4)
	addi a2, a3, 4
	lw a5, 36(s0)
	add a4, a0, a2
	sw a5, 36(a0)
	add a5, s0, a2
	lw a3, 0(a5)
	sw a3, 0(a4)
	addi a3, a2, 4
	lw t0, 40(s0)
	add a4, a0, a3
	sw t0, 40(a0)
	add t0, s0, a3
	lw a2, 0(t0)
	sw a2, 0(a4)
	addi a2, a3, 4
	lw a5, 44(s0)
	add t0, s0, a2
	add a4, a0, a2
	sw a5, 44(a0)
	lw a3, 0(t0)
	sw a3, 0(a4)
	addi a3, a2, 4
	lw a5, 48(s0)
	add t0, s0, a3
	add a4, a0, a3
	sw a5, 48(a0)
	lw a2, 0(t0)
	sw a2, 0(a4)
	addi a2, a3, 4
	lw a5, 52(s0)
	add a4, a0, a2
	sw a5, 52(a0)
	add a5, s0, a2
	lw a3, 0(a5)
	sw a3, 0(a4)
	addi a3, a2, 4
	lw t0, 56(s0)
	add a4, a0, a3
	sw t0, 56(a0)
	add t0, s0, a3
	lw a2, 0(t0)
	sw a2, 0(a4)
	addi a4, a3, 4
	lw a5, 60(s0)
	add a2, a0, a4
	sw a5, 60(a0)
	li a0, 512
	add a5, s0, a4
	lw a3, 0(a5)
	sw a3, 0(a2)
	bge a1, a0, label26
	addi s0, s0, 64
	j label22
label26:
	li a0, 59
	jal _sysy_stoptime
	lui a0, 128
	ld a6, 112(sp)
	mv a1, a6
	jal putarray
	ld a0, 104(sp)
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s2, 40(sp)
	ld s3, 48(sp)
	ld s8, 56(sp)
	ld s4, 64(sp)
	ld s7, 72(sp)
	ld s9, 80(sp)
	ld s11, 88(sp)
	ld s10, 96(sp)
	addi sp, sp, 120
	ret
