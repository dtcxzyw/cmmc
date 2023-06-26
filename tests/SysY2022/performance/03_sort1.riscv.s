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
	sd a1, 32(sp)
	sw zero, 44(a4)
	addi a1, a4, 48
	sd a1, 72(sp)
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
	sd a1, 64(sp)
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
	bge a1, a3, label4
	ld a1, 424(sp)
	slliw a0, a1, 2
	ld a4, 480(sp)
	add s9, a4, a0
	lw a0, 0(s9)
	ld a4, 400(sp)
	ble a4, zero, label577
	mv s11, zero
	li a4, 4096
	addw s10, zero, a4
	ld a4, 400(sp)
	bge s10, a4, label582
	mv a0, zero
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 400(sp)
	bge s10, a4, label582
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 400(sp)
	bge s10, a4, label582
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 400(sp)
	bge s10, a4, label582
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 400(sp)
	bge s10, a4, label582
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 400(sp)
	bge s10, a4, label582
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 400(sp)
	bge s10, a4, label582
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 400(sp)
	bge s10, a4, label582
	j label1359
label4:
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
	ld a1, 32(sp)
	sw a3, 0(a1)
	ld a1, 488(sp)
	lw a1, 0(a1)
	addw a2, a2, a1
	addw a3, a2, a0
	ld a1, 424(sp)
	addw a3, a3, a1
	ld a1, 24(sp)
	sw a3, 0(a1)
	ld a1, 72(sp)
	sw a3, 0(a1)
	ld a1, 8(sp)
	lw a1, 0(a1)
	addw a2, a2, a1
	addw a3, a2, a0
	ld a1, 424(sp)
	addw a3, a3, a1
	ld a1, 64(sp)
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
	sd zero, 80(sp)
	li a0, 16
	bge zero, a0, label124
label7:
	ld a2, 80(sp)
	slli a1, a2, 2
	ld a0, 456(sp)
	add a1, a0, a1
	sd a1, 56(sp)
	ld a2, 80(sp)
	slli a0, a2, 2
	ld a4, 280(sp)
	add a1, a4, a0
	sd a1, 40(sp)
	lw a0, 0(a1)
	ld a1, 56(sp)
	lw a1, 0(a1)
	bge a0, a1, label10
	ld a1, 40(sp)
	lw a0, 0(a1)
	slliw a1, a0, 2
	ld a4, 480(sp)
	add a1, a4, a1
	lw a1, 0(a1)
	ld a4, 400(sp)
	ble a4, zero, label332
	mv a2, a1
	mv a5, zero
	li a3, 4096
	addw a3, zero, a3
	ld a4, 400(sp)
	bge a3, a4, label506
	mv a2, zero
	mv a5, a3
	li a3, 4096
	addw a3, a5, a3
	ld a4, 400(sp)
	bge a3, a4, label506
	mv a5, a3
	li a3, 4096
	addw a3, a5, a3
	ld a4, 400(sp)
	bge a3, a4, label506
	mv a5, a3
	li a3, 4096
	addw a3, a5, a3
	ld a4, 400(sp)
	bge a3, a4, label506
	mv a5, a3
	li a3, 4096
	addw a3, a5, a3
	ld a4, 400(sp)
	bge a3, a4, label506
	mv a5, a3
	li a3, 4096
	addw a3, a5, a3
	ld a4, 400(sp)
	bge a3, a4, label506
	mv a5, a3
	li a3, 4096
	addw a3, a5, a3
	ld a4, 400(sp)
	bge a3, a4, label506
	mv a5, a3
	li a3, 4096
	addw a3, a5, a3
	ld a4, 400(sp)
	bge a3, a4, label506
label1360:
	mv a2, zero
	mv a5, a3
	li a3, 4096
	addw a3, a5, a3
	ld a4, 400(sp)
	bge a3, a4, label506
	mv a5, a3
	li a3, 4096
	addw a3, a5, a3
	ld a4, 400(sp)
	bge a3, a4, label506
	j label1394
label332:
	mv a2, a1
label12:
	slli a3, a2, 1
	srli a3, a3, 60
	add a3, a2, a3
	sraiw a3, a3, 4
	li a4, 16
	mulw a3, a3, a4
	subw a3, a2, a3
	ld a2, 80(sp)
	beq a3, a2, label337
	j label17
label337:
	mv a2, a0
label14:
	slliw a0, a2, 2
	ld a4, 480(sp)
	add a0, a4, a0
	sw a1, 0(a0)
	ld a1, 40(sp)
	lw a0, 0(a1)
	addiw a0, a0, 1
	ld a1, 40(sp)
	sw a0, 0(a1)
	ld a1, 56(sp)
	lw a1, 0(a1)
	bge a0, a1, label10
	ld a1, 40(sp)
	lw a0, 0(a1)
	slliw a1, a0, 2
	ld a4, 480(sp)
	add a1, a4, a1
	lw a1, 0(a1)
	ld a4, 400(sp)
	ble a4, zero, label332
	mv a2, a1
	mv a5, zero
	li a3, 4096
	addw a3, zero, a3
	ld a4, 400(sp)
	bge a3, a4, label506
	mv a2, zero
	mv a5, a3
	li a3, 4096
	addw a3, a5, a3
	ld a4, 400(sp)
	bge a3, a4, label506
	mv a5, a3
	li a3, 4096
	addw a3, a5, a3
	ld a4, 400(sp)
	bge a3, a4, label506
	mv a5, a3
	li a3, 4096
	addw a3, a5, a3
	ld a4, 400(sp)
	bge a3, a4, label506
	mv a5, a3
	li a3, 4096
	addw a3, a5, a3
	ld a4, 400(sp)
	bge a3, a4, label506
	mv a5, a3
	li a3, 4096
	addw a3, a5, a3
	ld a4, 400(sp)
	bge a3, a4, label506
	mv a5, a3
	li a3, 4096
	addw a3, a5, a3
	ld a4, 400(sp)
	bge a3, a4, label506
	mv a5, a3
	li a3, 4096
	addw a3, a5, a3
	ld a4, 400(sp)
	bge a3, a4, label506
	j label1360
label17:
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
	ble a4, zero, label352
	mv a1, a0
	mv a2, zero
	li a3, 4096
	addw a3, zero, a3
	ld a4, 400(sp)
	bge a3, a4, label465
	mv a1, zero
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label465
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label465
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label465
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label465
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label465
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label465
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label465
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label465
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label465
	j label1385
label352:
	mv a1, a0
label18:
	slli a2, a1, 1
	srli a2, a2, 60
	add a2, a1, a2
	sraiw a2, a2, 4
	li a3, 16
	mulw a2, a2, a3
	subw a1, a1, a2
	ld a2, 80(sp)
	beq a1, a2, label20
	ld a4, 400(sp)
	ble a4, zero, label361
	mv a1, a0
	mv a2, zero
	li a3, 4096
	addw a3, zero, a3
	ld a4, 400(sp)
	bge a3, a4, label424
	mv a1, zero
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label424
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label424
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label424
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label424
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label424
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label424
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label424
	j label1364
label1394:
	mv a2, zero
	mv a5, a3
	li a3, 4096
	addw a3, a5, a3
	ld a4, 400(sp)
	bge a3, a4, label506
	j label1394
label124:
	ld a1, 424(sp)
	sw a1, 512(sp)
	lw a0, 128(sp)
	ld a1, 424(sp)
	addw a0, a0, a1
	sw a0, 208(sp)
	mv s0, zero
	li a0, 16
	bge zero, a0, label2
	j label129
label1364:
	mv a1, zero
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label424
label1365:
	mv a1, zero
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label424
	j label1377
label24:
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
	ble a4, zero, label373
	mv a0, a1
	mv a2, zero
	li a3, 4096
	addw a3, zero, a3
	ld a4, 400(sp)
	bge a3, a4, label378
	mv a0, zero
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label378
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label378
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label378
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label378
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label378
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label378
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label378
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label378
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label378
	j label1368
label373:
	mv a0, a1
	slli a2, a1, 1
	srli a2, a2, 60
	add a2, a1, a2
	sraiw a2, a2, 4
	li a3, 16
	mulw a2, a2, a3
	subw a0, a1, a2
	ld a2, 80(sp)
	beq a0, a2, label419
	mv a0, a1
	ld a4, 400(sp)
	ble a4, zero, label361
	mv a2, zero
	li a3, 4096
	addw a3, zero, a3
	ld a4, 400(sp)
	bge a3, a4, label424
	mv a1, zero
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label424
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label424
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label424
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label424
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label424
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label424
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label424
	j label1376
label1368:
	mv a0, zero
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label378
	j label1368
label378:
	mv a3, a0
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label383
	mv a3, zero
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label383
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label383
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label383
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label383
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label383
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label383
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label383
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label383
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label383
	j label1369
label383:
	mv a2, a3
	addiw a3, a0, 256
	ld a4, 400(sp)
	bge a3, a4, label35
	mv a2, zero
	mv a0, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label35
	mv a0, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label35
	mv a0, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label35
	mv a0, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label35
	mv a0, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label35
	mv a0, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label35
	mv a0, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label35
	mv a0, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label35
	mv a0, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label35
	j label1370
label1376:
	mv a1, zero
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label424
	j label1365
label35:
	addiw a3, a0, 16
	ld a4, 400(sp)
	bge a3, a4, label38
	mv a2, zero
	mv a0, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label38
	mv a0, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label38
	mv a0, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label38
	mv a0, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label38
	mv a0, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label38
	mv a0, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label38
	mv a0, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label38
	mv a0, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label38
	mv a0, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label38
	j label1371
label1370:
	mv a2, zero
	mv a0, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label35
	j label1370
label1377:
	mv a1, zero
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label424
	j label1377
label38:
	addiw a3, a0, 256
	ld a4, 400(sp)
	bge a3, a4, label398
	mv a2, zero
	mv a0, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label398
	mv a0, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label398
	mv a0, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label398
	mv a0, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label398
	mv a0, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label398
	mv a0, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label398
	mv a0, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label398
	mv a0, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label398
	mv a0, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label398
	j label1372
label398:
	mv a3, a2
	mv a2, a0
	addiw a0, a0, 16
	ld a4, 400(sp)
	bge a0, a4, label403
	mv a3, zero
	mv a2, a0
	addiw a0, a0, 16
	ld a4, 400(sp)
	bge a0, a4, label403
	mv a2, a0
	addiw a0, a0, 16
	ld a4, 400(sp)
	bge a0, a4, label403
	mv a2, a0
	addiw a0, a0, 16
	ld a4, 400(sp)
	bge a0, a4, label403
	mv a2, a0
	addiw a0, a0, 16
	ld a4, 400(sp)
	bge a0, a4, label403
	mv a2, a0
	addiw a0, a0, 16
	ld a4, 400(sp)
	bge a0, a4, label403
	mv a2, a0
	addiw a0, a0, 16
	ld a4, 400(sp)
	bge a0, a4, label403
	mv a2, a0
	addiw a0, a0, 16
	ld a4, 400(sp)
	bge a0, a4, label403
	mv a2, a0
	addiw a0, a0, 16
	ld a4, 400(sp)
	bge a0, a4, label403
	mv a2, a0
	addiw a0, a0, 16
	ld a4, 400(sp)
	bge a0, a4, label403
	j label1373
label1372:
	mv a2, zero
	mv a0, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label398
	j label1372
label1373:
	mv a3, zero
	mv a2, a0
	addiw a0, a0, 16
	ld a4, 400(sp)
	bge a0, a4, label403
	j label1373
label403:
	mv a0, a3
	addiw a3, a2, 16
	ld a4, 400(sp)
	bge a3, a4, label47
	mv a0, zero
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label47
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label47
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label47
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label47
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label47
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label47
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label47
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label47
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label47
	j label1374
label47:
	slli a3, a0, 1
	srli a3, a3, 60
	add a0, a0, a3
	sraiw a0, a0, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label50
	slli a3, a0, 1
	srli a3, a3, 60
	add a0, a0, a3
	sraiw a0, a0, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label50
	slli a3, a0, 1
	srli a3, a3, 60
	add a0, a0, a3
	sraiw a0, a0, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label50
	slli a3, a0, 1
	srli a3, a3, 60
	add a0, a0, a3
	sraiw a0, a0, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label50
	slli a3, a0, 1
	srli a3, a3, 60
	add a0, a0, a3
	sraiw a0, a0, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label50
	slli a3, a0, 1
	srli a3, a3, 60
	add a0, a0, a3
	sraiw a0, a0, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label50
	slli a3, a0, 1
	srli a3, a3, 60
	add a0, a0, a3
	sraiw a0, a0, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label50
	slli a3, a0, 1
	srli a3, a3, 60
	add a0, a0, a3
	sraiw a0, a0, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label50
	slli a3, a0, 1
	srli a3, a3, 60
	add a0, a0, a3
	sraiw a0, a0, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label50
	slli a3, a0, 1
	srli a3, a3, 60
	add a0, a0, a3
	sraiw a0, a0, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label50
label1375:
	slli a3, a0, 1
	srli a3, a3, 60
	add a0, a0, a3
	sraiw a0, a0, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label50
	j label1375
label361:
	mv a1, a0
	j label24
label50:
	slli a2, a0, 1
	srli a2, a2, 60
	add a2, a0, a2
	sraiw a2, a2, 4
	li a3, 16
	mulw a2, a2, a3
	subw a0, a0, a2
	ld a2, 80(sp)
	beq a0, a2, label419
	mv a0, a1
	ld a4, 400(sp)
	ble a4, zero, label361
	mv a2, zero
	li a3, 4096
	addw a3, zero, a3
	ld a4, 400(sp)
	bge a3, a4, label424
	mv a1, zero
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label424
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label424
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label424
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label424
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label424
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label424
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label424
	j label1376
label419:
	mv a0, a1
	ld a1, 40(sp)
	lw a2, 0(a1)
	mv a1, a0
	j label14
label424:
	mv a3, a1
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label58
	mv a3, zero
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label58
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label58
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label58
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label58
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label58
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label58
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label58
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label58
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label58
	j label1378
label58:
	addiw a2, a1, 256
	ld a4, 400(sp)
	bge a2, a4, label434
	mv a3, zero
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label434
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label434
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label434
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label434
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label434
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label434
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label434
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label434
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label434
	j label1379
label434:
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 400(sp)
	bge a1, a4, label439
	mv a3, zero
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 400(sp)
	bge a1, a4, label439
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 400(sp)
	bge a1, a4, label439
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 400(sp)
	bge a1, a4, label439
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 400(sp)
	bge a1, a4, label439
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 400(sp)
	bge a1, a4, label439
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 400(sp)
	bge a1, a4, label439
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 400(sp)
	bge a1, a4, label439
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 400(sp)
	bge a1, a4, label439
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 400(sp)
	bge a1, a4, label439
	j label1380
label439:
	mv a1, a3
	addiw a3, a2, 256
	ld a4, 400(sp)
	bge a3, a4, label67
	mv a1, zero
	mv a2, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label67
	mv a2, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label67
	mv a2, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label67
	mv a2, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label67
	mv a2, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label67
	mv a2, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label67
	mv a2, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label67
	mv a2, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label67
	mv a2, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label67
	j label1381
label1378:
	mv a3, zero
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label58
	j label1378
label1381:
	mv a1, zero
	mv a2, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label67
	j label1381
label1369:
	mv a3, zero
	mv a0, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label383
	j label1369
label67:
	addiw a3, a2, 16
	ld a4, 400(sp)
	bge a3, a4, label70
	mv a1, zero
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label70
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label70
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label70
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label70
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label70
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label70
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label70
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label70
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label70
	j label1382
label70:
	addiw a3, a2, 16
	ld a4, 400(sp)
	bge a3, a4, label73
	mv a1, zero
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label73
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label73
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label73
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label73
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label73
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label73
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label73
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label73
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label73
	j label1383
label73:
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label24
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label24
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label24
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label24
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label24
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label24
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label24
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label24
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label24
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label24
label1384:
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label24
	j label1384
label1382:
	mv a1, zero
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label70
	j label1382
label1383:
	mv a1, zero
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label73
	j label1383
label1371:
	mv a2, zero
	mv a0, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label38
	j label1371
label1374:
	mv a0, zero
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label47
	j label1374
label1379:
	mv a3, zero
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label434
	j label1379
label1380:
	mv a3, zero
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 400(sp)
	bge a1, a4, label439
	j label1380
label506:
	mv a3, a2
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label106
	mv a3, zero
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label106
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label106
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label106
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label106
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label106
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label106
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label106
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label106
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label106
label1395:
	mv a3, zero
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label106
	j label1395
label106:
	addiw a5, a2, 256
	ld a4, 400(sp)
	bge a5, a4, label109
	mv a3, zero
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label109
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label109
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label109
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label109
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label109
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label109
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label109
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label109
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label109
label1396:
	mv a3, zero
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label109
	j label1396
label109:
	addiw a5, a2, 16
	ld a4, 400(sp)
	bge a5, a4, label112
	mv a3, zero
	mv a2, a5
	addiw a5, a5, 16
	ld a4, 400(sp)
	bge a5, a4, label112
	mv a2, a5
	addiw a5, a5, 16
	ld a4, 400(sp)
	bge a5, a4, label112
	mv a2, a5
	addiw a5, a5, 16
	ld a4, 400(sp)
	bge a5, a4, label112
	mv a2, a5
	addiw a5, a5, 16
	ld a4, 400(sp)
	bge a5, a4, label112
	mv a2, a5
	addiw a5, a5, 16
	ld a4, 400(sp)
	bge a5, a4, label112
	mv a2, a5
	addiw a5, a5, 16
	ld a4, 400(sp)
	bge a5, a4, label112
	mv a2, a5
	addiw a5, a5, 16
	ld a4, 400(sp)
	bge a5, a4, label112
	mv a2, a5
	addiw a5, a5, 16
	ld a4, 400(sp)
	bge a5, a4, label112
	mv a2, a5
	addiw a5, a5, 16
	ld a4, 400(sp)
	bge a5, a4, label112
	j label1397
label112:
	addiw a5, a2, 256
	ld a4, 400(sp)
	bge a5, a4, label526
	mv a3, zero
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label526
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label526
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label526
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label526
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label526
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label526
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label526
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label526
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label526
	j label1398
label526:
	mv a5, a3
	addiw a3, a2, 16
	ld a4, 400(sp)
	bge a3, a4, label531
	mv a5, zero
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label531
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label531
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label531
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label531
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label531
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label531
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label531
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label531
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label531
	j label1399
label531:
	mv a3, a2
	addiw a2, a2, 16
	ld a4, 400(sp)
	bge a2, a4, label536
	mv a5, zero
	mv a3, a2
	addiw a2, a2, 16
	ld a4, 400(sp)
	bge a2, a4, label536
	mv a3, a2
	addiw a2, a2, 16
	ld a4, 400(sp)
	bge a2, a4, label536
	mv a3, a2
	addiw a2, a2, 16
	ld a4, 400(sp)
	bge a2, a4, label536
	mv a3, a2
	addiw a2, a2, 16
	ld a4, 400(sp)
	bge a2, a4, label536
	mv a3, a2
	addiw a2, a2, 16
	ld a4, 400(sp)
	bge a2, a4, label536
	mv a3, a2
	addiw a2, a2, 16
	ld a4, 400(sp)
	bge a2, a4, label536
	mv a3, a2
	addiw a2, a2, 16
	ld a4, 400(sp)
	bge a2, a4, label536
	mv a3, a2
	addiw a2, a2, 16
	ld a4, 400(sp)
	bge a2, a4, label536
	mv a3, a2
	addiw a2, a2, 16
	ld a4, 400(sp)
	bge a2, a4, label536
	j label1400
label536:
	mv a2, a5
	slli a4, a5, 1
	srli a4, a4, 60
	add a2, a5, a4
	sraiw a2, a2, 4
	addiw a3, a3, 1
	ld a4, 400(sp)
	bge a3, a4, label12
	slli a4, a2, 1
	srli a4, a4, 60
	add a2, a2, a4
	sraiw a2, a2, 4
	addiw a3, a3, 1
	ld a4, 400(sp)
	bge a3, a4, label12
	slli a4, a2, 1
	srli a4, a4, 60
	add a2, a2, a4
	sraiw a2, a2, 4
	addiw a3, a3, 1
	ld a4, 400(sp)
	bge a3, a4, label12
	slli a4, a2, 1
	srli a4, a4, 60
	add a2, a2, a4
	sraiw a2, a2, 4
	addiw a3, a3, 1
	ld a4, 400(sp)
	bge a3, a4, label12
	slli a4, a2, 1
	srli a4, a4, 60
	add a2, a2, a4
	sraiw a2, a2, 4
	addiw a3, a3, 1
	ld a4, 400(sp)
	bge a3, a4, label12
	slli a4, a2, 1
	srli a4, a4, 60
	add a2, a2, a4
	sraiw a2, a2, 4
	addiw a3, a3, 1
	ld a4, 400(sp)
	bge a3, a4, label12
	slli a4, a2, 1
	srli a4, a4, 60
	add a2, a2, a4
	sraiw a2, a2, 4
	addiw a3, a3, 1
	ld a4, 400(sp)
	bge a3, a4, label12
	slli a4, a2, 1
	srli a4, a4, 60
	add a2, a2, a4
	sraiw a2, a2, 4
	addiw a3, a3, 1
	ld a4, 400(sp)
	bge a3, a4, label12
	slli a4, a2, 1
	srli a4, a4, 60
	add a2, a2, a4
	sraiw a2, a2, 4
	addiw a3, a3, 1
	ld a4, 400(sp)
	bge a3, a4, label12
	slli a4, a2, 1
	srli a4, a4, 60
	add a2, a2, a4
	sraiw a2, a2, 4
	addiw a3, a3, 1
	ld a4, 400(sp)
	bge a3, a4, label12
label1401:
	slli a4, a2, 1
	srli a4, a4, 60
	add a2, a2, a4
	sraiw a2, a2, 4
	addiw a3, a3, 1
	ld a4, 400(sp)
	bge a3, a4, label12
	j label1401
label1400:
	mv a5, zero
	mv a3, a2
	addiw a2, a2, 16
	ld a4, 400(sp)
	bge a2, a4, label536
	j label1400
label1398:
	mv a3, zero
	mv a2, a5
	addiw a5, a5, 256
	ld a4, 400(sp)
	bge a5, a4, label526
	j label1398
label1399:
	mv a5, zero
	mv a2, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label531
	j label1399
label1397:
	mv a3, zero
	mv a2, a5
	addiw a5, a5, 16
	ld a4, 400(sp)
	bge a5, a4, label112
	j label1397
label1385:
	mv a1, zero
	mv a2, a3
	li a3, 4096
	addw a3, a2, a3
	ld a4, 400(sp)
	bge a3, a4, label465
	j label1385
label465:
	mv a3, a1
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label470
	mv a3, zero
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label470
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label470
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label470
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label470
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label470
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label470
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label470
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label470
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label470
	j label1386
label470:
	mv a2, a3
	addiw a3, a1, 256
	ld a4, 400(sp)
	bge a3, a4, label85
	mv a2, zero
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label85
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label85
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label85
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label85
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label85
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label85
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label85
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label85
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label85
label1387:
	mv a2, zero
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label85
	j label1387
label85:
	addiw a3, a1, 16
	ld a4, 400(sp)
	bge a3, a4, label88
	mv a2, zero
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label88
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label88
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label88
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label88
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label88
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label88
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label88
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label88
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label88
	j label1388
label88:
	addiw a3, a1, 256
	ld a4, 400(sp)
	bge a3, a4, label91
	mv a2, zero
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label91
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label91
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label91
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label91
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label91
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label91
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label91
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label91
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label91
	j label1389
label91:
	addiw a3, a1, 16
	ld a4, 400(sp)
	bge a3, a4, label490
	mv a2, zero
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label490
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label490
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label490
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label490
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label490
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label490
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label490
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label490
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label490
	j label1390
label490:
	mv a3, a2
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 400(sp)
	bge a1, a4, label495
	mv a3, zero
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 400(sp)
	bge a1, a4, label495
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 400(sp)
	bge a1, a4, label495
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 400(sp)
	bge a1, a4, label495
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 400(sp)
	bge a1, a4, label495
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 400(sp)
	bge a1, a4, label495
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 400(sp)
	bge a1, a4, label495
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 400(sp)
	bge a1, a4, label495
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 400(sp)
	bge a1, a4, label495
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 400(sp)
	bge a1, a4, label495
	j label1391
label495:
	mv a1, a3
	slli a3, a3, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label18
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label18
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label18
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label18
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label18
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label18
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label18
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label18
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label18
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label18
label1392:
	slli a3, a1, 1
	srli a3, a3, 60
	add a1, a1, a3
	sraiw a1, a1, 4
	addiw a2, a2, 1
	ld a4, 400(sp)
	bge a2, a4, label18
	j label1392
label1389:
	mv a2, zero
	mv a1, a3
	addiw a3, a3, 256
	ld a4, 400(sp)
	bge a3, a4, label91
	j label1389
label1390:
	mv a2, zero
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label490
	j label1390
label1391:
	mv a3, zero
	mv a2, a1
	addiw a1, a1, 16
	ld a4, 400(sp)
	bge a1, a4, label495
	j label1391
label1388:
	mv a2, zero
	mv a1, a3
	addiw a3, a3, 16
	ld a4, 400(sp)
	bge a3, a4, label88
	j label1388
label1386:
	mv a3, zero
	mv a1, a2
	addiw a2, a2, 256
	ld a4, 400(sp)
	bge a2, a4, label470
	j label1386
label20:
	ld a1, 40(sp)
	lw a2, 0(a1)
	mv a1, a0
	j label14
label1359:
	mv a0, zero
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 400(sp)
	bge s10, a4, label582
	j label1402
label577:
	mv s10, a0
	j label156
label1402:
	mv a0, zero
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 400(sp)
	bge s10, a4, label582
	j label1403
label156:
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
	ble a4, zero, label625
	mv s11, zero
	li a4, 4096
	addw s9, zero, a4
	ld a4, 400(sp)
	bge s9, a4, label640
	mv a0, zero
	mv s11, s9
	li a4, 4096
	addw s9, s9, a4
	ld a4, 400(sp)
	bge s9, a4, label640
	mv s11, s9
	li a4, 4096
	addw s9, s9, a4
	ld a4, 400(sp)
	bge s9, a4, label640
	mv s11, s9
	li a4, 4096
	addw s9, s9, a4
	ld a4, 400(sp)
	bge s9, a4, label640
	mv s11, s9
	li a4, 4096
	addw s9, s9, a4
	ld a4, 400(sp)
	bge s9, a4, label640
	mv s11, s9
	li a4, 4096
	addw s9, s9, a4
	ld a4, 400(sp)
	bge s9, a4, label640
	mv s11, s9
	li a4, 4096
	addw s9, s9, a4
	ld a4, 400(sp)
	bge s9, a4, label640
	mv s11, s9
	li a4, 4096
	addw s9, s9, a4
	ld a4, 400(sp)
	bge s9, a4, label640
	mv s11, s9
	li a4, 4096
	addw s9, s9, a4
	ld a4, 400(sp)
	bge s9, a4, label640
	mv s11, s9
	li a4, 4096
	addw s9, s9, a4
	ld a4, 400(sp)
	bge s9, a4, label640
	j label1413
label625:
	mv s9, a0
label158:
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
	bge a1, a3, label4
	slliw a0, a1, 2
	ld a4, 480(sp)
	add s9, a4, a0
	lw a0, 0(s9)
	ld a4, 400(sp)
	ble a4, zero, label577
	mv s11, zero
	li a4, 4096
	addw s10, zero, a4
	ld a4, 400(sp)
	bge s10, a4, label582
	mv a0, zero
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 400(sp)
	bge s10, a4, label582
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 400(sp)
	bge s10, a4, label582
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 400(sp)
	bge s10, a4, label582
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 400(sp)
	bge s10, a4, label582
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 400(sp)
	bge s10, a4, label582
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 400(sp)
	bge s10, a4, label582
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 400(sp)
	bge s10, a4, label582
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 400(sp)
	bge s10, a4, label582
	j label1402
label1413:
	mv a0, zero
	mv s11, s9
	li a4, 4096
	addw s9, s9, a4
	ld a4, 400(sp)
	bge s9, a4, label640
	j label1413
label640:
	mv s9, a0
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label166
	mv s9, zero
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label166
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label166
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label166
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label166
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label166
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label166
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label166
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label166
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label166
	j label1414
label582:
	mv s10, a0
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label138
	mv s10, zero
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label138
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label138
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label138
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label138
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label138
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label138
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label138
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label138
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label138
label1404:
	mv s10, zero
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label138
	j label1404
label1403:
	mv a0, zero
	mv s11, s10
	li a4, 4096
	addw s10, s10, a4
	ld a4, 400(sp)
	bge s10, a4, label582
	j label1403
label166:
	addiw s11, a0, 256
	ld a4, 400(sp)
	bge s11, a4, label169
	mv s9, zero
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label169
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label169
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label169
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label169
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label169
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label169
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label169
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label169
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label169
label1415:
	mv s9, zero
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label169
	j label1415
label169:
	addiw s11, a0, 16
	ld a4, 400(sp)
	bge s11, a4, label172
	mv s9, zero
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label172
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label172
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label172
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label172
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label172
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label172
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label172
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label172
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label172
	j label1416
label172:
	addiw s11, a0, 256
	ld a4, 400(sp)
	bge s11, a4, label175
	mv s9, zero
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label175
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label175
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label175
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label175
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label175
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label175
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label175
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label175
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label175
	j label1417
label1416:
	mv s9, zero
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label172
	j label1416
label1417:
	mv s9, zero
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label175
	j label1417
label175:
	addiw s11, a0, 16
	ld a4, 400(sp)
	bge s11, a4, label178
	mv s9, zero
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label178
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label178
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label178
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label178
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label178
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label178
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label178
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label178
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label178
	j label1418
label178:
	addiw s11, a0, 16
	ld a4, 400(sp)
	bge s11, a4, label670
	mv s9, zero
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label670
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label670
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label670
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label670
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label670
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label670
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label670
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label670
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label670
	j label1419
label670:
	mv a4, s9
	slli s9, s9, 1
	srli s9, s9, 60
	add a4, a4, s9
	sraiw s9, a4, 4
	addiw a0, a0, 1
	ld a4, 400(sp)
	bge a0, a4, label158
	mv a4, s9
	slli s9, s9, 1
	srli s9, s9, 60
	add a4, a4, s9
	sraiw s9, a4, 4
	addiw a0, a0, 1
	ld a4, 400(sp)
	bge a0, a4, label158
	mv a4, s9
	slli s9, s9, 1
	srli s9, s9, 60
	add a4, a4, s9
	sraiw s9, a4, 4
	addiw a0, a0, 1
	ld a4, 400(sp)
	bge a0, a4, label158
	mv a4, s9
	slli s9, s9, 1
	srli s9, s9, 60
	add a4, a4, s9
	sraiw s9, a4, 4
	addiw a0, a0, 1
	ld a4, 400(sp)
	bge a0, a4, label158
	mv a4, s9
	slli s9, s9, 1
	srli s9, s9, 60
	add a4, a4, s9
	sraiw s9, a4, 4
	addiw a0, a0, 1
	ld a4, 400(sp)
	bge a0, a4, label158
	mv a4, s9
	slli s9, s9, 1
	srli s9, s9, 60
	add a4, a4, s9
	sraiw s9, a4, 4
	addiw a0, a0, 1
	ld a4, 400(sp)
	bge a0, a4, label158
	mv a4, s9
	slli s9, s9, 1
	srli s9, s9, 60
	add a4, a4, s9
	sraiw s9, a4, 4
	addiw a0, a0, 1
	ld a4, 400(sp)
	bge a0, a4, label158
	mv a4, s9
	slli s9, s9, 1
	srli s9, s9, 60
	add a4, a4, s9
	sraiw s9, a4, 4
	addiw a0, a0, 1
	ld a4, 400(sp)
	bge a0, a4, label158
	mv a4, s9
	slli s9, s9, 1
	srli s9, s9, 60
	add a4, a4, s9
	sraiw s9, a4, 4
	addiw a0, a0, 1
	ld a4, 400(sp)
	bge a0, a4, label158
	mv a4, s9
	slli s9, s9, 1
	srli s9, s9, 60
	add a4, a4, s9
	sraiw s9, a4, 4
	addiw a0, a0, 1
	ld a4, 400(sp)
	bge a0, a4, label158
label1420:
	mv a4, s9
	slli s9, s9, 1
	srli s9, s9, 60
	add a4, a4, s9
	sraiw s9, a4, 4
	addiw a0, a0, 1
	ld a4, 400(sp)
	bge a0, a4, label158
	j label1420
label1419:
	mv s9, zero
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label670
	j label1419
label1418:
	mv s9, zero
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label178
	j label1418
label1414:
	mv s9, zero
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label166
	j label1414
label138:
	addiw s11, a0, 256
	ld a4, 400(sp)
	bge s11, a4, label141
	mv s10, zero
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label141
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label141
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label141
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label141
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label141
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label141
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label141
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label141
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label141
label1405:
	mv s10, zero
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label141
	j label1405
label141:
	addiw s11, a0, 16
	ld a4, 400(sp)
	bge s11, a4, label144
	mv s10, zero
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label144
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label144
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label144
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label144
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label144
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label144
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label144
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label144
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label144
	j label1406
label144:
	addiw s11, a0, 256
	ld a4, 400(sp)
	bge s11, a4, label147
	mv s10, zero
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label147
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label147
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label147
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label147
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label147
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label147
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label147
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label147
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label147
	j label1407
label147:
	addiw s11, a0, 16
	ld a4, 400(sp)
	bge s11, a4, label150
	mv s10, zero
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label150
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label150
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label150
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label150
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label150
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label150
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label150
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label150
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label150
	j label1408
label150:
	addiw s11, a0, 16
	ld a4, 400(sp)
	bge s11, a4, label612
	mv s10, zero
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label612
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label612
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label612
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label612
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label612
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label612
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label612
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label612
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label612
	j label1409
label612:
	mv a4, s10
	slli s10, s10, 1
	srli s10, s10, 60
	add a4, a4, s10
	sraiw s10, a4, 4
	addiw a0, a0, 1
	ld a4, 400(sp)
	bge a0, a4, label156
	mv a4, s10
	slli s10, s10, 1
	srli s10, s10, 60
	add a4, a4, s10
	sraiw s10, a4, 4
	addiw a0, a0, 1
	ld a4, 400(sp)
	bge a0, a4, label156
	mv a4, s10
	slli s10, s10, 1
	srli s10, s10, 60
	add a4, a4, s10
	sraiw s10, a4, 4
	addiw a0, a0, 1
	ld a4, 400(sp)
	bge a0, a4, label156
	mv a4, s10
	slli s10, s10, 1
	srli s10, s10, 60
	add a4, a4, s10
	sraiw s10, a4, 4
	addiw a0, a0, 1
	ld a4, 400(sp)
	bge a0, a4, label156
	mv a4, s10
	slli s10, s10, 1
	srli s10, s10, 60
	add a4, a4, s10
	sraiw s10, a4, 4
	addiw a0, a0, 1
	ld a4, 400(sp)
	bge a0, a4, label156
	mv a4, s10
	slli s10, s10, 1
	srli s10, s10, 60
	add a4, a4, s10
	sraiw s10, a4, 4
	addiw a0, a0, 1
	ld a4, 400(sp)
	bge a0, a4, label156
	mv a4, s10
	slli s10, s10, 1
	srli s10, s10, 60
	add a4, a4, s10
	sraiw s10, a4, 4
	addiw a0, a0, 1
	ld a4, 400(sp)
	bge a0, a4, label156
	mv a4, s10
	slli s10, s10, 1
	srli s10, s10, 60
	add a4, a4, s10
	sraiw s10, a4, 4
	addiw a0, a0, 1
	ld a4, 400(sp)
	bge a0, a4, label156
	mv a4, s10
	slli s10, s10, 1
	srli s10, s10, 60
	add a4, a4, s10
	sraiw s10, a4, 4
	addiw a0, a0, 1
	ld a4, 400(sp)
	bge a0, a4, label156
	mv a4, s10
	slli s10, s10, 1
	srli s10, s10, 60
	add a4, a4, s10
	sraiw s10, a4, 4
	addiw a0, a0, 1
	ld a4, 400(sp)
	bge a0, a4, label156
label1410:
	mv a4, s10
	slli s10, s10, 1
	srli s10, s10, 60
	add a4, a4, s10
	sraiw s10, a4, 4
	addiw a0, a0, 1
	ld a4, 400(sp)
	bge a0, a4, label156
	j label1410
label1409:
	mv s10, zero
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label612
	j label1409
label1408:
	mv s10, zero
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label150
	j label1408
label1407:
	mv s10, zero
	mv a0, s11
	addiw s11, s11, 256
	ld a4, 400(sp)
	bge s11, a4, label147
	j label1407
label1406:
	mv s10, zero
	mv a0, s11
	addiw s11, s11, 16
	ld a4, 400(sp)
	bge s11, a4, label144
	j label1406
label129:
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
	ble s0, zero, label129
	j label128
label10:
	ld a2, 80(sp)
	addiw a2, a2, 1
	sd a2, 80(sp)
	li a0, 16
	bge a2, a0, label124
	j label7
label128:
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
	j label129
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
pcrel1807:
	auipc a0, %pcrel_hi(a)
	addi s0, a0, %pcrel_lo(pcrel1807)
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
	ble s1, zero, label1542
	mv a1, zero
	mv a0, zero
	addiw a2, zero, 16
	bge a2, s1, label1530
	j label1529
label1542:
	mv s0, zero
	j label1524
label1530:
	addiw a2, a0, 16
	bge a2, s1, label1534
label1533:
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
	bge a2, s1, label1534
	j label1533
label1534:
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a1, a2
	addiw a0, a0, 1
	bge a0, s1, label1763
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a1, a2
	addiw a0, a0, 1
	bge a0, s1, label1763
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a1, a2
	addiw a0, a0, 1
	bge a0, s1, label1763
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a1, a2
	addiw a0, a0, 1
	bge a0, s1, label1763
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a1, a2
	addiw a0, a0, 1
	bge a0, s1, label1763
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a1, a2
	addiw a0, a0, 1
	bge a0, s1, label1763
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a1, a2
	addiw a0, a0, 1
	bge a0, s1, label1763
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a1, a2
	addiw a0, a0, 1
	bge a0, s1, label1763
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a1, a2
	addiw a0, a0, 1
	bge a0, s1, label1763
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a1, a2
	addiw a0, a0, 1
	bge a0, s1, label1763
	j label1802
label1763:
	mv s0, a1
	bge a1, zero, label1524
	j label1545
label1802:
	slli a2, a0, 2
	add a2, s2, a2
	lw a2, 0(a2)
	addiw a3, a0, 2
	remw a2, a2, a3
	mulw a2, a0, a2
	addw a1, a1, a2
	addiw a0, a0, 1
	bge a0, s1, label1763
	j label1802
label1529:
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
	bge a2, s1, label1530
	j label1529
label1524:
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
label1545:
	subw s0, zero, s0
	j label1524
