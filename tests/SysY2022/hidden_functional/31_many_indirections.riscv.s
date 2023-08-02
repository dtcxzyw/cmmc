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
pcrel657:
	auipc a1, %pcrel_hi(array)
	mv a3, zero
	li a2, 1
	li t0, 3
	li t1, 5
	li t2, 7
	li t3, 9
	li t4, 11
	li t5, 13
	li t6, 15
	li a6, 17
	li a7, 19
	addi a0, a1, %pcrel_lo(pcrel657)
	slli a4, a2, 32
	li a1, 400
	sd ra, 0(sp)
	slli a2, t0, 32
	sd s2, 8(sp)
	addi a5, a2, 2
	sd s1, 16(sp)
	slli a2, t1, 32
	sd s0, 24(sp)
	addi t0, a2, 4
	slli a2, t2, 32
	addi t1, a2, 6
	slli a2, t3, 32
	addi t2, a2, 8
	slli a2, t4, 32
	addi t3, a2, 10
	slli a2, t5, 32
	addi t4, a2, 12
	slli a2, t6, 32
	addi t5, a2, 14
	slli a2, a6, 32
	addi t6, a2, 16
	slli a2, a7, 32
	addi a6, a2, 18
.p2align 2
label2:
	mul a7, a3, a1
	li s2, 21
	addiw a3, a3, 1
	add a2, a0, a7
	slli s1, s2, 32
	li a7, 20
	li s2, 23
	addi s0, s1, 20
	sd a4, 0(a2)
	slli s1, s2, 32
	sd a5, 8(a2)
	li s2, 25
	sd t0, 16(a2)
	sd t1, 24(a2)
	sd t2, 32(a2)
	sd t3, 40(a2)
	sd t4, 48(a2)
	sd t5, 56(a2)
	sd t6, 64(a2)
	sd a6, 72(a2)
	sd s0, 80(a2)
	addi s0, s1, 22
	sd s0, 88(a2)
	slli s0, s2, 32
	li s2, 27
	addi s1, s0, 24
	slli s0, s2, 32
	sd s1, 96(a2)
	li s2, 29
	addi s1, s0, 26
	slli s0, s2, 32
	sd s1, 104(a2)
	li s2, 31
	addi s1, s0, 28
	slli s0, s2, 32
	sd s1, 112(a2)
	li s2, 33
	addi s1, s0, 30
	sd s1, 120(a2)
	slli s1, s2, 32
	li s2, 35
	addi s0, s1, 32
	sd s0, 128(a2)
	slli s0, s2, 32
	li s2, 37
	addi s1, s0, 34
	sd s1, 136(a2)
	slli s1, s2, 32
	li s2, 39
	addi s0, s1, 36
	sd s0, 144(a2)
	slli s0, s2, 32
	li s2, 41
	addi s1, s0, 38
	sd s1, 152(a2)
	slli s1, s2, 32
	li s2, 43
	addi s0, s1, 40
	sd s0, 160(a2)
	slli s0, s2, 32
	li s2, 45
	addi s1, s0, 42
	slli s0, s2, 32
	sd s1, 168(a2)
	li s2, 47
	addi s1, s0, 44
	slli s0, s2, 32
	sd s1, 176(a2)
	li s2, 49
	addi s1, s0, 46
	sd s1, 184(a2)
	slli s1, s2, 32
	li s2, 51
	addi s0, s1, 48
	slli s1, s2, 32
	sd s0, 192(a2)
	li s2, 53
	addi s0, s1, 50
	slli s1, s2, 32
	sd s0, 200(a2)
	li s2, 55
	addi s0, s1, 52
	sd s0, 208(a2)
	slli s0, s2, 32
	li s2, 57
	addi s1, s0, 54
	slli s0, s2, 32
	sd s1, 216(a2)
	li s2, 59
	addi s1, s0, 56
	sd s1, 224(a2)
	slli s1, s2, 32
	li s2, 61
	addi s0, s1, 58
	sd s0, 232(a2)
	slli s0, s2, 32
	li s2, 63
	addi s1, s0, 60
	sd s1, 240(a2)
	slli s1, s2, 32
	li s2, 65
	addi s0, s1, 62
	sd s0, 248(a2)
	slli s0, s2, 32
	li s2, 67
	addi s1, s0, 64
	slli s0, s2, 32
	sd s1, 256(a2)
	li s2, 69
	addi s1, s0, 66
	slli s0, s2, 32
	sd s1, 264(a2)
	li s2, 71
	addi s1, s0, 68
	sd s1, 272(a2)
	slli s1, s2, 32
	li s2, 73
	addi s0, s1, 70
	slli s1, s2, 32
	sd s0, 280(a2)
	li s2, 75
	addi s0, s1, 72
	slli s1, s2, 32
	sd s0, 288(a2)
	li s2, 77
	addi s0, s1, 74
	slli s1, s2, 32
	sd s0, 296(a2)
	li s2, 79
	addi s0, s1, 76
	sd s0, 304(a2)
	slli s0, s2, 32
	li s2, 81
	addi s1, s0, 78
	sd s1, 312(a2)
	slli s1, s2, 32
	li s2, 83
	addi s0, s1, 80
	slli s1, s2, 32
	sd s0, 320(a2)
	li s2, 85
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
	li s2, 93
	addi s0, s1, 90
	slli s1, s2, 32
	sd s0, 360(a2)
	li s2, 95
	addi s0, s1, 92
	sd s0, 368(a2)
	slli s0, s2, 32
	li s2, 97
	addi s1, s0, 94
	slli s0, s2, 32
	sd s1, 376(a2)
	li s2, 99
	addi s1, s0, 96
	sd s1, 384(a2)
	slli s1, s2, 32
	addi s0, s1, 98
	sd s0, 392(a2)
	blt a3, a7, label2
	li a4, 1923
	slli a2, a4, 2
	addi a3, a2, -492
	add a5, a0, a2
	add t0, a0, a3
	lw a4, 0(a5)
	addi a3, a3, -400
	sh2add a5, a4, t0
	lw a4, 0(a5)
	add a5, a0, a3
	addi a3, a3, -400
	sh2add t0, a4, a5
	add a5, a0, a3
	addi a3, a3, -400
	lw a4, 0(t0)
	sh2add t0, a4, a5
	add a5, a0, a3
	addi a3, a3, -400
	lw a4, 0(t0)
	sh2add t0, a4, a5
	add a5, a0, a3
	addi a3, a3, -400
	lw a4, 0(t0)
	sh2add t0, a4, a5
	add a5, a0, a3
	addi a3, a3, -400
	lw a4, 0(t0)
	sh2add t0, a4, a5
	lw a4, 0(t0)
	add t0, a0, a3
	addi a3, a3, -400
	sh2add a5, a4, t0
	lw a4, 0(a5)
	add a5, a0, a3
	addi a3, a3, -400
	sh2add t0, a4, a5
	add a5, a0, a3
	addi a3, a3, -400
	lw a4, 0(t0)
	sh2add t0, a4, a5
	add a5, a0, a3
	addi a3, a3, -400
	lw a4, 0(t0)
	sh2add t0, a4, a5
	lw a4, 0(t0)
	add t0, a0, a3
	addi a3, a3, -400
	sh2add a5, a4, t0
	add t0, a0, a3
	addi a3, a3, -400
	lw a4, 0(a5)
	sh2add a5, a4, t0
	lw a4, 0(a5)
	add a5, a0, a3
	sh2add a4, a4, a5
	addi a5, a0, 2000
	lw a3, 0(a4)
	sh2add a4, a3, a5
	addi a5, a0, 1600
	lw a3, 0(a4)
	sh2add a4, a3, a5
	addi a5, a0, 1200
	lw a3, 0(a4)
	sh2add a4, a3, a5
	addi a5, a0, 800
	lw a3, 0(a4)
	sh2add a4, a3, a5
	addi a5, a0, 400
	lw a3, 0(a4)
	sh2add a4, a3, a5
	lw t0, 0(a4)
	addi a4, a2, -20
	sh2add a5, t0, a0
	lw a3, 0(a5)
	add a5, a0, a4
	lw a2, 0(a5)
	mul a4, a2, a1
	add a5, a0, a4
	lw a2, 68(a5)
	mul a4, a2, a1
	add t0, a0, a4
	lw a2, 64(t0)
	mul a5, a2, a1
	add t0, a0, a5
	lw a4, 60(t0)
	mul a5, a4, a1
	add a2, a0, a5
	lw a4, 56(a2)
	mul a5, a4, a1
	add t0, a0, a5
	lw a2, 52(t0)
	mul a4, a2, a1
	add t0, a0, a4
	lw a2, 48(t0)
	mul a5, a2, a1
	add t0, a0, a5
	lw a4, 44(t0)
	mul a5, a4, a1
	add a2, a0, a5
	lw a4, 40(a2)
	mul a5, a4, a1
	add a2, a0, a5
	lw a4, 36(a2)
	mul t0, a4, a1
	add a5, a0, t0
	lw a2, 32(a5)
	mul a4, a2, a1
	add a5, a0, a4
	lw a2, 28(a5)
	mul a4, a2, a1
	add a5, a0, a4
	lw a2, 24(a5)
	mul a4, a2, a1
	add a5, a0, a4
	lw a2, 20(a5)
	mul a4, a2, a1
	add a5, a0, a4
	lw a2, 16(a5)
	mul a4, a2, a1
	add t1, a0, a4
	lw t0, 12(t1)
	mul a5, t0, a1
	add a2, a0, a5
	lw a4, 8(a2)
	mul a5, a4, a1
	add a2, a0, a5
	lw a4, 4(a2)
	mul t0, a4, a1
	add a5, a0, t0
	lw a2, 0(a5)
	mul a1, a2, a1
	add a4, a0, a1
	lw a2, 224(a4)
	addw a0, a3, a2
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	ld s2, 8(sp)
	ld s1, 16(sp)
	ld s0, 24(sp)
	addi sp, sp, 32
	ret
