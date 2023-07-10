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
	li a4, 2
	li a5, 3
	addiw a1, a1, 1
	sw a2, 4(sp)
	li a2, 4
	sw a4, 8(sp)
	li a4, 5
	sw a5, 12(sp)
	li a5, 33
	sw a2, 16(sp)
	li a2, 6
	sw a4, 20(sp)
	li a4, 7
	sw a2, 24(sp)
	li a2, 8
	sw a4, 28(sp)
	li a4, 9
	sw a2, 32(sp)
	li a2, 10
	sw a4, 36(sp)
	li a4, 11
	sw a2, 40(sp)
	li a2, 12
	sw a4, 44(sp)
	li a4, 13
	sw a2, 48(sp)
	li a2, 14
	sw a4, 52(sp)
	li a4, 15
	sw a2, 56(sp)
	li a2, 16
	sw a4, 60(sp)
	li a4, 17
	sw a2, 64(sp)
	li a2, 18
	sw a4, 68(sp)
	li a4, 19
	sw a2, 72(sp)
	li a2, 20
	sw a4, 76(sp)
	li a4, 21
	sw a2, 80(sp)
	li a2, 22
	sw a4, 84(sp)
	li a4, 23
	sw a2, 88(sp)
	li a2, 24
	sw a4, 92(sp)
	li a4, 25
	sw a2, 96(sp)
	li a2, 26
	sw a4, 100(sp)
	li a4, 27
	sw a2, 104(sp)
	li a2, 28
	sw a4, 108(sp)
	li a4, 29
	sw a2, 112(sp)
	li a2, 30
	sw a4, 116(sp)
	li a4, 31
	sw a2, 120(sp)
	li a2, 32
	sw a4, 124(sp)
	li a4, 34
	sw a2, 128(sp)
	li a2, 35
	sw a5, 132(sp)
	li a5, 47
	sw a4, 136(sp)
	li a4, 36
	sw a2, 140(sp)
	li a2, 37
	sw a4, 144(sp)
	li a4, 38
	sw a2, 148(sp)
	li a2, 39
	sw a4, 152(sp)
	li a4, 40
	sw a2, 156(sp)
	li a2, 41
	sw a4, 160(sp)
	li a4, 42
	sw a2, 164(sp)
	li a2, 43
	sw a4, 168(sp)
	li a4, 44
	sw a2, 172(sp)
	li a2, 45
	sw a4, 176(sp)
	li a4, 46
	sw a2, 180(sp)
	li a2, 48
	sw a4, 184(sp)
	li a4, 49
	sw a5, 188(sp)
	li a5, 52
	sw a2, 192(sp)
	li a2, 50
	sw a4, 196(sp)
	li a4, 51
	sw a2, 200(sp)
	li a2, 53
	sw a4, 204(sp)
	li a4, 54
	sw a5, 208(sp)
	li a5, 68
	sw a2, 212(sp)
	li a2, 55
	sw a4, 216(sp)
	li a4, 56
	sw a2, 220(sp)
	li a2, 57
	sw a4, 224(sp)
	li a4, 58
	sw a2, 228(sp)
	li a2, 59
	sw a4, 232(sp)
	li a4, 60
	sw a2, 236(sp)
	li a2, 61
	sw a4, 240(sp)
	li a4, 62
	sw a2, 244(sp)
	li a2, 63
	sw a4, 248(sp)
	li a4, 64
	sw a2, 252(sp)
	li a2, 65
	sw a4, 256(sp)
	li a4, 66
	sw a2, 260(sp)
	li a2, 67
	sw a4, 264(sp)
	li a4, 69
	sw a2, 268(sp)
	li a2, 70
	sw a5, 272(sp)
	sw a4, 276(sp)
	li a4, 71
	sw a2, 280(sp)
	li a2, 72
	sw a4, 284(sp)
	li a4, 73
	sw a2, 288(sp)
	li a2, 74
	sw a4, 292(sp)
	li a4, 75
	sw a2, 296(sp)
	li a2, 76
	sw a4, 300(sp)
	li a4, 77
	sw a2, 304(sp)
	li a2, 78
	sw a4, 308(sp)
	li a4, 79
	sw a2, 312(sp)
	li a2, 80
	sw a4, 316(sp)
	li a4, 81
	sw a2, 320(sp)
	li a2, 82
	sw a4, 324(sp)
	li a4, 83
	sw a2, 328(sp)
	li a2, 84
	sw a4, 332(sp)
	li a4, 85
	sw a2, 336(sp)
	li a2, 86
	sw a4, 340(sp)
	li a4, 87
	sw a2, 344(sp)
	li a2, 88
	sw a4, 348(sp)
	li a4, 89
	sw a2, 352(sp)
	li a2, 90
	sw a4, 356(sp)
	li a4, 91
	sw a2, 360(sp)
	li a2, 92
	sw a4, 364(sp)
	li a4, 93
	sw a2, 368(sp)
	li a2, 94
	sw a4, 372(sp)
	li a4, 95
	sw a2, 376(sp)
	li a2, 96
	sw a4, 380(sp)
	li a4, 97
	sw a2, 384(sp)
	li a2, 98
	sw a4, 388(sp)
	li a4, 99
	sw a2, 392(sp)
	mv a2, zero
	sw a4, 396(sp)
	mv a4, a3
label9:
	sh2add a3, a2, s0
	lw t0, 0(a3)
	addiw a2, a2, 16
	lw t1, 4(a3)
	addw a5, a4, t0
	lw t0, 8(a3)
	addw a4, a5, t1
	lw t1, 12(a3)
	addw a5, a4, t0
	lw t0, 16(a3)
	addw a4, a5, t1
	lw t1, 20(a3)
	addw a5, a4, t0
	lw t0, 24(a3)
	addw a4, a5, t1
	lw t1, 28(a3)
	addw a5, a4, t0
	lw t0, 32(a3)
	addw a4, a5, t1
	lw t1, 36(a3)
	addw a5, a4, t0
	lw t0, 40(a3)
	addw a4, a5, t1
	lw t1, 44(a3)
	addw a5, a4, t0
	addw a4, a5, t1
	lw a5, 48(a3)
	addw t0, a4, a5
	lw a4, 52(a3)
	addw a5, t0, a4
	lw t0, 56(a3)
	addw a4, a5, t0
	lw a5, 60(a3)
	addw a3, a4, a5
	li a4, 96
	bge a2, a4, label12
	mv a4, a3
	j label9
label12:
	sh2add a2, a2, s0
	lw a4, 0(a2)
	lw a5, 4(a2)
	addw a3, a3, a4
	lw t0, 8(a2)
	addw a4, a3, a5
	addw a3, a4, t0
	lw a4, 12(a2)
	addw a2, a3, a4
	li a3, -2147450879
	mul a4, a2, a3
	srli a5, a4, 32
	add a3, a5, a2
	srliw a5, a3, 31
	sraiw a4, a3, 15
	add a3, a5, a4
	li a4, 65535
	mulw a5, a3, a4
	subw a3, a2, a5
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
