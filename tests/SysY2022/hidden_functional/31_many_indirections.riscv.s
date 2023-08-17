.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
array:
	.zero	8000
.text
.p2align 2
.globl main
main:
	addi sp, sp, -8
pcrel646:
	auipc a2, %pcrel_hi(array)
	mv t3, zero
	li a3, 1
	li a5, 3
	li t0, 5
	li t1, 7
	li t2, 9
	li t4, 11
	li t5, 13
	sd ra, 0(sp)
	addi a1, a2, %pcrel_lo(pcrel646)
	slli a4, a5, 32
	slli a2, a3, 32
	mv a0, a1
	slli a5, t0, 32
	addi a3, a4, 2
	slli t0, t1, 32
	addi a4, a5, 4
	slli t1, t2, 32
	addi a5, t0, 6
	slli t2, t4, 32
	addi t0, t1, 8
	slli t4, t5, 32
	addi t1, t2, 10
	addi t2, t4, 12
.p2align 2
label2:
	sd a2, 0(a0)
	li t5, 15
	li a6, 17
	li a7, 27
	addiw t3, t3, 1
	slli t4, t5, 32
	sd a3, 8(a0)
	slli t5, a6, 32
	addi t6, t4, 14
	li a6, 19
	sd a4, 16(a0)
	addi t4, t5, 16
	sd a5, 24(a0)
	slli t5, a6, 32
	sd t0, 32(a0)
	li a6, 21
	sd t1, 40(a0)
	sd t2, 48(a0)
	sd t6, 56(a0)
	addi t6, t5, 18
	sd t4, 64(a0)
	li t4, 20
	sd t6, 72(a0)
	slli t6, a6, 32
	li a6, 23
	addi t5, t6, 20
	slli t6, a6, 32
	sd t5, 80(a0)
	li a6, 25
	addi t5, t6, 22
	slli t6, a6, 32
	sd t5, 88(a0)
	slli a6, a7, 32
	addi t5, t6, 24
	li a7, 29
	addi t6, a6, 26
	sd t5, 96(a0)
	li a6, 31
	slli t5, a7, 32
	sd t6, 104(a0)
	li a7, 35
	addi t6, t5, 28
	slli t5, a6, 32
	sd t6, 112(a0)
	li a6, 33
	addi t6, t5, 30
	slli t5, a6, 32
	sd t6, 120(a0)
	slli a6, a7, 32
	addi t6, t5, 32
	li a7, 37
	addi t5, a6, 34
	sd t6, 128(a0)
	li a6, 39
	slli t6, a7, 32
	sd t5, 136(a0)
	li a7, 51
	addi t5, t6, 36
	slli t6, a6, 32
	sd t5, 144(a0)
	li a6, 41
	addi t5, t6, 38
	slli t6, a6, 32
	sd t5, 152(a0)
	li a6, 43
	addi t5, t6, 40
	slli t6, a6, 32
	sd t5, 160(a0)
	li a6, 45
	addi t5, t6, 42
	slli t6, a6, 32
	sd t5, 168(a0)
	li a6, 47
	addi t5, t6, 44
	slli t6, a6, 32
	sd t5, 176(a0)
	li a6, 49
	addi t5, t6, 46
	slli t6, a6, 32
	sd t5, 184(a0)
	slli a6, a7, 32
	addi t5, t6, 48
	li a7, 53
	addi t6, a6, 50
	sd t5, 192(a0)
	slli t5, a7, 32
	sd t6, 200(a0)
	li a7, 55
	addi t6, t5, 52
	slli a6, a7, 32
	sd t6, 208(a0)
	li a7, 57
	addi t5, a6, 54
	slli t6, a7, 32
	sd t5, 216(a0)
	li a7, 59
	addi a6, t6, 56
	slli t5, a7, 32
	sd a6, 224(a0)
	li a7, 61
	addi a6, t5, 58
	slli t6, a7, 32
	sd a6, 232(a0)
	li a7, 71
	addi t5, t6, 60
	li a6, 63
	sd t5, 240(a0)
	slli t6, a6, 32
	li a6, 65
	addi t5, t6, 62
	slli t6, a6, 32
	sd t5, 248(a0)
	li a6, 67
	addi t5, t6, 64
	slli t6, a6, 32
	sd t5, 256(a0)
	li a6, 69
	addi t5, t6, 66
	slli t6, a6, 32
	sd t5, 264(a0)
	slli a6, a7, 32
	addi t5, t6, 68
	li a7, 73
	addi t6, a6, 70
	sd t5, 272(a0)
	li a6, 75
	slli t5, a7, 32
	sd t6, 280(a0)
	li a7, 79
	addi t6, t5, 72
	slli t5, a6, 32
	sd t6, 288(a0)
	li a6, 77
	addi t6, t5, 74
	slli t5, a6, 32
	sd t6, 296(a0)
	addi t6, t5, 76
	slli t5, a7, 32
	sd t6, 304(a0)
	li a7, 81
	addi a6, t5, 78
	slli t6, a7, 32
	sd a6, 312(a0)
	li a7, 83
	addi t5, t6, 80
	slli t6, a7, 32
	sd t5, 320(a0)
	li a7, 85
	addi a6, t6, 82
	slli t5, a7, 32
	sd a6, 328(a0)
	li a7, 87
	addi t6, t5, 84
	slli a6, a7, 32
	sd t6, 336(a0)
	li a7, 89
	addi t5, a6, 86
	slli t6, a7, 32
	li a6, 91
	sd t5, 344(a0)
	addi t5, t6, 88
	slli t6, a6, 32
	sd t5, 352(a0)
	li a6, 93
	addi t5, t6, 90
	slli t6, a6, 32
	sd t5, 360(a0)
	li a6, 95
	addi t5, t6, 92
	slli t6, a6, 32
	sd t5, 368(a0)
	li a6, 97
	addi t5, t6, 94
	slli t6, a6, 32
	sd t5, 376(a0)
	li a6, 99
	addi t5, t6, 96
	slli t6, a6, 32
	sd t5, 384(a0)
	addi t5, t6, 98
	sd t5, 392(a0)
	bge t3, t4, label6
	addi a0, a0, 400
	j label2
label6:
	li a2, 1923
	slli a0, a2, 2
	addi a2, a0, -492
	add a3, a1, a0
	add t0, a1, a2
	lw a4, 0(a3)
	addi a3, a2, -400
	sh2add t1, a4, t0
	addi a2, a3, -400
	add t0, a1, a3
	addi a3, a2, -400
	lw a5, 0(t1)
	sh2add t1, a5, t0
	add t0, a1, a2
	addi a2, a3, -400
	lw a4, 0(t1)
	sh2add t1, a4, t0
	add t0, a1, a3
	addi a3, a2, -400
	lw a5, 0(t1)
	add t2, a1, a3
	sh2add t1, a5, t0
	add t0, a1, a2
	addi a2, a3, -400
	lw a4, 0(t1)
	addi a3, a2, -400
	sh2add t1, a4, t0
	lw a5, 0(t1)
	add t1, a1, a2
	sh2add t0, a5, t2
	addi a2, a3, -400
	lw a4, 0(t0)
	sh2add t0, a4, t1
	add t1, a1, a3
	addi a3, a2, -400
	lw a5, 0(t0)
	sh2add t0, a5, t1
	add t1, a1, a2
	lw a4, 0(t0)
	sh2add t0, a4, t1
	addi a4, a3, -400
	add t1, a1, a3
	addi a2, a4, -400
	lw a5, 0(t0)
	sh2add t2, a5, t1
	add t1, a1, a4
	lw t0, 0(t2)
	sh2add t2, t0, t1
	add t1, a1, a2
	lw a5, 0(t2)
	addi t2, a2, -400
	sh2add t0, a5, t1
	addi a5, a1, 2000
	add t1, a1, t2
	lw a3, 0(t0)
	sh2add t0, a3, t1
	lw a4, 0(t0)
	addi t0, a1, 1600
	sh2add a3, a4, a5
	addi a4, a1, 1200
	lw a2, 0(a3)
	sh2add t1, a2, t0
	addi t0, a1, 800
	lw a3, 0(t1)
	addi t1, a1, 400
	sh2add a5, a3, a4
	lw a2, 0(a5)
	sh2add a4, a2, t0
	lw a3, 0(a4)
	sh2add t0, a3, t1
	lw a4, 0(t0)
	addi t0, a0, -20
	sh2add a5, a4, a1
	li a0, 400
	add t1, a1, t0
	lw a2, 0(a5)
	lw a3, 0(t1)
	mul a4, a3, a0
	add t0, a1, a4
	lw a5, 68(t0)
	mul t1, a5, a0
	add a3, a1, t1
	lw t0, 64(a3)
	mul a4, t0, a0
	add a5, a1, a4
	lw t1, 60(a5)
	mul a3, t1, a0
	add t0, a1, a3
	lw t2, 56(t0)
	mul a4, t2, a0
	add a5, a1, a4
	lw a3, 52(a5)
	mul t1, a3, a0
	add a4, a1, t1
	lw t0, 48(a4)
	mul a3, t0, a0
	add a5, a1, a3
	lw a4, 44(a5)
	mul t1, a4, a0
	add a3, a1, t1
	lw t0, 40(a3)
	mul a5, t0, a0
	add a4, a1, a5
	lw a3, 36(a4)
	mul t0, a3, a0
	add a5, a1, t0
	lw a4, 32(a5)
	mul a3, a4, a0
	add t0, a1, a3
	lw a5, 28(t0)
	mul a4, a5, a0
	add a3, a1, a4
	lw t0, 24(a3)
	mul a5, t0, a0
	add a4, a1, a5
	lw a3, 20(a4)
	mul t0, a3, a0
	add a5, a1, t0
	lw a4, 16(a5)
	mul a3, a4, a0
	add t0, a1, a3
	lw a5, 12(t0)
	mul a4, a5, a0
	add a3, a1, a4
	lw t0, 8(a3)
	mul a5, t0, a0
	add a4, a1, a5
	lw a3, 4(a4)
	mul t1, a3, a0
	add t0, a1, t1
	lw a4, 0(t0)
	mul a3, a4, a0
	add a5, a1, a3
	lw t0, 224(a5)
	addw a0, a2, t0
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	addi sp, sp, 8
	ret
