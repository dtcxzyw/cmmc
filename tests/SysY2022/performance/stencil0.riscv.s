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
	addi sp, sp, -112
pcrel786:
	auipc a1, %pcrel_hi(image_in)
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, a1, %pcrel_lo(pcrel786)
	sd s5, 16(sp)
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s4, 40(sp)
	sd s2, 48(sp)
	sd s3, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s11, 80(sp)
	sd s10, 88(sp)
	sd s9, 96(sp)
	mv a0, s0
	jal getarray
	sd a0, 104(sp)
	li a0, 23
	jal _sysy_starttime
	li s4, 1021
	li a3, 255
	li s6, 511
	li a4, 1
pcrel787:
	auipc a1, %pcrel_hi(image_out)
	addi a5, s4, 1539
	addi s1, a1, %pcrel_lo(pcrel787)
	addi t0, a5, -1
	addi a1, a3, 1793
	addi t1, t0, 513
	addi t2, t1, -1
	addi t3, t2, 513
	blt a4, s6, label4
label24:
	li a0, 512
	mv a2, zero
	mv a3, zero
	j label11
.p2align 2
label4:
	addiw t4, a4, -1
	addiw t5, a4, 512
	addiw t6, a4, 511
	addiw a6, a4, 1024
	addiw a7, a4, 1023
	addiw s2, a4, 1536
	addiw s3, a4, 1535
	li a0, 1024
	li a2, 512
	mv s5, zero
	li s7, 1
.p2align 2
label5:
	addw s8, a4, a2
	addiw s7, s7, 4
	sh2add s11, s8, s0
	lw s10, 0(s11)
	slli s9, s10, 3
	addw s10, t4, s5
	sh2add s11, s10, s0
	lw s10, 0(s11)
	subw s10, s9, s10
	addw s9, a4, s5
	sh2add s11, s9, s0
	lw s9, 0(s11)
	subw s9, s10, s9
	lw s10, 4(s11)
	subw s9, s9, s10
	addw s10, t4, a2
	sh2add s11, s10, s0
	lw s10, 0(s11)
	subw s9, s9, s10
	lw s10, 8(s11)
	subw s10, s9, s10
	addw s9, t4, a0
	sh2add s11, s9, s0
	lw s9, 0(s11)
	subw s9, s10, s9
	addw s10, a4, a0
	sh2add s11, s10, s0
	lw s10, 0(s11)
	subw s10, s9, s10
	lw s9, 4(s11)
	subw s9, s10, s9
	min s10, s9, a3
	addw s9, t5, a2
	max s11, s10, zero
	sh2add s10, s8, s1
	sw s11, 0(s10)
	sh2add s11, s9, s0
	lw s10, 0(s11)
	addw s11, t6, s5
	slli s8, s10, 3
	sh2add s10, s11, s0
	lw s11, 0(s10)
	subw s10, s8, s11
	addw s8, t5, s5
	sh2add s11, s8, s0
	lw s8, 0(s11)
	subw s8, s10, s8
	lw s10, 4(s11)
	subw s8, s8, s10
	addw s10, t6, a2
	sh2add s11, s10, s0
	lw s10, 0(s11)
	subw s8, s8, s10
	lw s10, 8(s11)
	subw s10, s8, s10
	addw s8, t6, a0
	sh2add s11, s8, s0
	lw s8, 0(s11)
	subw s8, s10, s8
	addw s10, t5, a0
	sh2add s11, s10, s0
	lw s10, 0(s11)
	subw s10, s8, s10
	lw s8, 4(s11)
	subw s11, s10, s8
	sh2add s10, s9, s1
	min s8, s11, a3
	max s11, s8, zero
	addw s8, a6, a2
	sw s11, 0(s10)
	sh2add s11, s8, s0
	lw s9, 0(s11)
	addw s11, a7, s5
	slli s10, s9, 3
	sh2add s9, s11, s0
	lw s11, 0(s9)
	subw s9, s10, s11
	addw s10, a6, s5
	sh2add s11, s10, s0
	lw s10, 0(s11)
	subw s9, s9, s10
	lw s10, 4(s11)
	subw s10, s9, s10
	addw s9, a7, a2
	sh2add s11, s9, s0
	lw s9, 0(s11)
	subw s9, s10, s9
	lw s10, 8(s11)
	subw s9, s9, s10
	addw s10, a7, a0
	sh2add s11, s10, s0
	lw s10, 0(s11)
	subw s10, s9, s10
	addw s9, a6, a0
	sh2add s11, s9, s0
	lw s9, 0(s11)
	subw s9, s10, s9
	lw s10, 4(s11)
	sh2add s11, s8, s1
	subw s10, s9, s10
	min s9, s10, a3
	max s10, s9, zero
	addw s9, s2, a2
	sw s10, 0(s11)
	sh2add s11, s9, s0
	lw s10, 0(s11)
	addw s11, s3, s5
	slli s8, s10, 3
	sh2add s10, s11, s0
	lw s11, 0(s10)
	subw s10, s8, s11
	addw s8, s2, s5
	sh2add s11, s8, s0
	lw s8, 0(s11)
	subw s8, s10, s8
	lw s10, 4(s11)
	subw s8, s8, s10
	addw s10, s3, a2
	sh2add s11, s10, s0
	lw s10, 0(s11)
	subw s8, s8, s10
	lw s10, 8(s11)
	addw s11, s3, a0
	subw s10, s8, s10
	sh2add s8, s11, s0
	lw s11, 0(s8)
	subw s8, s10, s11
	addw s10, s2, a0
	sh2add s11, s10, s0
	lw s10, 0(s11)
	subw s10, s8, s10
	lw s8, 4(s11)
	subw s11, s10, s8
	sh2add s10, s9, s1
	min s8, s11, a3
	addw s9, a2, a1
	max s11, s8, zero
	addw s8, s5, a1
	sw s11, 0(s10)
	addw s10, a0, a1
	bge s7, s4, label10
	mv a0, s10
	mv a2, s9
	mv s5, s8
	j label5
.p2align 2
label10:
	addw t5, a4, s9
	addw s2, t4, s8
	addw s7, a4, s8
	sh2add a7, t5, s0
	lw a6, 0(a7)
	sh2add a7, s2, s0
	slli t6, a6, 3
	lw s3, 0(a7)
	sh2add a7, s7, s0
	subw a6, t6, s3
	lw t6, 0(a7)
	lw s3, 4(a7)
	subw s2, a6, t6
	addw a6, t4, s9
	subw t6, s2, s3
	sh2add a7, a6, s0
	lw s7, 0(a7)
	lw s3, 8(a7)
	subw s2, t6, s7
	addw t6, t4, s10
	subw a6, s2, s3
	sh2add s7, t6, s0
	addw s3, a4, s10
	lw a7, 0(s7)
	subw t6, a6, a7
	sh2add a7, s3, s0
	lw s2, 0(a7)
	lw s7, 4(a7)
	subw a6, t6, s2
	subw s3, a6, s7
	sh2add a6, t5, s1
	min t6, s3, a3
	addw s3, s5, a5
	max a7, t6, zero
	addw t6, a4, a5
	addiw a4, a4, 1
	addw s8, s5, t6
	addw t5, a2, t6
	addw s5, a2, a5
	sw a7, 0(a6)
	sh2add a7, t5, s0
	lw s2, 0(a7)
	addw a7, t4, s3
	slli a6, s2, 3
	sh2add s2, a7, s0
	lw s7, 0(s2)
	sh2add s2, s8, s0
	subw a7, a6, s7
	addw s8, t4, s5
	lw a6, 0(s2)
	addw s5, a0, a5
	lw s7, 4(s2)
	subw s3, a7, a6
	sh2add a7, s8, s0
	subw a6, s3, s7
	lw a2, 0(a7)
	lw s3, 8(a7)
	subw s2, a6, a2
	addw a7, t4, s5
	subw a2, s2, s3
	sh2add a6, a7, s0
	addw a7, a0, t6
	lw s2, 0(a6)
	sh2add a6, a7, s0
	subw t4, a2, s2
	lw a2, 0(a6)
	lw a7, 4(a6)
	subw a0, t4, a2
	subw t6, a0, a7
	sh2add a0, t5, s1
	min t4, t6, a3
	max a2, t4, zero
	sw a2, 0(a0)
	blt a4, s6, label4
	j label24
.p2align 2
label11:
	sh2add t4, a2, s0
	lui a7, 1
	addiw a3, a3, 16
	sh2add t5, a2, s1
	lw a4, 0(t4)
	addiw t4, a0, -1
	sh2add a6, t4, s1
	sh2add t6, t4, s0
	sw a4, 0(t5)
	addiw a4, a2, 512
	lw t5, 0(t6)
	sh2add t4, a4, s0
	sh2add t6, a4, s1
	sw t5, 0(a6)
	lw t5, 0(t4)
	addiw t4, a0, 511
	sh2add a4, t4, s0
	sw t5, 0(t6)
	sh2add t6, t4, s1
	lw t5, 0(a4)
	addiw a4, a2, 1024
	sh2add a6, a4, s0
	sw t5, 0(t6)
	addiw t5, a0, 1023
	sh2add t6, a4, s1
	lw t4, 0(a6)
	sh2add a6, t5, s0
	sw t4, 0(t6)
	addiw t4, a2, 1536
	sh2add t6, t5, s1
	lw a4, 0(a6)
	sh2add a6, t4, s0
	sw a4, 0(t6)
	addiw a4, a0, 1535
	sh2add t6, t4, s1
	lw t5, 0(a6)
	sh2add a6, a4, s0
	sw t5, 0(t6)
	addw t5, a2, a1
	sh2add t6, a4, s1
	lw t4, 0(a6)
	sh2add a6, t5, s0
	sw t4, 0(t6)
	addiw t4, a0, 2047
	sh2add t6, t5, s1
	lw a4, 0(a6)
	sh2add a6, t4, s0
	sw a4, 0(t6)
	addw a4, a2, a5
	sh2add t6, t4, s1
	lw t5, 0(a6)
	sh2add t4, a4, s0
	sw t5, 0(t6)
	sh2add t6, a4, s1
	lw t5, 0(t4)
	addw t4, a0, t0
	sh2add a4, t4, s0
	sw t5, 0(t6)
	sh2add t6, t4, s1
	lw t5, 0(a4)
	addw a4, a2, t1
	sh2add t4, a4, s0
	sw t5, 0(t6)
	sh2add t6, a4, s1
	lw t5, 0(t4)
	addw t4, a0, t2
	sh2add a4, t4, s0
	sw t5, 0(t6)
	sh2add t6, t4, s1
	lw t5, 0(a4)
	addw a4, a2, t3
	sh2add a6, a4, s0
	sw t5, 0(t6)
	lui t6, 1
	sh2add t5, a4, s1
	lw t4, 0(a6)
	addiw a4, t6, -513
	sw t4, 0(t5)
	addw t4, a0, a4
	sh2add a6, t4, s1
	sh2add t5, t4, s0
	lw t6, 0(t5)
	addw t5, a2, a7
	sh2add t4, t5, s0
	sw t6, 0(a6)
	sh2add a6, t5, s1
	lw t6, 0(t4)
	addi t4, a4, 512
	addi a4, t4, 513
	addw t5, a0, t4
	sw t6, 0(a6)
	sh2add a7, t5, s1
	sh2add t6, t5, s0
	lw a6, 0(t6)
	addw t6, a2, a4
	sh2add t5, t6, s0
	sw a6, 0(a7)
	sh2add a6, t6, s1
	lw t4, 0(t5)
	addi t5, a4, -1
	addw t6, a0, t5
	sw t4, 0(a6)
	sh2add a6, t6, s1
	sh2add t4, t6, s0
	lw a4, 0(t4)
	addi t4, t5, 513
	addw t6, a2, t4
	sw a4, 0(a6)
	sh2add a7, t6, s1
	sh2add a4, t6, s0
	lw a6, 0(a4)
	addi a4, t4, -1
	addi t4, a4, 513
	addw t5, a0, a4
	sw a6, 0(a7)
	sh2add t6, t5, s0
	sh2add a7, t5, s1
	lw a6, 0(t6)
	addw t6, a2, t4
	sh2add t5, t6, s0
	sw a6, 0(a7)
	sh2add a6, t6, s1
	lw a4, 0(t5)
	addi t5, t4, -1
	addw t6, a0, t5
	sw a4, 0(a6)
	sh2add a7, t6, s1
	sh2add a4, t6, s0
	lw a6, 0(a4)
	addi a4, t5, 513
	addi t5, a4, -1
	addw t4, a2, a4
	sw a6, 0(a7)
	sh2add t6, t4, s0
	sh2add a7, t4, s1
	lw a6, 0(t6)
	addw t6, a0, t5
	sh2add t4, t6, s0
	sw a6, 0(a7)
	sh2add a6, t6, s1
	lw a4, 0(t4)
	addi t4, t5, 513
	addw t6, a2, t4
	sw a4, 0(a6)
	sh2add a7, t6, s1
	sh2add a4, t6, s0
	lw a6, 0(a4)
	addi a4, t4, -1
	addi t4, a4, 513
	addw t5, a0, a4
	sw a6, 0(a7)
	addi a4, t4, -1
	sh2add a6, t5, s1
	sh2add a7, t5, s0
	addw t5, a2, t4
	lw t6, 0(a7)
	addi t4, a4, 513
	sh2add a7, t5, s0
	sw t6, 0(a6)
	sh2add a6, t5, s1
	lw t6, 0(a7)
	addw t5, a0, a4
	sh2add a7, t5, s0
	sw t6, 0(a6)
	sh2add a6, t5, s1
	lw t6, 0(a7)
	addw t5, a2, t4
	sh2add a7, t5, s1
	sw t6, 0(a6)
	sh2add a6, t5, s0
	lw t6, 0(a6)
	addi a6, t4, -1
	addw a4, a0, a6
	sw t6, 0(a7)
	sh2add t5, a4, s1
	sh2add t6, a4, s0
	lui a4, 2
	lw t4, 0(t6)
	addw a0, a0, a4
	addw a2, a2, a4
	sw t4, 0(t5)
	li t4, 1024
	blt a3, t4, label11
	mv a2, zero
.p2align 2
label15:
	sh2add a1, a2, s0
	li a5, 1023
	sh2add a0, a2, s1
	lw a4, 0(a1)
	slli a3, a5, 11
	addiw a2, a2, 16
	add a5, a0, a3
	add t0, a1, a3
	sw a4, 0(a0)
	lw a4, 0(t0)
	sw a4, 0(a5)
	addi a5, a3, 4
	lw t0, 4(a1)
	add t1, a1, a5
	sw t0, 4(a0)
	add t0, a0, a5
	lw a4, 0(t1)
	sw a4, 0(t0)
	addi a4, a5, 4
	lw a3, 8(a1)
	add a5, a0, a4
	add t0, a1, a4
	sw a3, 8(a0)
	lw a3, 0(t0)
	sw a3, 0(a5)
	addi a3, a4, 4
	lw t0, 12(a1)
	add a4, a0, a3
	add t1, a1, a3
	sw t0, 12(a0)
	lw a5, 0(t1)
	sw a5, 0(a4)
	addi a4, a3, 4
	lw t1, 16(a1)
	add a3, a0, a4
	add t0, a1, a4
	sw t1, 16(a0)
	lw a5, 0(t0)
	sw a5, 0(a3)
	addi a3, a4, 4
	lw t1, 20(a1)
	add a4, a0, a3
	add t0, a1, a3
	sw t1, 20(a0)
	lw a5, 0(t0)
	sw a5, 0(a4)
	addi a4, a3, 4
	lw t1, 24(a1)
	add a3, a0, a4
	add t0, a1, a4
	sw t1, 24(a0)
	lw a5, 0(t0)
	sw a5, 0(a3)
	addi a3, a4, 4
	lw t1, 28(a1)
	add a4, a0, a3
	add t0, a1, a3
	sw t1, 28(a0)
	lw a5, 0(t0)
	sw a5, 0(a4)
	addi a4, a3, 4
	lw t1, 32(a1)
	add a3, a0, a4
	add t0, a1, a4
	sw t1, 32(a0)
	lw a5, 0(t0)
	sw a5, 0(a3)
	addi a3, a4, 4
	lw t0, 36(a1)
	add t1, a1, a3
	sw t0, 36(a0)
	add t0, a0, a3
	lw a5, 0(t1)
	sw a5, 0(t0)
	addi a5, a3, 4
	lw a4, 40(a1)
	add t1, a0, a5
	add t0, a1, a5
	sw a4, 40(a0)
	lw a4, 0(t0)
	sw a4, 0(t1)
	addi a4, a5, 4
	lw a3, 44(a1)
	add t1, a0, a4
	add t0, a1, a4
	sw a3, 44(a0)
	lw a3, 0(t0)
	sw a3, 0(t1)
	addi a3, a4, 4
	lw a5, 48(a1)
	add a4, a0, a3
	add t0, a1, a3
	sw a5, 48(a0)
	lw a5, 0(t0)
	sw a5, 0(a4)
	addi a4, a3, 4
	lw t0, 52(a1)
	add a3, a0, a4
	add t1, a1, a4
	sw t0, 52(a0)
	lw a5, 0(t1)
	sw a5, 0(a3)
	addi a3, a4, 4
	lw t1, 56(a1)
	add a4, a0, a3
	add t0, a1, a3
	sw t1, 56(a0)
	lw a5, 0(t0)
	sw a5, 0(a4)
	addi a4, a3, 4
	lw t1, 60(a1)
	add a3, a0, a4
	add t0, a1, a4
	sw t1, 60(a0)
	li a0, 512
	lw a5, 0(t0)
	sw a5, 0(a3)
	blt a2, a0, label15
	li a0, 59
	jal _sysy_stoptime
	mv a1, s1
	lui a0, 128
	jal putarray
	ld a0, 104(sp)
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s4, 40(sp)
	ld s2, 48(sp)
	ld s3, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s11, 80(sp)
	ld s10, 88(sp)
	ld s9, 96(sp)
	addi sp, sp, 112
	ret
