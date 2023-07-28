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
.p2align 2
	addi sp, sp, -64
pcrel773:
	auipc a1, %pcrel_hi(image_in)
	sd s0, 56(sp)
	addi a0, a1, %pcrel_lo(pcrel773)
	sd s5, 48(sp)
	mv s0, a0
	sd s2, 40(sp)
	sd s1, 32(sp)
	sd s6, 24(sp)
	sd s3, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	jal getarray
	mv s2, a0
	li a0, 23
	jal _sysy_starttime
	li a3, 1
pcrel774:
	auipc a1, %pcrel_hi(image_out)
	addi s1, a1, %pcrel_lo(pcrel774)
	li a1, 1023
	blt a3, a1, label4
.p2align 2
label24:
	li a0, 1024
	mv a1, zero
	mv a2, zero
	j label11
.p2align 2
label4:
	addiw a4, a3, -1
	addiw a5, a3, 1024
	addiw t0, a3, 1023
	li a0, 2048
	addiw t2, a3, 2047
	li t5, 1
	addi a1, a0, 1024
	addw t1, a3, a0
	addi a2, a1, -1
	addw t3, a3, a1
	addw t4, a3, a2
	li a1, 1024
	mv a2, zero
.p2align 2
label5:
	addw a6, a3, a1
	addw s4, a3, a2
	addw s5, a5, a2
	addiw t5, t5, 4
	sh2add t6, a6, s0
	sh2add a6, a6, s1
	lw a7, 0(t6)
	slli t6, a7, 3
	addw a7, a4, a2
	sh2add s3, a7, s0
	lw a7, 0(s3)
	subw t6, t6, a7
	sh2add a7, s4, s0
	lw s3, 0(a7)
	lw a7, 4(a7)
	subw t6, t6, s3
	addw s3, a4, a1
	subw t6, t6, a7
	sh2add a7, s3, s0
	addw s3, a4, a0
	lw s4, 0(a7)
	lw a7, 8(a7)
	subw t6, t6, s4
	subw t6, t6, a7
	sh2add a7, s3, s0
	addw s3, a3, a0
	lw s4, 0(a7)
	sh2add a7, s3, s0
	subw t6, t6, s4
	lw s4, 0(a7)
	lw s3, 4(a7)
	subw t6, t6, s4
	subw a7, t6, s3
	li t6, 255
	min s3, a7, t6
	max a7, s3, zero
	addw s3, t0, a2
	sw a7, 0(a6)
	addw a6, a5, a1
	sh2add a7, a6, s0
	sh2add a6, a6, s1
	lw s4, 0(a7)
	slli a7, s4, 3
	sh2add s4, s3, s0
	sh2add s3, s5, s0
	lw s6, 0(s4)
	addw s5, t0, a1
	subw a7, a7, s6
	lw s4, 0(s3)
	lw s3, 4(s3)
	subw a7, a7, s4
	subw a7, a7, s3
	sh2add s3, s5, s0
	lw s4, 0(s3)
	lw s3, 8(s3)
	subw a7, a7, s4
	addw s4, t0, a0
	subw a7, a7, s3
	sh2add s5, s4, s0
	lw s3, 0(s5)
	addw s5, a5, a0
	subw a7, a7, s3
	sh2add s3, s5, s0
	lw s4, 0(s3)
	lw s3, 4(s3)
	subw a7, a7, s4
	subw a7, a7, s3
	min s4, a7, t6
	max a7, s4, zero
	addw s4, t2, a2
	sw a7, 0(a6)
	addw a6, t1, a1
	sh2add a7, a6, s0
	sh2add a6, a6, s1
	lw s3, 0(a7)
	slli a7, s3, 3
	sh2add s3, s4, s0
	addw s4, t1, a2
	lw s5, 0(s3)
	sh2add s3, s4, s0
	subw a7, a7, s5
	addw s4, t2, a1
	lw s5, 0(s3)
	lw s3, 4(s3)
	subw a7, a7, s5
	subw a7, a7, s3
	sh2add s3, s4, s0
	addw s4, t2, a0
	lw s5, 0(s3)
	lw s3, 8(s3)
	subw a7, a7, s5
	sh2add s5, s4, s0
	subw a7, a7, s3
	addw s4, t1, a0
	lw s3, 0(s5)
	subw a7, a7, s3
	sh2add s3, s4, s0
	lw s5, 0(s3)
	lw s4, 4(s3)
	subw a7, a7, s5
	addw s5, t3, a2
	subw a7, a7, s4
	min s3, a7, t6
	max a7, s3, zero
	addw s3, t4, a2
	sw a7, 0(a6)
	addw a6, t3, a1
	sh2add a7, a6, s0
	sh2add a6, a6, s1
	lw s4, 0(a7)
	slli a7, s4, 3
	sh2add s4, s3, s0
	sh2add s3, s5, s0
	lw s6, 0(s4)
	lw s4, 0(s3)
	subw a7, a7, s6
	lw s3, 4(s3)
	subw a7, a7, s4
	addw s4, t4, a1
	subw a7, a7, s3
	sh2add s3, s4, s0
	addw s4, t4, a0
	lw s5, 0(s3)
	lw s3, 8(s3)
	subw a7, a7, s5
	subw a7, a7, s3
	sh2add s3, s4, s0
	addw s4, t3, a0
	lw s5, 0(s3)
	sh2add s3, s4, s0
	subw a7, a7, s5
	lw s5, 0(s3)
	lw s3, 4(s3)
	subw a7, a7, s5
	subw s4, a7, s3
	li s3, 1021
	min a7, s4, t6
	max t6, a7, zero
	lui a7, 1
	sw t6, 0(a6)
	addw a6, a1, a7
	addw t6, a2, a7
	addw a7, a0, a7
	bge t5, s3, label10
	mv a0, a7
	mv a1, a6
	mv a2, t6
	j label5
.p2align 2
label10:
	addw t0, a3, a6
	addw t3, a4, t6
	sh2add t2, t0, s0
	sh2add t0, t0, s1
	lw t1, 0(t2)
	sh2add t2, t3, s0
	slli a5, t1, 3
	lw t1, 0(t2)
	addw t2, a3, t6
	subw a5, a5, t1
	sh2add t1, t2, s0
	lw t3, 0(t1)
	lw t1, 4(t1)
	subw t2, a5, t3
	subw a5, t2, t1
	addw t2, a4, a6
	sh2add t1, t2, s0
	lw t3, 0(t1)
	lw t1, 8(t1)
	subw t2, a5, t3
	addw t3, a4, a7
	subw a5, t2, t1
	sh2add t2, t3, s0
	addw t3, a3, a7
	lw t1, 0(t2)
	subw a5, a5, t1
	sh2add t1, t3, s0
	lw t2, 0(t1)
	lw t3, 4(t1)
	subw a5, a5, t2
	subw t1, a5, t3
	li a5, 255
	min t2, t1, a5
	max t1, t2, zero
	li t2, 5120
	sw t1, 0(t0)
	addw t1, a3, t2
	addiw a3, a3, 1
	addw t0, a1, t1
	sh2add t4, t0, s0
	lw t5, 0(t4)
	addw t4, a2, t2
	slli t3, t5, 3
	addw t6, a4, t4
	addw t4, a2, t1
	sh2add a6, t6, s0
	sh2add a2, t4, s0
	lw t5, 0(a6)
	addw t4, a1, t2
	subw t3, t3, t5
	addw t2, a0, t2
	lw t5, 0(a2)
	lw t6, 4(a2)
	subw t3, t3, t5
	subw a2, t3, t6
	addw t3, a4, t4
	sh2add a1, t3, s0
	lw t4, 0(a1)
	lw t3, 8(a1)
	subw a2, a2, t4
	subw a1, a2, t3
	addw t3, a4, t2
	sh2add a2, t3, s0
	lw a4, 0(a2)
	addw a2, a0, t1
	subw a1, a1, a4
	sh2add a0, a2, s0
	lw a4, 0(a0)
	lw a0, 4(a0)
	subw a1, a1, a4
	subw a2, a1, a0
	min a1, a2, a5
	sh2add a2, t0, s1
	max a0, a1, zero
	sw a0, 0(a2)
	li a1, 1023
	blt a3, a1, label4
	j label24
.p2align 2
label11:
	sh2add a5, a1, s0
	addiw a2, a2, 16
	sh2add a4, a1, s1
	lw a3, 0(a5)
	sw a3, 0(a4)
	addiw a3, a0, -1
	sh2add t0, a3, s1
	sh2add a5, a3, s0
	addiw a3, a1, 1024
	lw a4, 0(a5)
	sh2add a5, a3, s0
	sw a4, 0(t0)
	sh2add t0, a3, s1
	lw a4, 0(a5)
	addiw a3, a0, 1023
	sh2add a5, a3, s0
	sw a4, 0(t0)
	sh2add t0, a3, s1
	lw a4, 0(a5)
	li a3, 2048
	sw a4, 0(t0)
	addw a4, a1, a3
	addi a3, a3, 1024
	sh2add t1, a4, s1
	sh2add t0, a4, s0
	addiw a4, a0, 2047
	lw a5, 0(t0)
	sh2add t0, a4, s0
	sh2add a4, a4, s1
	sw a5, 0(t1)
	lw a5, 0(t0)
	sw a5, 0(a4)
	addw a4, a1, a3
	addi a3, a3, -1
	sh2add t0, a4, s0
	sh2add a4, a4, s1
	lw a5, 0(t0)
	sw a5, 0(a4)
	addw a4, a0, a3
	addi a3, a3, 1024
	sh2add t0, a4, s0
	sh2add a4, a4, s1
	lw a5, 0(t0)
	sw a5, 0(a4)
	lui a5, 1
	addw a4, a1, a5
	sh2add t0, a4, s0
	sh2add a4, a4, s1
	lw a5, 0(t0)
	sw a5, 0(a4)
	addw a4, a0, a3
	addi a3, a3, 1025
	sh2add t0, a4, s0
	sh2add a4, a4, s1
	lw a5, 0(t0)
	sw a5, 0(a4)
	addw a4, a1, a3
	addi a3, a3, -1
	sh2add t0, a4, s0
	sh2add a4, a4, s1
	lw a5, 0(t0)
	sw a5, 0(a4)
	addw a4, a0, a3
	addi a3, a3, 1025
	sh2add t0, a4, s0
	sh2add a4, a4, s1
	lw a5, 0(t0)
	sw a5, 0(a4)
	addw a4, a1, a3
	addi a3, a3, -1
	sh2add t0, a4, s0
	sh2add a4, a4, s1
	lw a5, 0(t0)
	sw a5, 0(a4)
	addw a4, a0, a3
	addi a3, a3, 1025
	sh2add t0, a4, s0
	sh2add a4, a4, s1
	lw a5, 0(t0)
	sw a5, 0(a4)
	addw a4, a1, a3
	addi a3, a3, -1
	sh2add t0, a4, s0
	sh2add a4, a4, s1
	lw a5, 0(t0)
	sw a5, 0(a4)
	addw a4, a0, a3
	addi a3, a3, 1024
	sh2add t0, a4, s0
	sh2add a4, a4, s1
	lw a5, 0(t0)
	sw a5, 0(a4)
	lui a5, 2
	addw a4, a1, a5
	sh2add t0, a4, s0
	sh2add a4, a4, s1
	lw a5, 0(t0)
	sw a5, 0(a4)
	addw a4, a0, a3
	addi a3, a3, 1025
	sh2add t0, a4, s0
	sh2add a4, a4, s1
	lw a5, 0(t0)
	sw a5, 0(a4)
	addw a4, a1, a3
	addi a3, a3, -1
	sh2add t0, a4, s0
	sh2add a4, a4, s1
	lw a5, 0(t0)
	sw a5, 0(a4)
	addw a4, a0, a3
	addi a3, a3, 1025
	sh2add t0, a4, s0
	sh2add a4, a4, s1
	lw a5, 0(t0)
	sw a5, 0(a4)
	addw a4, a1, a3
	addi a3, a3, -1
	sh2add t0, a4, s0
	sh2add a4, a4, s1
	lw a5, 0(t0)
	sw a5, 0(a4)
	addw a4, a0, a3
	addi a3, a3, 1025
	sh2add t0, a4, s0
	sh2add a4, a4, s1
	lw a5, 0(t0)
	sw a5, 0(a4)
	addw a4, a1, a3
	addi a3, a3, -1
	sh2add t0, a4, s0
	sh2add a4, a4, s1
	lw a5, 0(t0)
	sw a5, 0(a4)
	addw a4, a0, a3
	addi a3, a3, 1024
	sh2add t0, a4, s0
	sh2add a4, a4, s1
	lw a5, 0(t0)
	sw a5, 0(a4)
	lui a5, 3
	addw a4, a1, a5
	sh2add t0, a4, s0
	sh2add a4, a4, s1
	lw a5, 0(t0)
	sw a5, 0(a4)
	addw a4, a0, a3
	addi a3, a3, 1025
	sh2add t0, a4, s0
	sh2add a4, a4, s1
	lw a5, 0(t0)
	sw a5, 0(a4)
	addw a4, a1, a3
	addi a3, a3, -1
	sh2add t0, a4, s0
	sh2add a4, a4, s1
	lw a5, 0(t0)
	sw a5, 0(a4)
	addw a4, a0, a3
	addi a3, a3, 1025
	sh2add t0, a4, s0
	sh2add a4, a4, s1
	lw a5, 0(t0)
	sw a5, 0(a4)
	addw a4, a1, a3
	addi a3, a3, -1
	sh2add t0, a4, s0
	sh2add a4, a4, s1
	lw a5, 0(t0)
	sw a5, 0(a4)
	addw a4, a0, a3
	addi a3, a3, 1025
	sh2add t0, a4, s0
	sh2add a4, a4, s1
	lw a5, 0(t0)
	sw a5, 0(a4)
	addw a4, a1, a3
	sh2add t0, a4, s0
	sh2add a4, a4, s1
	lw a5, 0(t0)
	addi t0, a3, -1
	addw a3, a0, t0
	sw a5, 0(a4)
	sh2add a5, a3, s0
	sh2add a3, a3, s1
	lw a4, 0(a5)
	sw a4, 0(a3)
	lui a3, 4
	addw a0, a0, a3
	addw a1, a1, a3
	li a3, 1024
	blt a2, a3, label11
	mv a2, zero
.p2align 2
label15:
	sh2add a0, a2, s0
	sh2add a1, a2, s1
	lw a3, 0(a0)
	addiw a2, a2, 16
	sw a3, 0(a1)
	lui a3, 1023
	add a5, a0, a3
	add a3, a1, a3
	lw a4, 0(a5)
	sw a4, 0(a3)
	li a3, 4190212
	lw a4, 4(a0)
	add a5, a1, a3
	add t0, a0, a3
	addi a3, a3, 4
	sw a4, 4(a1)
	lw a4, 0(t0)
	add t0, a1, a3
	sw a4, 0(a5)
	add a5, a0, a3
	lw a4, 8(a0)
	addi a3, a3, 4
	sw a4, 8(a1)
	lw a4, 0(a5)
	add a5, a1, a3
	sw a4, 0(t0)
	add t0, a0, a3
	lw a4, 12(a0)
	addi a3, a3, 4
	sw a4, 12(a1)
	lw a4, 0(t0)
	add t0, a0, a3
	sw a4, 0(a5)
	add a5, a1, a3
	lw a4, 16(a0)
	addi a3, a3, 4
	sw a4, 16(a1)
	lw a4, 0(t0)
	add t0, a0, a3
	sw a4, 0(a5)
	add a5, a1, a3
	lw a4, 20(a0)
	addi a3, a3, 4
	sw a4, 20(a1)
	lw a4, 0(t0)
	add t0, a1, a3
	sw a4, 0(a5)
	add a5, a0, a3
	lw a4, 24(a0)
	addi a3, a3, 4
	sw a4, 24(a1)
	lw a4, 0(a5)
	add a5, a0, a3
	sw a4, 0(t0)
	add t0, a1, a3
	lw a4, 28(a0)
	addi a3, a3, 4
	sw a4, 28(a1)
	lw a4, 0(a5)
	add a5, a1, a3
	sw a4, 0(t0)
	add t0, a0, a3
	lw a4, 32(a0)
	addi a3, a3, 4
	sw a4, 32(a1)
	lw a4, 0(t0)
	add t0, a1, a3
	sw a4, 0(a5)
	add a5, a0, a3
	lw a4, 36(a0)
	addi a3, a3, 4
	sw a4, 36(a1)
	lw a4, 0(a5)
	add a5, a0, a3
	sw a4, 0(t0)
	add t0, a1, a3
	lw a4, 40(a0)
	addi a3, a3, 4
	sw a4, 40(a1)
	lw a4, 0(a5)
	add a5, a1, a3
	sw a4, 0(t0)
	add t0, a0, a3
	lw a4, 44(a0)
	addi a3, a3, 4
	sw a4, 44(a1)
	lw a4, 0(t0)
	add t0, a1, a3
	sw a4, 0(a5)
	add a5, a0, a3
	lw a4, 48(a0)
	addi a3, a3, 4
	sw a4, 48(a1)
	lw a4, 0(a5)
	add a5, a1, a3
	sw a4, 0(t0)
	add t0, a0, a3
	lw a4, 52(a0)
	addi a3, a3, 4
	sw a4, 52(a1)
	lw a4, 0(t0)
	add t0, a1, a3
	sw a4, 0(a5)
	add a5, a0, a3
	lw a4, 56(a0)
	addi a3, a3, 4
	sw a4, 56(a1)
	lw a4, 0(a5)
	sw a4, 0(t0)
	lw a4, 60(a0)
	sw a4, 60(a1)
	add a1, a1, a3
	add a4, a0, a3
	lw a0, 0(a4)
	sw a0, 0(a1)
	li a0, 1024
	blt a2, a0, label15
	li a0, 59
	jal _sysy_stoptime
	mv a1, s1
	lui a0, 256
	jal putarray
	mv a0, s2
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s6, 24(sp)
	ld s1, 32(sp)
	ld s2, 40(sp)
	ld s5, 48(sp)
	ld s0, 56(sp)
	addi sp, sp, 64
	ret
