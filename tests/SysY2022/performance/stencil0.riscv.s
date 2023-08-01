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
	addi sp, sp, -152
pcrel795:
	auipc a0, %pcrel_hi(image_in)
	sd ra, 0(sp)
	sd s6, 8(sp)
	addi s6, a0, %pcrel_lo(pcrel795)
	sd s1, 16(sp)
	sd s7, 24(sp)
	sd s2, 32(sp)
	sd s4, 40(sp)
	sd s0, 48(sp)
	sd s5, 56(sp)
	sd s3, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	sd s6, 112(sp)
	mv a0, s6
	jal getarray
	sd a0, 104(sp)
	li a0, 23
	jal _sysy_starttime
pcrel796:
	auipc a1, %pcrel_hi(image_out)
	li a4, 1
	li s4, 511
	li a3, 255
	li t1, 3583
	li s2, 1021
	lui t2, 2
	li t0, 1024
	addi s7, a1, %pcrel_lo(pcrel796)
	addi a5, s2, 1539
	addi a1, a3, 1793
	addi t3, a5, -1
	sd s7, 120(sp)
	addi t4, t3, 513
	sd t4, 144(sp)
	addi t4, t4, -1
	sd t4, 136(sp)
	addi t4, t4, 513
	sd t4, 128(sp)
	blt a4, s4, label4
label24:
	li a2, 512
	mv a3, zero
	mv a0, a2
	mv a2, zero
	j label11
.p2align 2
label4:
	addiw t4, a4, -1
	addiw t5, a4, 512
	addiw t6, a4, 511
	addiw a6, a4, 1024
	addiw a7, a4, 1023
	addiw s0, a4, 1536
	addiw s1, a4, 1535
	mv a0, t0
	li a2, 512
	mv s3, zero
	li s5, 1
.p2align 2
label5:
	addw s8, a4, a2
	addiw s5, s5, 4
	ld s6, 112(sp)
	sh2add s9, s8, s6
	lw s10, 0(s9)
	addw s9, t4, s3
	slli s7, s10, 3
	sh2add s10, s9, s6
	lw s11, 0(s10)
	addw s10, a4, s3
	subw s7, s7, s11
	sh2add s9, s10, s6
	lw s11, 0(s9)
	lw s9, 4(s9)
	subw s10, s7, s11
	subw s7, s10, s9
	addw s10, t4, a2
	sh2add s9, s10, s6
	lw s11, 0(s9)
	lw s9, 8(s9)
	subw s10, s7, s11
	subw s7, s10, s9
	addw s10, t4, a0
	sh2add s9, s10, s6
	addw s10, a4, a0
	lw s11, 0(s9)
	sh2add s9, s10, s6
	subw s7, s7, s11
	lw s11, 0(s9)
	lw s9, 4(s9)
	subw s7, s7, s11
	subw s11, s7, s9
	ld s7, 120(sp)
	min s10, s11, a3
	max s9, s10, zero
	sh2add s10, s8, s7
	addw s8, t5, a2
	sw s9, 0(s10)
	sh2add s10, s8, s6
	lw s11, 0(s10)
	addw s10, t6, s3
	slli s9, s11, 3
	sh2add s11, s10, s6
	lw s10, 0(s11)
	addw s11, t5, s3
	subw s9, s9, s10
	sh2add s10, s11, s6
	lw s11, 0(s10)
	lw s10, 4(s10)
	subw s11, s9, s11
	subw s9, s11, s10
	addw s11, t6, a2
	sh2add s10, s11, s6
	lw s11, 0(s10)
	lw s10, 8(s10)
	subw s11, s9, s11
	subw s9, s11, s10
	addw s11, t6, a0
	sh2add s10, s11, s6
	lw s11, 0(s10)
	subw s9, s9, s11
	addw s11, t5, a0
	sh2add s10, s11, s6
	lw s11, 0(s10)
	lw s10, 4(s10)
	subw s9, s9, s11
	subw s11, s9, s10
	min s10, s11, a3
	sh2add s11, s8, s7
	max s9, s10, zero
	addw s8, a6, a2
	sh2add s10, s8, s6
	sw s9, 0(s11)
	lw s11, 0(s10)
	addw s10, a7, s3
	slli s9, s11, 3
	sh2add s11, s10, s6
	lw s10, 0(s11)
	addw s11, a6, s3
	subw s9, s9, s10
	sh2add s10, s11, s6
	lw s11, 0(s10)
	lw s10, 4(s10)
	subw s11, s9, s11
	subw s9, s11, s10
	addw s11, a7, a2
	sh2add s10, s11, s6
	lw s11, 0(s10)
	lw s10, 8(s10)
	subw s11, s9, s11
	subw s9, s11, s10
	addw s11, a7, a0
	sh2add s10, s11, s6
	addw s11, a6, a0
	lw s10, 0(s10)
	subw s9, s9, s10
	sh2add s10, s11, s6
	lw s11, 0(s10)
	lw s10, 4(s10)
	subw s9, s9, s11
	subw s11, s9, s10
	min s10, s11, a3
	sh2add s11, s8, s7
	max s9, s10, zero
	addw s8, s0, a2
	sh2add s7, s8, s7
	sw s9, 0(s11)
	sh2add s11, s8, s6
	addw s8, a2, a1
	lw s10, 0(s11)
	addw s11, s1, s3
	slli s9, s10, 3
	sh2add s10, s11, s6
	lw s11, 0(s10)
	subw s9, s9, s11
	addw s11, s0, s3
	sh2add s10, s11, s6
	lw s11, 0(s10)
	lw s10, 4(s10)
	subw s11, s9, s11
	subw s9, s11, s10
	addw s11, s1, a2
	sh2add s10, s11, s6
	lw s11, 0(s10)
	lw s10, 8(s10)
	subw s11, s9, s11
	subw s9, s11, s10
	addw s11, s1, a0
	sh2add s10, s11, s6
	lw s11, 0(s10)
	addw s10, s0, a0
	subw s9, s9, s11
	sh2add s6, s10, s6
	lw s11, 0(s6)
	lw s6, 4(s6)
	subw s9, s9, s11
	subw s10, s9, s6
	min s9, s10, a3
	max s6, s9, zero
	addw s9, a0, a1
	sw s6, 0(s7)
	addw s7, s3, a1
	bge s5, s2, label10
	mv a0, s9
	mv a2, s8
	mv s3, s7
	j label5
.p2align 2
label10:
	addw t5, a4, s8
	ld s6, 112(sp)
	sh2add a7, t5, s6
	lw a6, 0(a7)
	addw a7, t4, s7
	slli t6, a6, 3
	sh2add a6, a7, s6
	lw a7, 0(a6)
	subw t6, t6, a7
	addw a7, a4, s7
	sh2add a6, a7, s6
	lw s0, 0(a6)
	lw a6, 4(a6)
	subw a7, t6, s0
	subw t6, a7, a6
	addw a7, t4, s8
	sh2add a6, a7, s6
	lw s0, 0(a6)
	lw a6, 8(a6)
	subw a7, t6, s0
	subw t6, a7, a6
	addw a7, t4, s9
	sh2add a6, a7, s6
	lw a7, 0(a6)
	subw t6, t6, a7
	addw a7, a4, s9
	sh2add a6, a7, s6
	lw a7, 0(a6)
	subw t6, t6, a7
	lw a7, 4(a6)
	ld s7, 120(sp)
	subw a6, t6, a7
	sh2add t5, t5, s7
	min a7, a6, a3
	max t6, a7, zero
	sw t6, 0(t5)
	addw t6, a4, a5
	addiw a4, a4, 1
	addw t5, a2, t6
	sh2add a6, t5, s6
	lw a7, 0(a6)
	slli a6, a7, 3
	addw a7, s3, a5
	addw s0, t4, a7
	sh2add s1, s0, s6
	lw a7, 0(s1)
	addw s1, s3, t6
	subw a6, a6, a7
	sh2add a7, s1, s6
	lw s0, 0(a7)
	lw a7, 4(a7)
	subw a6, a6, s0
	subw a6, a6, a7
	addw a7, a2, a5
	addw s0, t4, a7
	sh2add a2, s0, s6
	lw a7, 0(a2)
	subw a6, a6, a7
	lw a7, 8(a2)
	subw a2, a6, a7
	addw a6, a0, a5
	addw t4, t4, a6
	sh2add a7, t4, s6
	addw t4, a0, t6
	lw a6, 0(a7)
	sh2add a0, t4, s6
	subw a2, a2, a6
	lw t6, 0(a0)
	lw a0, 4(a0)
	subw a2, a2, t6
	subw t4, a2, a0
	min a2, t4, a3
	sh2add t4, t5, s7
	max a0, a2, zero
	sw a0, 0(t4)
	blt a4, s4, label4
	j label24
.p2align 2
label11:
	ld s6, 112(sp)
	addiw a3, a3, 16
	sh2add t4, a2, s6
	lw a4, 0(t4)
	ld s7, 120(sp)
	sh2add t4, a2, s7
	sw a4, 0(t4)
	addiw a4, a0, -1
	sh2add t6, a4, s7
	sh2add t5, a4, s6
	addiw a4, a2, 512
	lw t4, 0(t5)
	sh2add t5, a4, s7
	sw t4, 0(t6)
	sh2add t6, a4, s6
	addiw a4, a0, 511
	lw t4, 0(t6)
	sh2add t6, a4, s7
	sw t4, 0(t5)
	sh2add t5, a4, s6
	addiw a4, a2, 1024
	lw t4, 0(t5)
	sh2add t5, a4, s7
	sw t4, 0(t6)
	sh2add t6, a4, s6
	addiw a4, a0, 1023
	lw t4, 0(t6)
	sh2add t6, a4, s6
	sw t4, 0(t5)
	sh2add t5, a4, s7
	lw t4, 0(t6)
	addiw a4, a2, 1536
	sh2add t6, a4, s6
	sw t4, 0(t5)
	sh2add t5, a4, s7
	lw t4, 0(t6)
	addiw a4, a0, 1535
	sh2add t6, a4, s6
	sw t4, 0(t5)
	sh2add t5, a4, s7
	lw t4, 0(t6)
	addw a4, a2, a1
	sh2add t6, a4, s6
	sw t4, 0(t5)
	sh2add t5, a4, s7
	lw t4, 0(t6)
	addiw a4, a0, 2047
	sh2add t6, a4, s6
	sw t4, 0(t5)
	sh2add t5, a4, s7
	lw t4, 0(t6)
	addw a4, a2, a5
	sh2add t6, a4, s6
	sw t4, 0(t5)
	sh2add t5, a4, s7
	lw t4, 0(t6)
	addw a4, a0, t3
	sw t4, 0(t5)
	sh2add t5, a4, s6
	sh2add a4, a4, s7
	lw t4, 0(t5)
	sw t4, 0(a4)
	ld t4, 144(sp)
	addw a4, a2, t4
	sh2add t5, a4, s6
	sh2add a4, a4, s7
	lw t4, 0(t5)
	sw t4, 0(a4)
	ld t4, 136(sp)
	addw a4, a0, t4
	sh2add t5, a4, s6
	sh2add a4, a4, s7
	lw t4, 0(t5)
	sw t4, 0(a4)
	ld t4, 128(sp)
	addw a4, a2, t4
	sh2add t5, a4, s7
	sh2add t6, a4, s6
	addw a4, a0, t1
	lw t4, 0(t6)
	sw t4, 0(t5)
	sh2add t5, a4, s6
	sh2add a4, a4, s7
	lw t4, 0(t5)
	sw t4, 0(a4)
	lui t4, 1
	addw a4, a2, t4
	sh2add t5, a4, s7
	sh2add t6, a4, s6
	addi a4, t1, 512
	lw t4, 0(t6)
	sw t4, 0(t5)
	addw t4, a0, a4
	addi a4, a4, 513
	sh2add t6, t4, s6
	sh2add t4, t4, s7
	lw t5, 0(t6)
	sw t5, 0(t4)
	addw t4, a2, a4
	addi a4, a4, -1
	sh2add t6, t4, s6
	sh2add t4, t4, s7
	lw t5, 0(t6)
	sw t5, 0(t4)
	addw t4, a0, a4
	addi a4, a4, 513
	sh2add t6, t4, s6
	sh2add t4, t4, s7
	lw t5, 0(t6)
	sw t5, 0(t4)
	addw t4, a2, a4
	addi a4, a4, -1
	sh2add t6, t4, s6
	sh2add t4, t4, s7
	lw t5, 0(t6)
	sw t5, 0(t4)
	addw t4, a0, a4
	addi a4, a4, 513
	sh2add t6, t4, s6
	sh2add t4, t4, s7
	lw t5, 0(t6)
	sw t5, 0(t4)
	addw t4, a2, a4
	addi a4, a4, -1
	sh2add t6, t4, s6
	sh2add t4, t4, s7
	lw t5, 0(t6)
	sw t5, 0(t4)
	addw t4, a0, a4
	addi a4, a4, 513
	sh2add t6, t4, s6
	sh2add t4, t4, s7
	lw t5, 0(t6)
	sw t5, 0(t4)
	addw t4, a2, a4
	addi a4, a4, -1
	sh2add t6, t4, s6
	sh2add t4, t4, s7
	lw t5, 0(t6)
	sw t5, 0(t4)
	addw t4, a0, a4
	addi a4, a4, 513
	sh2add t6, t4, s6
	sh2add t4, t4, s7
	lw t5, 0(t6)
	sw t5, 0(t4)
	addw t4, a2, a4
	addi a4, a4, -1
	sh2add t6, t4, s6
	sh2add t4, t4, s7
	lw t5, 0(t6)
	sw t5, 0(t4)
	addw t4, a0, a4
	addi a4, a4, 513
	sh2add t6, t4, s6
	sh2add t4, t4, s7
	lw t5, 0(t6)
	sw t5, 0(t4)
	addw t4, a2, a4
	addi a4, a4, -1
	sh2add t6, t4, s6
	sh2add t4, t4, s7
	lw t5, 0(t6)
	sw t5, 0(t4)
	addw t4, a0, a4
	addi a4, a4, 513
	sh2add t6, t4, s6
	sh2add t4, t4, s7
	lw t5, 0(t6)
	sw t5, 0(t4)
	addw t4, a2, a4
	addw a2, a2, t2
	sh2add t6, t4, s7
	sh2add a6, t4, s6
	addi t4, a4, -1
	lw t5, 0(a6)
	addw a4, a0, t4
	addw a0, a0, t2
	sw t5, 0(t6)
	sh2add t5, a4, s6
	sh2add a4, a4, s7
	lw t4, 0(t5)
	sw t4, 0(a4)
	blt a3, t0, label11
	mv a1, zero
.p2align 2
label15:
	ld s6, 112(sp)
	sh2add a0, a1, s6
	lw a3, 0(a0)
	ld s7, 120(sp)
	sh2add a2, a1, s7
	addiw a1, a1, 16
	sw a3, 0(a2)
	li a3, 2095104
	add a5, a2, a3
	add t0, a0, a3
	addi a3, a3, 4
	lw a4, 0(t0)
	add t0, a0, a3
	sw a4, 0(a5)
	add a5, a2, a3
	lw a4, 4(a0)
	addi a3, a3, 4
	sw a4, 4(a2)
	lw a4, 0(t0)
	add t0, a0, a3
	sw a4, 0(a5)
	add a5, a2, a3
	lw a4, 8(a0)
	addi a3, a3, 4
	sw a4, 8(a2)
	lw a4, 0(t0)
	add t0, a0, a3
	sw a4, 0(a5)
	add a5, a2, a3
	lw a4, 12(a0)
	addi a3, a3, 4
	sw a4, 12(a2)
	lw a4, 0(t0)
	add t0, a0, a3
	sw a4, 0(a5)
	add a5, a2, a3
	lw a4, 16(a0)
	addi a3, a3, 4
	sw a4, 16(a2)
	lw a4, 0(t0)
	add t0, a0, a3
	sw a4, 0(a5)
	add a5, a2, a3
	lw a4, 20(a0)
	addi a3, a3, 4
	sw a4, 20(a2)
	lw a4, 0(t0)
	add t0, a0, a3
	sw a4, 0(a5)
	add a5, a2, a3
	lw a4, 24(a0)
	addi a3, a3, 4
	sw a4, 24(a2)
	lw a4, 0(t0)
	add t0, a2, a3
	sw a4, 0(a5)
	add a5, a0, a3
	lw a4, 28(a0)
	addi a3, a3, 4
	sw a4, 28(a2)
	lw a4, 0(a5)
	add a5, a2, a3
	sw a4, 0(t0)
	add t0, a0, a3
	lw a4, 32(a0)
	addi a3, a3, 4
	sw a4, 32(a2)
	lw a4, 0(t0)
	add t0, a0, a3
	sw a4, 0(a5)
	add a5, a2, a3
	lw a4, 36(a0)
	addi a3, a3, 4
	sw a4, 36(a2)
	lw a4, 0(t0)
	add t0, a2, a3
	sw a4, 0(a5)
	add a5, a0, a3
	lw a4, 40(a0)
	addi a3, a3, 4
	sw a4, 40(a2)
	lw a4, 0(a5)
	add a5, a0, a3
	sw a4, 0(t0)
	add t0, a2, a3
	lw a4, 44(a0)
	addi a3, a3, 4
	sw a4, 44(a2)
	lw a4, 0(a5)
	add a5, a2, a3
	sw a4, 0(t0)
	add t0, a0, a3
	lw a4, 48(a0)
	addi a3, a3, 4
	sw a4, 48(a2)
	lw a4, 0(t0)
	add t0, a2, a3
	sw a4, 0(a5)
	add a5, a0, a3
	lw a4, 52(a0)
	addi a3, a3, 4
	sw a4, 52(a2)
	lw a4, 0(a5)
	add a5, a2, a3
	sw a4, 0(t0)
	add t0, a0, a3
	lw a4, 56(a0)
	addi a3, a3, 4
	sw a4, 56(a2)
	lw a4, 0(t0)
	sw a4, 0(a5)
	lw a4, 60(a0)
	sw a4, 60(a2)
	add a2, a2, a3
	add a4, a0, a3
	lw a0, 0(a4)
	sw a0, 0(a2)
	li a2, 512
	blt a1, a2, label15
	li a0, 59
	jal _sysy_stoptime
	lui a0, 128
	ld s7, 120(sp)
	mv a1, s7
	jal putarray
	ld a0, 104(sp)
	ld ra, 0(sp)
	ld s6, 8(sp)
	ld s1, 16(sp)
	ld s7, 24(sp)
	ld s2, 32(sp)
	ld s4, 40(sp)
	ld s0, 48(sp)
	ld s5, 56(sp)
	ld s3, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 152
	ret
