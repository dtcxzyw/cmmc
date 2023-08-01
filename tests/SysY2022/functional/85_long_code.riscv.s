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
	ble s1, a0, label73
	sh2add a3, a0, s0
	mv s2, a0
	lw a1, 0(a3)
	mv a3, s1
	addi a2, a1, -1
label5:
	bgt a3, s2, label63
label8:
	sh2add a2, s2, s0
	addiw s3, s2, -1
	sw a1, 0(a2)
label9:
	bgt s3, a0, label11
	addiw a0, s2, 1
	j label2
.p2align 2
label63:
	blt s2, a3, label65
	bgt a3, s2, label70
	j label304
.p2align 2
label65:
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label66
	addiw a3, a3, -1
	blt s2, a3, label65
	ble a3, s2, label315
.p2align 2
label70:
	sh2add a5, s2, s0
	lw a4, 0(a5)
	ble a1, a4, label254
	addiw s2, s2, 1
	bgt a3, s2, label70
	j label8
label73:
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
label11:
	sh2add a3, a0, s0
	mv s4, a0
	lw a1, 0(a3)
	mv a3, s3
	addi a2, a1, -1
label12:
	ble a3, s4, label101
	blt s4, a3, label22
	j label17
.p2align 2
label19:
	sh2add a5, s4, s0
	lw a4, 0(a5)
	ble a1, a4, label116
	addiw s4, s4, 1
	bgt a3, s4, label19
	j label101
.p2align 2
label22:
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label127
	addiw a3, a3, -1
	blt s4, a3, label22
	bgt a3, s4, label19
	j label101
.p2align 2
label17:
	bgt a3, s4, label19
label101:
	sh2add a2, s4, s0
	addiw s5, s4, -1
	sw a1, 0(a2)
label26:
	ble s5, a0, label28
	sh2add a3, a0, s0
	mv s6, a0
	lw a1, 0(a3)
	mv a3, s5
	addi a2, a1, -1
label30:
	bgt a3, s6, label33
label147:
	sh2add a2, s6, s0
	addiw s7, s6, -1
	sw a1, 0(a2)
	mv a1, a0
	j label44
.p2align 2
label33:
	blt s6, a3, label40
.p2align 2
label35:
	ble a3, s6, label155
.p2align 2
label37:
	sh2add a5, s6, s0
	lw a4, 0(a5)
	ble a1, a4, label38
	addiw s6, s6, 1
	bgt a3, s6, label37
	j label147
label44:
	ble s7, a1, label46
	sh2add a3, a1, s0
	mv s8, a1
	lw a0, 0(a3)
	mv a3, s7
	addi a2, a0, -1
label48:
	bgt a3, s8, label51
	j label61
.p2align 2
label40:
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label41
	addiw a3, a3, -1
	blt s6, a3, label40
	bgt a3, s6, label37
	j label147
.p2align 2
label51:
	blt s8, a3, label58
.p2align 2
label53:
	ble a3, s8, label201
.p2align 2
label55:
	sh2add a5, s8, s0
	lw a4, 0(a5)
	ble a0, a4, label208
	addiw s8, s8, 1
	bgt a3, s8, label55
	j label61
.p2align 2
label58:
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label59
	addiw a3, a3, -1
	blt s8, a3, label58
	bgt a3, s8, label55
	j label61
label28:
	addiw a0, s4, 1
	j label9
label46:
	addiw a0, s6, 1
	j label26
label66:
	sh2add a5, s2, s0
	addiw s2, s2, 1
	sw a4, 0(a5)
	bgt a3, s2, label70
	j label8
label38:
	sh2add a5, a3, s0
	addiw a3, a3, -1
	sw a4, 0(a5)
	j label30
label41:
	sh2add a5, s6, s0
	addiw s6, s6, 1
	sw a4, 0(a5)
	j label35
label59:
	sh2add a5, s8, s0
	addiw s8, s8, 1
	sw a4, 0(a5)
	j label53
label61:
	sh2add a4, s8, s0
	addiw a2, s8, -1
	sw a0, 0(a4)
	mv a0, s0
	jal QuickSort
	addiw a1, s8, 1
	j label44
.p2align 2
label155:
	bgt a3, s6, label33
	j label147
.p2align 2
label201:
	bgt a3, s8, label51
	j label61
.p2align 2
label304:
	bgt a3, s2, label63
	j label8
.p2align 2
label315:
	bgt a3, s2, label63
	j label8
label127:
	sh2add a5, s4, s0
	addiw s4, s4, 1
	sw a4, 0(a5)
	j label17
label208:
	sh2add a5, a3, s0
	addiw a3, a3, -1
	sw a4, 0(a5)
	j label48
label116:
	sh2add a5, a3, s0
	addiw a3, a3, -1
	sw a4, 0(a5)
	j label12
label254:
	sh2add a5, a3, s0
	addiw a3, a3, -1
	sw a4, 0(a5)
	j label5
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
pcrel1772:
	auipc a0, %pcrel_hi(count)
	sw s10, 236(sp)
	addi a2, a0, %pcrel_lo(pcrel1772)
	sd a2, 104(sp)
.p2align 2
label341:
	addi a5, sp, 112
	sh2add a1, s0, a5
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label341
	mv a1, zero
	li a3, 32
	mv a2, a3
	li a3, 31
	addi a0, a2, -1
	bge zero, a3, label481
.p2align 2
label482:
	mv a2, zero
	ble a0, zero, label485
.p2align 2
label347:
	addi a5, sp, 112
	sh2add t0, a2, a5
	lw a3, 0(t0)
	lw a4, 4(t0)
	addiw t0, a2, 1
	bgt a3, a4, label348
	mv a2, t0
	bgt a0, t0, label347
	j label1718
.p2align 2
label348:
	addi a5, sp, 112
	sh2add a2, a2, a5
	sw a3, 4(a2)
	sw a4, 0(a2)
	mv a2, t0
	bgt a0, t0, label347
	addiw a1, a1, 1
	li a3, 32
	subw a2, a3, a1
	li a3, 31
	addi a0, a2, -1
	blt a1, a3, label482
label481:
	mv s0, zero
	j label350
.p2align 2
label1718:
	addiw a1, a1, 1
	li a3, 32
	subw a2, a3, a1
	li a3, 31
	addi a0, a2, -1
	blt a1, a3, label482
	j label481
.p2align 2
label350:
	addi a5, sp, 112
	sh2add a1, s0, a5
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label350
	lw a1, 176(sp)
	lw a2, 172(sp)
	addw a0, a1, a2
	srliw a1, a0, 31
	add a2, a0, a1
	sraiw a0, a2, 1
	jal putint
	mv a1, zero
.p2align 2
label353:
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
	blt a1, a0, label353
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
	mv t0, a0
	sh2add a1, a0, a2
	lw a4, 0(a1)
	addiw a3, a4, 1
	sw a3, 0(a1)
	lw a5, 116(sp)
	max a1, a3, zero
	sh2add a2, a5, a2
	lw t1, 0(a2)
	addiw a4, t1, 1
	bgt a3, zero, label1641
	mv t0, zero
label1641:
	mv a0, a5
	blt a1, a4, label1643
	mv a0, t0
label1643:
	max a3, a1, a4
	sw a4, 0(a2)
	lw a1, 120(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1645
	mv a1, a0
label1645:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a0, 124(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1647
	mv a0, a1
label1647:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a1, 128(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1649
	mv a1, a0
label1649:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a0, 132(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1651
	mv a0, a1
label1651:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a1, 136(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1653
	mv a1, a0
label1653:
	max a0, a3, a2
	sw a2, 0(a4)
	lw a3, 140(sp)
	ld a2, 104(sp)
	sh2add a4, a3, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a0, a2, label1655
	mv a3, a1
label1655:
	max a1, a0, a2
	sw a2, 0(a4)
	lw a0, 144(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a1, a2, label1657
	mv a0, a3
label1657:
	max a3, a1, a2
	sw a2, 0(a4)
	lw a1, 148(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1659
	mv a1, a0
label1659:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a0, 152(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1661
	mv a0, a1
label1661:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a1, 156(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1663
	mv a1, a0
label1663:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a0, 160(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1665
	mv a0, a1
label1665:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a1, 164(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1667
	mv a1, a0
label1667:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a0, 168(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1669
	mv a0, a1
label1669:
	max a1, a3, a2
	sw a2, 0(a4)
	lw a3, 172(sp)
	ld a2, 104(sp)
	sh2add a4, a3, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a1, a2, label1671
	mv a3, a0
label1671:
	max a0, a1, a2
	sw a2, 0(a4)
	lw a1, 176(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a0, a2, label1673
	mv a1, a3
label1673:
	max a3, a0, a2
	sw a2, 0(a4)
	lw a0, 180(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1675
	mv a0, a1
label1675:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a1, 184(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1677
	mv a1, a0
label1677:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a0, 188(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1679
	mv a0, a1
label1679:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a1, 192(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1681
	mv a1, a0
label1681:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a0, 196(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1683
	mv a0, a1
label1683:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a1, 200(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1685
	mv a1, a0
label1685:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a0, 204(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1687
	mv a0, a1
label1687:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a1, 208(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1689
	mv a1, a0
label1689:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a0, 212(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1691
	mv a0, a1
label1691:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a1, 216(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1693
	mv a1, a0
label1693:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a0, 220(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1695
	mv a0, a1
label1695:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a1, 224(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1697
	mv a1, a0
label1697:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a0, 228(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1699
	mv a0, a1
label1699:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a1, 232(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1701
	mv a1, a0
label1701:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a0, 236(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1703
	mv a0, a1
label1703:
	sw a2, 0(a4)
	jal putint
	lw a1, 240(sp)
	sw a1, 112(sp)
	lw a0, 244(sp)
	sw a0, 116(sp)
	lw a1, 248(sp)
	sw a1, 120(sp)
	lw a0, 252(sp)
	sw a0, 124(sp)
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
	lw a2, 292(sp)
	sw a2, 164(sp)
	lw a0, 296(sp)
	sw a0, 168(sp)
	lw a1, 300(sp)
	sw a1, 172(sp)
	lw a2, 304(sp)
	sw a2, 176(sp)
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
	blt zero, a3, label980
label979:
	mv s0, zero
	j label363
.p2align 2
label980:
	mv a2, zero
	ble a0, zero, label360
.p2align 2
label361:
	addi a5, sp, 112
	sh2add t0, a2, a5
	lw a3, 0(t0)
	lw a4, 4(t0)
	addiw t0, a2, 1
	bgt a3, a4, label362
	mv a2, t0
	bgt a0, t0, label361
	j label1722
.p2align 2
label362:
	addi a5, sp, 112
	sh2add a2, a2, a5
	sw a3, 4(a2)
	sw a4, 0(a2)
	mv a2, t0
	bgt a0, t0, label361
	addiw a1, a1, 1
	li a3, 32
	subw a2, a3, a1
	li a3, 31
	addi a0, a2, -1
	blt a1, a3, label980
	j label979
.p2align 2
label363:
	addi a5, sp, 112
	sh2add a1, s0, a5
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label363
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
	lw a1, 332(sp)
	sw a1, 204(sp)
	lw a0, 336(sp)
	sw a0, 208(sp)
	lw a1, 340(sp)
	sw a1, 212(sp)
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
	li a0, 1
	lw a1, 364(sp)
	sw a1, 236(sp)
	li a1, 32
	blt a0, a1, label368
label1103:
	mv s0, zero
	j label374
.p2align 2
label368:
	addi a5, sp, 112
	addiw a2, a0, -1
	sh2add a3, a0, a5
	lw a1, 0(a3)
	addiw a3, a2, 1
	bge a2, zero, label372
.p2align 2
label371:
	addi a5, sp, 112
	addiw a0, a0, 1
	sh2add a2, a3, a5
	sw a1, 0(a2)
	li a1, 32
	blt a0, a1, label368
	j label1103
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
	addi a5, sp, 112
	sw a0, 112(sp)
	lw a2, 244(sp)
	sw a2, 116(sp)
	lw a1, 248(sp)
	sw a1, 120(sp)
	lw a0, 252(sp)
	sw a0, 124(sp)
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
	li a2, 31
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
	lw a0, 336(sp)
	sw a0, 208(sp)
	lw a1, 340(sp)
	sw a1, 212(sp)
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
	mv a0, a5
	jal QuickSort
	mv s0, zero
.p2align 2
label377:
	addi a5, sp, 112
	sh2add a1, s0, a5
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label377
	lw a0, 240(sp)
	sw a0, 112(sp)
	lw a1, 244(sp)
	sw a1, 116(sp)
	lw a2, 248(sp)
	sw a2, 120(sp)
	lw a0, 252(sp)
	sw a0, 124(sp)
	lw a2, 256(sp)
	sw a2, 128(sp)
	lw a1, 260(sp)
	sw a1, 132(sp)
	lw a0, 264(sp)
	sw a0, 136(sp)
	lw a1, 268(sp)
	sw a1, 140(sp)
	lw a0, 272(sp)
	sw a0, 144(sp)
	lw a2, 276(sp)
	sw a2, 148(sp)
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
	lw a1, 304(sp)
	sw a1, 176(sp)
	lw a0, 308(sp)
	sw a0, 180(sp)
	lw a1, 312(sp)
	sw a1, 184(sp)
	lw a2, 316(sp)
	sw a2, 188(sp)
	lw a0, 320(sp)
	sw a0, 192(sp)
	lw a1, 324(sp)
	sw a1, 196(sp)
	lw a0, 328(sp)
	sw a0, 200(sp)
	lw a1, 332(sp)
	sw a1, 204(sp)
	lw a0, 336(sp)
	sw a0, 208(sp)
	lw a2, 340(sp)
	sw a2, 212(sp)
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
	mv a0, zero
	li a2, 32
	blt zero, a2, label399
	j label1333
.p2align 2
label372:
	addi a5, sp, 112
	sh2add t0, a2, a5
	lw a4, 0(t0)
	bge a1, a4, label371
	addiw a2, a2, -1
	sh2add a3, a3, a5
	sw a4, 0(a3)
	addiw a3, a2, 1
	bge a2, zero, label372
	addiw a0, a0, 1
	sh2add a2, a3, a5
	sw a1, 0(a2)
	li a1, 32
	blt a0, a1, label368
	j label1103
label1333:
	mv s0, zero
.p2align 2
label383:
	addi a5, sp, 112
	sh2add a1, s0, a5
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label383
	lw a1, 240(sp)
	sw a1, 112(sp)
	lw a0, 244(sp)
	sw a0, 116(sp)
	lw a1, 248(sp)
	sw a1, 120(sp)
	lw a0, 252(sp)
	sw a0, 124(sp)
	lw a1, 256(sp)
	sw a1, 128(sp)
	lw a0, 260(sp)
	sw a0, 132(sp)
	lw a1, 264(sp)
	sw a1, 136(sp)
	lw a0, 268(sp)
	sw a0, 140(sp)
	lw a2, 272(sp)
	sw a2, 144(sp)
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
	lw a2, 316(sp)
	sw a2, 188(sp)
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
	lw a0, 344(sp)
	sw a0, 216(sp)
	lw a2, 348(sp)
	sw a2, 220(sp)
	mv a2, zero
	lw a1, 352(sp)
	sw a1, 224(sp)
	lw a0, 356(sp)
	sw a0, 228(sp)
	lw a1, 360(sp)
	sw a1, 232(sp)
	lw a0, 364(sp)
	sw a0, 236(sp)
	mv a1, zero
	mv a0, zero
	li a3, 32
	blt zero, a3, label390
	j label1439
.p2align 2
label399:
	addi a5, sp, 112
	li a4, 3
	sh2add a3, a0, a5
	lw a2, 0(a3)
	andi a3, a0, 3
	addw a1, a1, a2
	addiw a2, a0, 1
	bne a3, a4, label401
	sh2add a0, a0, a5
	sw a1, 0(a0)
	mv a0, a2
	mv a1, zero
	li a2, 32
	blt a0, a2, label399
	j label1333
.p2align 2
label401:
	addi a5, sp, 112
	sh2add a0, a0, a5
	sw zero, 0(a0)
	mv a0, a2
	li a2, 32
	blt a0, a2, label399
	j label1333
label1439:
	mv s0, zero
	sd zero, 232(sp)
	j label396
.p2align 2
label390:
	li a3, 2
	blt a0, a3, label394
	j label391
.p2align 2
label393:
	addi a5, sp, 112
	sh2add a3, a0, a5
	addiw a0, a0, 1
	lw a4, 0(a3)
	addw a5, a1, a4
	li a4, 1431655766
	subw a1, a5, a2
	mul a2, a1, a4
	srli t0, a2, 63
	srli a5, a2, 32
	lw a2, -8(a3)
	add a4, t0, a5
	sw a4, -8(a3)
	li a3, 32
	blt a0, a3, label390
	j label1439
.p2align 2
label394:
	addi a5, sp, 112
	sh2add a4, a0, a5
	addiw a0, a0, 1
	lw a3, 0(a4)
	addw a1, a1, a3
	li a3, 32
	blt a0, a3, label390
	j label1439
.p2align 2
label396:
	addi a5, sp, 112
	sh2add a1, s0, a5
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label396
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
label391:
	li a3, 2
	bne a0, a3, label393
	lw a2, 112(sp)
	li a4, 1431655766
	mul a0, a1, a4
	srli a4, a0, 63
	srli a3, a0, 32
	add a0, a4, a3
	sw a0, 112(sp)
	li a0, 3
	li a3, 32
	blt a0, a3, label390
	j label1439
label360:
	addiw a1, a1, 1
	li a3, 32
	subw a2, a3, a1
	li a3, 31
	addi a0, a2, -1
	blt a1, a3, label980
	j label979
.p2align 2
label1722:
	addiw a1, a1, 1
	li a3, 32
	subw a2, a3, a1
	li a3, 31
	addi a0, a2, -1
	blt a1, a3, label980
	j label979
label485:
	addiw a1, a1, 1
	li a3, 32
	subw a2, a3, a1
	li a3, 31
	addi a0, a2, -1
	blt a1, a3, label482
	j label481
