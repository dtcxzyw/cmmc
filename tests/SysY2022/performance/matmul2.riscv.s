.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
a:
	.zero	4000000
.align 4
b:
	.zero	4000000
.align 4
c:
	.zero	4000000
.text
.globl main
main:
	addi sp, sp, -40
	sd s2, 32(sp)
	sd s1, 24(sp)
	sd s0, 16(sp)
	sd s3, 8(sp)
	sd ra, 0(sp)
pcrel709:
	auipc a0, %pcrel_hi(a)
	addi s2, a0, %pcrel_lo(pcrel709)
pcrel710:
	auipc a0, %pcrel_hi(b)
	addi s1, a0, %pcrel_lo(pcrel710)
pcrel711:
	auipc a0, %pcrel_hi(c)
	addi s0, a0, %pcrel_lo(pcrel711)
	mv s3, zero
	li a0, 1000
	bge zero, a0, label4
	li a0, 4000
	mul a0, zero, a0
	add a0, s2, a0
	jal getarray
	li a1, 1000
	beq a0, a1, label45
	j label46
label4:
	li a0, 23
	jal _sysy_starttime
	mv a0, zero
	li a1, 1000
	bge zero, a1, label60
label59:
	li a1, 4000
	mul a1, a0, a1
	add a1, s1, a1
	mv a2, zero
	j label41
label60:
	mv a2, zero
	li a0, 4000
	mul a1, zero, a0
	add a1, s2, a1
	mul a0, zero, a0
	add a3, s0, a0
	li a0, 1000
	bge zero, a0, label68
	mv a0, zero
	li a4, 1000
	bge zero, a4, label15
	j label646
label68:
	mv a1, zero
	li a0, 4000
	mul a0, zero, a0
	add a2, s0, a0
	li a0, 1000
	bge zero, a0, label121
	li a0, 2147483647
	mv a3, zero
	li a4, 1000
	bge zero, a4, label371
	sh2add a4, zero, a2
	lw a4, 0(a4)
	min a0, a4, a0
	addiw a3, zero, 1
	li a4, 1000
	bge a3, a4, label371
	sh2add a4, a3, a2
	lw a4, 0(a4)
	min a0, a4, a0
	addiw a3, a3, 1
	li a4, 1000
	bge a3, a4, label371
	sh2add a4, a3, a2
	lw a4, 0(a4)
	min a0, a4, a0
	addiw a3, a3, 1
	li a4, 1000
	bge a3, a4, label371
	sh2add a4, a3, a2
	lw a4, 0(a4)
	min a0, a4, a0
	addiw a3, a3, 1
	li a4, 1000
	bge a3, a4, label371
	sh2add a4, a3, a2
	lw a4, 0(a4)
	min a0, a4, a0
	addiw a3, a3, 1
	li a4, 1000
	bge a3, a4, label371
	sh2add a4, a3, a2
	lw a4, 0(a4)
	min a0, a4, a0
	addiw a3, a3, 1
	li a4, 1000
	bge a3, a4, label371
	sh2add a4, a3, a2
	lw a4, 0(a4)
	min a0, a4, a0
	addiw a3, a3, 1
	li a4, 1000
	bge a3, a4, label371
	j label687
label121:
	mv a0, zero
	li a1, 1000
	bge zero, a1, label125
	j label124
label125:
	mv a0, zero
	mv s1, zero
	li a1, 1000
	bge zero, a1, label27
	j label651
label27:
	li a0, 92
	jal _sysy_stoptime
	mv a0, s1
	jal putint
	mv a0, zero
	j label46
label687:
	sh2add a4, a3, a2
	lw a4, 0(a4)
	min a0, a4, a0
	addiw a3, a3, 1
	li a4, 1000
	bge a3, a4, label371
	j label692
label46:
	ld ra, 0(sp)
	ld s3, 8(sp)
	ld s0, 16(sp)
	ld s1, 24(sp)
	ld s2, 32(sp)
	addi sp, sp, 40
	ret
label646:
	mv a4, zero
	mv a5, zero
	j label11
label15:
	addiw a2, a2, 1
	li a0, 4000
	mul a1, a2, a0
	add a1, s2, a1
	mul a0, a2, a0
	add a3, s0, a0
	li a0, 1000
	bge a2, a0, label68
	mv a0, zero
	li a4, 1000
	bge zero, a4, label15
	j label646
label11:
	li t3, 4000
	mul t1, a5, t3
	add t2, s1, t1
	sh2add t5, a0, t2
	sh2add t1, a5, a1
	lw t4, 0(t1)
	lw t5, 0(t5)
	add t6, t2, t3
	sh2add a6, a0, t6
	lw t6, 4(t1)
	lw a6, 0(a6)
	mulw t6, t6, a6
	mulw t4, t4, t5
	addw t4, t6, t4
	slli t3, t3, 1
	add t3, t2, t3
	sh2add t3, a0, t3
	lw t5, 8(t1)
	lw t3, 0(t3)
	mulw t3, t5, t3
	addw t3, t4, t3
	li t4, 12000
	add t2, t2, t4
	sh2add t2, a0, t2
	lw t1, 12(t1)
	lw t2, 0(t2)
	mulw t1, t1, t2
	addw t1, t3, t1
	addw a4, a4, t1
	addiw a5, a5, 4
	li t1, 1000
	bge a5, t1, label14
	j label11
label14:
	sh2add a5, a0, a3
	sw a4, 0(a5)
	addiw a0, a0, 1
	li a4, 1000
	bge a0, a4, label15
	j label646
label371:
	mv a3, zero
label36:
	sh2add a4, a3, a2
	sw a0, 0(a4)
	sw a0, 4(a4)
	sw a0, 8(a4)
	sw a0, 12(a4)
	sw a0, 16(a4)
	sw a0, 20(a4)
	sw a0, 24(a4)
	sw a0, 28(a4)
	sw a0, 32(a4)
	sw a0, 36(a4)
	sw a0, 40(a4)
	sw a0, 44(a4)
	sw a0, 48(a4)
	sw a0, 52(a4)
	sw a0, 56(a4)
	sw a0, 60(a4)
	addiw a3, a3, 16
	li a4, 992
	bge a3, a4, label38
	j label36
label38:
	sh2add a2, a3, a2
	sw a0, 0(a2)
	sw a0, 4(a2)
	sw a0, 8(a2)
	sw a0, 12(a2)
	sw a0, 16(a2)
	sw a0, 20(a2)
	sw a0, 24(a2)
	sw a0, 28(a2)
	addiw a1, a1, 1
	li a0, 4000
	mul a0, a1, a0
	add a2, s0, a0
	li a0, 1000
	bge a1, a0, label121
	li a0, 2147483647
	mv a3, zero
	li a4, 1000
	bge zero, a4, label371
	sh2add a4, zero, a2
	lw a4, 0(a4)
	min a0, a4, a0
	addiw a3, zero, 1
	li a4, 1000
	bge a3, a4, label371
	sh2add a4, a3, a2
	lw a4, 0(a4)
	min a0, a4, a0
	addiw a3, a3, 1
	li a4, 1000
	bge a3, a4, label371
	sh2add a4, a3, a2
	lw a4, 0(a4)
	min a0, a4, a0
	addiw a3, a3, 1
	li a4, 1000
	bge a3, a4, label371
	sh2add a4, a3, a2
	lw a4, 0(a4)
	min a0, a4, a0
	addiw a3, a3, 1
	li a4, 1000
	bge a3, a4, label371
	sh2add a4, a3, a2
	lw a4, 0(a4)
	min a0, a4, a0
	addiw a3, a3, 1
	li a4, 1000
	bge a3, a4, label371
	sh2add a4, a3, a2
	lw a4, 0(a4)
	min a0, a4, a0
	addiw a3, a3, 1
	li a4, 1000
	bge a3, a4, label371
	sh2add a4, a3, a2
	lw a4, 0(a4)
	min a0, a4, a0
	addiw a3, a3, 1
	li a4, 1000
	bge a3, a4, label371
	sh2add a4, a3, a2
	lw a4, 0(a4)
	min a0, a4, a0
	addiw a3, a3, 1
	li a4, 1000
	bge a3, a4, label371
	j label692
label41:
	li a5, 4000
	mul a3, a2, a5
	add a3, s2, a3
	sh2add a4, a0, a3
	lw t1, 0(a4)
	sh2add a4, a2, a1
	sw t1, 0(a4)
	add t1, a3, a5
	sh2add t1, a0, t1
	lw t1, 0(t1)
	sw t1, 4(a4)
	slli a5, a5, 1
	add t1, a3, a5
	sh2add t1, a0, t1
	lw t1, 0(t1)
	sw t1, 8(a4)
	li t2, 12000
	add t1, a3, t2
	sh2add t1, a0, t1
	lw t1, 0(t1)
	sw t1, 12(a4)
	slli t1, a5, 1
	add a5, a3, t1
	sh2add a5, a0, a5
	lw a5, 0(a5)
	sw a5, 16(a4)
	li a5, 20000
	add t3, a3, a5
	sh2add t3, a0, t3
	lw t3, 0(t3)
	sw t3, 20(a4)
	slli t2, t2, 1
	add t2, a3, t2
	sh2add t2, a0, t2
	lw t2, 0(t2)
	sw t2, 24(a4)
	li t2, 28000
	add t2, a3, t2
	sh2add t2, a0, t2
	lw t2, 0(t2)
	sw t2, 28(a4)
	slli t1, t1, 1
	add t1, a3, t1
	sh2add t1, a0, t1
	lw t1, 0(t1)
	sw t1, 32(a4)
	li t1, 36000
	add t1, a3, t1
	sh2add t1, a0, t1
	lw t1, 0(t1)
	sw t1, 36(a4)
	slli a5, a5, 1
	add a5, a3, a5
	sh2add a5, a0, a5
	lw a5, 0(a5)
	sw a5, 40(a4)
	li a5, 44000
	add a5, a3, a5
	sh2add a5, a0, a5
	lw a5, 0(a5)
	sw a5, 44(a4)
	li a5, 48000
	add a5, a3, a5
	sh2add a5, a0, a5
	lw a5, 0(a5)
	sw a5, 48(a4)
	li a5, 52000
	add a5, a3, a5
	sh2add a5, a0, a5
	lw a5, 0(a5)
	sw a5, 52(a4)
	li a5, 56000
	add a5, a3, a5
	sh2add a5, a0, a5
	lw a5, 0(a5)
	sw a5, 56(a4)
	li a5, 60000
	add a3, a3, a5
	sh2add a3, a0, a3
	lw a3, 0(a3)
	sw a3, 60(a4)
	addiw a2, a2, 16
	li a3, 992
	bge a2, a3, label43
	j label41
label692:
	sh2add a4, a3, a2
	lw a4, 0(a4)
	min a0, a4, a0
	addiw a3, a3, 1
	li a4, 1000
	bge a3, a4, label371
label697:
	sh2add a4, a3, a2
	lw a4, 0(a4)
	min a0, a4, a0
	addiw a3, a3, 1
	li a4, 1000
	bge a3, a4, label371
	j label697
label651:
	li a1, 4000
	mul a1, a0, a1
	add a1, s0, a1
	mv a4, s1
	mv a2, zero
label29:
	sh2add a3, a2, a1
	lw a5, 0(a3)
	addw a4, a4, a5
	lw a5, 4(a3)
	addw a4, a4, a5
	lw a5, 8(a3)
	addw a4, a4, a5
	lw a5, 12(a3)
	addw a4, a4, a5
	lw a5, 16(a3)
	addw a4, a4, a5
	lw a5, 20(a3)
	addw a4, a4, a5
	lw a5, 24(a3)
	addw a4, a4, a5
	lw a5, 28(a3)
	addw a4, a4, a5
	lw a5, 32(a3)
	addw a4, a4, a5
	lw a5, 36(a3)
	addw a4, a4, a5
	lw a5, 40(a3)
	addw a4, a4, a5
	lw a5, 44(a3)
	addw a4, a4, a5
	lw a5, 48(a3)
	addw a4, a4, a5
	lw a5, 52(a3)
	addw a4, a4, a5
	lw a5, 56(a3)
	addw a4, a4, a5
	lw a3, 60(a3)
	addw a4, a4, a3
	addiw a2, a2, 16
	li a3, 992
	bge a2, a3, label32
	j label29
label32:
	sh2add a1, a2, a1
	lw a2, 0(a1)
	addw a2, a4, a2
	lw a3, 4(a1)
	addw a2, a2, a3
	lw a3, 8(a1)
	addw a2, a2, a3
	lw a3, 12(a1)
	addw a2, a2, a3
	lw a3, 16(a1)
	addw a2, a2, a3
	lw a3, 20(a1)
	addw a2, a2, a3
	lw a3, 24(a1)
	addw a2, a2, a3
	lw a1, 28(a1)
	addw s1, a2, a1
	addiw a0, a0, 1
	li a1, 1000
	bge a0, a1, label27
	j label651
label124:
	li a1, 4000
	mul a1, a0, a1
	add a1, s0, a1
	mv a2, zero
	j label21
label23:
	li a4, 4000
	mul a3, a2, a4
	add a3, s0, a3
	sh2add a5, a0, a3
	lw a5, 0(a5)
	subw a5, zero, a5
	sh2add a1, a2, a1
	sw a5, 0(a1)
	add a2, a3, a4
	sh2add a2, a0, a2
	lw a2, 0(a2)
	subw a2, zero, a2
	sw a2, 4(a1)
	slli a4, a4, 1
	add a2, a3, a4
	sh2add a2, a0, a2
	lw a2, 0(a2)
	subw a2, zero, a2
	sw a2, 8(a1)
	li a2, 12000
	add a5, a3, a2
	sh2add a5, a0, a5
	lw a5, 0(a5)
	subw a5, zero, a5
	sw a5, 12(a1)
	slli a4, a4, 1
	add a4, a3, a4
	sh2add a4, a0, a4
	lw a4, 0(a4)
	subw a4, zero, a4
	sw a4, 16(a1)
	li a4, 20000
	add a4, a3, a4
	sh2add a4, a0, a4
	lw a4, 0(a4)
	subw a4, zero, a4
	sw a4, 20(a1)
	slli a2, a2, 1
	add a2, a3, a2
	sh2add a2, a0, a2
	lw a2, 0(a2)
	subw a2, zero, a2
	sw a2, 24(a1)
	li a2, 28000
	add a2, a3, a2
	sh2add a2, a0, a2
	lw a2, 0(a2)
	subw a2, zero, a2
	sw a2, 28(a1)
	addiw a0, a0, 1
	li a1, 1000
	bge a0, a1, label125
	j label124
label21:
	li a5, 4000
	mul a3, a2, a5
	add a4, s0, a3
	sh2add a3, a0, a4
	lw a3, 0(a3)
	subw t1, zero, a3
	sh2add a3, a2, a1
	sw t1, 0(a3)
	add t1, a4, a5
	sh2add t1, a0, t1
	lw t1, 0(t1)
	subw t1, zero, t1
	sw t1, 4(a3)
	slli a5, a5, 1
	add t1, a4, a5
	sh2add t1, a0, t1
	lw t1, 0(t1)
	subw t1, zero, t1
	sw t1, 8(a3)
	li t2, 12000
	add t1, a4, t2
	sh2add t1, a0, t1
	lw t1, 0(t1)
	subw t1, zero, t1
	sw t1, 12(a3)
	slli t1, a5, 1
	add a5, a4, t1
	sh2add a5, a0, a5
	lw a5, 0(a5)
	subw a5, zero, a5
	sw a5, 16(a3)
	li a5, 20000
	add t3, a4, a5
	sh2add t3, a0, t3
	lw t3, 0(t3)
	subw t3, zero, t3
	sw t3, 20(a3)
	slli t2, t2, 1
	add t2, a4, t2
	sh2add t2, a0, t2
	lw t2, 0(t2)
	subw t2, zero, t2
	sw t2, 24(a3)
	li t2, 28000
	add t2, a4, t2
	sh2add t2, a0, t2
	lw t2, 0(t2)
	subw t2, zero, t2
	sw t2, 28(a3)
	slli t1, t1, 1
	add t1, a4, t1
	sh2add t1, a0, t1
	lw t1, 0(t1)
	subw t1, zero, t1
	sw t1, 32(a3)
	li t1, 36000
	add t1, a4, t1
	sh2add t1, a0, t1
	lw t1, 0(t1)
	subw t1, zero, t1
	sw t1, 36(a3)
	slli a5, a5, 1
	add a5, a4, a5
	sh2add a5, a0, a5
	lw a5, 0(a5)
	subw a5, zero, a5
	sw a5, 40(a3)
	li a5, 44000
	add a5, a4, a5
	sh2add a5, a0, a5
	lw a5, 0(a5)
	subw a5, zero, a5
	sw a5, 44(a3)
	li a5, 48000
	add a5, a4, a5
	sh2add a5, a0, a5
	lw a5, 0(a5)
	subw a5, zero, a5
	sw a5, 48(a3)
	li a5, 52000
	add a5, a4, a5
	sh2add a5, a0, a5
	lw a5, 0(a5)
	subw a5, zero, a5
	sw a5, 52(a3)
	li a5, 56000
	add a5, a4, a5
	sh2add a5, a0, a5
	lw a5, 0(a5)
	subw a5, zero, a5
	sw a5, 56(a3)
	li a5, 60000
	add a4, a4, a5
	sh2add a4, a0, a4
	lw a4, 0(a4)
	subw a4, zero, a4
	sw a4, 60(a3)
	addiw a2, a2, 16
	li a3, 992
	bge a2, a3, label23
	j label21
label43:
	li a4, 4000
	mul a3, a2, a4
	add a3, s2, a3
	sh2add a5, a0, a3
	lw a5, 0(a5)
	sh2add a1, a2, a1
	sw a5, 0(a1)
	add a2, a3, a4
	sh2add a2, a0, a2
	lw a2, 0(a2)
	sw a2, 4(a1)
	slli a4, a4, 1
	add a2, a3, a4
	sh2add a2, a0, a2
	lw a2, 0(a2)
	sw a2, 8(a1)
	li a2, 12000
	add a5, a3, a2
	sh2add a5, a0, a5
	lw a5, 0(a5)
	sw a5, 12(a1)
	slli a4, a4, 1
	add a4, a3, a4
	sh2add a4, a0, a4
	lw a4, 0(a4)
	sw a4, 16(a1)
	li a4, 20000
	add a4, a3, a4
	sh2add a4, a0, a4
	lw a4, 0(a4)
	sw a4, 20(a1)
	slli a2, a2, 1
	add a2, a3, a2
	sh2add a2, a0, a2
	lw a2, 0(a2)
	sw a2, 24(a1)
	li a2, 28000
	add a2, a3, a2
	sh2add a2, a0, a2
	lw a2, 0(a2)
	sw a2, 28(a1)
	addiw a0, a0, 1
	li a1, 1000
	bge a0, a1, label60
	j label59
label45:
	addiw s3, s3, 1
	li a0, 1000
	bge s3, a0, label4
	li a0, 4000
	mul a0, s3, a0
	add a0, s2, a0
	jal getarray
	li a1, 1000
	beq a0, a1, label45
	j label46
