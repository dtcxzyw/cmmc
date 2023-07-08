.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
	addi sp, sp, -416
	li a0, 324
	sd s0, 408(sp)
	addi s0, sp, 0
	sd ra, 400(sp)
	jal _sysy_starttime
	jal getint
	mv a1, zero
label2:
	li a2, 100
	bge a1, a2, label19
	sh2add a2, a1, s0
	addiw a1, a1, 1
	sw zero, 0(a2)
	j label2
label19:
	mv a3, zero
	mv a1, zero
	ble a0, zero, label13
label8:
	li a2, 1
	addiw a1, a1, 1
	mv a4, a3
	sw a2, 4(sp)
	li a2, 2
	sw a2, 8(sp)
	li a2, 3
	sw a2, 12(sp)
	li a2, 4
	sw a2, 16(sp)
	li a2, 5
	sw a2, 20(sp)
	li a2, 6
	sw a2, 24(sp)
	li a2, 7
	sw a2, 28(sp)
	li a2, 8
	sw a2, 32(sp)
	li a2, 9
	sw a2, 36(sp)
	li a2, 10
	sw a2, 40(sp)
	li a2, 11
	sw a2, 44(sp)
	li a2, 12
	sw a2, 48(sp)
	li a2, 13
	sw a2, 52(sp)
	li a2, 14
	sw a2, 56(sp)
	li a2, 15
	sw a2, 60(sp)
	li a2, 16
	sw a2, 64(sp)
	li a2, 17
	sw a2, 68(sp)
	li a2, 18
	sw a2, 72(sp)
	li a2, 19
	sw a2, 76(sp)
	li a2, 20
	sw a2, 80(sp)
	li a2, 21
	sw a2, 84(sp)
	li a2, 22
	sw a2, 88(sp)
	li a2, 23
	sw a2, 92(sp)
	li a2, 24
	sw a2, 96(sp)
	li a2, 25
	sw a2, 100(sp)
	li a2, 26
	sw a2, 104(sp)
	li a2, 27
	sw a2, 108(sp)
	li a2, 28
	sw a2, 112(sp)
	li a2, 29
	sw a2, 116(sp)
	li a2, 30
	sw a2, 120(sp)
	li a2, 31
	sw a2, 124(sp)
	li a2, 32
	sw a2, 128(sp)
	li a2, 33
	sw a2, 132(sp)
	li a2, 34
	sw a2, 136(sp)
	li a2, 35
	sw a2, 140(sp)
	li a2, 36
	sw a2, 144(sp)
	li a2, 37
	sw a2, 148(sp)
	li a2, 38
	sw a2, 152(sp)
	li a2, 39
	sw a2, 156(sp)
	li a2, 40
	sw a2, 160(sp)
	li a2, 41
	sw a2, 164(sp)
	li a2, 42
	sw a2, 168(sp)
	li a2, 43
	sw a2, 172(sp)
	li a2, 44
	sw a2, 176(sp)
	li a2, 45
	sw a2, 180(sp)
	li a2, 46
	sw a2, 184(sp)
	li a2, 47
	sw a2, 188(sp)
	li a2, 48
	sw a2, 192(sp)
	li a2, 49
	sw a2, 196(sp)
	li a2, 50
	sw a2, 200(sp)
	li a2, 51
	sw a2, 204(sp)
	li a2, 52
	sw a2, 208(sp)
	li a2, 53
	sw a2, 212(sp)
	li a2, 54
	sw a2, 216(sp)
	li a2, 55
	sw a2, 220(sp)
	li a2, 56
	sw a2, 224(sp)
	li a2, 57
	sw a2, 228(sp)
	li a2, 58
	sw a2, 232(sp)
	li a2, 59
	sw a2, 236(sp)
	li a2, 60
	sw a2, 240(sp)
	li a2, 61
	sw a2, 244(sp)
	li a2, 62
	sw a2, 248(sp)
	li a2, 63
	sw a2, 252(sp)
	li a2, 64
	sw a2, 256(sp)
	li a2, 65
	sw a2, 260(sp)
	li a2, 66
	sw a2, 264(sp)
	li a2, 67
	sw a2, 268(sp)
	li a2, 68
	sw a2, 272(sp)
	li a2, 69
	sw a2, 276(sp)
	li a2, 70
	sw a2, 280(sp)
	li a2, 71
	sw a2, 284(sp)
	li a2, 72
	sw a2, 288(sp)
	li a2, 73
	sw a2, 292(sp)
	li a2, 74
	sw a2, 296(sp)
	li a2, 75
	sw a2, 300(sp)
	li a2, 76
	sw a2, 304(sp)
	li a2, 77
	sw a2, 308(sp)
	li a2, 78
	sw a2, 312(sp)
	li a2, 79
	sw a2, 316(sp)
	li a2, 80
	sw a2, 320(sp)
	li a2, 81
	sw a2, 324(sp)
	li a2, 82
	sw a2, 328(sp)
	li a2, 83
	sw a2, 332(sp)
	li a2, 84
	sw a2, 336(sp)
	li a2, 85
	sw a2, 340(sp)
	li a2, 86
	sw a2, 344(sp)
	li a2, 87
	sw a2, 348(sp)
	li a2, 88
	sw a2, 352(sp)
	li a2, 89
	sw a2, 356(sp)
	li a2, 90
	sw a2, 360(sp)
	li a2, 91
	sw a2, 364(sp)
	li a2, 92
	sw a2, 368(sp)
	li a2, 93
	sw a2, 372(sp)
	li a2, 94
	sw a2, 376(sp)
	li a2, 95
	sw a2, 380(sp)
	li a2, 96
	sw a2, 384(sp)
	li a2, 97
	sw a2, 388(sp)
	li a2, 98
	sw a2, 392(sp)
	li a2, 99
	sw a2, 396(sp)
	mv a2, zero
label9:
	sh2add a3, a2, s0
	addiw a2, a2, 16
	lw a5, 0(a3)
	addw a4, a4, a5
	lw a5, 4(a3)
	addw a4, a4, a5
	lw a5, 8(a3)
	addw a4, a4, a5
	lw a5, 12(a3)
	addw a4, a4, a5
	lw a5, 16(a3)
	addw a4, a4, a5
	lw a5, 20(a3)
	addw a4, a4, a5
	lw a5, 24(a3)
	addw a4, a4, a5
	lw a5, 28(a3)
	addw a4, a4, a5
	lw a5, 32(a3)
	addw a4, a4, a5
	lw a5, 36(a3)
	addw a4, a4, a5
	lw a5, 40(a3)
	addw a4, a4, a5
	lw a5, 44(a3)
	addw a4, a4, a5
	lw a5, 48(a3)
	addw a4, a4, a5
	lw a5, 52(a3)
	addw a4, a4, a5
	lw a5, 56(a3)
	lw a3, 60(a3)
	addw a4, a4, a5
	addw a3, a4, a3
	li a4, 96
	bge a2, a4, label12
	mv a4, a3
	j label9
label12:
	sh2add a2, a2, s0
	lw a4, 0(a2)
	addw a3, a3, a4
	lw a4, 4(a2)
	addw a3, a3, a4
	lw a4, 8(a2)
	lw a2, 12(a2)
	addw a3, a3, a4
	addw a2, a3, a2
	li a3, -2147450879
	mul a3, a2, a3
	srli a3, a3, 32
	add a3, a3, a2
	sraiw a4, a3, 15
	srliw a3, a3, 31
	add a3, a3, a4
	li a4, 65535
	mulw a3, a3, a4
	subw a3, a2, a3
	ble a0, a1, label13
	j label8
label13:
	mv a0, a3
	jal putint
	li a0, 10
	jal putch
	li a0, 328
	jal _sysy_stoptime
	ld ra, 400(sp)
	mv a0, zero
	ld s0, 408(sp)
	addi sp, sp, 416
	ret
