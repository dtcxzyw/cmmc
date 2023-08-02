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
	addi sp, sp, -296
	li a0, 98784247815
	li a1, 111669149785
	li a2, 1090921693466
	li a3, 21474836507
	li a4, 1172526071891
	li a5, 3886945403454
	li t0, 2821793513826
	li t1, 1133871367079
	li t2, 1971389989503
	li t3, 292057776157
	li t4, 3246995276705
	li t5, 1198295876036
	li t6, 373662154810
	li a6, 154618822752
	li a7, 120259084327
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, sp, 168
	sd s1, 16(sp)
	li s1, 1
	sd s2, 24(sp)
	li s2, 1245540515841
	sd s3, 32(sp)
	mv s3, zero
	sd a0, 40(sp)
	sd a1, 48(sp)
	sd a2, 56(sp)
	sd a3, 64(sp)
	sd a4, 72(sp)
	sd a5, 80(sp)
	sd t0, 88(sp)
	sd t1, 96(sp)
	sd t2, 104(sp)
	sd t3, 112(sp)
	sd t4, 120(sp)
	sd t5, 128(sp)
	sd t6, 136(sp)
	sd a6, 144(sp)
	sd a7, 152(sp)
	sd s2, 160(sp)
	sd a0, 168(sp)
pcrel1897:
	auipc a0, %pcrel_hi(count)
	sd a1, 176(sp)
	sd a2, 184(sp)
	sd a3, 192(sp)
	sd a4, 200(sp)
	sd a5, 208(sp)
	sd t0, 216(sp)
	sd t1, 224(sp)
	sd t2, 232(sp)
	sd t3, 240(sp)
	sd t4, 248(sp)
	sd t5, 256(sp)
	sd t6, 264(sp)
	sd a6, 272(sp)
	sd a7, 280(sp)
	sd s2, 288(sp)
	addi s2, a0, %pcrel_lo(pcrel1897)
.p2align 2
label344:
	sh2add a1, s3, s0
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s3, s3, 1
	blt s3, a0, label344
	mv a1, zero
	li a3, 32
	mv a2, a3
	li a3, 31
	addi a0, a2, -1
	blt zero, a3, label485
label484:
	mv s3, zero
	j label353
.p2align 2
label485:
	mv a2, zero
	ble a0, zero, label350
.p2align 2
label351:
	sh2add a5, a2, s0
	lw a3, 0(a5)
	lw a4, 4(a5)
	addiw a5, a2, 1
	bgt a3, a4, label352
	mv a2, a5
	bgt a0, a5, label351
	j label1843
.p2align 2
label352:
	sh2add a2, a2, s0
	sw a3, 4(a2)
	sw a4, 0(a2)
	mv a2, a5
	bgt a0, a5, label351
	addiw a1, a1, 1
	li a3, 32
	subw a2, a3, a1
	li a3, 31
	addi a0, a2, -1
	blt a1, a3, label485
	j label484
.p2align 2
label353:
	sh2add a1, s3, s0
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s3, s3, 1
	blt s3, a0, label353
	lw a1, 232(sp)
	lw a2, 228(sp)
	addw a0, a1, a2
	srliw a1, a0, 31
	add a2, a0, a1
	sraiw a0, a2, 1
	jal putint
	mv a1, zero
.p2align 2
label356:
	sh2add a0, a1, s2
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
	sh2add a0, a1, s2
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
	lw a0, 168(sp)
	sh2add a1, a0, s2
	lw a3, 0(a1)
	addiw a2, a3, 1
	sw a2, 0(a1)
	lw a5, 172(sp)
	max a1, a2, zero
	sh2add a3, a5, s2
	lw t0, 0(a3)
	addiw a4, t0, 1
	bgt a2, zero, label1774
	mv a0, zero
label1774:
	mv a2, a5
	blt a1, a4, label1776
	mv a2, a0
label1776:
	max a1, a1, a4
	sw a4, 0(a3)
	lw a0, 176(sp)
	sh2add a3, a0, s2
	lw a5, 0(a3)
	addiw a4, a5, 1
	blt a1, a4, label1778
	mv a0, a2
label1778:
	max a1, a1, a4
	sw a4, 0(a3)
	lw a2, 180(sp)
	sh2add a3, a2, s2
	lw a5, 0(a3)
	addiw a4, a5, 1
	blt a1, a4, label1780
	mv a2, a0
label1780:
	max a0, a1, a4
	sw a4, 0(a3)
	lw a1, 184(sp)
	sh2add a3, a1, s2
	lw a5, 0(a3)
	addiw a4, a5, 1
	blt a0, a4, label1782
	mv a1, a2
label1782:
	max a2, a0, a4
	sw a4, 0(a3)
	lw a0, 188(sp)
	sh2add a3, a0, s2
	lw a5, 0(a3)
	addiw a4, a5, 1
	blt a2, a4, label1784
	mv a0, a1
label1784:
	max a2, a2, a4
	sw a4, 0(a3)
	lw a1, 192(sp)
	sh2add a3, a1, s2
	lw a5, 0(a3)
	addiw a4, a5, 1
	blt a2, a4, label1786
	mv a1, a0
label1786:
	max a0, a2, a4
	sw a4, 0(a3)
	lw a2, 196(sp)
	sh2add a3, a2, s2
	lw a5, 0(a3)
	addiw a4, a5, 1
	blt a0, a4, label1788
	mv a2, a1
label1788:
	max a1, a0, a4
	sw a4, 0(a3)
	lw a0, 200(sp)
	sh2add a3, a0, s2
	lw a5, 0(a3)
	addiw a4, a5, 1
	blt a1, a4, label1790
	mv a0, a2
label1790:
	max a2, a1, a4
	sw a4, 0(a3)
	lw a1, 204(sp)
	sh2add a3, a1, s2
	lw a5, 0(a3)
	addiw a4, a5, 1
	blt a2, a4, label1792
	mv a1, a0
label1792:
	max a2, a2, a4
	sw a4, 0(a3)
	lw a0, 208(sp)
	sh2add a3, a0, s2
	lw a5, 0(a3)
	addiw a4, a5, 1
	blt a2, a4, label1794
	mv a0, a1
label1794:
	max a2, a2, a4
	sw a4, 0(a3)
	lw a1, 212(sp)
	sh2add a3, a1, s2
	lw a5, 0(a3)
	addiw a4, a5, 1
	blt a2, a4, label1796
	mv a1, a0
label1796:
	max a2, a2, a4
	sw a4, 0(a3)
	lw a0, 216(sp)
	sh2add a3, a0, s2
	lw a5, 0(a3)
	addiw a4, a5, 1
	blt a2, a4, label1798
	mv a0, a1
label1798:
	max a2, a2, a4
	sw a4, 0(a3)
	lw a1, 220(sp)
	sh2add a3, a1, s2
	lw a5, 0(a3)
	addiw a4, a5, 1
	blt a2, a4, label1800
	mv a1, a0
label1800:
	max a2, a2, a4
	sw a4, 0(a3)
	lw a0, 224(sp)
	sh2add a3, a0, s2
	lw a5, 0(a3)
	addiw a4, a5, 1
	blt a2, a4, label1802
	mv a0, a1
label1802:
	max a1, a2, a4
	sw a4, 0(a3)
	lw a2, 228(sp)
	sh2add a3, a2, s2
	lw a5, 0(a3)
	addiw a4, a5, 1
	blt a1, a4, label1804
	mv a2, a0
label1804:
	max a0, a1, a4
	sw a4, 0(a3)
	lw a1, 232(sp)
	sh2add a3, a1, s2
	lw a5, 0(a3)
	addiw a4, a5, 1
	blt a0, a4, label1806
	mv a1, a2
label1806:
	max a2, a0, a4
	sw a4, 0(a3)
	lw a0, 236(sp)
	sh2add a3, a0, s2
	lw a5, 0(a3)
	addiw a4, a5, 1
	blt a2, a4, label1808
	mv a0, a1
label1808:
	max a2, a2, a4
	sw a4, 0(a3)
	lw a1, 240(sp)
	sh2add a3, a1, s2
	lw a5, 0(a3)
	addiw a4, a5, 1
	blt a2, a4, label1810
	mv a1, a0
label1810:
	max a2, a2, a4
	sw a4, 0(a3)
	lw a0, 244(sp)
	sh2add a3, a0, s2
	lw a5, 0(a3)
	addiw a4, a5, 1
	blt a2, a4, label1812
	mv a0, a1
label1812:
	max a2, a2, a4
	sw a4, 0(a3)
	lw a1, 248(sp)
	sh2add a3, a1, s2
	lw a5, 0(a3)
	addiw a4, a5, 1
	blt a2, a4, label1814
	mv a1, a0
label1814:
	max a2, a2, a4
	sw a4, 0(a3)
	lw a0, 252(sp)
	sh2add a3, a0, s2
	lw a5, 0(a3)
	addiw a4, a5, 1
	blt a2, a4, label1816
	mv a0, a1
label1816:
	max a2, a2, a4
	sw a4, 0(a3)
	lw a1, 256(sp)
	sh2add a3, a1, s2
	lw a5, 0(a3)
	addiw a4, a5, 1
	blt a2, a4, label1818
	mv a1, a0
label1818:
	max a2, a2, a4
	sw a4, 0(a3)
	lw a0, 260(sp)
	sh2add a3, a0, s2
	lw a5, 0(a3)
	addiw a4, a5, 1
	blt a2, a4, label1820
	mv a0, a1
label1820:
	max a2, a2, a4
	sw a4, 0(a3)
	lw a1, 264(sp)
	sh2add a3, a1, s2
	lw a5, 0(a3)
	addiw a4, a5, 1
	blt a2, a4, label1822
	mv a1, a0
label1822:
	max a2, a2, a4
	sw a4, 0(a3)
	lw a0, 268(sp)
	sh2add a3, a0, s2
	lw a5, 0(a3)
	addiw a4, a5, 1
	blt a2, a4, label1824
	mv a0, a1
label1824:
	max a2, a2, a4
	sw a4, 0(a3)
	lw a1, 272(sp)
	sh2add a3, a1, s2
	lw a5, 0(a3)
	addiw a4, a5, 1
	blt a2, a4, label1826
	mv a1, a0
label1826:
	max a2, a2, a4
	sw a4, 0(a3)
	lw a0, 276(sp)
	sh2add a3, a0, s2
	lw a5, 0(a3)
	addiw a4, a5, 1
	blt a2, a4, label1828
	mv a0, a1
label1828:
	max a2, a2, a4
	sw a4, 0(a3)
	lw a1, 280(sp)
	sh2add a3, a1, s2
	lw a5, 0(a3)
	addiw a4, a5, 1
	blt a2, a4, label1830
	mv a1, a0
label1830:
	max a2, a2, a4
	sw a4, 0(a3)
	lw a0, 284(sp)
	sh2add a3, a0, s2
	lw a5, 0(a3)
	addiw a4, a5, 1
	blt a2, a4, label1832
	mv a0, a1
label1832:
	max a2, a2, a4
	sw a4, 0(a3)
	lw a1, 288(sp)
	sh2add a3, a1, s2
	lw a5, 0(a3)
	addiw a4, a5, 1
	blt a2, a4, label1834
	mv a1, a0
label1834:
	max a2, a2, a4
	sw a4, 0(a3)
	lw a0, 292(sp)
	sh2add a3, a0, s2
	lw a5, 0(a3)
	addiw a4, a5, 1
	blt a2, a4, label1836
	mv a0, a1
label1836:
	sw a4, 0(a3)
	jal putint
	lw a1, 40(sp)
	sw a1, 168(sp)
	lw a2, 44(sp)
	sw a2, 172(sp)
	lw a0, 48(sp)
	sw a0, 176(sp)
	lw a2, 52(sp)
	sw a2, 180(sp)
	lw a1, 56(sp)
	sw a1, 184(sp)
	lw a0, 60(sp)
	sw a0, 188(sp)
	lw a2, 64(sp)
	sw a2, 192(sp)
	lw a1, 68(sp)
	sw a1, 196(sp)
	lw a0, 72(sp)
	sw a0, 200(sp)
	lw a1, 76(sp)
	sw a1, 204(sp)
	lw a0, 80(sp)
	sw a0, 208(sp)
	lw a1, 84(sp)
	sw a1, 212(sp)
	lw a0, 88(sp)
	sw a0, 216(sp)
	lw a1, 92(sp)
	sw a1, 220(sp)
	lw a0, 96(sp)
	sw a0, 224(sp)
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
	lw a0, 136(sp)
	sw a0, 264(sp)
	lw a1, 140(sp)
	sw a1, 268(sp)
	lw a0, 144(sp)
	sw a0, 272(sp)
	lw a1, 148(sp)
	sw a1, 276(sp)
	lw a0, 152(sp)
	sw a0, 280(sp)
	lw a1, 156(sp)
	sw a1, 284(sp)
	mv a1, zero
	lw a0, 160(sp)
	sw a0, 288(sp)
	lw a2, 164(sp)
	sw a2, 292(sp)
	li a3, 32
	mv a2, a3
	li a3, 31
	addi a0, a2, -1
	blt zero, a3, label983
label982:
	mv s2, zero
	j label366
.p2align 2
label983:
	mv a2, zero
	ble a0, zero, label986
.p2align 2
label363:
	sh2add a5, a2, s0
	lw a3, 0(a5)
	lw a4, 4(a5)
	addiw a5, a2, 1
	bgt a3, a4, label364
	mv a2, a5
	bgt a0, a5, label363
	j label1845
.p2align 2
label364:
	sh2add a2, a2, s0
	sw a3, 4(a2)
	sw a4, 0(a2)
	mv a2, a5
	bgt a0, a5, label363
	addiw a1, a1, 1
	li a3, 32
	subw a2, a3, a1
	li a3, 31
	addi a0, a2, -1
	blt a1, a3, label983
	j label982
.p2align 2
label366:
	sh2add a2, s2, s0
	lw a0, 0(a2)
	jal putint
	li a0, 32
	addiw s2, s2, 1
	blt s2, a0, label366
	lw a0, 40(sp)
	sw a0, 168(sp)
	lw a1, 44(sp)
	sw a1, 172(sp)
	lw a0, 48(sp)
	sw a0, 176(sp)
	lw a1, 52(sp)
	sw a1, 180(sp)
	lw a2, 56(sp)
	sw a2, 184(sp)
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
	lw a2, 112(sp)
	sw a2, 240(sp)
	lw a1, 116(sp)
	sw a1, 244(sp)
	lw a0, 120(sp)
	sw a0, 248(sp)
	lw a1, 124(sp)
	sw a1, 252(sp)
	lw a0, 128(sp)
	sw a0, 256(sp)
	lw a2, 132(sp)
	sw a2, 260(sp)
	lw a1, 136(sp)
	sw a1, 264(sp)
	lw a0, 140(sp)
	sw a0, 268(sp)
	lw a1, 144(sp)
	sw a1, 272(sp)
	lw a0, 148(sp)
	sw a0, 276(sp)
	lw a1, 152(sp)
	sw a1, 280(sp)
	lw a0, 156(sp)
	sw a0, 284(sp)
	lw a1, 160(sp)
	sw a1, 288(sp)
	lw a0, 164(sp)
	sw a0, 292(sp)
	li a0, 32
	blt s1, a0, label399
label1106:
	mv s1, zero
.p2align 2
label371:
	sh2add a1, s1, s0
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s1, s1, 1
	blt s1, a0, label371
	lw a0, 40(sp)
	sw a0, 168(sp)
	lw a2, 44(sp)
	sw a2, 172(sp)
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
	lw a2, 124(sp)
	sw a2, 252(sp)
	lw a0, 128(sp)
	sw a0, 256(sp)
	lw a2, 132(sp)
	sw a2, 260(sp)
	lw a1, 136(sp)
	sw a1, 264(sp)
	lw a0, 140(sp)
	sw a0, 268(sp)
	lw a1, 144(sp)
	sw a1, 272(sp)
	lw a0, 148(sp)
	sw a0, 276(sp)
	lw a1, 152(sp)
	sw a1, 280(sp)
	lw a0, 156(sp)
	sw a0, 284(sp)
	lw a2, 160(sp)
	sw a2, 288(sp)
	li a2, 31
	lw a1, 164(sp)
	sw a1, 292(sp)
	mv a1, zero
	mv a0, s0
	jal QuickSort
	mv s1, zero
.p2align 2
label374:
	sh2add a1, s1, s0
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s1, s1, 1
	blt s1, a0, label374
	lw a0, 40(sp)
	sw a0, 168(sp)
	lw a2, 44(sp)
	sw a2, 172(sp)
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
	lw a2, 68(sp)
	sw a2, 196(sp)
	lw a1, 72(sp)
	sw a1, 200(sp)
	lw a0, 76(sp)
	sw a0, 204(sp)
	lw a2, 80(sp)
	sw a2, 208(sp)
	lw a1, 84(sp)
	sw a1, 212(sp)
	lw a0, 88(sp)
	sw a0, 216(sp)
	lw a2, 92(sp)
	sw a2, 220(sp)
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
	lw a0, 148(sp)
	sw a0, 276(sp)
	lw a1, 152(sp)
	sw a1, 280(sp)
	mv a1, zero
	lw a2, 156(sp)
	sw a2, 284(sp)
	lw a0, 160(sp)
	sw a0, 288(sp)
	mv a0, zero
	lw a2, 164(sp)
	sw a2, 292(sp)
	li a2, 32
	blt zero, a2, label396
	j label1314
.p2align 2
label399:
	sh2add a2, s1, s0
	addiw a1, s1, -1
	lw a0, 0(a2)
	addiw a2, a1, 1
	bge a1, zero, label403
.p2align 2
label402:
	sh2add a1, a2, s0
	addiw s1, s1, 1
	sw a0, 0(a1)
	li a0, 32
	blt s1, a0, label399
	j label1106
.p2align 2
label403:
	sh2add a4, a1, s0
	lw a3, 0(a4)
	bge a0, a3, label402
	sh2add a2, a2, s0
	addiw a1, a1, -1
	sw a3, 0(a2)
	addiw a2, a1, 1
	bge a1, zero, label403
	sh2add a1, a2, s0
	addiw s1, s1, 1
	sw a0, 0(a1)
	li a0, 32
	blt s1, a0, label399
	j label1106
label1314:
	mv s1, zero
.p2align 2
label380:
	sh2add a1, s1, s0
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s1, s1, 1
	blt s1, a0, label380
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
	lw a2, 60(sp)
	sw a2, 188(sp)
	lw a0, 64(sp)
	sw a0, 192(sp)
	lw a1, 68(sp)
	sw a1, 196(sp)
	lw a2, 72(sp)
	sw a2, 200(sp)
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
	lw a2, 100(sp)
	sw a2, 228(sp)
	lw a0, 104(sp)
	sw a0, 232(sp)
	lw a1, 108(sp)
	sw a1, 236(sp)
	lw a0, 112(sp)
	sw a0, 240(sp)
	lw a1, 116(sp)
	sw a1, 244(sp)
	lw a2, 120(sp)
	sw a2, 248(sp)
	lw a0, 124(sp)
	sw a0, 252(sp)
	lw a1, 128(sp)
	sw a1, 256(sp)
	lw a0, 132(sp)
	sw a0, 260(sp)
	lw a1, 136(sp)
	sw a1, 264(sp)
	lw a2, 140(sp)
	sw a2, 268(sp)
	mv a2, zero
	lw a0, 144(sp)
	sw a0, 272(sp)
	lw a1, 148(sp)
	sw a1, 276(sp)
	lw a0, 152(sp)
	sw a0, 280(sp)
	lw a1, 156(sp)
	sw a1, 284(sp)
	lw a0, 160(sp)
	sw a0, 288(sp)
	mv a0, zero
	lw a1, 164(sp)
	sw a1, 292(sp)
	mv a1, zero
	li a3, 32
	blt zero, a3, label387
	j label1420
.p2align 2
label396:
	sh2add a3, a0, s0
	li a4, 3
	lw a2, 0(a3)
	andi a3, a0, 3
	addw a1, a1, a2
	addiw a2, a0, 1
	bne a3, a4, label397
	sh2add a3, a0, s0
	mv a0, a2
	sw a1, 0(a3)
	mv a1, zero
	li a2, 32
	blt a0, a2, label396
	j label1314
.p2align 2
label397:
	sh2add a0, a0, s0
	sw zero, 0(a0)
	mv a0, a2
	li a2, 32
	blt a0, a2, label396
	j label1314
label1420:
	sd zero, 288(sp)
	mv s1, zero
	j label393
.p2align 2
label387:
	li a3, 2
	blt a0, a3, label391
	j label388
.p2align 2
label390:
	sh2add a3, a0, s0
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
	blt a0, a3, label387
	j label1420
.p2align 2
label391:
	sh2add a4, a0, s0
	addiw a0, a0, 1
	lw a3, 0(a4)
	addw a1, a1, a3
	li a3, 32
	blt a0, a3, label387
	j label1420
.p2align 2
label393:
	sh2add a1, s1, s0
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s1, s1, 1
	blt s1, a0, label393
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	addi sp, sp, 296
	ret
.p2align 2
label388:
	li a3, 2
	bne a0, a3, label390
	lw a2, 168(sp)
	li a4, 1431655766
	mul a0, a1, a4
	srli a4, a0, 63
	srli a3, a0, 32
	add a0, a4, a3
	sw a0, 168(sp)
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
label1845:
	addiw a1, a1, 1
	li a3, 32
	subw a2, a3, a1
	li a3, 31
	addi a0, a2, -1
	blt a1, a3, label983
	j label982
.p2align 2
label1843:
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
