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
	ble s1, a0, label81
	sh2add a3, a0, s0
	mv s2, a0
	lw a1, 0(a3)
	mv a3, s1
	addi a2, a1, -1
.p2align 2
label8:
	blt s2, a3, label18
	j label10
label15:
	ble a3, s2, label116
	sh2add t0, s2, s0
	sh2add a5, a3, s0
	lw a4, 0(t0)
	addiw a3, a3, -1
	sw a4, 0(a5)
	bgt a3, s2, label8
	j label94
.p2align 2
label17:
	sh2add a4, s2, s0
	sh2add t0, a3, s0
	addiw s2, s2, 1
	lw a5, 0(t0)
	sw a5, 0(a4)
	bgt a3, s2, label13
	j label384
.p2align 2
label18:
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label10
	addiw a3, a3, -1
	blt s2, a3, label18
	ble a3, s2, label94
.p2align 2
label13:
	sh2add a4, s2, s0
	lw a5, 0(a4)
	ble a1, a5, label15
	addiw s2, s2, 1
	bgt a3, s2, label13
	j label94
.p2align 2
label10:
	blt s2, a3, label17
	bgt a3, s2, label13
	j label94
label81:
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
	sw a1, 0(a2)
label21:
	bgt s3, a0, label24
	addiw a0, s2, 1
	j label2
label24:
	sh2add a3, a0, s0
	mv s4, a0
	lw a1, 0(a3)
	mv a3, s3
	addi a2, a1, -1
	ble s3, a0, label28
.p2align 2
label69:
	blt s4, a3, label71
	bgt a3, s4, label78
	j label393
.p2align 2
label77:
	sh2add t0, s4, s0
	sh2add a5, a3, s0
	lw a4, 0(t0)
	addiw a3, a3, -1
	sw a4, 0(a5)
	bgt a3, s4, label69
	j label28
.p2align 2
label78:
	sh2add a5, s4, s0
	lw a4, 0(a5)
	ble a1, a4, label76
	addiw s4, s4, 1
	bgt a3, s4, label78
	j label28
.p2align 2
label71:
	sh2add a4, a3, s0
	lw a5, 0(a4)
	bge a2, a5, label73
	addiw a3, a3, -1
	blt s4, a3, label71
	bge s4, a3, label394
.p2align 2
label80:
	sh2add a4, s4, s0
	sh2add t0, a3, s0
	addiw s4, s4, 1
	lw a5, 0(t0)
	sw a5, 0(a4)
	bgt a3, s4, label78
	j label28
.p2align 2
label394:
	bgt a3, s4, label78
	j label28
.p2align 2
label393:
	bgt a3, s4, label77
label28:
	sh2add a2, s4, s0
	addiw s5, s4, -1
	sw a1, 0(a2)
label29:
	bgt s5, a0, label32
	addiw a0, s4, 1
	j label21
label32:
	sh2add a3, a0, s0
	mv s6, a0
	lw a1, 0(a3)
	mv a3, s5
	addi a2, a1, -1
	ble s5, a0, label36
.p2align 2
label57:
	bge s6, a3, label370
.p2align 2
label59:
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label61
	addiw a3, a3, -1
	blt s6, a3, label59
	j label390
.p2align 2
label65:
	sh2add a5, s6, s0
	sh2add t0, a3, s0
	lw a4, 0(a5)
	addiw a3, a3, -1
	sw a4, 0(t0)
	bgt a3, s6, label57
	j label36
.p2align 2
label66:
	sh2add a5, s6, s0
	lw a4, 0(a5)
	ble a1, a4, label64
	addiw s6, s6, 1
	bgt a3, s6, label66
	j label391
.p2align 2
label68:
	sh2add a4, s6, s0
	sh2add a5, a3, s0
	addiw s6, s6, 1
	lw t0, 0(a5)
	sw t0, 0(a4)
	bgt a3, s6, label66
	j label36
.p2align 2
label370:
	bgt a3, s6, label66
	j label36
.p2align 2
label390:
	bgt a3, s6, label66
label36:
	sh2add a2, s6, s0
	addiw s7, s6, -1
	sw a1, 0(a2)
	mv a1, a0
label37:
	bgt s7, a1, label39
	addiw a0, s6, 1
	j label29
label39:
	sh2add a3, a1, s0
	mv s8, a1
	lw a0, 0(a3)
	mv a3, s7
	addi a2, a0, -1
	ble s7, a1, label43
.p2align 2
label44:
	blt s8, a3, label54
.p2align 2
label46:
	bge s8, a3, label194
	sh2add a4, s8, s0
	sh2add t0, a3, s0
	addiw s8, s8, 1
	lw a5, 0(t0)
	sw a5, 0(a4)
	bgt a3, s8, label52
	j label50
.p2align 2
label51:
	sh2add t0, s8, s0
	sh2add a5, a3, s0
	lw a4, 0(t0)
	addiw a3, a3, -1
	sw a4, 0(a5)
	bgt a3, s8, label44
	j label43
.p2align 2
label52:
	sh2add a5, s8, s0
	lw a4, 0(a5)
	ble a0, a4, label50
	addiw s8, s8, 1
	bgt a3, s8, label52
	j label43
.p2align 2
label54:
	sh2add a4, a3, s0
	lw a5, 0(a4)
	bge a2, a5, label46
	addiw a3, a3, -1
	blt s8, a3, label54
	bgt a3, s8, label52
	j label43
.p2align 2
label50:
	bgt a3, s8, label51
	j label43
.p2align 2
label194:
	bgt a3, s8, label52
	j label43
label73:
	blt s4, a3, label80
	bgt a3, s4, label78
label76:
	bgt a3, s4, label77
	j label294
label61:
	blt s6, a3, label68
	bgt a3, s6, label66
label64:
	bgt a3, s6, label65
	j label252
label43:
	sh2add a4, s8, s0
	addiw a2, s8, -1
	sw a0, 0(a4)
	mv a0, s0
	jal QuickSort
	addiw a1, s8, 1
	j label37
.p2align 2
label391:
	bgt a3, s6, label57
	j label36
.p2align 2
label384:
	bgt a3, s2, label8
	j label94
label294:
	bgt a3, s4, label69
	j label28
label252:
	bgt a3, s6, label57
	j label36
label116:
	bgt a3, s2, label8
	j label94
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
pcrel1877:
	auipc a0, %pcrel_hi(count)
	sw s10, 236(sp)
	addi a2, a0, %pcrel_lo(pcrel1877)
	sd a2, 104(sp)
.p2align 2
label449:
	addi a5, sp, 112
	sh2add a1, s0, a5
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label449
	mv a1, zero
	li a3, 32
	mv a2, a3
	li a3, 31
	addi a0, a2, -1
	bge zero, a3, label589
.p2align 2
label590:
	mv a2, zero
	ble a0, zero, label593
.p2align 2
label455:
	addi a5, sp, 112
	sh2add t0, a2, a5
	lw a3, 0(t0)
	lw a4, 4(t0)
	addiw t0, a2, 1
	bgt a3, a4, label456
	mv a2, t0
	bgt a0, t0, label455
	j label1826
.p2align 2
label456:
	addi a5, sp, 112
	sh2add a2, a2, a5
	sw a3, 4(a2)
	sw a4, 0(a2)
	mv a2, t0
	bgt a0, t0, label455
	addiw a1, a1, 1
	li a3, 32
	subw a2, a3, a1
	li a3, 31
	addi a0, a2, -1
	blt a1, a3, label590
label589:
	mv s0, zero
	j label458
.p2align 2
label1826:
	addiw a1, a1, 1
	li a3, 32
	subw a2, a3, a1
	li a3, 31
	addi a0, a2, -1
	blt a1, a3, label590
	j label589
.p2align 2
label458:
	addi a5, sp, 112
	sh2add a1, s0, a5
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label458
	lw a1, 176(sp)
	lw a2, 172(sp)
	addw a0, a1, a2
	srliw a1, a0, 31
	add a2, a0, a1
	sraiw a0, a2, 1
	jal putint
	mv a1, zero
.p2align 2
label461:
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
	blt a1, a0, label461
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
	bgt a1, zero, label1749
	mv a0, zero
label1749:
	mv a1, a5
	blt a3, a4, label1751
	mv a1, a0
label1751:
	max a3, a3, a4
	sw a4, 0(a2)
	lw a0, 120(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1753
	mv a0, a1
label1753:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a1, 124(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1755
	mv a1, a0
label1755:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a0, 128(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1757
	mv a0, a1
label1757:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a1, 132(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1759
	mv a1, a0
label1759:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a0, 136(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1761
	mv a0, a1
label1761:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a1, 140(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1763
	mv a1, a0
label1763:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a0, 144(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1765
	mv a0, a1
label1765:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a1, 148(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1767
	mv a1, a0
label1767:
	max a0, a3, a2
	sw a2, 0(a4)
	lw a3, 152(sp)
	ld a2, 104(sp)
	sh2add a4, a3, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a0, a2, label1769
	mv a3, a1
label1769:
	max a1, a0, a2
	sw a2, 0(a4)
	lw a0, 156(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a1, a2, label1771
	mv a0, a3
label1771:
	max a3, a1, a2
	sw a2, 0(a4)
	lw a1, 160(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1773
	mv a1, a0
label1773:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a0, 164(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1775
	mv a0, a1
label1775:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a1, 168(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1777
	mv a1, a0
label1777:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a0, 172(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1779
	mv a0, a1
label1779:
	max a1, a3, a2
	sw a2, 0(a4)
	lw a3, 176(sp)
	ld a2, 104(sp)
	sh2add a4, a3, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a1, a2, label1781
	mv a3, a0
label1781:
	max a0, a1, a2
	sw a2, 0(a4)
	lw a1, 180(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a0, a2, label1783
	mv a1, a3
label1783:
	max a3, a0, a2
	sw a2, 0(a4)
	lw a0, 184(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1785
	mv a0, a1
label1785:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a1, 188(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1787
	mv a1, a0
label1787:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a0, 192(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1789
	mv a0, a1
label1789:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a1, 196(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1791
	mv a1, a0
label1791:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a0, 200(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1793
	mv a0, a1
label1793:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a1, 204(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1795
	mv a1, a0
label1795:
	max a0, a3, a2
	sw a2, 0(a4)
	lw a3, 208(sp)
	ld a2, 104(sp)
	sh2add a4, a3, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a0, a2, label1797
	mv a3, a1
label1797:
	max a1, a0, a2
	sw a2, 0(a4)
	lw a0, 212(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a1, a2, label1799
	mv a0, a3
label1799:
	max a3, a1, a2
	sw a2, 0(a4)
	lw a1, 216(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1801
	mv a1, a0
label1801:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a0, 220(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1803
	mv a0, a1
label1803:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a1, 224(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1805
	mv a1, a0
label1805:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a0, 228(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1807
	mv a0, a1
label1807:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a1, 232(sp)
	ld a2, 104(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1809
	mv a1, a0
label1809:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a0, 236(sp)
	ld a2, 104(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1811
	mv a0, a1
label1811:
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
	li a3, 32
	mv a2, a3
	li a3, 31
	addi a0, a2, -1
	blt zero, a3, label1088
label1087:
	mv s0, zero
	j label471
.p2align 2
label1088:
	mv a2, zero
	ble a0, zero, label1091
.p2align 2
label468:
	addi a5, sp, 112
	sh2add t0, a2, a5
	lw a3, 0(t0)
	lw a4, 4(t0)
	addiw t0, a2, 1
	bgt a3, a4, label469
	mv a2, t0
	bgt a0, t0, label468
	j label1829
.p2align 2
label469:
	addi a5, sp, 112
	sh2add a2, a2, a5
	sw a3, 4(a2)
	sw a4, 0(a2)
	mv a2, t0
	bgt a0, t0, label468
	addiw a1, a1, 1
	li a3, 32
	subw a2, a3, a1
	li a3, 31
	addi a0, a2, -1
	blt a1, a3, label1088
	j label1087
.p2align 2
label471:
	addi a5, sp, 112
	sh2add a1, s0, a5
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label471
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
	blt a0, a1, label504
label1211:
	mv s0, zero
.p2align 2
label476:
	addi a5, sp, 112
	sh2add a1, s0, a5
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label476
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
	lw a1, 332(sp)
	sw a1, 204(sp)
	lw a2, 336(sp)
	sw a2, 208(sp)
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
	mv a0, a5
	jal QuickSort
	mv s0, zero
.p2align 2
label479:
	addi a5, sp, 112
	sh2add a1, s0, a5
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label479
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
	lw a1, 336(sp)
	sw a1, 208(sp)
	lw a0, 340(sp)
	sw a0, 212(sp)
	lw a1, 344(sp)
	sw a1, 216(sp)
	lw a0, 348(sp)
	sw a0, 220(sp)
	lw a2, 352(sp)
	sw a2, 224(sp)
	lw a1, 356(sp)
	sw a1, 228(sp)
	mv a1, zero
	lw a0, 360(sp)
	sw a0, 232(sp)
	lw a2, 364(sp)
	sw a2, 236(sp)
	mv a0, zero
	li a2, 32
	blt zero, a2, label501
	j label1419
.p2align 2
label504:
	addi a5, sp, 112
	addiw a2, a0, -1
	sh2add a3, a0, a5
	lw a1, 0(a3)
	addiw a3, a2, 1
	bge a2, zero, label508
.p2align 2
label507:
	addi a5, sp, 112
	addiw a0, a0, 1
	sh2add a2, a3, a5
	sw a1, 0(a2)
	li a1, 32
	blt a0, a1, label504
	j label1211
.p2align 2
label508:
	addi a5, sp, 112
	sh2add t0, a2, a5
	lw a4, 0(t0)
	bge a1, a4, label507
	addiw a2, a2, -1
	sh2add a3, a3, a5
	sw a4, 0(a3)
	addiw a3, a2, 1
	bge a2, zero, label508
	addiw a0, a0, 1
	sh2add a2, a3, a5
	sw a1, 0(a2)
	li a1, 32
	blt a0, a1, label504
	j label1211
label1419:
	mv s0, zero
.p2align 2
label485:
	addi a5, sp, 112
	sh2add a1, s0, a5
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label485
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
	lw a2, 264(sp)
	sw a2, 136(sp)
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
	blt zero, a3, label492
	j label1525
.p2align 2
label501:
	addi a5, sp, 112
	li a4, 3
	sh2add a3, a0, a5
	lw a2, 0(a3)
	andi a3, a0, 3
	addw a1, a1, a2
	addiw a2, a0, 1
	bne a3, a4, label503
	sh2add a0, a0, a5
	sw a1, 0(a0)
	mv a0, a2
	mv a1, zero
	li a2, 32
	blt a0, a2, label501
	j label1419
.p2align 2
label503:
	addi a5, sp, 112
	sh2add a0, a0, a5
	sw zero, 0(a0)
	mv a0, a2
	li a2, 32
	blt a0, a2, label501
	j label1419
label1525:
	mv s0, zero
	sd zero, 232(sp)
	j label498
.p2align 2
label492:
	li a3, 2
	blt a0, a3, label496
	beq a0, a3, label494
	addi a5, sp, 112
	li t0, 1431655766
	sh2add a3, a0, a5
	addiw a0, a0, 1
	lw a4, 0(a3)
	addw a5, a1, a4
	subw a1, a5, a2
	mul a2, a1, t0
	srli t0, a2, 63
	srli a4, a2, 32
	lw a2, -8(a3)
	add a5, t0, a4
	sw a5, -8(a3)
	li a3, 32
	blt a0, a3, label492
	j label1525
.p2align 2
label496:
	addi a5, sp, 112
	sh2add a4, a0, a5
	addiw a0, a0, 1
	lw a3, 0(a4)
	addw a1, a1, a3
	li a3, 32
	blt a0, a3, label492
	j label1525
.p2align 2
label498:
	addi a5, sp, 112
	sh2add a1, s0, a5
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label498
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
label1829:
	addiw a1, a1, 1
	li a3, 32
	subw a2, a3, a1
	li a3, 31
	addi a0, a2, -1
	blt a1, a3, label1088
	j label1087
.p2align 2
label494:
	lw a2, 112(sp)
	li a4, 1431655766
	mul a0, a1, a4
	srli a4, a0, 63
	srli a3, a0, 32
	add a0, a4, a3
	sw a0, 112(sp)
	li a0, 3
	li a3, 32
	blt a0, a3, label492
	j label1525
label1091:
	addiw a1, a1, 1
	li a3, 32
	subw a2, a3, a1
	li a3, 31
	addi a0, a2, -1
	blt a1, a3, label1088
	j label1087
label593:
	addiw a1, a1, 1
	li a3, 32
	subw a2, a3, a1
	li a3, 31
	addi a0, a2, -1
	blt a1, a3, label590
	j label589
