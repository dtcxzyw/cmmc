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
pcrel438:
	auipc a0, %pcrel_hi(array)
	mv a3, zero
	li a2, 400
	li a4, 1
	li a5, 2
	li t0, 3
	li t1, 4
	li t2, 5
	li t3, 6
	li t4, 7
	li t5, 8
	li t6, 9
	li a6, 10
	sd ra, 0(sp)
	addi a1, a0, %pcrel_lo(pcrel438)
	sd s0, 8(sp)
	sd s1, 16(sp)
	sd s2, 24(sp)
.p2align 2
label2:
	mul a7, a3, a2
	li s0, 21
	li s1, 22
	li s2, 29
	addiw a3, a3, 1
	add a0, a1, a7
	li a7, 11
	sw zero, 0(a0)
	sw a4, 4(a0)
	sw a5, 8(a0)
	sw t0, 12(a0)
	sw t1, 16(a0)
	sw t2, 20(a0)
	sw t3, 24(a0)
	sw t4, 28(a0)
	sw t5, 32(a0)
	sw t6, 36(a0)
	sw a6, 40(a0)
	sw a7, 44(a0)
	li a7, 12
	sw a7, 48(a0)
	li a7, 13
	sw a7, 52(a0)
	li a7, 14
	sw a7, 56(a0)
	li a7, 15
	sw a7, 60(a0)
	li a7, 16
	sw a7, 64(a0)
	li a7, 17
	sw a7, 68(a0)
	li a7, 18
	sw a7, 72(a0)
	li a7, 19
	sw a7, 76(a0)
	li a7, 20
	sw a7, 80(a0)
	sw s0, 84(a0)
	li s0, 23
	sw s1, 88(a0)
	li s1, 24
	sw s0, 92(a0)
	li s0, 25
	sw s1, 96(a0)
	li s1, 26
	sw s0, 100(a0)
	li s0, 27
	sw s1, 104(a0)
	li s1, 28
	sw s0, 108(a0)
	li s0, 30
	sw s1, 112(a0)
	li s1, 31
	sw s2, 116(a0)
	li s2, 32
	sw s0, 120(a0)
	li s0, 33
	sw s1, 124(a0)
	li s1, 34
	sw s2, 128(a0)
	li s2, 41
	sw s0, 132(a0)
	li s0, 35
	sw s1, 136(a0)
	li s1, 36
	sw s0, 140(a0)
	li s0, 37
	sw s1, 144(a0)
	li s1, 38
	sw s0, 148(a0)
	li s0, 39
	sw s1, 152(a0)
	li s1, 40
	sw s0, 156(a0)
	li s0, 42
	sw s1, 160(a0)
	li s1, 43
	sw s2, 164(a0)
	li s2, 46
	sw s0, 168(a0)
	li s0, 44
	sw s1, 172(a0)
	li s1, 45
	sw s0, 176(a0)
	li s0, 47
	sw s1, 180(a0)
	li s1, 49
	sw s2, 184(a0)
	li s2, 48
	sw s0, 188(a0)
	li s0, 50
	sw s2, 192(a0)
	li s2, 57
	sw s1, 196(a0)
	li s1, 51
	sw s0, 200(a0)
	li s0, 52
	sw s1, 204(a0)
	li s1, 53
	sw s0, 208(a0)
	li s0, 54
	sw s1, 212(a0)
	li s1, 55
	sw s0, 216(a0)
	li s0, 56
	sw s1, 220(a0)
	li s1, 58
	sw s0, 224(a0)
	li s0, 59
	sw s2, 228(a0)
	li s2, 65
	sw s1, 232(a0)
	li s1, 60
	sw s0, 236(a0)
	li s0, 61
	sw s1, 240(a0)
	li s1, 62
	sw s0, 244(a0)
	li s0, 63
	sw s1, 248(a0)
	li s1, 64
	sw s0, 252(a0)
	li s0, 66
	sw s1, 256(a0)
	li s1, 68
	sw s2, 260(a0)
	li s2, 67
	sw s0, 264(a0)
	li s0, 69
	sw s2, 268(a0)
	li s2, 73
	sw s1, 272(a0)
	li s1, 70
	sw s0, 276(a0)
	li s0, 71
	sw s1, 280(a0)
	li s1, 72
	sw s0, 284(a0)
	li s0, 74
	sw s1, 288(a0)
	li s1, 75
	sw s2, 292(a0)
	li s2, 81
	sw s0, 296(a0)
	li s0, 76
	sw s1, 300(a0)
	li s1, 77
	sw s0, 304(a0)
	li s0, 78
	sw s1, 308(a0)
	li s1, 79
	sw s0, 312(a0)
	li s0, 80
	sw s1, 316(a0)
	li s1, 82
	sw s0, 320(a0)
	li s0, 83
	sw s2, 324(a0)
	li s2, 85
	sw s1, 328(a0)
	li s1, 84
	sw s0, 332(a0)
	li s0, 86
	sw s1, 336(a0)
	li s1, 87
	sw s2, 340(a0)
	li s2, 89
	sw s0, 344(a0)
	li s0, 88
	sw s1, 348(a0)
	li s1, 90
	sw s0, 352(a0)
	li s0, 91
	sw s2, 356(a0)
	li s2, 95
	sw s1, 360(a0)
	li s1, 92
	sw s0, 364(a0)
	li s0, 93
	sw s1, 368(a0)
	li s1, 94
	sw s0, 372(a0)
	li s0, 96
	sw s1, 376(a0)
	li s1, 97
	sw s2, 380(a0)
	sw s0, 384(a0)
	li s0, 98
	sw s1, 388(a0)
	li s1, 99
	sw s0, 392(a0)
	sw s1, 396(a0)
	blt a3, a7, label2
	li a0, 7692
	addi a3, a0, -492
	add a5, a1, a0
	add t0, a1, a3
	addi a0, a0, -20
	addi a3, a3, -400
	lw a4, 0(a5)
	sh2add a5, a4, t0
	add t0, a1, a3
	addi a3, a3, -400
	lw a4, 0(a5)
	sh2add a5, a4, t0
	add t0, a1, a3
	addi a3, a3, -400
	lw a4, 0(a5)
	sh2add a5, a4, t0
	lw a4, 0(a5)
	add a5, a1, a3
	addi a3, a3, -400
	sh2add t0, a4, a5
	add a5, a1, a3
	addi a3, a3, -400
	lw a4, 0(t0)
	sh2add t0, a4, a5
	lw a4, 0(t0)
	add t0, a1, a3
	addi a3, a3, -400
	sh2add a5, a4, t0
	add t0, a1, a3
	addi a3, a3, -400
	lw a4, 0(a5)
	sh2add a5, a4, t0
	add t0, a1, a3
	addi a3, a3, -400
	lw a4, 0(a5)
	sh2add a5, a4, t0
	add t0, a1, a3
	addi a3, a3, -400
	lw a4, 0(a5)
	sh2add a5, a4, t0
	add t0, a1, a3
	addi a3, a3, -400
	lw a4, 0(a5)
	sh2add a5, a4, t0
	lw a4, 0(a5)
	add a5, a1, a3
	addi a3, a3, -400
	sh2add t0, a4, a5
	add a5, a1, a3
	addi a3, a3, -400
	lw a4, 0(t0)
	sh2add t0, a4, a5
	add a5, a1, a3
	lw a4, 0(t0)
	sh2add t0, a4, a5
	addi a4, a1, 2000
	lw a3, 0(t0)
	sh2add a5, a3, a4
	addi a4, a1, 1600
	lw a3, 0(a5)
	sh2add a5, a3, a4
	addi a4, a1, 1200
	lw a3, 0(a5)
	sh2add a5, a3, a4
	addi a4, a1, 800
	lw a3, 0(a5)
	sh2add a5, a3, a4
	addi a4, a1, 400
	lw a3, 0(a5)
	sh2add t0, a3, a4
	lw a5, 0(t0)
	add t0, a1, a0
	sh2add a4, a5, a1
	lw a3, 0(a4)
	lw a4, 0(t0)
	mul a5, a4, a2
	add a0, a1, a5
	lw a4, 68(a0)
	mul a5, a4, a2
	add a0, a1, a5
	lw a4, 64(a0)
	mul a5, a4, a2
	add a0, a1, a5
	lw a4, 60(a0)
	mul a5, a4, a2
	add a0, a1, a5
	lw a4, 56(a0)
	mul a5, a4, a2
	add a0, a1, a5
	lw a4, 52(a0)
	mul a5, a4, a2
	add a0, a1, a5
	lw a4, 48(a0)
	mul a5, a4, a2
	add a0, a1, a5
	lw a4, 44(a0)
	mul a5, a4, a2
	add a0, a1, a5
	lw a4, 40(a0)
	mul t0, a4, a2
	add a5, a1, t0
	lw a0, 36(a5)
	mul a4, a0, a2
	add a5, a1, a4
	lw a0, 32(a5)
	mul a4, a0, a2
	add a5, a1, a4
	lw a0, 28(a5)
	mul a4, a0, a2
	add a5, a1, a4
	lw a0, 24(a5)
	mul a4, a0, a2
	add a5, a1, a4
	lw a0, 20(a5)
	mul a4, a0, a2
	add t1, a1, a4
	lw t0, 16(t1)
	mul a5, t0, a2
	add a0, a1, a5
	lw a4, 12(a0)
	mul a5, a4, a2
	add a0, a1, a5
	lw a4, 8(a0)
	mul t1, a4, a2
	add t0, a1, t1
	lw a5, 4(t0)
	mul a0, a5, a2
	add a4, a1, a0
	lw a5, 0(a4)
	mul a0, a5, a2
	add a1, a1, a0
	lw a2, 224(a1)
	addw a0, a3, a2
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 32
	ret
