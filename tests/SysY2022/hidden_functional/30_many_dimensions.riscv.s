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
	addi sp, sp, -72
pcrel610:
	auipc a6, %pcrel_hi(array)
	mv a4, zero
	li a0, 2
	lui a3, 128
	addi a1, a6, %pcrel_lo(pcrel610)
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s2, 24(sp)
	sd s1, 32(sp)
	sd s6, 40(sp)
	sd s4, 48(sp)
	sd s3, 56(sp)
	sd s7, 64(sp)
.p2align 2
label2:
	sh2add a2, a4, a1
	addi a4, a4, 64
	sd zero, 0(a2)
	sd zero, 8(a2)
	sd zero, 16(a2)
	sd zero, 24(a2)
	sd zero, 32(a2)
	sd zero, 40(a2)
	sd zero, 48(a2)
	sd zero, 56(a2)
	sd zero, 64(a2)
	sd zero, 72(a2)
	sd zero, 80(a2)
	sd zero, 88(a2)
	sd zero, 96(a2)
	sd zero, 104(a2)
	sd zero, 112(a2)
	sd zero, 120(a2)
	sd zero, 128(a2)
	sd zero, 136(a2)
	sd zero, 144(a2)
	sd zero, 152(a2)
	sd zero, 160(a2)
	sd zero, 168(a2)
	sd zero, 176(a2)
	sd zero, 184(a2)
	sd zero, 192(a2)
	sd zero, 200(a2)
	sd zero, 208(a2)
	sd zero, 216(a2)
	sd zero, 224(a2)
	sd zero, 232(a2)
	sd zero, 240(a2)
	sd zero, 248(a2)
	blt a4, a3, label2
	mv s0, zero
	mv a3, zero
label4:
	blt a3, a0, label131
	j label56
label134:
	addiw a3, a3, 1
	j label4
label131:
	mv a4, zero
label7:
	bge a4, a0, label134
	mv a2, zero
label10:
	blt a2, a0, label139
	j label138
label142:
	addiw a2, a2, 1
	j label10
label56:
	auipc a6, %pcrel_hi(array)
	lw a2, %pcrel_lo(label56)(a6)
	lw a3, 8(a1)
	lw a4, 4(a1)
	addw a0, a2, a3
	lw a3, 40(a1)
	addw a2, a0, a4
	lw a4, 24(a1)
	addw a0, a2, a3
	lw a3, 228(a1)
	addw a2, a0, a4
	lw a4, 56(a1)
	addw a0, a2, a3
	lw a3, 964(a1)
	addw a2, a0, a4
	li a4, 3224
	addw a0, a2, a3
	lw a2, 224(a1)
	addw a3, a0, a2
	lw a0, 804(a1)
	addw a2, a3, a0
	lw a3, 1996(a1)
	addw a0, a2, a3
	add a3, a1, a4
	li a4, 26400
	lw a2, 0(a3)
	addw a0, a0, a2
	add a2, a1, a4
	lw a3, 0(a2)
	lw a4, 508(a1)
	addw a0, a0, a3
	lw a3, 124(a1)
	addw a2, a0, a4
	li a4, 246672
	addw a0, a2, a3
	add a3, a1, a4
	li a4, 15956
	lw a2, 0(a3)
	addw a0, a0, a2
	add a2, a1, a4
	li a4, 828364
	lw a3, 0(a2)
	addw a0, a0, a3
	add a3, a1, a4
	lw a2, 0(a3)
	li a3, 281600
	addw a0, a0, a2
	add a2, a1, a3
	lw a1, 0(a2)
	addw a0, a0, a1
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s4, 48(sp)
	ld s3, 56(sp)
	ld s7, 64(sp)
	addi sp, sp, 72
	ret
label139:
	mv a5, zero
label13:
	bge a5, a0, label142
	mv t0, zero
label16:
	blt t0, a0, label147
	addiw a5, a5, 1
	j label13
label147:
	mv t1, zero
.p2align 2
label19:
	bge t1, a0, label150
	mv t2, zero
.p2align 2
label22:
	blt t2, a0, label155
	j label154
.p2align 2
label158:
	addiw t2, t2, 1
	j label22
.p2align 2
label155:
	mv t3, zero
.p2align 2
label25:
	bge t3, a0, label158
	mv t4, zero
.p2align 2
label28:
	blt t4, a0, label163
	j label162
.p2align 2
label166:
	addiw t4, t4, 1
	j label28
.p2align 2
label163:
	mv t5, zero
.p2align 2
label31:
	bge t5, a0, label166
	mv t6, zero
.p2align 2
label34:
	bge t6, a0, label170
	mv a7, zero
	blt zero, a0, label40
.p2align 2
label174:
	addiw t6, t6, 1
	j label34
.p2align 2
label40:
	slli s2, a3, 20
	slli s4, a4, 19
	slli s3, a2, 18
	add s1, a1, s2
	add s2, s1, s4
	slli s4, t1, 15
	add s1, s2, s3
	slli s2, a5, 17
	add s3, s1, s2
	slli s1, t0, 16
	add s2, s3, s1
	slli s3, t2, 14
	add s1, s2, s4
	slli s4, t3, 13
	add s2, s1, s3
	slli s3, t4, 12
	add s1, s2, s4
	slli s4, a7, 9
	add s2, s1, s3
	slli s1, t5, 11
	add s3, s2, s1
	slli s2, t6, 10
	add s1, s3, s2
	mv s3, zero
	add s2, s1, s4
.p2align 2
label41:
	slli s4, s3, 8
	addiw s6, s0, 1
	addiw s7, s0, 3
	addiw s3, s3, 1
	add s1, s2, s4
	slli s4, s6, 32
	add.uw s5, s0, s4
	addiw s4, s0, 2
	sd s5, 0(s1)
	slli s5, s7, 32
	addiw s7, s0, 5
	add.uw s6, s4, s5
	addiw s4, s0, 4
	sd s6, 8(s1)
	slli s6, s7, 32
	addiw s7, s0, 7
	add.uw s5, s4, s6
	addiw s4, s0, 6
	sd s5, 16(s1)
	slli s5, s7, 32
	add.uw s6, s4, s5
	addiw s4, s0, 8
	sd s6, 24(s1)
	addiw s6, s0, 9
	slli s5, s6, 32
	add.uw s7, s4, s5
	addiw s4, s0, 10
	sd s7, 32(s1)
	addiw s7, s0, 11
	slli s5, s7, 32
	addiw s7, s0, 13
	add.uw s6, s4, s5
	slli s5, s7, 32
	addiw s4, s0, 12
	sd s6, 40(s1)
	addiw s7, s0, 15
	add.uw s6, s4, s5
	slli s5, s7, 32
	addiw s4, s0, 14
	sd s6, 48(s1)
	add.uw s6, s4, s5
	addiw s4, s0, 16
	sd s6, 56(s1)
	addiw s6, s0, 17
	slli s7, s6, 32
	addiw s6, s0, 19
	add.uw s5, s4, s7
	addiw s4, s0, 18
	sd s5, 64(s1)
	slli s5, s6, 32
	add.uw s7, s4, s5
	addiw s5, s0, 21
	addiw s4, s0, 20
	sd s7, 72(s1)
	slli s6, s5, 32
	add.uw s7, s4, s6
	addiw s4, s0, 22
	sd s7, 80(s1)
	addiw s7, s0, 23
	slli s5, s7, 32
	add.uw s6, s4, s5
	addiw s4, s0, 24
	sd s6, 88(s1)
	addiw s6, s0, 25
	slli s7, s6, 32
	add.uw s5, s4, s7
	addiw s4, s0, 26
	sd s5, 96(s1)
	addiw s5, s0, 27
	slli s7, s5, 32
	addiw s5, s0, 29
	add.uw s6, s4, s7
	addiw s4, s0, 28
	sd s6, 104(s1)
	slli s6, s5, 32
	add.uw s7, s4, s6
	addiw s6, s0, 31
	addiw s4, s0, 30
	sd s7, 112(s1)
	slli s5, s6, 32
	add.uw s7, s4, s5
	addiw s4, s0, 32
	sd s7, 120(s1)
	addiw s7, s0, 33
	slli s5, s7, 32
	add.uw s6, s4, s5
	addiw s5, s0, 35
	addiw s4, s0, 34
	sd s6, 128(s1)
	slli s7, s5, 32
	add.uw s6, s4, s7
	addiw s7, s0, 37
	addiw s4, s0, 36
	sd s6, 136(s1)
	slli s5, s7, 32
	add.uw s6, s4, s5
	addiw s5, s0, 39
	addiw s4, s0, 38
	sd s6, 144(s1)
	slli s7, s5, 32
	addiw s5, s0, 41
	add.uw s6, s4, s7
	slli s7, s5, 32
	addiw s4, s0, 40
	sd s6, 152(s1)
	addiw s5, s0, 43
	add.uw s6, s4, s7
	slli s7, s5, 32
	addiw s4, s0, 42
	sd s6, 160(s1)
	add.uw s6, s4, s7
	addiw s4, s0, 44
	sd s6, 168(s1)
	addiw s6, s0, 45
	slli s7, s6, 32
	add.uw s5, s4, s7
	addiw s7, s0, 47
	addiw s4, s0, 46
	sd s5, 176(s1)
	slli s6, s7, 32
	addiw s7, s0, 49
	add.uw s5, s4, s6
	addiw s4, s0, 48
	sd s5, 184(s1)
	slli s5, s7, 32
	add.uw s6, s4, s5
	addiw s4, s0, 50
	sd s6, 192(s1)
	addiw s6, s0, 51
	slli s5, s6, 32
	addiw s6, s0, 53
	add.uw s7, s4, s5
	addiw s4, s0, 52
	sd s7, 200(s1)
	slli s7, s6, 32
	addiw s6, s0, 55
	add.uw s5, s4, s7
	addiw s4, s0, 54
	sd s5, 208(s1)
	slli s5, s6, 32
	add.uw s7, s4, s5
	addiw s4, s0, 56
	sd s7, 216(s1)
	addiw s7, s0, 57
	slli s5, s7, 32
	add.uw s6, s4, s5
	addiw s5, s0, 59
	addiw s4, s0, 58
	sd s6, 224(s1)
	slli s7, s5, 32
	addiw s5, s0, 61
	add.uw s6, s4, s7
	slli s7, s5, 32
	addiw s4, s0, 60
	sd s6, 232(s1)
	add.uw s6, s4, s7
	addiw s4, s0, 62
	sd s6, 240(s1)
	addiw s6, s0, 63
	addiw s0, s0, 64
	slli s5, s6, 32
	add.uw s4, s4, s5
	sd s4, 248(s1)
	blt s3, a0, label41
	addiw a7, a7, 1
	blt a7, a0, label40
	j label174
label138:
	addiw a4, a4, 1
	j label7
.p2align 2
label162:
	addiw t3, t3, 1
	j label25
.p2align 2
label170:
	addiw t5, t5, 1
	j label31
.p2align 2
label154:
	addiw t1, t1, 1
	j label19
label150:
	addiw t0, t0, 1
	j label16
