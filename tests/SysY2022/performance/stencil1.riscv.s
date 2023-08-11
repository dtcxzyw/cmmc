.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
image_in:
	.zero	4194304
.align 8
image_out:
	.zero	4194304
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[0] RegSpill[16] CalleeSaved[104]
	addi sp, sp, -120
pcrel536:
	auipc a1, %pcrel_hi(image_in)
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, a1, %pcrel_lo(pcrel536)
	sd s5, 16(sp)
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s2, 40(sp)
	sd s9, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s3, 72(sp)
	sd s8, 80(sp)
	sd s11, 88(sp)
	sd s10, 96(sp)
	mv a0, s0
	jal getarray
	sd a0, 104(sp)
	li a0, 23
	jal _sysy_starttime
	lui t3, 3
	lui t2, 2
	lui t0, 1
pcrel537:
	auipc a0, %pcrel_hi(image_out)
	lui t1, 4
	li t5, 1024
	li a2, 1021
	mv a6, zero
	li t6, 1
	li t4, 1023
	add a3, s0, t0
	addi s1, a0, %pcrel_lo(pcrel537)
	li a0, 1
	sd s1, 112(sp)
	slli a7, a0, 11
	li a0, 255
	j label2
.p2align 2
label12:
	slliw a5, s10, 3
	lw a4, 20(a1)
	subw s2, a5, s9
	subw s11, s2, s8
	lw s2, 20(s1)
	subw s9, s11, a4
	subw a5, s9, s6
	subw s11, a5, s2
	lw a5, 20(s3)
	subw s9, s11, s5
	subw s6, s9, s7
	subw s11, s6, a5
	slli s6, s2, 3
	min s5, s11, a0
	max s9, s5, zero
	sw s9, 16(s4)
	lw s2, 24(a1)
	subw s9, s6, s8
	lw a1, 24(s1)
	subw s5, s9, a4
	subw s6, s5, s2
	subw a4, s6, s10
	subw s2, a4, a1
	lw a4, 24(s3)
	subw s5, s2, s7
	subw a1, s5, a5
	subw a5, a1, a4
	min s1, a5, a0
	max a1, s1, zero
	sw a1, 20(s4)
	bge t6, t4, label13
	add a3, a3, t0
.p2align 2
label2:
	sh2add a5, a6, s0
	ld s1, 112(sp)
	addiw t6, t6, 1
	li s2, 1
	sh2add a4, a7, s0
	addiw a6, a6, 1024
	addi a1, a5, 4
	addiw a7, a7, 1024
	sh2add a5, t5, s1
	addiw t5, t5, 1024
.p2align 2
label8:
	sh2add s1, s2, a3
	lw s9, 0(s1)
	lw s6, -4(a1)
	slli s4, s9, 3
	lw s7, 0(a1)
	subw s5, s4, s6
	lw s6, 4(a1)
	subw s3, s5, s7
	lw s11, -4(s1)
	subw s8, s3, s6
	lw s5, 4(s1)
	sh2add s3, s2, a4
	subw s10, s8, s11
	lw s8, -4(s3)
	subw s4, s10, s5
	lw s11, 0(s3)
	subw s10, s4, s8
	lw s8, 4(s3)
	subw s4, s10, s11
	subw s10, s4, s8
	min s4, s10, a0
	max s10, s4, zero
	sh2add s4, s2, a5
	addiw s2, s2, 4
	sw s10, 0(s4)
	slli s10, s5, 3
	subw s10, s10, s7
	subw s7, s10, s6
	lw s10, 8(a1)
	subw s7, s7, s10
	subw s9, s7, s9
	lw s7, 8(s1)
	subw s9, s9, s7
	subw s9, s9, s11
	lw s11, 8(s3)
	subw s9, s9, s8
	subw s9, s9, s11
	min s9, s9, a0
	max s9, s9, zero
	sw s9, 4(s4)
	slli s9, s7, 3
	subw s9, s9, s6
	subw s6, s9, s10
	lw s9, 12(a1)
	subw s6, s6, s9
	subw s5, s6, s5
	lw s6, 12(s1)
	subw s5, s5, s6
	subw s5, s5, s8
	subw s8, s5, s11
	lw s5, 12(s3)
	subw s8, s8, s5
	min s8, s8, a0
	max s8, s8, zero
	sw s8, 8(s4)
	slli s8, s6, 3
	subw s8, s8, s10
	subw s10, s8, s9
	lw s8, 16(a1)
	subw s10, s10, s8
	subw s7, s10, s7
	lw s10, 16(s1)
	subw s7, s7, s10
	subw s7, s7, s11
	subw s11, s7, s5
	lw s7, 16(s3)
	subw s11, s11, s7
	min s11, s11, a0
	max s11, s11, zero
	sw s11, 12(s4)
	bge s2, a2, label12
	addi a1, a1, 16
	j label8
label13:
	mv a0, s0
	li a1, 1024
	mv a2, zero
	mv a3, zero
.p2align 2
label14:
	ld s1, 112(sp)
	addiw t5, a1, -1
	addiw a3, a3, 16
	sh2add a5, a2, s1
	addw a1, a1, t1
	sh2add a4, t5, s0
	lw t4, 0(a0)
	add t6, a5, t0
	addw a2, a2, t1
	add a7, a4, t0
	sw t4, 0(a5)
	sh2add t4, t5, s1
	lw a6, 0(a4)
	sw a6, 0(t4)
	add a6, a0, t0
	lw t5, 0(a6)
	sw t5, 0(t6)
	add t5, a5, t2
	add t6, t4, t0
	lw a6, 0(a7)
	add a7, a4, t2
	sw a6, 0(t6)
	add t6, a0, t2
	lw a6, 0(t6)
	sw a6, 0(t5)
	add t5, a5, t3
	add a6, t4, t2
	lw t6, 0(a7)
	sw t6, 0(a6)
	add a6, a0, t3
	lw a7, 0(a6)
	add a6, a4, t3
	sw a7, 0(t5)
	add t5, a5, t1
	add a7, t4, t3
	lw t6, 0(a6)
	add a6, a0, t1
	sw t6, 0(a7)
	add t6, a4, t1
	lw a7, 0(a6)
	sw a7, 0(t5)
	lui t5, 5
	add a7, t4, t1
	lw a6, 0(t6)
	add s1, a4, t5
	add t6, a5, t5
	sw a6, 0(a7)
	add a6, a0, t5
	lw a7, 0(a6)
	sw a7, 0(t6)
	add a7, t4, t5
	lui t6, 6
	lw a6, 0(s1)
	add t5, a5, t6
	add s1, a4, t6
	sw a6, 0(a7)
	add a6, a0, t6
	lw a7, 0(a6)
	sw a7, 0(t5)
	lui t5, 7
	add a7, t4, t6
	lw a6, 0(s1)
	add t6, a5, t5
	add s1, a4, t5
	sw a6, 0(a7)
	add a6, a0, t5
	lw a7, 0(a6)
	sw a7, 0(t6)
	lui t6, 8
	add a7, t4, t5
	lw a6, 0(s1)
	add t5, a5, t6
	add s1, a4, t6
	sw a6, 0(a7)
	add a7, a0, t6
	lw a6, 0(a7)
	sw a6, 0(t5)
	lui a6, 9
	add t5, t4, t6
	lw a7, 0(s1)
	add t6, a0, a6
	add s1, t4, a6
	sw a7, 0(t5)
	lw a7, 0(t6)
	add t5, a5, a6
	add t6, a4, a6
	sw a7, 0(t5)
	lui t5, 10
	lw a7, 0(t6)
	add a6, a0, t5
	add t6, a5, t5
	sw a7, 0(s1)
	add a7, a4, t5
	lw s1, 0(a6)
	sw s1, 0(t6)
	lui t6, 11
	add s1, t4, t5
	lw a6, 0(a7)
	add t5, a5, t6
	sw a6, 0(s1)
	add s1, a4, t6
	add a6, a0, t6
	lw a7, 0(a6)
	sw a7, 0(t5)
	lui t5, 12
	add a7, t4, t6
	lw a6, 0(s1)
	add t6, a5, t5
	add s1, a4, t5
	sw a6, 0(a7)
	add a6, a0, t5
	lw a7, 0(a6)
	sw a7, 0(t6)
	lui t6, 13
	add a7, t4, t5
	lw a6, 0(s1)
	add t5, a5, t6
	sw a6, 0(a7)
	add a7, a4, t6
	add a6, a0, t6
	lw s1, 0(a6)
	sw s1, 0(t5)
	lui t5, 14
	add s1, t4, t6
	lw a6, 0(a7)
	add t6, a5, t5
	sw a6, 0(s1)
	add s1, a4, t5
	add a6, a0, t5
	lw a7, 0(a6)
	sw a7, 0(t6)
	lui t6, 15
	add a7, t4, t5
	lw a6, 0(s1)
	add t5, a5, t6
	sw a6, 0(a7)
	add a7, a0, t6
	lw a6, 0(a7)
	add a7, a4, t6
	li a4, 1024
	sw a6, 0(t5)
	add t5, t4, t6
	lw a5, 0(a7)
	sw a5, 0(t5)
	bge a3, a4, label279
	lui a4, 16
	add a0, a0, a4
	j label14
label279:
	mv a1, zero
.p2align 2
label21:
	ld s1, 112(sp)
	lui a3, 1023
	lw a4, 0(s0)
	sh2add a0, a1, s1
	add a5, s0, a3
	addiw a1, a1, 16
	add a2, a0, a3
	sw a4, 0(a0)
	lw a4, 0(a5)
	lui a5, 1023
	sw a4, 0(a2)
	addiw a2, a5, 4
	lw a3, 4(s0)
	add a4, s0, a2
	sw a3, 4(a0)
	lw t0, 0(a4)
	add a3, a0, a2
	sw t0, 0(a3)
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
	add t0, s0, a2
	add a4, a0, a2
	sw a5, 20(a0)
	lw a3, 0(t0)
	sw a3, 0(a4)
	addi a3, a2, 4
	lw a5, 24(s0)
	add t0, s0, a3
	add a4, a0, a3
	sw a5, 24(a0)
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
	add t0, s0, a2
	add a4, a0, a2
	sw a5, 36(a0)
	lw a3, 0(t0)
	sw a3, 0(a4)
	addi a3, a2, 4
	lw a5, 40(s0)
	add t0, s0, a3
	add a4, a0, a3
	sw a5, 40(a0)
	lw a2, 0(t0)
	sw a2, 0(a4)
	addi a2, a3, 4
	lw a5, 44(s0)
	add a4, a0, a2
	sw a5, 44(a0)
	add a5, s0, a2
	lw a3, 0(a5)
	sw a3, 0(a4)
	addi a3, a2, 4
	lw t0, 48(s0)
	add a4, a0, a3
	sw t0, 48(a0)
	add t0, s0, a3
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
	li a0, 1024
	add a5, s0, a4
	lw a3, 0(a5)
	sw a3, 0(a2)
	bge a1, a0, label25
	addi s0, s0, 64
	j label21
label25:
	li a0, 59
	jal _sysy_stoptime
	lui a0, 256
	ld s1, 112(sp)
	mv a1, s1
	jal putarray
	ld a0, 104(sp)
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s2, 40(sp)
	ld s9, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	ld s3, 72(sp)
	ld s8, 80(sp)
	ld s11, 88(sp)
	ld s10, 96(sp)
	addi sp, sp, 120
	ret
