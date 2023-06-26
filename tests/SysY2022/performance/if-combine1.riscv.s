.data
.text
.globl main
main:
	addi sp, sp, -1256
	sd s11, 976(sp)
	sd s3, 984(sp)
	sd s9, 992(sp)
	sd s7, 1000(sp)
	sd s0, 1008(sp)
	sd s5, 1016(sp)
	sd s1, 1024(sp)
	sd s6, 1032(sp)
	sd s2, 1040(sp)
	sd s8, 1048(sp)
	sd s4, 1056(sp)
	sd s10, 1064(sp)
	sd ra, 1072(sp)
	addi t6, sp, 336
	sd t6, 328(sp)
	li a0, 324
	jal _sysy_starttime
	jal getint
	mv a2, a0
	sd a0, 1208(sp)
	ld t6, 328(sp)
	addi t5, t6, 4
	sd t5, 1200(sp)
	ld t6, 328(sp)
	addi t5, t6, 8
	sd t5, 1192(sp)
	ld t6, 328(sp)
	addi t5, t6, 12
	sd t5, 1184(sp)
	ld t6, 328(sp)
	addi t5, t6, 16
	sd t5, 1176(sp)
	ld t6, 328(sp)
	addi t5, t6, 20
	sd t5, 1168(sp)
	ld t6, 328(sp)
	addi t5, t6, 24
	sd t5, 1160(sp)
	ld t6, 328(sp)
	addi t5, t6, 28
	sd t5, 1152(sp)
	ld t6, 328(sp)
	addi t5, t6, 32
	sd t5, 1144(sp)
	ld t6, 328(sp)
	addi t5, t6, 36
	sd t5, 1216(sp)
	ld t6, 328(sp)
	addi t5, t6, 40
	sd t5, 1224(sp)
	ld t6, 328(sp)
	addi t5, t6, 44
	sd t5, 1232(sp)
	ld t6, 328(sp)
	addi t5, t6, 48
	sd t5, 1240(sp)
	ld t6, 328(sp)
	addi t5, t6, 52
	sd t5, 0(sp)
	ld t6, 328(sp)
	addi t5, t6, 56
	sd t5, 8(sp)
	ld t6, 328(sp)
	addi t5, t6, 60
	sd t5, 16(sp)
	ld t6, 328(sp)
	addi t5, t6, 64
	sd t5, 24(sp)
	ld t6, 328(sp)
	addi t5, t6, 68
	sd t5, 32(sp)
	ld t6, 328(sp)
	addi t5, t6, 72
	sd t5, 40(sp)
	ld t6, 328(sp)
	addi t5, t6, 76
	sd t5, 48(sp)
	ld t6, 328(sp)
	addi t5, t6, 80
	sd t5, 56(sp)
	ld t6, 328(sp)
	addi t5, t6, 84
	sd t5, 64(sp)
	ld t6, 328(sp)
	addi t5, t6, 88
	sd t5, 80(sp)
	ld t6, 328(sp)
	addi t5, t6, 92
	sd t5, 96(sp)
	ld t6, 328(sp)
	addi t5, t6, 96
	sd t5, 112(sp)
	ld t6, 328(sp)
	addi t5, t6, 100
	sd t5, 72(sp)
	ld t6, 328(sp)
	addi t5, t6, 104
	sd t5, 88(sp)
	ld t6, 328(sp)
	addi t5, t6, 108
	sd t5, 104(sp)
	ld t6, 328(sp)
	addi t5, t6, 112
	sd t5, 1136(sp)
	ld t6, 328(sp)
	addi t5, t6, 116
	sd t5, 1128(sp)
	ld t6, 328(sp)
	addi t5, t6, 120
	sd t5, 1120(sp)
	ld t6, 328(sp)
	addi t5, t6, 124
	sd t5, 1112(sp)
	ld t6, 328(sp)
	addi t5, t6, 128
	sd t5, 1096(sp)
	ld t6, 328(sp)
	addi t5, t6, 132
	sd t5, 1080(sp)
	ld t6, 328(sp)
	addi t5, t6, 136
	sd t5, 960(sp)
	ld t6, 328(sp)
	addi t5, t6, 140
	sd t5, 784(sp)
	ld t6, 328(sp)
	addi t5, t6, 144
	sd t5, 800(sp)
	ld t6, 328(sp)
	addi t5, t6, 148
	sd t5, 816(sp)
	ld t6, 328(sp)
	addi t5, t6, 152
	sd t5, 832(sp)
	ld t6, 328(sp)
	addi t5, t6, 156
	sd t5, 848(sp)
	ld t6, 328(sp)
	addi t5, t6, 160
	sd t5, 864(sp)
	ld t6, 328(sp)
	addi t5, t6, 164
	sd t5, 872(sp)
	ld t6, 328(sp)
	addi t5, t6, 168
	sd t5, 888(sp)
	ld t6, 328(sp)
	addi t5, t6, 172
	sd t5, 736(sp)
	ld t6, 328(sp)
	addi t5, t6, 176
	sd t5, 904(sp)
	ld t6, 328(sp)
	addi t5, t6, 180
	sd t5, 912(sp)
	ld t6, 328(sp)
	addi t5, t6, 184
	sd t5, 920(sp)
	ld t6, 328(sp)
	addi t5, t6, 188
	sd t5, 928(sp)
	ld t6, 328(sp)
	addi t5, t6, 192
	sd t5, 936(sp)
	ld t6, 328(sp)
	addi t5, t6, 196
	sd t5, 944(sp)
	ld t6, 328(sp)
	addi t5, t6, 200
	sd t5, 952(sp)
	ld t6, 328(sp)
	addi a3, t6, 204
	ld t6, 328(sp)
	addi a4, t6, 208
	ld t6, 328(sp)
	addi a5, t6, 212
	ld t6, 328(sp)
	addi t1, t6, 216
	ld t6, 328(sp)
	addi t2, t6, 220
	ld t6, 328(sp)
	addi t3, t6, 224
	ld t6, 328(sp)
	addi t4, t6, 228
	ld t6, 328(sp)
	addi t5, t6, 232
	sd t5, 120(sp)
	ld t6, 328(sp)
	addi t5, t6, 236
	sd t5, 128(sp)
	ld t6, 328(sp)
	addi t5, t6, 240
	sd t5, 136(sp)
	ld t6, 328(sp)
	addi t5, t6, 244
	sd t5, 144(sp)
	ld t6, 328(sp)
	addi t5, t6, 248
	sd t5, 152(sp)
	ld t6, 328(sp)
	addi t5, t6, 252
	sd t5, 160(sp)
	ld t6, 328(sp)
	addi t5, t6, 256
	sd t5, 168(sp)
	ld t6, 328(sp)
	addi t5, t6, 260
	sd t5, 176(sp)
	ld t6, 328(sp)
	addi t5, t6, 264
	sd t5, 184(sp)
	ld t6, 328(sp)
	addi t5, t6, 268
	sd t5, 192(sp)
	ld t6, 328(sp)
	addi t5, t6, 272
	sd t5, 200(sp)
	ld t6, 328(sp)
	addi t5, t6, 276
	sd t5, 208(sp)
	ld t6, 328(sp)
	addi t5, t6, 280
	sd t5, 216(sp)
	ld t6, 328(sp)
	addi t5, t6, 284
	sd t5, 224(sp)
	ld t6, 328(sp)
	addi t5, t6, 288
	sd t5, 232(sp)
	ld t6, 328(sp)
	addi t5, t6, 292
	sd t5, 1248(sp)
	ld t6, 328(sp)
	addi t5, t6, 296
	sd t5, 896(sp)
	ld t6, 328(sp)
	addi t5, t6, 300
	sd t5, 880(sp)
	ld t6, 328(sp)
	addi t5, t6, 304
	sd t5, 744(sp)
	ld t6, 328(sp)
	addi t5, t6, 308
	sd t5, 856(sp)
	ld t6, 328(sp)
	addi t5, t6, 312
	sd t5, 840(sp)
	ld t6, 328(sp)
	addi t5, t6, 316
	sd t5, 824(sp)
	ld t6, 328(sp)
	addi t5, t6, 320
	sd t5, 808(sp)
	ld t6, 328(sp)
	addi t5, t6, 324
	sd t5, 792(sp)
	ld t6, 328(sp)
	addi t5, t6, 328
	sd t5, 968(sp)
	ld t6, 328(sp)
	addi t5, t6, 332
	sd t5, 1088(sp)
	ld t6, 328(sp)
	addi t5, t6, 336
	sd t5, 1104(sp)
	ld t6, 328(sp)
	addi t5, t6, 340
	sd t5, 776(sp)
	ld t6, 328(sp)
	addi t5, t6, 344
	sd t5, 768(sp)
	ld t6, 328(sp)
	addi t5, t6, 348
	sd t5, 760(sp)
	ld t6, 328(sp)
	addi t5, t6, 352
	sd t5, 752(sp)
	ld t6, 328(sp)
	addi t5, t6, 356
	sd t5, 240(sp)
	ld t6, 328(sp)
	addi t5, t6, 360
	sd t5, 248(sp)
	ld t6, 328(sp)
	addi t5, t6, 364
	sd t5, 256(sp)
	ld t6, 328(sp)
	addi t5, t6, 368
	sd t5, 264(sp)
	ld t6, 328(sp)
	addi t5, t6, 372
	sd t5, 272(sp)
	ld t6, 328(sp)
	addi t5, t6, 376
	sd t5, 280(sp)
	ld t6, 328(sp)
	addi t5, t6, 380
	sd t5, 288(sp)
	ld t6, 328(sp)
	addi t5, t6, 384
	sd t5, 320(sp)
	ld t6, 328(sp)
	addi t5, t6, 388
	sd t5, 296(sp)
	ld t6, 328(sp)
	addi t5, t6, 392
	sd t5, 304(sp)
	ld t6, 328(sp)
	addi t5, t6, 396
	sd t5, 312(sp)
	mv a0, zero
	li a1, 100
	bge zero, a1, label118
	slli a1, zero, 2
	ld t6, 328(sp)
	add a1, t6, a1
	sw zero, 0(a1)
	addiw a0, zero, 1
	li a1, 100
	bge a0, a1, label118
	slli a1, a0, 2
	ld t6, 328(sp)
	add a1, t6, a1
	sw zero, 0(a1)
	addiw a0, a0, 1
	li a1, 100
	bge a0, a1, label118
	slli a1, a0, 2
	ld t6, 328(sp)
	add a1, t6, a1
	sw zero, 0(a1)
	addiw a0, a0, 1
	li a1, 100
	bge a0, a1, label118
	slli a1, a0, 2
	ld t6, 328(sp)
	add a1, t6, a1
	sw zero, 0(a1)
	addiw a0, a0, 1
	li a1, 100
	bge a0, a1, label118
	slli a1, a0, 2
	ld t6, 328(sp)
	add a1, t6, a1
	sw zero, 0(a1)
	addiw a0, a0, 1
	li a1, 100
	bge a0, a1, label118
	slli a1, a0, 2
	ld t6, 328(sp)
	add a1, t6, a1
	sw zero, 0(a1)
	addiw a0, a0, 1
	li a1, 100
	bge a0, a1, label118
	slli a1, a0, 2
	ld t6, 328(sp)
	add a1, t6, a1
	sw zero, 0(a1)
	addiw a0, a0, 1
	li a1, 100
	bge a0, a1, label118
	slli a1, a0, 2
	ld t6, 328(sp)
	add a1, t6, a1
	sw zero, 0(a1)
	addiw a0, a0, 1
	li a1, 100
	bge a0, a1, label118
	j label433
label118:
	mv a0, zero
	mv a1, zero
	ld a2, 1208(sp)
	bge zero, a2, label13
label8:
	li a2, 1
	ld t5, 1200(sp)
	sw a2, 0(t5)
	li a2, 2
	ld t5, 1192(sp)
	sw a2, 0(t5)
	li a2, 3
	ld t5, 1184(sp)
	sw a2, 0(t5)
	li a2, 4
	ld t5, 1176(sp)
	sw a2, 0(t5)
	li a2, 5
	ld t5, 1168(sp)
	sw a2, 0(t5)
	li a2, 6
	ld t5, 1160(sp)
	sw a2, 0(t5)
	li a2, 7
	ld t5, 1152(sp)
	sw a2, 0(t5)
	li a2, 8
	ld t5, 1144(sp)
	sw a2, 0(t5)
	li a2, 9
	ld t5, 1216(sp)
	sw a2, 0(t5)
	li a2, 10
	ld t5, 1224(sp)
	sw a2, 0(t5)
	li a2, 11
	ld t5, 1232(sp)
	sw a2, 0(t5)
	li a2, 12
	ld t5, 1240(sp)
	sw a2, 0(t5)
	li a2, 13
	ld t5, 0(sp)
	sw a2, 0(t5)
	li a2, 14
	ld t5, 8(sp)
	sw a2, 0(t5)
	li a2, 15
	ld t5, 16(sp)
	sw a2, 0(t5)
	li a2, 16
	ld t5, 24(sp)
	sw a2, 0(t5)
	li a2, 17
	ld t5, 32(sp)
	sw a2, 0(t5)
	li a2, 18
	ld t5, 40(sp)
	sw a2, 0(t5)
	li a2, 19
	ld t5, 48(sp)
	sw a2, 0(t5)
	li a2, 20
	ld t5, 56(sp)
	sw a2, 0(t5)
	li a2, 21
	ld t5, 64(sp)
	sw a2, 0(t5)
	li a2, 22
	ld t5, 80(sp)
	sw a2, 0(t5)
	li a2, 23
	ld t5, 96(sp)
	sw a2, 0(t5)
	li a2, 24
	ld t5, 112(sp)
	sw a2, 0(t5)
	li a2, 25
	ld t5, 72(sp)
	sw a2, 0(t5)
	li a2, 26
	ld t5, 88(sp)
	sw a2, 0(t5)
	li a2, 27
	ld t5, 104(sp)
	sw a2, 0(t5)
	li a2, 28
	ld t5, 1136(sp)
	sw a2, 0(t5)
	li a2, 29
	ld t5, 1128(sp)
	sw a2, 0(t5)
	li a2, 30
	ld t5, 1120(sp)
	sw a2, 0(t5)
	li a2, 31
	ld t5, 1112(sp)
	sw a2, 0(t5)
	li a2, 32
	ld t5, 1096(sp)
	sw a2, 0(t5)
	li a2, 33
	ld t5, 1080(sp)
	sw a2, 0(t5)
	li a2, 34
	ld t5, 960(sp)
	sw a2, 0(t5)
	li a2, 35
	ld t5, 784(sp)
	sw a2, 0(t5)
	li a2, 36
	ld t5, 800(sp)
	sw a2, 0(t5)
	li a2, 37
	ld t5, 816(sp)
	sw a2, 0(t5)
	li a2, 38
	ld t5, 832(sp)
	sw a2, 0(t5)
	li a2, 39
	ld t5, 848(sp)
	sw a2, 0(t5)
	li a2, 40
	ld t5, 864(sp)
	sw a2, 0(t5)
	li a2, 41
	ld t5, 872(sp)
	sw a2, 0(t5)
	li a2, 42
	ld t5, 888(sp)
	sw a2, 0(t5)
	li a2, 43
	ld t5, 736(sp)
	sw a2, 0(t5)
	li a2, 44
	ld t5, 904(sp)
	sw a2, 0(t5)
	li a2, 45
	ld t5, 912(sp)
	sw a2, 0(t5)
	li a2, 46
	ld t5, 920(sp)
	sw a2, 0(t5)
	li a2, 47
	ld t5, 928(sp)
	sw a2, 0(t5)
	li a2, 48
	ld t5, 936(sp)
	sw a2, 0(t5)
	li a2, 49
	ld t5, 944(sp)
	sw a2, 0(t5)
	li a2, 50
	ld t5, 952(sp)
	sw a2, 0(t5)
	li a2, 51
	sw a2, 0(a3)
	li a2, 52
	sw a2, 0(a4)
	li a2, 53
	sw a2, 0(a5)
	li a2, 54
	sw a2, 0(t1)
	li a2, 55
	sw a2, 0(t2)
	li a2, 56
	sw a2, 0(t3)
	li a2, 57
	sw a2, 0(t4)
	li a2, 58
	ld t5, 120(sp)
	sw a2, 0(t5)
	li a2, 59
	ld t5, 128(sp)
	sw a2, 0(t5)
	li a2, 60
	ld t5, 136(sp)
	sw a2, 0(t5)
	li a2, 61
	ld t5, 144(sp)
	sw a2, 0(t5)
	li a2, 62
	ld t5, 152(sp)
	sw a2, 0(t5)
	li a2, 63
	ld t5, 160(sp)
	sw a2, 0(t5)
	li a2, 64
	ld t5, 168(sp)
	sw a2, 0(t5)
	li a2, 65
	ld t5, 176(sp)
	sw a2, 0(t5)
	li a2, 66
	ld t5, 184(sp)
	sw a2, 0(t5)
	li a2, 67
	ld t5, 192(sp)
	sw a2, 0(t5)
	li a2, 68
	ld t5, 200(sp)
	sw a2, 0(t5)
	li a2, 69
	ld t5, 208(sp)
	sw a2, 0(t5)
	li a2, 70
	ld t5, 216(sp)
	sw a2, 0(t5)
	li a2, 71
	ld t5, 224(sp)
	sw a2, 0(t5)
	li a2, 72
	ld t5, 232(sp)
	sw a2, 0(t5)
	li a2, 73
	ld t5, 1248(sp)
	sw a2, 0(t5)
	li a2, 74
	ld t5, 896(sp)
	sw a2, 0(t5)
	li a2, 75
	ld t5, 880(sp)
	sw a2, 0(t5)
	li a2, 76
	ld t5, 744(sp)
	sw a2, 0(t5)
	li a2, 77
	ld t5, 856(sp)
	sw a2, 0(t5)
	li a2, 78
	ld t5, 840(sp)
	sw a2, 0(t5)
	li a2, 79
	ld t5, 824(sp)
	sw a2, 0(t5)
	li a2, 80
	ld t5, 808(sp)
	sw a2, 0(t5)
	li a2, 81
	ld t5, 792(sp)
	sw a2, 0(t5)
	li a2, 82
	ld t5, 968(sp)
	sw a2, 0(t5)
	li a2, 83
	ld t5, 1088(sp)
	sw a2, 0(t5)
	li a2, 84
	ld t5, 1104(sp)
	sw a2, 0(t5)
	li a2, 85
	ld t5, 776(sp)
	sw a2, 0(t5)
	li a2, 86
	ld t5, 768(sp)
	sw a2, 0(t5)
	li a2, 87
	ld t5, 760(sp)
	sw a2, 0(t5)
	li a2, 88
	ld t5, 752(sp)
	sw a2, 0(t5)
	li a2, 89
	ld t5, 240(sp)
	sw a2, 0(t5)
	li a2, 90
	ld t5, 248(sp)
	sw a2, 0(t5)
	li a2, 91
	ld t5, 256(sp)
	sw a2, 0(t5)
	li a2, 92
	ld t5, 264(sp)
	sw a2, 0(t5)
	li a2, 93
	ld t5, 272(sp)
	sw a2, 0(t5)
	li a2, 94
	ld t5, 280(sp)
	sw a2, 0(t5)
	li a2, 95
	ld t5, 288(sp)
	sw a2, 0(t5)
	li a2, 96
	ld t5, 320(sp)
	sw a2, 0(t5)
	li a2, 97
	ld t5, 296(sp)
	sw a2, 0(t5)
	li a2, 98
	ld t5, 304(sp)
	sw a2, 0(t5)
	li a2, 99
	ld t5, 312(sp)
	sw a2, 0(t5)
	addiw a1, a1, 1
	mv a2, zero
label9:
	slli t5, a2, 2
	ld t6, 328(sp)
	add s11, t6, t5
	lw s3, 0(s11)
	lw s9, 4(s11)
	lw s7, 8(s11)
	lw a7, 12(s11)
	lw t5, 16(s11)
	lw a6, 20(s11)
	lw t6, 24(s11)
	lw s0, 28(s11)
	lw s1, 32(s11)
	lw s2, 36(s11)
	lw s5, 40(s11)
	lw s6, 44(s11)
	lw s8, 48(s11)
	lw s4, 52(s11)
	lw s10, 56(s11)
	lw s11, 60(s11)
	addw a0, a0, s3
	addw a0, a0, s9
	addw a0, a0, s7
	addw a0, a0, a7
	addw a0, a0, t5
	addw a0, a0, a6
	addw a0, a0, t6
	addw a0, a0, s0
	addw a0, a0, s1
	addw a0, a0, s2
	addw a0, a0, s5
	addw a0, a0, s6
	addw a0, a0, s8
	addw a0, a0, s4
	addw a0, a0, s10
	addw a0, a0, s11
	addiw a2, a2, 16
	li t5, 96
	bge a2, t5, label12
	j label9
label12:
	slli a2, a2, 2
	ld t6, 328(sp)
	add t5, t6, a2
	lw a2, 0(t5)
	lw t6, 4(t5)
	lw a6, 8(t5)
	lw t5, 12(t5)
	addw a2, a2, t6
	addw a2, a2, a6
	addw a2, a2, t5
	addw a0, a2, a0
	li a2, -2147450879
	mul a2, a0, a2
	srli a2, a2, 32
	add t5, a2, a0
	sraiw a2, t5, 15
	srliw t5, t5, 31
	add a2, t5, a2
	li t5, 65535
	mulw a2, a2, t5
	subw a0, a0, a2
	ld a2, 1208(sp)
	bge a1, a2, label13
	j label8
label433:
	slli a1, a0, 2
	ld t6, 328(sp)
	add a1, t6, a1
	sw zero, 0(a1)
	addiw a0, a0, 1
	li a1, 100
	bge a0, a1, label118
	j label433
label13:
	jal putint
	li a0, 10
	jal putch
	li a0, 328
	jal _sysy_stoptime
	mv a0, zero
	ld ra, 1072(sp)
	ld s10, 1064(sp)
	ld s4, 1056(sp)
	ld s8, 1048(sp)
	ld s2, 1040(sp)
	ld s6, 1032(sp)
	ld s1, 1024(sp)
	ld s5, 1016(sp)
	ld s0, 1008(sp)
	ld s7, 1000(sp)
	ld s9, 992(sp)
	ld s3, 984(sp)
	ld s11, 976(sp)
	addi sp, sp, 1256
	ret
