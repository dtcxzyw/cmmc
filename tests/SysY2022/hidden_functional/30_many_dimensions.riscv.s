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
pcrel637:
	auipc a1, %pcrel_hi(array)
	mv a2, zero
	addi a0, a1, %pcrel_lo(pcrel637)
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
	bge a2, a1, label152
	addi a0, a0, 256
	j label2
label152:
	ld a0, 104(sp)
	mv a1, zero
	mv a4, a0
	sd a0, 120(sp)
	sd zero, 128(sp)
	mv a0, zero
label7:
	li s10, 2
	ld a1, 128(sp)
	blt a1, s10, label11
	j label84
label161:
	ld a1, 128(sp)
	lui a2, 256
	ld a4, 120(sp)
	addiw a1, a1, 1
	add a4, a4, a2
	sd a4, 120(sp)
	sd a1, 128(sp)
	j label7
label84:
	auipc a1, %pcrel_hi(array)
	lw a2, %pcrel_lo(label84)(a1)
	ld a0, 104(sp)
	lw a4, 8(a0)
	lw a5, 4(a0)
	addw a1, a2, a4
	lw a4, 40(a0)
	addw a3, a1, a5
	lw a5, 24(a0)
	addw a2, a3, a4
	lw a4, 228(a0)
	addw a1, a2, a5
	lw a5, 56(a0)
	addw a3, a1, a4
	lw a4, 964(a0)
	addw a2, a3, a5
	lw t0, 224(a0)
	addw a1, a2, a4
	lw a5, 804(a0)
	addw a3, a1, t0
	lw a4, 1996(a0)
	li t0, 403
	addw a2, a3, a5
	slli a3, t0, 3
	addw a1, a2, a4
	li t0, 825
	add a5, a0, a3
	lw a4, 0(a5)
	slli a5, t0, 5
	addw a2, a1, a4
	lui t0, 4
	add a3, a0, a5
	lw a4, 0(a3)
	lw a5, 508(a0)
	addw a1, a2, a4
	lw a4, 124(a0)
	addw a3, a1, a5
	lui a1, 60
	addw a2, a3, a4
	addiw a5, a1, 912
	add a3, a0, a5
	addiw a5, t0, -428
	lw a4, 0(a3)
	lui t0, 202
	add a3, a0, a5
	addw a1, a2, a4
	lw a4, 0(a3)
	addiw a3, t0, 972
	addw a2, a1, a4
	li t0, 275
	add a5, a0, a3
	slli a3, t0, 10
	lw a4, 0(a5)
	addw a1, a2, a4
	add a2, a0, a3
	lw a4, 0(a2)
	addw a0, a1, a4
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
	ld a4, 120(sp)
	mv t1, zero
label12:
	li s10, 2
	bge t1, s10, label161
	mv a3, a4
	mv t0, zero
label17:
	li s10, 2
	blt t0, s10, label21
	j label165
label169:
	addiw t0, t0, 1
	lui a1, 64
	add a3, a3, a1
	j label17
label21:
	mv a5, a3
	mv a2, zero
label22:
	li s10, 2
	blt a2, s10, label26
	j label169
label173:
	addiw a2, a2, 1
	lui a1, 32
	add a5, a5, a1
	j label22
label31:
	mv t4, t2
	mv t5, zero
	li s10, 2
	blt zero, s10, label37
label36:
	addiw t3, t3, 1
	lui a1, 16
	add t2, t2, a1
	li s10, 2
	blt t3, s10, label31
	j label173
label26:
	mv t2, a5
	mv t3, zero
	li s10, 2
	blt zero, s10, label31
	j label173
label37:
	mv t6, t4
	mv a6, zero
	j label38
label42:
	addiw t5, t5, 1
	lui a1, 8
	add t4, t4, a1
	li s10, 2
	blt t5, s10, label37
	j label36
label38:
	li s10, 2
	blt a6, s10, label43
	j label42
label189:
	addiw a6, a6, 1
	lui a1, 4
	add t6, t6, a1
	j label38
label43:
	mv a7, t6
	mv s0, zero
label44:
	li s10, 2
	bge s0, s10, label189
	mv s1, a7
	mv s2, zero
label49:
	li s10, 2
	bge s2, s10, label193
	mv s3, s1
	mv s4, zero
	blt zero, s10, label58
label197:
	addiw s2, s2, 1
	lui a1, 1
	add s1, s1, a1
	j label49
label58:
	mv s5, s3
	mv s6, zero
	j label59
label63:
	addiw s4, s4, 1
	ld a1, 112(sp)
	add s3, s3, a1
	li s10, 2
	blt s4, s10, label58
	j label197
label59:
	li s10, 2
	blt s6, s10, label64
	j label63
label207:
	addiw s6, s6, 1
	addi s5, s5, 1024
	j label59
label165:
	addiw t1, t1, 1
	lui a1, 128
	add a4, a4, a1
	j label12
label193:
	addiw s0, s0, 1
	lui a1, 2
	add a7, a7, a1
	j label44
label64:
	mv s7, s5
	mv s8, zero
label65:
	li s10, 2
	bge s8, s10, label207
	mv a1, s7
	mv s9, zero
label70:
	addiw s10, a0, 1
	addiw s9, s9, 1
	slli s10, s10, 32
	add.uw s11, a0, s10
	addiw s10, a0, 2
	sd s11, 0(a1)
	addiw s11, a0, 3
	slli s11, s11, 32
	add.uw s10, s10, s11
	addiw s11, a0, 4
	sd s10, 8(a1)
	addiw s10, a0, 5
	slli s10, s10, 32
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
	add.uw s11, s10, s11
	addiw s10, a0, 13
	sd s11, 40(a1)
	slli s10, s10, 32
	addiw s11, a0, 12
	add.uw s10, s11, s10
	addiw s11, a0, 15
	sd s10, 48(a1)
	slli s11, s11, 32
	addiw s10, a0, 14
	add.uw s11, s10, s11
	addiw s10, a0, 17
	sd s11, 56(a1)
	slli s10, s10, 32
	addiw s11, a0, 16
	add.uw s10, s11, s10
	addiw s11, a0, 19
	sd s10, 64(a1)
	slli s11, s11, 32
	addiw s10, a0, 18
	add.uw s10, s10, s11
	addiw s11, a0, 20
	sd s10, 72(a1)
	addiw s10, a0, 21
	slli s10, s10, 32
	add.uw s10, s11, s10
	addiw s11, a0, 23
	sd s10, 80(a1)
	slli s11, s11, 32
	addiw s10, a0, 22
	add.uw s10, s10, s11
	addiw s11, a0, 24
	sd s10, 88(a1)
	addiw s10, a0, 25
	slli s10, s10, 32
	add.uw s10, s11, s10
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
	addiw s11, a0, 41
	sd s10, 152(a1)
	slli s11, s11, 32
	addiw s10, a0, 40
	add.uw s11, s10, s11
	addiw s10, a0, 42
	sd s11, 160(a1)
	addiw s11, a0, 43
	slli s11, s11, 32
	add.uw s11, s10, s11
	addiw s10, a0, 45
	sd s11, 168(a1)
	slli s10, s10, 32
	addiw s11, a0, 44
	add.uw s10, s11, s10
	addiw s11, a0, 47
	sd s10, 176(a1)
	slli s11, s11, 32
	addiw s10, a0, 46
	add.uw s11, s10, s11
	addiw s10, a0, 49
	sd s11, 184(a1)
	slli s10, s10, 32
	addiw s11, a0, 48
	add.uw s10, s11, s10
	addiw s11, a0, 51
	sd s10, 192(a1)
	slli s11, s11, 32
	addiw s10, a0, 50
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
	add.uw s10, s10, s11
	addiw s11, a0, 56
	sd s10, 216(a1)
	addiw s10, a0, 57
	slli s10, s10, 32
	add.uw s10, s11, s10
	addiw s11, a0, 59
	sd s10, 224(a1)
	slli s11, s11, 32
	addiw s10, a0, 58
	add.uw s11, s10, s11
	addiw s10, a0, 61
	sd s11, 232(a1)
	slli s10, s10, 32
	addiw s11, a0, 60
	add.uw s10, s11, s10
	addiw s11, a0, 63
	sd s10, 240(a1)
	slli s11, s11, 32
	addiw s10, a0, 62
	addiw a0, a0, 64
	add.uw s10, s10, s11
	sd s10, 248(a1)
	li s10, 2
	blt s9, s10, label74
	addiw s8, s8, 1
	addi s7, s7, 512
	j label65
label74:
	addi a1, a1, 256
	j label70
