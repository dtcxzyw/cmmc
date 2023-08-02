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
pcrel616:
	auipc a6, %pcrel_hi(array)
	mv a3, zero
	li a0, 2
	lui a2, 128
	addi a4, a6, %pcrel_lo(pcrel616)
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s2, 24(sp)
	sd s1, 32(sp)
	sd s6, 40(sp)
	sd s4, 48(sp)
	sd s3, 56(sp)
	sd s7, 64(sp)
label2:
	sh2add a1, a3, a4
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
	blt a3, a2, label2
	mv s0, zero
	mv a1, zero
label4:
	bge a1, a0, label56
	mv a2, zero
label7:
	blt a2, a0, label135
	addiw a1, a1, 1
	j label4
label56:
	auipc a6, %pcrel_hi(array)
	lw a0, %pcrel_lo(label56)(a6)
	li a5, 825
	lw a2, 8(a4)
	lw a3, 4(a4)
	addw a1, a0, a2
	lw a2, 40(a4)
	addw a0, a1, a3
	lw a3, 24(a4)
	addw a1, a0, a2
	lw a2, 228(a4)
	addw a0, a1, a3
	lw a3, 56(a4)
	addw a1, a0, a2
	lw a2, 964(a4)
	addw a0, a1, a3
	lw a3, 224(a4)
	addw a1, a0, a2
	lw a2, 804(a4)
	addw a0, a1, a3
	lw a3, 1996(a4)
	addw a1, a0, a2
	li a2, 403
	addw a0, a1, a3
	slli a1, a2, 3
	add a3, a4, a1
	lw a2, 0(a3)
	slli a3, a5, 5
	addw a0, a0, a2
	lui a5, 4
	add a1, a4, a3
	lw a2, 0(a1)
	lw a3, 508(a4)
	addw a0, a0, a2
	lw a2, 124(a4)
	addw a1, a0, a3
	addw a0, a1, a2
	lui a1, 60
	addiw a3, a1, 912
	add a2, a4, a3
	addiw a3, a5, -428
	lw a1, 0(a2)
	add a2, a4, a3
	addw a0, a0, a1
	lui a3, 202
	lw a1, 0(a2)
	addiw a2, a3, 972
	addw a0, a0, a1
	add a1, a4, a2
	lw a3, 0(a1)
	li a1, 275
	addw a0, a0, a3
	slli a2, a1, 10
	add a3, a4, a2
	lw a1, 0(a3)
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
label135:
	mv a3, zero
label10:
	blt a3, a0, label139
	j label138
label142:
	addiw a3, a3, 1
	j label10
label139:
	mv a5, zero
label13:
	bge a5, a0, label142
	mv t0, zero
label16:
	blt t0, a0, label147
	j label146
label150:
	addiw t0, t0, 1
	j label16
label147:
	mv t1, zero
label19:
	bge t1, a0, label150
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
	bge t4, a0, label162
	mv t5, zero
label31:
	blt t5, a0, label167
	j label166
label170:
	addiw t5, t5, 1
	j label31
label167:
	mv t6, zero
label34:
	bge t6, a0, label170
	mv a7, zero
	blt zero, a0, label40
label174:
	addiw t6, t6, 1
	j label34
label40:
	slli s2, a1, 20
	slli s4, a2, 19
	slli s3, a3, 18
	add s1, a4, s2
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
label41:
	slli s4, s3, 8
	addiw s6, s0, 1
	addiw s7, s0, 3
	addiw s3, s3, 1
	add s1, s2, s4
	slli s4, s6, 32
	slli s6, s7, 32
	add.uw s5, s0, s4
	addiw s4, s0, 2
	sd s5, 0(s1)
	add.uw s5, s4, s6
	addiw s6, s0, 5
	addiw s4, s0, 4
	sd s5, 8(s1)
	slli s7, s6, 32
	addiw s6, s0, 7
	add.uw s5, s4, s7
	slli s7, s6, 32
	addiw s4, s0, 6
	sd s5, 16(s1)
	add.uw s5, s4, s7
	addiw s7, s0, 9
	addiw s4, s0, 8
	sd s5, 24(s1)
	slli s5, s7, 32
	add.uw s6, s4, s5
	addiw s5, s0, 11
	addiw s4, s0, 10
	sd s6, 32(s1)
	slli s7, s5, 32
	add.uw s6, s4, s7
	addiw s7, s0, 13
	addiw s4, s0, 12
	sd s6, 40(s1)
	slli s6, s7, 32
	addiw s7, s0, 15
	add.uw s5, s4, s6
	slli s6, s7, 32
	addiw s4, s0, 14
	sd s5, 48(s1)
	add.uw s5, s4, s6
	addiw s4, s0, 16
	sd s5, 56(s1)
	addiw s5, s0, 17
	slli s7, s5, 32
	addiw s5, s0, 19
	add.uw s6, s4, s7
	addiw s4, s0, 18
	sd s6, 64(s1)
	slli s6, s5, 32
	add.uw s7, s4, s6
	addiw s4, s0, 20
	sd s7, 72(s1)
	addiw s7, s0, 21
	slli s5, s7, 32
	add.uw s6, s4, s5
	addiw s5, s0, 23
	addiw s4, s0, 22
	sd s6, 80(s1)
	slli s6, s5, 32
	add.uw s7, s4, s6
	addiw s6, s0, 25
	addiw s4, s0, 24
	sd s7, 88(s1)
	slli s7, s6, 32
	add.uw s5, s4, s7
	addiw s4, s0, 26
	sd s5, 96(s1)
	addiw s5, s0, 27
	slli s7, s5, 32
	add.uw s6, s4, s7
	addiw s4, s0, 28
	sd s6, 104(s1)
	addiw s6, s0, 29
	slli s7, s6, 32
	add.uw s5, s4, s7
	addiw s4, s0, 30
	sd s5, 112(s1)
	addiw s5, s0, 31
	slli s6, s5, 32
	add.uw s7, s4, s6
	addiw s4, s0, 32
	sd s7, 120(s1)
	addiw s7, s0, 33
	slli s6, s7, 32
	add.uw s5, s4, s6
	addiw s4, s0, 34
	sd s5, 128(s1)
	addiw s5, s0, 35
	slli s6, s5, 32
	add.uw s7, s4, s6
	addiw s4, s0, 36
	sd s7, 136(s1)
	addiw s7, s0, 37
	slli s6, s7, 32
	addiw s7, s0, 39
	add.uw s5, s4, s6
	addiw s4, s0, 38
	sd s5, 144(s1)
	slli s5, s7, 32
	add.uw s6, s4, s5
	addiw s5, s0, 41
	addiw s4, s0, 40
	sd s6, 152(s1)
	slli s7, s5, 32
	add.uw s6, s4, s7
	addiw s7, s0, 43
	addiw s4, s0, 42
	sd s6, 160(s1)
	slli s6, s7, 32
	addiw s7, s0, 45
	add.uw s5, s4, s6
	slli s6, s7, 32
	addiw s4, s0, 44
	sd s5, 168(s1)
	add.uw s5, s4, s6
	addiw s4, s0, 46
	sd s5, 176(s1)
	addiw s5, s0, 47
	slli s7, s5, 32
	add.uw s6, s4, s7
	addiw s7, s0, 49
	addiw s4, s0, 48
	sd s6, 184(s1)
	slli s6, s7, 32
	add.uw s5, s4, s6
	addiw s6, s0, 51
	addiw s4, s0, 50
	sd s5, 192(s1)
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
	slli s6, s7, 32
	add.uw s5, s4, s6
	addiw s4, s0, 58
	sd s5, 224(s1)
	addiw s5, s0, 59
	slli s6, s5, 32
	add.uw s7, s4, s6
	addiw s6, s0, 61
	addiw s4, s0, 60
	sd s7, 232(s1)
	slli s5, s6, 32
	add.uw s7, s4, s5
	addiw s5, s0, 63
	addiw s4, s0, 62
	sd s7, 240(s1)
	slli s6, s5, 32
	addiw s0, s0, 64
	add.uw s4, s4, s6
	sd s4, 248(s1)
	blt s3, a0, label41
	addiw a7, a7, 1
	blt a7, a0, label40
	j label174
label138:
	addiw a2, a2, 1
	j label7
label166:
	addiw t4, t4, 1
	j label28
label146:
	addiw a5, a5, 1
	j label13
label154:
	addiw t1, t1, 1
	j label19
label162:
	addiw t3, t3, 1
	j label25
