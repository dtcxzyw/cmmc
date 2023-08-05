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
pcrel643:
	auipc a2, %pcrel_hi(array)
	sd ra, 0(sp)
	addi a0, a2, %pcrel_lo(pcrel643)
	sd s10, 8(sp)
	mv a2, zero
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
.p2align 2
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
	mv t1, a0
	sd a0, 120(sp)
	sd zero, 128(sp)
	mv a0, zero
label7:
	li s10, 2
	ld a1, 128(sp)
	blt a1, s10, label11
	j label84
label162:
	ld a1, 128(sp)
	lui a2, 256
	ld t1, 120(sp)
	addiw a1, a1, 1
	add t1, t1, a2
	sd t1, 120(sp)
	sd a1, 128(sp)
	j label7
label84:
	auipc a2, %pcrel_hi(array)
	lw a1, %pcrel_lo(label84)(a2)
	ld a0, 104(sp)
	lw a4, 8(a0)
	lw t0, 4(a0)
	addw a2, a1, a4
	lw a5, 40(a0)
	addw a3, a2, t0
	lw t0, 24(a0)
	addw a4, a3, a5
	lw a5, 228(a0)
	addw a1, a4, t0
	lw t0, 56(a0)
	addw a2, a1, a5
	lw a4, 964(a0)
	addw a3, a2, t0
	lw a5, 224(a0)
	li t0, 825
	addw a1, a3, a4
	lw a4, 804(a0)
	addw a2, a1, a5
	lw a5, 1996(a0)
	addw a3, a2, a4
	li a2, 403
	addw a1, a3, a5
	slli a4, a2, 3
	add a5, a0, a4
	slli a4, t0, 5
	lw a3, 0(a5)
	addw a2, a1, a3
	add a1, a0, a4
	lw a5, 0(a1)
	lw t0, 508(a0)
	addw a3, a2, a5
	lw a2, 124(a0)
	addw a4, a3, t0
	lui t0, 60
	addw a1, a4, a2
	addiw a3, t0, 912
	lui t0, 4
	add a5, a0, a3
	lw a4, 0(a5)
	addiw a5, t0, -428
	addw a2, a1, a4
	lui t0, 202
	add a4, a0, a5
	lw a3, 0(a4)
	addiw a4, t0, 972
	addw a1, a2, a3
	li t0, 275
	add a3, a0, a4
	lw a5, 0(a3)
	slli a3, t0, 10
	addw a2, a1, a5
	add a4, a0, a3
	lw a1, 0(a4)
	addw a0, a2, a1
	jal putint
	mv a0, zero
	ld ra, 0(sp)
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
label11:
	ld t1, 120(sp)
	mv a3, zero
label12:
	li s10, 2
	bge a3, s10, label162
	mv a2, t1
	mv a4, zero
.p2align 2
label17:
	li s10, 2
	bge a4, s10, label166
	mv a5, a2
	mv t0, zero
.p2align 2
label22:
	li s10, 2
	bge t0, s10, label170
	mv t2, a5
	mv t3, zero
	blt zero, s10, label31
.p2align 2
label174:
	addiw t0, t0, 1
	lui a1, 32
	add a5, a5, a1
	j label22
.p2align 2
label31:
	mv t4, t2
	mv t5, zero
	li s10, 2
	blt zero, s10, label37
.p2align 2
label36:
	addiw t3, t3, 1
	lui a1, 16
	li s10, 2
	add t2, t2, a1
	blt t3, s10, label31
	j label174
.p2align 2
label37:
	mv t6, t4
	mv a6, zero
	j label38
.p2align 2
label42:
	addiw t5, t5, 1
	lui a1, 8
	li s10, 2
	add t4, t4, a1
	blt t5, s10, label37
	j label36
.p2align 2
label48:
	addiw a6, a6, 1
	lui a1, 4
	li s10, 2
	add t6, t6, a1
	blt a6, s10, label43
	j label42
.p2align 2
label38:
	li s10, 2
	bge a6, s10, label42
.p2align 2
label43:
	mv a7, t6
	mv s0, zero
.p2align 2
label44:
	li s10, 2
	bge s0, s10, label48
	mv s1, a7
	mv s2, zero
.p2align 2
label50:
	li s10, 2
	blt s2, s10, label54
	addiw s0, s0, 1
	lui a1, 2
	add a7, a7, a1
	j label44
.p2align 2
label54:
	mv s3, s1
	mv s4, zero
.p2align 2
label55:
	li s10, 2
	bge s4, s10, label200
	mv s5, s3
	mv s6, zero
.p2align 2
label60:
	li s10, 2
	blt s6, s10, label64
	j label204
.p2align 2
label208:
	addiw s6, s6, 1
	addi s5, s5, 1024
	j label60
.p2align 2
label64:
	mv s7, s5
	mv s8, zero
.p2align 2
label65:
	li s10, 2
	bge s8, s10, label208
	mv a1, s7
	mv s9, zero
.p2align 2
label70:
	addiw s11, a0, 1
	addiw s9, s9, 1
	slli s10, s11, 32
	add.uw s11, a0, s10
	addiw s10, a0, 3
	sd s11, 0(a1)
	slli s10, s10, 32
	addiw s11, a0, 2
	add.uw s10, s11, s10
	addiw s11, a0, 5
	sd s10, 8(a1)
	slli s11, s11, 32
	addiw s10, a0, 4
	add.uw s11, s10, s11
	addiw s10, a0, 7
	sd s11, 16(a1)
	slli s10, s10, 32
	addiw s11, a0, 6
	add.uw s10, s11, s10
	addiw s11, a0, 9
	sd s10, 24(a1)
	slli s11, s11, 32
	addiw s10, a0, 8
	add.uw s10, s10, s11
	addiw s11, a0, 10
	sd s10, 32(a1)
	addiw s10, a0, 11
	slli s10, s10, 32
	add.uw s10, s11, s10
	addiw s11, a0, 13
	sd s10, 40(a1)
	slli s11, s11, 32
	addiw s10, a0, 12
	add.uw s11, s10, s11
	addiw s10, a0, 15
	sd s11, 48(a1)
	slli s10, s10, 32
	addiw s11, a0, 14
	add.uw s10, s11, s10
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
	add.uw s11, s10, s11
	addiw s10, a0, 33
	sd s11, 120(a1)
	slli s10, s10, 32
	addiw s11, a0, 32
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
	add.uw s11, s10, s11
	addiw s10, a0, 41
	sd s11, 152(a1)
	slli s10, s10, 32
	addiw s11, a0, 40
	add.uw s10, s11, s10
	addiw s11, a0, 43
	sd s10, 160(a1)
	slli s11, s11, 32
	addiw s10, a0, 42
	add.uw s11, s10, s11
	addiw s10, a0, 44
	sd s11, 168(a1)
	addiw s11, a0, 45
	slli s11, s11, 32
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
	add.uw s11, s10, s11
	addiw s10, a0, 50
	sd s11, 192(a1)
	addiw s11, a0, 51
	slli s11, s11, 32
	add.uw s11, s10, s11
	addiw s10, a0, 53
	sd s11, 200(a1)
	slli s10, s10, 32
	addiw s11, a0, 52
	add.uw s10, s11, s10
	addiw s11, a0, 55
	sd s10, 208(a1)
	slli s11, s11, 32
	addiw s10, a0, 54
	add.uw s11, s10, s11
	addiw s10, a0, 57
	sd s11, 216(a1)
	slli s10, s10, 32
	addiw s11, a0, 56
	add.uw s10, s11, s10
	addiw s11, a0, 59
	sd s10, 224(a1)
	slli s11, s11, 32
	addiw s10, a0, 58
	add.uw s10, s10, s11
	addiw s11, a0, 60
	sd s10, 232(a1)
	addiw s10, a0, 61
	slli s10, s10, 32
	add.uw s10, s11, s10
	addiw s11, a0, 63
	sd s10, 240(a1)
	slli s11, s11, 32
	addiw s10, a0, 62
	addiw a0, a0, 64
	add.uw s10, s10, s11
	sd s10, 248(a1)
	li s10, 2
	bge s9, s10, label340
	addi a1, a1, 256
	j label70
.p2align 2
label170:
	addiw a4, a4, 1
	lui a1, 64
	add a2, a2, a1
	j label17
.p2align 2
label204:
	addiw s4, s4, 1
	ld a1, 112(sp)
	add s3, s3, a1
	j label55
label166:
	addiw a3, a3, 1
	lui a1, 128
	add t1, t1, a1
	j label12
.p2align 2
label340:
	addiw s8, s8, 1
	addi s7, s7, 512
	j label65
.p2align 2
label200:
	addiw s2, s2, 1
	lui a1, 1
	add s1, s1, a1
	j label50
