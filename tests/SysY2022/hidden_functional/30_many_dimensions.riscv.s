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
	addi sp, sp, -136
pcrel641:
	auipc a1, %pcrel_hi(array)
	mv a2, zero
	addi a0, a1, %pcrel_lo(pcrel641)
	sd ra, 0(sp)
	sd s10, 8(sp)
	li s10, 2
	sd s0, 16(sp)
	addi a1, s10, 2046
	sd s5, 24(sp)
	sd s1, 32(sp)
	sd s6, 40(sp)
	sd s2, 48(sp)
	sd s3, 56(sp)
	sd s4, 64(sp)
	sd s7, 72(sp)
	sd s8, 80(sp)
	sd s9, 88(sp)
	sd s11, 96(sp)
	sd a0, 104(sp)
	sd a1, 112(sp)
label2:
	sd zero, 0(a0)
	addi a2, a2, 64
	lui a1, 128
	sd zero, 8(a0)
	sd zero, 16(a0)
	sd zero, 24(a0)
	sd zero, 32(a0)
	sd zero, 40(a0)
	sd zero, 48(a0)
	sd zero, 56(a0)
	sd zero, 64(a0)
	sd zero, 72(a0)
	sd zero, 80(a0)
	sd zero, 88(a0)
	sd zero, 96(a0)
	sd zero, 104(a0)
	sd zero, 112(a0)
	sd zero, 120(a0)
	sd zero, 128(a0)
	sd zero, 136(a0)
	sd zero, 144(a0)
	sd zero, 152(a0)
	sd zero, 160(a0)
	sd zero, 168(a0)
	sd zero, 176(a0)
	sd zero, 184(a0)
	sd zero, 192(a0)
	sd zero, 200(a0)
	sd zero, 208(a0)
	sd zero, 216(a0)
	sd zero, 224(a0)
	sd zero, 232(a0)
	sd zero, 240(a0)
	sd zero, 248(a0)
	bge a2, a1, label153
	addi a0, a0, 256
	j label2
label153:
	ld a0, 104(sp)
	mv a1, zero
	mv a4, a0
	sd a0, 120(sp)
	sd zero, 128(sp)
	mv a0, zero
label7:
	li s10, 2
	ld a1, 128(sp)
	bge a1, s10, label11
	ld a4, 120(sp)
	mv a2, zero
label13:
	li s10, 2
	blt a2, s10, label17
	j label217
label221:
	addiw a2, a2, 1
	lui a1, 128
	add a4, a4, a1
	j label13
label17:
	mv t0, a4
	mv a5, zero
label18:
	li s10, 2
	bge a5, s10, label221
	mv t1, t0
	mv a3, zero
label23:
	li s10, 2
	bge a3, s10, label225
	mv t2, t1
	mv t3, zero
	bge zero, s10, label229
label32:
	mv t4, t2
	mv t5, zero
	li s10, 2
	blt zero, s10, label38
label37:
	addiw t3, t3, 1
	lui a1, 16
	li s10, 2
	add t2, t2, a1
	blt t3, s10, label32
	j label229
label38:
	mv t6, t4
	mv a6, zero
	li s10, 2
	bge zero, s10, label43
label44:
	mv a7, t6
	mv s0, zero
	li s10, 2
	bge zero, s10, label49
label50:
	mv s1, a7
	mv s2, zero
	j label51
label43:
	addiw t5, t5, 1
	lui a1, 8
	li s10, 2
	add t4, t4, a1
	blt t5, s10, label38
	j label37
label11:
	auipc a1, %pcrel_hi(array)
	lw a2, %pcrel_lo(label11)(a1)
	ld a0, 104(sp)
	lw a4, 8(a0)
	lw a5, 4(a0)
	addw a1, a2, a4
	lw a4, 40(a0)
	addw a3, a1, a5
	lw a5, 24(a0)
	addw a2, a3, a4
	lw t0, 228(a0)
	addw a1, a2, a5
	lw a4, 56(a0)
	addw a3, a1, t0
	lw t0, 964(a0)
	addw a2, a3, a4
	lw a5, 224(a0)
	addw a1, a2, t0
	lw t0, 804(a0)
	addw a3, a1, a5
	lw a1, 1996(a0)
	addw a4, a3, t0
	li t0, 403
	addw a2, a4, a1
	slli a5, t0, 3
	li t0, 825
	add a3, a0, a5
	lw a4, 0(a3)
	slli a3, t0, 5
	addw a1, a2, a4
	add a4, a0, a3
	lw a5, 0(a4)
	lw t0, 508(a0)
	addw a2, a1, a5
	lw a4, 124(a0)
	addw a3, a2, t0
	lui t0, 4
	lui a2, 60
	addw a1, a3, a4
	addiw a5, a2, 912
	add a3, a0, a5
	lw a4, 0(a3)
	addiw a3, t0, -428
	addw a2, a1, a4
	lui t0, 202
	add a4, a0, a3
	addiw a3, t0, 972
	lw a5, 0(a4)
	li t0, 275
	addw a1, a2, a5
	add a5, a0, a3
	slli a3, t0, 10
	lw a4, 0(a5)
	addw a2, a1, a4
	add a1, a0, a3
	lw a4, 0(a1)
	addw a0, a2, a4
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	ld s10, 8(sp)
	ld s0, 16(sp)
	ld s5, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s2, 48(sp)
	ld s3, 56(sp)
	ld s4, 64(sp)
	ld s7, 72(sp)
	ld s8, 80(sp)
	ld s9, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 136
	ret
label229:
	addiw a3, a3, 1
	lui a1, 32
	add t1, t1, a1
	j label23
label49:
	addiw a6, a6, 1
	lui a1, 4
	li s10, 2
	add t6, t6, a1
	blt a6, s10, label44
	j label43
label51:
	li s10, 2
	blt s2, s10, label56
	j label55
label257:
	addiw s2, s2, 1
	lui a1, 1
	add s1, s1, a1
	j label51
label55:
	addiw s0, s0, 1
	lui a1, 2
	li s10, 2
	add a7, a7, a1
	blt s0, s10, label50
	j label49
label217:
	ld a1, 128(sp)
	lui a2, 256
	ld a4, 120(sp)
	addiw a1, a1, 1
	add a4, a4, a2
	sd a4, 120(sp)
	sd a1, 128(sp)
	j label7
label225:
	addiw a5, a5, 1
	lui a1, 64
	add t0, t0, a1
	j label18
label56:
	mv s3, s1
	mv s4, zero
label57:
	li s10, 2
	blt s4, s10, label61
	j label257
label261:
	addiw s4, s4, 1
	ld a1, 112(sp)
	add s3, s3, a1
	j label57
label71:
	addiw s6, s6, 1
	addi s5, s5, 1024
	li s10, 2
	blt s6, s10, label66
	j label261
label61:
	mv s5, s3
	mv s6, zero
	li s10, 2
	bge zero, s10, label261
label66:
	mv s7, s5
	mv s8, zero
label67:
	li s10, 2
	bge s8, s10, label71
	mv a1, s7
	mv s9, zero
label73:
	addiw s11, a0, 1
	addiw s9, s9, 1
	slli s10, s11, 32
	add.uw s11, a0, s10
	addiw s10, a0, 2
	sd s11, 0(a1)
	addiw s11, a0, 3
	slli s11, s11, 32
	add.uw s11, s10, s11
	addiw s10, a0, 5
	sd s11, 8(a1)
	slli s10, s10, 32
	addiw s11, a0, 4
	add.uw s10, s11, s10
	addiw s11, a0, 7
	sd s10, 16(a1)
	slli s11, s11, 32
	addiw s10, a0, 6
	add.uw s11, s10, s11
	addiw s10, a0, 9
	sd s11, 24(a1)
	slli s10, s10, 32
	addiw s11, a0, 8
	add.uw s10, s11, s10
	addiw s11, a0, 11
	sd s10, 32(a1)
	slli s11, s11, 32
	addiw s10, a0, 10
	add.uw s10, s10, s11
	addiw s11, a0, 12
	sd s10, 40(a1)
	addiw s10, a0, 13
	slli s10, s10, 32
	add.uw s10, s11, s10
	addiw s11, a0, 15
	sd s10, 48(a1)
	slli s11, s11, 32
	addiw s10, a0, 14
	add.uw s10, s10, s11
	addiw s11, a0, 17
	sd s10, 56(a1)
	slli s11, s11, 32
	addiw s10, a0, 16
	add.uw s11, s10, s11
	addiw s10, a0, 19
	sd s11, 64(a1)
	slli s10, s10, 32
	addiw s11, a0, 18
	add.uw s10, s11, s10
	addiw s11, a0, 21
	sd s10, 72(a1)
	slli s11, s11, 32
	addiw s10, a0, 20
	add.uw s11, s10, s11
	addiw s10, a0, 23
	sd s11, 80(a1)
	slli s10, s10, 32
	addiw s11, a0, 22
	add.uw s10, s11, s10
	addiw s11, a0, 25
	sd s10, 88(a1)
	slli s11, s11, 32
	addiw s10, a0, 24
	add.uw s10, s10, s11
	addiw s11, a0, 27
	sd s10, 96(a1)
	slli s11, s11, 32
	addiw s10, a0, 26
	add.uw s11, s10, s11
	addiw s10, a0, 29
	sd s11, 104(a1)
	slli s10, s10, 32
	addiw s11, a0, 28
	add.uw s10, s11, s10
	addiw s11, a0, 31
	sd s10, 112(a1)
	slli s11, s11, 32
	addiw s10, a0, 30
	add.uw s10, s10, s11
	addiw s11, a0, 32
	sd s10, 120(a1)
	addiw s10, a0, 33
	slli s10, s10, 32
	add.uw s10, s11, s10
	addiw s11, a0, 35
	sd s10, 128(a1)
	slli s11, s11, 32
	addiw s10, a0, 34
	add.uw s10, s10, s11
	addiw s11, a0, 36
	sd s10, 136(a1)
	addiw s10, a0, 37
	slli s10, s10, 32
	add.uw s10, s11, s10
	addiw s11, a0, 39
	sd s10, 144(a1)
	slli s11, s11, 32
	addiw s10, a0, 38
	add.uw s10, s10, s11
	addiw s11, a0, 40
	sd s10, 152(a1)
	addiw s10, a0, 41
	slli s10, s10, 32
	add.uw s10, s11, s10
	addiw s11, a0, 43
	sd s10, 160(a1)
	slli s11, s11, 32
	addiw s10, a0, 42
	add.uw s10, s10, s11
	addiw s11, a0, 45
	sd s10, 168(a1)
	slli s11, s11, 32
	addiw s10, a0, 44
	add.uw s11, s10, s11
	addiw s10, a0, 47
	sd s11, 176(a1)
	slli s10, s10, 32
	addiw s11, a0, 46
	add.uw s10, s11, s10
	addiw s11, a0, 49
	sd s10, 184(a1)
	slli s11, s11, 32
	addiw s10, a0, 48
	add.uw s10, s10, s11
	addiw s11, a0, 50
	sd s10, 192(a1)
	addiw s10, a0, 51
	slli s10, s10, 32
	add.uw s10, s11, s10
	addiw s11, a0, 53
	sd s10, 200(a1)
	slli s11, s11, 32
	addiw s10, a0, 52
	add.uw s10, s10, s11
	addiw s11, a0, 54
	sd s10, 208(a1)
	addiw s10, a0, 55
	slli s10, s10, 32
	add.uw s10, s11, s10
	addiw s11, a0, 57
	sd s10, 216(a1)
	slli s11, s11, 32
	addiw s10, a0, 56
	add.uw s11, s10, s11
	addiw s10, a0, 59
	sd s11, 224(a1)
	slli s10, s10, 32
	addiw s11, a0, 58
	add.uw s10, s11, s10
	addiw s11, a0, 61
	sd s10, 232(a1)
	slli s11, s11, 32
	addiw s10, a0, 60
	add.uw s11, s10, s11
	addiw s10, a0, 63
	sd s11, 240(a1)
	slli s10, s10, 32
	addiw s11, a0, 62
	addiw a0, a0, 64
	add.uw s10, s11, s10
	sd s10, 248(a1)
	li s10, 2
	bge s9, s10, label399
	addi a1, a1, 256
	j label73
label399:
	addiw s8, s8, 1
	addi s7, s7, 512
	j label67
