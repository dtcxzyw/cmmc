.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
array:
	.zero	8000
.text
.p2align 2
.globl main
main:
	addi sp, sp, -40
pcrel658:
	auipc a2, %pcrel_hi(array)
	mv a3, zero
	li a1, 400
	li a5, 1
	li t0, 3
	li t3, 5
	li t2, 7
	li t5, 9
	li t4, 11
	li a6, 13
	li t6, 15
	li a7, 17
	addi a0, a2, %pcrel_lo(pcrel658)
	slli a4, a5, 32
	slli t1, t3, 32
	sd ra, 0(sp)
	slli a2, t0, 32
	slli t3, t5, 32
	addi t0, t1, 4
	addi a5, a2, 2
	slli t5, a6, 32
	sd s2, 8(sp)
	slli a2, t2, 32
	slli a6, a7, 32
	addi t2, t3, 8
	addi t1, a2, 6
	li a7, 19
	sd s1, 16(sp)
	slli a2, t4, 32
	sd s0, 24(sp)
	addi t4, t5, 12
	addi t3, a2, 10
	sd s3, 32(sp)
	slli a2, t6, 32
	addi t6, a6, 16
	addi t5, a2, 14
	slli a2, a7, 32
	addi a6, a2, 18
.p2align 2
label2:
	mul a7, a3, a1
	li s2, 21
	li s3, 23
	addiw a3, a3, 1
	add a2, a0, a7
	slli s1, s2, 32
	li a7, 20
	slli s2, s3, 32
	addi s0, s1, 20
	li s3, 25
	sd a4, 0(a2)
	addi s1, s2, 22
	sd a5, 8(a2)
	li s2, 27
	sd t0, 16(a2)
	sd t1, 24(a2)
	sd t2, 32(a2)
	sd t3, 40(a2)
	sd t4, 48(a2)
	sd t5, 56(a2)
	sd t6, 64(a2)
	sd a6, 72(a2)
	sd s0, 80(a2)
	slli s0, s3, 32
	sd s1, 88(a2)
	li s3, 31
	addi s1, s0, 24
	slli s0, s2, 32
	sd s1, 96(a2)
	li s2, 29
	addi s1, s0, 26
	slli s0, s2, 32
	sd s1, 104(a2)
	addi s1, s0, 28
	slli s0, s3, 32
	sd s1, 112(a2)
	li s3, 33
	addi s2, s0, 30
	slli s1, s3, 32
	sd s2, 120(a2)
	li s3, 39
	addi s0, s1, 32
	li s2, 35
	sd s0, 128(a2)
	slli s1, s2, 32
	li s2, 37
	addi s0, s1, 34
	slli s1, s2, 32
	sd s0, 136(a2)
	addi s0, s1, 36
	slli s1, s3, 32
	sd s0, 144(a2)
	li s3, 41
	addi s2, s1, 38
	slli s0, s3, 32
	sd s2, 152(a2)
	li s3, 49
	addi s1, s0, 40
	li s2, 43
	sd s1, 160(a2)
	slli s0, s2, 32
	li s2, 45
	addi s1, s0, 42
	slli s0, s2, 32
	sd s1, 168(a2)
	li s2, 47
	addi s1, s0, 44
	slli s0, s2, 32
	sd s1, 176(a2)
	slli s2, s3, 32
	addi s1, s0, 46
	li s3, 51
	addi s0, s2, 48
	sd s1, 184(a2)
	slli s1, s3, 32
	sd s0, 192(a2)
	li s3, 53
	addi s0, s1, 50
	slli s2, s3, 32
	sd s0, 200(a2)
	li s3, 55
	addi s1, s2, 52
	slli s0, s3, 32
	li s2, 57
	li s3, 71
	sd s1, 208(a2)
	addi s1, s0, 54
	slli s0, s2, 32
	sd s1, 216(a2)
	li s2, 59
	addi s1, s0, 56
	slli s0, s2, 32
	sd s1, 224(a2)
	li s2, 61
	addi s1, s0, 58
	slli s0, s2, 32
	sd s1, 232(a2)
	li s2, 63
	addi s1, s0, 60
	slli s0, s2, 32
	sd s1, 240(a2)
	li s2, 65
	addi s1, s0, 62
	slli s0, s2, 32
	sd s1, 248(a2)
	li s2, 67
	addi s1, s0, 64
	slli s0, s2, 32
	sd s1, 256(a2)
	li s2, 69
	addi s1, s0, 66
	slli s0, s2, 32
	sd s1, 264(a2)
	slli s2, s3, 32
	addi s1, s0, 68
	li s3, 73
	addi s0, s2, 70
	sd s1, 272(a2)
	li s2, 75
	slli s1, s3, 32
	sd s0, 280(a2)
	li s3, 77
	addi s0, s1, 72
	slli s1, s2, 32
	sd s0, 288(a2)
	slli s2, s3, 32
	addi s0, s1, 74
	li s3, 79
	addi s1, s2, 76
	sd s0, 296(a2)
	slli s0, s3, 32
	sd s1, 304(a2)
	li s3, 81
	addi s1, s0, 78
	slli s2, s3, 32
	sd s1, 312(a2)
	li s3, 83
	addi s0, s2, 80
	slli s1, s3, 32
	li s2, 85
	li s3, 93
	sd s0, 320(a2)
	addi s0, s1, 82
	slli s1, s2, 32
	sd s0, 328(a2)
	li s2, 87
	addi s0, s1, 84
	slli s1, s2, 32
	sd s0, 336(a2)
	li s2, 89
	addi s0, s1, 86
	slli s1, s2, 32
	sd s0, 344(a2)
	li s2, 91
	addi s0, s1, 88
	slli s1, s2, 32
	sd s0, 352(a2)
	slli s2, s3, 32
	addi s0, s1, 90
	li s3, 95
	addi s1, s2, 92
	sd s0, 360(a2)
	slli s0, s3, 32
	sd s1, 368(a2)
	li s3, 97
	addi s1, s0, 94
	slli s0, s3, 32
	sd s1, 376(a2)
	li s3, 99
	addi s2, s0, 96
	slli s1, s3, 32
	sd s2, 384(a2)
	addi s0, s1, 98
	sd s0, 392(a2)
	blt a3, a7, label2
	li t0, 1923
	slli a2, t0, 2
	addi a3, a2, -492
	add a4, a0, a2
	add t2, a0, a3
	lw a5, 0(a4)
	addi a4, a3, -400
	sh2add t1, a5, t2
	addi a3, a4, -400
	add t2, a0, a4
	addi a4, a3, -400
	lw t0, 0(t1)
	sh2add t1, t0, t2
	add t2, a0, a3
	addi a3, a4, -400
	lw a5, 0(t1)
	sh2add t1, a5, t2
	add t2, a0, a4
	addi a4, a3, -400
	lw t0, 0(t1)
	add t1, a0, a3
	sh2add t3, t0, t2
	addi a3, a4, -400
	lw a5, 0(t3)
	add t3, a0, a3
	sh2add t2, a5, t1
	add t1, a0, a4
	addi a4, a3, -400
	lw t0, 0(t2)
	addi a3, a4, -400
	sh2add t2, t0, t1
	lw a5, 0(t2)
	add t2, a0, a4
	sh2add t1, a5, t3
	addi a4, a3, -400
	lw t0, 0(t1)
	sh2add t1, t0, t2
	add t2, a0, a3
	lw a5, 0(t1)
	sh2add t1, a5, t2
	addi a5, a4, -400
	add t2, a0, a4
	addi a3, a5, -400
	lw t0, 0(t1)
	sh2add t3, t0, t2
	add t2, a0, a5
	lw t1, 0(t3)
	sh2add t3, t1, t2
	add t2, a0, a3
	lw t0, 0(t3)
	addi t3, a3, -400
	sh2add t1, t0, t2
	addi t2, a2, -20
	add t0, a0, t3
	lw a4, 0(t1)
	addi t1, a0, 2000
	sh2add a5, a4, t0
	lw a3, 0(a5)
	addi a5, a0, 1600
	sh2add t0, a3, t1
	lw a4, 0(t0)
	addi t0, a0, 1200
	sh2add t1, a4, a5
	lw a3, 0(t1)
	addi t1, a0, 800
	sh2add a5, a3, t0
	lw a4, 0(a5)
	addi a5, a0, 400
	sh2add t0, a4, t1
	lw a3, 0(t0)
	sh2add a4, a3, a5
	lw t1, 0(a4)
	sh2add t0, t1, a0
	add t1, a0, t2
	lw a3, 0(t0)
	lw a4, 0(t1)
	mul a5, a4, a1
	add t2, a0, a5
	lw a2, 68(t2)
	mul t0, a2, a1
	add a5, a0, t0
	lw a4, 64(a5)
	mul a2, a4, a1
	add t1, a0, a2
	lw a5, 60(t1)
	mul t0, a5, a1
	add a2, a0, t0
	lw a4, 56(a2)
	mul a5, a4, a1
	add t1, a0, a5
	lw a2, 52(t1)
	mul t0, a2, a1
	add t2, a0, t0
	lw a4, 48(t2)
	mul a5, a4, a1
	add t0, a0, a5
	lw a2, 44(t0)
	mul t1, a2, a1
	add a4, a0, t1
	lw a5, 40(a4)
	mul t0, a5, a1
	add a2, a0, t0
	lw a4, 36(a2)
	mul t1, a4, a1
	add a5, a0, t1
	lw a2, 32(a5)
	mul a4, a2, a1
	add t0, a0, a4
	lw a5, 28(t0)
	mul a2, a5, a1
	add a4, a0, a2
	lw t0, 24(a4)
	mul a5, t0, a1
	add a2, a0, a5
	lw a4, 20(a2)
	mul t0, a4, a1
	add a5, a0, t0
	lw a2, 16(a5)
	mul a4, a2, a1
	add t0, a0, a4
	lw a5, 12(t0)
	mul a2, a5, a1
	add a4, a0, a2
	lw t0, 8(a4)
	mul a5, t0, a1
	add a2, a0, a5
	lw a4, 4(a2)
	mul t0, a4, a1
	add a5, a0, t0
	lw a2, 0(a5)
	mul a4, a2, a1
	add t0, a0, a4
	lw a5, 224(t0)
	addw a0, a3, a5
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	ld s2, 8(sp)
	ld s1, 16(sp)
	ld s0, 24(sp)
	ld s3, 32(sp)
	addi sp, sp, 40
	ret
