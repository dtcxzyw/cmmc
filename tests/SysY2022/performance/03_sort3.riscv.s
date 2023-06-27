.data
.align 4
a:
	.zero	120000040
.text
radixSort:
	addi sp, sp, -584
	sd s0, 456(sp)
	sd s5, 448(sp)
	sd s1, 440(sp)
	sd s6, 432(sp)
	sd s2, 424(sp)
	sd s3, 416(sp)
	sd s4, 408(sp)
	sd s7, 400(sp)
	sd s8, 392(sp)
	sd s9, 384(sp)
	sd s11, 368(sp)
	sd s10, 360(sp)
	sd ra, 352(sp)
	mv a4, a0
	sd a0, 336(sp)
	mv a4, a1
	sd a1, 552(sp)
	mv a1, a2
	sd a2, 472(sp)
	addi a4, sp, 256
	sd a4, 536(sp)
	addi a1, sp, 192
	sd a1, 520(sp)
	addi a4, sp, 112
	sd a4, 328(sp)
	mv a1, a2
	addiw a0, a2, 1
	slt a0, a0, a3
	xori a0, a0, 1
	ld a4, 336(sp)
	xori a1, a4, -1
	sltiu a1, a1, 1
	or a0, a1, a0
	sw zero, 112(sp)
	ld a4, 328(sp)
	addi a2, a4, 4
	ld a4, 328(sp)
	sw zero, 4(a4)
	ld a4, 328(sp)
	addi a5, a4, 8
	ld a4, 328(sp)
	sw zero, 8(a4)
	ld a4, 328(sp)
	addi t1, a4, 12
	ld a4, 328(sp)
	sw zero, 12(a4)
	ld a4, 328(sp)
	addi a1, a4, 16
	sd a1, 480(sp)
	ld a4, 328(sp)
	sw zero, 16(a4)
	ld a4, 328(sp)
	addi a1, a4, 20
	sd a1, 504(sp)
	ld a4, 328(sp)
	sw zero, 20(a4)
	ld a4, 328(sp)
	addi a1, a4, 24
	sd a1, 528(sp)
	ld a4, 328(sp)
	sw zero, 24(a4)
	ld a4, 328(sp)
	addi a1, a4, 28
	sd a1, 560(sp)
	ld a4, 328(sp)
	sw zero, 28(a4)
	ld a4, 328(sp)
	addi a1, a4, 32
	sd a1, 0(sp)
	ld a4, 328(sp)
	sw zero, 32(a4)
	ld a4, 328(sp)
	addi a1, a4, 36
	sd a1, 8(sp)
	ld a4, 328(sp)
	sw zero, 36(a4)
	ld a4, 328(sp)
	addi a1, a4, 40
	sd a1, 32(sp)
	ld a4, 328(sp)
	sw zero, 40(a4)
	ld a4, 328(sp)
	addi a1, a4, 44
	sd a1, 40(sp)
	ld a4, 328(sp)
	sw zero, 44(a4)
	ld a4, 328(sp)
	addi a1, a4, 48
	sd a1, 64(sp)
	ld a4, 328(sp)
	sw zero, 48(a4)
	ld a4, 328(sp)
	addi a1, a4, 52
	sd a1, 80(sp)
	ld a4, 328(sp)
	sw zero, 52(a4)
	ld a4, 328(sp)
	addi a1, a4, 56
	sd a1, 104(sp)
	ld a4, 328(sp)
	sw zero, 56(a4)
	ld a4, 328(sp)
	addi a1, a4, 60
	sd a1, 176(sp)
	ld a4, 328(sp)
	sw zero, 60(a4)
	sw zero, 192(sp)
	ld a1, 520(sp)
	addi t2, a1, 4
	ld a1, 520(sp)
	sw zero, 4(a1)
	ld a1, 520(sp)
	addi t3, a1, 8
	ld a1, 520(sp)
	sw zero, 8(a1)
	ld a1, 520(sp)
	addi t4, a1, 12
	ld a1, 520(sp)
	sw zero, 12(a1)
	ld a1, 520(sp)
	addi t5, a1, 16
	ld a1, 520(sp)
	sw zero, 16(a1)
	ld a1, 520(sp)
	addi t6, a1, 20
	ld a1, 520(sp)
	sw zero, 20(a1)
	ld a1, 520(sp)
	addi a6, a1, 24
	ld a1, 520(sp)
	sw zero, 24(a1)
	ld a1, 520(sp)
	addi a7, a1, 28
	ld a1, 520(sp)
	sw zero, 28(a1)
	ld a1, 520(sp)
	addi a1, a1, 32
	sd a1, 488(sp)
	ld a1, 520(sp)
	sw zero, 32(a1)
	ld a1, 520(sp)
	addi a1, a1, 36
	sd a1, 544(sp)
	ld a1, 520(sp)
	sw zero, 36(a1)
	ld a1, 520(sp)
	addi a1, a1, 40
	sd a1, 576(sp)
	ld a1, 520(sp)
	sw zero, 40(a1)
	ld a1, 520(sp)
	addi a1, a1, 44
	sd a1, 24(sp)
	ld a1, 520(sp)
	sw zero, 44(a1)
	ld a1, 520(sp)
	addi a1, a1, 48
	sd a1, 48(sp)
	ld a1, 520(sp)
	sw zero, 48(a1)
	ld a1, 520(sp)
	addi a1, a1, 52
	sd a1, 72(sp)
	ld a1, 520(sp)
	sw zero, 52(a1)
	ld a1, 520(sp)
	addi a1, a1, 56
	sd a1, 96(sp)
	ld a1, 520(sp)
	sw zero, 56(a1)
	ld a1, 520(sp)
	addi a1, a1, 60
	sd a1, 184(sp)
	ld a1, 520(sp)
	sw zero, 60(a1)
	sw zero, 256(sp)
	ld a4, 536(sp)
	addi s0, a4, 4
	ld a4, 536(sp)
	sw zero, 4(a4)
	ld a4, 536(sp)
	addi s1, a4, 8
	ld a4, 536(sp)
	sw zero, 8(a4)
	ld a4, 536(sp)
	addi s2, a4, 12
	ld a4, 536(sp)
	sw zero, 12(a4)
	ld a4, 536(sp)
	addi s3, a4, 16
	ld a4, 536(sp)
	sw zero, 16(a4)
	ld a4, 536(sp)
	addi s4, a4, 20
	ld a4, 536(sp)
	sw zero, 20(a4)
	ld a4, 536(sp)
	addi s5, a4, 24
	ld a4, 536(sp)
	sw zero, 24(a4)
	ld a4, 536(sp)
	addi s6, a4, 28
	ld a4, 536(sp)
	sw zero, 28(a4)
	ld a4, 536(sp)
	addi s7, a4, 32
	ld a4, 536(sp)
	sw zero, 32(a4)
	ld a4, 536(sp)
	addi s8, a4, 36
	ld a4, 536(sp)
	sw zero, 36(a4)
	ld a4, 536(sp)
	addi a1, a4, 40
	sd a1, 464(sp)
	ld a4, 536(sp)
	sw zero, 40(a4)
	ld a4, 536(sp)
	addi a1, a4, 44
	sd a1, 512(sp)
	ld a4, 536(sp)
	sw zero, 44(a4)
	ld a4, 536(sp)
	addi a1, a4, 48
	sd a1, 568(sp)
	ld a4, 536(sp)
	sw zero, 48(a4)
	ld a4, 536(sp)
	addi a1, a4, 52
	sd a1, 16(sp)
	ld a4, 536(sp)
	sw zero, 52(a4)
	ld a4, 536(sp)
	addi a1, a4, 56
	sd a1, 56(sp)
	ld a4, 536(sp)
	sw zero, 56(a4)
	ld a4, 536(sp)
	addi a1, a4, 60
	sd a1, 88(sp)
	ld a4, 536(sp)
	sw zero, 60(a4)
	beq a0, zero, label3
	j label2
label3:
	ld a4, 336(sp)
	addiw a0, a4, -1
	sd a0, 496(sp)
	ld a1, 472(sp)
	bge a1, a3, label58
	ld a1, 472(sp)
	slliw a0, a1, 2
	ld a4, 552(sp)
	add s9, a4, a0
	lw a0, 0(s9)
	ld a4, 336(sp)
	ble a4, zero, label30
	mv s11, zero
	li a4, 4096
	addw s10, zero, a4
	ld a4, 336(sp)
	bge s10, a4, label261
	mv a0, zero
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 336(sp)
	bge s10, a4, label261
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 336(sp)
	bge s10, a4, label261
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 336(sp)
	bge s10, a4, label261
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 336(sp)
	bge s10, a4, label261
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 336(sp)
	bge s10, a4, label261
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 336(sp)
	bge s10, a4, label261
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 336(sp)
	bge s10, a4, label261
	j label1329
label58:
	ld a1, 472(sp)
	sw a1, 112(sp)
	lw a0, 256(sp)
	ld a1, 472(sp)
	addw a0, a1, a0
	sw a0, 192(sp)
	sw a0, 0(a2)
	lw a1, 0(s0)
	addw a0, a0, a1
	sw a0, 0(t2)
	sw a0, 0(a5)
	lw a1, 0(s1)
	addw a0, a0, a1
	sw a0, 0(t3)
	sw a0, 0(t1)
	lw a1, 0(s2)
	addw a0, a0, a1
	sw a0, 0(t4)
	ld a1, 480(sp)
	sw a0, 0(a1)
	lw a1, 0(s3)
	addw a0, a0, a1
	sw a0, 0(t5)
	ld a1, 504(sp)
	sw a0, 0(a1)
	lw a1, 0(s4)
	addw a0, a0, a1
	sw a0, 0(t6)
	ld a1, 528(sp)
	sw a0, 0(a1)
	lw a1, 0(s5)
	addw a0, a0, a1
	sw a0, 0(a6)
	ld a1, 560(sp)
	sw a0, 0(a1)
	lw a1, 0(s6)
	addw a0, a0, a1
	sw a0, 0(a7)
	ld a1, 0(sp)
	sw a0, 0(a1)
	lw a1, 0(s7)
	addw a0, a0, a1
	ld a1, 488(sp)
	sw a0, 0(a1)
	ld a1, 8(sp)
	sw a0, 0(a1)
	lw a1, 0(s8)
	addw a0, a0, a1
	ld a1, 544(sp)
	sw a0, 0(a1)
	ld a1, 32(sp)
	sw a0, 0(a1)
	ld a1, 464(sp)
	lw a1, 0(a1)
	addw a0, a0, a1
	ld a1, 576(sp)
	sw a0, 0(a1)
	ld a1, 40(sp)
	sw a0, 0(a1)
	ld a1, 512(sp)
	lw a1, 0(a1)
	addw a0, a0, a1
	ld a1, 24(sp)
	sw a0, 0(a1)
	ld a1, 64(sp)
	sw a0, 0(a1)
	ld a1, 568(sp)
	lw a1, 0(a1)
	addw a0, a0, a1
	ld a1, 48(sp)
	sw a0, 0(a1)
	ld a1, 80(sp)
	sw a0, 0(a1)
	ld a1, 16(sp)
	lw a1, 0(a1)
	addw a0, a0, a1
	ld a1, 72(sp)
	sw a0, 0(a1)
	ld a1, 104(sp)
	sw a0, 0(a1)
	ld a1, 56(sp)
	lw a1, 0(a1)
	addw a0, a0, a1
	ld a1, 96(sp)
	sw a0, 0(a1)
	ld a1, 176(sp)
	sw a0, 0(a1)
	ld a1, 88(sp)
	lw a1, 0(a1)
	addw a0, a0, a1
	ld a1, 184(sp)
	sw a0, 0(a1)
	mv a2, zero
	sd zero, 344(sp)
	li a0, 16
	bge zero, a0, label61
	j label67
label61:
	ld a1, 472(sp)
	sw a1, 112(sp)
	lw a0, 256(sp)
	ld a1, 472(sp)
	addw a0, a1, a0
	sw a0, 192(sp)
	mv s0, zero
	li a0, 16
	bge zero, a0, label2
	j label65
label66:
	addiw a0, s0, -1
	slli a0, a0, 2
	ld a1, 520(sp)
	add a0, a1, a0
	lw a0, 0(a0)
	slli a1, s0, 2
	ld a4, 328(sp)
	add a1, a4, a1
	sw a0, 0(a1)
	slli a1, s0, 2
	ld a4, 536(sp)
	add a1, a4, a1
	lw a1, 0(a1)
	addw a0, a0, a1
	slli a2, s0, 2
	ld a1, 520(sp)
	add a1, a1, a2
	sw a0, 0(a1)
	j label65
label67:
	ld a2, 344(sp)
	slli a0, a2, 2
	ld a4, 328(sp)
	add a1, a4, a0
	sd a1, 320(sp)
	lw a0, 0(a1)
	ld a2, 344(sp)
	slli a2, a2, 2
	ld a1, 520(sp)
	add a1, a1, a2
	sd a1, 376(sp)
	lw a1, 0(a1)
	bge a0, a1, label70
	ld a1, 320(sp)
	lw a0, 0(a1)
	slliw a1, a0, 2
	ld a4, 552(sp)
	add a1, a4, a1
	lw a1, 0(a1)
	ld a4, 336(sp)
	ble a4, zero, label438
	mv a2, a1
	mv a3, zero
	li a4, 4096
	addw a5, zero, a4
	ld a4, 336(sp)
	bge a5, a4, label612
	mv a2, zero
	mv a3, a5
	li a4, 4096
	addw a5, a5, a4
	ld a4, 336(sp)
	bge a5, a4, label612
	mv a3, a5
	li a4, 4096
	addw a5, a5, a4
	ld a4, 336(sp)
	bge a5, a4, label612
	mv a3, a5
	li a4, 4096
	addw a5, a5, a4
	ld a4, 336(sp)
	bge a5, a4, label612
	mv a3, a5
	li a4, 4096
	addw a5, a5, a4
	ld a4, 336(sp)
	bge a5, a4, label612
	mv a3, a5
	li a4, 4096
	addw a5, a5, a4
	ld a4, 336(sp)
	bge a5, a4, label612
	mv a3, a5
	li a4, 4096
	addw a5, a5, a4
	ld a4, 336(sp)
	bge a5, a4, label612
	mv a3, a5
	li a4, 4096
	addw a5, a5, a4
	ld a4, 336(sp)
	bge a5, a4, label612
label1349:
	mv a2, zero
	mv a3, a5
	li a4, 4096
	addw a5, a5, a4
	ld a4, 336(sp)
	bge a5, a4, label612
	mv a3, a5
	li a4, 4096
	addw a5, a5, a4
	ld a4, 336(sp)
	bge a5, a4, label612
	j label1383
label438:
	mv a2, a1
label72:
	slli a3, a2, 1
	srli a3, a3, 60
	add a3, a2, a3
	sraiw a3, a3, 4
	li a4, 16
	mulw a3, a3, a4
	subw a3, a2, a3
	ld a2, 344(sp)
	beq a3, a2, label443
	j label77
label443:
	mv a2, a0
label74:
	slliw a0, a2, 2
	ld a4, 552(sp)
	add a0, a4, a0
	sw a1, 0(a0)
	ld a1, 320(sp)
	lw a0, 0(a1)
	addiw a0, a0, 1
	ld a1, 320(sp)
	sw a0, 0(a1)
	ld a1, 376(sp)
	lw a1, 0(a1)
	bge a0, a1, label70
	ld a1, 320(sp)
	lw a0, 0(a1)
	slliw a1, a0, 2
	ld a4, 552(sp)
	add a1, a4, a1
	lw a1, 0(a1)
	ld a4, 336(sp)
	ble a4, zero, label438
	mv a2, a1
	mv a3, zero
	li a4, 4096
	addw a5, zero, a4
	ld a4, 336(sp)
	bge a5, a4, label612
	mv a2, zero
	mv a3, a5
	li a4, 4096
	addw a5, a5, a4
	ld a4, 336(sp)
	bge a5, a4, label612
	mv a3, a5
	li a4, 4096
	addw a5, a5, a4
	ld a4, 336(sp)
	bge a5, a4, label612
	mv a3, a5
	li a4, 4096
	addw a5, a5, a4
	ld a4, 336(sp)
	bge a5, a4, label612
	mv a3, a5
	li a4, 4096
	addw a5, a5, a4
	ld a4, 336(sp)
	bge a5, a4, label612
	mv a3, a5
	li a4, 4096
	addw a5, a5, a4
	ld a4, 336(sp)
	bge a5, a4, label612
	mv a3, a5
	li a4, 4096
	addw a5, a5, a4
	ld a4, 336(sp)
	bge a5, a4, label612
	mv a3, a5
	li a4, 4096
	addw a5, a5, a4
	ld a4, 336(sp)
	bge a5, a4, label612
	j label1349
label77:
	slli a0, a3, 2
	ld a4, 328(sp)
	add a2, a4, a0
	lw a0, 0(a2)
	slliw a0, a0, 2
	ld a4, 552(sp)
	add a3, a4, a0
	lw a0, 0(a3)
	sw a1, 0(a3)
	lw a1, 0(a2)
	addiw a1, a1, 1
	sw a1, 0(a2)
	ld a4, 336(sp)
	ble a4, zero, label458
	mv a1, a0
	mv a2, zero
	li a3, 4096
	addw a3, zero, a3
	ld a4, 336(sp)
	bge a3, a4, label571
	mv a1, zero
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 336(sp)
	bge a3, a4, label571
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 336(sp)
	bge a3, a4, label571
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 336(sp)
	bge a3, a4, label571
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 336(sp)
	bge a3, a4, label571
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 336(sp)
	bge a3, a4, label571
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 336(sp)
	bge a3, a4, label571
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 336(sp)
	bge a3, a4, label571
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 336(sp)
	bge a3, a4, label571
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 336(sp)
	bge a3, a4, label571
	j label1374
label458:
	mv a1, a0
label78:
	slli a2, a1, 1
	srli a2, a2, 60
	add a2, a1, a2
	sraiw a2, a2, 4
	li a3, 16
	mulw a2, a2, a3
	subw a1, a1, a2
	ld a2, 344(sp)
	beq a1, a2, label80
	ld a4, 336(sp)
	ble a4, zero, label467
	mv a1, a0
	mv a2, zero
	li a3, 4096
	addw a3, zero, a3
	ld a4, 336(sp)
	bge a3, a4, label472
	mv a1, zero
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 336(sp)
	bge a3, a4, label472
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 336(sp)
	bge a3, a4, label472
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 336(sp)
	bge a3, a4, label472
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 336(sp)
	bge a3, a4, label472
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 336(sp)
	bge a3, a4, label472
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 336(sp)
	bge a3, a4, label472
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 336(sp)
	bge a3, a4, label472
	j label1353
label1374:
	mv a1, zero
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 336(sp)
	bge a3, a4, label571
	j label1374
label1353:
	mv a1, zero
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 336(sp)
	bge a3, a4, label472
label1354:
	mv a1, zero
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 336(sp)
	bge a3, a4, label472
	j label1355
label467:
	mv a1, a0
	j label108
label1355:
	mv a1, zero
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 336(sp)
	bge a3, a4, label472
	j label1355
label108:
	slli a2, a1, 1
	srli a2, a2, 60
	add a2, a1, a2
	sraiw a2, a2, 4
	li a3, 16
	mulw a2, a2, a3
	subw a1, a1, a2
	slli a1, a1, 2
	ld a4, 328(sp)
	add a2, a4, a1
	lw a1, 0(a2)
	slliw a1, a1, 2
	ld a4, 552(sp)
	add a3, a4, a1
	lw a1, 0(a3)
	sw a0, 0(a3)
	lw a0, 0(a2)
	addiw a0, a0, 1
	sw a0, 0(a2)
	ld a4, 336(sp)
	ble a4, zero, label520
	mv a0, a1
	mv a2, zero
	li a3, 4096
	addw a3, zero, a3
	ld a4, 336(sp)
	bge a3, a4, label530
	mv a0, zero
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 336(sp)
	bge a3, a4, label530
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 336(sp)
	bge a3, a4, label530
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 336(sp)
	bge a3, a4, label530
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 336(sp)
	bge a3, a4, label530
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 336(sp)
	bge a3, a4, label530
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 336(sp)
	bge a3, a4, label530
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 336(sp)
	bge a3, a4, label530
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 336(sp)
	bge a3, a4, label530
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 336(sp)
	bge a3, a4, label530
	j label1365
label520:
	mv a0, a1
label110:
	slli a2, a0, 1
	srli a2, a2, 60
	add a2, a0, a2
	sraiw a2, a2, 4
	li a3, 16
	mulw a2, a2, a3
	subw a0, a0, a2
	ld a2, 344(sp)
	beq a0, a2, label525
	mv a0, a1
	ld a4, 336(sp)
	ble a4, zero, label467
	mv a2, zero
	li a3, 4096
	addw a3, zero, a3
	ld a4, 336(sp)
	bge a3, a4, label472
	mv a1, zero
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 336(sp)
	bge a3, a4, label472
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 336(sp)
	bge a3, a4, label472
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 336(sp)
	bge a3, a4, label472
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 336(sp)
	bge a3, a4, label472
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 336(sp)
	bge a3, a4, label472
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 336(sp)
	bge a3, a4, label472
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 336(sp)
	bge a3, a4, label472
	j label1364
label525:
	mv a0, a1
	ld a1, 320(sp)
	lw a2, 0(a1)
	mv a1, a0
	j label74
label530:
	mv a3, a0
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label118
	mv a3, zero
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label118
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label118
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label118
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label118
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label118
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label118
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label118
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label118
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label118
	j label1366
label1365:
	mv a0, zero
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 336(sp)
	bge a3, a4, label530
	j label1365
label472:
	mv a3, a1
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label90
	mv a3, zero
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label90
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label90
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label90
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label90
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label90
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label90
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label90
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label90
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label90
label1356:
	mv a3, zero
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label90
	j label1356
label1366:
	mv a3, zero
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label118
	j label1366
label118:
	addiw a2, a0, 256
	ld a4, 336(sp)
	bge a2, a4, label121
	mv a3, zero
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label121
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label121
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label121
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label121
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label121
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label121
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label121
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label121
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label121
label1367:
	mv a3, zero
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label121
	j label1367
label121:
	addiw a2, a0, 16
	ld a4, 336(sp)
	bge a2, a4, label545
	mv a3, zero
	mv a0, a2
	addiw a2, a2, 16
	ld a4, 336(sp)
	bge a2, a4, label545
	mv a0, a2
	addiw a2, a2, 16
	ld a4, 336(sp)
	bge a2, a4, label545
	mv a0, a2
	addiw a2, a2, 16
	ld a4, 336(sp)
	bge a2, a4, label545
	mv a0, a2
	addiw a2, a2, 16
	ld a4, 336(sp)
	bge a2, a4, label545
	mv a0, a2
	addiw a2, a2, 16
	ld a4, 336(sp)
	bge a2, a4, label545
	mv a0, a2
	addiw a2, a2, 16
	ld a4, 336(sp)
	bge a2, a4, label545
	mv a0, a2
	addiw a2, a2, 16
	ld a4, 336(sp)
	bge a2, a4, label545
	mv a0, a2
	addiw a2, a2, 16
	ld a4, 336(sp)
	bge a2, a4, label545
	mv a0, a2
	addiw a2, a2, 16
	ld a4, 336(sp)
	bge a2, a4, label545
label1368:
	mv a3, zero
	mv a0, a2
	addiw a2, a2, 16
	ld a4, 336(sp)
	bge a2, a4, label545
	j label1368
label545:
	mv a2, a3
	addiw a3, a0, 256
	ld a4, 336(sp)
	bge a3, a4, label550
	mv a2, zero
	mv a0, a3
	addiw a3, a3, 256
	ld a4, 336(sp)
	bge a3, a4, label550
	mv a0, a3
	addiw a3, a3, 256
	ld a4, 336(sp)
	bge a3, a4, label550
	mv a0, a3
	addiw a3, a3, 256
	ld a4, 336(sp)
	bge a3, a4, label550
	mv a0, a3
	addiw a3, a3, 256
	ld a4, 336(sp)
	bge a3, a4, label550
	mv a0, a3
	addiw a3, a3, 256
	ld a4, 336(sp)
	bge a3, a4, label550
	mv a0, a3
	addiw a3, a3, 256
	ld a4, 336(sp)
	bge a3, a4, label550
	mv a0, a3
	addiw a3, a3, 256
	ld a4, 336(sp)
	bge a3, a4, label550
	mv a0, a3
	addiw a3, a3, 256
	ld a4, 336(sp)
	bge a3, a4, label550
	mv a0, a3
	addiw a3, a3, 256
	ld a4, 336(sp)
	bge a3, a4, label550
	j label1369
label550:
	mv a3, a2
	mv a2, a0
	addiw a0, a0, 16
	ld a4, 336(sp)
	bge a0, a4, label555
	mv a3, zero
	mv a2, a0
	addiw a0, a0, 16
	ld a4, 336(sp)
	bge a0, a4, label555
	mv a2, a0
	addiw a0, a0, 16
	ld a4, 336(sp)
	bge a0, a4, label555
	mv a2, a0
	addiw a0, a0, 16
	ld a4, 336(sp)
	bge a0, a4, label555
	mv a2, a0
	addiw a0, a0, 16
	ld a4, 336(sp)
	bge a0, a4, label555
	mv a2, a0
	addiw a0, a0, 16
	ld a4, 336(sp)
	bge a0, a4, label555
	mv a2, a0
	addiw a0, a0, 16
	ld a4, 336(sp)
	bge a0, a4, label555
	mv a2, a0
	addiw a0, a0, 16
	ld a4, 336(sp)
	bge a0, a4, label555
	mv a2, a0
	addiw a0, a0, 16
	ld a4, 336(sp)
	bge a0, a4, label555
	mv a2, a0
	addiw a0, a0, 16
	ld a4, 336(sp)
	bge a0, a4, label555
	j label1370
label555:
	mv a0, a3
	addiw a3, a2, 16
	ld a4, 336(sp)
	bge a3, a4, label133
	mv a0, zero
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 336(sp)
	bge a3, a4, label133
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 336(sp)
	bge a3, a4, label133
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 336(sp)
	bge a3, a4, label133
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 336(sp)
	bge a3, a4, label133
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 336(sp)
	bge a3, a4, label133
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 336(sp)
	bge a3, a4, label133
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 336(sp)
	bge a3, a4, label133
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 336(sp)
	bge a3, a4, label133
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 336(sp)
	bge a3, a4, label133
	j label1371
label133:
	addiw a2, a2, 1
	slli a3, a0, 1
	srli a3, a3, 60
	add a0, a0, a3
	sraiw a0, a0, 4
	ld a4, 336(sp)
	bge a2, a4, label110
	addiw a2, a2, 1
	slli a3, a0, 1
	srli a3, a3, 60
	add a0, a0, a3
	sraiw a0, a0, 4
	ld a4, 336(sp)
	bge a2, a4, label110
	addiw a2, a2, 1
	slli a3, a0, 1
	srli a3, a3, 60
	add a0, a0, a3
	sraiw a0, a0, 4
	ld a4, 336(sp)
	bge a2, a4, label110
	addiw a2, a2, 1
	slli a3, a0, 1
	srli a3, a3, 60
	add a0, a0, a3
	sraiw a0, a0, 4
	ld a4, 336(sp)
	bge a2, a4, label110
	addiw a2, a2, 1
	slli a3, a0, 1
	srli a3, a3, 60
	add a0, a0, a3
	sraiw a0, a0, 4
	ld a4, 336(sp)
	bge a2, a4, label110
	addiw a2, a2, 1
	slli a3, a0, 1
	srli a3, a3, 60
	add a0, a0, a3
	sraiw a0, a0, 4
	ld a4, 336(sp)
	bge a2, a4, label110
	addiw a2, a2, 1
	slli a3, a0, 1
	srli a3, a3, 60
	add a0, a0, a3
	sraiw a0, a0, 4
	ld a4, 336(sp)
	bge a2, a4, label110
	addiw a2, a2, 1
	slli a3, a0, 1
	srli a3, a3, 60
	add a0, a0, a3
	sraiw a0, a0, 4
	ld a4, 336(sp)
	bge a2, a4, label110
	addiw a2, a2, 1
	slli a3, a0, 1
	srli a3, a3, 60
	add a0, a0, a3
	sraiw a0, a0, 4
	ld a4, 336(sp)
	bge a2, a4, label110
	addiw a2, a2, 1
	slli a3, a0, 1
	srli a3, a3, 60
	add a0, a0, a3
	sraiw a0, a0, 4
	ld a4, 336(sp)
	bge a2, a4, label110
label1372:
	addiw a2, a2, 1
	slli a3, a0, 1
	srli a3, a3, 60
	add a0, a0, a3
	sraiw a0, a0, 4
	ld a4, 336(sp)
	bge a2, a4, label110
	j label1372
label1369:
	mv a2, zero
	mv a0, a3
	addiw a3, a3, 256
	ld a4, 336(sp)
	bge a3, a4, label550
	j label1369
label1370:
	mv a3, zero
	mv a2, a0
	addiw a0, a0, 16
	ld a4, 336(sp)
	bge a0, a4, label555
	j label1370
label1364:
	mv a1, zero
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 336(sp)
	bge a3, a4, label472
	j label1354
label90:
	addiw a2, a1, 256
	ld a4, 336(sp)
	bge a2, a4, label93
	mv a3, zero
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label93
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label93
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label93
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label93
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label93
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label93
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label93
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label93
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label93
	j label1357
label93:
	addiw a2, a1, 16
	ld a4, 336(sp)
	bge a2, a4, label96
	mv a3, zero
	mv a1, a2
	addiw a2, a2, 16
	ld a4, 336(sp)
	bge a2, a4, label96
	mv a1, a2
	addiw a2, a2, 16
	ld a4, 336(sp)
	bge a2, a4, label96
	mv a1, a2
	addiw a2, a2, 16
	ld a4, 336(sp)
	bge a2, a4, label96
	mv a1, a2
	addiw a2, a2, 16
	ld a4, 336(sp)
	bge a2, a4, label96
	mv a1, a2
	addiw a2, a2, 16
	ld a4, 336(sp)
	bge a2, a4, label96
	mv a1, a2
	addiw a2, a2, 16
	ld a4, 336(sp)
	bge a2, a4, label96
	mv a1, a2
	addiw a2, a2, 16
	ld a4, 336(sp)
	bge a2, a4, label96
	mv a1, a2
	addiw a2, a2, 16
	ld a4, 336(sp)
	bge a2, a4, label96
	mv a1, a2
	addiw a2, a2, 16
	ld a4, 336(sp)
	bge a2, a4, label96
	j label1358
label96:
	addiw a2, a1, 256
	ld a4, 336(sp)
	bge a2, a4, label492
	mv a3, zero
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label492
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label492
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label492
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label492
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label492
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label492
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label492
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label492
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label492
	j label1359
label492:
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 336(sp)
	bge a1, a4, label497
	mv a3, zero
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 336(sp)
	bge a1, a4, label497
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 336(sp)
	bge a1, a4, label497
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 336(sp)
	bge a1, a4, label497
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 336(sp)
	bge a1, a4, label497
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 336(sp)
	bge a1, a4, label497
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 336(sp)
	bge a1, a4, label497
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 336(sp)
	bge a1, a4, label497
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 336(sp)
	bge a1, a4, label497
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 336(sp)
	bge a1, a4, label497
	j label1360
label1359:
	mv a3, zero
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label492
	j label1359
label1360:
	mv a3, zero
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 336(sp)
	bge a1, a4, label497
	j label1360
label497:
	mv a1, a3
	addiw a3, a2, 16
	ld a4, 336(sp)
	bge a3, a4, label105
	mv a1, zero
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 336(sp)
	bge a3, a4, label105
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 336(sp)
	bge a3, a4, label105
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 336(sp)
	bge a3, a4, label105
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 336(sp)
	bge a3, a4, label105
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 336(sp)
	bge a3, a4, label105
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 336(sp)
	bge a3, a4, label105
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 336(sp)
	bge a3, a4, label105
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 336(sp)
	bge a3, a4, label105
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 336(sp)
	bge a3, a4, label105
	j label1361
label105:
	addiw a2, a2, 1
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	ld a4, 336(sp)
	bge a2, a4, label108
	addiw a2, a2, 1
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	ld a4, 336(sp)
	bge a2, a4, label108
	addiw a2, a2, 1
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	ld a4, 336(sp)
	bge a2, a4, label108
	addiw a2, a2, 1
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	ld a4, 336(sp)
	bge a2, a4, label108
	addiw a2, a2, 1
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	ld a4, 336(sp)
	bge a2, a4, label108
	addiw a2, a2, 1
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	ld a4, 336(sp)
	bge a2, a4, label108
	addiw a2, a2, 1
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	ld a4, 336(sp)
	bge a2, a4, label108
	addiw a2, a2, 1
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	ld a4, 336(sp)
	bge a2, a4, label108
	addiw a2, a2, 1
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	ld a4, 336(sp)
	bge a2, a4, label108
	addiw a2, a2, 1
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	ld a4, 336(sp)
	bge a2, a4, label108
label1362:
	addiw a2, a2, 1
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	ld a4, 336(sp)
	bge a2, a4, label108
	j label1362
label1361:
	mv a1, zero
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 336(sp)
	bge a3, a4, label105
	j label1361
label1358:
	mv a3, zero
	mv a1, a2
	addiw a2, a2, 16
	ld a4, 336(sp)
	bge a2, a4, label96
	j label1358
label1357:
	mv a3, zero
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label93
	j label1357
label1371:
	mv a0, zero
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 336(sp)
	bge a3, a4, label133
	j label1371
label1383:
	mv a2, zero
	mv a3, a5
	li a4, 4096
	addw a5, a5, a4
	ld a4, 336(sp)
	bge a5, a4, label612
	j label1383
label612:
	mv a5, a2
	mv a2, a3
	addiw a3, a3, 256
	ld a4, 336(sp)
	bge a3, a4, label166
	mv a5, zero
	mv a2, a3
	addiw a3, a3, 256
	ld a4, 336(sp)
	bge a3, a4, label166
	mv a2, a3
	addiw a3, a3, 256
	ld a4, 336(sp)
	bge a3, a4, label166
	mv a2, a3
	addiw a3, a3, 256
	ld a4, 336(sp)
	bge a3, a4, label166
	mv a2, a3
	addiw a3, a3, 256
	ld a4, 336(sp)
	bge a3, a4, label166
	mv a2, a3
	addiw a3, a3, 256
	ld a4, 336(sp)
	bge a3, a4, label166
	mv a2, a3
	addiw a3, a3, 256
	ld a4, 336(sp)
	bge a3, a4, label166
	mv a2, a3
	addiw a3, a3, 256
	ld a4, 336(sp)
	bge a3, a4, label166
	mv a2, a3
	addiw a3, a3, 256
	ld a4, 336(sp)
	bge a3, a4, label166
	mv a2, a3
	addiw a3, a3, 256
	ld a4, 336(sp)
	bge a3, a4, label166
label1384:
	mv a5, zero
	mv a2, a3
	addiw a3, a3, 256
	ld a4, 336(sp)
	bge a3, a4, label166
	j label1384
label166:
	addiw a3, a2, 256
	ld a4, 336(sp)
	bge a3, a4, label622
	mv a5, zero
	mv a2, a3
	addiw a3, a3, 256
	ld a4, 336(sp)
	bge a3, a4, label622
	mv a2, a3
	addiw a3, a3, 256
	ld a4, 336(sp)
	bge a3, a4, label622
	mv a2, a3
	addiw a3, a3, 256
	ld a4, 336(sp)
	bge a3, a4, label622
	mv a2, a3
	addiw a3, a3, 256
	ld a4, 336(sp)
	bge a3, a4, label622
	mv a2, a3
	addiw a3, a3, 256
	ld a4, 336(sp)
	bge a3, a4, label622
	mv a2, a3
	addiw a3, a3, 256
	ld a4, 336(sp)
	bge a3, a4, label622
	mv a2, a3
	addiw a3, a3, 256
	ld a4, 336(sp)
	bge a3, a4, label622
	mv a2, a3
	addiw a3, a3, 256
	ld a4, 336(sp)
	bge a3, a4, label622
	mv a2, a3
	addiw a3, a3, 256
	ld a4, 336(sp)
	bge a3, a4, label622
	j label1385
label622:
	mv a3, a5
	addiw a5, a2, 16
	ld a4, 336(sp)
	bge a5, a4, label172
	mv a3, zero
	mv a2, a5
	addiw a5, a5, 16
	ld a4, 336(sp)
	bge a5, a4, label172
	mv a2, a5
	addiw a5, a5, 16
	ld a4, 336(sp)
	bge a5, a4, label172
	mv a2, a5
	addiw a5, a5, 16
	ld a4, 336(sp)
	bge a5, a4, label172
	mv a2, a5
	addiw a5, a5, 16
	ld a4, 336(sp)
	bge a5, a4, label172
	mv a2, a5
	addiw a5, a5, 16
	ld a4, 336(sp)
	bge a5, a4, label172
	mv a2, a5
	addiw a5, a5, 16
	ld a4, 336(sp)
	bge a5, a4, label172
	mv a2, a5
	addiw a5, a5, 16
	ld a4, 336(sp)
	bge a5, a4, label172
	mv a2, a5
	addiw a5, a5, 16
	ld a4, 336(sp)
	bge a5, a4, label172
	mv a2, a5
	addiw a5, a5, 16
	ld a4, 336(sp)
	bge a5, a4, label172
	j label1386
label1385:
	mv a5, zero
	mv a2, a3
	addiw a3, a3, 256
	ld a4, 336(sp)
	bge a3, a4, label622
	j label1385
label172:
	addiw a5, a2, 256
	ld a4, 336(sp)
	bge a5, a4, label632
	mv a3, zero
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 336(sp)
	bge a5, a4, label632
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 336(sp)
	bge a5, a4, label632
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 336(sp)
	bge a5, a4, label632
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 336(sp)
	bge a5, a4, label632
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 336(sp)
	bge a5, a4, label632
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 336(sp)
	bge a5, a4, label632
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 336(sp)
	bge a5, a4, label632
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 336(sp)
	bge a5, a4, label632
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 336(sp)
	bge a5, a4, label632
	j label1387
label632:
	mv a5, a3
	mv a3, a2
	addiw a2, a2, 16
	ld a4, 336(sp)
	bge a2, a4, label637
	mv a5, zero
	mv a3, a2
	addiw a2, a2, 16
	ld a4, 336(sp)
	bge a2, a4, label637
	mv a3, a2
	addiw a2, a2, 16
	ld a4, 336(sp)
	bge a2, a4, label637
	mv a3, a2
	addiw a2, a2, 16
	ld a4, 336(sp)
	bge a2, a4, label637
	mv a3, a2
	addiw a2, a2, 16
	ld a4, 336(sp)
	bge a2, a4, label637
	mv a3, a2
	addiw a2, a2, 16
	ld a4, 336(sp)
	bge a2, a4, label637
	mv a3, a2
	addiw a2, a2, 16
	ld a4, 336(sp)
	bge a2, a4, label637
	mv a3, a2
	addiw a2, a2, 16
	ld a4, 336(sp)
	bge a2, a4, label637
	mv a3, a2
	addiw a2, a2, 16
	ld a4, 336(sp)
	bge a2, a4, label637
	mv a3, a2
	addiw a2, a2, 16
	ld a4, 336(sp)
	bge a2, a4, label637
	j label1388
label637:
	mv a2, a5
	addiw a5, a3, 16
	ld a4, 336(sp)
	bge a5, a4, label181
	mv a2, zero
	mv a3, a5
	addiw a5, a5, 16
	ld a4, 336(sp)
	bge a5, a4, label181
	mv a3, a5
	addiw a5, a5, 16
	ld a4, 336(sp)
	bge a5, a4, label181
	mv a3, a5
	addiw a5, a5, 16
	ld a4, 336(sp)
	bge a5, a4, label181
	mv a3, a5
	addiw a5, a5, 16
	ld a4, 336(sp)
	bge a5, a4, label181
	mv a3, a5
	addiw a5, a5, 16
	ld a4, 336(sp)
	bge a5, a4, label181
	mv a3, a5
	addiw a5, a5, 16
	ld a4, 336(sp)
	bge a5, a4, label181
	mv a3, a5
	addiw a5, a5, 16
	ld a4, 336(sp)
	bge a5, a4, label181
	mv a3, a5
	addiw a5, a5, 16
	ld a4, 336(sp)
	bge a5, a4, label181
	mv a3, a5
	addiw a5, a5, 16
	ld a4, 336(sp)
	bge a5, a4, label181
	j label1389
label181:
	addiw a3, a3, 1
	slli a4, a2, 1
	srli a4, a4, 60
	add a2, a2, a4
	sraiw a2, a2, 4
	ld a4, 336(sp)
	bge a3, a4, label72
	addiw a3, a3, 1
	slli a4, a2, 1
	srli a4, a4, 60
	add a2, a2, a4
	sraiw a2, a2, 4
	ld a4, 336(sp)
	bge a3, a4, label72
	addiw a3, a3, 1
	slli a4, a2, 1
	srli a4, a4, 60
	add a2, a2, a4
	sraiw a2, a2, 4
	ld a4, 336(sp)
	bge a3, a4, label72
	addiw a3, a3, 1
	slli a4, a2, 1
	srli a4, a4, 60
	add a2, a2, a4
	sraiw a2, a2, 4
	ld a4, 336(sp)
	bge a3, a4, label72
	addiw a3, a3, 1
	slli a4, a2, 1
	srli a4, a4, 60
	add a2, a2, a4
	sraiw a2, a2, 4
	ld a4, 336(sp)
	bge a3, a4, label72
	addiw a3, a3, 1
	slli a4, a2, 1
	srli a4, a4, 60
	add a2, a2, a4
	sraiw a2, a2, 4
	ld a4, 336(sp)
	bge a3, a4, label72
	addiw a3, a3, 1
	slli a4, a2, 1
	srli a4, a4, 60
	add a2, a2, a4
	sraiw a2, a2, 4
	ld a4, 336(sp)
	bge a3, a4, label72
	addiw a3, a3, 1
	slli a4, a2, 1
	srli a4, a4, 60
	add a2, a2, a4
	sraiw a2, a2, 4
	ld a4, 336(sp)
	bge a3, a4, label72
	addiw a3, a3, 1
	slli a4, a2, 1
	srli a4, a4, 60
	add a2, a2, a4
	sraiw a2, a2, 4
	ld a4, 336(sp)
	bge a3, a4, label72
	addiw a3, a3, 1
	slli a4, a2, 1
	srli a4, a4, 60
	add a2, a2, a4
	sraiw a2, a2, 4
	ld a4, 336(sp)
	bge a3, a4, label72
label1390:
	addiw a3, a3, 1
	slli a4, a2, 1
	srli a4, a4, 60
	add a2, a2, a4
	sraiw a2, a2, 4
	ld a4, 336(sp)
	bge a3, a4, label72
	j label1390
label1388:
	mv a5, zero
	mv a3, a2
	addiw a2, a2, 16
	ld a4, 336(sp)
	bge a2, a4, label637
	j label1388
label1387:
	mv a3, zero
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 336(sp)
	bge a5, a4, label632
	j label1387
label1386:
	mv a3, zero
	mv a2, a5
	addiw a5, a5, 16
	ld a4, 336(sp)
	bge a5, a4, label172
	j label1386
label1389:
	mv a2, zero
	mv a3, a5
	addiw a5, a5, 16
	ld a4, 336(sp)
	bge a5, a4, label181
	j label1389
label571:
	mv a3, a1
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label576
	mv a3, zero
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label576
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label576
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label576
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label576
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label576
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label576
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label576
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label576
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label576
label1375:
	mv a3, zero
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label576
	j label1375
label576:
	mv a2, a3
	addiw a3, a1, 256
	ld a4, 336(sp)
	bge a3, a4, label581
	mv a2, zero
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 336(sp)
	bge a3, a4, label581
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 336(sp)
	bge a3, a4, label581
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 336(sp)
	bge a3, a4, label581
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 336(sp)
	bge a3, a4, label581
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 336(sp)
	bge a3, a4, label581
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 336(sp)
	bge a3, a4, label581
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 336(sp)
	bge a3, a4, label581
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 336(sp)
	bge a3, a4, label581
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 336(sp)
	bge a3, a4, label581
	j label1376
label581:
	mv a3, a2
	addiw a2, a1, 16
	ld a4, 336(sp)
	bge a2, a4, label148
	mv a3, zero
	mv a1, a2
	addiw a2, a2, 16
	ld a4, 336(sp)
	bge a2, a4, label148
	mv a1, a2
	addiw a2, a2, 16
	ld a4, 336(sp)
	bge a2, a4, label148
	mv a1, a2
	addiw a2, a2, 16
	ld a4, 336(sp)
	bge a2, a4, label148
	mv a1, a2
	addiw a2, a2, 16
	ld a4, 336(sp)
	bge a2, a4, label148
	mv a1, a2
	addiw a2, a2, 16
	ld a4, 336(sp)
	bge a2, a4, label148
	mv a1, a2
	addiw a2, a2, 16
	ld a4, 336(sp)
	bge a2, a4, label148
	mv a1, a2
	addiw a2, a2, 16
	ld a4, 336(sp)
	bge a2, a4, label148
	mv a1, a2
	addiw a2, a2, 16
	ld a4, 336(sp)
	bge a2, a4, label148
	mv a1, a2
	addiw a2, a2, 16
	ld a4, 336(sp)
	bge a2, a4, label148
	j label1377
label148:
	addiw a2, a1, 256
	ld a4, 336(sp)
	bge a2, a4, label591
	mv a3, zero
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label591
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label591
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label591
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label591
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label591
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label591
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label591
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label591
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label591
label1378:
	mv a3, zero
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 336(sp)
	bge a2, a4, label591
	j label1378
label591:
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 336(sp)
	bge a1, a4, label596
	mv a3, zero
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 336(sp)
	bge a1, a4, label596
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 336(sp)
	bge a1, a4, label596
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 336(sp)
	bge a1, a4, label596
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 336(sp)
	bge a1, a4, label596
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 336(sp)
	bge a1, a4, label596
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 336(sp)
	bge a1, a4, label596
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 336(sp)
	bge a1, a4, label596
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 336(sp)
	bge a1, a4, label596
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 336(sp)
	bge a1, a4, label596
	j label1379
label596:
	mv a1, a3
	addiw a3, a2, 16
	ld a4, 336(sp)
	bge a3, a4, label157
	mv a1, zero
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 336(sp)
	bge a3, a4, label157
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 336(sp)
	bge a3, a4, label157
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 336(sp)
	bge a3, a4, label157
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 336(sp)
	bge a3, a4, label157
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 336(sp)
	bge a3, a4, label157
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 336(sp)
	bge a3, a4, label157
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 336(sp)
	bge a3, a4, label157
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 336(sp)
	bge a3, a4, label157
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 336(sp)
	bge a3, a4, label157
	j label1380
label157:
	addiw a2, a2, 1
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	ld a4, 336(sp)
	bge a2, a4, label78
	addiw a2, a2, 1
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	ld a4, 336(sp)
	bge a2, a4, label78
	addiw a2, a2, 1
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	ld a4, 336(sp)
	bge a2, a4, label78
	addiw a2, a2, 1
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	ld a4, 336(sp)
	bge a2, a4, label78
	addiw a2, a2, 1
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	ld a4, 336(sp)
	bge a2, a4, label78
	addiw a2, a2, 1
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	ld a4, 336(sp)
	bge a2, a4, label78
	addiw a2, a2, 1
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	ld a4, 336(sp)
	bge a2, a4, label78
	addiw a2, a2, 1
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	ld a4, 336(sp)
	bge a2, a4, label78
	addiw a2, a2, 1
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	ld a4, 336(sp)
	bge a2, a4, label78
	addiw a2, a2, 1
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	ld a4, 336(sp)
	bge a2, a4, label78
label1381:
	addiw a2, a2, 1
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	ld a4, 336(sp)
	bge a2, a4, label78
	j label1381
label1379:
	mv a3, zero
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 336(sp)
	bge a1, a4, label596
	j label1379
label1380:
	mv a1, zero
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 336(sp)
	bge a3, a4, label157
	j label1380
label1377:
	mv a3, zero
	mv a1, a2
	addiw a2, a2, 16
	ld a4, 336(sp)
	bge a2, a4, label148
	j label1377
label1376:
	mv a2, zero
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 336(sp)
	bge a3, a4, label581
	j label1376
label80:
	ld a1, 320(sp)
	lw a2, 0(a1)
	mv a1, a0
	j label74
label1329:
	mv a0, zero
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 336(sp)
	bge s10, a4, label261
	j label1330
label261:
	mv s10, a0
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 336(sp)
	bge s11, a4, label12
	mv s10, zero
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 336(sp)
	bge s11, a4, label12
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 336(sp)
	bge s11, a4, label12
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 336(sp)
	bge s11, a4, label12
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 336(sp)
	bge s11, a4, label12
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 336(sp)
	bge s11, a4, label12
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 336(sp)
	bge s11, a4, label12
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 336(sp)
	bge s11, a4, label12
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 336(sp)
	bge s11, a4, label12
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 336(sp)
	bge s11, a4, label12
	j label1332
label1330:
	mv a0, zero
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 336(sp)
	bge s10, a4, label261
label1331:
	mv a0, zero
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 336(sp)
	bge s10, a4, label261
	j label1331
label56:
	slli a4, a0, 1
	srli a4, a4, 60
	add a4, a0, a4
	sraiw a4, a4, 4
	li s9, 16
	mulw a4, a4, s9
	subw a0, a0, a4
	slli a0, a0, 2
	ld a4, 536(sp)
	add a0, a4, a0
	lw a0, 0(a0)
	addiw a0, a0, 1
	sw a0, 0(s10)
	addiw a1, a1, 1
	bge a1, a3, label58
	slliw a0, a1, 2
	ld a4, 552(sp)
	add s9, a4, a0
	lw a0, 0(s9)
	ld a4, 336(sp)
	ble a4, zero, label30
	mv s11, zero
	li a4, 4096
	addw s10, zero, a4
	ld a4, 336(sp)
	bge s10, a4, label261
	mv a0, zero
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 336(sp)
	bge s10, a4, label261
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 336(sp)
	bge s10, a4, label261
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 336(sp)
	bge s10, a4, label261
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 336(sp)
	bge s10, a4, label261
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 336(sp)
	bge s10, a4, label261
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 336(sp)
	bge s10, a4, label261
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 336(sp)
	bge s10, a4, label261
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 336(sp)
	bge s10, a4, label261
	j label1330
label12:
	addiw s11, a0, 256
	ld a4, 336(sp)
	bge s11, a4, label15
	mv s10, zero
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 336(sp)
	bge s11, a4, label15
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 336(sp)
	bge s11, a4, label15
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 336(sp)
	bge s11, a4, label15
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 336(sp)
	bge s11, a4, label15
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 336(sp)
	bge s11, a4, label15
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 336(sp)
	bge s11, a4, label15
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 336(sp)
	bge s11, a4, label15
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 336(sp)
	bge s11, a4, label15
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 336(sp)
	bge s11, a4, label15
label1333:
	mv s10, zero
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 336(sp)
	bge s11, a4, label15
	j label1333
label1332:
	mv s10, zero
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 336(sp)
	bge s11, a4, label12
	j label1332
label15:
	addiw s11, a0, 16
	ld a4, 336(sp)
	bge s11, a4, label18
	mv s10, zero
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label18
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label18
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label18
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label18
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label18
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label18
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label18
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label18
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label18
label1334:
	mv s10, zero
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label18
	j label1334
label18:
	addiw s11, a0, 256
	ld a4, 336(sp)
	bge s11, a4, label21
	mv s10, zero
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 336(sp)
	bge s11, a4, label21
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 336(sp)
	bge s11, a4, label21
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 336(sp)
	bge s11, a4, label21
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 336(sp)
	bge s11, a4, label21
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 336(sp)
	bge s11, a4, label21
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 336(sp)
	bge s11, a4, label21
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 336(sp)
	bge s11, a4, label21
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 336(sp)
	bge s11, a4, label21
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 336(sp)
	bge s11, a4, label21
label1335:
	mv s10, zero
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 336(sp)
	bge s11, a4, label21
	j label1335
label21:
	addiw s11, a0, 16
	ld a4, 336(sp)
	bge s11, a4, label24
	mv s10, zero
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label24
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label24
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label24
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label24
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label24
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label24
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label24
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label24
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label24
label1336:
	mv s10, zero
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label24
	j label1336
label24:
	addiw s11, a0, 16
	ld a4, 336(sp)
	bge s11, a4, label291
	mv s10, zero
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label291
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label291
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label291
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label291
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label291
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label291
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label291
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label291
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label291
label1337:
	mv s10, zero
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label291
	j label1337
label291:
	mv a4, s10
	addiw s10, a0, 1
	slli a0, a4, 1
	srli a0, a0, 60
	add a0, a4, a0
	sraiw a0, a0, 4
	ld a4, 336(sp)
	bge s10, a4, label30
	mv a4, a0
	mv a0, s10
	addiw s10, s10, 1
	slli a0, a4, 1
	srli a0, a0, 60
	add a0, a4, a0
	sraiw a0, a0, 4
	ld a4, 336(sp)
	bge s10, a4, label30
	mv a4, a0
	mv a0, s10
	addiw s10, s10, 1
	slli a0, a4, 1
	srli a0, a0, 60
	add a0, a4, a0
	sraiw a0, a0, 4
	ld a4, 336(sp)
	bge s10, a4, label30
	mv a4, a0
	mv a0, s10
	addiw s10, s10, 1
	slli a0, a4, 1
	srli a0, a0, 60
	add a0, a4, a0
	sraiw a0, a0, 4
	ld a4, 336(sp)
	bge s10, a4, label30
	mv a4, a0
	mv a0, s10
	addiw s10, s10, 1
	slli a0, a4, 1
	srli a0, a0, 60
	add a0, a4, a0
	sraiw a0, a0, 4
	ld a4, 336(sp)
	bge s10, a4, label30
	mv a4, a0
	mv a0, s10
	addiw s10, s10, 1
	slli a0, a4, 1
	srli a0, a0, 60
	add a0, a4, a0
	sraiw a0, a0, 4
	ld a4, 336(sp)
	bge s10, a4, label30
	mv a4, a0
	mv a0, s10
	addiw s10, s10, 1
	slli a0, a4, 1
	srli a0, a0, 60
	add a0, a4, a0
	sraiw a0, a0, 4
	ld a4, 336(sp)
	bge s10, a4, label30
	mv a4, a0
	mv a0, s10
	addiw s10, s10, 1
	slli a0, a4, 1
	srli a0, a0, 60
	add a0, a4, a0
	sraiw a0, a0, 4
	ld a4, 336(sp)
	bge s10, a4, label30
	mv a4, a0
	mv a0, s10
	addiw s10, s10, 1
	slli a0, a4, 1
	srli a0, a0, 60
	add a0, a4, a0
	sraiw a0, a0, 4
	ld a4, 336(sp)
	bge s10, a4, label30
	mv a4, a0
	mv a0, s10
	addiw s10, s10, 1
	slli a0, a4, 1
	srli a0, a0, 60
	add a0, a4, a0
	sraiw a0, a0, 4
	ld a4, 336(sp)
	bge s10, a4, label30
label1338:
	mv a4, a0
	mv a0, s10
	addiw s10, s10, 1
	slli a0, a4, 1
	srli a0, a0, 60
	add a0, a4, a0
	sraiw a0, a0, 4
	ld a4, 336(sp)
	bge s10, a4, label30
	j label1338
label30:
	slli a4, a0, 1
	srli a4, a4, 60
	add a4, a0, a4
	sraiw a4, a4, 4
	li s10, 16
	mulw a4, a4, s10
	subw a0, a0, a4
	slli a0, a0, 2
	ld a4, 536(sp)
	add s10, a4, a0
	lw a0, 0(s9)
	ld a4, 336(sp)
	ble a4, zero, label56
	mv s9, zero
	li a4, 4096
	addw s11, zero, a4
	ld a4, 336(sp)
	bge s11, a4, label309
	mv a0, zero
	mv s9, s11
	li a4, 4096
	addw s11, s11, a4
	ld a4, 336(sp)
	bge s11, a4, label309
	mv s9, s11
	li a4, 4096
	addw s11, s11, a4
	ld a4, 336(sp)
	bge s11, a4, label309
	mv s9, s11
	li a4, 4096
	addw s11, s11, a4
	ld a4, 336(sp)
	bge s11, a4, label309
	mv s9, s11
	li a4, 4096
	addw s11, s11, a4
	ld a4, 336(sp)
	bge s11, a4, label309
	mv s9, s11
	li a4, 4096
	addw s11, s11, a4
	ld a4, 336(sp)
	bge s11, a4, label309
	mv s9, s11
	li a4, 4096
	addw s11, s11, a4
	ld a4, 336(sp)
	bge s11, a4, label309
	mv s9, s11
	li a4, 4096
	addw s11, s11, a4
	ld a4, 336(sp)
	bge s11, a4, label309
	mv s9, s11
	li a4, 4096
	addw s11, s11, a4
	ld a4, 336(sp)
	bge s11, a4, label309
	mv s9, s11
	li a4, 4096
	addw s11, s11, a4
	ld a4, 336(sp)
	bge s11, a4, label309
label1340:
	mv a0, zero
	mv s9, s11
	li a4, 4096
	addw s11, s11, a4
	ld a4, 336(sp)
	bge s11, a4, label309
	j label1340
label309:
	mv s11, a0
	mv a0, s9
	addiw s9, s9, 256
	ld a4, 336(sp)
	bge s9, a4, label38
	mv s11, zero
	mv a0, s9
	addiw s9, s9, 256
	ld a4, 336(sp)
	bge s9, a4, label38
	mv a0, s9
	addiw s9, s9, 256
	ld a4, 336(sp)
	bge s9, a4, label38
	mv a0, s9
	addiw s9, s9, 256
	ld a4, 336(sp)
	bge s9, a4, label38
	mv a0, s9
	addiw s9, s9, 256
	ld a4, 336(sp)
	bge s9, a4, label38
	mv a0, s9
	addiw s9, s9, 256
	ld a4, 336(sp)
	bge s9, a4, label38
	mv a0, s9
	addiw s9, s9, 256
	ld a4, 336(sp)
	bge s9, a4, label38
	mv a0, s9
	addiw s9, s9, 256
	ld a4, 336(sp)
	bge s9, a4, label38
	mv a0, s9
	addiw s9, s9, 256
	ld a4, 336(sp)
	bge s9, a4, label38
	mv a0, s9
	addiw s9, s9, 256
	ld a4, 336(sp)
	bge s9, a4, label38
label1341:
	mv s11, zero
	mv a0, s9
	addiw s9, s9, 256
	ld a4, 336(sp)
	bge s9, a4, label38
	j label1341
label38:
	addiw s9, a0, 256
	ld a4, 336(sp)
	bge s9, a4, label319
	mv s11, zero
	mv a0, s9
	addiw s9, s9, 256
	ld a4, 336(sp)
	bge s9, a4, label319
	mv a0, s9
	addiw s9, s9, 256
	ld a4, 336(sp)
	bge s9, a4, label319
	mv a0, s9
	addiw s9, s9, 256
	ld a4, 336(sp)
	bge s9, a4, label319
	mv a0, s9
	addiw s9, s9, 256
	ld a4, 336(sp)
	bge s9, a4, label319
	mv a0, s9
	addiw s9, s9, 256
	ld a4, 336(sp)
	bge s9, a4, label319
	mv a0, s9
	addiw s9, s9, 256
	ld a4, 336(sp)
	bge s9, a4, label319
	mv a0, s9
	addiw s9, s9, 256
	ld a4, 336(sp)
	bge s9, a4, label319
	mv a0, s9
	addiw s9, s9, 256
	ld a4, 336(sp)
	bge s9, a4, label319
	mv a0, s9
	addiw s9, s9, 256
	ld a4, 336(sp)
	bge s9, a4, label319
label1342:
	mv s11, zero
	mv a0, s9
	addiw s9, s9, 256
	ld a4, 336(sp)
	bge s9, a4, label319
	j label1342
label319:
	mv s9, s11
	addiw s11, a0, 16
	ld a4, 336(sp)
	bge s11, a4, label44
	mv s9, zero
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label44
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label44
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label44
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label44
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label44
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label44
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label44
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label44
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label44
	j label1343
label44:
	addiw s11, a0, 256
	ld a4, 336(sp)
	bge s11, a4, label47
	mv s9, zero
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 336(sp)
	bge s11, a4, label47
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 336(sp)
	bge s11, a4, label47
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 336(sp)
	bge s11, a4, label47
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 336(sp)
	bge s11, a4, label47
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 336(sp)
	bge s11, a4, label47
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 336(sp)
	bge s11, a4, label47
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 336(sp)
	bge s11, a4, label47
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 336(sp)
	bge s11, a4, label47
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 336(sp)
	bge s11, a4, label47
	j label1344
label1343:
	mv s9, zero
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label44
	j label1343
label47:
	addiw s11, a0, 16
	ld a4, 336(sp)
	bge s11, a4, label50
	mv s9, zero
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label50
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label50
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label50
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label50
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label50
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label50
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label50
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label50
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label50
	j label1345
label50:
	addiw s11, a0, 16
	ld a4, 336(sp)
	bge s11, a4, label339
	mv s9, zero
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label339
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label339
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label339
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label339
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label339
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label339
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label339
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label339
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label339
	j label1346
label339:
	mv a4, s9
	addiw s9, a0, 1
	slli a0, a4, 1
	srli a0, a0, 60
	add a0, a4, a0
	sraiw a0, a0, 4
	ld a4, 336(sp)
	bge s9, a4, label56
	mv a4, a0
	mv a0, s9
	addiw s9, s9, 1
	slli a0, a4, 1
	srli a0, a0, 60
	add a0, a4, a0
	sraiw a0, a0, 4
	ld a4, 336(sp)
	bge s9, a4, label56
	mv a4, a0
	mv a0, s9
	addiw s9, s9, 1
	slli a0, a4, 1
	srli a0, a0, 60
	add a0, a4, a0
	sraiw a0, a0, 4
	ld a4, 336(sp)
	bge s9, a4, label56
	mv a4, a0
	mv a0, s9
	addiw s9, s9, 1
	slli a0, a4, 1
	srli a0, a0, 60
	add a0, a4, a0
	sraiw a0, a0, 4
	ld a4, 336(sp)
	bge s9, a4, label56
	mv a4, a0
	mv a0, s9
	addiw s9, s9, 1
	slli a0, a4, 1
	srli a0, a0, 60
	add a0, a4, a0
	sraiw a0, a0, 4
	ld a4, 336(sp)
	bge s9, a4, label56
	mv a4, a0
	mv a0, s9
	addiw s9, s9, 1
	slli a0, a4, 1
	srli a0, a0, 60
	add a0, a4, a0
	sraiw a0, a0, 4
	ld a4, 336(sp)
	bge s9, a4, label56
	mv a4, a0
	mv a0, s9
	addiw s9, s9, 1
	slli a0, a4, 1
	srli a0, a0, 60
	add a0, a4, a0
	sraiw a0, a0, 4
	ld a4, 336(sp)
	bge s9, a4, label56
	mv a4, a0
	mv a0, s9
	addiw s9, s9, 1
	slli a0, a4, 1
	srli a0, a0, 60
	add a0, a4, a0
	sraiw a0, a0, 4
	ld a4, 336(sp)
	bge s9, a4, label56
	mv a4, a0
	mv a0, s9
	addiw s9, s9, 1
	slli a0, a4, 1
	srli a0, a0, 60
	add a0, a4, a0
	sraiw a0, a0, 4
	ld a4, 336(sp)
	bge s9, a4, label56
	mv a4, a0
	mv a0, s9
	addiw s9, s9, 1
	slli a0, a4, 1
	srli a0, a0, 60
	add a0, a4, a0
	sraiw a0, a0, 4
	ld a4, 336(sp)
	bge s9, a4, label56
label1347:
	mv a4, a0
	mv a0, s9
	addiw s9, s9, 1
	slli a0, a4, 1
	srli a0, a0, 60
	add a0, a4, a0
	sraiw a0, a0, 4
	ld a4, 336(sp)
	bge s9, a4, label56
	j label1347
label1345:
	mv s9, zero
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label50
	j label1345
label1346:
	mv s9, zero
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 336(sp)
	bge s11, a4, label339
	j label1346
label1344:
	mv s9, zero
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 336(sp)
	bge s11, a4, label47
	j label1344
label65:
	slli a0, s0, 2
	ld a4, 328(sp)
	add a0, a4, a0
	lw a2, 0(a0)
	slli a0, s0, 2
	ld a1, 520(sp)
	add a0, a1, a0
	lw a3, 0(a0)
	ld a0, 496(sp)
	ld a4, 552(sp)
	mv a1, a4
	jal radixSort
	addiw s0, s0, 1
	li a0, 16
	bge s0, a0, label2
	ble s0, zero, label65
	j label66
label70:
	ld a2, 344(sp)
	addiw a2, a2, 1
	sd a2, 344(sp)
	li a0, 16
	bge a2, a0, label61
	j label67
label2:
	ld ra, 352(sp)
	ld s10, 360(sp)
	ld s11, 368(sp)
	ld s9, 384(sp)
	ld s8, 392(sp)
	ld s7, 400(sp)
	ld s4, 408(sp)
	ld s3, 416(sp)
	ld s2, 424(sp)
	ld s6, 432(sp)
	ld s1, 440(sp)
	ld s5, 448(sp)
	ld s0, 456(sp)
	addi sp, sp, 584
	ret
.globl main
main:
	addi sp, sp, -32
	sd s0, 24(sp)
	sd s2, 16(sp)
	sd s1, 8(sp)
	sd ra, 0(sp)
pcrel1765:
	auipc a0, %pcrel_hi(a)
	addi s0, a0, %pcrel_lo(pcrel1765)
	mv s2, s0
	mv a0, s0
	jal getarray
	mv s1, a0
	li a0, 90
	jal _sysy_starttime
	li a0, 8
	mv a1, s0
	mv a2, zero
	mv a3, s1
	jal radixSort
	ble s1, zero, label1507
	mv a1, zero
	mv a0, zero
	addiw a2, zero, 16
	bge a2, s1, label1490
	j label1489
label1507:
	mv a1, zero
	mv s0, zero
	j label1500
label1489:
	slli a3, a0, 2
	add a3, s2, a3
	lw t1, 0(a3)
	lw a5, 4(a3)
	addiw a4, a0, 3
	remw a5, a5, a4
	addiw t2, a0, 1
	mulw t2, t2, a5
	addiw a5, a0, 2
	remw t1, t1, a5
	mulw t1, a0, t1
	addw a1, a1, t1
	addw t1, a1, t2
	lw t2, 8(a3)
	addiw a1, a0, 4
	remw t2, t2, a1
	mulw a5, a5, t2
	addw t1, t1, a5
	lw t2, 12(a3)
	addiw a5, a0, 5
	remw t2, t2, a5
	mulw a4, a4, t2
	addw t1, t1, a4
	lw t2, 16(a3)
	addiw a4, a0, 6
	remw t2, t2, a4
	mulw a1, a1, t2
	addw t1, t1, a1
	lw t2, 20(a3)
	addiw a1, a0, 7
	remw t2, t2, a1
	mulw a5, a5, t2
	addw t1, t1, a5
	lw t2, 24(a3)
	addiw a5, a0, 8
	remw t2, t2, a5
	mulw a4, a4, t2
	addw t1, t1, a4
	lw t2, 28(a3)
	addiw a4, a0, 9
	remw t2, t2, a4
	mulw a1, a1, t2
	addw t1, t1, a1
	lw t2, 32(a3)
	addiw a1, a0, 10
	remw t2, t2, a1
	mulw a5, a5, t2
	addw t1, t1, a5
	lw t2, 36(a3)
	addiw a5, a0, 11
	remw t2, t2, a5
	mulw a4, a4, t2
	addw t1, t1, a4
	lw t2, 40(a3)
	addiw a4, a0, 12
	remw t2, t2, a4
	mulw a1, a1, t2
	addw t1, t1, a1
	lw t2, 44(a3)
	addiw a1, a0, 13
	remw t2, t2, a1
	mulw a5, a5, t2
	addw t1, t1, a5
	lw t2, 48(a3)
	addiw a5, a0, 14
	remw t2, t2, a5
	mulw a4, a4, t2
	addw t1, t1, a4
	lw t2, 52(a3)
	addiw a4, a0, 15
	remw t2, t2, a4
	mulw a1, a1, t2
	addw a1, t1, a1
	lw t1, 56(a3)
	remw t1, t1, a2
	mulw a5, a5, t1
	addw a1, a1, a5
	lw a3, 60(a3)
	addiw a0, a0, 17
	remw a0, a3, a0
	mulw a0, a4, a0
	addw a1, a1, a0
	mv a0, a2
	addiw a2, a2, 16
	bge a2, s1, label1490
	j label1489
label1490:
	addiw a2, a0, 16
	bge a2, s1, label1494
label1493:
	slli a3, a0, 2
	add a3, s2, a3
	lw a5, 0(a3)
	lw t1, 4(a3)
	addiw a4, a0, 3
	remw t1, t1, a4
	addiw t2, a0, 1
	mulw t2, t2, t1
	addiw t1, a0, 2
	remw a5, a5, t1
	mulw a5, a0, a5
	addw a1, a1, a5
	addw a1, a1, t2
	lw t2, 8(a3)
	addiw a5, a0, 4
	remw t2, t2, a5
	mulw t1, t1, t2
	addw t1, a1, t1
	lw t2, 12(a3)
	addiw a1, a0, 5
	remw t2, t2, a1
	mulw a4, a4, t2
	addw t1, t1, a4
	lw t2, 16(a3)
	addiw a4, a0, 6
	remw t2, t2, a4
	mulw a5, a5, t2
	addw t1, t1, a5
	lw t2, 20(a3)
	addiw a5, a0, 7
	remw t2, t2, a5
	mulw a1, a1, t2
	addw t1, t1, a1
	lw t2, 24(a3)
	addiw a1, a0, 8
	remw t2, t2, a1
	mulw a4, a4, t2
	addw t1, t1, a4
	lw t2, 28(a3)
	addiw a4, a0, 9
	remw t2, t2, a4
	mulw a5, a5, t2
	addw t1, t1, a5
	lw t2, 32(a3)
	addiw a5, a0, 10
	remw t2, t2, a5
	mulw a1, a1, t2
	addw a1, t1, a1
	lw t2, 36(a3)
	addiw t1, a0, 11
	remw t2, t2, t1
	mulw a4, a4, t2
	addw a1, a1, a4
	lw t2, 40(a3)
	addiw a4, a0, 12
	remw t2, t2, a4
	mulw a5, a5, t2
	addw a5, a1, a5
	lw t2, 44(a3)
	addiw a1, a0, 13
	remw t2, t2, a1
	mulw t1, t1, t2
	addw t1, a5, t1
	lw t2, 48(a3)
	addiw a5, a0, 14
	remw t2, t2, a5
	mulw a4, a4, t2
	addw t1, t1, a4
	lw t2, 52(a3)
	addiw a4, a0, 15
	remw t2, t2, a4
	mulw a1, a1, t2
	addw a1, t1, a1
	lw t1, 56(a3)
	remw t1, t1, a2
	mulw a5, a5, t1
	addw a1, a1, a5
	lw a3, 60(a3)
	addiw a0, a0, 17
	remw a0, a3, a0
	mulw a0, a4, a0
	addw a1, a1, a0
	mv a0, a2
	addiw a2, a2, 16
	bge a2, s1, label1494
	j label1493
label1500:
	li a0, 102
	jal _sysy_stoptime
	mv a0, s0
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s2, 16(sp)
	ld s0, 24(sp)
	addi sp, sp, 32
	ret
label1494:
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1497
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1497
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1497
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1497
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1497
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1497
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1497
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1497
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1497
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1497
label1761:
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a2, a1
	addiw a0, a0, 1
	bge a0, s1, label1497
	j label1761
label1740:
	subw s0, zero, a1
	j label1500
label1497:
	bge a1, zero, label1727
	j label1740
label1727:
	mv s0, a1
	j label1500
