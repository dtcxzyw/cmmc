.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
array:
	.zero	8000
.text
.globl main
main:
	addi sp, sp, -8
pcrel260:
	auipc a0, %pcrel_hi(array)
	mv a2, zero
	addi a1, a0, %pcrel_lo(pcrel260)
	sd ra, 0(sp)
	li a0, 20
	bge zero, a0, label8
label12:
	li a0, 400
	mul a4, a2, a0
	mv a0, zero
	add a3, a1, a4
	j label5
label8:
	li a0, 7692
	addi a2, a0, -492
	add a4, a1, a0
	addi a0, a0, -20
	lw a3, 0(a4)
	add a4, a1, a2
	addi a2, a2, -400
	sh2add a5, a3, a4
	lw a3, 0(a5)
	add a5, a1, a2
	addi a2, a2, -400
	sh2add a4, a3, a5
	add a5, a1, a2
	addi a2, a2, -400
	lw a3, 0(a4)
	sh2add a4, a3, a5
	add a5, a1, a2
	addi a2, a2, -400
	lw a3, 0(a4)
	sh2add a4, a3, a5
	add a5, a1, a2
	addi a2, a2, -400
	lw a3, 0(a4)
	sh2add a4, a3, a5
	lw a3, 0(a4)
	add a4, a1, a2
	addi a2, a2, -400
	sh2add a5, a3, a4
	lw a3, 0(a5)
	add a5, a1, a2
	addi a2, a2, -400
	sh2add a4, a3, a5
	add a5, a1, a2
	addi a2, a2, -400
	lw a3, 0(a4)
	sh2add a4, a3, a5
	add a5, a1, a2
	addi a2, a2, -400
	lw a3, 0(a4)
	sh2add a4, a3, a5
	lw a3, 0(a4)
	add a4, a1, a2
	addi a2, a2, -400
	sh2add a5, a3, a4
	lw a3, 0(a5)
	add a5, a1, a2
	addi a2, a2, -400
	sh2add a4, a3, a5
	lw a3, 0(a4)
	add a4, a1, a2
	addi a2, a2, -400
	sh2add a5, a3, a4
	add a4, a1, a2
	lw a3, 0(a5)
	addi a5, a1, 1600
	sh2add a3, a3, a4
	addi a4, a1, 2000
	lw a2, 0(a3)
	sh2add a3, a2, a4
	lw a2, 0(a3)
	addi a3, a1, 1200
	sh2add a4, a2, a5
	lw a2, 0(a4)
	sh2add a4, a2, a3
	addi a3, a1, 800
	lw a2, 0(a4)
	sh2add a4, a2, a3
	addi a3, a1, 400
	lw a2, 0(a4)
	sh2add a4, a2, a3
	lw a5, 0(a4)
	add a4, a1, a0
	sh2add a3, a5, a1
	li a0, 400
	lw a2, 0(a3)
	lw a3, 0(a4)
	mul a4, a3, a0
	add a5, a1, a4
	lw a3, 68(a5)
	mul a4, a3, a0
	add t0, a1, a4
	lw a5, 64(t0)
	mul t1, a5, a0
	add a3, a1, t1
	lw a4, 60(a3)
	mul t0, a4, a0
	add a3, a1, t0
	lw a5, 56(a3)
	mul t0, a5, a0
	add a4, a1, t0
	lw a5, 52(a4)
	mul a3, a5, a0
	add t0, a1, a3
	lw a4, 48(t0)
	mul a5, a4, a0
	add a3, a1, a5
	lw a4, 44(a3)
	mul a5, a4, a0
	add a3, a1, a5
	lw a4, 40(a3)
	mul a5, a4, a0
	add a3, a1, a5
	lw a4, 36(a3)
	mul t0, a4, a0
	add a5, a1, t0
	lw a3, 32(a5)
	mul a4, a3, a0
	add a5, a1, a4
	lw a3, 28(a5)
	mul a4, a3, a0
	add a5, a1, a4
	lw a3, 24(a5)
	mul a4, a3, a0
	add a5, a1, a4
	lw a3, 20(a5)
	mul a4, a3, a0
	add a5, a1, a4
	lw a3, 16(a5)
	mul a4, a3, a0
	add t1, a1, a4
	lw t0, 12(t1)
	mul a5, t0, a0
	add a3, a1, a5
	lw a4, 8(a3)
	mul a5, a4, a0
	add a3, a1, a5
	lw a4, 4(a3)
	mul t0, a4, a0
	add a5, a1, t0
	lw a3, 0(a5)
	mul a0, a3, a0
	add a1, a1, a0
	lw a3, 224(a1)
	addw a0, a2, a3
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	addi sp, sp, 8
	ret
label5:
	sh2add a4, a0, a3
	addiw t0, a0, 1
	addiw a5, a0, 2
	addiw t1, a0, 8
	sw a0, 0(a4)
	sw t0, 4(a4)
	addiw t0, a0, 3
	sw a5, 8(a4)
	addiw a5, a0, 4
	sw t0, 12(a4)
	addiw t0, a0, 5
	sw a5, 16(a4)
	addiw a5, a0, 6
	sw t0, 20(a4)
	addiw t0, a0, 7
	sw a5, 24(a4)
	addiw a5, a0, 9
	sw t0, 28(a4)
	addiw t0, a0, 11
	sw t1, 32(a4)
	addiw t1, a0, 10
	sw a5, 36(a4)
	addiw a5, a0, 12
	sw t1, 40(a4)
	sw t0, 44(a4)
	addiw t0, a0, 13
	sw a5, 48(a4)
	addiw a5, a0, 14
	sw t0, 52(a4)
	addiw t0, a0, 15
	sw a5, 56(a4)
	li a5, 96
	sw t0, 60(a4)
	addiw a4, a0, 16
	bge a4, a5, label7
	mv a0, a4
	j label5
label7:
	sh2add a3, a4, a3
	addiw a5, a0, 17
	addiw a2, a2, 1
	sw a4, 0(a3)
	addiw a4, a0, 18
	sw a5, 4(a3)
	addiw a0, a0, 19
	sw a4, 8(a3)
	sw a0, 12(a3)
	li a0, 20
	bge a2, a0, label8
	j label12