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
	sd s3, 8(sp)
pcrel521:
	auipc s3, %pcrel_hi(array)
	sd s2, 16(sp)
	addi s2, s3, %pcrel_lo(pcrel521)
	sd s1, 24(sp)
	mv a1, s2
	lui s1, 256
	sd s6, 32(sp)
	sd s0, 40(sp)
	sd s5, 48(sp)
	sd s4, 56(sp)
	sd s8, 64(sp)
	sd s9, 72(sp)
	sd s11, 80(sp)
	sd s7, 88(sp)
	sd s10, 96(sp)
.p2align 2
label2:
	sd zero, 0(a1)
	addi a3, a3, 64
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
	bge a3, a2, label5
	addi a1, a1, 256
	j label2
label5:
	mv a1, s2
	mv s6, zero
	mv s0, zero
	mv a7, zero
	mv s4, zero
	mv a4, zero
	mv a2, zero
	mv t1, zero
	mv a5, zero
	mv a3, zero
	mv t0, zero
	mv t2, zero
	mv t3, zero
	mv t4, zero
	mv t5, zero
	mv t6, zero
	mv a6, zero
	mv s5, zero
	j label6
.p2align 2
label168:
	mv s6, zero
.p2align 2
label6:
	slli s8, a4, 19
	slli s11, a2, 18
	slli s10, t1, 17
	add s9, a1, s8
	add s7, s9, s11
	slli s11, a5, 16
	add s8, s7, s10
	slli s10, t0, 14
	add s9, s8, s11
	slli s11, t2, 13
	slli s8, a3, 15
	add s7, s9, s8
	add s8, s7, s10
	slli s10, t4, 11
	add s9, s8, s11
	slli s11, t5, 10
	slli s8, t3, 12
	add s7, s9, s8
	add s8, s7, s10
	slli s10, t6, 9
	add s9, s8, s11
	slli s11, a6, 8
	add s7, s9, s10
	slli s10, a7, 7
	add s8, s7, s11
	slli s11, s6, 5
	slli s7, s0, 6
	add s9, s8, s10
	addiw s6, s6, 1
	addiw s8, s5, 1
	add s10, s9, s7
	slli s9, s8, 32
	add s7, s10, s11
	addiw s8, s5, 2
	add.uw s10, s5, s9
	addiw s9, s5, 3
	sd s10, 0(s7)
	slli s11, s9, 32
	addiw s9, s5, 4
	add.uw s10, s8, s11
	addiw s8, s5, 5
	sd s10, 8(s7)
	slli s11, s8, 32
	addiw s8, s5, 6
	add.uw s10, s9, s11
	addiw s11, s5, 7
	sd s10, 16(s7)
	addiw s5, s5, 8
	slli s10, s11, 32
	add.uw s9, s8, s10
	sd s9, 24(s7)
	blt s6, a0, label6
	addiw s0, s0, 1
	blt s0, a0, label168
	addiw a7, a7, 1
	bge a7, a0, label443
	mv s6, zero
	mv s0, zero
	j label6
.p2align 2
label443:
	addiw a6, a6, 1
	bge a6, a0, label457
	mv s6, zero
	mv s0, zero
	mv a7, zero
	j label6
.p2align 2
label457:
	addiw t6, t6, 1
	bge t6, a0, label470
	mv s6, zero
	mv s0, zero
	mv a7, zero
	mv a6, zero
	j label6
.p2align 2
label470:
	addiw t5, t5, 1
	bge t5, a0, label478
	mv s6, zero
	mv s0, zero
	mv a7, zero
	mv t6, zero
	mv a6, zero
	j label6
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
	j label6
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
	j label6
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
	j label6
.p2align 2
label496:
	addiw t0, t0, 1
	bge t0, a0, label500
	mv s6, zero
	mv s0, zero
	mv a7, zero
	mv t2, zero
	mv t3, zero
	mv t4, zero
	mv t5, zero
	mv t6, zero
	mv a6, zero
	j label6
.p2align 2
label500:
	addiw a3, a3, 1
	bge a3, a0, label503
	mv s6, zero
	mv s0, zero
	mv a7, zero
	mv t0, zero
	mv t2, zero
	mv t3, zero
	mv t4, zero
	mv t5, zero
	mv t6, zero
	mv a6, zero
	j label6
.p2align 2
label503:
	addiw a5, a5, 1
	bge a5, a0, label452
	mv s6, zero
	mv s0, zero
	mv a7, zero
	mv a3, zero
	mv t0, zero
	mv t2, zero
	mv t3, zero
	mv t4, zero
	mv t5, zero
	mv t6, zero
	mv a6, zero
	j label6
.p2align 2
label452:
	addiw t1, t1, 1
	bge t1, a0, label453
	mv s6, zero
	mv s0, zero
	mv a7, zero
	mv a5, zero
	mv a3, zero
	mv t0, zero
	mv t2, zero
	mv t3, zero
	mv t4, zero
	mv t5, zero
	mv t6, zero
	mv a6, zero
	j label6
.p2align 2
label453:
	addiw a2, a2, 1
	bge a2, a0, label454
	mv s6, zero
	mv s0, zero
	mv a7, zero
	mv t1, zero
	mv a5, zero
	mv a3, zero
	mv t0, zero
	mv t2, zero
	mv t3, zero
	mv t4, zero
	mv t5, zero
	mv t6, zero
	mv a6, zero
	j label6
.p2align 2
label454:
	addiw a4, a4, 1
	bge a4, a0, label455
	mv s6, zero
	mv s0, zero
	mv a7, zero
	mv a2, zero
	mv t1, zero
	mv a5, zero
	mv a3, zero
	mv t0, zero
	mv t2, zero
	mv t3, zero
	mv t4, zero
	mv t5, zero
	mv t6, zero
	mv a6, zero
	j label6
.p2align 2
label455:
	addiw s4, s4, 1
	bge s4, a0, label40
	add a1, a1, s1
	mv s6, zero
	mv s0, zero
	mv a7, zero
	mv a4, zero
	mv a2, zero
	mv t1, zero
	mv a5, zero
	mv a3, zero
	mv t0, zero
	mv t2, zero
	mv t3, zero
	mv t4, zero
	mv t5, zero
	mv t6, zero
	mv a6, zero
	j label6
label40:
	auipc s3, %pcrel_hi(array)
	lw a0, %pcrel_lo(label40)(s3)
	lw a3, 8(s2)
	lw a5, 4(s2)
	addw a2, a0, a3
	lw a4, 40(s2)
	addw a1, a2, a5
	lw a5, 24(s2)
	addw a3, a1, a4
	lw a2, 228(s2)
	addw a0, a3, a5
	lw a5, 56(s2)
	addw a1, a0, a2
	lw a4, 964(s2)
	addw a3, a1, a5
	lw a5, 224(s2)
	addw a0, a3, a4
	lw a4, 804(s2)
	addw a2, a0, a5
	lw a3, 1996(s2)
	li a5, 403
	addw a1, a2, a4
	slli a4, a5, 3
	addw a0, a1, a3
	li a5, 825
	add a3, s2, a4
	lw a2, 0(a3)
	slli a3, a5, 5
	addw a1, a0, a2
	lui a5, 60
	add a0, s2, a3
	lw a4, 0(a0)
	lw a3, 508(s2)
	addw a2, a1, a4
	lw a4, 124(s2)
	addw a0, a2, a3
	addiw a3, a5, 912
	addw a1, a0, a4
	lui a5, 4
	add a2, s2, a3
	addiw a3, a5, -428
	lw a4, 0(a2)
	lui a5, 202
	addw a0, a1, a4
	add a4, s2, a3
	lw a1, 0(a4)
	addiw a4, a5, 972
	addw a2, a0, a1
	li a5, 275
	add a3, s2, a4
	slli a4, a5, 10
	lw a0, 0(a3)
	addw a1, a2, a0
	add a2, s2, a4
	lw a3, 0(a2)
	addw a0, a1, a3
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	ld s3, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s0, 40(sp)
	ld s5, 48(sp)
	ld s4, 56(sp)
	ld s8, 64(sp)
	ld s9, 72(sp)
	ld s11, 80(sp)
	ld s7, 88(sp)
	ld s10, 96(sp)
	addi sp, sp, 104
	ret
