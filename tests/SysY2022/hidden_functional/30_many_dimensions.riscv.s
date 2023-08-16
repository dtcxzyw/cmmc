.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
array:
	.zero	2097152
.text
.p2align 2
.globl main
main:
	addi sp, sp, -104
	mv a3, zero
	li a0, 2
	lui a2, 128
	sd ra, 0(sp)
	sd s4, 8(sp)
pcrel521:
	auipc s4, %pcrel_hi(array)
	sd s3, 16(sp)
	addi s3, s4, %pcrel_lo(pcrel521)
	sd s2, 24(sp)
	mv a1, s3
	lui s2, 256
	sd s6, 32(sp)
	sd s1, 40(sp)
	sd s0, 48(sp)
	sd s5, 56(sp)
	sd s9, 64(sp)
	sd s7, 72(sp)
	sd s11, 80(sp)
	sd s8, 88(sp)
	sd s10, 96(sp)
.p2align 2
label2:
	sd zero, 0(a1)
	addiw a3, a3, 64
	sd zero, 8(a1)
	sd zero, 16(a1)
	sd zero, 24(a1)
	sd zero, 32(a1)
	sd zero, 40(a1)
	sd zero, 48(a1)
	sd zero, 56(a1)
	sd zero, 64(a1)
	sd zero, 72(a1)
	sd zero, 80(a1)
	sd zero, 88(a1)
	sd zero, 96(a1)
	sd zero, 104(a1)
	sd zero, 112(a1)
	sd zero, 120(a1)
	sd zero, 128(a1)
	sd zero, 136(a1)
	sd zero, 144(a1)
	sd zero, 152(a1)
	sd zero, 160(a1)
	sd zero, 168(a1)
	sd zero, 176(a1)
	sd zero, 184(a1)
	sd zero, 192(a1)
	sd zero, 200(a1)
	sd zero, 208(a1)
	sd zero, 216(a1)
	sd zero, 224(a1)
	sd zero, 232(a1)
	sd zero, 240(a1)
	sd zero, 248(a1)
	bge a3, a2, label6
	addi a1, a1, 256
	j label2
label6:
	mv a3, s3
	mv s6, zero
	mv s0, zero
	mv a7, zero
	mv s1, zero
	mv a4, zero
	mv a1, zero
	mv t0, zero
	mv a5, zero
	mv t1, zero
	mv a2, zero
	mv t2, zero
	mv t3, zero
	mv t4, zero
	mv t5, zero
	mv t6, zero
	mv a6, zero
	mv s5, zero
	j label7
.p2align 2
label169:
	mv s6, zero
.p2align 2
label7:
	slli s9, a4, 19
	slli s11, a1, 18
	slli s10, t0, 17
	add s7, a3, s9
	add s8, s7, s11
	slli s11, t1, 15
	add s9, s8, s10
	slli s10, a2, 14
	slli s8, a5, 16
	add s7, s9, s8
	add s8, s7, s11
	slli s11, t3, 12
	add s9, s8, s10
	slli s8, t2, 13
	add s7, s9, s8
	slli s9, t4, 11
	add s10, s7, s11
	slli s11, t5, 10
	add s8, s10, s9
	slli s10, t6, 9
	add s7, s8, s11
	slli s11, a6, 8
	add s9, s7, s10
	slli s7, a7, 7
	add s8, s9, s11
	slli s11, s0, 6
	add s10, s8, s7
	slli s8, s6, 5
	add s9, s10, s11
	addiw s6, s6, 1
	addiw s11, s5, 1
	add s7, s9, s8
	slli s10, s11, 32
	addiw s9, s5, 2
	addiw s11, s5, 3
	add.uw s8, s5, s10
	sd s8, 0(s7)
	slli s8, s11, 32
	add.uw s10, s9, s8
	addiw s9, s5, 5
	addiw s8, s5, 4
	sd s10, 8(s7)
	slli s11, s9, 32
	addiw s9, s5, 6
	add.uw s10, s8, s11
	addiw s11, s5, 7
	sd s10, 16(s7)
	addiw s5, s5, 8
	slli s10, s11, 32
	add.uw s8, s9, s10
	sd s8, 24(s7)
	blt s6, a0, label7
	addiw s0, s0, 1
	blt s0, a0, label169
	addiw a7, a7, 1
	bge a7, a0, label443
	mv s6, zero
	mv s0, zero
	j label7
.p2align 2
label443:
	addiw a6, a6, 1
	bge a6, a0, label457
	mv s6, zero
	mv s0, zero
	mv a7, zero
	j label7
.p2align 2
label457:
	addiw t6, t6, 1
	bge t6, a0, label470
	mv s6, zero
	mv s0, zero
	mv a7, zero
	mv a6, zero
	j label7
.p2align 2
label470:
	addiw t5, t5, 1
	bge t5, a0, label478
	mv s6, zero
	mv s0, zero
	mv a7, zero
	mv t6, zero
	mv a6, zero
	j label7
.p2align 2
label478:
	addiw t4, t4, 1
	bge t4, a0, label485
	mv s6, zero
	mv s0, zero
	mv a7, zero
	mv t5, zero
	mv t6, zero
	mv a6, zero
	j label7
.p2align 2
label485:
	addiw t3, t3, 1
	bge t3, a0, label491
	mv s6, zero
	mv s0, zero
	mv a7, zero
	mv t4, zero
	mv t5, zero
	mv t6, zero
	mv a6, zero
	j label7
.p2align 2
label491:
	addiw t2, t2, 1
	bge t2, a0, label496
	mv s6, zero
	mv s0, zero
	mv a7, zero
	mv t3, zero
	mv t4, zero
	mv t5, zero
	mv t6, zero
	mv a6, zero
	j label7
.p2align 2
label496:
	addiw a2, a2, 1
	bge a2, a0, label500
	mv s6, zero
	mv s0, zero
	mv a7, zero
	mv t2, zero
	mv t3, zero
	mv t4, zero
	mv t5, zero
	mv t6, zero
	mv a6, zero
	j label7
.p2align 2
label500:
	addiw t1, t1, 1
	bge t1, a0, label503
	mv s6, zero
	mv s0, zero
	mv a7, zero
	mv a2, zero
	mv t2, zero
	mv t3, zero
	mv t4, zero
	mv t5, zero
	mv t6, zero
	mv a6, zero
	j label7
.p2align 2
label503:
	addiw a5, a5, 1
	bge a5, a0, label452
	mv s6, zero
	mv s0, zero
	mv a7, zero
	mv t1, zero
	mv a2, zero
	mv t2, zero
	mv t3, zero
	mv t4, zero
	mv t5, zero
	mv t6, zero
	mv a6, zero
	j label7
.p2align 2
label452:
	addiw t0, t0, 1
	bge t0, a0, label453
	mv s6, zero
	mv s0, zero
	mv a7, zero
	mv a5, zero
	mv t1, zero
	mv a2, zero
	mv t2, zero
	mv t3, zero
	mv t4, zero
	mv t5, zero
	mv t6, zero
	mv a6, zero
	j label7
.p2align 2
label453:
	addiw a1, a1, 1
	bge a1, a0, label454
	mv s6, zero
	mv s0, zero
	mv a7, zero
	mv t0, zero
	mv a5, zero
	mv t1, zero
	mv a2, zero
	mv t2, zero
	mv t3, zero
	mv t4, zero
	mv t5, zero
	mv t6, zero
	mv a6, zero
	j label7
.p2align 2
label454:
	addiw a4, a4, 1
	bge a4, a0, label455
	mv s6, zero
	mv s0, zero
	mv a7, zero
	mv a1, zero
	mv t0, zero
	mv a5, zero
	mv t1, zero
	mv a2, zero
	mv t2, zero
	mv t3, zero
	mv t4, zero
	mv t5, zero
	mv t6, zero
	mv a6, zero
	j label7
.p2align 2
label455:
	addiw s1, s1, 1
	bge s1, a0, label41
	add a3, a3, s2
	mv s6, zero
	mv s0, zero
	mv a7, zero
	mv a4, zero
	mv a1, zero
	mv t0, zero
	mv a5, zero
	mv t1, zero
	mv a2, zero
	mv t2, zero
	mv t3, zero
	mv t4, zero
	mv t5, zero
	mv t6, zero
	mv a6, zero
	j label7
label41:
	auipc s4, %pcrel_hi(array)
	lw a0, %pcrel_lo(label41)(s4)
	lw a3, 8(s3)
	lw a5, 4(s3)
	addw a2, a0, a3
	lw a4, 40(s3)
	addw a1, a2, a5
	lw a2, 24(s3)
	addw a0, a1, a4
	lw a4, 228(s3)
	addw a3, a0, a2
	lw a5, 56(s3)
	addw a1, a3, a4
	lw a3, 964(s3)
	addw a2, a1, a5
	lw a4, 224(s3)
	addw a0, a2, a3
	lw a5, 804(s3)
	addw a1, a0, a4
	lw a3, 1996(s3)
	addw a2, a1, a5
	li a1, 403
	addw a0, a2, a3
	slli a4, a1, 3
	add a3, s3, a4
	li a4, 825
	lw a2, 0(a3)
	slli a3, a4, 5
	addw a1, a0, a2
	add a2, s3, a3
	lw a5, 0(a2)
	lw a4, 508(s3)
	addw a0, a1, a5
	lw a3, 124(s3)
	lui a5, 4
	addw a2, a0, a4
	lui a0, 60
	addw a1, a2, a3
	addiw a4, a0, 912
	add a3, s3, a4
	addiw a4, a5, -428
	lw a2, 0(a3)
	lui a5, 202
	add a3, s3, a4
	addw a0, a1, a2
	addiw a4, a5, 972
	lw a2, 0(a3)
	li a5, 275
	addw a1, a0, a2
	add a0, s3, a4
	slli a4, a5, 10
	lw a3, 0(a0)
	addw a2, a1, a3
	add a1, s3, a4
	lw a3, 0(a1)
	addw a0, a2, a3
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s6, 32(sp)
	ld s1, 40(sp)
	ld s0, 48(sp)
	ld s5, 56(sp)
	ld s9, 64(sp)
	ld s7, 72(sp)
	ld s11, 80(sp)
	ld s8, 88(sp)
	ld s10, 96(sp)
	addi sp, sp, 104
	ret
