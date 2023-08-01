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
	addi sp, sp, -64
pcrel482:
	auipc a6, %pcrel_hi(array)
	mv a4, zero
	li a0, 2
	lui a2, 128
	addi a3, a6, %pcrel_lo(pcrel482)
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s3, 24(sp)
	sd s1, 32(sp)
	sd s6, 40(sp)
	sd s2, 48(sp)
	sd s4, 56(sp)
label2:
	sh2add a1, a4, a3
	addi a4, a4, 64
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
	blt a4, a2, label2
	mv s0, zero
	mv a2, zero
label4:
	bge a2, a0, label56
	mv a1, zero
label7:
	blt a1, a0, label135
	j label134
label138:
	addiw a1, a1, 1
	j label7
label135:
	mv a5, zero
label10:
	bge a5, a0, label138
	mv a4, zero
label13:
	bge a4, a0, label142
	mv t0, zero
label16:
	bge t0, a0, label146
	mv t1, zero
label19:
	blt t1, a0, label151
	j label150
label154:
	addiw t1, t1, 1
	j label19
label56:
	auipc a6, %pcrel_hi(array)
	lw a1, %pcrel_lo(label56)(a6)
	lw a2, 8(a3)
	lw a4, 4(a3)
	addw a0, a1, a2
	lw a2, 40(a3)
	addw a1, a0, a4
	lw a4, 24(a3)
	addw a0, a1, a2
	lw a2, 228(a3)
	addw a1, a0, a4
	lw a4, 56(a3)
	addw a0, a1, a2
	lw a2, 964(a3)
	addw a1, a0, a4
	li a4, 3224
	addw a0, a1, a2
	lw a1, 224(a3)
	addw a2, a0, a1
	lw a0, 804(a3)
	addw a1, a2, a0
	lw a2, 1996(a3)
	addw a0, a1, a2
	add a2, a3, a4
	li a4, 26400
	lw a1, 0(a2)
	add a2, a3, a4
	addw a0, a0, a1
	lw a1, 0(a2)
	lw a4, 508(a3)
	addw a0, a0, a1
	lw a2, 124(a3)
	addw a1, a0, a4
	li a4, 246672
	addw a0, a1, a2
	add a2, a3, a4
	li a4, 15956
	lw a1, 0(a2)
	addw a0, a0, a1
	add a1, a3, a4
	li a4, 828364
	lw a2, 0(a1)
	addw a0, a0, a2
	add a2, a3, a4
	li a4, 281600
	lw a1, 0(a2)
	add a2, a3, a4
	addw a0, a0, a1
	lw a1, 0(a2)
	addw a0, a0, a1
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s3, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s2, 48(sp)
	ld s4, 56(sp)
	addi sp, sp, 64
	ret
label142:
	addiw a5, a5, 1
	j label10
label150:
	addiw t0, t0, 1
	j label16
label151:
	mv t2, zero
label22:
	blt t2, a0, label155
	j label154
label158:
	addiw t2, t2, 1
	j label22
label155:
	mv t3, zero
label25:
	bge t3, a0, label158
	mv t4, zero
label28:
	blt t4, a0, label163
	j label162
label166:
	addiw t4, t4, 1
	j label28
label163:
	mv t5, zero
label31:
	bge t5, a0, label166
	mv t6, zero
label34:
	bge t6, a0, label170
	mv a7, zero
	blt zero, a0, label40
label174:
	addiw t6, t6, 1
	j label34
label40:
	slli s3, a2, 20
	slli s2, a1, 19
	slli s5, t3, 13
	slli s4, t4, 12
	add s1, a3, s3
	add s3, s1, s2
	slli s1, a5, 18
	add s2, s3, s1
	slli s3, a4, 17
	add s1, s2, s3
	slli s2, t0, 16
	add s3, s1, s2
	slli s1, t1, 15
	add s2, s3, s1
	slli s3, t2, 14
	add s1, s2, s3
	slli s3, t5, 11
	add s2, s1, s5
	slli s5, t6, 10
	add s1, s2, s4
	slli s4, a7, 9
	add s2, s1, s3
	mv s3, zero
	add s1, s2, s5
	add s2, s1, s4
label41:
	slli s4, s3, 8
	addiw s6, s0, 2
	addiw s5, s0, 3
	addiw s3, s3, 1
	add s1, s2, s4
	sw s0, 0(s1)
	addiw s4, s0, 1
	sw s4, 4(s1)
	addiw s4, s0, 4
	sw s6, 8(s1)
	addiw s6, s0, 9
	sw s5, 12(s1)
	addiw s5, s0, 5
	sw s4, 16(s1)
	addiw s4, s0, 6
	sw s5, 20(s1)
	addiw s5, s0, 7
	sw s4, 24(s1)
	addiw s4, s0, 8
	sw s5, 28(s1)
	addiw s5, s0, 10
	sw s4, 32(s1)
	addiw s4, s0, 11
	sw s6, 36(s1)
	addiw s6, s0, 26
	sw s5, 40(s1)
	addiw s5, s0, 12
	sw s4, 44(s1)
	addiw s4, s0, 13
	sw s5, 48(s1)
	addiw s5, s0, 14
	sw s4, 52(s1)
	addiw s4, s0, 15
	sw s5, 56(s1)
	addiw s5, s0, 16
	sw s4, 60(s1)
	addiw s4, s0, 17
	sw s5, 64(s1)
	addiw s5, s0, 18
	sw s4, 68(s1)
	addiw s4, s0, 19
	sw s5, 72(s1)
	addiw s5, s0, 20
	sw s4, 76(s1)
	addiw s4, s0, 21
	sw s5, 80(s1)
	addiw s5, s0, 22
	sw s4, 84(s1)
	addiw s4, s0, 23
	sw s5, 88(s1)
	addiw s5, s0, 24
	sw s4, 92(s1)
	addiw s4, s0, 25
	sw s5, 96(s1)
	addiw s5, s0, 27
	sw s4, 100(s1)
	addiw s4, s0, 28
	sw s6, 104(s1)
	addiw s6, s0, 31
	sw s5, 108(s1)
	addiw s5, s0, 29
	sw s4, 112(s1)
	addiw s4, s0, 30
	sw s5, 116(s1)
	addiw s5, s0, 32
	sw s4, 120(s1)
	addiw s4, s0, 33
	sw s6, 124(s1)
	addiw s6, s0, 42
	sw s5, 128(s1)
	addiw s5, s0, 34
	sw s4, 132(s1)
	addiw s4, s0, 35
	sw s5, 136(s1)
	addiw s5, s0, 36
	sw s4, 140(s1)
	addiw s4, s0, 37
	sw s5, 144(s1)
	addiw s5, s0, 38
	sw s4, 148(s1)
	addiw s4, s0, 39
	sw s5, 152(s1)
	addiw s5, s0, 40
	sw s4, 156(s1)
	addiw s4, s0, 41
	sw s5, 160(s1)
	addiw s5, s0, 43
	sw s4, 164(s1)
	addiw s4, s0, 44
	sw s6, 168(s1)
	addiw s6, s0, 46
	sw s5, 172(s1)
	addiw s5, s0, 45
	sw s4, 176(s1)
	addiw s4, s0, 47
	sw s5, 180(s1)
	addiw s5, s0, 48
	sw s6, 184(s1)
	addiw s6, s0, 50
	sw s4, 188(s1)
	addiw s4, s0, 49
	sw s5, 192(s1)
	addiw s5, s0, 51
	sw s4, 196(s1)
	addiw s4, s0, 52
	sw s6, 200(s1)
	addiw s6, s0, 61
	sw s5, 204(s1)
	addiw s5, s0, 53
	sw s4, 208(s1)
	addiw s4, s0, 54
	sw s5, 212(s1)
	addiw s5, s0, 55
	sw s4, 216(s1)
	addiw s4, s0, 56
	sw s5, 220(s1)
	addiw s5, s0, 57
	sw s4, 224(s1)
	addiw s4, s0, 58
	sw s5, 228(s1)
	addiw s5, s0, 59
	sw s4, 232(s1)
	addiw s4, s0, 60
	sw s5, 236(s1)
	addiw s5, s0, 62
	sw s4, 240(s1)
	addiw s4, s0, 63
	sw s6, 244(s1)
	addiw s0, s0, 64
	sw s5, 248(s1)
	sw s4, 252(s1)
	blt s3, a0, label41
	addiw a7, a7, 1
	blt a7, a0, label40
	j label174
label162:
	addiw t3, t3, 1
	j label25
label146:
	addiw a4, a4, 1
	j label13
label134:
	addiw a2, a2, 1
	j label4
label170:
	addiw t5, t5, 1
	j label31
