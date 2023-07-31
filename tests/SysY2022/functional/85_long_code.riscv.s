.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
count:
	.zero	4000
.text
QuickSort:
.p2align 2
	addi sp, sp, -80
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s5, 16(sp)
	sd s1, 24(sp)
	mv s1, a2
	sd s6, 32(sp)
	sd s2, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
label2:
	ble s1, a1, label4
	sh2add a3, a1, s0
	mv s2, a1
	lw a0, 0(a3)
	mv a3, s1
	addi a2, a0, -1
.p2align 2
label9:
	blt s2, a3, label19
	j label11
.p2align 2
label15:
	sh2add t0, s2, s0
	sh2add a5, a3, s0
	lw a4, 0(t0)
	addiw a3, a3, -1
	sw a4, 0(a5)
	bgt a3, s2, label9
	j label94
.p2align 2
label16:
	sh2add a4, s2, s0
	lw a5, 0(a4)
	ble a0, a5, label14
	addiw s2, s2, 1
	bgt a3, s2, label16
	j label380
.p2align 2
label19:
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label11
	addiw a3, a3, -1
	blt s2, a3, label19
	bgt a3, s2, label16
	j label108
.p2align 2
label11:
	blt s2, a3, label18
	bgt a3, s2, label16
label14:
	bgt a3, s2, label15
label108:
	bgt a3, s2, label9
	j label94
.p2align 2
label18:
	sh2add a4, s2, s0
	sh2add a5, a3, s0
	addiw s2, s2, 1
	lw t0, 0(a5)
	sw t0, 0(a4)
	bgt a3, s2, label16
	j label94
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
label94:
	sh2add a2, s2, s0
	addiw s3, s2, -1
	sw a0, 0(a2)
label22:
	ble s3, a1, label24
	sh2add a3, a1, s0
	mv s4, a1
	lw a0, 0(a3)
	mv a3, s3
	addi a2, a0, -1
	bgt s3, a1, label29
label152:
	sh2add a2, s4, s0
	addiw s5, s4, -1
	sw a0, 0(a2)
	j label42
.p2align 2
label29:
	blt s4, a3, label31
	j label364
.p2align 2
label37:
	sh2add t0, s4, s0
	sh2add a5, a3, s0
	lw a4, 0(t0)
	addiw a3, a3, -1
	sw a4, 0(a5)
	bgt a3, s4, label29
	j label152
label42:
	ble s5, a1, label44
	sh2add a3, a1, s0
	mv s6, a1
	lw a0, 0(a3)
	mv a3, s5
	addi a2, a0, -1
	bgt s5, a1, label49
	j label210
label364:
	ble a3, s4, label383
.p2align 2
label38:
	sh2add a4, s4, s0
	lw a5, 0(a4)
	ble a0, a5, label36
	addiw s4, s4, 1
	bgt a3, s4, label38
	j label152
.p2align 2
label31:
	sh2add a4, a3, s0
	lw a5, 0(a4)
	bge a2, a5, label33
	addiw a3, a3, -1
	blt s4, a3, label31
	bgt a3, s4, label38
	j label396
.p2align 2
label49:
	blt s6, a3, label59
.p2align 2
label51:
	bge s6, a3, label217
	sh2add a4, s6, s0
	sh2add a5, a3, s0
	addiw s6, s6, 1
	lw t0, 0(a5)
	sw t0, 0(a4)
	bgt a3, s6, label57
.p2align 2
label55:
	ble a3, s6, label230
.p2align 2
label56:
	sh2add t0, s6, s0
	sh2add a5, a3, s0
	lw a4, 0(t0)
	addiw a3, a3, -1
	sw a4, 0(a5)
	bgt a3, s6, label49
	j label210
.p2align 2
label59:
	sh2add a4, a3, s0
	lw a5, 0(a4)
	bge a2, a5, label51
	addiw a3, a3, -1
	blt s6, a3, label59
	bgt a3, s6, label57
	j label387
.p2align 2
label217:
	ble a3, s6, label370
.p2align 2
label57:
	sh2add a5, s6, s0
	lw a4, 0(a5)
	ble a0, a4, label55
	addiw s6, s6, 1
	bgt a3, s6, label57
	j label210
.p2align 2
label40:
	sh2add a4, s4, s0
	sh2add t0, a3, s0
	addiw s4, s4, 1
	lw a5, 0(t0)
	sw a5, 0(a4)
	bgt a3, s4, label38
	j label152
label370:
	bgt a3, s6, label56
label387:
	bgt a3, s6, label49
	j label210
label383:
	bgt a3, s4, label37
label396:
	bgt a3, s4, label29
	j label152
label24:
	addiw a1, s2, 1
	j label2
label210:
	sh2add a2, s6, s0
	addiw s7, s6, -1
	sw a0, 0(a2)
label62:
	bgt s7, a1, label65
	addiw a1, s6, 1
	j label42
label44:
	addiw a1, s4, 1
	j label22
label65:
	sh2add a3, a1, s0
	mv s8, a1
	lw a0, 0(a3)
	mv a3, s7
	addi a2, a0, -1
	ble s7, a1, label69
.p2align 2
label70:
	blt s8, a3, label80
	j label72
.p2align 2
label73:
	sh2add a4, s8, s0
	sh2add a5, a3, s0
	addiw s8, s8, 1
	lw t0, 0(a5)
	sw t0, 0(a4)
	bgt a3, s8, label78
.p2align 2
label76:
	ble a3, s8, label292
	sh2add a5, s8, s0
	sh2add t0, a3, s0
	lw a4, 0(a5)
	addiw a3, a3, -1
	sw a4, 0(t0)
	bgt a3, s8, label70
	j label69
.p2align 2
label78:
	sh2add a4, s8, s0
	lw a5, 0(a4)
	ble a0, a5, label76
	addiw s8, s8, 1
	bgt a3, s8, label78
	j label391
.p2align 2
label80:
	sh2add a4, a3, s0
	lw a5, 0(a4)
	bge a2, a5, label72
	addiw a3, a3, -1
	blt s8, a3, label80
	bgt a3, s8, label78
	j label390
.p2align 2
label72:
	blt s8, a3, label73
	bgt a3, s8, label78
label390:
	bgt a3, s8, label70
	j label69
label33:
	blt s4, a3, label40
	bgt a3, s4, label38
label36:
	bgt a3, s4, label37
	j label174
label69:
	sh2add a4, s8, s0
	addiw a2, s8, -1
	sw a0, 0(a4)
	mv a0, s0
	jal QuickSort
	addiw a1, s8, 1
	j label62
label380:
	bgt a3, s2, label9
	j label94
label391:
	bgt a3, s8, label70
	j label69
label230:
	bgt a3, s6, label49
	j label210
label292:
	bgt a3, s8, label70
	j label69
label174:
	bgt a3, s4, label29
	j label152
.globl main
main:
.p2align 2
	addi sp, sp, -368
	li a0, 7
	li a1, 23
	li a2, 89
	li a3, 26
	li a4, 282
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
	sd ra, 0(sp)
	sd s0, 8(sp)
	li s0, 264
	sd s5, 16(sp)
	li s5, 929
	sd s1, 24(sp)
	li s1, 639
	sd s6, 32(sp)
	li s6, 36
	sd s2, 40(sp)
	li s2, 459
	sd s3, 48(sp)
	li s3, 29
	sd s4, 56(sp)
	li s4, 68
	sd s11, 64(sp)
	li s11, 756
	sd s7, 72(sp)
	li s7, 39
	sd s8, 80(sp)
	li s8, 28
	sd s9, 88(sp)
	li s9, 1
	sd s10, 96(sp)
	li s10, 290
	sw a0, 240(sp)
	sw a1, 244(sp)
	sw a2, 248(sp)
	sw a3, 252(sp)
	sw a4, 256(sp)
	sw a5, 260(sp)
	sw t0, 264(sp)
	sw t1, 268(sp)
	sw t2, 272(sp)
	sw t3, 276(sp)
	sw t4, 280(sp)
	sw t5, 284(sp)
	sw t6, 288(sp)
	sw a6, 292(sp)
	sw a7, 296(sp)
	sw s0, 300(sp)
	sw s1, 304(sp)
	sw s2, 308(sp)
	sw s3, 312(sp)
	sw s4, 316(sp)
	sw s5, 320(sp)
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
	sw s6, 348(sp)
	sw s7, 352(sp)
	sw s8, 356(sp)
	sw s9, 360(sp)
	sw s10, 364(sp)
	sw a0, 112(sp)
pcrel1869:
	auipc a0, %pcrel_hi(count)
	sw a1, 116(sp)
	sw a2, 120(sp)
	addi a2, a0, %pcrel_lo(pcrel1869)
	sw a3, 124(sp)
	sw a4, 128(sp)
	sw a5, 132(sp)
	sw t0, 136(sp)
	sw t1, 140(sp)
	sw t2, 144(sp)
	sw t3, 148(sp)
	sw t4, 152(sp)
	sw t5, 156(sp)
	sw t6, 160(sp)
	sw a6, 164(sp)
	sw a7, 168(sp)
	sw s0, 172(sp)
	mv s0, zero
	sw s1, 176(sp)
	sw s2, 180(sp)
	sw s3, 184(sp)
	sw s4, 188(sp)
	sw s5, 192(sp)
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
	sw s6, 220(sp)
	sw s7, 224(sp)
	sw s8, 228(sp)
	sw s9, 232(sp)
	sw s10, 236(sp)
	sd a2, 104(sp)
.p2align 2
label439:
	addi a4, sp, 112
	sh2add a1, s0, a4
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label439
	mv a1, zero
	li a2, 32
	mv a3, a2
	li a2, 31
	addi a0, a3, -1
	blt zero, a2, label580
label579:
	mv s0, zero
	j label448
.p2align 2
label580:
	mv a2, zero
	bgt a0, zero, label445
	j label583
.p2align 2
label1816:
	addiw a1, a1, 1
	li a2, 32
	subw a3, a2, a1
	li a2, 31
	addi a0, a3, -1
	blt a1, a2, label580
	j label579
.p2align 2
label448:
	addi a4, sp, 112
	sh2add a1, s0, a4
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label448
	lw a1, 176(sp)
	lw a2, 172(sp)
	addw a0, a1, a2
	srliw a1, a0, 31
	add a2, a0, a1
	sraiw a0, a2, 1
	jal putint
	mv a1, zero
.p2align 2
label451:
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
	blt a1, a0, label451
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
	bgt a3, zero, label1739
	mv t0, zero
label1739:
	mv a0, a5
	blt a1, a4, label1741
	mv a0, t0
label1741:
	max a3, a1, a4
	sw a4, 0(a2)
	lw a1, 120(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1743
	mv a1, a0
label1743:
	max a0, a3, a2
	sw a2, 0(a4)
	lw a3, 124(sp)
	ld a2, 104(sp)
	sh2add a4, a3, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a0, a2, label1745
	mv a3, a1
label1745:
	max a1, a0, a2
	sw a2, 0(a4)
	lw a0, 128(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a1, a2, label1747
	mv a0, a3
label1747:
	max a3, a1, a2
	sw a2, 0(a4)
	lw a1, 132(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1749
	mv a1, a0
label1749:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a0, 136(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1751
	mv a0, a1
label1751:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a1, 140(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1753
	mv a1, a0
label1753:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a0, 144(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1755
	mv a0, a1
label1755:
	max a1, a3, a2
	sw a2, 0(a4)
	lw a3, 148(sp)
	ld a2, 104(sp)
	sh2add a4, a3, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a1, a2, label1757
	mv a3, a0
label1757:
	max a0, a1, a2
	sw a2, 0(a4)
	lw a1, 152(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a0, a2, label1759
	mv a1, a3
label1759:
	max a3, a0, a2
	sw a2, 0(a4)
	lw a0, 156(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1761
	mv a0, a1
label1761:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a1, 160(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1763
	mv a1, a0
label1763:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a0, 164(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1765
	mv a0, a1
label1765:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a1, 168(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1767
	mv a1, a0
label1767:
	max a0, a3, a2
	sw a2, 0(a4)
	lw a3, 172(sp)
	ld a2, 104(sp)
	sh2add a4, a3, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a0, a2, label1769
	mv a3, a1
label1769:
	max a1, a0, a2
	sw a2, 0(a4)
	lw a0, 176(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a1, a2, label1771
	mv a0, a3
label1771:
	max a3, a1, a2
	sw a2, 0(a4)
	lw a1, 180(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1773
	mv a1, a0
label1773:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a0, 184(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1775
	mv a0, a1
label1775:
	max a1, a3, a2
	sw a2, 0(a4)
	lw a3, 188(sp)
	ld a2, 104(sp)
	sh2add a4, a3, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a1, a2, label1777
	mv a3, a0
label1777:
	max a0, a1, a2
	sw a2, 0(a4)
	lw a1, 192(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a0, a2, label1779
	mv a1, a3
label1779:
	max a3, a0, a2
	sw a2, 0(a4)
	lw a0, 196(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1781
	mv a0, a1
label1781:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a1, 200(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1783
	mv a1, a0
label1783:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a0, 204(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1785
	mv a0, a1
label1785:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a1, 208(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1787
	mv a1, a0
label1787:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a0, 212(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1789
	mv a0, a1
label1789:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a1, 216(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1791
	mv a1, a0
label1791:
	max a0, a3, a2
	sw a2, 0(a4)
	lw a3, 220(sp)
	ld a2, 104(sp)
	sh2add a4, a3, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a0, a2, label1793
	mv a3, a1
label1793:
	max a1, a0, a2
	sw a2, 0(a4)
	lw a0, 224(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a1, a2, label1795
	mv a0, a3
label1795:
	max a3, a1, a2
	sw a2, 0(a4)
	lw a1, 228(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1797
	mv a1, a0
label1797:
	max a0, a3, a2
	sw a2, 0(a4)
	lw a3, 232(sp)
	ld a2, 104(sp)
	sh2add a4, a3, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a0, a2, label1799
	mv a3, a1
label1799:
	max a1, a0, a2
	sw a2, 0(a4)
	lw a0, 236(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a1, a2, label1801
	mv a0, a3
label1801:
	sw a2, 0(a4)
	jal putint
	lw a1, 240(sp)
	sw a1, 112(sp)
	lw a0, 244(sp)
	sw a0, 116(sp)
	lw a1, 248(sp)
	sw a1, 120(sp)
	lw a2, 252(sp)
	sw a2, 124(sp)
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
	mv a1, zero
	lw a2, 360(sp)
	sw a2, 232(sp)
	lw a0, 364(sp)
	sw a0, 236(sp)
	li a2, 32
	mv a3, a2
	li a2, 31
	addi a0, a3, -1
	blt zero, a2, label1078
	j label1077
.p2align 2
label445:
	addi a4, sp, 112
	sh2add t0, a2, a4
	lw a3, 0(t0)
	lw a5, 4(t0)
	addiw t0, a2, 1
	bgt a3, a5, label446
	mv a2, t0
	bgt a0, t0, label445
	j label1816
.p2align 2
label446:
	addi a4, sp, 112
	sh2add a2, a2, a4
	sw a3, 4(a2)
	sw a5, 0(a2)
	mv a2, t0
	bgt a0, t0, label445
	addiw a1, a1, 1
	li a2, 32
	subw a3, a2, a1
	li a2, 31
	addi a0, a3, -1
	blt a1, a2, label580
	j label579
label1077:
	mv s0, zero
	j label461
.p2align 2
label1078:
	mv a2, zero
	bgt a0, zero, label458
	j label1081
.p2align 2
label1819:
	addiw a1, a1, 1
	li a2, 32
	subw a3, a2, a1
	li a2, 31
	addi a0, a3, -1
	blt a1, a2, label1078
	j label1077
.p2align 2
label461:
	addi a4, sp, 112
	sh2add a1, s0, a4
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label461
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
	lw a2, 344(sp)
	sw a2, 216(sp)
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
	blt a0, a1, label494
	j label1201
.p2align 2
label458:
	addi a4, sp, 112
	sh2add t0, a2, a4
	lw a3, 0(t0)
	lw a5, 4(t0)
	addiw t0, a2, 1
	bgt a3, a5, label459
	mv a2, t0
	bgt a0, t0, label458
	j label1819
.p2align 2
label459:
	addi a4, sp, 112
	sh2add a2, a2, a4
	sw a3, 4(a2)
	sw a5, 0(a2)
	mv a2, t0
	bgt a0, t0, label458
	addiw a1, a1, 1
	li a2, 32
	subw a3, a2, a1
	li a2, 31
	addi a0, a3, -1
	blt a1, a2, label1078
	j label1077
label1201:
	mv s0, zero
.p2align 2
label466:
	addi a4, sp, 112
	sh2add a1, s0, a4
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label466
	lw a0, 240(sp)
	addi a4, sp, 112
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
	lw a2, 344(sp)
	sw a2, 216(sp)
	lw a1, 348(sp)
	sw a1, 220(sp)
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
	mv a0, a4
	jal QuickSort
	mv s0, zero
.p2align 2
label469:
	addi a4, sp, 112
	sh2add a1, s0, a4
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label469
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
	lw a1, 264(sp)
	sw a1, 136(sp)
	lw a0, 268(sp)
	sw a0, 140(sp)
	lw a1, 272(sp)
	sw a1, 144(sp)
	lw a2, 276(sp)
	sw a2, 148(sp)
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
	lw a2, 336(sp)
	sw a2, 208(sp)
	lw a1, 340(sp)
	sw a1, 212(sp)
	lw a0, 344(sp)
	sw a0, 216(sp)
	lw a1, 348(sp)
	sw a1, 220(sp)
	lw a2, 352(sp)
	sw a2, 224(sp)
	lw a0, 356(sp)
	sw a0, 228(sp)
	lw a1, 360(sp)
	sw a1, 232(sp)
	mv a1, zero
	lw a0, 364(sp)
	sw a0, 236(sp)
	mv a0, zero
	li a2, 32
	blt zero, a2, label491
	j label1409
.p2align 2
label494:
	addi a4, sp, 112
	addiw a2, a0, -1
	sh2add a3, a0, a4
	lw a1, 0(a3)
	addiw a3, a2, 1
	bge a2, zero, label498
.p2align 2
label497:
	addi a4, sp, 112
	addiw a0, a0, 1
	sh2add a2, a3, a4
	sw a1, 0(a2)
	li a1, 32
	blt a0, a1, label494
	j label1201
.p2align 2
label498:
	addi a4, sp, 112
	sh2add t0, a2, a4
	lw a5, 0(t0)
	bge a1, a5, label497
	addiw a2, a2, -1
	sh2add a3, a3, a4
	sw a5, 0(a3)
	addiw a3, a2, 1
	bge a2, zero, label498
	addiw a0, a0, 1
	sh2add a2, a3, a4
	sw a1, 0(a2)
	li a1, 32
	blt a0, a1, label494
	j label1201
.p2align 2
label491:
	addi a4, sp, 112
	sh2add a3, a0, a4
	li a4, 3
	lw a2, 0(a3)
	andi a3, a0, 3
	addw a1, a1, a2
	addiw a2, a0, 1
	bne a3, a4, label493
	addi a4, sp, 112
	sh2add a0, a0, a4
	sw a1, 0(a0)
	mv a0, a2
	mv a1, zero
	li a2, 32
	blt a0, a2, label491
	j label1409
.p2align 2
label493:
	addi a4, sp, 112
	sh2add a0, a0, a4
	sw zero, 0(a0)
	mv a0, a2
	li a2, 32
	blt a0, a2, label491
label1409:
	mv s0, zero
.p2align 2
label475:
	addi a4, sp, 112
	sh2add a1, s0, a4
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label475
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
	lw a2, 332(sp)
	sw a2, 204(sp)
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
	mv a1, zero
	lw a2, 360(sp)
	sw a2, 232(sp)
	lw a0, 364(sp)
	sw a0, 236(sp)
	mv a2, zero
	mv a0, zero
	li a3, 32
	blt zero, a3, label482
label1515:
	mv s0, zero
	sd zero, 232(sp)
	j label488
.p2align 2
label482:
	li a3, 2
	blt a0, a3, label486
	j label483
.p2align 2
label485:
	lw a1, 112(sp)
	li a4, 1431655766
	mul a0, a2, a4
	srli a4, a0, 63
	srli a3, a0, 32
	add a0, a4, a3
	sw a0, 112(sp)
	li a0, 3
	li a3, 32
	blt a0, a3, label482
	j label1515
.p2align 2
label486:
	addi a4, sp, 112
	sh2add a3, a0, a4
	addiw a0, a0, 1
	lw a5, 0(a3)
	addw a2, a2, a5
	li a3, 32
	blt a0, a3, label482
	j label1515
.p2align 2
label488:
	addi a4, sp, 112
	sh2add a1, s0, a4
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label488
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
label483:
	li a3, 2
	beq a0, a3, label485
	addi a4, sp, 112
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
	li a3, 32
	blt a0, a3, label482
	j label1515
label1081:
	addiw a1, a1, 1
	li a2, 32
	subw a3, a2, a1
	li a2, 31
	addi a0, a3, -1
	blt a1, a2, label1078
	j label1077
label583:
	addiw a1, a1, 1
	li a2, 32
	subw a3, a2, a1
	li a2, 31
	addi a0, a3, -1
	blt a1, a2, label580
	j label579
