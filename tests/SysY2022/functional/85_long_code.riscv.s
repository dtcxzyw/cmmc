.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
count:
	.zero	4000
.text
QuickSort:
.p2align 2
	addi sp, sp, -32
	sd s0, 24(sp)
	mv s0, a0
	sd s1, 16(sp)
	mv s1, a2
	sd s2, 8(sp)
	sd ra, 0(sp)
label2:
	ble s1, a1, label21
	sh2add a3, a1, s0
	mv s2, a1
	lw a0, 0(a3)
	mv a3, s1
	addi a2, a0, -1
	bgt s1, a1, label9
label8:
	sh2add a4, s2, s0
	addiw a2, s2, -1
	sw a0, 0(a4)
	mv a0, s0
	jal QuickSort
	addiw a1, s2, 1
	j label2
.p2align 2
label9:
	blt s2, a3, label19
	ble a3, s2, label8
.p2align 2
label14:
	sh2add a4, s2, s0
	lw a5, 0(a4)
	bgt a0, a5, label15
	bgt a3, s2, label17
	j label8
.p2align 2
label19:
	sh2add a4, a3, s0
	lw a5, 0(a4)
	blt a2, a5, label20
	blt s2, a3, label18
	bgt a3, s2, label14
	j label8
label21:
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s1, 16(sp)
	ld s0, 24(sp)
	addi sp, sp, 32
	ret
.p2align 2
label17:
	sh2add a5, s2, s0
	sh2add t0, a3, s0
	lw a4, 0(a5)
	addiw a3, a3, -1
	sw a4, 0(t0)
	bgt a3, s2, label9
	j label8
.p2align 2
label15:
	addiw s2, s2, 1
	bgt a3, s2, label14
	j label8
.p2align 2
label20:
	addiw a3, a3, -1
	blt s2, a3, label19
	bgt a3, s2, label14
	j label8
.p2align 2
label18:
	sh2add a5, a3, s0
	sh2add t0, s2, s0
	lw a4, 0(a5)
	addiw s2, s2, 1
	sw a4, 0(t0)
	bgt a3, s2, label14
	j label8
.globl main
main:
.p2align 2
	addi sp, sp, -424
	li a0, 7
	li a1, 23
	li a2, 89
	li a3, 26
	li a5, 254
	li t0, 27
	li t1, 5
	li t2, 83
	li t3, 273
	li t4, 574
	li t5, 905
	li t6, 354
	li a6, 657
	li a7, 935
	addi a4, sp, 152
	sd s0, 320(sp)
	li s0, 264
	sd s5, 328(sp)
	li s5, 929
	sd s1, 336(sp)
	li s1, 639
	sd s6, 344(sp)
	li s6, 36
	sd s2, 352(sp)
	li s2, 459
	sd s3, 360(sp)
	li s3, 29
	sd s4, 368(sp)
	li s4, 68
	sd s11, 376(sp)
	li s11, 756
	sd s7, 384(sp)
	li s7, 39
	sd s8, 392(sp)
	li s8, 28
	sd s9, 400(sp)
	li s9, 1
	sd s10, 408(sp)
	li s10, 290
	sd ra, 416(sp)
	sd a4, 288(sp)
	li a4, 282
	sw a0, 24(sp)
	sw a1, 28(sp)
	sw a2, 32(sp)
	sw a3, 36(sp)
	sw a4, 40(sp)
	sw a5, 44(sp)
	sw t0, 48(sp)
	sw t1, 52(sp)
	sw t2, 56(sp)
	sw t3, 60(sp)
	sw t4, 64(sp)
	sw t5, 68(sp)
	sw t6, 72(sp)
	sw a6, 76(sp)
	sw a7, 80(sp)
	sw s0, 84(sp)
	sw s1, 88(sp)
	sw s2, 92(sp)
	sw s3, 96(sp)
	sw s4, 100(sp)
	sw s5, 104(sp)
	sd s11, 312(sp)
	sw s11, 108(sp)
	li s11, 452
	sd s11, 304(sp)
	sw s11, 112(sp)
	li s11, 279
	sd s11, 296(sp)
	sw s11, 116(sp)
	li s11, 58
	sd s11, 0(sp)
	sw s11, 120(sp)
	li s11, 87
	sd s11, 8(sp)
	sw s11, 124(sp)
	li s11, 96
	sd s11, 16(sp)
	sw s11, 128(sp)
	sw s6, 132(sp)
	sw s7, 136(sp)
	sw s8, 140(sp)
	sw s9, 144(sp)
	sw s10, 148(sp)
	sw a0, 152(sp)
pcrel1549:
	auipc a0, %pcrel_hi(count)
	sw a1, 156(sp)
	sw a2, 160(sp)
	addi a2, a0, %pcrel_lo(pcrel1549)
	sw a3, 164(sp)
	sw a4, 168(sp)
	sw a5, 172(sp)
	sw t0, 176(sp)
	sw t1, 180(sp)
	sw t2, 184(sp)
	sw t3, 188(sp)
	sw t4, 192(sp)
	sw t5, 196(sp)
	sw t6, 200(sp)
	sw a6, 204(sp)
	sw a7, 208(sp)
	sw s0, 212(sp)
	mv s0, zero
	sw s1, 216(sp)
	sw s2, 220(sp)
	sw s3, 224(sp)
	sw s4, 228(sp)
	sw s5, 232(sp)
	ld s11, 312(sp)
	sw s11, 236(sp)
	ld s11, 304(sp)
	sw s11, 240(sp)
	ld s11, 296(sp)
	sw s11, 244(sp)
	ld s11, 0(sp)
	sw s11, 248(sp)
	ld s11, 8(sp)
	sw s11, 252(sp)
	ld s11, 16(sp)
	sw s11, 256(sp)
	sw s6, 260(sp)
	sw s7, 264(sp)
	sw s8, 268(sp)
	sw s9, 272(sp)
	sw s10, 276(sp)
	sd a2, 280(sp)
.p2align 2
label129:
	ld a4, 288(sp)
	sh2add a1, s0, a4
	lw a0, 0(a1)
	jal putint
	li a1, 32
	addiw s0, s0, 1
	blt s0, a1, label129
	mv a0, zero
	li a3, 32
	mv a2, a3
	li a3, 31
	addi a1, a2, -1
	blt zero, a3, label270
.p2align 2
label1519:
	mv s0, zero
.p2align 2
label138:
	ld a4, 288(sp)
	sh2add a1, s0, a4
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label138
	lw a1, 216(sp)
	lw a2, 212(sp)
	addw a0, a1, a2
	srliw a3, a0, 31
	add a1, a0, a3
	sraiw a0, a1, 1
	jal putint
	mv a1, zero
.p2align 2
label141:
	ld a2, 280(sp)
	sh2add a0, a1, a2
	addiw a1, a1, 64
	sd zero, 0(a0)
	sd zero, 8(a0)
	sd zero, 16(a0)
	sd zero, 24(a0)
	sd zero, 32(a0)
	sd zero, 40(a0)
	sd zero, 48(a0)
	sd zero, 56(a0)
	sd zero, 64(a0)
	sd zero, 72(a0)
	sd zero, 80(a0)
	sd zero, 88(a0)
	sd zero, 96(a0)
	sd zero, 104(a0)
	sd zero, 112(a0)
	sd zero, 120(a0)
	sd zero, 128(a0)
	sd zero, 136(a0)
	sd zero, 144(a0)
	sd zero, 152(a0)
	sd zero, 160(a0)
	sd zero, 168(a0)
	sd zero, 176(a0)
	sd zero, 184(a0)
	sd zero, 192(a0)
	sd zero, 200(a0)
	sd zero, 208(a0)
	sd zero, 216(a0)
	sd zero, 224(a0)
	sd zero, 232(a0)
	sd zero, 240(a0)
	sd zero, 248(a0)
	li a0, 960
	blt a1, a0, label141
	sh2add a0, a1, a2
	sw zero, 0(a0)
	sw zero, 4(a0)
	sw zero, 8(a0)
	sw zero, 12(a0)
	sw zero, 16(a0)
	sw zero, 20(a0)
	sw zero, 24(a0)
	sw zero, 28(a0)
	sw zero, 32(a0)
	sw zero, 36(a0)
	sw zero, 40(a0)
	sw zero, 44(a0)
	sw zero, 48(a0)
	sw zero, 52(a0)
	sw zero, 56(a0)
	sw zero, 60(a0)
	sw zero, 64(a0)
	sw zero, 68(a0)
	sw zero, 72(a0)
	sw zero, 76(a0)
	sw zero, 80(a0)
	sw zero, 84(a0)
	sw zero, 88(a0)
	sw zero, 92(a0)
	sw zero, 96(a0)
	sw zero, 100(a0)
	sw zero, 104(a0)
	sw zero, 108(a0)
	sw zero, 112(a0)
	sw zero, 116(a0)
	sw zero, 120(a0)
	sw zero, 124(a0)
	sw zero, 128(a0)
	sw zero, 132(a0)
	sw zero, 136(a0)
	sw zero, 140(a0)
	sw zero, 144(a0)
	sw zero, 148(a0)
	sw zero, 152(a0)
	sw zero, 156(a0)
	lw a0, 152(sp)
	sh2add a1, a0, a2
	lw a4, 0(a1)
	addiw a3, a4, 1
	slt t1, zero, a3
	sw a3, 0(a1)
	lw a5, 156(sp)
	max a1, a3, zero
	sh2add a2, a5, a2
	lw t0, 0(a2)
	addiw a4, t0, 1
	subw t0, zero, t1
	and a3, a0, t0
	mv a0, a5
	blt a1, a4, label1432
	mv a0, a3
label1432:
	max a3, a1, a4
	sw a4, 0(a2)
	lw a1, 160(sp)
	ld a2, 280(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1434
	mv a1, a0
label1434:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a0, 164(sp)
	ld a2, 280(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1436
	mv a0, a1
label1436:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a1, 168(sp)
	ld a2, 280(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1438
	mv a1, a0
label1438:
	max a0, a3, a2
	sw a2, 0(a4)
	lw a3, 172(sp)
	ld a2, 280(sp)
	sh2add a4, a3, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a0, a2, label1440
	mv a3, a1
label1440:
	max a1, a0, a2
	sw a2, 0(a4)
	lw a0, 176(sp)
	ld a2, 280(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a1, a2, label1442
	mv a0, a3
label1442:
	max a3, a1, a2
	sw a2, 0(a4)
	lw a1, 180(sp)
	ld a2, 280(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1444
	mv a1, a0
label1444:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a0, 184(sp)
	ld a2, 280(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1446
	mv a0, a1
label1446:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a1, 188(sp)
	ld a2, 280(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1448
	mv a1, a0
label1448:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a0, 192(sp)
	ld a2, 280(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1450
	mv a0, a1
label1450:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a1, 196(sp)
	ld a2, 280(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1452
	mv a1, a0
label1452:
	max a0, a3, a2
	sw a2, 0(a4)
	lw a3, 200(sp)
	ld a2, 280(sp)
	sh2add a4, a3, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a0, a2, label1454
	mv a3, a1
label1454:
	max a1, a0, a2
	sw a2, 0(a4)
	lw a0, 204(sp)
	ld a2, 280(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a1, a2, label1456
	mv a0, a3
label1456:
	max a1, a1, a2
	sw a2, 0(a4)
	lw a3, 208(sp)
	ld a2, 280(sp)
	sh2add a4, a3, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a1, a2, label1458
	mv a3, a0
label1458:
	max a0, a1, a2
	sw a2, 0(a4)
	lw a1, 212(sp)
	ld a2, 280(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a0, a2, label1460
	mv a1, a3
label1460:
	max a3, a0, a2
	sw a2, 0(a4)
	lw a0, 216(sp)
	ld a2, 280(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1462
	mv a0, a1
label1462:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a1, 220(sp)
	ld a2, 280(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1464
	mv a1, a0
label1464:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a0, 224(sp)
	ld a2, 280(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1466
	mv a0, a1
label1466:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a1, 228(sp)
	ld a2, 280(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1468
	mv a1, a0
label1468:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a0, 232(sp)
	ld a2, 280(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1470
	mv a0, a1
label1470:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a1, 236(sp)
	ld a2, 280(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1472
	mv a1, a0
label1472:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a0, 240(sp)
	ld a2, 280(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1474
	mv a0, a1
label1474:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a1, 244(sp)
	ld a2, 280(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1476
	mv a1, a0
label1476:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a0, 248(sp)
	ld a2, 280(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1478
	mv a0, a1
label1478:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a1, 252(sp)
	ld a2, 280(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1480
	mv a1, a0
label1480:
	max a0, a3, a2
	sw a2, 0(a4)
	lw a3, 256(sp)
	ld a2, 280(sp)
	sh2add a4, a3, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a0, a2, label1482
	mv a3, a1
label1482:
	max a1, a0, a2
	sw a2, 0(a4)
	lw a0, 260(sp)
	ld a2, 280(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a1, a2, label1484
	mv a0, a3
label1484:
	max a3, a1, a2
	sw a2, 0(a4)
	lw a1, 264(sp)
	ld a2, 280(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1486
	mv a1, a0
label1486:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a0, 268(sp)
	ld a2, 280(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1488
	mv a0, a1
label1488:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a1, 272(sp)
	ld a2, 280(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1490
	mv a1, a0
label1490:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a0, 276(sp)
	ld a2, 280(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1492
	mv a0, a1
label1492:
	sw a2, 0(a4)
	jal putint
	lw a2, 24(sp)
	sw a2, 152(sp)
	lw a1, 28(sp)
	sw a1, 156(sp)
	lw a0, 32(sp)
	sw a0, 160(sp)
	lw a1, 36(sp)
	sw a1, 164(sp)
	lw a0, 40(sp)
	sw a0, 168(sp)
	lw a1, 44(sp)
	sw a1, 172(sp)
	lw a0, 48(sp)
	sw a0, 176(sp)
	lw a2, 52(sp)
	sw a2, 180(sp)
	lw a1, 56(sp)
	sw a1, 184(sp)
	lw a0, 60(sp)
	sw a0, 188(sp)
	lw a1, 64(sp)
	sw a1, 192(sp)
	lw a0, 68(sp)
	sw a0, 196(sp)
	lw a2, 72(sp)
	sw a2, 200(sp)
	lw a1, 76(sp)
	sw a1, 204(sp)
	lw a0, 80(sp)
	sw a0, 208(sp)
	lw a2, 84(sp)
	sw a2, 212(sp)
	lw a1, 88(sp)
	sw a1, 216(sp)
	lw a0, 92(sp)
	sw a0, 220(sp)
	lw a1, 96(sp)
	sw a1, 224(sp)
	lw a0, 100(sp)
	sw a0, 228(sp)
	lw a1, 104(sp)
	sw a1, 232(sp)
	lw a0, 108(sp)
	sw a0, 236(sp)
	lw a1, 112(sp)
	sw a1, 240(sp)
	lw a0, 116(sp)
	sw a0, 244(sp)
	lw a1, 120(sp)
	sw a1, 248(sp)
	lw a0, 124(sp)
	sw a0, 252(sp)
	lw a1, 128(sp)
	sw a1, 256(sp)
	lw a0, 132(sp)
	sw a0, 260(sp)
	lw a1, 136(sp)
	sw a1, 264(sp)
	lw a0, 140(sp)
	sw a0, 268(sp)
	mv a0, zero
	lw a2, 144(sp)
	sw a2, 272(sp)
	lw a1, 148(sp)
	sw a1, 276(sp)
	li a3, 32
	mv a2, a3
	li a3, 31
	addi a1, a2, -1
	blt zero, a3, label769
.p2align 2
label768:
	mv s0, zero
	j label151
.p2align 2
label769:
	mv a2, zero
	bgt a1, zero, label148
	addiw a0, a0, 1
	li a3, 32
	subw a2, a3, a0
	li a3, 31
	addi a1, a2, -1
	blt a0, a3, label769
	j label768
.p2align 2
label148:
	ld a4, 288(sp)
	sh2add t0, a2, a4
	lw a3, 0(t0)
	lw a5, 4(t0)
	addiw t0, a2, 1
	bgt a3, a5, label149
	mv a2, t0
	bgt a1, t0, label148
	addiw a0, a0, 1
	li a3, 32
	subw a2, a3, a0
	li a3, 31
	addi a1, a2, -1
	blt a0, a3, label769
	j label768
.p2align 2
label151:
	ld a4, 288(sp)
	sh2add a1, s0, a4
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label151
	lw a0, 24(sp)
	sw a0, 152(sp)
	lw a1, 28(sp)
	sw a1, 156(sp)
	lw a0, 32(sp)
	sw a0, 160(sp)
	lw a1, 36(sp)
	sw a1, 164(sp)
	lw a0, 40(sp)
	sw a0, 168(sp)
	lw a1, 44(sp)
	sw a1, 172(sp)
	lw a2, 48(sp)
	sw a2, 176(sp)
	lw a0, 52(sp)
	sw a0, 180(sp)
	lw a1, 56(sp)
	sw a1, 184(sp)
	lw a0, 60(sp)
	sw a0, 188(sp)
	lw a1, 64(sp)
	sw a1, 192(sp)
	lw a0, 68(sp)
	sw a0, 196(sp)
	lw a1, 72(sp)
	sw a1, 200(sp)
	lw a0, 76(sp)
	sw a0, 204(sp)
	lw a1, 80(sp)
	sw a1, 208(sp)
	lw a0, 84(sp)
	sw a0, 212(sp)
	lw a1, 88(sp)
	sw a1, 216(sp)
	lw a0, 92(sp)
	sw a0, 220(sp)
	lw a1, 96(sp)
	sw a1, 224(sp)
	lw a0, 100(sp)
	sw a0, 228(sp)
	lw a1, 104(sp)
	sw a1, 232(sp)
	lw a0, 108(sp)
	sw a0, 236(sp)
	lw a1, 112(sp)
	sw a1, 240(sp)
	lw a0, 116(sp)
	sw a0, 244(sp)
	lw a1, 120(sp)
	sw a1, 248(sp)
	lw a0, 124(sp)
	sw a0, 252(sp)
	lw a1, 128(sp)
	sw a1, 256(sp)
	lw a0, 132(sp)
	sw a0, 260(sp)
	lw a1, 136(sp)
	sw a1, 264(sp)
	lw a0, 140(sp)
	sw a0, 268(sp)
	li a0, 1
	lw a1, 144(sp)
	sw a1, 272(sp)
	lw a2, 148(sp)
	sw a2, 276(sp)
	li a1, 32
	bge a0, a1, label892
.p2align 2
label156:
	ld a4, 288(sp)
	addiw a2, a0, -1
	sh2add a3, a0, a4
	lw a1, 0(a3)
	bge a2, zero, label160
	addiw a2, a2, 1
	addiw a0, a0, 1
	sh2add a3, a2, a4
	sw a1, 0(a3)
	li a1, 32
	blt a0, a1, label156
	j label892
.p2align 2
label160:
	ld a4, 288(sp)
	sh2add a5, a2, a4
	lw a3, 0(a5)
	blt a1, a3, label161
	addiw a2, a2, 1
	addiw a0, a0, 1
	sh2add a3, a2, a4
	sw a1, 0(a3)
	li a1, 32
	blt a0, a1, label156
	j label892
.p2align 2
label149:
	ld a4, 288(sp)
	sh2add a2, a2, a4
	sw a3, 4(a2)
	sw a5, 0(a2)
	mv a2, t0
	bgt a1, t0, label148
	addiw a0, a0, 1
	li a3, 32
	subw a2, a3, a0
	li a3, 31
	addi a1, a2, -1
	blt a0, a3, label769
	j label768
.p2align 2
label270:
	mv a2, zero
	bgt a1, zero, label135
	addiw a0, a0, 1
	li a3, 32
	subw a2, a3, a0
	li a3, 31
	addi a1, a2, -1
	blt a0, a3, label270
	j label1519
.p2align 2
label135:
	ld a4, 288(sp)
	sh2add t0, a2, a4
	lw a3, 0(t0)
	lw a5, 4(t0)
	addiw t0, a2, 1
	bgt a3, a5, label136
	mv a2, t0
	bgt a1, t0, label135
	addiw a0, a0, 1
	li a3, 32
	subw a2, a3, a0
	li a3, 31
	addi a1, a2, -1
	blt a0, a3, label270
	j label1519
.p2align 2
label136:
	ld a4, 288(sp)
	sh2add a2, a2, a4
	sw a3, 4(a2)
	sw a5, 0(a2)
	mv a2, t0
	bgt a1, t0, label135
	addiw a0, a0, 1
	li a3, 32
	subw a2, a3, a0
	li a3, 31
	addi a1, a2, -1
	blt a0, a3, label270
	j label1519
.p2align 2
label161:
	addiw a5, a2, 1
	ld a4, 288(sp)
	addiw a2, a2, -1
	sh2add t0, a5, a4
	sw a3, 0(t0)
	bge a2, zero, label160
	addiw a2, a2, 1
	addiw a0, a0, 1
	sh2add a3, a2, a4
	sw a1, 0(a3)
	li a1, 32
	blt a0, a1, label156
.p2align 2
label892:
	mv s0, zero
.p2align 2
label162:
	ld a4, 288(sp)
	sh2add a1, s0, a4
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label162
	lw a1, 24(sp)
	sw a1, 152(sp)
	lw a0, 28(sp)
	sw a0, 156(sp)
	lw a1, 32(sp)
	sw a1, 160(sp)
	lw a0, 36(sp)
	sw a0, 164(sp)
	lw a1, 40(sp)
	sw a1, 168(sp)
	lw a0, 44(sp)
	sw a0, 172(sp)
	lw a1, 48(sp)
	sw a1, 176(sp)
	lw a0, 52(sp)
	sw a0, 180(sp)
	lw a1, 56(sp)
	sw a1, 184(sp)
	lw a0, 60(sp)
	sw a0, 188(sp)
	lw a1, 64(sp)
	sw a1, 192(sp)
	lw a0, 68(sp)
	sw a0, 196(sp)
	lw a1, 72(sp)
	sw a1, 200(sp)
	lw a0, 76(sp)
	sw a0, 204(sp)
	lw a1, 80(sp)
	sw a1, 208(sp)
	lw a0, 84(sp)
	sw a0, 212(sp)
	lw a1, 88(sp)
	sw a1, 216(sp)
	lw a0, 92(sp)
	sw a0, 220(sp)
	lw a2, 96(sp)
	sw a2, 224(sp)
	lw a1, 100(sp)
	sw a1, 228(sp)
	lw a0, 104(sp)
	sw a0, 232(sp)
	lw a1, 108(sp)
	sw a1, 236(sp)
	lw a2, 112(sp)
	sw a2, 240(sp)
	li a2, 31
	lw a0, 116(sp)
	sw a0, 244(sp)
	lw a1, 120(sp)
	sw a1, 248(sp)
	lw a0, 124(sp)
	sw a0, 252(sp)
	lw a1, 128(sp)
	sw a1, 256(sp)
	lw a0, 132(sp)
	sw a0, 260(sp)
	lw a1, 136(sp)
	sw a1, 264(sp)
	lw a0, 140(sp)
	sw a0, 268(sp)
	lw a1, 144(sp)
	sw a1, 272(sp)
	mv a1, zero
	lw a0, 148(sp)
	sw a0, 276(sp)
	ld a4, 288(sp)
	mv a0, a4
	jal QuickSort
	mv s0, zero
.p2align 2
label165:
	ld a4, 288(sp)
	sh2add a1, s0, a4
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label165
	lw a0, 24(sp)
	sw a0, 152(sp)
	lw a1, 28(sp)
	sw a1, 156(sp)
	lw a0, 32(sp)
	sw a0, 160(sp)
	lw a1, 36(sp)
	sw a1, 164(sp)
	lw a0, 40(sp)
	sw a0, 168(sp)
	lw a1, 44(sp)
	sw a1, 172(sp)
	lw a0, 48(sp)
	sw a0, 176(sp)
	lw a2, 52(sp)
	sw a2, 180(sp)
	lw a1, 56(sp)
	sw a1, 184(sp)
	lw a0, 60(sp)
	sw a0, 188(sp)
	lw a1, 64(sp)
	sw a1, 192(sp)
	lw a0, 68(sp)
	sw a0, 196(sp)
	lw a1, 72(sp)
	sw a1, 200(sp)
	lw a2, 76(sp)
	sw a2, 204(sp)
	lw a0, 80(sp)
	sw a0, 208(sp)
	lw a1, 84(sp)
	sw a1, 212(sp)
	lw a2, 88(sp)
	sw a2, 216(sp)
	lw a0, 92(sp)
	sw a0, 220(sp)
	lw a2, 96(sp)
	sw a2, 224(sp)
	lw a1, 100(sp)
	sw a1, 228(sp)
	lw a0, 104(sp)
	sw a0, 232(sp)
	lw a1, 108(sp)
	sw a1, 236(sp)
	lw a0, 112(sp)
	sw a0, 240(sp)
	lw a1, 116(sp)
	sw a1, 244(sp)
	lw a0, 120(sp)
	sw a0, 248(sp)
	lw a1, 124(sp)
	sw a1, 252(sp)
	lw a0, 128(sp)
	sw a0, 256(sp)
	lw a1, 132(sp)
	sw a1, 260(sp)
	lw a2, 136(sp)
	sw a2, 264(sp)
	lw a0, 140(sp)
	sw a0, 268(sp)
	lw a1, 144(sp)
	sw a1, 272(sp)
	mv a1, zero
	lw a0, 148(sp)
	sw a0, 276(sp)
	mv a0, zero
	li a2, 32
	blt zero, a2, label187
.p2align 2
label1123:
	mv s0, zero
.p2align 2
label171:
	ld a4, 288(sp)
	sh2add a1, s0, a4
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label171
	lw a1, 24(sp)
	sw a1, 152(sp)
	lw a0, 28(sp)
	sw a0, 156(sp)
	lw a1, 32(sp)
	sw a1, 160(sp)
	lw a0, 36(sp)
	sw a0, 164(sp)
	lw a1, 40(sp)
	sw a1, 168(sp)
	lw a0, 44(sp)
	sw a0, 172(sp)
	lw a1, 48(sp)
	sw a1, 176(sp)
	lw a0, 52(sp)
	sw a0, 180(sp)
	lw a2, 56(sp)
	sw a2, 184(sp)
	lw a1, 60(sp)
	sw a1, 188(sp)
	lw a0, 64(sp)
	sw a0, 192(sp)
	lw a1, 68(sp)
	sw a1, 196(sp)
	lw a0, 72(sp)
	sw a0, 200(sp)
	lw a1, 76(sp)
	sw a1, 204(sp)
	lw a0, 80(sp)
	sw a0, 208(sp)
	lw a2, 84(sp)
	sw a2, 212(sp)
	lw a1, 88(sp)
	sw a1, 216(sp)
	lw a0, 92(sp)
	sw a0, 220(sp)
	lw a1, 96(sp)
	sw a1, 224(sp)
	lw a0, 100(sp)
	sw a0, 228(sp)
	lw a2, 104(sp)
	sw a2, 232(sp)
	lw a1, 108(sp)
	sw a1, 236(sp)
	lw a0, 112(sp)
	sw a0, 240(sp)
	lw a2, 116(sp)
	sw a2, 244(sp)
	lw a1, 120(sp)
	sw a1, 248(sp)
	lw a0, 124(sp)
	sw a0, 252(sp)
	lw a1, 128(sp)
	sw a1, 256(sp)
	lw a0, 132(sp)
	sw a0, 260(sp)
	lw a1, 136(sp)
	sw a1, 264(sp)
	lw a0, 140(sp)
	sw a0, 268(sp)
	lw a1, 144(sp)
	sw a1, 272(sp)
	mv a1, zero
	lw a0, 148(sp)
	sw a0, 276(sp)
	mv a2, zero
	mv a0, zero
	j label174
.p2align 2
label187:
	ld a4, 288(sp)
	sh2add a2, a0, a4
	lw a3, 0(a2)
	andi a2, a0, 3
	addw a1, a1, a3
	li a3, 3
	bne a2, a3, label188
	sh2add a2, a0, a4
	addiw a0, a0, 1
	sw a1, 0(a2)
	mv a1, zero
	li a2, 32
	blt a0, a2, label187
	j label1123
.p2align 2
label188:
	ld a4, 288(sp)
	sh2add a2, a0, a4
	addiw a0, a0, 1
	sw zero, 0(a2)
	li a2, 32
	blt a0, a2, label187
	j label1123
.p2align 2
label174:
	li a3, 32
	blt a0, a3, label178
.p2align 2
label1229:
	sw zero, 272(sp)
	mv s0, zero
	sw zero, 276(sp)
	j label184
.p2align 2
label178:
	li a3, 2
	blt a0, a3, label182
	beq a0, a3, label180
	ld a4, 288(sp)
	sh2add a3, a0, a4
	addiw a0, a0, 1
	lw a5, 0(a3)
	addw a4, a2, a5
	li a5, 1431655766
	subw a2, a4, a1
	mul a1, a2, a5
	srli t0, a1, 63
	srli a4, a1, 32
	lw a1, -8(a3)
	add a5, t0, a4
	sw a5, -8(a3)
	j label174
.p2align 2
label182:
	ld a4, 288(sp)
	sh2add a5, a0, a4
	addiw a0, a0, 1
	lw a3, 0(a5)
	addw a2, a2, a3
	li a3, 32
	blt a0, a3, label178
	j label1229
.p2align 2
label184:
	ld a4, 288(sp)
	sh2add a1, s0, a4
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label184
	mv a0, zero
	ld ra, 416(sp)
	ld s10, 408(sp)
	ld s9, 400(sp)
	ld s8, 392(sp)
	ld s7, 384(sp)
	ld s11, 376(sp)
	ld s4, 368(sp)
	ld s3, 360(sp)
	ld s2, 352(sp)
	ld s6, 344(sp)
	ld s1, 336(sp)
	ld s5, 328(sp)
	ld s0, 320(sp)
	addi sp, sp, 424
	ret
label180:
	lw a1, 152(sp)
	li a4, 1431655766
	mul a0, a2, a4
	srli a4, a0, 63
	srli a3, a0, 32
	add a0, a4, a3
	sw a0, 152(sp)
	li a0, 3
	j label174
