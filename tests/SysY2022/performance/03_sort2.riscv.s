.data
.align 4
a:
	.zero	120000040
.text
radixSort:
	addi sp, sp, -584
	sd s0, 432(sp)
	sd s5, 408(sp)
	sd s1, 384(sp)
	sd s6, 360(sp)
	sd s2, 352(sp)
	sd s3, 576(sp)
	sd s4, 344(sp)
	sd s7, 272(sp)
	sd s8, 336(sp)
	sd s9, 192(sp)
	sd s11, 320(sp)
	sd s10, 304(sp)
	sd ra, 288(sp)
	mv a4, a0
	sd a0, 400(sp)
	mv a4, a1
	sd a1, 480(sp)
	mv a1, a2
	sd a2, 424(sp)
	addi a0, sp, 128
	sd a0, 200(sp)
	addi a0, sp, 208
	sd a0, 456(sp)
	addi a4, sp, 512
	sd a4, 280(sp)
	sw zero, 512(sp)
	addi a2, a4, 4
	sw zero, 4(a4)
	addi a5, a4, 8
	sw zero, 8(a4)
	addi t1, a4, 12
	sw zero, 12(a4)
	addi t2, a4, 16
	sw zero, 16(a4)
	addi t3, a4, 20
	sw zero, 20(a4)
	addi a1, a4, 24
	sd a1, 368(sp)
	sw zero, 24(a4)
	addi a1, a4, 28
	sd a1, 464(sp)
	sw zero, 28(a4)
	addi a1, a4, 32
	sd a1, 472(sp)
	sw zero, 32(a4)
	addi a1, a4, 36
	sd a1, 504(sp)
	sw zero, 36(a4)
	addi a1, a4, 40
	sd a1, 16(sp)
	sw zero, 40(a4)
	addi a1, a4, 44
	sd a1, 40(sp)
	sw zero, 44(a4)
	addi a1, a4, 48
	sd a1, 80(sp)
	sw zero, 48(a4)
	addi a1, a4, 52
	sd a1, 96(sp)
	sw zero, 52(a4)
	addi a1, a4, 56
	sd a1, 112(sp)
	sw zero, 56(a4)
	addi a1, a4, 60
	sd a1, 312(sp)
	sw zero, 60(a4)
	sw zero, 208(sp)
	addi t4, a0, 4
	sw zero, 4(a0)
	addi t5, a0, 8
	sw zero, 8(a0)
	addi t6, a0, 12
	sw zero, 12(a0)
	addi a6, a0, 16
	sw zero, 16(a0)
	addi a7, a0, 20
	sw zero, 20(a0)
	addi s0, a0, 24
	sw zero, 24(a0)
	addi a1, a0, 28
	sd a1, 392(sp)
	sw zero, 28(a0)
	addi a1, a0, 32
	sd a1, 448(sp)
	sw zero, 32(a0)
	addi a1, a0, 36
	sd a1, 496(sp)
	sw zero, 36(a0)
	addi a1, a0, 40
	sd a1, 0(sp)
	sw zero, 40(a0)
	addi a1, a0, 44
	sd a1, 24(sp)
	sw zero, 44(a0)
	addi a1, a0, 48
	sd a1, 72(sp)
	sw zero, 48(a0)
	addi a1, a0, 52
	sd a1, 104(sp)
	sw zero, 52(a0)
	addi a1, a0, 56
	sd a1, 328(sp)
	sw zero, 56(a0)
	addi a0, a0, 60
	sd a0, 296(sp)
	ld a0, 456(sp)
	sw zero, 60(a0)
	sw zero, 128(sp)
	ld a0, 200(sp)
	addi s1, a0, 4
	ld a0, 200(sp)
	sw zero, 4(a0)
	ld a0, 200(sp)
	addi s2, a0, 8
	ld a0, 200(sp)
	sw zero, 8(a0)
	ld a0, 200(sp)
	addi s3, a0, 12
	ld a0, 200(sp)
	sw zero, 12(a0)
	ld a0, 200(sp)
	addi s4, a0, 16
	ld a0, 200(sp)
	sw zero, 16(a0)
	ld a0, 200(sp)
	addi s5, a0, 20
	ld a0, 200(sp)
	sw zero, 20(a0)
	ld a0, 200(sp)
	addi s6, a0, 24
	ld a0, 200(sp)
	sw zero, 24(a0)
	ld a0, 200(sp)
	addi s7, a0, 28
	ld a0, 200(sp)
	sw zero, 28(a0)
	ld a0, 200(sp)
	addi s8, a0, 32
	ld a0, 200(sp)
	sw zero, 32(a0)
	ld a0, 200(sp)
	addi a1, a0, 36
	sd a1, 416(sp)
	ld a0, 200(sp)
	sw zero, 36(a0)
	ld a0, 200(sp)
	addi a1, a0, 40
	sd a1, 440(sp)
	ld a0, 200(sp)
	sw zero, 40(a0)
	ld a0, 200(sp)
	addi a1, a0, 44
	sd a1, 488(sp)
	ld a0, 200(sp)
	sw zero, 44(a0)
	ld a0, 200(sp)
	addi a1, a0, 48
	sd a1, 8(sp)
	ld a0, 200(sp)
	sw zero, 48(a0)
	ld a0, 200(sp)
	addi a1, a0, 52
	sd a1, 48(sp)
	ld a0, 200(sp)
	sw zero, 52(a0)
	ld a0, 200(sp)
	addi a1, a0, 56
	sd a1, 88(sp)
	ld a0, 200(sp)
	sw zero, 56(a0)
	ld a0, 200(sp)
	addi a1, a0, 60
	sd a1, 120(sp)
	ld a0, 200(sp)
	sw zero, 60(a0)
	ld a4, 400(sp)
	xori a0, a4, -1
	sltiu a0, a0, 1
	ld a1, 424(sp)
	addiw a1, a1, 1
	slt a1, a1, a3
	xori a1, a1, 1
	or a0, a1, a0
	beq a0, zero, label3
label2:
	ld ra, 288(sp)
	ld s10, 304(sp)
	ld s11, 320(sp)
	ld s9, 192(sp)
	ld s8, 336(sp)
	ld s7, 272(sp)
	ld s4, 344(sp)
	ld s3, 576(sp)
	ld s2, 352(sp)
	ld s6, 360(sp)
	ld s1, 384(sp)
	ld s5, 408(sp)
	ld s0, 432(sp)
	addi sp, sp, 584
	ret
label3:
	ld a4, 400(sp)
	addiw a0, a4, -1
	sd a0, 376(sp)
	ld a1, 424(sp)
	bge a1, a3, label58
	ld a1, 424(sp)
	slliw a0, a1, 2
	ld a4, 480(sp)
	add s9, a4, a0
	lw a0, 0(s9)
	ld a4, 400(sp)
	ble a4, zero, label256
	mv s11, zero
	li a4, 4096
	addw s10, zero, a4
	ld a4, 400(sp)
	bge s10, a4, label261
	mv a0, zero
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 400(sp)
	bge s10, a4, label261
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 400(sp)
	bge s10, a4, label261
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 400(sp)
	bge s10, a4, label261
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 400(sp)
	bge s10, a4, label261
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 400(sp)
	bge s10, a4, label261
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 400(sp)
	bge s10, a4, label261
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 400(sp)
	bge s10, a4, label261
	j label1371
label58:
	ld a1, 424(sp)
	sw a1, 512(sp)
	lw a0, 128(sp)
	ld a1, 424(sp)
	addw a1, a0, a1
	sw a1, 208(sp)
	sw a1, 0(a2)
	lw a2, 0(s1)
	addw a3, a2, a0
	ld a1, 424(sp)
	addw a1, a3, a1
	sw a1, 0(t4)
	sw a1, 0(a5)
	lw a1, 0(s2)
	addw a2, a2, a1
	addw a3, a2, a0
	ld a1, 424(sp)
	addw a1, a3, a1
	sw a1, 0(t5)
	sw a1, 0(t1)
	lw a1, 0(s3)
	addw a2, a2, a1
	addw a3, a2, a0
	ld a1, 424(sp)
	addw a1, a3, a1
	sw a1, 0(t6)
	sw a1, 0(t2)
	lw a1, 0(s4)
	addw a2, a2, a1
	addw a3, a2, a0
	ld a1, 424(sp)
	addw a1, a3, a1
	sw a1, 0(a6)
	sw a1, 0(t3)
	lw a1, 0(s5)
	addw a2, a2, a1
	addw a3, a2, a0
	ld a1, 424(sp)
	addw a3, a3, a1
	sw a3, 0(a7)
	ld a1, 368(sp)
	sw a3, 0(a1)
	lw a1, 0(s6)
	addw a2, a2, a1
	addw a3, a2, a0
	ld a1, 424(sp)
	addw a3, a3, a1
	sw a3, 0(s0)
	ld a1, 464(sp)
	sw a3, 0(a1)
	lw a1, 0(s7)
	addw a2, a2, a1
	addw a3, a2, a0
	ld a1, 424(sp)
	addw a3, a3, a1
	ld a1, 392(sp)
	sw a3, 0(a1)
	ld a1, 472(sp)
	sw a3, 0(a1)
	lw a1, 0(s8)
	addw a2, a2, a1
	addw a3, a2, a0
	ld a1, 424(sp)
	addw a3, a3, a1
	ld a1, 448(sp)
	sw a3, 0(a1)
	ld a1, 504(sp)
	sw a3, 0(a1)
	ld a1, 416(sp)
	lw a1, 0(a1)
	addw a2, a2, a1
	addw a3, a2, a0
	ld a1, 424(sp)
	addw a3, a3, a1
	ld a1, 496(sp)
	sw a3, 0(a1)
	ld a1, 16(sp)
	sw a3, 0(a1)
	ld a1, 440(sp)
	lw a1, 0(a1)
	addw a2, a2, a1
	addw a3, a2, a0
	ld a1, 424(sp)
	addw a3, a3, a1
	ld a1, 0(sp)
	sw a3, 0(a1)
	ld a1, 40(sp)
	sw a3, 0(a1)
	ld a1, 488(sp)
	lw a1, 0(a1)
	addw a2, a2, a1
	addw a3, a2, a0
	ld a1, 424(sp)
	addw a3, a3, a1
	ld a1, 24(sp)
	sw a3, 0(a1)
	ld a1, 80(sp)
	sw a3, 0(a1)
	ld a1, 8(sp)
	lw a1, 0(a1)
	addw a2, a2, a1
	addw a3, a2, a0
	ld a1, 424(sp)
	addw a3, a3, a1
	ld a1, 72(sp)
	sw a3, 0(a1)
	ld a1, 96(sp)
	sw a3, 0(a1)
	ld a1, 48(sp)
	lw a1, 0(a1)
	addw a2, a2, a1
	addw a3, a2, a0
	ld a1, 424(sp)
	addw a3, a3, a1
	ld a1, 104(sp)
	sw a3, 0(a1)
	ld a1, 112(sp)
	sw a3, 0(a1)
	ld a1, 88(sp)
	lw a1, 0(a1)
	addw a1, a2, a1
	addw a0, a1, a0
	ld a1, 424(sp)
	addw a2, a0, a1
	ld a1, 328(sp)
	sw a2, 0(a1)
	ld a1, 312(sp)
	sw a2, 0(a1)
	ld a1, 120(sp)
	lw a1, 0(a1)
	addw a0, a0, a1
	ld a1, 424(sp)
	addw a1, a0, a1
	ld a0, 296(sp)
	sw a1, 0(a0)
	mv a2, zero
	sd zero, 64(sp)
	li a0, 16
	bge zero, a0, label61
	j label67
label61:
	ld a1, 424(sp)
	sw a1, 512(sp)
	lw a0, 128(sp)
	ld a1, 424(sp)
	addw a0, a0, a1
	sw a0, 208(sp)
	mv s0, zero
	li a0, 16
	bge zero, a0, label2
	j label66
label67:
	ld a2, 64(sp)
	slli a1, a2, 2
	ld a0, 456(sp)
	add a1, a0, a1
	sd a1, 56(sp)
	ld a2, 64(sp)
	slli a0, a2, 2
	ld a4, 280(sp)
	add a1, a4, a0
	sd a1, 32(sp)
	lw a0, 0(a1)
	ld a1, 56(sp)
	lw a1, 0(a1)
	bge a0, a1, label70
	ld a1, 32(sp)
	lw a0, 0(a1)
	slliw a1, a0, 2
	ld a4, 480(sp)
	add a1, a4, a1
	lw a1, 0(a1)
	ld a4, 400(sp)
	ble a4, zero, label466
	mv a2, a1
	mv a5, zero
	li a3, 4096
	addw a3, zero, a3
	ld a4, 400(sp)
	bge a3, a4, label640
	mv a2, zero
	mv a5, a3
	li a3, 4096
	addw a3, a5, a3
	ld a4, 400(sp)
	bge a3, a4, label640
	mv a5, a3
	li a3, 4096
	addw a3, a5, a3
	ld a4, 400(sp)
	bge a3, a4, label640
	mv a5, a3
	li a3, 4096
	addw a3, a5, a3
	ld a4, 400(sp)
	bge a3, a4, label640
	mv a5, a3
	li a3, 4096
	addw a3, a5, a3
	ld a4, 400(sp)
	bge a3, a4, label640
	mv a5, a3
	li a3, 4096
	addw a3, a5, a3
	ld a4, 400(sp)
	bge a3, a4, label640
	mv a5, a3
	li a3, 4096
	addw a3, a5, a3
	ld a4, 400(sp)
	bge a3, a4, label640
	j label1326
label70:
	ld a2, 64(sp)
	addiw a2, a2, 1
	sd a2, 64(sp)
	li a0, 16
	bge a2, a0, label61
	j label67
label466:
	mv a2, a1
label72:
	slli a3, a2, 1
	srli a3, a3, 60
	add a3, a2, a3
	sraiw a3, a3, 4
	li a4, 16
	mulw a3, a3, a4
	subw a3, a2, a3
	ld a2, 64(sp)
	beq a3, a2, label471
	j label74
label471:
	mv a2, a0
	slliw a0, a0, 2
	ld a4, 480(sp)
	add a0, a4, a0
	sw a1, 0(a0)
	ld a1, 32(sp)
	lw a0, 0(a1)
	addiw a0, a0, 1
	ld a1, 32(sp)
	sw a0, 0(a1)
	ld a1, 56(sp)
	lw a1, 0(a1)
	bge a0, a1, label70
	ld a1, 32(sp)
	lw a0, 0(a1)
	slliw a1, a0, 2
	ld a4, 480(sp)
	add a1, a4, a1
	lw a1, 0(a1)
	ld a4, 400(sp)
	ble a4, zero, label466
	mv a2, a1
	mv a5, zero
	li a3, 4096
	addw a3, zero, a3
	ld a4, 400(sp)
	bge a3, a4, label640
	mv a2, zero
	mv a5, a3
	li a3, 4096
	addw a3, a5, a3
	ld a4, 400(sp)
	bge a3, a4, label640
	mv a5, a3
	li a3, 4096
	addw a3, a5, a3
	ld a4, 400(sp)
	bge a3, a4, label640
	mv a5, a3
	li a3, 4096
	addw a3, a5, a3
	ld a4, 400(sp)
	bge a3, a4, label640
	mv a5, a3
	li a3, 4096
	addw a3, a5, a3
	ld a4, 400(sp)
	bge a3, a4, label640
	mv a5, a3
	li a3, 4096
	addw a3, a5, a3
	ld a4, 400(sp)
	bge a3, a4, label640
	mv a5, a3
	li a3, 4096
	addw a3, a5, a3
	ld a4, 400(sp)
	bge a3, a4, label640
	j label1326
label74:
	slli a0, a3, 2
	ld a4, 280(sp)
	add a2, a4, a0
	lw a0, 0(a2)
	slliw a0, a0, 2
	ld a4, 480(sp)
	add a3, a4, a0
	lw a0, 0(a3)
	sw a1, 0(a3)
	lw a1, 0(a2)
	addiw a1, a1, 1
	sw a1, 0(a2)
	ld a4, 400(sp)
	ble a4, zero, label482
	mv a1, a0
	mv a3, zero
	li a2, 4096
	addw a2, zero, a2
	ld a4, 400(sp)
	bge a2, a4, label595
	mv a1, zero
	mv a3, a2
	li a2, 4096
	addw a2, a3, a2
	ld a4, 400(sp)
	bge a2, a4, label595
	mv a3, a2
	li a2, 4096
	addw a2, a3, a2
	ld a4, 400(sp)
	bge a2, a4, label595
	mv a3, a2
	li a2, 4096
	addw a2, a3, a2
	ld a4, 400(sp)
	bge a2, a4, label595
	mv a3, a2
	li a2, 4096
	addw a2, a3, a2
	ld a4, 400(sp)
	bge a2, a4, label595
	mv a3, a2
	li a2, 4096
	addw a2, a3, a2
	ld a4, 400(sp)
	bge a2, a4, label595
	mv a3, a2
	li a2, 4096
	addw a2, a3, a2
	ld a4, 400(sp)
	bge a2, a4, label595
	mv a3, a2
	li a2, 4096
	addw a2, a3, a2
	ld a4, 400(sp)
	bge a2, a4, label595
	mv a3, a2
	li a2, 4096
	addw a2, a3, a2
	ld a4, 400(sp)
	bge a2, a4, label595
	mv a3, a2
	li a2, 4096
	addw a2, a3, a2
	ld a4, 400(sp)
	bge a2, a4, label595
	j label1417
label482:
	mv a2, a0
label75:
	slli a1, a2, 1
	srli a1, a1, 60
	add a1, a2, a1
	sraiw a1, a1, 4
	li a3, 16
	mulw a1, a1, a3
	subw a1, a2, a1
	ld a2, 64(sp)
	beq a1, a2, label131
	ld a4, 400(sp)
	ble a4, zero, label490
	mv a1, a0
	mv a2, zero
	li a3, 4096
	addw a3, zero, a3
	ld a4, 400(sp)
	bge a3, a4, label495
	mv a1, zero
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label495
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label495
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label495
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label495
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label495
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label495
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label495
	j label1395
label495:
	mv a3, a1
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label85
	mv a3, zero
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label85
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label85
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label85
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label85
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label85
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label85
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label85
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label85
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label85
	j label1398
label1417:
	mv a1, zero
	mv a3, a2
	li a2, 4096
	addw a2, a3, a2
	ld a4, 400(sp)
	bge a2, a4, label595
	j label1417
label595:
	mv a2, a1
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label139
	mv a2, zero
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label139
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label139
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label139
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label139
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label139
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label139
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label139
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label139
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label139
	j label1418
label1398:
	mv a3, zero
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label85
	j label1398
label1326:
	mv a2, zero
	mv a5, a3
	li a3, 4096
	addw a3, a5, a3
	ld a4, 400(sp)
	bge a3, a4, label640
	j label1391
label1395:
	mv a1, zero
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label495
	j label1396
label131:
	ld a1, 32(sp)
	lw a2, 0(a1)
	mv a1, a0
	slliw a0, a2, 2
	ld a4, 480(sp)
	add a0, a4, a0
	sw a1, 0(a0)
	ld a1, 32(sp)
	lw a0, 0(a1)
	addiw a0, a0, 1
	ld a1, 32(sp)
	sw a0, 0(a1)
	ld a1, 56(sp)
	lw a1, 0(a1)
	bge a0, a1, label70
	ld a1, 32(sp)
	lw a0, 0(a1)
	slliw a1, a0, 2
	ld a4, 480(sp)
	add a1, a4, a1
	lw a1, 0(a1)
	ld a4, 400(sp)
	ble a4, zero, label466
	mv a2, a1
	mv a5, zero
	li a3, 4096
	addw a3, zero, a3
	ld a4, 400(sp)
	bge a3, a4, label640
	mv a2, zero
	mv a5, a3
	li a3, 4096
	addw a3, a5, a3
	ld a4, 400(sp)
	bge a3, a4, label640
	mv a5, a3
	li a3, 4096
	addw a3, a5, a3
	ld a4, 400(sp)
	bge a3, a4, label640
	mv a5, a3
	li a3, 4096
	addw a3, a5, a3
	ld a4, 400(sp)
	bge a3, a4, label640
	mv a5, a3
	li a3, 4096
	addw a3, a5, a3
	ld a4, 400(sp)
	bge a3, a4, label640
	mv a5, a3
	li a3, 4096
	addw a3, a5, a3
	ld a4, 400(sp)
	bge a3, a4, label640
	mv a5, a3
	li a3, 4096
	addw a3, a5, a3
	ld a4, 400(sp)
	bge a3, a4, label640
	j label1326
label640:
	mv a3, a2
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label166
	mv a3, zero
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label166
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label166
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label166
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label166
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label166
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label166
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label166
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label166
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label166
	j label1428
label1396:
	mv a1, zero
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label495
	j label1397
label490:
	mv a1, a0
label103:
	slli a2, a1, 1
	srli a2, a2, 60
	add a2, a1, a2
	sraiw a2, a2, 4
	li a3, 16
	mulw a2, a2, a3
	subw a1, a1, a2
	slli a1, a1, 2
	ld a4, 280(sp)
	add a2, a4, a1
	lw a1, 0(a2)
	slliw a1, a1, 2
	ld a4, 480(sp)
	add a3, a4, a1
	lw a1, 0(a3)
	sw a0, 0(a3)
	lw a0, 0(a2)
	addiw a0, a0, 1
	sw a0, 0(a2)
	ld a4, 400(sp)
	ble a4, zero, label543
	mv a0, a1
	mv a2, zero
	li a3, 4096
	addw a3, zero, a3
	ld a4, 400(sp)
	bge a3, a4, label553
	mv a0, zero
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label553
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label553
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label553
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label553
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label553
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label553
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label553
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label553
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label553
	j label1407
label543:
	mv a0, a1
label105:
	slli a2, a0, 1
	srli a2, a2, 60
	add a2, a0, a2
	sraiw a2, a2, 4
	li a3, 16
	mulw a2, a2, a3
	subw a0, a0, a2
	ld a2, 64(sp)
	beq a0, a2, label548
	mv a0, a1
	ld a4, 400(sp)
	ble a4, zero, label490
	mv a2, zero
	li a3, 4096
	addw a3, zero, a3
	ld a4, 400(sp)
	bge a3, a4, label495
	mv a1, zero
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label495
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label495
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label495
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label495
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label495
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label495
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label495
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label495
	j label1396
label548:
	mv a0, a1
	ld a1, 32(sp)
	lw a2, 0(a1)
	mv a1, a0
	j label157
label1397:
	mv a1, zero
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label495
	j label1397
label553:
	mv a3, a0
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label113
	mv a3, zero
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label113
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label113
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label113
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label113
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label113
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label113
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label113
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label113
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label113
	j label1408
label1407:
	mv a0, zero
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label553
	j label1407
label113:
	addiw a2, a0, 256
	ld a4, 400(sp)
	bge a2, a4, label563
	mv a3, zero
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label563
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label563
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label563
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label563
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label563
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label563
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label563
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label563
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label563
	j label1409
label1408:
	mv a3, zero
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label113
	j label1408
label1409:
	mv a3, zero
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label563
	j label1409
label563:
	mv a2, a3
	addiw a3, a0, 16
	ld a4, 400(sp)
	bge a3, a4, label119
	mv a2, zero
	mv a0, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label119
	mv a0, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label119
	mv a0, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label119
	mv a0, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label119
	mv a0, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label119
	mv a0, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label119
	mv a0, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label119
	mv a0, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label119
	mv a0, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label119
	j label1410
label119:
	addiw a3, a0, 256
	ld a4, 400(sp)
	bge a3, a4, label573
	mv a2, zero
	mv a0, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label573
	mv a0, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label573
	mv a0, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label573
	mv a0, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label573
	mv a0, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label573
	mv a0, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label573
	mv a0, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label573
	mv a0, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label573
	mv a0, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label573
	j label1411
label573:
	mv a3, a2
	mv a2, a0
	addiw a0, a0, 16
	ld a4, 400(sp)
	bge a0, a4, label578
	mv a3, zero
	mv a2, a0
	addiw a0, a0, 16
	ld a4, 400(sp)
	bge a0, a4, label578
	mv a2, a0
	addiw a0, a0, 16
	ld a4, 400(sp)
	bge a0, a4, label578
	mv a2, a0
	addiw a0, a0, 16
	ld a4, 400(sp)
	bge a0, a4, label578
	mv a2, a0
	addiw a0, a0, 16
	ld a4, 400(sp)
	bge a0, a4, label578
	mv a2, a0
	addiw a0, a0, 16
	ld a4, 400(sp)
	bge a0, a4, label578
	mv a2, a0
	addiw a0, a0, 16
	ld a4, 400(sp)
	bge a0, a4, label578
	mv a2, a0
	addiw a0, a0, 16
	ld a4, 400(sp)
	bge a0, a4, label578
	mv a2, a0
	addiw a0, a0, 16
	ld a4, 400(sp)
	bge a0, a4, label578
	mv a2, a0
	addiw a0, a0, 16
	ld a4, 400(sp)
	bge a0, a4, label578
	j label1412
label1411:
	mv a2, zero
	mv a0, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label573
	j label1411
label1412:
	mv a3, zero
	mv a2, a0
	addiw a0, a0, 16
	ld a4, 400(sp)
	bge a0, a4, label578
	j label1412
label578:
	mv a0, a3
	addiw a3, a2, 16
	ld a4, 400(sp)
	bge a3, a4, label128
	mv a0, zero
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label128
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label128
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label128
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label128
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label128
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label128
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label128
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label128
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label128
	j label1413
label128:
	slli a3, a0, 1
	srli a3, a3, 60
	add a0, a0, a3
	sraiw a0, a0, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label105
	slli a3, a0, 1
	srli a3, a3, 60
	add a0, a0, a3
	sraiw a0, a0, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label105
	slli a3, a0, 1
	srli a3, a3, 60
	add a0, a0, a3
	sraiw a0, a0, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label105
	slli a3, a0, 1
	srli a3, a3, 60
	add a0, a0, a3
	sraiw a0, a0, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label105
	slli a3, a0, 1
	srli a3, a3, 60
	add a0, a0, a3
	sraiw a0, a0, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label105
	slli a3, a0, 1
	srli a3, a3, 60
	add a0, a0, a3
	sraiw a0, a0, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label105
	slli a3, a0, 1
	srli a3, a3, 60
	add a0, a0, a3
	sraiw a0, a0, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label105
	slli a3, a0, 1
	srli a3, a3, 60
	add a0, a0, a3
	sraiw a0, a0, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label105
	slli a3, a0, 1
	srli a3, a3, 60
	add a0, a0, a3
	sraiw a0, a0, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label105
	slli a3, a0, 1
	srli a3, a3, 60
	add a0, a0, a3
	sraiw a0, a0, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label105
label1414:
	slli a3, a0, 1
	srli a3, a3, 60
	add a0, a0, a3
	sraiw a0, a0, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label105
	j label1414
label1410:
	mv a2, zero
	mv a0, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label119
	j label1410
label85:
	addiw a2, a1, 256
	ld a4, 400(sp)
	bge a2, a4, label505
	mv a3, zero
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label505
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label505
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label505
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label505
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label505
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label505
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label505
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label505
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label505
	j label1399
label505:
	mv a2, a3
	addiw a3, a1, 16
	ld a4, 400(sp)
	bge a3, a4, label91
	mv a2, zero
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label91
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label91
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label91
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label91
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label91
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label91
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label91
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label91
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label91
	j label1400
label91:
	addiw a3, a1, 256
	ld a4, 400(sp)
	bge a3, a4, label515
	mv a2, zero
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label515
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label515
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label515
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label515
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label515
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label515
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label515
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label515
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label515
	j label1401
label515:
	mv a3, a2
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 400(sp)
	bge a1, a4, label520
	mv a3, zero
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 400(sp)
	bge a1, a4, label520
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 400(sp)
	bge a1, a4, label520
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 400(sp)
	bge a1, a4, label520
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 400(sp)
	bge a1, a4, label520
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 400(sp)
	bge a1, a4, label520
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 400(sp)
	bge a1, a4, label520
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 400(sp)
	bge a1, a4, label520
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 400(sp)
	bge a1, a4, label520
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 400(sp)
	bge a1, a4, label520
	j label1402
label520:
	mv a1, a3
	addiw a3, a2, 16
	ld a4, 400(sp)
	bge a3, a4, label100
	mv a1, zero
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label100
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label100
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label100
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label100
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label100
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label100
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label100
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label100
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label100
	j label1403
label100:
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label103
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label103
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label103
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label103
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label103
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label103
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label103
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label103
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label103
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label103
label1404:
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label103
	j label1404
label1402:
	mv a3, zero
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 400(sp)
	bge a1, a4, label520
	j label1402
label1401:
	mv a2, zero
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label515
	j label1401
label1403:
	mv a1, zero
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label100
	j label1403
label1399:
	mv a3, zero
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label505
	j label1399
label1400:
	mv a2, zero
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label91
	j label1400
label1413:
	mv a0, zero
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label128
	j label1413
label1391:
	mv a2, zero
	mv a5, a3
	li a3, 4096
	addw a3, a5, a3
	ld a4, 400(sp)
	bge a3, a4, label640
	mv a5, a3
	li a3, 4096
	addw a3, a5, a3
	ld a4, 400(sp)
	bge a3, a4, label640
	j label1427
label157:
	slliw a0, a2, 2
	ld a4, 480(sp)
	add a0, a4, a0
	sw a1, 0(a0)
	ld a1, 32(sp)
	lw a0, 0(a1)
	addiw a0, a0, 1
	ld a1, 32(sp)
	sw a0, 0(a1)
	ld a1, 56(sp)
	lw a1, 0(a1)
	bge a0, a1, label70
	ld a1, 32(sp)
	lw a0, 0(a1)
	slliw a1, a0, 2
	ld a4, 480(sp)
	add a1, a4, a1
	lw a1, 0(a1)
	ld a4, 400(sp)
	ble a4, zero, label466
	mv a2, a1
	mv a5, zero
	li a3, 4096
	addw a3, zero, a3
	ld a4, 400(sp)
	bge a3, a4, label640
	mv a2, zero
	mv a5, a3
	li a3, 4096
	addw a3, a5, a3
	ld a4, 400(sp)
	bge a3, a4, label640
	mv a5, a3
	li a3, 4096
	addw a3, a5, a3
	ld a4, 400(sp)
	bge a3, a4, label640
	mv a5, a3
	li a3, 4096
	addw a3, a5, a3
	ld a4, 400(sp)
	bge a3, a4, label640
	mv a5, a3
	li a3, 4096
	addw a3, a5, a3
	ld a4, 400(sp)
	bge a3, a4, label640
	mv a5, a3
	li a3, 4096
	addw a3, a5, a3
	ld a4, 400(sp)
	bge a3, a4, label640
	mv a5, a3
	li a3, 4096
	addw a3, a5, a3
	ld a4, 400(sp)
	bge a3, a4, label640
	mv a5, a3
	li a3, 4096
	addw a3, a5, a3
	ld a4, 400(sp)
	bge a3, a4, label640
	j label1391
label1427:
	mv a2, zero
	mv a5, a3
	li a3, 4096
	addw a3, a5, a3
	ld a4, 400(sp)
	bge a3, a4, label640
	j label1427
label1428:
	mv a3, zero
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label166
	j label1428
label166:
	addiw a5, a2, 256
	ld a4, 400(sp)
	bge a5, a4, label169
	mv a3, zero
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label169
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label169
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label169
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label169
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label169
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label169
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label169
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label169
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label169
label1429:
	mv a3, zero
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label169
	j label1429
label169:
	addiw a5, a2, 16
	ld a4, 400(sp)
	bge a5, a4, label655
	mv a3, zero
	mv a2, a5
	addiw a5, a5, 16
	ld a4, 400(sp)
	bge a5, a4, label655
	mv a2, a5
	addiw a5, a5, 16
	ld a4, 400(sp)
	bge a5, a4, label655
	mv a2, a5
	addiw a5, a5, 16
	ld a4, 400(sp)
	bge a5, a4, label655
	mv a2, a5
	addiw a5, a5, 16
	ld a4, 400(sp)
	bge a5, a4, label655
	mv a2, a5
	addiw a5, a5, 16
	ld a4, 400(sp)
	bge a5, a4, label655
	mv a2, a5
	addiw a5, a5, 16
	ld a4, 400(sp)
	bge a5, a4, label655
	mv a2, a5
	addiw a5, a5, 16
	ld a4, 400(sp)
	bge a5, a4, label655
	mv a2, a5
	addiw a5, a5, 16
	ld a4, 400(sp)
	bge a5, a4, label655
	mv a2, a5
	addiw a5, a5, 16
	ld a4, 400(sp)
	bge a5, a4, label655
	j label1430
label655:
	mv a5, a3
	addiw a3, a2, 256
	ld a4, 400(sp)
	bge a3, a4, label175
	mv a5, zero
	mv a2, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label175
	mv a2, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label175
	mv a2, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label175
	mv a2, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label175
	mv a2, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label175
	mv a2, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label175
	mv a2, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label175
	mv a2, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label175
	mv a2, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label175
	j label1431
label175:
	addiw a3, a2, 16
	ld a4, 400(sp)
	bge a3, a4, label665
	mv a5, zero
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label665
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label665
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label665
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label665
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label665
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label665
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label665
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label665
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label665
	j label1432
label665:
	mv a3, a2
	addiw a2, a2, 16
	ld a4, 400(sp)
	bge a2, a4, label670
	mv a5, zero
	mv a3, a2
	addiw a2, a2, 16
	ld a4, 400(sp)
	bge a2, a4, label670
	mv a3, a2
	addiw a2, a2, 16
	ld a4, 400(sp)
	bge a2, a4, label670
	mv a3, a2
	addiw a2, a2, 16
	ld a4, 400(sp)
	bge a2, a4, label670
	mv a3, a2
	addiw a2, a2, 16
	ld a4, 400(sp)
	bge a2, a4, label670
	mv a3, a2
	addiw a2, a2, 16
	ld a4, 400(sp)
	bge a2, a4, label670
	mv a3, a2
	addiw a2, a2, 16
	ld a4, 400(sp)
	bge a2, a4, label670
	mv a3, a2
	addiw a2, a2, 16
	ld a4, 400(sp)
	bge a2, a4, label670
	mv a3, a2
	addiw a2, a2, 16
	ld a4, 400(sp)
	bge a2, a4, label670
	mv a3, a2
	addiw a2, a2, 16
	ld a4, 400(sp)
	bge a2, a4, label670
	j label1433
label670:
	mv a2, a5
	slli a4, a5, 1
	srli a4, a4, 60
	add a2, a5, a4
	sraiw a2, a2, 4
	addiw a3, a3, 1
	ld a4, 400(sp)
	bge a3, a4, label72
	slli a4, a2, 1
	srli a4, a4, 60
	add a2, a2, a4
	sraiw a2, a2, 4
	addiw a3, a3, 1
	ld a4, 400(sp)
	bge a3, a4, label72
	slli a4, a2, 1
	srli a4, a4, 60
	add a2, a2, a4
	sraiw a2, a2, 4
	addiw a3, a3, 1
	ld a4, 400(sp)
	bge a3, a4, label72
	slli a4, a2, 1
	srli a4, a4, 60
	add a2, a2, a4
	sraiw a2, a2, 4
	addiw a3, a3, 1
	ld a4, 400(sp)
	bge a3, a4, label72
	slli a4, a2, 1
	srli a4, a4, 60
	add a2, a2, a4
	sraiw a2, a2, 4
	addiw a3, a3, 1
	ld a4, 400(sp)
	bge a3, a4, label72
	slli a4, a2, 1
	srli a4, a4, 60
	add a2, a2, a4
	sraiw a2, a2, 4
	addiw a3, a3, 1
	ld a4, 400(sp)
	bge a3, a4, label72
	slli a4, a2, 1
	srli a4, a4, 60
	add a2, a2, a4
	sraiw a2, a2, 4
	addiw a3, a3, 1
	ld a4, 400(sp)
	bge a3, a4, label72
	slli a4, a2, 1
	srli a4, a4, 60
	add a2, a2, a4
	sraiw a2, a2, 4
	addiw a3, a3, 1
	ld a4, 400(sp)
	bge a3, a4, label72
	slli a4, a2, 1
	srli a4, a4, 60
	add a2, a2, a4
	sraiw a2, a2, 4
	addiw a3, a3, 1
	ld a4, 400(sp)
	bge a3, a4, label72
	slli a4, a2, 1
	srli a4, a4, 60
	add a2, a2, a4
	sraiw a2, a2, 4
	addiw a3, a3, 1
	ld a4, 400(sp)
	bge a3, a4, label72
label1434:
	slli a4, a2, 1
	srli a4, a4, 60
	add a2, a2, a4
	sraiw a2, a2, 4
	addiw a3, a3, 1
	ld a4, 400(sp)
	bge a3, a4, label72
	j label1434
label1431:
	mv a5, zero
	mv a2, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label175
	j label1431
label1432:
	mv a5, zero
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label665
	j label1432
label1430:
	mv a3, zero
	mv a2, a5
	addiw a5, a5, 16
	ld a4, 400(sp)
	bge a5, a4, label655
	j label1430
label1433:
	mv a5, zero
	mv a3, a2
	addiw a2, a2, 16
	ld a4, 400(sp)
	bge a2, a4, label670
	j label1433
label139:
	addiw a3, a1, 256
	ld a4, 400(sp)
	bge a3, a4, label142
	mv a2, zero
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label142
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label142
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label142
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label142
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label142
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label142
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label142
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label142
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label142
	j label1419
label142:
	addiw a3, a1, 16
	ld a4, 400(sp)
	bge a3, a4, label145
	mv a2, zero
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label145
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label145
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label145
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label145
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label145
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label145
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label145
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label145
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label145
	j label1420
label145:
	addiw a3, a1, 256
	ld a4, 400(sp)
	bge a3, a4, label148
	mv a2, zero
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label148
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label148
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label148
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label148
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label148
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label148
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label148
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label148
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label148
	j label1421
label148:
	addiw a3, a1, 16
	ld a4, 400(sp)
	bge a3, a4, label151
	mv a2, zero
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label151
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label151
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label151
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label151
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label151
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label151
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label151
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label151
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label151
	j label1422
label1421:
	mv a2, zero
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label148
	j label1421
label151:
	addiw a3, a1, 16
	ld a4, 400(sp)
	bge a3, a4, label154
	mv a2, zero
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label154
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label154
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label154
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label154
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label154
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label154
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label154
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label154
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label154
	j label1423
label154:
	slli a3, a2, 1
	srli a3, a3, 60
	add a2, a2, a3
	sraiw a2, a2, 4
	addiw a1, a1, 1
	ld a4, 400(sp)
	bge a1, a4, label75
	slli a3, a2, 1
	srli a3, a3, 60
	add a2, a2, a3
	sraiw a2, a2, 4
	addiw a1, a1, 1
	ld a4, 400(sp)
	bge a1, a4, label75
	slli a3, a2, 1
	srli a3, a3, 60
	add a2, a2, a3
	sraiw a2, a2, 4
	addiw a1, a1, 1
	ld a4, 400(sp)
	bge a1, a4, label75
	slli a3, a2, 1
	srli a3, a3, 60
	add a2, a2, a3
	sraiw a2, a2, 4
	addiw a1, a1, 1
	ld a4, 400(sp)
	bge a1, a4, label75
	slli a3, a2, 1
	srli a3, a3, 60
	add a2, a2, a3
	sraiw a2, a2, 4
	addiw a1, a1, 1
	ld a4, 400(sp)
	bge a1, a4, label75
	slli a3, a2, 1
	srli a3, a3, 60
	add a2, a2, a3
	sraiw a2, a2, 4
	addiw a1, a1, 1
	ld a4, 400(sp)
	bge a1, a4, label75
	slli a3, a2, 1
	srli a3, a3, 60
	add a2, a2, a3
	sraiw a2, a2, 4
	addiw a1, a1, 1
	ld a4, 400(sp)
	bge a1, a4, label75
	slli a3, a2, 1
	srli a3, a3, 60
	add a2, a2, a3
	sraiw a2, a2, 4
	addiw a1, a1, 1
	ld a4, 400(sp)
	bge a1, a4, label75
	slli a3, a2, 1
	srli a3, a3, 60
	add a2, a2, a3
	sraiw a2, a2, 4
	addiw a1, a1, 1
	ld a4, 400(sp)
	bge a1, a4, label75
	slli a3, a2, 1
	srli a3, a3, 60
	add a2, a2, a3
	sraiw a2, a2, 4
	addiw a1, a1, 1
	ld a4, 400(sp)
	bge a1, a4, label75
label1424:
	slli a3, a2, 1
	srli a3, a3, 60
	add a2, a2, a3
	sraiw a2, a2, 4
	addiw a1, a1, 1
	ld a4, 400(sp)
	bge a1, a4, label75
	j label1424
label1423:
	mv a2, zero
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label154
	j label1423
label1422:
	mv a2, zero
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label151
	j label1422
label1420:
	mv a2, zero
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label145
	j label1420
label1419:
	mv a2, zero
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label142
	j label1419
label1418:
	mv a2, zero
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label139
	j label1418
label1371:
	mv a0, zero
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 400(sp)
	bge s10, a4, label261
label1372:
	mv a0, zero
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 400(sp)
	bge s10, a4, label261
label1373:
	mv a0, zero
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 400(sp)
	bge s10, a4, label261
	j label1373
label261:
	mv s10, a0
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label12
	mv s10, zero
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label12
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label12
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label12
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label12
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label12
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label12
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label12
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label12
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label12
label1374:
	mv s10, zero
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label12
	j label1374
label12:
	addiw s11, a0, 256
	ld a4, 400(sp)
	bge s11, a4, label15
	mv s10, zero
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label15
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label15
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label15
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label15
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label15
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label15
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label15
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label15
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label15
	j label1375
label15:
	addiw s11, a0, 16
	ld a4, 400(sp)
	bge s11, a4, label18
	mv s10, zero
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label18
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label18
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label18
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label18
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label18
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label18
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label18
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label18
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label18
	j label1376
label18:
	addiw s11, a0, 256
	ld a4, 400(sp)
	bge s11, a4, label21
	mv s10, zero
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label21
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label21
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label21
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label21
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label21
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label21
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label21
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label21
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label21
	j label1377
label1376:
	mv s10, zero
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label18
	j label1376
label1375:
	mv s10, zero
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label15
	j label1375
label21:
	addiw s11, a0, 16
	ld a4, 400(sp)
	bge s11, a4, label24
	mv s10, zero
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label24
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label24
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label24
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label24
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label24
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label24
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label24
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label24
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label24
	j label1378
label24:
	addiw s11, a0, 16
	ld a4, 400(sp)
	bge s11, a4, label291
	mv s10, zero
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label291
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label291
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label291
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label291
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label291
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label291
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label291
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label291
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label291
label1379:
	mv s10, zero
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label291
	j label1379
label291:
	mv a4, s10
	slli s10, s10, 1
	srli s10, s10, 60
	add a4, a4, s10
	sraiw s10, a4, 4
	addiw a0, a0, 1
	ld a4, 400(sp)
	bge a0, a4, label30
	mv a4, s10
	slli s10, s10, 1
	srli s10, s10, 60
	add a4, a4, s10
	sraiw s10, a4, 4
	addiw a0, a0, 1
	ld a4, 400(sp)
	bge a0, a4, label30
	mv a4, s10
	slli s10, s10, 1
	srli s10, s10, 60
	add a4, a4, s10
	sraiw s10, a4, 4
	addiw a0, a0, 1
	ld a4, 400(sp)
	bge a0, a4, label30
	mv a4, s10
	slli s10, s10, 1
	srli s10, s10, 60
	add a4, a4, s10
	sraiw s10, a4, 4
	addiw a0, a0, 1
	ld a4, 400(sp)
	bge a0, a4, label30
	mv a4, s10
	slli s10, s10, 1
	srli s10, s10, 60
	add a4, a4, s10
	sraiw s10, a4, 4
	addiw a0, a0, 1
	ld a4, 400(sp)
	bge a0, a4, label30
	mv a4, s10
	slli s10, s10, 1
	srli s10, s10, 60
	add a4, a4, s10
	sraiw s10, a4, 4
	addiw a0, a0, 1
	ld a4, 400(sp)
	bge a0, a4, label30
	mv a4, s10
	slli s10, s10, 1
	srli s10, s10, 60
	add a4, a4, s10
	sraiw s10, a4, 4
	addiw a0, a0, 1
	ld a4, 400(sp)
	bge a0, a4, label30
	mv a4, s10
	slli s10, s10, 1
	srli s10, s10, 60
	add a4, a4, s10
	sraiw s10, a4, 4
	addiw a0, a0, 1
	ld a4, 400(sp)
	bge a0, a4, label30
	mv a4, s10
	slli s10, s10, 1
	srli s10, s10, 60
	add a4, a4, s10
	sraiw s10, a4, 4
	addiw a0, a0, 1
	ld a4, 400(sp)
	bge a0, a4, label30
	mv a4, s10
	slli s10, s10, 1
	srli s10, s10, 60
	add a4, a4, s10
	sraiw s10, a4, 4
	addiw a0, a0, 1
	ld a4, 400(sp)
	bge a0, a4, label30
label1380:
	mv a4, s10
	slli s10, s10, 1
	srli s10, s10, 60
	add a4, a4, s10
	sraiw s10, a4, 4
	addiw a0, a0, 1
	ld a4, 400(sp)
	bge a0, a4, label30
	j label1380
label30:
	slli a0, s10, 1
	srli a0, a0, 60
	add a0, s10, a0
	sraiw a0, a0, 4
	li a4, 16
	mulw a0, a0, a4
	subw a0, s10, a0
	slli a4, a0, 2
	ld a0, 200(sp)
	add s10, a0, a4
	lw a0, 0(s9)
	ld a4, 400(sp)
	ble a4, zero, label304
	mv s9, zero
	li a4, 4096
	addw s11, zero, a4
	ld a4, 400(sp)
	bge s11, a4, label309
	mv a0, zero
	mv s9, s11
	li a4, 4096
	addw s11, s11, a4
	ld a4, 400(sp)
	bge s11, a4, label309
	mv s9, s11
	li a4, 4096
	addw s11, s11, a4
	ld a4, 400(sp)
	bge s11, a4, label309
	mv s9, s11
	li a4, 4096
	addw s11, s11, a4
	ld a4, 400(sp)
	bge s11, a4, label309
	mv s9, s11
	li a4, 4096
	addw s11, s11, a4
	ld a4, 400(sp)
	bge s11, a4, label309
	mv s9, s11
	li a4, 4096
	addw s11, s11, a4
	ld a4, 400(sp)
	bge s11, a4, label309
	mv s9, s11
	li a4, 4096
	addw s11, s11, a4
	ld a4, 400(sp)
	bge s11, a4, label309
	mv s9, s11
	li a4, 4096
	addw s11, s11, a4
	ld a4, 400(sp)
	bge s11, a4, label309
	mv s9, s11
	li a4, 4096
	addw s11, s11, a4
	ld a4, 400(sp)
	bge s11, a4, label309
	mv s9, s11
	li a4, 4096
	addw s11, s11, a4
	ld a4, 400(sp)
	bge s11, a4, label309
	j label1382
label304:
	mv s9, a0
	j label56
label1382:
	mv a0, zero
	mv s9, s11
	li a4, 4096
	addw s11, s11, a4
	ld a4, 400(sp)
	bge s11, a4, label309
	j label1382
label56:
	slli a0, s9, 1
	srli a0, a0, 60
	add a0, s9, a0
	sraiw a0, a0, 4
	li a4, 16
	mulw a0, a0, a4
	subw a0, s9, a0
	slli a4, a0, 2
	ld a0, 200(sp)
	add a0, a0, a4
	lw a0, 0(a0)
	addiw a0, a0, 1
	sw a0, 0(s10)
	addiw a1, a1, 1
	bge a1, a3, label58
	slliw a0, a1, 2
	ld a4, 480(sp)
	add s9, a4, a0
	lw a0, 0(s9)
	ld a4, 400(sp)
	ble a4, zero, label256
	mv s11, zero
	li a4, 4096
	addw s10, zero, a4
	ld a4, 400(sp)
	bge s10, a4, label261
	mv a0, zero
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 400(sp)
	bge s10, a4, label261
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 400(sp)
	bge s10, a4, label261
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 400(sp)
	bge s10, a4, label261
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 400(sp)
	bge s10, a4, label261
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 400(sp)
	bge s10, a4, label261
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 400(sp)
	bge s10, a4, label261
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 400(sp)
	bge s10, a4, label261
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 400(sp)
	bge s10, a4, label261
	j label1372
label309:
	mv s11, a0
	mv a0, s9
	addiw s9, s9, 256
	ld a4, 400(sp)
	bge s9, a4, label314
	mv s11, zero
	mv a0, s9
	addiw s9, s9, 256
	ld a4, 400(sp)
	bge s9, a4, label314
	mv a0, s9
	addiw s9, s9, 256
	ld a4, 400(sp)
	bge s9, a4, label314
	mv a0, s9
	addiw s9, s9, 256
	ld a4, 400(sp)
	bge s9, a4, label314
	mv a0, s9
	addiw s9, s9, 256
	ld a4, 400(sp)
	bge s9, a4, label314
	mv a0, s9
	addiw s9, s9, 256
	ld a4, 400(sp)
	bge s9, a4, label314
	mv a0, s9
	addiw s9, s9, 256
	ld a4, 400(sp)
	bge s9, a4, label314
	mv a0, s9
	addiw s9, s9, 256
	ld a4, 400(sp)
	bge s9, a4, label314
	mv a0, s9
	addiw s9, s9, 256
	ld a4, 400(sp)
	bge s9, a4, label314
	mv a0, s9
	addiw s9, s9, 256
	ld a4, 400(sp)
	bge s9, a4, label314
	j label1383
label314:
	mv s9, s11
	addiw s11, a0, 256
	ld a4, 400(sp)
	bge s11, a4, label41
	mv s9, zero
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label41
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label41
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label41
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label41
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label41
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label41
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label41
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label41
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label41
label1384:
	mv s9, zero
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label41
	j label1384
label41:
	addiw s11, a0, 16
	ld a4, 400(sp)
	bge s11, a4, label44
	mv s9, zero
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label44
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label44
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label44
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label44
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label44
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label44
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label44
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label44
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label44
	j label1385
label44:
	addiw s11, a0, 256
	ld a4, 400(sp)
	bge s11, a4, label47
	mv s9, zero
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label47
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label47
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label47
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label47
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label47
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label47
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label47
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label47
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label47
	j label1386
label1385:
	mv s9, zero
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label44
	j label1385
label1386:
	mv s9, zero
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label47
	j label1386
label1383:
	mv s11, zero
	mv a0, s9
	addiw s9, s9, 256
	ld a4, 400(sp)
	bge s9, a4, label314
	j label1383
label47:
	addiw s11, a0, 16
	ld a4, 400(sp)
	bge s11, a4, label50
	mv s9, zero
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label50
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label50
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label50
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label50
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label50
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label50
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label50
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label50
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label50
label1387:
	mv s9, zero
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label50
	j label1387
label50:
	addiw s11, a0, 16
	ld a4, 400(sp)
	bge s11, a4, label339
	mv s9, zero
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label339
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label339
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label339
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label339
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label339
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label339
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label339
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label339
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label339
label1388:
	mv s9, zero
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label339
	j label1388
label339:
	mv a4, s9
	slli s9, s9, 1
	srli s9, s9, 60
	add a4, a4, s9
	sraiw s9, a4, 4
	addiw a0, a0, 1
	ld a4, 400(sp)
	bge a0, a4, label56
	mv a4, s9
	slli s9, s9, 1
	srli s9, s9, 60
	add a4, a4, s9
	sraiw s9, a4, 4
	addiw a0, a0, 1
	ld a4, 400(sp)
	bge a0, a4, label56
	mv a4, s9
	slli s9, s9, 1
	srli s9, s9, 60
	add a4, a4, s9
	sraiw s9, a4, 4
	addiw a0, a0, 1
	ld a4, 400(sp)
	bge a0, a4, label56
	mv a4, s9
	slli s9, s9, 1
	srli s9, s9, 60
	add a4, a4, s9
	sraiw s9, a4, 4
	addiw a0, a0, 1
	ld a4, 400(sp)
	bge a0, a4, label56
	mv a4, s9
	slli s9, s9, 1
	srli s9, s9, 60
	add a4, a4, s9
	sraiw s9, a4, 4
	addiw a0, a0, 1
	ld a4, 400(sp)
	bge a0, a4, label56
	mv a4, s9
	slli s9, s9, 1
	srli s9, s9, 60
	add a4, a4, s9
	sraiw s9, a4, 4
	addiw a0, a0, 1
	ld a4, 400(sp)
	bge a0, a4, label56
	mv a4, s9
	slli s9, s9, 1
	srli s9, s9, 60
	add a4, a4, s9
	sraiw s9, a4, 4
	addiw a0, a0, 1
	ld a4, 400(sp)
	bge a0, a4, label56
	mv a4, s9
	slli s9, s9, 1
	srli s9, s9, 60
	add a4, a4, s9
	sraiw s9, a4, 4
	addiw a0, a0, 1
	ld a4, 400(sp)
	bge a0, a4, label56
	mv a4, s9
	slli s9, s9, 1
	srli s9, s9, 60
	add a4, a4, s9
	sraiw s9, a4, 4
	addiw a0, a0, 1
	ld a4, 400(sp)
	bge a0, a4, label56
	mv a4, s9
	slli s9, s9, 1
	srli s9, s9, 60
	add a4, a4, s9
	sraiw s9, a4, 4
	addiw a0, a0, 1
	ld a4, 400(sp)
	bge a0, a4, label56
label1389:
	mv a4, s9
	slli s9, s9, 1
	srli s9, s9, 60
	add a4, a4, s9
	sraiw s9, a4, 4
	addiw a0, a0, 1
	ld a4, 400(sp)
	bge a0, a4, label56
	j label1389
label1377:
	mv s10, zero
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label21
	j label1377
label1378:
	mv s10, zero
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label24
	j label1378
label256:
	mv s10, a0
	j label30
label65:
	slli a0, s0, 2
	ld a4, 280(sp)
	add a2, a4, a0
	addiw a0, s0, -1
	slli a1, a0, 2
	ld a0, 456(sp)
	add a0, a0, a1
	lw a1, 0(a0)
	sw a1, 0(a2)
	slli a2, s0, 2
	ld a0, 456(sp)
	add a2, a0, a2
	slli a3, s0, 2
	ld a0, 200(sp)
	add a0, a0, a3
	lw a0, 0(a0)
	addw a0, a1, a0
	sw a0, 0(a2)
label66:
	slli a0, s0, 2
	ld a4, 280(sp)
	add a0, a4, a0
	lw a2, 0(a0)
	slli a1, s0, 2
	ld a0, 456(sp)
	add a0, a0, a1
	lw a3, 0(a0)
	ld a0, 376(sp)
	ld a4, 480(sp)
	mv a1, a4
	jal radixSort
	addiw s0, s0, 1
	li a0, 16
	bge s0, a0, label2
	ble s0, zero, label66
	j label65
.globl main
main:
	addi sp, sp, -80
	sd s0, 72(sp)
	sd s5, 64(sp)
	sd s2, 56(sp)
	sd s1, 48(sp)
	sd s6, 40(sp)
	sd s3, 32(sp)
	sd s4, 24(sp)
	sd s7, 16(sp)
	sd s8, 8(sp)
	sd ra, 0(sp)
pcrel1823:
	auipc a0, %pcrel_hi(a)
	addi s0, a0, %pcrel_lo(pcrel1823)
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
	ble s1, zero, label1559
	mv a1, zero
	mv a0, zero
	addiw a2, zero, 16
	bge a2, s1, label1542
	j label1541
label1559:
	mv a1, zero
	mv s0, zero
	j label1552
label1541:
	slli a3, a0, 2
	add a3, s2, a3
	lw a4, 0(a3)
	addiw t1, a0, 2
	remw a4, a4, t1
	mulw a4, a0, a4
	addiw a5, a0, 1
	lw t3, 4(a3)
	addiw t2, a0, 3
	remw t3, t3, t2
	mulw a5, t3, a5
	lw t4, 8(a3)
	addiw t3, a0, 4
	remw t4, t4, t3
	mulw t1, t4, t1
	lw t5, 12(a3)
	addiw t4, a0, 5
	remw t5, t5, t4
	mulw t2, t5, t2
	lw t6, 16(a3)
	addiw t5, a0, 6
	remw t6, t6, t5
	mulw t3, t6, t3
	lw a6, 20(a3)
	addiw t6, a0, 7
	remw a6, a6, t6
	mulw t4, a6, t4
	lw a7, 24(a3)
	addiw a6, a0, 8
	remw a7, a7, a6
	mulw t5, a7, t5
	lw s0, 28(a3)
	addiw a7, a0, 9
	remw s0, s0, a7
	mulw t6, s0, t6
	lw s3, 32(a3)
	addiw s0, a0, 10
	remw s3, s3, s0
	mulw a6, s3, a6
	lw s4, 36(a3)
	addiw s3, a0, 11
	remw s4, s4, s3
	mulw a7, s4, a7
	lw s5, 40(a3)
	addiw s4, a0, 12
	remw s5, s5, s4
	mulw s0, s5, s0
	lw s6, 44(a3)
	addiw s5, a0, 13
	remw s6, s6, s5
	mulw s3, s6, s3
	lw s7, 48(a3)
	addiw s6, a0, 14
	remw s7, s7, s6
	mulw s4, s7, s4
	lw s8, 52(a3)
	addiw s7, a0, 15
	remw s8, s8, s7
	mulw s5, s8, s5
	lw s8, 56(a3)
	remw s8, s8, a2
	mulw s6, s8, s6
	lw a3, 60(a3)
	addiw a0, a0, 17
	remw a0, a3, a0
	mulw a0, a0, s7
	addw a1, a1, a4
	addw a1, a1, a5
	addw a1, a1, t1
	addw a1, a1, t2
	addw a1, a1, t3
	addw a1, a1, t4
	addw a1, a1, t5
	addw a1, a1, t6
	addw a1, a1, a6
	addw a1, a1, a7
	addw a1, a1, s0
	addw a1, a1, s3
	addw a1, a1, s4
	addw a1, a1, s5
	addw a1, a1, s6
	addw a1, a1, a0
	mv a0, a2
	addiw a2, a2, 16
	bge a2, s1, label1542
	j label1541
label1542:
	addiw a2, a0, 16
	bge a2, s1, label1546
label1545:
	slli a3, a0, 2
	add a4, s2, a3
	lw a3, 0(a4)
	addiw t1, a0, 2
	remw a3, a3, t1
	mulw a3, a0, a3
	addiw a5, a0, 1
	lw t3, 4(a4)
	addiw t2, a0, 3
	remw t3, t3, t2
	mulw a5, t3, a5
	lw t4, 8(a4)
	addiw t3, a0, 4
	remw t4, t4, t3
	mulw t1, t4, t1
	lw t5, 12(a4)
	addiw t4, a0, 5
	remw t5, t5, t4
	mulw t2, t5, t2
	lw t6, 16(a4)
	addiw t5, a0, 6
	remw t6, t6, t5
	mulw t3, t6, t3
	lw a6, 20(a4)
	addiw t6, a0, 7
	remw a6, a6, t6
	mulw t4, a6, t4
	lw a7, 24(a4)
	addiw a6, a0, 8
	remw a7, a7, a6
	mulw t5, a7, t5
	lw s0, 28(a4)
	addiw a7, a0, 9
	remw s0, s0, a7
	mulw t6, s0, t6
	lw s3, 32(a4)
	addiw s0, a0, 10
	remw s3, s3, s0
	mulw a6, s3, a6
	lw s4, 36(a4)
	addiw s3, a0, 11
	remw s4, s4, s3
	mulw a7, s4, a7
	lw s5, 40(a4)
	addiw s4, a0, 12
	remw s5, s5, s4
	mulw s0, s5, s0
	lw s6, 44(a4)
	addiw s5, a0, 13
	remw s6, s6, s5
	mulw s3, s6, s3
	lw s7, 48(a4)
	addiw s6, a0, 14
	remw s7, s7, s6
	mulw s4, s7, s4
	lw s8, 52(a4)
	addiw s7, a0, 15
	remw s8, s8, s7
	mulw s5, s8, s5
	lw s8, 56(a4)
	remw s8, s8, a2
	mulw s6, s8, s6
	lw a4, 60(a4)
	addiw a0, a0, 17
	remw a0, a4, a0
	mulw a0, a0, s7
	addw a1, a1, a3
	addw a1, a1, a5
	addw a1, a1, t1
	addw a1, a1, t2
	addw a1, a1, t3
	addw a1, a1, t4
	addw a1, a1, t5
	addw a1, a1, t6
	addw a1, a1, a6
	addw a1, a1, a7
	addw a1, a1, s0
	addw a1, a1, s3
	addw a1, a1, s4
	addw a1, a1, s5
	addw a1, a1, s6
	addw a1, a1, a0
	mv a0, a2
	addiw a2, a2, 16
	bge a2, s1, label1546
	j label1545
label1552:
	li a0, 102
	jal _sysy_stoptime
	mv a0, s0
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s8, 8(sp)
	ld s7, 16(sp)
	ld s4, 24(sp)
	ld s3, 32(sp)
	ld s6, 40(sp)
	ld s1, 48(sp)
	ld s2, 56(sp)
	ld s5, 64(sp)
	ld s0, 72(sp)
	addi sp, sp, 80
	ret
label1546:
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a1, a2
	addiw a0, a0, 1
	bge a0, s1, label1549
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a1, a2
	addiw a0, a0, 1
	bge a0, s1, label1549
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a1, a2
	addiw a0, a0, 1
	bge a0, s1, label1549
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a1, a2
	addiw a0, a0, 1
	bge a0, s1, label1549
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a1, a2
	addiw a0, a0, 1
	bge a0, s1, label1549
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a1, a2
	addiw a0, a0, 1
	bge a0, s1, label1549
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a1, a2
	addiw a0, a0, 1
	bge a0, s1, label1549
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a1, a2
	addiw a0, a0, 1
	bge a0, s1, label1549
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a1, a2
	addiw a0, a0, 1
	bge a0, s1, label1549
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a1, a2
	addiw a0, a0, 1
	bge a0, s1, label1549
label1819:
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a1, a2
	addiw a0, a0, 1
	bge a0, s1, label1549
	j label1819
label1798:
	subw s0, zero, a1
	j label1552
label1549:
	bge a1, zero, label1779
	j label1798
label1779:
	mv s0, a1
	j label1552
