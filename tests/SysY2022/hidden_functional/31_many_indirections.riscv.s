.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
array:
	.zero	8000
.text
.globl main
main:
.p2align 2
	addi sp, sp, -8
pcrel424:
	auipc a0, %pcrel_hi(array)
	mv a2, zero
	addi a1, a0, %pcrel_lo(pcrel424)
	sd ra, 0(sp)
.p2align 2
label2:
	li a4, 400
	li a5, 3
	li t0, 28
	mul a3, a2, a4
	addiw a2, a2, 1
	li a4, 2
	add a0, a1, a3
	li a3, 1
	sw zero, 0(a0)
	sw a3, 4(a0)
	li a3, 4
	sw a4, 8(a0)
	li a4, 5
	sw a5, 12(a0)
	li a5, 8
	sw a3, 16(a0)
	li a3, 6
	sw a4, 20(a0)
	li a4, 7
	sw a3, 24(a0)
	li a3, 9
	sw a4, 28(a0)
	li a4, 10
	sw a5, 32(a0)
	li a5, 19
	sw a3, 36(a0)
	li a3, 11
	sw a4, 40(a0)
	li a4, 12
	sw a3, 44(a0)
	li a3, 13
	sw a4, 48(a0)
	li a4, 14
	sw a3, 52(a0)
	li a3, 15
	sw a4, 56(a0)
	li a4, 16
	sw a3, 60(a0)
	li a3, 17
	sw a4, 64(a0)
	li a4, 18
	sw a3, 68(a0)
	li a3, 20
	sw a4, 72(a0)
	li a4, 22
	sw a5, 76(a0)
	li a5, 21
	sw a3, 80(a0)
	sw a5, 84(a0)
	li a5, 23
	sw a4, 88(a0)
	li a4, 24
	sw a5, 92(a0)
	li a5, 25
	sw a4, 96(a0)
	li a4, 26
	sw a5, 100(a0)
	li a5, 27
	sw a4, 104(a0)
	li a4, 29
	sw a5, 108(a0)
	li a5, 30
	sw t0, 112(a0)
	li t0, 35
	sw a4, 116(a0)
	li a4, 31
	sw a5, 120(a0)
	li a5, 32
	sw a4, 124(a0)
	li a4, 33
	sw a5, 128(a0)
	li a5, 34
	sw a4, 132(a0)
	li a4, 36
	sw a5, 136(a0)
	li a5, 37
	sw t0, 140(a0)
	li t0, 39
	sw a4, 144(a0)
	li a4, 38
	sw a5, 148(a0)
	li a5, 40
	sw a4, 152(a0)
	li a4, 41
	sw t0, 156(a0)
	li t0, 43
	sw a5, 160(a0)
	li a5, 42
	sw a4, 164(a0)
	li a4, 44
	sw a5, 168(a0)
	li a5, 45
	sw t0, 172(a0)
	li t0, 46
	sw a4, 176(a0)
	li a4, 47
	sw a5, 180(a0)
	li a5, 48
	sw t0, 184(a0)
	li t0, 52
	sw a4, 188(a0)
	li a4, 49
	sw a5, 192(a0)
	li a5, 50
	sw a4, 196(a0)
	li a4, 51
	sw a5, 200(a0)
	li a5, 53
	sw a4, 204(a0)
	li a4, 54
	sw t0, 208(a0)
	li t0, 55
	sw a5, 212(a0)
	li a5, 56
	sw a4, 216(a0)
	li a4, 57
	sw t0, 220(a0)
	li t0, 64
	sw a5, 224(a0)
	li a5, 58
	sw a4, 228(a0)
	li a4, 59
	sw a5, 232(a0)
	li a5, 60
	sw a4, 236(a0)
	li a4, 61
	sw a5, 240(a0)
	li a5, 62
	sw a4, 244(a0)
	li a4, 63
	sw a5, 248(a0)
	li a5, 65
	sw a4, 252(a0)
	li a4, 66
	sw t0, 256(a0)
	li t0, 72
	sw a5, 260(a0)
	li a5, 67
	sw a4, 264(a0)
	li a4, 68
	sw a5, 268(a0)
	li a5, 69
	sw a4, 272(a0)
	li a4, 70
	sw a5, 276(a0)
	li a5, 71
	sw a4, 280(a0)
	li a4, 73
	sw a5, 284(a0)
	li a5, 74
	sw t0, 288(a0)
	li t0, 79
	sw a4, 292(a0)
	li a4, 75
	sw a5, 296(a0)
	li a5, 76
	sw a4, 300(a0)
	li a4, 77
	sw a5, 304(a0)
	li a5, 78
	sw a4, 308(a0)
	li a4, 80
	sw a5, 312(a0)
	li a5, 81
	sw t0, 316(a0)
	li t0, 85
	sw a4, 320(a0)
	li a4, 82
	sw a5, 324(a0)
	li a5, 83
	sw a4, 328(a0)
	li a4, 84
	sw a5, 332(a0)
	li a5, 86
	sw a4, 336(a0)
	li a4, 87
	sw t0, 340(a0)
	li t0, 96
	sw a5, 344(a0)
	li a5, 88
	sw a4, 348(a0)
	li a4, 89
	sw a5, 352(a0)
	li a5, 90
	sw a4, 356(a0)
	li a4, 91
	sw a5, 360(a0)
	li a5, 92
	sw a4, 364(a0)
	li a4, 93
	sw a5, 368(a0)
	li a5, 94
	sw a4, 372(a0)
	li a4, 95
	sw a5, 376(a0)
	li a5, 97
	sw a4, 380(a0)
	li a4, 98
	sw t0, 384(a0)
	sw a5, 388(a0)
	li a5, 99
	sw a4, 392(a0)
	sw a5, 396(a0)
	blt a2, a3, label2
	li a0, 7692
	addi a2, a0, -492
	add a4, a1, a0
	add a5, a1, a2
	addi a0, a0, -20
	addi a2, a2, -400
	lw a3, 0(a4)
	sh2add a4, a3, a5
	add a5, a1, a2
	addi a2, a2, -400
	lw a3, 0(a4)
	sh2add a4, a3, a5
	add a5, a1, a2
	addi a2, a2, -400
	lw a3, 0(a4)
	sh2add a4, a3, a5
	add a5, a1, a2
	addi a2, a2, -400
	lw a3, 0(a4)
	sh2add a4, a3, a5
	lw a3, 0(a4)
	add a4, a1, a2
	addi a2, a2, -400
	sh2add a5, a3, a4
	lw a3, 0(a5)
	add a5, a1, a2
	addi a2, a2, -400
	sh2add a4, a3, a5
	add a5, a1, a2
	addi a2, a2, -400
	lw a3, 0(a4)
	sh2add a4, a3, a5
	add a5, a1, a2
	addi a2, a2, -400
	lw a3, 0(a4)
	sh2add a4, a3, a5
	add a5, a1, a2
	addi a2, a2, -400
	lw a3, 0(a4)
	sh2add a4, a3, a5
	add a5, a1, a2
	addi a2, a2, -400
	lw a3, 0(a4)
	sh2add a4, a3, a5
	lw a3, 0(a4)
	add a4, a1, a2
	addi a2, a2, -400
	sh2add a5, a3, a4
	add a4, a1, a2
	addi a2, a2, -400
	lw a3, 0(a5)
	sh2add a5, a3, a4
	add a4, a1, a2
	lw a3, 0(a5)
	addi a5, a1, 800
	sh2add a3, a3, a4
	addi a4, a1, 2000
	lw a2, 0(a3)
	sh2add a3, a2, a4
	addi a4, a1, 1600
	lw a2, 0(a3)
	sh2add a3, a2, a4
	addi a4, a1, 1200
	lw a2, 0(a3)
	sh2add a3, a2, a4
	lw a2, 0(a3)
	addi a3, a1, 400
	sh2add a4, a2, a5
	lw a2, 0(a4)
	sh2add a5, a2, a3
	lw a4, 0(a5)
	sh2add a3, a4, a1
	add a4, a1, a0
	li a0, 400
	lw a2, 0(a3)
	lw a3, 0(a4)
	mul t0, a3, a0
	add a4, a1, t0
	lw a5, 68(a4)
	mul a3, a5, a0
	add a4, a1, a3
	lw a5, 64(a4)
	mul a3, a5, a0
	add a4, a1, a3
	lw a5, 60(a4)
	mul a3, a5, a0
	add a4, a1, a3
	lw a5, 56(a4)
	mul a3, a5, a0
	add a4, a1, a3
	lw a5, 52(a4)
	mul a3, a5, a0
	add a4, a1, a3
	lw a5, 48(a4)
	mul a3, a5, a0
	add a4, a1, a3
	lw a5, 44(a4)
	mul a3, a5, a0
	add a4, a1, a3
	lw t0, 40(a4)
	mul a5, t0, a0
	add a3, a1, a5
	lw a4, 36(a3)
	mul a5, a4, a0
	add a3, a1, a5
	lw a4, 32(a3)
	mul a5, a4, a0
	add a3, a1, a5
	lw a4, 28(a3)
	mul a5, a4, a0
	add a3, a1, a5
	lw a4, 24(a3)
	mul a5, a4, a0
	add a3, a1, a5
	lw a4, 20(a3)
	mul t1, a4, a0
	add t0, a1, t1
	lw a5, 16(t0)
	mul a3, a5, a0
	add a4, a1, a3
	lw a5, 12(a4)
	mul a3, a5, a0
	add a4, a1, a3
	lw a5, 8(a4)
	mul a3, a5, a0
	add a4, a1, a3
	lw a5, 4(a4)
	mul a3, a5, a0
	add t0, a1, a3
	lw a4, 0(t0)
	mul a0, a4, a0
	add a1, a1, a0
	lw a3, 224(a1)
	addw a0, a2, a3
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	addi sp, sp, 8
	ret
