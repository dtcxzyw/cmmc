.data
.align 4
matrix:
	.zero	80000000
.align 4
a:
	.zero	400000
.text
.globl main
main:
	addi sp, sp, -72
	sd s1, 64(sp)
	sd s6, 56(sp)
	sd s2, 48(sp)
	sd s0, 40(sp)
	sd s5, 32(sp)
	sd s3, 24(sp)
	sd s4, 16(sp)
	sd s7, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s1, a0
pcrel556:
	auipc a0, %pcrel_hi(a)
	addi a0, a0, %pcrel_lo(pcrel556)
	mv s2, a0
	jal getarray
	mv s0, a0
	li a0, 28
	jal _sysy_starttime
pcrel557:
	auipc a0, %pcrel_hi(matrix)
	addi a0, a0, %pcrel_lo(pcrel557)
	ble s1, zero, label10
	mv a1, zero
	addiw a2, zero, 16
	bge a2, s1, label5
	j label4
label5:
	addiw a2, a1, 16
	bge a2, s1, label8
	j label7
label10:
	ble s0, zero, label22
	mv a1, zero
	slli a2, zero, 2
	add a2, s2, a2
	lw a4, 0(a2)
	divw a5, s1, a4
	mv a2, zero
	mulw t1, zero, a4
	bge zero, a5, label21
	mv a3, zero
	bge zero, a4, label17
	j label19
label503:
	bge a2, a3, label19
label517:
	addiw a3, a3, 1
	bge a3, a4, label17
	j label531
label17:
	addiw a2, a2, 1
	mulw t1, a2, a4
	bge a2, a5, label21
	mv a3, zero
	bge zero, a4, label17
	bge a2, zero, label19
	addiw a3, zero, 1
	bge a3, a4, label17
	bge a2, a3, label19
	addiw a3, a3, 1
	bge a3, a4, label17
	bge a2, a3, label19
	addiw a3, a3, 1
	bge a3, a4, label17
	bge a2, a3, label19
	addiw a3, a3, 1
	bge a3, a4, label17
	j label503
label19:
	addw t2, a3, t1
	slliw t2, t2, 2
	add t2, a0, t2
	lw t3, 0(t2)
	mulw t4, a5, a3
	addw t4, a2, t4
	slliw t4, t4, 2
	add t4, a0, t4
	sw t3, 0(t4)
	sw t3, 0(t2)
	addiw a3, a3, 1
	bge a3, a4, label17
	bge a2, a3, label19
	addiw a3, a3, 1
	bge a3, a4, label17
	bge a2, a3, label19
	addiw a3, a3, 1
	bge a3, a4, label17
	bge a2, a3, label19
	addiw a3, a3, 1
	bge a3, a4, label17
	bge a2, a3, label19
	addiw a3, a3, 1
	bge a3, a4, label17
	bge a2, a3, label19
	j label517
label531:
	bge a2, a3, label19
	j label517
label21:
	addiw a1, a1, 1
	bge a1, s0, label22
	slli a2, a1, 2
	add a2, s2, a2
	lw a4, 0(a2)
	divw a5, s1, a4
	mv a2, zero
	mulw t1, zero, a4
	bge zero, a5, label21
	mv a3, zero
	bge zero, a4, label17
	j label19
label8:
	slli a2, a1, 2
	add a2, a0, a2
	sw a1, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label10
	slli a2, a1, 2
	add a2, a0, a2
	sw a1, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label10
	slli a2, a1, 2
	add a2, a0, a2
	sw a1, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label10
	slli a2, a1, 2
	add a2, a0, a2
	sw a1, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label10
	slli a2, a1, 2
	add a2, a0, a2
	sw a1, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label10
	slli a2, a1, 2
	add a2, a0, a2
	sw a1, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label10
	slli a2, a1, 2
	add a2, a0, a2
	sw a1, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label10
	slli a2, a1, 2
	add a2, a0, a2
	sw a1, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label10
	slli a2, a1, 2
	add a2, a0, a2
	sw a1, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label10
	slli a2, a1, 2
	add a2, a0, a2
	sw a1, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label10
label527:
	slli a2, a1, 2
	add a2, a0, a2
	sw a1, 0(a2)
	addiw a1, a1, 1
	bge a1, s1, label10
	j label527
label22:
	ble s0, zero, label168
	mv a2, zero
	mv a1, zero
	addiw a3, zero, 16
	bge a3, s0, label31
	j label38
label168:
	mv s0, zero
	j label26
label31:
	addiw a3, a1, 16
	bge a3, s0, label35
	j label34
label35:
	slli a3, a1, 2
	add a3, a0, a3
	lw a3, 0(a3)
	mulw a4, a1, a1
	mulw a3, a3, a4
	addw a2, a3, a2
	addiw a1, a1, 1
	bge a1, s0, label290
	slli a3, a1, 2
	add a3, a0, a3
	lw a3, 0(a3)
	mulw a4, a1, a1
	mulw a3, a3, a4
	addw a2, a3, a2
	addiw a1, a1, 1
	bge a1, s0, label290
	slli a3, a1, 2
	add a3, a0, a3
	lw a3, 0(a3)
	mulw a4, a1, a1
	mulw a3, a3, a4
	addw a2, a3, a2
	addiw a1, a1, 1
	bge a1, s0, label290
	slli a3, a1, 2
	add a3, a0, a3
	lw a3, 0(a3)
	mulw a4, a1, a1
	mulw a3, a3, a4
	addw a2, a3, a2
	addiw a1, a1, 1
	bge a1, s0, label290
	slli a3, a1, 2
	add a3, a0, a3
	lw a3, 0(a3)
	mulw a4, a1, a1
	mulw a3, a3, a4
	addw a2, a3, a2
	addiw a1, a1, 1
	bge a1, s0, label290
	slli a3, a1, 2
	add a3, a0, a3
	lw a3, 0(a3)
	mulw a4, a1, a1
	mulw a3, a3, a4
	addw a2, a3, a2
	addiw a1, a1, 1
	bge a1, s0, label290
	slli a3, a1, 2
	add a3, a0, a3
	lw a3, 0(a3)
	mulw a4, a1, a1
	mulw a3, a3, a4
	addw a2, a3, a2
	addiw a1, a1, 1
	bge a1, s0, label290
	slli a3, a1, 2
	add a3, a0, a3
	lw a3, 0(a3)
	mulw a4, a1, a1
	mulw a3, a3, a4
	addw a2, a3, a2
	addiw a1, a1, 1
	bge a1, s0, label290
	slli a3, a1, 2
	add a3, a0, a3
	lw a3, 0(a3)
	mulw a4, a1, a1
	mulw a3, a3, a4
	addw a2, a3, a2
	addiw a1, a1, 1
	bge a1, s0, label290
	slli a3, a1, 2
	add a3, a0, a3
	lw a3, 0(a3)
	mulw a4, a1, a1
	mulw a3, a3, a4
	addw a2, a3, a2
	addiw a1, a1, 1
	bge a1, s0, label290
label538:
	slli a3, a1, 2
	add a3, a0, a3
	lw a3, 0(a3)
	mulw a4, a1, a1
	mulw a3, a3, a4
	addw a2, a3, a2
	addiw a1, a1, 1
	bge a1, s0, label290
	j label538
label290:
	mv s0, a2
	bge a2, zero, label26
	j label171
label34:
	slli a4, a1, 2
	add a5, a0, a4
	lw a4, 0(a5)
	mulw t1, a1, a1
	mulw a4, t1, a4
	addiw t1, a1, 1
	lw t2, 4(a5)
	mulw t1, t1, t1
	mulw t1, t2, t1
	addiw t3, a1, 2
	lw t2, 8(a5)
	mulw t3, t3, t3
	mulw t2, t2, t3
	addiw t3, a1, 3
	lw t4, 12(a5)
	mulw t3, t3, t3
	mulw t3, t4, t3
	addiw t5, a1, 4
	lw t4, 16(a5)
	mulw t5, t5, t5
	mulw t4, t4, t5
	addiw t5, a1, 5
	lw t6, 20(a5)
	mulw t5, t5, t5
	mulw t5, t6, t5
	addiw a6, a1, 6
	lw t6, 24(a5)
	mulw a6, a6, a6
	mulw t6, t6, a6
	addiw a7, a1, 7
	lw a6, 28(a5)
	mulw a7, a7, a7
	mulw a6, a6, a7
	addiw a7, a1, 8
	lw s1, 32(a5)
	mulw a7, a7, a7
	mulw a7, s1, a7
	addiw s2, a1, 9
	lw s1, 36(a5)
	mulw s2, s2, s2
	mulw s1, s1, s2
	addiw s3, a1, 10
	lw s2, 40(a5)
	mulw s3, s3, s3
	mulw s2, s2, s3
	addiw s4, a1, 11
	lw s3, 44(a5)
	mulw s4, s4, s4
	mulw s3, s3, s4
	addiw s5, a1, 12
	lw s4, 48(a5)
	mulw s5, s5, s5
	mulw s4, s4, s5
	addiw s6, a1, 13
	lw s5, 52(a5)
	mulw s6, s6, s6
	mulw s5, s5, s6
	addiw s7, a1, 14
	lw s6, 56(a5)
	mulw s7, s7, s7
	mulw s6, s6, s7
	addiw a1, a1, 15
	lw a5, 60(a5)
	mulw a1, a1, a1
	mulw a1, a5, a1
	addw a2, a2, a4
	addw a2, a2, t1
	addw a2, a2, t2
	addw a2, a2, t3
	addw a2, a2, t4
	addw a2, a2, t5
	addw a2, a2, t6
	addw a2, a2, a6
	addw a2, a2, a7
	addw a2, a2, s1
	addw a2, a2, s2
	addw a2, a2, s3
	addw a2, a2, s4
	addw a2, a2, s5
	addw a2, a2, s6
	addw a2, a2, a1
	mv a1, a3
	addiw a3, a3, 16
	bge a3, s0, label35
	j label34
label38:
	slli a4, a1, 2
	add a4, a0, a4
	lw a5, 0(a4)
	mulw t1, a1, a1
	mulw a5, t1, a5
	addiw t1, a1, 1
	lw t2, 4(a4)
	mulw t1, t1, t1
	mulw t1, t2, t1
	addiw t3, a1, 2
	lw t2, 8(a4)
	mulw t3, t3, t3
	mulw t2, t2, t3
	addiw t4, a1, 3
	lw t3, 12(a4)
	mulw t4, t4, t4
	mulw t3, t3, t4
	addiw t5, a1, 4
	lw t4, 16(a4)
	mulw t5, t5, t5
	mulw t4, t4, t5
	addiw t5, a1, 5
	lw t6, 20(a4)
	mulw t5, t5, t5
	mulw t5, t6, t5
	addiw a6, a1, 6
	lw t6, 24(a4)
	mulw a6, a6, a6
	mulw t6, t6, a6
	addiw a6, a1, 7
	lw a7, 28(a4)
	mulw a6, a6, a6
	mulw a6, a7, a6
	addiw s1, a1, 8
	lw a7, 32(a4)
	mulw s1, s1, s1
	mulw a7, a7, s1
	addiw s2, a1, 9
	lw s1, 36(a4)
	mulw s2, s2, s2
	mulw s1, s1, s2
	addiw s3, a1, 10
	lw s2, 40(a4)
	mulw s3, s3, s3
	mulw s2, s2, s3
	addiw s3, a1, 11
	lw s4, 44(a4)
	mulw s3, s3, s3
	mulw s3, s4, s3
	addiw s4, a1, 12
	lw s5, 48(a4)
	mulw s4, s4, s4
	mulw s4, s5, s4
	addiw s6, a1, 13
	lw s5, 52(a4)
	mulw s6, s6, s6
	mulw s5, s5, s6
	addiw s7, a1, 14
	lw s6, 56(a4)
	mulw s7, s7, s7
	mulw s6, s6, s7
	addiw a1, a1, 15
	lw a4, 60(a4)
	mulw a1, a1, a1
	mulw a1, a4, a1
	addw a2, a2, a5
	addw a2, a2, t1
	addw a2, a2, t2
	addw a2, a2, t3
	addw a2, a2, t4
	addw a2, a2, t5
	addw a2, a2, t6
	addw a2, a2, a6
	addw a2, a2, a7
	addw a2, a2, s1
	addw a2, a2, s2
	addw a2, a2, s3
	addw a2, a2, s4
	addw a2, a2, s5
	addw a2, a2, s6
	addw a2, a2, a1
	mv a1, a3
	addiw a3, a3, 16
	bge a3, s0, label31
	j label38
label4:
	slli a3, a1, 2
	add a3, a0, a3
	sw a1, 0(a3)
	addiw a4, a1, 1
	sw a4, 4(a3)
	addiw a4, a1, 2
	sw a4, 8(a3)
	addiw a4, a1, 3
	sw a4, 12(a3)
	addiw a4, a1, 4
	sw a4, 16(a3)
	addiw a4, a1, 5
	sw a4, 20(a3)
	addiw a4, a1, 6
	sw a4, 24(a3)
	addiw a4, a1, 7
	sw a4, 28(a3)
	addiw a4, a1, 8
	sw a4, 32(a3)
	addiw a4, a1, 9
	sw a4, 36(a3)
	addiw a4, a1, 10
	sw a4, 40(a3)
	addiw a4, a1, 11
	sw a4, 44(a3)
	addiw a4, a1, 12
	sw a4, 48(a3)
	addiw a4, a1, 13
	sw a4, 52(a3)
	addiw a4, a1, 14
	sw a4, 56(a3)
	addiw a1, a1, 15
	sw a1, 60(a3)
	mv a1, a2
	addiw a2, a2, 16
	bge a2, s1, label5
	j label4
label7:
	slli a3, a1, 2
	add a3, a0, a3
	sw a1, 0(a3)
	addiw a4, a1, 1
	sw a4, 4(a3)
	addiw a4, a1, 2
	sw a4, 8(a3)
	addiw a4, a1, 3
	sw a4, 12(a3)
	addiw a4, a1, 4
	sw a4, 16(a3)
	addiw a4, a1, 5
	sw a4, 20(a3)
	addiw a4, a1, 6
	sw a4, 24(a3)
	addiw a4, a1, 7
	sw a4, 28(a3)
	addiw a4, a1, 8
	sw a4, 32(a3)
	addiw a4, a1, 9
	sw a4, 36(a3)
	addiw a4, a1, 10
	sw a4, 40(a3)
	addiw a4, a1, 11
	sw a4, 44(a3)
	addiw a4, a1, 12
	sw a4, 48(a3)
	addiw a4, a1, 13
	sw a4, 52(a3)
	addiw a4, a1, 14
	sw a4, 56(a3)
	addiw a1, a1, 15
	sw a1, 60(a3)
	mv a1, a2
	addiw a2, a2, 16
	bge a2, s1, label8
	j label7
label26:
	li a0, 47
	jal _sysy_stoptime
	mv a0, s0
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s7, 8(sp)
	ld s4, 16(sp)
	ld s3, 24(sp)
	ld s5, 32(sp)
	ld s0, 40(sp)
	ld s2, 48(sp)
	ld s6, 56(sp)
	ld s1, 64(sp)
	addi sp, sp, 72
	ret
label171:
	subw s0, zero, s0
	j label26
