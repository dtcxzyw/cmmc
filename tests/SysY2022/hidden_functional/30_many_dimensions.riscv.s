.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
array:
	.zero	2097152
.text
.globl main
main:
.p2align 2
	addi sp, sp, -64
pcrel324:
	auipc a1, %pcrel_hi(array)
	mv a2, zero
	addi a0, a1, %pcrel_lo(pcrel324)
	sd s0, 56(sp)
	sd s5, 48(sp)
	sd s1, 40(sp)
	sd s6, 32(sp)
	sd s2, 24(sp)
	sd s4, 16(sp)
	sd s3, 8(sp)
	sd ra, 0(sp)
label2:
	sh2add a1, a2, a0
	sw zero, 0(a1)
	addi a2, a2, 16
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	sw zero, 16(a1)
	sw zero, 20(a1)
	sw zero, 24(a1)
	sw zero, 28(a1)
	sw zero, 32(a1)
	sw zero, 36(a1)
	sw zero, 40(a1)
	sw zero, 44(a1)
	sw zero, 48(a1)
	sw zero, 52(a1)
	sw zero, 56(a1)
	sw zero, 60(a1)
	lui a1, 128
	blt a2, a1, label2
	mv a4, zero
	mv a1, zero
label4:
	li a3, 2
	bge a1, a3, label64
	mv a2, zero
label7:
	li a3, 2
	bge a2, a3, label94
	mv a3, zero
label11:
	li a5, 2
	bge a3, a5, label99
	mv a5, a4
	mv a4, zero
label15:
	li t0, 2
	bge a4, t0, label104
	mv t1, a5
	mv a5, zero
	j label18
label64:
	lw a1, 0(a0)
	lw a4, 8(a0)
	lw a3, 4(a0)
	addw a2, a1, a4
	lw a4, 40(a0)
	addw a1, a2, a3
	lw a5, 24(a0)
	addw a2, a1, a4
	lw a3, 228(a0)
	addw a1, a2, a5
	lw a4, 56(a0)
	addw a2, a1, a3
	lw a3, 964(a0)
	addw a1, a2, a4
	lw a5, 224(a0)
	addw a2, a1, a3
	lw a4, 804(a0)
	addw a1, a2, a5
	lw a3, 1996(a0)
	addw a2, a1, a4
	li a4, 26400
	addw a1, a2, a3
	li a2, 3224
	add a3, a0, a2
	lw a5, 0(a3)
	add a3, a0, a4
	addw a1, a1, a5
	lw a2, 0(a3)
	lw a3, 508(a0)
	addw a1, a1, a2
	lw a4, 124(a0)
	addw a2, a1, a3
	li a3, 246672
	addw a1, a2, a4
	add a2, a0, a3
	lw a4, 0(a2)
	li a2, 15956
	addw a1, a1, a4
	add a3, a0, a2
	lw a4, 0(a3)
	li a3, 828364
	addw a1, a1, a4
	add a2, a0, a3
	li a3, 281600
	lw a4, 0(a2)
	add a2, a0, a3
	addw a1, a1, a4
	lw a4, 0(a2)
	addw a0, a1, a4
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	ld s3, 8(sp)
	ld s4, 16(sp)
	ld s2, 24(sp)
	ld s6, 32(sp)
	ld s1, 40(sp)
	ld s5, 48(sp)
	ld s0, 56(sp)
	addi sp, sp, 64
	ret
label18:
	li t0, 2
	bge a5, t0, label108
	mv t0, zero
	j label22
label113:
	addiw a5, a5, 1
	j label18
label22:
	li t2, 2
	bge t0, t2, label113
	mv t5, t1
	mv t1, zero
	j label26
label118:
	addiw t0, t0, 1
	mv t1, t5
	j label22
label26:
	li t2, 2
	bge t1, t2, label118
	mv t2, zero
label30:
	li t3, 2
	blt t2, t3, label124
	addiw t1, t1, 1
	j label26
label124:
	mv t3, zero
label34:
	li t4, 2
	bge t3, t4, label128
	mv t4, zero
label38:
	li t6, 2
	bge t4, t6, label133
	mv t6, t5
	mv t5, zero
label42:
	li a6, 2
	bge t5, a6, label138
	mv a6, t6
	mv t6, zero
label46:
	li a7, 2
	bge t6, a7, label143
	mv a7, zero
label50:
	li s0, 2
	bge a7, s0, label148
	mv s0, zero
label54:
	li s1, 2
	blt s0, s1, label57
	j label153
label138:
	addiw t4, t4, 1
	mv t5, t6
	j label38
label128:
	addiw t2, t2, 1
	j label30
label133:
	addiw t3, t3, 1
	j label34
label143:
	addiw t5, t5, 1
	mv t6, a6
	j label42
label148:
	addiw t6, t6, 1
	j label46
label57:
	slli s1, a1, 20
	slli s4, a2, 19
	slli s3, a3, 18
	slli s5, a4, 17
	add s2, a0, s1
	add s1, s2, s4
	slli s4, a5, 16
	add s2, s1, s3
	slli s3, t0, 15
	add s1, s2, s5
	add s2, s1, s4
	slli s4, t1, 14
	add s1, s2, s3
	slli s3, t2, 13
	add s2, s1, s4
	slli s4, t3, 12
	add s1, s2, s3
	slli s3, t4, 11
	add s2, s1, s4
	slli s4, t5, 10
	add s1, s2, s3
	slli s3, t6, 9
	add s2, s1, s4
	slli s4, s0, 7
	add s1, s2, s3
	slli s2, a7, 8
	add s3, s1, s2
	mv s1, zero
	add s2, s3, s4
label58:
	slli s4, s1, 6
	addiw s5, a6, 2
	addiw s6, a6, 3
	addiw s1, s1, 1
	add s3, s2, s4
	sw a6, 0(s3)
	addiw s4, a6, 1
	sw s4, 4(s3)
	addiw s4, a6, 4
	sw s5, 8(s3)
	addiw s5, a6, 5
	sw s6, 12(s3)
	addiw s6, a6, 11
	sw s4, 16(s3)
	addiw s4, a6, 6
	sw s5, 20(s3)
	addiw s5, a6, 7
	sw s4, 24(s3)
	addiw s4, a6, 8
	sw s5, 28(s3)
	addiw s5, a6, 9
	sw s4, 32(s3)
	addiw s4, a6, 10
	sw s5, 36(s3)
	addiw s5, a6, 12
	sw s4, 40(s3)
	addiw s4, a6, 13
	sw s6, 44(s3)
	sw s5, 48(s3)
	addiw s5, a6, 14
	sw s4, 52(s3)
	addiw s4, a6, 15
	sw s5, 56(s3)
	addiw a6, a6, 16
	sw s4, 60(s3)
	li s3, 2
	blt s1, s3, label58
	addiw s0, s0, 1
	j label54
label153:
	addiw a7, a7, 1
	j label50
label104:
	addiw a3, a3, 1
	mv a4, a5
	j label11
label94:
	addiw a1, a1, 1
	j label4
label99:
	addiw a2, a2, 1
	j label7
label108:
	addiw a4, a4, 1
	mv a5, t1
	j label15
