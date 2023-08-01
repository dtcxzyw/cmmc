.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
count:
	.zero	4000
.text
.p2align 2
QuickSort:
	addi sp, sp, -80
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s5, 16(sp)
	mv a0, a1
	sd s1, 24(sp)
	mv s1, a2
	sd s6, 32(sp)
	sd s2, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
label2:
	bgt s1, a0, label5
	j label4
label123:
	addiw a0, s2, 1
	j label2
label4:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s2, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	addi sp, sp, 80
	ret
label5:
	sh2add a3, a0, s0
	mv s2, a0
	lw a1, 0(a3)
	mv a3, s1
	addi a2, a1, -1
label6:
	ble a3, s2, label86
	blt s2, a3, label16
	j label11
.p2align 2
label13:
	sh2add a5, s2, s0
	lw a4, 0(a5)
	ble a1, a4, label101
	addiw s2, s2, 1
	bgt a3, s2, label13
	j label86
.p2align 2
label16:
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label17
	addiw a3, a3, -1
	blt s2, a3, label16
	bgt a3, s2, label13
	j label86
.p2align 2
label11:
	bgt a3, s2, label13
	j label86
label17:
	sh2add a5, s2, s0
	addiw s2, s2, 1
	sw a4, 0(a5)
	j label11
label86:
	sh2add a2, s2, s0
	addiw s3, s2, -1
	sw a1, 0(a2)
label20:
	bgt s3, a0, label22
	j label123
label39:
	addiw a0, s4, 1
	j label20
label22:
	sh2add a3, a0, s0
	mv s4, a0
	lw a1, 0(a3)
	mv a3, s3
	addi a2, a1, -1
label23:
	ble a3, s4, label131
.p2align 2
label26:
	blt s4, a3, label33
.p2align 2
label28:
	ble a3, s4, label139
.p2align 2
label30:
	sh2add a5, s4, s0
	lw a4, 0(a5)
	ble a1, a4, label146
	addiw s4, s4, 1
	bgt a3, s4, label30
	j label131
.p2align 2
label33:
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label157
	addiw a3, a3, -1
	blt s4, a3, label33
	bgt a3, s4, label30
label131:
	sh2add a2, s4, s0
	addiw s5, s4, -1
	sw a1, 0(a2)
label37:
	bgt s5, a0, label40
	j label39
label184:
	addiw a0, s6, 1
	j label37
label40:
	sh2add a3, a0, s0
	mv s6, a0
	lw a1, 0(a3)
	mv a3, s5
	addi a2, a1, -1
label41:
	ble a3, s6, label44
.p2align 2
label63:
	blt s6, a3, label70
.p2align 2
label65:
	ble a3, s6, label235
.p2align 2
label67:
	sh2add a5, s6, s0
	lw a4, 0(a5)
	ble a1, a4, label68
	addiw s6, s6, 1
	bgt a3, s6, label67
	j label44
.p2align 2
label70:
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label253
	addiw a3, a3, -1
	blt s6, a3, label70
	bgt a3, s6, label67
	j label44
label68:
	sh2add a5, a3, s0
	addiw a3, a3, -1
	sw a4, 0(a5)
	j label41
label44:
	sh2add a2, s6, s0
	addiw s7, s6, -1
	sw a1, 0(a2)
	mv a1, a0
label45:
	bgt s7, a1, label47
	j label184
.p2align 2
label51:
	blt s8, a3, label53
	bgt a3, s8, label58
	j label301
.p2align 2
label53:
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label54
	addiw a3, a3, -1
	blt s8, a3, label53
	ble a3, s8, label313
.p2align 2
label58:
	sh2add a5, s8, s0
	lw a4, 0(a5)
	ble a0, a4, label59
	addiw s8, s8, 1
	bgt a3, s8, label58
label61:
	sh2add a3, s8, s0
	addiw a2, s8, -1
	sw a0, 0(a3)
	mv a0, s0
	jal QuickSort
	addiw a1, s8, 1
	j label45
label47:
	sh2add a3, a1, s0
	mv s8, a1
	lw a0, 0(a3)
	mv a3, s7
	addi a2, a0, -1
label48:
	bgt a3, s8, label51
	j label61
label59:
	sh2add a5, a3, s0
	addiw a3, a3, -1
	sw a4, 0(a5)
	j label48
label54:
	sh2add a5, s8, s0
	addiw s8, s8, 1
	sw a4, 0(a5)
	bgt a3, s8, label58
	j label61
.p2align 2
label235:
	bgt a3, s6, label63
	j label44
.p2align 2
label139:
	bgt a3, s4, label26
	j label131
.p2align 2
label301:
	bgt a3, s8, label51
	j label61
.p2align 2
label313:
	bgt a3, s8, label51
	j label61
label253:
	sh2add a5, s6, s0
	addiw s6, s6, 1
	sw a4, 0(a5)
	j label65
label157:
	sh2add a5, s4, s0
	addiw s4, s4, 1
	sw a4, 0(a5)
	j label28
label101:
	sh2add a5, a3, s0
	addiw a3, a3, -1
	sw a4, 0(a5)
	j label6
label146:
	sh2add a5, a3, s0
	addiw a3, a3, -1
	sw a4, 0(a5)
	j label23
.p2align 2
.globl main
main:
	addi sp, sp, -368
	li a1, 7
	li a2, 23
	li a3, 89
	li a4, 26
	li a5, 282
	li t0, 254
	li t1, 27
	li t2, 5
	li t3, 83
	li t4, 273
	li t5, 574
	li t6, 905
	li a6, 354
	li a7, 657
	li a0, 1
	sd ra, 0(sp)
	sd s0, 8(sp)
	li s0, 935
	sd s5, 16(sp)
	li s5, 68
	sd s1, 24(sp)
	li s1, 264
	sd s6, 32(sp)
	li s6, 929
	sd s2, 40(sp)
	li s2, 639
	sd s3, 48(sp)
	li s3, 459
	sd s4, 56(sp)
	li s4, 29
	sd s11, 64(sp)
	li s11, 756
	sd s7, 72(sp)
	li s7, 36
	sd s8, 80(sp)
	li s8, 39
	sd s9, 88(sp)
	li s9, 28
	sd s10, 96(sp)
	li s10, 290
	sw a1, 240(sp)
	sw a2, 244(sp)
	sw a3, 248(sp)
	sw a4, 252(sp)
	sw a5, 256(sp)
	sw t0, 260(sp)
	sw t1, 264(sp)
	sw t2, 268(sp)
	sw t3, 272(sp)
	sw t4, 276(sp)
	sw t5, 280(sp)
	sw t6, 284(sp)
	sw a6, 288(sp)
	sw a7, 292(sp)
	sw s0, 296(sp)
	sw s1, 300(sp)
	sw s2, 304(sp)
	sw s3, 308(sp)
	sw s4, 312(sp)
	sw s5, 316(sp)
	sw s6, 320(sp)
	sw s11, 324(sp)
	li s11, 452
	sw s11, 328(sp)
	li s11, 279
	sw s11, 332(sp)
	li s11, 58
	sw s11, 336(sp)
	li s11, 87
	sw s11, 340(sp)
	li s11, 96
	sw s11, 344(sp)
	li s11, 756
	sw s7, 348(sp)
	sw s8, 352(sp)
	sw s9, 356(sp)
	sw a0, 360(sp)
	sw s10, 364(sp)
	sw a1, 112(sp)
	sw a2, 116(sp)
	sw a3, 120(sp)
	sw a4, 124(sp)
	sw a5, 128(sp)
	sw t0, 132(sp)
	sw t1, 136(sp)
	sw t2, 140(sp)
	sw t3, 144(sp)
	sw t4, 148(sp)
	sw t5, 152(sp)
	sw t6, 156(sp)
	sw a6, 160(sp)
	sw a7, 164(sp)
	sw s0, 168(sp)
	mv s0, zero
	sw s1, 172(sp)
	sw s2, 176(sp)
	sw s3, 180(sp)
	sw s4, 184(sp)
	sw s5, 188(sp)
	sw s6, 192(sp)
	sw s11, 196(sp)
	li s11, 452
	sw s11, 200(sp)
	li s11, 279
	sw s11, 204(sp)
	li s11, 58
	sw s11, 208(sp)
	li s11, 87
	sw s11, 212(sp)
	li s11, 96
	sw s11, 216(sp)
	sw s7, 220(sp)
	sw s8, 224(sp)
	sw s9, 228(sp)
	sw a0, 232(sp)
pcrel1776:
	auipc a0, %pcrel_hi(count)
	sw s10, 236(sp)
	addi a2, a0, %pcrel_lo(pcrel1776)
	sd a2, 104(sp)
.p2align 2
label344:
	addi a5, sp, 112
	sh2add a1, s0, a5
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label344
	mv a1, zero
	li a3, 32
	mv a2, a3
	li a3, 31
	addi a0, a2, -1
	blt zero, a3, label485
label484:
	mv s0, zero
	j label353
.p2align 2
label485:
	mv a2, zero
	ble a0, zero, label350
.p2align 2
label351:
	addi a5, sp, 112
	sh2add t0, a2, a5
	lw a3, 0(t0)
	lw a4, 4(t0)
	addiw t0, a2, 1
	bgt a3, a4, label352
	mv a2, t0
	bgt a0, t0, label351
	j label1722
.p2align 2
label352:
	addi a5, sp, 112
	sh2add a2, a2, a5
	sw a3, 4(a2)
	sw a4, 0(a2)
	mv a2, t0
	bgt a0, t0, label351
	addiw a1, a1, 1
	li a3, 32
	subw a2, a3, a1
	li a3, 31
	addi a0, a2, -1
	blt a1, a3, label485
	j label484
.p2align 2
label353:
	addi a5, sp, 112
	sh2add a1, s0, a5
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label353
	lw a1, 176(sp)
	lw a2, 172(sp)
	addw a0, a1, a2
	srliw a1, a0, 31
	add a2, a0, a1
	sraiw a0, a2, 1
	jal putint
	mv a1, zero
.p2align 2
label356:
	ld a2, 104(sp)
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
	blt a1, a0, label356
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
	lw a0, 112(sp)
	sh2add a3, a0, a2
	lw a4, 0(a3)
	addiw a1, a4, 1
	sw a1, 0(a3)
	lw a5, 116(sp)
	max a3, a1, zero
	sh2add a2, a5, a2
	lw t0, 0(a2)
	addiw a4, t0, 1
	bgt a1, zero, label1644
	mv a0, zero
label1644:
	mv a1, a5
	blt a3, a4, label1646
	mv a1, a0
label1646:
	max a3, a3, a4
	sw a4, 0(a2)
	lw a0, 120(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1648
	mv a0, a1
label1648:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a1, 124(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1650
	mv a1, a0
label1650:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a0, 128(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1652
	mv a0, a1
label1652:
	max a1, a3, a2
	sw a2, 0(a4)
	lw a3, 132(sp)
	ld a2, 104(sp)
	sh2add a4, a3, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a1, a2, label1654
	mv a3, a0
label1654:
	max a0, a1, a2
	sw a2, 0(a4)
	lw a1, 136(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a0, a2, label1656
	mv a1, a3
label1656:
	max a3, a0, a2
	sw a2, 0(a4)
	lw a0, 140(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1658
	mv a0, a1
label1658:
	max a1, a3, a2
	sw a2, 0(a4)
	lw a3, 144(sp)
	ld a2, 104(sp)
	sh2add a4, a3, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a1, a2, label1660
	mv a3, a0
label1660:
	max a0, a1, a2
	sw a2, 0(a4)
	lw a1, 148(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a0, a2, label1662
	mv a1, a3
label1662:
	max a3, a0, a2
	sw a2, 0(a4)
	lw a0, 152(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1664
	mv a0, a1
label1664:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a1, 156(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1666
	mv a1, a0
label1666:
	max a0, a3, a2
	sw a2, 0(a4)
	lw a3, 160(sp)
	ld a2, 104(sp)
	sh2add a4, a3, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a0, a2, label1668
	mv a3, a1
label1668:
	max a1, a0, a2
	sw a2, 0(a4)
	lw a0, 164(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a1, a2, label1670
	mv a0, a3
label1670:
	max a3, a1, a2
	sw a2, 0(a4)
	lw a1, 168(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1672
	mv a1, a0
label1672:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a0, 172(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1674
	mv a0, a1
label1674:
	max a1, a3, a2
	sw a2, 0(a4)
	lw a3, 176(sp)
	ld a2, 104(sp)
	sh2add a4, a3, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a1, a2, label1676
	mv a3, a0
label1676:
	max a0, a1, a2
	sw a2, 0(a4)
	lw a1, 180(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a0, a2, label1678
	mv a1, a3
label1678:
	max a3, a0, a2
	sw a2, 0(a4)
	lw a0, 184(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1680
	mv a0, a1
label1680:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a1, 188(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1682
	mv a1, a0
label1682:
	max a0, a3, a2
	sw a2, 0(a4)
	lw a3, 192(sp)
	ld a2, 104(sp)
	sh2add a4, a3, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a0, a2, label1684
	mv a3, a1
label1684:
	max a1, a0, a2
	sw a2, 0(a4)
	lw a0, 196(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a1, a2, label1686
	mv a0, a3
label1686:
	max a3, a1, a2
	sw a2, 0(a4)
	lw a1, 200(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1688
	mv a1, a0
label1688:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a0, 204(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1690
	mv a0, a1
label1690:
	max a1, a3, a2
	sw a2, 0(a4)
	lw a3, 208(sp)
	ld a2, 104(sp)
	sh2add a4, a3, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a1, a2, label1692
	mv a3, a0
label1692:
	max a0, a1, a2
	sw a2, 0(a4)
	lw a1, 212(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a0, a2, label1694
	mv a1, a3
label1694:
	max a3, a0, a2
	sw a2, 0(a4)
	lw a0, 216(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1696
	mv a0, a1
label1696:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a1, 220(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1698
	mv a1, a0
label1698:
	max a0, a3, a2
	sw a2, 0(a4)
	lw a3, 224(sp)
	ld a2, 104(sp)
	sh2add a4, a3, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a0, a2, label1700
	mv a3, a1
label1700:
	max a1, a0, a2
	sw a2, 0(a4)
	lw a0, 228(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a1, a2, label1702
	mv a0, a3
label1702:
	max a3, a1, a2
	sw a2, 0(a4)
	lw a1, 232(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1704
	mv a1, a0
label1704:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a0, 236(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1706
	mv a0, a1
label1706:
	sw a2, 0(a4)
	jal putint
	lw a1, 240(sp)
	sw a1, 112(sp)
	lw a2, 244(sp)
	sw a2, 116(sp)
	lw a0, 248(sp)
	sw a0, 120(sp)
	lw a1, 252(sp)
	sw a1, 124(sp)
	lw a0, 256(sp)
	sw a0, 128(sp)
	lw a1, 260(sp)
	sw a1, 132(sp)
	lw a0, 264(sp)
	sw a0, 136(sp)
	lw a1, 268(sp)
	sw a1, 140(sp)
	lw a2, 272(sp)
	sw a2, 144(sp)
	lw a0, 276(sp)
	sw a0, 148(sp)
	lw a1, 280(sp)
	sw a1, 152(sp)
	lw a0, 284(sp)
	sw a0, 156(sp)
	lw a1, 288(sp)
	sw a1, 160(sp)
	lw a2, 292(sp)
	sw a2, 164(sp)
	lw a0, 296(sp)
	sw a0, 168(sp)
	lw a1, 300(sp)
	sw a1, 172(sp)
	lw a0, 304(sp)
	sw a0, 176(sp)
	lw a1, 308(sp)
	sw a1, 180(sp)
	lw a0, 312(sp)
	sw a0, 184(sp)
	lw a1, 316(sp)
	sw a1, 188(sp)
	lw a2, 320(sp)
	sw a2, 192(sp)
	lw a0, 324(sp)
	sw a0, 196(sp)
	lw a1, 328(sp)
	sw a1, 200(sp)
	lw a0, 332(sp)
	sw a0, 204(sp)
	lw a1, 336(sp)
	sw a1, 208(sp)
	lw a0, 340(sp)
	sw a0, 212(sp)
	lw a1, 344(sp)
	sw a1, 216(sp)
	lw a0, 348(sp)
	sw a0, 220(sp)
	lw a1, 352(sp)
	sw a1, 224(sp)
	lw a0, 356(sp)
	sw a0, 228(sp)
	lw a1, 360(sp)
	sw a1, 232(sp)
	mv a1, zero
	lw a0, 364(sp)
	sw a0, 236(sp)
	li a3, 32
	mv a2, a3
	li a3, 31
	addi a0, a2, -1
	blt zero, a3, label983
label982:
	mv s0, zero
	j label366
.p2align 2
label983:
	mv a2, zero
	ble a0, zero, label986
.p2align 2
label363:
	addi a5, sp, 112
	sh2add t0, a2, a5
	lw a3, 0(t0)
	lw a4, 4(t0)
	addiw t0, a2, 1
	bgt a3, a4, label364
	mv a2, t0
	bgt a0, t0, label363
	j label1724
.p2align 2
label364:
	addi a5, sp, 112
	sh2add a2, a2, a5
	sw a3, 4(a2)
	sw a4, 0(a2)
	mv a2, t0
	bgt a0, t0, label363
	addiw a1, a1, 1
	li a3, 32
	subw a2, a3, a1
	li a3, 31
	addi a0, a2, -1
	blt a1, a3, label983
	j label982
.p2align 2
label366:
	addi a5, sp, 112
	sh2add a1, s0, a5
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label366
	lw a0, 240(sp)
	sw a0, 112(sp)
	lw a1, 244(sp)
	sw a1, 116(sp)
	lw a0, 248(sp)
	sw a0, 120(sp)
	lw a1, 252(sp)
	sw a1, 124(sp)
	lw a0, 256(sp)
	sw a0, 128(sp)
	lw a1, 260(sp)
	sw a1, 132(sp)
	lw a0, 264(sp)
	sw a0, 136(sp)
	lw a1, 268(sp)
	sw a1, 140(sp)
	lw a0, 272(sp)
	sw a0, 144(sp)
	lw a1, 276(sp)
	sw a1, 148(sp)
	lw a0, 280(sp)
	sw a0, 152(sp)
	lw a1, 284(sp)
	sw a1, 156(sp)
	lw a2, 288(sp)
	sw a2, 160(sp)
	lw a0, 292(sp)
	sw a0, 164(sp)
	lw a2, 296(sp)
	sw a2, 168(sp)
	lw a1, 300(sp)
	sw a1, 172(sp)
	lw a0, 304(sp)
	sw a0, 176(sp)
	lw a1, 308(sp)
	sw a1, 180(sp)
	lw a0, 312(sp)
	sw a0, 184(sp)
	lw a1, 316(sp)
	sw a1, 188(sp)
	lw a0, 320(sp)
	sw a0, 192(sp)
	lw a1, 324(sp)
	sw a1, 196(sp)
	lw a0, 328(sp)
	sw a0, 200(sp)
	lw a2, 332(sp)
	sw a2, 204(sp)
	lw a1, 336(sp)
	sw a1, 208(sp)
	lw a0, 340(sp)
	sw a0, 212(sp)
	lw a1, 344(sp)
	sw a1, 216(sp)
	lw a0, 348(sp)
	sw a0, 220(sp)
	lw a1, 352(sp)
	sw a1, 224(sp)
	lw a0, 356(sp)
	sw a0, 228(sp)
	li a0, 1
	lw a2, 360(sp)
	sw a2, 232(sp)
	lw a1, 364(sp)
	sw a1, 236(sp)
	li a1, 32
	blt a0, a1, label399
label1106:
	mv s0, zero
.p2align 2
label371:
	addi a5, sp, 112
	sh2add a1, s0, a5
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label371
	lw a0, 240(sp)
	addi a5, sp, 112
	sw a0, 112(sp)
	lw a1, 244(sp)
	sw a1, 116(sp)
	lw a0, 248(sp)
	sw a0, 120(sp)
	lw a2, 252(sp)
	sw a2, 124(sp)
	lw a1, 256(sp)
	sw a1, 128(sp)
	lw a0, 260(sp)
	sw a0, 132(sp)
	lw a1, 264(sp)
	sw a1, 136(sp)
	lw a0, 268(sp)
	sw a0, 140(sp)
	lw a1, 272(sp)
	sw a1, 144(sp)
	lw a0, 276(sp)
	sw a0, 148(sp)
	lw a1, 280(sp)
	sw a1, 152(sp)
	lw a0, 284(sp)
	sw a0, 156(sp)
	lw a1, 288(sp)
	sw a1, 160(sp)
	lw a0, 292(sp)
	sw a0, 164(sp)
	lw a1, 296(sp)
	sw a1, 168(sp)
	lw a0, 300(sp)
	sw a0, 172(sp)
	lw a2, 304(sp)
	sw a2, 176(sp)
	lw a1, 308(sp)
	sw a1, 180(sp)
	lw a0, 312(sp)
	sw a0, 184(sp)
	lw a1, 316(sp)
	sw a1, 188(sp)
	lw a0, 320(sp)
	sw a0, 192(sp)
	lw a1, 324(sp)
	sw a1, 196(sp)
	lw a0, 328(sp)
	sw a0, 200(sp)
	lw a1, 332(sp)
	sw a1, 204(sp)
	lw a2, 336(sp)
	sw a2, 208(sp)
	lw a0, 340(sp)
	sw a0, 212(sp)
	lw a1, 344(sp)
	sw a1, 216(sp)
	lw a2, 348(sp)
	sw a2, 220(sp)
	lw a0, 352(sp)
	sw a0, 224(sp)
	lw a1, 356(sp)
	sw a1, 228(sp)
	mv a1, zero
	lw a2, 360(sp)
	sw a2, 232(sp)
	li a2, 31
	lw a0, 364(sp)
	sw a0, 236(sp)
	mv a0, a5
	jal QuickSort
	mv s0, zero
.p2align 2
label374:
	addi a5, sp, 112
	sh2add a1, s0, a5
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label374
	lw a0, 240(sp)
	sw a0, 112(sp)
	lw a1, 244(sp)
	sw a1, 116(sp)
	lw a2, 248(sp)
	sw a2, 120(sp)
	lw a0, 252(sp)
	sw a0, 124(sp)
	lw a1, 256(sp)
	sw a1, 128(sp)
	lw a0, 260(sp)
	sw a0, 132(sp)
	lw a2, 264(sp)
	sw a2, 136(sp)
	lw a1, 268(sp)
	sw a1, 140(sp)
	lw a0, 272(sp)
	sw a0, 144(sp)
	lw a1, 276(sp)
	sw a1, 148(sp)
	lw a0, 280(sp)
	sw a0, 152(sp)
	lw a1, 284(sp)
	sw a1, 156(sp)
	lw a0, 288(sp)
	sw a0, 160(sp)
	lw a1, 292(sp)
	sw a1, 164(sp)
	lw a0, 296(sp)
	sw a0, 168(sp)
	lw a1, 300(sp)
	sw a1, 172(sp)
	lw a0, 304(sp)
	sw a0, 176(sp)
	lw a1, 308(sp)
	sw a1, 180(sp)
	lw a0, 312(sp)
	sw a0, 184(sp)
	lw a1, 316(sp)
	sw a1, 188(sp)
	lw a0, 320(sp)
	sw a0, 192(sp)
	lw a2, 324(sp)
	sw a2, 196(sp)
	lw a1, 328(sp)
	sw a1, 200(sp)
	lw a0, 332(sp)
	sw a0, 204(sp)
	lw a1, 336(sp)
	sw a1, 208(sp)
	lw a0, 340(sp)
	sw a0, 212(sp)
	lw a1, 344(sp)
	sw a1, 216(sp)
	lw a0, 348(sp)
	sw a0, 220(sp)
	lw a1, 352(sp)
	sw a1, 224(sp)
	mv a1, zero
	lw a2, 356(sp)
	sw a2, 228(sp)
	lw a0, 360(sp)
	sw a0, 232(sp)
	lw a2, 364(sp)
	sw a2, 236(sp)
	mv a0, zero
	li a2, 32
	blt zero, a2, label396
	j label1314
.p2align 2
label399:
	addi a5, sp, 112
	addiw a2, a0, -1
	sh2add a3, a0, a5
	lw a1, 0(a3)
	addiw a3, a2, 1
	bge a2, zero, label403
.p2align 2
label402:
	addi a5, sp, 112
	addiw a0, a0, 1
	sh2add a2, a3, a5
	sw a1, 0(a2)
	li a1, 32
	blt a0, a1, label399
	j label1106
.p2align 2
label403:
	addi a5, sp, 112
	sh2add t0, a2, a5
	lw a4, 0(t0)
	bge a1, a4, label402
	addiw a2, a2, -1
	sh2add a3, a3, a5
	sw a4, 0(a3)
	addiw a3, a2, 1
	bge a2, zero, label403
	addiw a0, a0, 1
	sh2add a2, a3, a5
	sw a1, 0(a2)
	li a1, 32
	blt a0, a1, label399
	j label1106
label1314:
	mv s0, zero
.p2align 2
label380:
	addi a5, sp, 112
	sh2add a1, s0, a5
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label380
	lw a0, 240(sp)
	sw a0, 112(sp)
	lw a1, 244(sp)
	sw a1, 116(sp)
	lw a0, 248(sp)
	sw a0, 120(sp)
	lw a1, 252(sp)
	sw a1, 124(sp)
	lw a0, 256(sp)
	sw a0, 128(sp)
	lw a1, 260(sp)
	sw a1, 132(sp)
	lw a0, 264(sp)
	sw a0, 136(sp)
	lw a1, 268(sp)
	sw a1, 140(sp)
	lw a2, 272(sp)
	sw a2, 144(sp)
	lw a0, 276(sp)
	sw a0, 148(sp)
	lw a1, 280(sp)
	sw a1, 152(sp)
	lw a0, 284(sp)
	sw a0, 156(sp)
	lw a1, 288(sp)
	sw a1, 160(sp)
	lw a2, 292(sp)
	sw a2, 164(sp)
	lw a0, 296(sp)
	sw a0, 168(sp)
	lw a2, 300(sp)
	sw a2, 172(sp)
	lw a1, 304(sp)
	sw a1, 176(sp)
	lw a0, 308(sp)
	sw a0, 180(sp)
	lw a1, 312(sp)
	sw a1, 184(sp)
	lw a0, 316(sp)
	sw a0, 188(sp)
	lw a1, 320(sp)
	sw a1, 192(sp)
	lw a0, 324(sp)
	sw a0, 196(sp)
	lw a1, 328(sp)
	sw a1, 200(sp)
	lw a0, 332(sp)
	sw a0, 204(sp)
	lw a1, 336(sp)
	sw a1, 208(sp)
	lw a2, 340(sp)
	sw a2, 212(sp)
	mv a2, zero
	lw a0, 344(sp)
	sw a0, 216(sp)
	lw a1, 348(sp)
	sw a1, 220(sp)
	lw a0, 352(sp)
	sw a0, 224(sp)
	lw a1, 356(sp)
	sw a1, 228(sp)
	lw a0, 360(sp)
	sw a0, 232(sp)
	lw a1, 364(sp)
	sw a1, 236(sp)
	mv a1, zero
	mv a0, zero
	li a3, 32
	blt zero, a3, label387
	j label1420
.p2align 2
label396:
	addi a5, sp, 112
	li a4, 3
	sh2add a3, a0, a5
	lw a2, 0(a3)
	andi a3, a0, 3
	addw a1, a1, a2
	addiw a2, a0, 1
	bne a3, a4, label397
	sh2add a0, a0, a5
	sw a1, 0(a0)
	mv a0, a2
	mv a1, zero
	li a2, 32
	blt a0, a2, label396
	j label1314
.p2align 2
label397:
	addi a5, sp, 112
	sh2add a0, a0, a5
	sw zero, 0(a0)
	mv a0, a2
	li a2, 32
	blt a0, a2, label396
	j label1314
label1420:
	mv s0, zero
	sd zero, 232(sp)
	j label393
.p2align 2
label387:
	li a3, 2
	blt a0, a3, label391
	j label388
.p2align 2
label390:
	addi a5, sp, 112
	sh2add a3, a0, a5
	addiw a0, a0, 1
	lw t0, 0(a3)
	addw a4, a1, t0
	li t0, 1431655766
	subw a1, a4, a2
	mul a2, a1, t0
	srli t0, a2, 63
	srli a5, a2, 32
	lw a2, -8(a3)
	add a4, t0, a5
	sw a4, -8(a3)
	li a3, 32
	blt a0, a3, label387
	j label1420
.p2align 2
label391:
	addi a5, sp, 112
	sh2add a4, a0, a5
	addiw a0, a0, 1
	lw a3, 0(a4)
	addw a1, a1, a3
	li a3, 32
	blt a0, a3, label387
	j label1420
.p2align 2
label393:
	addi a5, sp, 112
	sh2add a1, s0, a5
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label393
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s2, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	ld s11, 64(sp)
	ld s7, 72(sp)
	ld s8, 80(sp)
	ld s9, 88(sp)
	ld s10, 96(sp)
	addi sp, sp, 368
	ret
.p2align 2
label388:
	li a3, 2
	bne a0, a3, label390
	lw a2, 112(sp)
	li a4, 1431655766
	mul a0, a1, a4
	srli a4, a0, 63
	srli a3, a0, 32
	add a0, a4, a3
	sw a0, 112(sp)
	li a0, 3
	li a3, 32
	blt a0, a3, label387
	j label1420
label350:
	addiw a1, a1, 1
	li a3, 32
	subw a2, a3, a1
	li a3, 31
	addi a0, a2, -1
	blt a1, a3, label485
	j label484
.p2align 2
label1724:
	addiw a1, a1, 1
	li a3, 32
	subw a2, a3, a1
	li a3, 31
	addi a0, a2, -1
	blt a1, a3, label983
	j label982
.p2align 2
label1722:
	addiw a1, a1, 1
	li a3, 32
	subw a2, a3, a1
	li a3, 31
	addi a0, a2, -1
	blt a1, a3, label485
	j label484
label986:
	addiw a1, a1, 1
	li a3, 32
	subw a2, a3, a1
	li a3, 31
	addi a0, a2, -1
	blt a1, a3, label983
	j label982
