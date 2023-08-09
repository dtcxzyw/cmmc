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
	addi sp, sp, -32
pcrel660:
	auipc a2, %pcrel_hi(array)
	mv a6, zero
	li a4, 1
	li a3, 20
	li t0, 3
	li t1, 5
	li t2, 7
	li t3, 9
	li t4, 11
	li t5, 13
	li t6, 15
	li a7, 17
	addi a1, a2, %pcrel_lo(pcrel660)
	slli a5, t0, 32
	slli a2, a4, 32
	mv a0, a1
	slli t0, t1, 32
	addi a4, a5, 2
	slli t1, t2, 32
	sd ra, 0(sp)
	addi a5, t0, 4
	slli t2, t3, 32
	addi t0, t1, 6
	sd s0, 8(sp)
	slli t3, t4, 32
	addi t1, t2, 8
	li s0, 19
	sd s1, 16(sp)
	slli t4, t5, 32
	addi t2, t3, 10
	slli t5, t6, 32
	sd s2, 24(sp)
	addi t3, t4, 12
	slli t6, a7, 32
	addi t4, t5, 14
	slli a7, s0, 32
	addi t5, t6, 16
	addi t6, a7, 18
.p2align 2
label2:
	sd a2, 0(a0)
	li s1, 21
	li s2, 23
	addiw a6, a6, 1
	sd a4, 8(a0)
	slli a7, s1, 32
	sd a5, 16(a0)
	slli s1, s2, 32
	addi s0, a7, 20
	li s2, 25
	sd t0, 24(a0)
	addi a7, s1, 22
	sd t1, 32(a0)
	li s1, 27
	sd t2, 40(a0)
	sd t3, 48(a0)
	sd t4, 56(a0)
	sd t5, 64(a0)
	sd t6, 72(a0)
	sd s0, 80(a0)
	slli s0, s2, 32
	sd a7, 88(a0)
	li s2, 29
	addi a7, s0, 24
	slli s0, s1, 32
	sd a7, 96(a0)
	addi a7, s0, 26
	sd a7, 104(a0)
	slli a7, s2, 32
	li s2, 31
	addi s1, a7, 28
	slli s0, s2, 32
	sd s1, 112(a0)
	li s2, 35
	addi a7, s0, 30
	li s1, 33
	sd a7, 120(a0)
	slli a7, s1, 32
	slli s1, s2, 32
	addi s0, a7, 32
	li s2, 37
	addi a7, s1, 34
	sd s0, 128(a0)
	li s1, 39
	slli s0, s2, 32
	sd a7, 136(a0)
	li s2, 45
	addi a7, s0, 36
	slli s0, s1, 32
	sd a7, 144(a0)
	li s1, 41
	addi a7, s0, 38
	sd a7, 152(a0)
	slli a7, s1, 32
	li s1, 43
	addi s0, a7, 40
	slli a7, s1, 32
	sd s0, 160(a0)
	addi s0, a7, 42
	slli a7, s2, 32
	sd s0, 168(a0)
	li s2, 47
	addi s1, a7, 44
	slli s0, s2, 32
	sd s1, 176(a0)
	li s2, 59
	addi a7, s0, 46
	li s1, 49
	sd a7, 184(a0)
	slli s0, s1, 32
	li s1, 51
	addi a7, s0, 48
	slli s0, s1, 32
	sd a7, 192(a0)
	li s1, 53
	addi a7, s0, 50
	slli s0, s1, 32
	sd a7, 200(a0)
	li s1, 55
	addi a7, s0, 52
	sd a7, 208(a0)
	slli a7, s1, 32
	li s1, 57
	addi s0, a7, 54
	slli a7, s1, 32
	sd s0, 216(a0)
	slli s1, s2, 32
	addi s0, a7, 56
	li s2, 61
	addi a7, s1, 58
	sd s0, 224(a0)
	li s1, 63
	slli s0, s2, 32
	sd a7, 232(a0)
	li s2, 67
	addi a7, s0, 60
	sd a7, 240(a0)
	slli a7, s1, 32
	li s1, 65
	addi s0, a7, 62
	slli a7, s1, 32
	sd s0, 248(a0)
	slli s1, s2, 32
	addi s0, a7, 64
	li s2, 69
	addi a7, s1, 66
	sd s0, 256(a0)
	li s1, 71
	slli s0, s2, 32
	sd a7, 264(a0)
	li s2, 73
	addi a7, s0, 68
	sd a7, 272(a0)
	slli a7, s1, 32
	slli s1, s2, 32
	addi s0, a7, 70
	li s2, 75
	addi a7, s1, 72
	sd s0, 280(a0)
	sd a7, 288(a0)
	slli a7, s2, 32
	li s2, 77
	addi s0, a7, 74
	slli s1, s2, 32
	sd s0, 296(a0)
	li s2, 81
	addi a7, s1, 76
	li s0, 79
	sd a7, 304(a0)
	slli a7, s0, 32
	slli s0, s2, 32
	addi s1, a7, 78
	li s2, 83
	addi a7, s0, 80
	sd s1, 312(a0)
	sd a7, 320(a0)
	slli a7, s2, 32
	li s2, 85
	addi s1, a7, 82
	slli s0, s2, 32
	sd s1, 328(a0)
	li s2, 91
	addi a7, s0, 84
	li s1, 87
	sd a7, 336(a0)
	slli a7, s1, 32
	li s1, 89
	addi s0, a7, 86
	slli a7, s1, 32
	sd s0, 344(a0)
	slli s1, s2, 32
	addi s0, a7, 88
	li s2, 93
	addi a7, s1, 90
	sd s0, 352(a0)
	li s1, 95
	slli s0, s2, 32
	sd a7, 360(a0)
	addi a7, s0, 92
	slli s0, s1, 32
	sd a7, 368(a0)
	li s1, 97
	addi a7, s0, 94
	slli s0, s1, 32
	sd a7, 376(a0)
	li s1, 99
	addi a7, s0, 96
	sd a7, 384(a0)
	slli a7, s1, 32
	addi s0, a7, 98
	sd s0, 392(a0)
	bge a6, a3, label6
	addi a0, a0, 400
	j label2
label6:
	li a2, 1923
	slli a0, a2, 2
	addi a2, a0, -492
	add a3, a1, a0
	add t1, a1, a2
	lw a5, 0(a3)
	addi a3, a2, -400
	sh2add t0, a5, t1
	addi a2, a3, -400
	add t1, a1, a3
	addi a3, a2, -400
	lw a4, 0(t0)
	sh2add t0, a4, t1
	add t1, a1, a2
	addi a2, a3, -400
	lw a5, 0(t0)
	sh2add t0, a5, t1
	add t1, a1, a3
	addi a3, a2, -400
	lw a4, 0(t0)
	sh2add t0, a4, t1
	add t1, a1, a2
	addi a2, a3, -400
	lw a5, 0(t0)
	sh2add t0, a5, t1
	add t1, a1, a3
	addi a3, a2, -400
	lw a4, 0(t0)
	sh2add t0, a4, t1
	add t1, a1, a2
	addi a2, a3, -400
	lw a5, 0(t0)
	sh2add t0, a5, t1
	add t1, a1, a3
	addi a3, a2, -400
	lw a4, 0(t0)
	sh2add t0, a4, t1
	add a4, a1, a2
	lw a5, 0(t0)
	sh2add t1, a5, a4
	add a5, a1, a3
	addi a4, a3, -400
	addi a2, a4, -400
	add t2, a1, a4
	lw t0, 0(t1)
	sh2add t3, t0, a5
	lw t1, 0(t3)
	sh2add t0, t1, t2
	addi t2, a2, -400
	add t1, a1, a2
	lw a5, 0(t0)
	sh2add t0, a5, t1
	addi t1, a1, 2000
	add a5, a1, t2
	addi t2, a1, 800
	lw a3, 0(t0)
	sh2add t0, a3, a5
	addi a5, a1, 1600
	lw a4, 0(t0)
	addi t0, a1, 1200
	sh2add a3, a4, t1
	addi t1, a1, 400
	lw a2, 0(a3)
	sh2add a4, a2, a5
	lw a3, 0(a4)
	sh2add a5, a3, t0
	lw a2, 0(a5)
	sh2add a4, a2, t2
	lw a3, 0(a4)
	sh2add a5, a3, t1
	lw a4, 0(a5)
	addi a5, a0, -20
	sh2add t0, a4, a1
	li a0, 400
	add a4, a1, a5
	lw a2, 0(t0)
	lw a3, 0(a4)
	mul a5, a3, a0
	add t0, a1, a5
	lw a4, 68(t0)
	mul a3, a4, a0
	add a5, a1, a3
	lw t0, 64(a5)
	mul a4, t0, a0
	add t1, a1, a4
	lw a5, 60(t1)
	mul a3, a5, a0
	add a4, a1, a3
	lw t0, 56(a4)
	mul t1, t0, a0
	add a5, a1, t1
	lw a4, 52(a5)
	mul a3, a4, a0
	add t1, a1, a3
	lw t0, 48(t1)
	mul t2, t0, a0
	add a5, a1, t2
	lw a4, 44(a5)
	mul a3, a4, a0
	add t1, a1, a3
	lw t0, 40(t1)
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
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 32
	ret
