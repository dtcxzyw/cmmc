.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
	addi sp, sp, -416
	sd s0, 408(sp)
	sd ra, 400(sp)
	addi s0, sp, 0
	li a0, 324
	jal _sysy_starttime
	jal getint
	mv a2, a0
	mv a0, zero
	li a1, 100
	bge zero, a1, label19
	slli a1, zero, 2
	add a1, s0, a1
	sw zero, 0(a1)
	addiw a0, zero, 1
	li a1, 100
	bge a0, a1, label19
	slli a1, a0, 2
	add a1, s0, a1
	sw zero, 0(a1)
	addiw a0, a0, 1
	li a1, 100
	bge a0, a1, label19
	slli a1, a0, 2
	add a1, s0, a1
	sw zero, 0(a1)
	addiw a0, a0, 1
	li a1, 100
	bge a0, a1, label19
	slli a1, a0, 2
	add a1, s0, a1
	sw zero, 0(a1)
	addiw a0, a0, 1
	li a1, 100
	bge a0, a1, label19
	slli a1, a0, 2
	add a1, s0, a1
	sw zero, 0(a1)
	addiw a0, a0, 1
	li a1, 100
	bge a0, a1, label19
	slli a1, a0, 2
	add a1, s0, a1
	sw zero, 0(a1)
	addiw a0, a0, 1
	li a1, 100
	bge a0, a1, label19
	slli a1, a0, 2
	add a1, s0, a1
	sw zero, 0(a1)
	addiw a0, a0, 1
	li a1, 100
	bge a0, a1, label19
	slli a1, a0, 2
	add a1, s0, a1
	sw zero, 0(a1)
	addiw a0, a0, 1
	li a1, 100
	bge a0, a1, label19
	j label327
label19:
	mv a0, zero
	mv a1, zero
	bge zero, a2, label12
label7:
	li a3, 1
	sw a3, 4(s0)
	li a3, 2
	sw a3, 8(s0)
	li a3, 3
	sw a3, 12(s0)
	li a3, 4
	sw a3, 16(s0)
	li a3, 5
	sw a3, 20(s0)
	li a3, 6
	sw a3, 24(s0)
	li a3, 7
	sw a3, 28(s0)
	li a3, 8
	sw a3, 32(s0)
	li a3, 9
	sw a3, 36(s0)
	li a3, 10
	sw a3, 40(s0)
	li a3, 11
	sw a3, 44(s0)
	li a3, 12
	sw a3, 48(s0)
	li a3, 13
	sw a3, 52(s0)
	li a3, 14
	sw a3, 56(s0)
	li a3, 15
	sw a3, 60(s0)
	li a3, 16
	sw a3, 64(s0)
	li a3, 17
	sw a3, 68(s0)
	li a3, 18
	sw a3, 72(s0)
	li a3, 19
	sw a3, 76(s0)
	li a3, 20
	sw a3, 80(s0)
	li a3, 21
	sw a3, 84(s0)
	li a3, 22
	sw a3, 88(s0)
	li a3, 23
	sw a3, 92(s0)
	li a3, 24
	sw a3, 96(s0)
	li a3, 25
	sw a3, 100(s0)
	li a3, 26
	sw a3, 104(s0)
	li a3, 27
	sw a3, 108(s0)
	li a3, 28
	sw a3, 112(s0)
	li a3, 29
	sw a3, 116(s0)
	li a3, 30
	sw a3, 120(s0)
	li a3, 31
	sw a3, 124(s0)
	li a3, 32
	sw a3, 128(s0)
	li a3, 33
	sw a3, 132(s0)
	li a3, 34
	sw a3, 136(s0)
	li a3, 35
	sw a3, 140(s0)
	li a3, 36
	sw a3, 144(s0)
	li a3, 37
	sw a3, 148(s0)
	li a3, 38
	sw a3, 152(s0)
	li a3, 39
	sw a3, 156(s0)
	li a3, 40
	sw a3, 160(s0)
	li a3, 41
	sw a3, 164(s0)
	li a3, 42
	sw a3, 168(s0)
	li a3, 43
	sw a3, 172(s0)
	li a3, 44
	sw a3, 176(s0)
	li a3, 45
	sw a3, 180(s0)
	li a3, 46
	sw a3, 184(s0)
	li a3, 47
	sw a3, 188(s0)
	li a3, 48
	sw a3, 192(s0)
	li a3, 49
	sw a3, 196(s0)
	li a3, 50
	sw a3, 200(s0)
	li a3, 51
	sw a3, 204(s0)
	li a3, 52
	sw a3, 208(s0)
	li a3, 53
	sw a3, 212(s0)
	li a3, 54
	sw a3, 216(s0)
	li a3, 55
	sw a3, 220(s0)
	li a3, 56
	sw a3, 224(s0)
	li a3, 57
	sw a3, 228(s0)
	li a3, 58
	sw a3, 232(s0)
	li a3, 59
	sw a3, 236(s0)
	li a3, 60
	sw a3, 240(s0)
	li a3, 61
	sw a3, 244(s0)
	li a3, 62
	sw a3, 248(s0)
	li a3, 63
	sw a3, 252(s0)
	li a3, 64
	sw a3, 256(s0)
	li a3, 65
	sw a3, 260(s0)
	li a3, 66
	sw a3, 264(s0)
	li a3, 67
	sw a3, 268(s0)
	li a3, 68
	sw a3, 272(s0)
	li a3, 69
	sw a3, 276(s0)
	li a3, 70
	sw a3, 280(s0)
	li a3, 71
	sw a3, 284(s0)
	li a3, 72
	sw a3, 288(s0)
	li a3, 73
	sw a3, 292(s0)
	li a3, 74
	sw a3, 296(s0)
	li a3, 75
	sw a3, 300(s0)
	li a3, 76
	sw a3, 304(s0)
	li a3, 77
	sw a3, 308(s0)
	li a3, 78
	sw a3, 312(s0)
	li a3, 79
	sw a3, 316(s0)
	li a3, 80
	sw a3, 320(s0)
	li a3, 81
	sw a3, 324(s0)
	li a3, 82
	sw a3, 328(s0)
	li a3, 83
	sw a3, 332(s0)
	li a3, 84
	sw a3, 336(s0)
	li a3, 85
	sw a3, 340(s0)
	li a3, 86
	sw a3, 344(s0)
	li a3, 87
	sw a3, 348(s0)
	li a3, 88
	sw a3, 352(s0)
	li a3, 89
	sw a3, 356(s0)
	li a3, 90
	sw a3, 360(s0)
	li a3, 91
	sw a3, 364(s0)
	li a3, 92
	sw a3, 368(s0)
	li a3, 93
	sw a3, 372(s0)
	li a3, 94
	sw a3, 376(s0)
	li a3, 95
	sw a3, 380(s0)
	li a3, 96
	sw a3, 384(s0)
	li a3, 97
	sw a3, 388(s0)
	li a3, 98
	sw a3, 392(s0)
	li a3, 99
	sw a3, 396(s0)
	addiw a1, a1, 1
	mv a3, zero
label8:
	slli a4, a3, 2
	add a4, s0, a4
	lw a5, 0(a4)
	addw a0, a0, a5
	lw a5, 4(a4)
	addw a0, a0, a5
	lw a5, 8(a4)
	addw a0, a0, a5
	lw a5, 12(a4)
	addw a0, a0, a5
	lw a5, 16(a4)
	addw a0, a0, a5
	lw a5, 20(a4)
	addw a0, a0, a5
	lw a5, 24(a4)
	addw a0, a0, a5
	lw a5, 28(a4)
	addw a0, a0, a5
	lw a5, 32(a4)
	addw a0, a0, a5
	lw a5, 36(a4)
	addw a0, a0, a5
	lw a5, 40(a4)
	addw a0, a0, a5
	lw a5, 44(a4)
	addw a0, a0, a5
	lw a5, 48(a4)
	addw a0, a0, a5
	lw a5, 52(a4)
	addw a0, a0, a5
	lw a5, 56(a4)
	addw a0, a0, a5
	lw a4, 60(a4)
	addw a0, a0, a4
	addiw a3, a3, 16
	li a4, 96
	bge a3, a4, label11
	j label8
label11:
	slli a3, a3, 2
	add a3, s0, a3
	lw a5, 0(a3)
	lw a4, 4(a3)
	addw a0, a0, a5
	addw a0, a0, a4
	lw a4, 8(a3)
	addw a0, a0, a4
	lw a3, 12(a3)
	addw a0, a0, a3
	li a3, -2147450879
	mul a3, a0, a3
	srli a3, a3, 32
	add a3, a3, a0
	sraiw a4, a3, 15
	srliw a3, a3, 31
	add a3, a3, a4
	li a4, 65535
	mulw a3, a3, a4
	subw a0, a0, a3
	bge a1, a2, label12
	j label7
label327:
	slli a1, a0, 2
	add a1, s0, a1
	sw zero, 0(a1)
	addiw a0, a0, 1
	li a1, 100
	bge a0, a1, label19
	j label327
label12:
	jal putint
	li a0, 10
	jal putch
	li a0, 328
	jal _sysy_stoptime
	mv a0, zero
	ld ra, 400(sp)
	ld s0, 408(sp)
	addi sp, sp, 416
	ret
