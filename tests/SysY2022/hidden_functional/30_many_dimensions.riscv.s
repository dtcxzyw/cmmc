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
	addi sp, sp, -48
pcrel453:
	auipc a1, %pcrel_hi(array)
	mv a2, zero
	addi a0, a1, %pcrel_lo(pcrel453)
	sd s0, 40(sp)
	sd s2, 32(sp)
	sd s1, 24(sp)
	sd s3, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
label2:
	sh2add a1, a2, a0
	addi a2, a2, 64
	sw zero, 0(a1)
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
	sw zero, 64(a1)
	sw zero, 68(a1)
	sw zero, 72(a1)
	sw zero, 76(a1)
	sw zero, 80(a1)
	sw zero, 84(a1)
	sw zero, 88(a1)
	sw zero, 92(a1)
	sw zero, 96(a1)
	sw zero, 100(a1)
	sw zero, 104(a1)
	sw zero, 108(a1)
	sw zero, 112(a1)
	sw zero, 116(a1)
	sw zero, 120(a1)
	sw zero, 124(a1)
	sw zero, 128(a1)
	sw zero, 132(a1)
	sw zero, 136(a1)
	sw zero, 140(a1)
	sw zero, 144(a1)
	sw zero, 148(a1)
	sw zero, 152(a1)
	sw zero, 156(a1)
	sw zero, 160(a1)
	sw zero, 164(a1)
	sw zero, 168(a1)
	sw zero, 172(a1)
	sw zero, 176(a1)
	sw zero, 180(a1)
	sw zero, 184(a1)
	sw zero, 188(a1)
	sw zero, 192(a1)
	sw zero, 196(a1)
	sw zero, 200(a1)
	sw zero, 204(a1)
	sw zero, 208(a1)
	sw zero, 212(a1)
	sw zero, 216(a1)
	sw zero, 220(a1)
	sw zero, 224(a1)
	sw zero, 228(a1)
	sw zero, 232(a1)
	sw zero, 236(a1)
	sw zero, 240(a1)
	sw zero, 244(a1)
	sw zero, 248(a1)
	sw zero, 252(a1)
	lui a1, 128
	blt a2, a1, label2
	mv a3, zero
	mv a1, zero
label4:
	li a4, 2
	bge a1, a4, label56
	mv a2, zero
label7:
	li a4, 2
	blt a2, a4, label135
	addiw a1, a1, 1
	j label4
label135:
	mv t1, a3
	mv a3, zero
	j label11
label56:
	lw a2, 0(a0)
	li a5, 828364
	lw a3, 8(a0)
	lw a4, 4(a0)
	addw a1, a2, a3
	lw a3, 40(a0)
	addw a2, a1, a4
	lw a4, 24(a0)
	addw a1, a2, a3
	lw a3, 228(a0)
	addw a2, a1, a4
	lw a4, 56(a0)
	addw a1, a2, a3
	lw a3, 964(a0)
	addw a2, a1, a4
	li a4, 3224
	addw a1, a2, a3
	lw a2, 224(a0)
	addw a3, a1, a2
	lw a1, 804(a0)
	addw a2, a3, a1
	lw a3, 1996(a0)
	addw a1, a2, a3
	add a2, a0, a4
	lw a3, 0(a2)
	li a2, 26400
	addw a1, a1, a3
	add a4, a0, a2
	lw a3, 0(a4)
	lw a4, 508(a0)
	addw a1, a1, a3
	lw a3, 124(a0)
	addw a2, a1, a4
	li a4, 246672
	addw a1, a2, a3
	add a3, a0, a4
	lw a2, 0(a3)
	li a3, 15956
	addw a1, a1, a2
	add a2, a0, a3
	add a3, a0, a5
	lw a4, 0(a2)
	lw a2, 0(a3)
	addw a1, a1, a4
	li a3, 281600
	addw a1, a1, a2
	add a2, a0, a3
	lw a4, 0(a2)
	addw a0, a1, a4
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s1, 24(sp)
	ld s2, 32(sp)
	ld s0, 40(sp)
	addi sp, sp, 48
	ret
label11:
	li a4, 2
	bge a3, a4, label139
	mv a4, zero
	j label15
label144:
	addiw a3, a3, 1
	j label11
label15:
	li a5, 2
	bge a4, a5, label144
	mv a5, zero
label19:
	li t0, 2
	blt a5, t0, label150
	addiw a4, a4, 1
	j label15
label150:
	mv t0, zero
label23:
	li t2, 2
	bge t0, t2, label154
	mv t3, t1
	mv t1, zero
label27:
	li t2, 2
	bge t1, t2, label159
	mv t2, zero
label31:
	li t4, 2
	bge t2, t4, label164
	mv t5, t3
	mv t3, zero
label35:
	li t4, 2
	bge t3, t4, label169
	mv t4, zero
	j label39
label174:
	addiw t3, t3, 1
	j label35
label39:
	li t6, 2
	bge t4, t6, label174
	mv t6, t5
	mv t5, zero
label42:
	li a6, 2
	blt t5, a6, label179
	addiw t4, t4, 1
	mv t5, t6
	j label39
label179:
	mv a6, zero
label45:
	li a7, 2
	blt a6, a7, label48
	j label182
label154:
	addiw a5, a5, 1
	j label19
label169:
	addiw t2, t2, 1
	mv t3, t5
	j label31
label159:
	addiw t0, t0, 1
	mv t1, t3
	j label23
label164:
	addiw t1, t1, 1
	j label27
label182:
	addiw t5, t5, 1
	j label42
label139:
	addiw a2, a2, 1
	mv a3, t1
	j label7
label48:
	slli s0, a1, 20
	slli s2, a2, 19
	slli s1, a3, 18
	add a7, a0, s0
	slli s0, a4, 17
	add a7, a7, s2
	slli s2, t0, 15
	add a7, a7, s1
	slli s1, a5, 16
	add a7, a7, s0
	slli s0, t1, 14
	add a7, a7, s1
	slli s1, t3, 12
	add a7, a7, s2
	slli s2, t2, 13
	add a7, a7, s0
	slli s0, t4, 11
	add a7, a7, s2
	add a7, a7, s1
	slli s1, t5, 10
	add a7, a7, s0
	slli s0, a6, 9
	add a7, a7, s1
	add s1, a7, s0
	mv a7, zero
label49:
	slli s2, a7, 8
	addiw s3, t6, 2
	addiw s4, t6, 26
	addiw a7, a7, 1
	add s0, s1, s2
	sw t6, 0(s0)
	addiw s2, t6, 1
	sw s2, 4(s0)
	addiw s2, t6, 3
	sw s3, 8(s0)
	addiw s3, t6, 4
	sw s2, 12(s0)
	addiw s2, t6, 5
	sw s3, 16(s0)
	addiw s3, t6, 6
	sw s2, 20(s0)
	addiw s2, t6, 7
	sw s3, 24(s0)
	addiw s3, t6, 8
	sw s2, 28(s0)
	addiw s2, t6, 9
	sw s3, 32(s0)
	addiw s3, t6, 10
	sw s2, 36(s0)
	addiw s2, t6, 11
	sw s3, 40(s0)
	addiw s3, t6, 12
	sw s2, 44(s0)
	addiw s2, t6, 13
	sw s3, 48(s0)
	addiw s3, t6, 14
	sw s2, 52(s0)
	addiw s2, t6, 15
	sw s3, 56(s0)
	addiw s3, t6, 16
	sw s2, 60(s0)
	addiw s2, t6, 17
	sw s3, 64(s0)
	addiw s3, t6, 18
	sw s2, 68(s0)
	addiw s2, t6, 19
	sw s3, 72(s0)
	addiw s3, t6, 20
	sw s2, 76(s0)
	addiw s2, t6, 21
	sw s3, 80(s0)
	addiw s3, t6, 22
	sw s2, 84(s0)
	addiw s2, t6, 23
	sw s3, 88(s0)
	addiw s3, t6, 24
	sw s2, 92(s0)
	addiw s2, t6, 25
	sw s3, 96(s0)
	addiw s3, t6, 27
	sw s2, 100(s0)
	addiw s2, t6, 28
	sw s4, 104(s0)
	addiw s4, t6, 31
	sw s3, 108(s0)
	addiw s3, t6, 29
	sw s2, 112(s0)
	addiw s2, t6, 30
	sw s3, 116(s0)
	addiw s3, t6, 32
	sw s2, 120(s0)
	addiw s2, t6, 33
	sw s4, 124(s0)
	addiw s4, t6, 39
	sw s3, 128(s0)
	addiw s3, t6, 34
	sw s2, 132(s0)
	addiw s2, t6, 35
	sw s3, 136(s0)
	addiw s3, t6, 36
	sw s2, 140(s0)
	addiw s2, t6, 37
	sw s3, 144(s0)
	addiw s3, t6, 38
	sw s2, 148(s0)
	addiw s2, t6, 40
	sw s3, 152(s0)
	addiw s3, t6, 41
	sw s4, 156(s0)
	addiw s4, t6, 43
	sw s2, 160(s0)
	addiw s2, t6, 42
	sw s3, 164(s0)
	addiw s3, t6, 44
	sw s2, 168(s0)
	addiw s2, t6, 45
	sw s4, 172(s0)
	addiw s4, t6, 55
	sw s3, 176(s0)
	addiw s3, t6, 46
	sw s2, 180(s0)
	addiw s2, t6, 47
	sw s3, 184(s0)
	addiw s3, t6, 48
	sw s2, 188(s0)
	addiw s2, t6, 49
	sw s3, 192(s0)
	addiw s3, t6, 50
	sw s2, 196(s0)
	addiw s2, t6, 51
	sw s3, 200(s0)
	addiw s3, t6, 52
	sw s2, 204(s0)
	addiw s2, t6, 53
	sw s3, 208(s0)
	addiw s3, t6, 54
	sw s2, 212(s0)
	addiw s2, t6, 56
	sw s3, 216(s0)
	addiw s3, t6, 57
	sw s4, 220(s0)
	addiw s4, t6, 61
	sw s2, 224(s0)
	addiw s2, t6, 58
	sw s3, 228(s0)
	addiw s3, t6, 59
	sw s2, 232(s0)
	addiw s2, t6, 60
	sw s3, 236(s0)
	addiw s3, t6, 62
	sw s2, 240(s0)
	addiw s2, t6, 63
	sw s4, 244(s0)
	addiw t6, t6, 64
	sw s3, 248(s0)
	sw s2, 252(s0)
	li s0, 2
	blt a7, s0, label49
	addiw a6, a6, 1
	j label45
