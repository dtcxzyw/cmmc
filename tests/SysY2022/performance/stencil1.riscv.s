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
	addi sp, sp, -144
pcrel677:
	auipc a0, %pcrel_hi(image_in)
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, a0, %pcrel_lo(pcrel677)
	sd s5, 16(sp)
	sd s3, 24(sp)
	sd s1, 32(sp)
	sd s6, 40(sp)
	sd s4, 48(sp)
	sd s8, 56(sp)
	sd s2, 64(sp)
	sd s7, 72(sp)
	sd s9, 80(sp)
	sd s11, 88(sp)
	sd s10, 96(sp)
	sd s0, 120(sp)
	mv a0, s0
	jal getarray
	sd a0, 104(sp)
	li a0, 23
	jal _sysy_starttime
pcrel678:
	auipc a1, %pcrel_hi(image_out)
	li t3, 1023
	mv t4, s0
	li a0, 1
	li a3, 1024
	li t6, 1
	li a2, 1021
	addi s3, a1, %pcrel_lo(pcrel678)
	slli a7, a0, 11
	li a1, 3
	sd s3, 112(sp)
	li a0, 255
	slli a5, a1, 10
	sd a7, 128(sp)
	addi t0, a5, -1
	addi t5, t0, 1024
	sd t5, 136(sp)
	j label2
.p2align 2
label11:
	addw t2, a3, s2
	sh2add a1, s2, t4
	ld s0, 120(sp)
	sh2add t1, t2, s0
	lw t5, 0(t1)
	lw s4, -4(a1)
	slli s3, t5, 3
	lw t5, 0(a1)
	subw s6, s3, s4
	lw s4, 4(a1)
	subw s7, s6, t5
	lw s8, -4(t1)
	subw s5, s7, s4
	lw s7, 4(t1)
	subw s6, s5, s8
	sh2add t1, s2, a4
	subw s3, s6, s7
	lw s8, -4(t1)
	lw a4, 0(t1)
	subw s5, s3, s8
	lw s2, 4(t1)
	subw s6, s5, a4
	ld s3, 112(sp)
	subw s8, s6, s2
	sh2add s6, t2, s3
	min s7, s8, a0
	max s5, s7, zero
	addiw s7, a3, 5
	addw t2, s1, s7
	sw s5, 0(s6)
	sh2add a3, t2, s0
	lw s5, 0(a3)
	lw s1, 8(a1)
	slli s6, s5, 3
	subw s7, s6, t5
	subw s0, s7, s4
	lw s4, -4(a3)
	subw t5, s0, s1
	lw s0, 4(a3)
	subw a1, t5, s4
	subw s1, a1, s0
	lw a1, 8(t1)
	subw t5, s1, a4
	subw a3, t5, s2
	subw t5, a3, a1
	sh2add a3, t2, s3
	min a4, t5, a0
	max a1, a4, zero
	sw a1, 0(a3)
	bge t6, t3, label216
	lui a4, 1
	mv a3, a6
	add t4, t4, a4
.p2align 2
label2:
	ld s0, 120(sp)
	addiw a6, a3, 1024
	addiw t6, t6, 1
	addiw t1, a3, 1
	addiw t2, a3, 2
	addiw t5, a3, 3
	addi a1, t4, 4
	li s1, 1
	sh2add a4, a7, s0
	addiw a7, a7, 1024
.p2align 2
label7:
	addw s6, a3, s1
	ld s0, 120(sp)
	sh2add s3, s6, s0
	lw s5, 0(s3)
	lw s8, -4(a1)
	slli s4, s5, 3
	lw s7, 0(a1)
	subw s2, s4, s8
	lw s4, 4(a1)
	subw s5, s2, s7
	lw s2, -4(s3)
	subw s8, s5, s4
	lw s11, 4(s3)
	subw s9, s8, s2
	sh2add s2, s1, a4
	subw s5, s9, s11
	lw s10, -4(s2)
	lw s8, 0(s2)
	subw s9, s5, s10
	lw s5, 4(s2)
	subw s3, s9, s8
	subw s10, s3, s5
	ld s3, 112(sp)
	min s9, s10, a0
	sh2add s10, s6, s3
	max s11, s9, zero
	addw s9, t1, s1
	sw s11, 0(s10)
	sh2add s10, s9, s0
	lw s11, 0(s10)
	slli s6, s11, 3
	subw s6, s6, s7
	subw s11, s6, s4
	lw s6, 8(a1)
	subw s7, s11, s6
	lw s11, -4(s10)
	subw s11, s7, s11
	lw s7, 4(s10)
	subw s10, s11, s7
	subw s7, s10, s8
	subw s10, s7, s5
	lw s7, 8(s2)
	subw s11, s10, s7
	min s10, s11, a0
	sh2add s11, s9, s3
	max s8, s10, zero
	addw s10, t2, s1
	sh2add s9, s10, s0
	sw s8, 0(s11)
	lw s8, 0(s9)
	slli s8, s8, 3
	subw s11, s8, s4
	lw s8, 12(a1)
	subw s4, s11, s6
	subw s11, s4, s8
	lw s4, -4(s9)
	subw s4, s11, s4
	lw s11, 4(s9)
	subw s9, s4, s11
	subw s4, s9, s5
	subw s9, s4, s7
	lw s4, 12(s2)
	subw s11, s9, s4
	sh2add s9, s10, s3
	min s5, s11, a0
	max s11, s5, zero
	addw s5, t5, s1
	sw s11, 0(s9)
	sh2add s9, s5, s0
	lw s0, 0(s9)
	slli s11, s0, 3
	subw s10, s11, s6
	lw s11, 16(a1)
	subw s0, s10, s8
	lw s10, -4(s9)
	subw s6, s0, s11
	lw s0, 4(s9)
	subw s8, s6, s10
	lw s6, 16(s2)
	subw s11, s8, s0
	addiw s2, s1, 4
	subw s10, s11, s7
	subw s0, s10, s4
	subw s7, s0, s6
	sh2add s0, s5, s3
	min s8, s7, a0
	max s4, s8, zero
	sw s4, 0(s0)
	bge s2, a2, label11
	addi a1, a1, 16
	mv s1, s2
	j label7
label216:
	ld s0, 120(sp)
	li a1, 1024
	mv a2, zero
	mv a3, zero
	mv a0, s0
.p2align 2
label14:
	lw t1, 0(a0)
	addiw a4, a1, -1
	addiw a3, a3, 16
	ld s3, 112(sp)
	sh2add t3, a4, s3
	sh2add t2, a2, s3
	sw t1, 0(t2)
	ld s0, 120(sp)
	sh2add t1, a4, s0
	lw t2, 0(t1)
	addiw t1, a2, 1024
	sh2add a4, t1, s0
	sw t2, 0(t3)
	sh2add t3, t1, s3
	lw t2, 0(a4)
	addiw a4, a1, 1023
	sh2add t4, a4, s0
	sw t2, 0(t3)
	sh2add t2, a4, s3
	lw t1, 0(t4)
	sw t1, 0(t2)
	ld t5, 128(sp)
	addw a4, a2, t5
	sh2add t3, a4, s3
	sh2add t1, a4, s0
	lw t2, 0(t1)
	addiw t1, a1, 2047
	sh2add a4, t1, s0
	sw t2, 0(t3)
	sh2add t3, t1, s3
	lw t2, 0(a4)
	addw a4, a2, a5
	sh2add t1, a4, s0
	sw t2, 0(t3)
	sh2add t3, a4, s3
	lw t2, 0(t1)
	addw t1, a1, t0
	sh2add a4, t1, s0
	sw t2, 0(t3)
	sh2add t3, t1, s3
	lw t2, 0(a4)
	lui a4, 1
	addw t1, a2, a4
	sw t2, 0(t3)
	sh2add t4, t1, s0
	sh2add t3, t1, s3
	lw t2, 0(t4)
	sw t2, 0(t3)
	ld t5, 136(sp)
	addw a4, a1, t5
	sh2add t2, a4, s3
	sh2add t3, a4, s0
	lw t1, 0(t3)
	li t3, 5
	slli a4, t3, 10
	sw t1, 0(t2)
	addw t2, a2, a4
	sh2add t5, t2, s3
	sh2add t1, t2, s0
	lw t4, 0(t1)
	addi t1, a4, -1
	addw t3, a1, t1
	sw t4, 0(t5)
	sh2add t2, t3, s0
	sh2add t4, t3, s3
	lw a4, 0(t2)
	addi t2, t1, 1025
	addw t3, a2, t2
	sw a4, 0(t4)
	sh2add t4, t3, s3
	sh2add a4, t3, s0
	lw t1, 0(a4)
	addi a4, t2, -1
	addw t3, a1, a4
	sw t1, 0(t4)
	sh2add t5, t3, s3
	sh2add t1, t3, s0
	lw t4, 0(t1)
	addi t1, a4, 1025
	addi a4, t1, -1
	addw t2, a2, t1
	sw t4, 0(t5)
	sh2add t4, t2, s3
	sh2add t5, t2, s0
	addw t2, a1, a4
	lw t3, 0(t5)
	sw t3, 0(t4)
	sh2add t3, t2, s3
	sh2add t4, t2, s0
	lw t1, 0(t4)
	lui t4, 2
	addw t2, a2, t4
	sw t1, 0(t3)
	sh2add t4, t2, s3
	sh2add t1, t2, s0
	lw t3, 0(t1)
	addi t1, a4, 1024
	addi a4, t1, 1025
	addw t2, a1, t1
	sw t3, 0(t4)
	addi t1, a4, -1
	sh2add t5, t2, s0
	sh2add t4, t2, s3
	lw t3, 0(t5)
	addw t2, a2, a4
	addi a4, t1, 1025
	sh2add t5, t2, s3
	sw t3, 0(t4)
	sh2add t4, t2, s0
	addw t2, a1, t1
	lw t3, 0(t4)
	addi t1, a4, -1
	sh2add t4, t2, s3
	sw t3, 0(t5)
	sh2add t5, t2, s0
	addw t2, a2, a4
	lw t3, 0(t5)
	sh2add t5, t2, s3
	sw t3, 0(t4)
	sh2add t3, t2, s0
	lw t4, 0(t3)
	addw t3, a1, t1
	sh2add t2, t3, s0
	sw t4, 0(t5)
	sh2add t4, t3, s3
	lw a4, 0(t2)
	addi t2, t1, 1025
	addw t3, a2, t2
	sw a4, 0(t4)
	sh2add t5, t3, s3
	sh2add a4, t3, s0
	lw t4, 0(a4)
	addi a4, t2, -1
	addw t1, a1, a4
	sw t4, 0(t5)
	sh2add t3, t1, s3
	lui t5, 3
	sh2add t4, t1, s0
	addw t1, a2, t5
	lw t2, 0(t4)
	sh2add t5, t1, s3
	sw t2, 0(t3)
	sh2add t2, t1, s0
	lw t4, 0(t2)
	addi t2, a4, 1024
	addw t3, a1, t2
	sw t4, 0(t5)
	sh2add t1, t3, s0
	sh2add t4, t3, s3
	lw a4, 0(t1)
	addi t1, t2, 1025
	addw t3, a2, t1
	sw a4, 0(t4)
	sh2add t4, t3, s3
	sh2add a4, t3, s0
	lw t2, 0(a4)
	addi a4, t1, -1
	addw t3, a1, a4
	sw t2, 0(t4)
	sh2add t4, t3, s3
	sh2add t2, t3, s0
	lw t1, 0(t2)
	addi t2, a4, 1025
	addw t3, a2, t2
	sw t1, 0(t4)
	sh2add t4, t3, s3
	sh2add t1, t3, s0
	lw a4, 0(t1)
	addi t1, t2, -1
	addw t3, a1, t1
	sw a4, 0(t4)
	sh2add t5, t3, s3
	sh2add a4, t3, s0
	lw t4, 0(a4)
	addi a4, t1, 1025
	addw t2, a2, a4
	sw t4, 0(t5)
	sh2add t4, t2, s3
	sh2add t5, t2, s0
	lw t3, 0(t5)
	addi t5, a4, -1
	lui a4, 4
	addw t1, a1, t5
	sw t3, 0(t4)
	addw a2, a2, a4
	addw a1, a1, a4
	sh2add t3, t1, s3
	sh2add t4, t1, s0
	li t1, 1024
	lw t2, 0(t4)
	sw t2, 0(t3)
	bge a3, t1, label19
	lui a4, 16
	add a0, a0, a4
	j label14
label19:
	ld s0, 120(sp)
	mv a1, zero
.p2align 2
label20:
	lw a3, 0(s0)
	lui a2, 1023
	lui t0, 1023
	add a4, s0, a2
	ld s3, 112(sp)
	sh2add a0, a1, s3
	addiw a1, a1, 16
	add a5, a0, a2
	addiw a2, t0, 4
	sw a3, 0(a0)
	lw a3, 0(a4)
	sw a3, 0(a5)
	add a5, s0, a2
	lw a4, 4(s0)
	sw a4, 4(a0)
	add a4, a0, a2
	lw a3, 0(a5)
	sw a3, 0(a4)
	addi a3, a2, 4
	lw a5, 8(s0)
	add a2, a0, a3
	add t0, s0, a3
	sw a5, 8(a0)
	lw a4, 0(t0)
	sw a4, 0(a2)
	addi a2, a3, 4
	lw t0, 12(s0)
	add a3, a0, a2
	add a5, s0, a2
	sw t0, 12(a0)
	lw a4, 0(a5)
	sw a4, 0(a3)
	addi a3, a2, 4
	lw t0, 16(s0)
	add a2, a0, a3
	add a5, s0, a3
	sw t0, 16(a0)
	lw a4, 0(a5)
	sw a4, 0(a2)
	addi a2, a3, 4
	lw a5, 20(s0)
	add t0, s0, a2
	sw a5, 20(a0)
	add a5, a0, a2
	lw a4, 0(t0)
	sw a4, 0(a5)
	addi a4, a2, 4
	lw a3, 24(s0)
	add a5, a0, a4
	add t0, s0, a4
	sw a3, 24(a0)
	lw a3, 0(t0)
	sw a3, 0(a5)
	addi a3, a4, 4
	lw a2, 28(s0)
	add a4, a0, a3
	add a5, s0, a3
	sw a2, 28(a0)
	lw a2, 0(a5)
	sw a2, 0(a4)
	addi a2, a3, 4
	lw t0, 32(s0)
	add a3, a0, a2
	add a5, s0, a2
	sw t0, 32(a0)
	lw a4, 0(a5)
	sw a4, 0(a3)
	addi a3, a2, 4
	lw a5, 36(s0)
	add a2, a0, a3
	add t0, s0, a3
	sw a5, 36(a0)
	lw a4, 0(t0)
	sw a4, 0(a2)
	addi a2, a3, 4
	lw a5, 40(s0)
	add a3, a0, a2
	add t0, s0, a2
	sw a5, 40(a0)
	lw a4, 0(t0)
	sw a4, 0(a3)
	addi a3, a2, 4
	lw t0, 44(s0)
	add a2, a0, a3
	add a5, s0, a3
	sw t0, 44(a0)
	lw a4, 0(a5)
	sw a4, 0(a2)
	addi a2, a3, 4
	lw t0, 48(s0)
	add a3, a0, a2
	add a5, s0, a2
	sw t0, 48(a0)
	lw a4, 0(a5)
	sw a4, 0(a3)
	addi a3, a2, 4
	lw a5, 52(s0)
	add a2, a0, a3
	add t0, s0, a3
	sw a5, 52(a0)
	lw a4, 0(t0)
	sw a4, 0(a2)
	addi a2, a3, 4
	lw t0, 56(s0)
	add a3, a0, a2
	add a5, s0, a2
	sw t0, 56(a0)
	lw a4, 0(a5)
	sw a4, 0(a3)
	addi a3, a2, 4
	lw t0, 60(s0)
	add a2, a0, a3
	add a5, s0, a3
	sw t0, 60(a0)
	li a0, 1024
	lw a4, 0(a5)
	sw a4, 0(a2)
	bge a1, a0, label24
	addi s0, s0, 64
	j label20
label24:
	li a0, 59
	jal _sysy_stoptime
	lui a0, 256
	ld s3, 112(sp)
	mv a1, s3
	jal putarray
	ld a0, 104(sp)
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s3, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s4, 48(sp)
	ld s8, 56(sp)
	ld s2, 64(sp)
	ld s7, 72(sp)
	ld s9, 80(sp)
	ld s11, 88(sp)
	ld s10, 96(sp)
	addi sp, sp, 144
	ret
