.data
.text
.globl main
main:
	addi sp, sp, -1144
	sd s10, 496(sp)
	sd s0, 520(sp)
	sd s5, 528(sp)
	sd s1, 536(sp)
	sd s6, 544(sp)
	sd s2, 552(sp)
	sd s3, 1136(sp)
	sd s4, 560(sp)
	sd s7, 576(sp)
	sd s8, 592(sp)
	sd s9, 608(sp)
	sd s11, 624(sp)
	sd ra, 640(sp)
	addi s10, sp, 736
	sd s10, 712(sp)
	li a0, 324
	jal _sysy_starttime
	jal getint
	mv a2, a0
	sd a0, 656(sp)
	ld s10, 712(sp)
	addi s10, s10, 4
	sd s10, 480(sp)
	ld s10, 712(sp)
	addi s10, s10, 8
	sd s10, 280(sp)
	ld s10, 712(sp)
	addi s10, s10, 12
	sd s10, 296(sp)
	ld s10, 712(sp)
	addi s10, s10, 16
	sd s10, 312(sp)
	ld s10, 712(sp)
	addi s10, s10, 20
	sd s10, 320(sp)
	ld s10, 712(sp)
	addi s10, s10, 24
	sd s10, 328(sp)
	ld s10, 712(sp)
	addi s10, s10, 28
	sd s10, 336(sp)
	ld s10, 712(sp)
	addi s10, s10, 32
	sd s10, 344(sp)
	ld s10, 712(sp)
	addi s10, s10, 36
	sd s10, 672(sp)
	ld s10, 712(sp)
	addi s10, s10, 40
	sd s10, 688(sp)
	ld s10, 712(sp)
	addi s10, s10, 44
	sd s10, 704(sp)
	ld s10, 712(sp)
	addi s10, s10, 48
	sd s10, 720(sp)
	ld s10, 712(sp)
	addi s10, s10, 52
	sd s10, 0(sp)
	ld s10, 712(sp)
	addi s10, s10, 56
	sd s10, 8(sp)
	ld s10, 712(sp)
	addi s10, s10, 60
	sd s10, 16(sp)
	ld s10, 712(sp)
	addi s10, s10, 64
	sd s10, 24(sp)
	ld s10, 712(sp)
	addi s10, s10, 68
	sd s10, 32(sp)
	ld s10, 712(sp)
	addi s10, s10, 72
	sd s10, 40(sp)
	ld s10, 712(sp)
	addi s10, s10, 76
	sd s10, 48(sp)
	ld s10, 712(sp)
	addi s10, s10, 80
	sd s10, 56(sp)
	ld s10, 712(sp)
	addi s10, s10, 84
	sd s10, 64(sp)
	ld s10, 712(sp)
	addi s10, s10, 88
	sd s10, 80(sp)
	ld s10, 712(sp)
	addi s10, s10, 92
	sd s10, 96(sp)
	ld s10, 712(sp)
	addi s10, s10, 96
	sd s10, 112(sp)
	ld s10, 712(sp)
	addi s10, s10, 100
	sd s10, 72(sp)
	ld s10, 712(sp)
	addi s10, s10, 104
	sd s10, 88(sp)
	ld s10, 712(sp)
	addi s10, s10, 108
	sd s10, 104(sp)
	ld s10, 712(sp)
	addi s10, s10, 112
	sd s10, 352(sp)
	ld s10, 712(sp)
	addi s10, s10, 116
	sd s10, 368(sp)
	ld s10, 712(sp)
	addi s10, s10, 120
	sd s10, 384(sp)
	ld s10, 712(sp)
	addi s10, s10, 124
	sd s10, 400(sp)
	ld s10, 712(sp)
	addi s10, s10, 128
	sd s10, 416(sp)
	ld s10, 712(sp)
	addi s10, s10, 132
	sd s10, 432(sp)
	ld s10, 712(sp)
	addi s10, s10, 136
	sd s10, 448(sp)
	ld s10, 712(sp)
	addi s10, s10, 140
	sd s10, 464(sp)
	ld s10, 712(sp)
	addi s10, s10, 144
	sd s10, 504(sp)
	ld s10, 712(sp)
	addi a3, s10, 148
	ld s10, 712(sp)
	addi a4, s10, 152
	ld s10, 712(sp)
	addi a5, s10, 156
	ld s10, 712(sp)
	addi t1, s10, 160
	ld s10, 712(sp)
	addi t2, s10, 164
	ld s10, 712(sp)
	addi t3, s10, 168
	ld s10, 712(sp)
	addi t4, s10, 172
	ld s10, 712(sp)
	addi t5, s10, 176
	ld s10, 712(sp)
	addi t6, s10, 180
	ld s10, 712(sp)
	addi a6, s10, 184
	ld s10, 712(sp)
	addi a7, s10, 188
	ld s10, 712(sp)
	addi s0, s10, 192
	ld s10, 712(sp)
	addi s1, s10, 196
	ld s10, 712(sp)
	addi s2, s10, 200
	ld s10, 712(sp)
	addi s3, s10, 204
	ld s10, 712(sp)
	addi s4, s10, 208
	ld s10, 712(sp)
	addi s5, s10, 212
	ld s10, 712(sp)
	addi s6, s10, 216
	ld s10, 712(sp)
	addi s7, s10, 220
	ld s10, 712(sp)
	addi s8, s10, 224
	ld s10, 712(sp)
	addi s9, s10, 228
	ld s10, 712(sp)
	addi s10, s10, 232
	sd s10, 120(sp)
	ld s10, 712(sp)
	addi s10, s10, 236
	sd s10, 128(sp)
	ld s10, 712(sp)
	addi s10, s10, 240
	sd s10, 136(sp)
	ld s10, 712(sp)
	addi s10, s10, 244
	sd s10, 144(sp)
	ld s10, 712(sp)
	addi s10, s10, 248
	sd s10, 152(sp)
	ld s10, 712(sp)
	addi s10, s10, 252
	sd s10, 160(sp)
	ld s10, 712(sp)
	addi s10, s10, 256
	sd s10, 168(sp)
	ld s10, 712(sp)
	addi s10, s10, 260
	sd s10, 176(sp)
	ld s10, 712(sp)
	addi s10, s10, 264
	sd s10, 184(sp)
	ld s10, 712(sp)
	addi s10, s10, 268
	sd s10, 192(sp)
	ld s10, 712(sp)
	addi s10, s10, 272
	sd s10, 200(sp)
	ld s10, 712(sp)
	addi s10, s10, 276
	sd s10, 208(sp)
	ld s10, 712(sp)
	addi s10, s10, 280
	sd s10, 216(sp)
	ld s10, 712(sp)
	addi s10, s10, 284
	sd s10, 224(sp)
	ld s10, 712(sp)
	addi s10, s10, 288
	sd s10, 232(sp)
	ld s10, 712(sp)
	addi s10, s10, 292
	sd s10, 728(sp)
	ld s10, 712(sp)
	addi s10, s10, 296
	sd s10, 568(sp)
	ld s10, 712(sp)
	addi s10, s10, 300
	sd s10, 584(sp)
	ld s10, 712(sp)
	addi s10, s10, 304
	sd s10, 600(sp)
	ld s10, 712(sp)
	addi s10, s10, 308
	sd s10, 616(sp)
	ld s10, 712(sp)
	addi s10, s10, 312
	sd s10, 632(sp)
	ld s10, 712(sp)
	addi s10, s10, 316
	sd s10, 648(sp)
	ld s10, 712(sp)
	addi s10, s10, 320
	sd s10, 512(sp)
	ld s10, 712(sp)
	addi s10, s10, 324
	sd s10, 472(sp)
	ld s10, 712(sp)
	addi s10, s10, 328
	sd s10, 456(sp)
	ld s10, 712(sp)
	addi s10, s10, 332
	sd s10, 440(sp)
	ld s10, 712(sp)
	addi s10, s10, 336
	sd s10, 424(sp)
	ld s10, 712(sp)
	addi s10, s10, 340
	sd s10, 408(sp)
	ld s10, 712(sp)
	addi s10, s10, 344
	sd s10, 392(sp)
	ld s10, 712(sp)
	addi s10, s10, 348
	sd s10, 376(sp)
	ld s10, 712(sp)
	addi s10, s10, 352
	sd s10, 360(sp)
	ld s10, 712(sp)
	addi s10, s10, 356
	sd s10, 240(sp)
	ld s10, 712(sp)
	addi s10, s10, 360
	sd s10, 248(sp)
	ld s10, 712(sp)
	addi s10, s10, 364
	sd s10, 256(sp)
	ld s10, 712(sp)
	addi s10, s10, 368
	sd s10, 264(sp)
	ld s10, 712(sp)
	addi s10, s10, 372
	sd s10, 272(sp)
	ld s10, 712(sp)
	addi s10, s10, 376
	sd s10, 304(sp)
	ld s10, 712(sp)
	addi s10, s10, 380
	sd s10, 288(sp)
	ld s10, 712(sp)
	addi s10, s10, 384
	sd s10, 488(sp)
	ld s10, 712(sp)
	addi s10, s10, 388
	sd s10, 664(sp)
	ld s10, 712(sp)
	addi s10, s10, 392
	sd s10, 680(sp)
	ld s10, 712(sp)
	addi s10, s10, 396
	sd s10, 696(sp)
	mv a0, zero
	li a1, 100
	bge zero, a1, label118
	slli a1, zero, 2
	ld s10, 712(sp)
	add a1, s10, a1
	sw zero, 0(a1)
	addiw a0, zero, 1
	li a1, 100
	bge a0, a1, label118
	slli a1, a0, 2
	ld s10, 712(sp)
	add a1, s10, a1
	sw zero, 0(a1)
	addiw a0, a0, 1
	li a1, 100
	bge a0, a1, label118
	slli a1, a0, 2
	ld s10, 712(sp)
	add a1, s10, a1
	sw zero, 0(a1)
	addiw a0, a0, 1
	li a1, 100
	bge a0, a1, label118
	slli a1, a0, 2
	ld s10, 712(sp)
	add a1, s10, a1
	sw zero, 0(a1)
	addiw a0, a0, 1
	li a1, 100
	bge a0, a1, label118
	slli a1, a0, 2
	ld s10, 712(sp)
	add a1, s10, a1
	sw zero, 0(a1)
	addiw a0, a0, 1
	li a1, 100
	bge a0, a1, label118
	slli a1, a0, 2
	ld s10, 712(sp)
	add a1, s10, a1
	sw zero, 0(a1)
	addiw a0, a0, 1
	li a1, 100
	bge a0, a1, label118
	slli a1, a0, 2
	ld s10, 712(sp)
	add a1, s10, a1
	sw zero, 0(a1)
	addiw a0, a0, 1
	li a1, 100
	bge a0, a1, label118
	slli a1, a0, 2
	ld s10, 712(sp)
	add a1, s10, a1
	sw zero, 0(a1)
	addiw a0, a0, 1
	li a1, 100
	bge a0, a1, label118
	j label419
label118:
	mv a0, zero
	mv a1, zero
	ld a2, 656(sp)
	bge zero, a2, label13
label8:
	li a2, 1
	ld s10, 480(sp)
	sw a2, 0(s10)
	li a2, 2
	ld s10, 280(sp)
	sw a2, 0(s10)
	li a2, 3
	ld s10, 296(sp)
	sw a2, 0(s10)
	li a2, 4
	ld s10, 312(sp)
	sw a2, 0(s10)
	li a2, 5
	ld s10, 320(sp)
	sw a2, 0(s10)
	li a2, 6
	ld s10, 328(sp)
	sw a2, 0(s10)
	li a2, 7
	ld s10, 336(sp)
	sw a2, 0(s10)
	li a2, 8
	ld s10, 344(sp)
	sw a2, 0(s10)
	li a2, 9
	ld s10, 672(sp)
	sw a2, 0(s10)
	li a2, 10
	ld s10, 688(sp)
	sw a2, 0(s10)
	li a2, 11
	ld s10, 704(sp)
	sw a2, 0(s10)
	li a2, 12
	ld s10, 720(sp)
	sw a2, 0(s10)
	li a2, 13
	ld s10, 0(sp)
	sw a2, 0(s10)
	li a2, 14
	ld s10, 8(sp)
	sw a2, 0(s10)
	li a2, 15
	ld s10, 16(sp)
	sw a2, 0(s10)
	li a2, 16
	ld s10, 24(sp)
	sw a2, 0(s10)
	li a2, 17
	ld s10, 32(sp)
	sw a2, 0(s10)
	li a2, 18
	ld s10, 40(sp)
	sw a2, 0(s10)
	li a2, 19
	ld s10, 48(sp)
	sw a2, 0(s10)
	li a2, 20
	ld s10, 56(sp)
	sw a2, 0(s10)
	li a2, 21
	ld s10, 64(sp)
	sw a2, 0(s10)
	li a2, 22
	ld s10, 80(sp)
	sw a2, 0(s10)
	li a2, 23
	ld s10, 96(sp)
	sw a2, 0(s10)
	li a2, 24
	ld s10, 112(sp)
	sw a2, 0(s10)
	li a2, 25
	ld s10, 72(sp)
	sw a2, 0(s10)
	li a2, 26
	ld s10, 88(sp)
	sw a2, 0(s10)
	li a2, 27
	ld s10, 104(sp)
	sw a2, 0(s10)
	li a2, 28
	ld s10, 352(sp)
	sw a2, 0(s10)
	li a2, 29
	ld s10, 368(sp)
	sw a2, 0(s10)
	li a2, 30
	ld s10, 384(sp)
	sw a2, 0(s10)
	li a2, 31
	ld s10, 400(sp)
	sw a2, 0(s10)
	li a2, 32
	ld s10, 416(sp)
	sw a2, 0(s10)
	li a2, 33
	ld s10, 432(sp)
	sw a2, 0(s10)
	li a2, 34
	ld s10, 448(sp)
	sw a2, 0(s10)
	li a2, 35
	ld s10, 464(sp)
	sw a2, 0(s10)
	li a2, 36
	ld s10, 504(sp)
	sw a2, 0(s10)
	li a2, 37
	sw a2, 0(a3)
	li a2, 38
	sw a2, 0(a4)
	li a2, 39
	sw a2, 0(a5)
	li a2, 40
	sw a2, 0(t1)
	li a2, 41
	sw a2, 0(t2)
	li a2, 42
	sw a2, 0(t3)
	li a2, 43
	sw a2, 0(t4)
	li a2, 44
	sw a2, 0(t5)
	li a2, 45
	sw a2, 0(t6)
	li a2, 46
	sw a2, 0(a6)
	li a2, 47
	sw a2, 0(a7)
	li a2, 48
	sw a2, 0(s0)
	li a2, 49
	sw a2, 0(s1)
	li a2, 50
	sw a2, 0(s2)
	li a2, 51
	sw a2, 0(s3)
	li a2, 52
	sw a2, 0(s4)
	li a2, 53
	sw a2, 0(s5)
	li a2, 54
	sw a2, 0(s6)
	li a2, 55
	sw a2, 0(s7)
	li a2, 56
	sw a2, 0(s8)
	li a2, 57
	sw a2, 0(s9)
	li a2, 58
	ld s10, 120(sp)
	sw a2, 0(s10)
	li a2, 59
	ld s10, 128(sp)
	sw a2, 0(s10)
	li a2, 60
	ld s10, 136(sp)
	sw a2, 0(s10)
	li a2, 61
	ld s10, 144(sp)
	sw a2, 0(s10)
	li a2, 62
	ld s10, 152(sp)
	sw a2, 0(s10)
	li a2, 63
	ld s10, 160(sp)
	sw a2, 0(s10)
	li a2, 64
	ld s10, 168(sp)
	sw a2, 0(s10)
	li a2, 65
	ld s10, 176(sp)
	sw a2, 0(s10)
	li a2, 66
	ld s10, 184(sp)
	sw a2, 0(s10)
	li a2, 67
	ld s10, 192(sp)
	sw a2, 0(s10)
	li a2, 68
	ld s10, 200(sp)
	sw a2, 0(s10)
	li a2, 69
	ld s10, 208(sp)
	sw a2, 0(s10)
	li a2, 70
	ld s10, 216(sp)
	sw a2, 0(s10)
	li a2, 71
	ld s10, 224(sp)
	sw a2, 0(s10)
	li a2, 72
	ld s10, 232(sp)
	sw a2, 0(s10)
	li a2, 73
	ld s10, 728(sp)
	sw a2, 0(s10)
	li a2, 74
	ld s10, 568(sp)
	sw a2, 0(s10)
	li a2, 75
	ld s10, 584(sp)
	sw a2, 0(s10)
	li a2, 76
	ld s10, 600(sp)
	sw a2, 0(s10)
	li a2, 77
	ld s10, 616(sp)
	sw a2, 0(s10)
	li a2, 78
	ld s10, 632(sp)
	sw a2, 0(s10)
	li a2, 79
	ld s10, 648(sp)
	sw a2, 0(s10)
	li a2, 80
	ld s10, 512(sp)
	sw a2, 0(s10)
	li a2, 81
	ld s10, 472(sp)
	sw a2, 0(s10)
	li a2, 82
	ld s10, 456(sp)
	sw a2, 0(s10)
	li a2, 83
	ld s10, 440(sp)
	sw a2, 0(s10)
	li a2, 84
	ld s10, 424(sp)
	sw a2, 0(s10)
	li a2, 85
	ld s10, 408(sp)
	sw a2, 0(s10)
	li a2, 86
	ld s10, 392(sp)
	sw a2, 0(s10)
	li a2, 87
	ld s10, 376(sp)
	sw a2, 0(s10)
	li a2, 88
	ld s10, 360(sp)
	sw a2, 0(s10)
	li a2, 89
	ld s10, 240(sp)
	sw a2, 0(s10)
	li a2, 90
	ld s10, 248(sp)
	sw a2, 0(s10)
	li a2, 91
	ld s10, 256(sp)
	sw a2, 0(s10)
	li a2, 92
	ld s10, 264(sp)
	sw a2, 0(s10)
	li a2, 93
	ld s10, 272(sp)
	sw a2, 0(s10)
	li a2, 94
	ld s10, 304(sp)
	sw a2, 0(s10)
	li a2, 95
	ld s10, 288(sp)
	sw a2, 0(s10)
	li a2, 96
	ld s10, 488(sp)
	sw a2, 0(s10)
	li a2, 97
	ld s10, 664(sp)
	sw a2, 0(s10)
	li a2, 98
	ld s10, 680(sp)
	sw a2, 0(s10)
	li a2, 99
	ld s10, 696(sp)
	sw a2, 0(s10)
	addiw a1, a1, 1
	mv a2, zero
label9:
	slli s11, a2, 2
	ld s10, 712(sp)
	add s10, s10, s11
	lw s11, 0(s10)
	addw a0, a0, s11
	lw s11, 4(s10)
	addw a0, a0, s11
	lw s11, 8(s10)
	addw a0, a0, s11
	lw s11, 12(s10)
	addw a0, a0, s11
	lw s11, 16(s10)
	addw a0, a0, s11
	lw s11, 20(s10)
	addw a0, a0, s11
	lw s11, 24(s10)
	addw a0, a0, s11
	lw s11, 28(s10)
	addw a0, a0, s11
	lw s11, 32(s10)
	addw a0, a0, s11
	lw s11, 36(s10)
	addw a0, a0, s11
	lw s11, 40(s10)
	addw a0, a0, s11
	lw s11, 44(s10)
	addw a0, a0, s11
	lw s11, 48(s10)
	addw a0, a0, s11
	lw s11, 52(s10)
	addw a0, a0, s11
	lw s11, 56(s10)
	addw a0, a0, s11
	lw s10, 60(s10)
	addw a0, a0, s10
	addiw a2, a2, 16
	li s10, 96
	bge a2, s10, label12
	j label9
label12:
	slli a2, a2, 2
	ld s10, 712(sp)
	add a2, s10, a2
	lw s10, 0(a2)
	lw s11, 4(a2)
	addw a0, a0, s10
	addw a0, a0, s11
	lw s10, 8(a2)
	addw a0, a0, s10
	lw a2, 12(a2)
	addw a0, a0, a2
	li a2, -2147450879
	mul a2, a0, a2
	srli a2, a2, 32
	add s10, a2, a0
	sraiw a2, s10, 15
	srliw s10, s10, 31
	add a2, s10, a2
	li s10, 65535
	mulw a2, a2, s10
	subw a0, a0, a2
	ld a2, 656(sp)
	bge a1, a2, label13
	j label8
label419:
	slli a1, a0, 2
	ld s10, 712(sp)
	add a1, s10, a1
	sw zero, 0(a1)
	addiw a0, a0, 1
	li a1, 100
	bge a0, a1, label118
	j label419
label13:
	jal putint
	li a0, 10
	jal putch
	li a0, 328
	jal _sysy_stoptime
	mv a0, zero
	ld ra, 640(sp)
	ld s11, 624(sp)
	ld s9, 608(sp)
	ld s8, 592(sp)
	ld s7, 576(sp)
	ld s4, 560(sp)
	ld s3, 1136(sp)
	ld s2, 552(sp)
	ld s6, 544(sp)
	ld s1, 536(sp)
	ld s5, 528(sp)
	ld s0, 520(sp)
	ld s10, 496(sp)
	addi sp, sp, 1144
	ret
