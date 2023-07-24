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
	li a3, 100
	blt a1, a3, label4
	mv a2, zero
	mv a1, zero
	j label5
label4:
	sh2add a2, a1, s0
	addiw a1, a1, 1
	sw zero, 0(a2)
	j label2
label5:
	ble a0, a1, label13
	li a4, 1
	li a3, 2
	li a5, 4
	addiw a1, a1, 1
	sw a4, 4(sp)
	li a4, 3
	sw a3, 8(sp)
	li a3, 5
	sw a4, 12(sp)
	li a4, 6
	sw a5, 16(sp)
	li a5, 9
	sw a3, 20(sp)
	li a3, 7
	sw a4, 24(sp)
	li a4, 8
	sw a3, 28(sp)
	li a3, 10
	sw a4, 32(sp)
	li a4, 11
	sw a5, 36(sp)
	li a5, 17
	sw a3, 40(sp)
	li a3, 12
	sw a4, 44(sp)
	li a4, 13
	sw a3, 48(sp)
	li a3, 14
	sw a4, 52(sp)
	li a4, 15
	sw a3, 56(sp)
	li a3, 16
	sw a4, 60(sp)
	li a4, 18
	sw a3, 64(sp)
	li a3, 19
	sw a5, 68(sp)
	li a5, 43
	sw a4, 72(sp)
	li a4, 20
	sw a3, 76(sp)
	li a3, 21
	sw a4, 80(sp)
	li a4, 22
	sw a3, 84(sp)
	li a3, 23
	sw a4, 88(sp)
	li a4, 24
	sw a3, 92(sp)
	li a3, 25
	sw a4, 96(sp)
	li a4, 26
	sw a3, 100(sp)
	li a3, 27
	sw a4, 104(sp)
	li a4, 28
	sw a3, 108(sp)
	li a3, 29
	sw a4, 112(sp)
	li a4, 30
	sw a3, 116(sp)
	li a3, 31
	sw a4, 120(sp)
	li a4, 32
	sw a3, 124(sp)
	li a3, 33
	sw a4, 128(sp)
	li a4, 34
	sw a3, 132(sp)
	li a3, 35
	sw a4, 136(sp)
	li a4, 36
	sw a3, 140(sp)
	li a3, 37
	sw a4, 144(sp)
	li a4, 38
	sw a3, 148(sp)
	li a3, 39
	sw a4, 152(sp)
	li a4, 40
	sw a3, 156(sp)
	li a3, 41
	sw a4, 160(sp)
	li a4, 42
	sw a3, 164(sp)
	li a3, 44
	sw a4, 168(sp)
	li a4, 45
	sw a5, 172(sp)
	li a5, 54
	sw a3, 176(sp)
	li a3, 46
	sw a4, 180(sp)
	li a4, 47
	sw a3, 184(sp)
	li a3, 48
	sw a4, 188(sp)
	li a4, 49
	sw a3, 192(sp)
	li a3, 50
	sw a4, 196(sp)
	li a4, 51
	sw a3, 200(sp)
	li a3, 52
	sw a4, 204(sp)
	li a4, 53
	sw a3, 208(sp)
	li a3, 55
	sw a4, 212(sp)
	li a4, 56
	sw a5, 216(sp)
	li a5, 68
	sw a3, 220(sp)
	li a3, 57
	sw a4, 224(sp)
	li a4, 58
	sw a3, 228(sp)
	li a3, 59
	sw a4, 232(sp)
	li a4, 60
	sw a3, 236(sp)
	li a3, 61
	sw a4, 240(sp)
	li a4, 62
	sw a3, 244(sp)
	li a3, 63
	sw a4, 248(sp)
	li a4, 64
	sw a3, 252(sp)
	li a3, 65
	sw a4, 256(sp)
	li a4, 66
	sw a3, 260(sp)
	li a3, 67
	sw a4, 264(sp)
	li a4, 69
	sw a3, 268(sp)
	li a3, 70
	sw a5, 272(sp)
	sw a4, 276(sp)
	li a4, 71
	sw a3, 280(sp)
	li a3, 72
	sw a4, 284(sp)
	li a4, 73
	sw a3, 288(sp)
	li a3, 74
	sw a4, 292(sp)
	li a4, 75
	sw a3, 296(sp)
	li a3, 76
	sw a4, 300(sp)
	li a4, 77
	sw a3, 304(sp)
	li a3, 78
	sw a4, 308(sp)
	li a4, 79
	sw a3, 312(sp)
	li a3, 80
	sw a4, 316(sp)
	li a4, 81
	sw a3, 320(sp)
	li a3, 82
	sw a4, 324(sp)
	li a4, 83
	sw a3, 328(sp)
	li a3, 84
	sw a4, 332(sp)
	li a4, 85
	sw a3, 336(sp)
	li a3, 86
	sw a4, 340(sp)
	li a4, 87
	sw a3, 344(sp)
	li a3, 88
	sw a4, 348(sp)
	li a4, 89
	sw a3, 352(sp)
	li a3, 90
	sw a4, 356(sp)
	li a4, 91
	sw a3, 360(sp)
	li a3, 92
	sw a4, 364(sp)
	li a4, 93
	sw a3, 368(sp)
	li a3, 94
	sw a4, 372(sp)
	li a4, 95
	sw a3, 376(sp)
	li a3, 96
	sw a4, 380(sp)
	li a4, 97
	sw a3, 384(sp)
	li a3, 98
	sw a4, 388(sp)
	li a4, 99
	sw a3, 392(sp)
	mv a3, zero
	sw a4, 396(sp)
	mv a4, a2
label9:
	sh2add a2, a3, s0
	lw a5, 0(a2)
	addiw a3, a3, 16
	lw t1, 4(a2)
	addw a4, a4, a5
	lw t0, 8(a2)
	addw a5, a4, t1
	addw a4, a5, t0
	lw a5, 12(a2)
	addw t0, a4, a5
	lw a4, 16(a2)
	addw a5, t0, a4
	lw t0, 20(a2)
	lw t2, 24(a2)
	addw a4, a5, t0
	lw t1, 28(a2)
	addw a5, a4, t2
	lw t0, 32(a2)
	addw a4, a5, t1
	lw t1, 36(a2)
	addw a5, a4, t0
	lw t0, 40(a2)
	addw a4, a5, t1
	lw t1, 44(a2)
	addw a5, a4, t0
	lw t0, 48(a2)
	addw a4, a5, t1
	lw t1, 52(a2)
	addw a5, a4, t0
	lw t0, 56(a2)
	addw a4, a5, t1
	addw a5, a4, t0
	lw a4, 60(a2)
	addw a2, a5, a4
	li a4, 96
	bge a3, a4, label12
	mv a4, a2
	j label9
label12:
	sh2add a3, a3, s0
	lw a5, 0(a3)
	lw a4, 4(a3)
	addw a2, a2, a5
	addw a5, a2, a4
	lw a2, 8(a3)
	addw a4, a5, a2
	lw a5, 12(a3)
	li a3, -2147450879
	addw a2, a4, a5
	mul a4, a2, a3
	srli a5, a4, 32
	add a3, a5, a2
	srliw a5, a3, 31
	sraiw a4, a3, 15
	add a3, a5, a4
	li a4, 65535
	mulw a5, a3, a4
	subw a2, a2, a5
	j label5
label13:
	mv a0, a2
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
