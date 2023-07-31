.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
array:
	.zero	2097152
.text
.globl main
main:
.p2align 2
	addi sp, sp, -48
pcrel466:
	auipc a1, %pcrel_hi(array)
	mv a3, zero
	addi a0, a1, %pcrel_lo(pcrel466)
	sd ra, 0(sp)
	sd s1, 8(sp)
	sd s0, 16(sp)
	sd s2, 24(sp)
	sd s3, 32(sp)
	sd s4, 40(sp)
.p2align 2
label2:
	sh2add a1, a3, a0
	addi a3, a3, 64
	sd zero, 0(a1)
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
	lui a1, 128
	blt a3, a1, label2
	mv a6, zero
	mv a2, zero
.p2align 2
label4:
	li a1, 2
	blt a2, a1, label131
	j label56
.p2align 2
label134:
	addiw a2, a2, 1
	j label4
label56:
	lw a3, 0(a0)
	lw a2, 8(a0)
	lw a4, 4(a0)
	addw a1, a3, a2
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
	add a3, a0, a4
	lw a2, 0(a3)
	li a3, 26400
	addw a1, a1, a2
	add a4, a0, a3
	lw a2, 0(a4)
	lw a4, 508(a0)
	addw a1, a1, a2
	lw a3, 124(a0)
	addw a2, a1, a4
	addw a1, a2, a3
	li a2, 246672
	add a4, a0, a2
	lw a3, 0(a4)
	li a4, 15956
	addw a1, a1, a3
	add a2, a0, a4
	lw a3, 0(a2)
	li a2, 828364
	addw a1, a1, a3
	add a4, a0, a2
	li a2, 281600
	lw a3, 0(a4)
	addw a1, a1, a3
	add a3, a0, a2
	lw a4, 0(a3)
	addw a0, a1, a4
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s0, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 48
	ret
.p2align 2
label131:
	mv a1, zero
.p2align 2
label7:
	li a3, 2
	bge a1, a3, label134
	mv a3, zero
.p2align 2
label10:
	li a4, 2
	blt a3, a4, label139
	addiw a1, a1, 1
	j label7
.p2align 2
label139:
	mv a4, zero
.p2align 2
label13:
	li a5, 2
	blt a4, a5, label143
	j label142
.p2align 2
label146:
	addiw a4, a4, 1
	j label13
.p2align 2
label143:
	mv a5, zero
.p2align 2
label16:
	li t0, 2
	bge a5, t0, label146
	mv t0, zero
.p2align 2
label19:
	li t1, 2
	bge t0, t1, label150
	mv t1, zero
.p2align 2
label22:
	li t2, 2
	bge t1, t2, label154
	mv t2, zero
.p2align 2
label25:
	li t3, 2
	bge t2, t3, label158
	mv t3, zero
.p2align 2
label28:
	li t4, 2
	bge t3, t4, label162
	mv t4, zero
.p2align 2
label31:
	li t5, 2
	bge t4, t5, label166
	mv t5, zero
.p2align 2
label34:
	li t6, 2
	bge t5, t6, label170
	mv t6, zero
	li a7, 2
	blt zero, a7, label40
.p2align 2
label174:
	addiw t5, t5, 1
	j label34
.p2align 2
label40:
	slli s1, a2, 20
	slli s0, a1, 19
	slli s2, t6, 9
	add a7, a0, s1
	slli s1, a3, 18
	add a7, a7, s0
	slli s0, a4, 17
	add a7, a7, s1
	slli s1, a5, 16
	add a7, a7, s0
	slli s0, t0, 15
	add a7, a7, s1
	slli s1, t1, 14
	add a7, a7, s0
	slli s0, t2, 13
	add a7, a7, s1
	slli s1, t3, 12
	add a7, a7, s0
	slli s0, t4, 11
	add a7, a7, s1
	slli s1, t5, 10
	add a7, a7, s0
	add a7, a7, s1
	mv s1, zero
	add s0, a7, s2
.p2align 2
label41:
	slli s2, s1, 8
	addiw s3, a6, 1
	addiw s4, a6, 14
	addiw s1, s1, 1
	add a7, s0, s2
	sw a6, 0(a7)
	addiw s2, a6, 2
	sw s3, 4(a7)
	addiw s3, a6, 3
	sw s2, 8(a7)
	addiw s2, a6, 4
	sw s3, 12(a7)
	addiw s3, a6, 5
	sw s2, 16(a7)
	addiw s2, a6, 6
	sw s3, 20(a7)
	addiw s3, a6, 7
	sw s2, 24(a7)
	addiw s2, a6, 8
	sw s3, 28(a7)
	addiw s3, a6, 9
	sw s2, 32(a7)
	addiw s2, a6, 10
	sw s3, 36(a7)
	addiw s3, a6, 11
	sw s2, 40(a7)
	addiw s2, a6, 12
	sw s3, 44(a7)
	addiw s3, a6, 13
	sw s2, 48(a7)
	addiw s2, a6, 15
	sw s3, 52(a7)
	addiw s3, a6, 16
	sw s4, 56(a7)
	addiw s4, a6, 18
	sw s2, 60(a7)
	addiw s2, a6, 17
	sw s3, 64(a7)
	addiw s3, a6, 19
	sw s2, 68(a7)
	addiw s2, a6, 20
	sw s4, 72(a7)
	addiw s4, a6, 27
	sw s3, 76(a7)
	addiw s3, a6, 21
	sw s2, 80(a7)
	addiw s2, a6, 22
	sw s3, 84(a7)
	addiw s3, a6, 23
	sw s2, 88(a7)
	addiw s2, a6, 24
	sw s3, 92(a7)
	addiw s3, a6, 25
	sw s2, 96(a7)
	addiw s2, a6, 26
	sw s3, 100(a7)
	addiw s3, a6, 28
	sw s2, 104(a7)
	addiw s2, a6, 29
	sw s4, 108(a7)
	addiw s4, a6, 41
	sw s3, 112(a7)
	addiw s3, a6, 30
	sw s2, 116(a7)
	addiw s2, a6, 31
	sw s3, 120(a7)
	addiw s3, a6, 32
	sw s2, 124(a7)
	addiw s2, a6, 33
	sw s3, 128(a7)
	addiw s3, a6, 34
	sw s2, 132(a7)
	addiw s2, a6, 35
	sw s3, 136(a7)
	addiw s3, a6, 36
	sw s2, 140(a7)
	addiw s2, a6, 37
	sw s3, 144(a7)
	addiw s3, a6, 38
	sw s2, 148(a7)
	addiw s2, a6, 39
	sw s3, 152(a7)
	addiw s3, a6, 40
	sw s2, 156(a7)
	addiw s2, a6, 42
	sw s3, 160(a7)
	addiw s3, a6, 43
	sw s4, 164(a7)
	addiw s4, a6, 44
	sw s2, 168(a7)
	addiw s2, a6, 45
	sw s3, 172(a7)
	addiw s3, a6, 46
	sw s4, 176(a7)
	addiw s4, a6, 47
	sw s2, 180(a7)
	addiw s2, a6, 48
	sw s3, 184(a7)
	addiw s3, a6, 49
	sw s4, 188(a7)
	sw s2, 192(a7)
	addiw s2, a6, 50
	sw s3, 196(a7)
	addiw s3, a6, 51
	sw s2, 200(a7)
	addiw s2, a6, 52
	sw s3, 204(a7)
	addiw s3, a6, 53
	sw s2, 208(a7)
	addiw s2, a6, 54
	sw s3, 212(a7)
	addiw s3, a6, 55
	sw s2, 216(a7)
	addiw s2, a6, 56
	sw s3, 220(a7)
	addiw s3, a6, 57
	sw s2, 224(a7)
	addiw s2, a6, 58
	sw s3, 228(a7)
	addiw s3, a6, 59
	sw s2, 232(a7)
	addiw s2, a6, 60
	sw s3, 236(a7)
	addiw s3, a6, 61
	sw s2, 240(a7)
	addiw s2, a6, 62
	sw s3, 244(a7)
	addiw s3, a6, 63
	sw s2, 248(a7)
	addiw a6, a6, 64
	sw s3, 252(a7)
	li a7, 2
	blt s1, a7, label41
	addiw t6, t6, 1
	blt t6, a7, label40
	j label174
.p2align 2
label154:
	addiw t0, t0, 1
	j label19
.p2align 2
label170:
	addiw t4, t4, 1
	j label31
.p2align 2
label166:
	addiw t3, t3, 1
	j label28
.p2align 2
label158:
	addiw t1, t1, 1
	j label22
.p2align 2
label162:
	addiw t2, t2, 1
	j label25
.p2align 2
label142:
	addiw a3, a3, 1
	j label10
.p2align 2
label150:
	addiw a5, a5, 1
	j label16
