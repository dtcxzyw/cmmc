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
	sd s0, 72(sp)
	mv s0, a0
	sd s5, 64(sp)
	sd s1, 56(sp)
	mv s1, a2
	sd s6, 48(sp)
	sd s2, 40(sp)
	sd s3, 32(sp)
	sd s4, 24(sp)
	sd s7, 16(sp)
	sd s8, 8(sp)
	sd ra, 0(sp)
label2:
	ble s1, a1, label4
	sh2add a3, a1, s0
	mv s2, a1
	lw a0, 0(a3)
	mv a3, s1
	addi a2, a0, -1
	j label6
label4:
	ld ra, 0(sp)
	ld s8, 8(sp)
	ld s7, 16(sp)
	ld s4, 24(sp)
	ld s3, 32(sp)
	ld s2, 40(sp)
	ld s6, 48(sp)
	ld s1, 56(sp)
	ld s5, 64(sp)
	ld s0, 72(sp)
	addi sp, sp, 80
	ret
.p2align 2
label6:
	bgt a3, s2, label70
	sh2add a2, s2, s0
	addiw s3, s2, -1
	sw a0, 0(a2)
	bgt s3, a1, label102
label402:
	addiw a1, s2, 1
	j label2
.p2align 2
label70:
	blt s2, a3, label80
	bgt a3, s2, label75
	sh2add a2, s2, s0
	addiw s3, s2, -1
	sw a0, 0(a2)
	bgt s3, a1, label102
	j label402
.p2align 2
label80:
	sh2add a4, a3, s0
	lw a5, 0(a4)
	blt a2, a5, label81
	blt s2, a3, label79
	bgt a3, s2, label75
	sh2add a2, s2, s0
	addiw s3, s2, -1
	sw a0, 0(a2)
	bgt s3, a1, label102
	j label402
.p2align 2
label78:
	sh2add a5, s2, s0
	sh2add t0, a3, s0
	lw a4, 0(a5)
	addiw a3, a3, -1
	sw a4, 0(t0)
	bgt a3, s2, label70
	sh2add a2, s2, s0
	addiw s3, s2, -1
	sw a0, 0(a2)
	bgt s3, a1, label102
	j label402
label10:
	ble s3, a1, label402
label102:
	sh2add a3, a1, s0
	mv s4, a1
	lw a0, 0(a3)
	mv a3, s3
	addi a2, a0, -1
	bgt s3, a1, label58
	sh2add a2, a1, s0
	addiw s5, a1, -1
	sw a0, 0(a2)
	bgt s5, a1, label118
label403:
	addiw a1, s4, 1
	j label10
.p2align 2
label58:
	blt s4, a3, label60
	bgt a3, s4, label67
	sh2add a2, s4, s0
	addiw s5, s4, -1
	sw a0, 0(a2)
	bgt s5, a1, label118
	j label403
.p2align 2
label67:
	sh2add a4, s4, s0
	lw a5, 0(a4)
	bgt a0, a5, label68
	bgt a3, s4, label66
	sh2add a2, s4, s0
	addiw s5, s4, -1
	sw a0, 0(a2)
	bgt s5, a1, label118
	j label403
.p2align 2
label66:
	sh2add t0, s4, s0
	sh2add a5, a3, s0
	lw a4, 0(t0)
	addiw a3, a3, -1
	sw a4, 0(a5)
	bgt a3, s4, label58
	sh2add a2, s4, s0
	addiw s5, s4, -1
	sw a0, 0(a2)
	ble s5, a1, label403
label118:
	sh2add a3, a1, s0
	mv s6, a1
	lw a0, 0(a3)
	mv a3, s5
	addi a2, a0, -1
	bgt s5, a1, label25
	sh2add a2, a1, s0
	addiw s7, a1, -1
	sw a0, 0(a2)
	bgt s7, a1, label40
label404:
	addiw a1, s6, 1
	j label18
.p2align 2
label25:
	blt s6, a3, label27
	bgt a3, s6, label35
	sh2add a2, s6, s0
	addiw s7, s6, -1
	sw a0, 0(a2)
	ble s7, a1, label404
label40:
	sh2add a3, a1, s0
	mv s8, a1
	lw a0, 0(a3)
	mv a3, s7
	addi a2, a0, -1
	ble s7, a1, label44
.p2align 2
label45:
	blt s8, a3, label55
	bgt a3, s8, label53
	j label44
.p2align 2
label55:
	sh2add a5, a3, s0
	lw a4, 0(a5)
	blt a2, a4, label56
	blt s8, a3, label48
	bgt a3, s8, label53
	j label44
.p2align 2
label68:
	addiw s4, s4, 1
	bgt a3, s4, label67
	sh2add a2, s4, s0
	addiw s5, s4, -1
	sw a0, 0(a2)
	bgt s5, a1, label118
	j label403
.p2align 2
label30:
	sh2add a4, s6, s0
	sh2add a5, a3, s0
	addiw s6, s6, 1
	lw t0, 0(a5)
	sw t0, 0(a4)
	bgt a3, s6, label35
	sh2add a2, s6, s0
	addiw s7, s6, -1
	sw a0, 0(a2)
	bgt s7, a1, label40
	j label404
.p2align 2
label35:
	sh2add a5, s6, s0
	lw a4, 0(a5)
	bgt a0, a4, label36
	bgt a3, s6, label34
	sh2add a2, s6, s0
	addiw s7, s6, -1
	sw a0, 0(a2)
	bgt s7, a1, label40
	j label404
label44:
	sh2add a4, s8, s0
	addiw a2, s8, -1
	sw a0, 0(a4)
	mv a0, s0
	jal QuickSort
	addiw a1, s8, 1
	j label38
.p2align 2
label48:
	sh2add a4, s8, s0
	sh2add t0, a3, s0
	addiw s8, s8, 1
	lw a5, 0(t0)
	sw a5, 0(a4)
	ble a3, s8, label44
.p2align 2
label53:
	sh2add a4, s8, s0
	lw a5, 0(a4)
	bgt a0, a5, label54
	bgt a3, s8, label52
	j label44
.p2align 2
label34:
	sh2add t0, s6, s0
	sh2add a5, a3, s0
	lw a4, 0(t0)
	addiw a3, a3, -1
	sw a4, 0(a5)
	bgt a3, s6, label25
	sh2add a2, s6, s0
	addiw s7, s6, -1
	sw a0, 0(a2)
	bgt s7, a1, label40
	j label404
.p2align 2
label52:
	sh2add a5, s8, s0
	sh2add t0, a3, s0
	lw a4, 0(a5)
	addiw a3, a3, -1
	sw a4, 0(t0)
	bgt a3, s8, label45
	j label44
.p2align 2
label36:
	addiw s6, s6, 1
	bgt a3, s6, label35
	sh2add a2, s6, s0
	addiw s7, s6, -1
	sw a0, 0(a2)
	bgt s7, a1, label40
	j label404
.p2align 2
label27:
	sh2add a5, a3, s0
	lw a4, 0(a5)
	blt a2, a4, label28
	blt s6, a3, label30
	bgt a3, s6, label35
	sh2add a2, s6, s0
	addiw s7, s6, -1
	sw a0, 0(a2)
	bgt s7, a1, label40
	j label404
.p2align 2
label28:
	addiw a3, a3, -1
	blt s6, a3, label27
	bgt a3, s6, label35
	sh2add a2, s6, s0
	addiw s7, s6, -1
	sw a0, 0(a2)
	bgt s7, a1, label40
	j label404
.p2align 2
label60:
	sh2add a5, a3, s0
	lw a4, 0(a5)
	blt a2, a4, label61
	blt s4, a3, label69
	bgt a3, s4, label67
	sh2add a2, s4, s0
	addiw s5, s4, -1
	sw a0, 0(a2)
	bgt s5, a1, label118
	j label403
.p2align 2
label61:
	addiw a3, a3, -1
	blt s4, a3, label60
	bgt a3, s4, label67
	sh2add a2, s4, s0
	addiw s5, s4, -1
	sw a0, 0(a2)
	bgt s5, a1, label118
	j label403
.p2align 2
label81:
	addiw a3, a3, -1
	blt s2, a3, label80
	bgt a3, s2, label75
	sh2add a2, s2, s0
	addiw s3, s2, -1
	sw a0, 0(a2)
	bgt s3, a1, label102
	j label402
.p2align 2
label75:
	sh2add a5, s2, s0
	lw a4, 0(a5)
	bgt a0, a4, label76
	bgt a3, s2, label78
	sh2add a2, s2, s0
	addiw s3, s2, -1
	sw a0, 0(a2)
	bgt s3, a1, label102
	j label402
.p2align 2
label76:
	addiw s2, s2, 1
	bgt a3, s2, label75
	sh2add a2, s2, s0
	addiw s3, s2, -1
	sw a0, 0(a2)
	bgt s3, a1, label102
	j label402
.p2align 2
label54:
	addiw s8, s8, 1
	bgt a3, s8, label53
	j label44
.p2align 2
label56:
	addiw a3, a3, -1
	blt s8, a3, label55
	bgt a3, s8, label53
	j label44
.p2align 2
label69:
	sh2add a4, s4, s0
	sh2add a5, a3, s0
	addiw s4, s4, 1
	lw t0, 0(a5)
	sw t0, 0(a4)
	bgt a3, s4, label67
	sh2add a2, s4, s0
	addiw s5, s4, -1
	sw a0, 0(a2)
	bgt s5, a1, label118
	j label403
.p2align 2
label79:
	sh2add a4, s2, s0
	sh2add t0, a3, s0
	addiw s2, s2, 1
	lw a5, 0(t0)
	sw a5, 0(a4)
	bgt a3, s2, label75
	sh2add a2, s2, s0
	addiw s3, s2, -1
	sw a0, 0(a2)
	bgt s3, a1, label102
	j label402
label38:
	bgt s7, a1, label40
	j label404
label18:
	bgt s5, a1, label118
	j label403
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
	sd s0, 24(sp)
	li s0, 264
	sd s5, 40(sp)
	li s5, 929
	sd s1, 48(sp)
	li s1, 639
	sd s6, 0(sp)
	li s6, 36
	sd s2, 8(sp)
	li s2, 459
	sd s3, 16(sp)
	li s3, 29
	sd s4, 360(sp)
	li s4, 68
	sd s11, 352(sp)
	li s11, 756
	sd s7, 344(sp)
	li s7, 39
	sd s8, 208(sp)
	li s8, 28
	sd s9, 200(sp)
	li s9, 1
	sd s10, 64(sp)
	li s10, 290
	sd ra, 56(sp)
	sw a0, 216(sp)
	sw a1, 220(sp)
	sw a2, 224(sp)
	sw a3, 228(sp)
	sw a4, 232(sp)
	sw a5, 236(sp)
	sw t0, 240(sp)
	sw t1, 244(sp)
	sw t2, 248(sp)
	sw t3, 252(sp)
	sw t4, 256(sp)
	sw t5, 260(sp)
	sw t6, 264(sp)
	sw a6, 268(sp)
	sw a7, 272(sp)
	sw s0, 276(sp)
	sw s1, 280(sp)
	sw s2, 284(sp)
	sw s3, 288(sp)
	sw s4, 292(sp)
	sw s5, 296(sp)
	sw s11, 300(sp)
	li s11, 452
	sw s11, 304(sp)
	li s11, 279
	sw s11, 308(sp)
	li s11, 58
	sw s11, 312(sp)
	li s11, 87
	sw s11, 316(sp)
	li s11, 96
	sw s11, 320(sp)
	li s11, 756
	sw s6, 324(sp)
	sw s7, 328(sp)
	sw s8, 332(sp)
	sw s9, 336(sp)
	sw s10, 340(sp)
	sw a0, 72(sp)
pcrel1937:
	auipc a0, %pcrel_hi(count)
	sw a1, 76(sp)
	sw a2, 80(sp)
	addi a2, a0, %pcrel_lo(pcrel1937)
	sw a3, 84(sp)
	sw a4, 88(sp)
	sw a5, 92(sp)
	sw t0, 96(sp)
	sw t1, 100(sp)
	sw t2, 104(sp)
	sw t3, 108(sp)
	sw t4, 112(sp)
	sw t5, 116(sp)
	sw t6, 120(sp)
	sw a6, 124(sp)
	sw a7, 128(sp)
	sw s0, 132(sp)
	mv s0, zero
	sw s1, 136(sp)
	sw s2, 140(sp)
	sw s3, 144(sp)
	sw s4, 148(sp)
	sw s5, 152(sp)
	sw s11, 156(sp)
	li s11, 452
	sw s11, 160(sp)
	li s11, 279
	sw s11, 164(sp)
	li s11, 58
	sw s11, 168(sp)
	li s11, 87
	sw s11, 172(sp)
	li s11, 96
	sw s11, 176(sp)
	sw s6, 180(sp)
	sw s7, 184(sp)
	sw s8, 188(sp)
	sw s9, 192(sp)
	sw s10, 196(sp)
	sd a2, 32(sp)
.p2align 2
label520:
	addi a4, sp, 72
	sh2add a1, s0, a4
	lw a0, 0(a1)
	jal putint
	li a1, 32
	addiw s0, s0, 1
	blt s0, a1, label520
	mv a0, zero
	li a3, 32
	mv a2, a3
	li a3, 31
	addi a1, a2, -1
	blt zero, a3, label661
.p2align 2
label1897:
	mv s0, zero
.p2align 2
label524:
	addi a4, sp, 72
	sh2add a1, s0, a4
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label524
	lw a1, 136(sp)
	lw a2, 132(sp)
	addw a0, a1, a2
	srliw a1, a0, 31
	add a2, a0, a1
	sraiw a0, a2, 1
	jal putint
	mv a1, zero
.p2align 2
label527:
	ld a2, 32(sp)
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
	blt a1, a0, label527
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
	lw a0, 72(sp)
	sh2add a3, a0, a2
	lw a4, 0(a3)
	addiw a1, a4, 1
	sw a1, 0(a3)
	lw a5, 76(sp)
	max a3, a1, zero
	sh2add a2, a5, a2
	lw t0, 0(a2)
	addiw a4, t0, 1
	bgt a1, zero, label1820
	mv a0, zero
label1820:
	mv a1, a5
	blt a3, a4, label1822
	mv a1, a0
label1822:
	max a3, a3, a4
	sw a4, 0(a2)
	lw a0, 80(sp)
	ld a2, 32(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1824
	mv a0, a1
label1824:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a1, 84(sp)
	ld a2, 32(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1826
	mv a1, a0
label1826:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a0, 88(sp)
	ld a2, 32(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1828
	mv a0, a1
label1828:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a1, 92(sp)
	ld a2, 32(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1830
	mv a1, a0
label1830:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a0, 96(sp)
	ld a2, 32(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1832
	mv a0, a1
label1832:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a1, 100(sp)
	ld a2, 32(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1834
	mv a1, a0
label1834:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a0, 104(sp)
	ld a2, 32(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1836
	mv a0, a1
label1836:
	max a1, a3, a2
	sw a2, 0(a4)
	lw a3, 108(sp)
	ld a2, 32(sp)
	sh2add a4, a3, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a1, a2, label1838
	mv a3, a0
label1838:
	max a0, a1, a2
	sw a2, 0(a4)
	lw a1, 112(sp)
	ld a2, 32(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a0, a2, label1840
	mv a1, a3
label1840:
	max a3, a0, a2
	sw a2, 0(a4)
	lw a0, 116(sp)
	ld a2, 32(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1842
	mv a0, a1
label1842:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a1, 120(sp)
	ld a2, 32(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1844
	mv a1, a0
label1844:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a0, 124(sp)
	ld a2, 32(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1846
	mv a0, a1
label1846:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a1, 128(sp)
	ld a2, 32(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1848
	mv a1, a0
label1848:
	max a0, a3, a2
	sw a2, 0(a4)
	lw a3, 132(sp)
	ld a2, 32(sp)
	sh2add a4, a3, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a0, a2, label1850
	mv a3, a1
label1850:
	max a1, a0, a2
	sw a2, 0(a4)
	lw a0, 136(sp)
	ld a2, 32(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a1, a2, label1852
	mv a0, a3
label1852:
	max a1, a1, a2
	sw a2, 0(a4)
	lw a3, 140(sp)
	ld a2, 32(sp)
	sh2add a4, a3, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a1, a2, label1854
	mv a3, a0
label1854:
	max a0, a1, a2
	sw a2, 0(a4)
	lw a1, 144(sp)
	ld a2, 32(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a0, a2, label1856
	mv a1, a3
label1856:
	max a3, a0, a2
	sw a2, 0(a4)
	lw a0, 148(sp)
	ld a2, 32(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1858
	mv a0, a1
label1858:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a1, 152(sp)
	ld a2, 32(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1860
	mv a1, a0
label1860:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a0, 156(sp)
	ld a2, 32(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1862
	mv a0, a1
label1862:
	max a1, a3, a2
	sw a2, 0(a4)
	lw a3, 160(sp)
	ld a2, 32(sp)
	sh2add a4, a3, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a1, a2, label1864
	mv a3, a0
label1864:
	max a0, a1, a2
	sw a2, 0(a4)
	lw a1, 164(sp)
	ld a2, 32(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a0, a2, label1866
	mv a1, a3
label1866:
	max a3, a0, a2
	sw a2, 0(a4)
	lw a0, 168(sp)
	ld a2, 32(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1868
	mv a0, a1
label1868:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a1, 172(sp)
	ld a2, 32(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1870
	mv a1, a0
label1870:
	max a0, a3, a2
	sw a2, 0(a4)
	lw a3, 176(sp)
	ld a2, 32(sp)
	sh2add a4, a3, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a0, a2, label1872
	mv a3, a1
label1872:
	max a1, a0, a2
	sw a2, 0(a4)
	lw a0, 180(sp)
	ld a2, 32(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a1, a2, label1874
	mv a0, a3
label1874:
	max a3, a1, a2
	sw a2, 0(a4)
	lw a1, 184(sp)
	ld a2, 32(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1876
	mv a1, a0
label1876:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a0, 188(sp)
	ld a2, 32(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1878
	mv a0, a1
label1878:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a1, 192(sp)
	ld a2, 32(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1880
	mv a1, a0
label1880:
	max a3, a3, a2
	sw a2, 0(a4)
	lw a0, 196(sp)
	ld a2, 32(sp)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	addiw a2, a5, 1
	blt a3, a2, label1882
	mv a0, a1
label1882:
	sw a2, 0(a4)
	jal putint
	lw a1, 216(sp)
	sw a1, 72(sp)
	lw a0, 220(sp)
	sw a0, 76(sp)
	lw a1, 224(sp)
	sw a1, 80(sp)
	lw a0, 228(sp)
	sw a0, 84(sp)
	lw a1, 232(sp)
	sw a1, 88(sp)
	lw a0, 236(sp)
	sw a0, 92(sp)
	lw a1, 240(sp)
	sw a1, 96(sp)
	lw a0, 244(sp)
	sw a0, 100(sp)
	lw a1, 248(sp)
	sw a1, 104(sp)
	lw a0, 252(sp)
	sw a0, 108(sp)
	lw a1, 256(sp)
	sw a1, 112(sp)
	lw a0, 260(sp)
	sw a0, 116(sp)
	lw a1, 264(sp)
	sw a1, 120(sp)
	lw a0, 268(sp)
	sw a0, 124(sp)
	lw a1, 272(sp)
	sw a1, 128(sp)
	lw a0, 276(sp)
	sw a0, 132(sp)
	lw a1, 280(sp)
	sw a1, 136(sp)
	lw a0, 284(sp)
	sw a0, 140(sp)
	lw a1, 288(sp)
	sw a1, 144(sp)
	lw a0, 292(sp)
	sw a0, 148(sp)
	lw a1, 296(sp)
	sw a1, 152(sp)
	lw a0, 300(sp)
	sw a0, 156(sp)
	lw a1, 304(sp)
	sw a1, 160(sp)
	lw a0, 308(sp)
	sw a0, 164(sp)
	lw a1, 312(sp)
	sw a1, 168(sp)
	lw a0, 316(sp)
	sw a0, 172(sp)
	lw a1, 320(sp)
	sw a1, 176(sp)
	lw a2, 324(sp)
	sw a2, 180(sp)
	lw a0, 328(sp)
	sw a0, 184(sp)
	lw a1, 332(sp)
	sw a1, 188(sp)
	lw a0, 336(sp)
	sw a0, 192(sp)
	mv a0, zero
	lw a1, 340(sp)
	sw a1, 196(sp)
	li a2, 32
	mv a3, a2
	li a2, 31
	addi a1, a3, -1
	blt zero, a2, label1141
	j label1140
.p2align 2
label580:
	addi a4, sp, 72
	sh2add a2, a2, a4
	sw a3, 4(a2)
	sw a5, 0(a2)
	mv a2, t0
	bgt a1, t0, label579
	addiw a0, a0, 1
	li a3, 32
	subw a2, a3, a0
	li a3, 31
	addi a1, a2, -1
	blt a0, a3, label661
	j label1897
.p2align 2
label1140:
	mv s0, zero
.p2align 2
label537:
	addi a4, sp, 72
	sh2add a1, s0, a4
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label537
	lw a0, 216(sp)
	sw a0, 72(sp)
	lw a1, 220(sp)
	sw a1, 76(sp)
	lw a0, 224(sp)
	sw a0, 80(sp)
	lw a1, 228(sp)
	sw a1, 84(sp)
	lw a0, 232(sp)
	sw a0, 88(sp)
	lw a1, 236(sp)
	sw a1, 92(sp)
	lw a0, 240(sp)
	sw a0, 96(sp)
	lw a1, 244(sp)
	sw a1, 100(sp)
	lw a0, 248(sp)
	sw a0, 104(sp)
	lw a1, 252(sp)
	sw a1, 108(sp)
	lw a0, 256(sp)
	sw a0, 112(sp)
	lw a1, 260(sp)
	sw a1, 116(sp)
	lw a2, 264(sp)
	sw a2, 120(sp)
	lw a0, 268(sp)
	sw a0, 124(sp)
	lw a1, 272(sp)
	sw a1, 128(sp)
	lw a0, 276(sp)
	sw a0, 132(sp)
	lw a1, 280(sp)
	sw a1, 136(sp)
	lw a0, 284(sp)
	sw a0, 140(sp)
	lw a1, 288(sp)
	sw a1, 144(sp)
	lw a0, 292(sp)
	sw a0, 148(sp)
	lw a1, 296(sp)
	sw a1, 152(sp)
	lw a0, 300(sp)
	sw a0, 156(sp)
	lw a1, 304(sp)
	sw a1, 160(sp)
	lw a0, 308(sp)
	sw a0, 164(sp)
	lw a1, 312(sp)
	sw a1, 168(sp)
	lw a0, 316(sp)
	sw a0, 172(sp)
	lw a1, 320(sp)
	sw a1, 176(sp)
	lw a0, 324(sp)
	sw a0, 180(sp)
	lw a1, 328(sp)
	sw a1, 184(sp)
	lw a2, 332(sp)
	sw a2, 188(sp)
	lw a0, 336(sp)
	sw a0, 192(sp)
	li a0, 1
	lw a1, 340(sp)
	sw a1, 196(sp)
	li a1, 32
	bge a0, a1, label1264
.p2align 2
label570:
	addi a4, sp, 72
	addiw a2, a0, -1
	sh2add a3, a0, a4
	lw a1, 0(a3)
	addiw a3, a2, 1
	bge a2, zero, label574
	addiw a0, a0, 1
	sh2add a2, a3, a4
	sw a1, 0(a2)
	li a1, 32
	blt a0, a1, label570
	j label1264
.p2align 2
label574:
	addi a4, sp, 72
	sh2add t0, a2, a4
	lw a5, 0(t0)
	blt a1, a5, label575
	addiw a0, a0, 1
	sh2add a2, a3, a4
	sw a1, 0(a2)
	li a1, 32
	blt a0, a1, label570
	j label1264
.p2align 2
label579:
	addi a4, sp, 72
	sh2add t0, a2, a4
	lw a3, 0(t0)
	lw a5, 4(t0)
	addiw t0, a2, 1
	bgt a3, a5, label580
	mv a2, t0
	bgt a1, t0, label579
	addiw a0, a0, 1
	li a3, 32
	subw a2, a3, a0
	li a3, 31
	addi a1, a2, -1
	blt a0, a3, label661
	j label1897
.p2align 2
label1141:
	mv a2, zero
	bgt a1, zero, label534
	addiw a0, a0, 1
	li a2, 32
	subw a3, a2, a0
	li a2, 31
	addi a1, a3, -1
	blt a0, a2, label1141
	j label1140
.p2align 2
label534:
	addi a4, sp, 72
	sh2add t0, a2, a4
	lw a3, 0(t0)
	lw a5, 4(t0)
	addiw t0, a2, 1
	bgt a3, a5, label535
	mv a2, t0
	bgt a1, t0, label534
	addiw a0, a0, 1
	li a2, 32
	subw a3, a2, a0
	li a2, 31
	addi a1, a3, -1
	blt a0, a2, label1141
	j label1140
.p2align 2
label535:
	addi a4, sp, 72
	sh2add a2, a2, a4
	sw a3, 4(a2)
	sw a5, 0(a2)
	mv a2, t0
	bgt a1, t0, label534
	addiw a0, a0, 1
	li a2, 32
	subw a3, a2, a0
	li a2, 31
	addi a1, a3, -1
	blt a0, a2, label1141
	j label1140
.p2align 2
label661:
	mv a2, zero
	bgt a1, zero, label579
	addiw a0, a0, 1
	li a3, 32
	subw a2, a3, a0
	li a3, 31
	addi a1, a2, -1
	blt a0, a3, label661
	j label1897
.p2align 2
label575:
	addi a4, sp, 72
	addiw a2, a2, -1
	sh2add a3, a3, a4
	sw a5, 0(a3)
	addiw a3, a2, 1
	bge a2, zero, label574
	addiw a0, a0, 1
	sh2add a2, a3, a4
	sw a1, 0(a2)
	li a1, 32
	blt a0, a1, label570
.p2align 2
label1264:
	mv s0, zero
.p2align 2
label542:
	addi a4, sp, 72
	sh2add a1, s0, a4
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label542
	lw a1, 216(sp)
	addi a4, sp, 72
	sw a1, 72(sp)
	lw a0, 220(sp)
	sw a0, 76(sp)
	lw a1, 224(sp)
	sw a1, 80(sp)
	lw a0, 228(sp)
	sw a0, 84(sp)
	lw a1, 232(sp)
	sw a1, 88(sp)
	lw a0, 236(sp)
	sw a0, 92(sp)
	lw a1, 240(sp)
	sw a1, 96(sp)
	lw a0, 244(sp)
	sw a0, 100(sp)
	lw a1, 248(sp)
	sw a1, 104(sp)
	lw a0, 252(sp)
	sw a0, 108(sp)
	lw a1, 256(sp)
	sw a1, 112(sp)
	lw a0, 260(sp)
	sw a0, 116(sp)
	lw a1, 264(sp)
	sw a1, 120(sp)
	lw a0, 268(sp)
	sw a0, 124(sp)
	lw a1, 272(sp)
	sw a1, 128(sp)
	lw a0, 276(sp)
	sw a0, 132(sp)
	lw a1, 280(sp)
	sw a1, 136(sp)
	lw a0, 284(sp)
	sw a0, 140(sp)
	lw a1, 288(sp)
	sw a1, 144(sp)
	lw a2, 292(sp)
	sw a2, 148(sp)
	lw a0, 296(sp)
	sw a0, 152(sp)
	lw a1, 300(sp)
	sw a1, 156(sp)
	lw a0, 304(sp)
	sw a0, 160(sp)
	lw a1, 308(sp)
	sw a1, 164(sp)
	lw a2, 312(sp)
	sw a2, 168(sp)
	lw a0, 316(sp)
	sw a0, 172(sp)
	lw a2, 320(sp)
	sw a2, 176(sp)
	li a2, 31
	lw a1, 324(sp)
	sw a1, 180(sp)
	lw a0, 328(sp)
	sw a0, 184(sp)
	lw a1, 332(sp)
	sw a1, 188(sp)
	lw a0, 336(sp)
	sw a0, 192(sp)
	lw a1, 340(sp)
	sw a1, 196(sp)
	mv a1, zero
	mv a0, a4
	jal QuickSort
	mv s0, zero
.p2align 2
label545:
	addi a4, sp, 72
	sh2add a1, s0, a4
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label545
	lw a1, 216(sp)
	sw a1, 72(sp)
	lw a0, 220(sp)
	sw a0, 76(sp)
	lw a1, 224(sp)
	sw a1, 80(sp)
	lw a0, 228(sp)
	sw a0, 84(sp)
	lw a2, 232(sp)
	sw a2, 88(sp)
	lw a1, 236(sp)
	sw a1, 92(sp)
	lw a0, 240(sp)
	sw a0, 96(sp)
	lw a1, 244(sp)
	sw a1, 100(sp)
	lw a2, 248(sp)
	sw a2, 104(sp)
	lw a0, 252(sp)
	sw a0, 108(sp)
	lw a1, 256(sp)
	sw a1, 112(sp)
	lw a0, 260(sp)
	sw a0, 116(sp)
	lw a1, 264(sp)
	sw a1, 120(sp)
	lw a0, 268(sp)
	sw a0, 124(sp)
	lw a1, 272(sp)
	sw a1, 128(sp)
	lw a0, 276(sp)
	sw a0, 132(sp)
	lw a1, 280(sp)
	sw a1, 136(sp)
	lw a0, 284(sp)
	sw a0, 140(sp)
	lw a1, 288(sp)
	sw a1, 144(sp)
	lw a0, 292(sp)
	sw a0, 148(sp)
	lw a1, 296(sp)
	sw a1, 152(sp)
	lw a0, 300(sp)
	sw a0, 156(sp)
	lw a1, 304(sp)
	sw a1, 160(sp)
	lw a0, 308(sp)
	sw a0, 164(sp)
	lw a2, 312(sp)
	sw a2, 168(sp)
	lw a1, 316(sp)
	sw a1, 172(sp)
	lw a0, 320(sp)
	sw a0, 176(sp)
	lw a1, 324(sp)
	sw a1, 180(sp)
	lw a0, 328(sp)
	sw a0, 184(sp)
	lw a1, 332(sp)
	sw a1, 188(sp)
	mv a1, zero
	lw a0, 336(sp)
	sw a0, 192(sp)
	lw a2, 340(sp)
	sw a2, 196(sp)
	mv a0, zero
	li a2, 32
	bge zero, a2, label1472
.p2align 2
label567:
	addi a4, sp, 72
	andi a3, a0, 3
	sh2add a2, a0, a4
	li a4, 3
	lw a5, 0(a2)
	addiw a2, a0, 1
	addw a1, a1, a5
	bne a3, a4, label569
	addi a4, sp, 72
	sh2add a0, a0, a4
	sw a1, 0(a0)
	mv a0, a2
	mv a1, zero
	li a2, 32
	blt a0, a2, label567
	j label1472
.p2align 2
label569:
	addi a4, sp, 72
	sh2add a0, a0, a4
	sw zero, 0(a0)
	mv a0, a2
	li a2, 32
	blt a0, a2, label567
.p2align 2
label1472:
	mv s0, zero
.p2align 2
label551:
	addi a4, sp, 72
	sh2add a1, s0, a4
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label551
	lw a0, 216(sp)
	sw a0, 72(sp)
	lw a1, 220(sp)
	sw a1, 76(sp)
	lw a0, 224(sp)
	sw a0, 80(sp)
	lw a1, 228(sp)
	sw a1, 84(sp)
	lw a0, 232(sp)
	sw a0, 88(sp)
	lw a1, 236(sp)
	sw a1, 92(sp)
	lw a0, 240(sp)
	sw a0, 96(sp)
	lw a1, 244(sp)
	sw a1, 100(sp)
	lw a0, 248(sp)
	sw a0, 104(sp)
	lw a1, 252(sp)
	sw a1, 108(sp)
	lw a0, 256(sp)
	sw a0, 112(sp)
	lw a1, 260(sp)
	sw a1, 116(sp)
	lw a0, 264(sp)
	sw a0, 120(sp)
	lw a2, 268(sp)
	sw a2, 124(sp)
	lw a1, 272(sp)
	sw a1, 128(sp)
	lw a0, 276(sp)
	sw a0, 132(sp)
	lw a1, 280(sp)
	sw a1, 136(sp)
	lw a2, 284(sp)
	sw a2, 140(sp)
	lw a0, 288(sp)
	sw a0, 144(sp)
	lw a1, 292(sp)
	sw a1, 148(sp)
	lw a0, 296(sp)
	sw a0, 152(sp)
	lw a2, 300(sp)
	sw a2, 156(sp)
	lw a1, 304(sp)
	sw a1, 160(sp)
	lw a0, 308(sp)
	sw a0, 164(sp)
	lw a1, 312(sp)
	sw a1, 168(sp)
	lw a0, 316(sp)
	sw a0, 172(sp)
	lw a1, 320(sp)
	sw a1, 176(sp)
	lw a0, 324(sp)
	sw a0, 180(sp)
	lw a2, 328(sp)
	sw a2, 184(sp)
	lw a1, 332(sp)
	sw a1, 188(sp)
	mv a1, zero
	lw a0, 336(sp)
	sw a0, 192(sp)
	lw a2, 340(sp)
	sw a2, 196(sp)
	mv a2, zero
	mv a0, zero
.p2align 2
label554:
	li a3, 32
	blt a0, a3, label562
.p2align 2
label1578:
	sw zero, 192(sp)
	mv s0, zero
	sw zero, 196(sp)
.p2align 2
label559:
	addi a4, sp, 72
	sh2add a1, s0, a4
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label559
	mv a0, zero
	ld ra, 56(sp)
	ld s10, 64(sp)
	ld s9, 200(sp)
	ld s8, 208(sp)
	ld s7, 344(sp)
	ld s11, 352(sp)
	ld s4, 360(sp)
	ld s3, 16(sp)
	ld s2, 8(sp)
	ld s6, 0(sp)
	ld s1, 48(sp)
	ld s5, 40(sp)
	ld s0, 24(sp)
	addi sp, sp, 368
	ret
.p2align 2
label562:
	li a3, 2
	blt a0, a3, label566
	beq a0, a3, label564
	addi a4, sp, 72
	li t0, 1431655766
	sh2add a3, a0, a4
	addiw a0, a0, 1
	lw a5, 0(a3)
	addw a4, a2, a5
	subw a2, a4, a1
	mul a1, a2, t0
	srli t0, a1, 63
	srli a5, a1, 32
	lw a1, -8(a3)
	add a4, t0, a5
	sw a4, -8(a3)
	j label554
.p2align 2
label566:
	addi a4, sp, 72
	sh2add a3, a0, a4
	addiw a0, a0, 1
	lw a5, 0(a3)
	addw a2, a2, a5
	li a3, 32
	blt a0, a3, label562
	j label1578
label564:
	lw a1, 72(sp)
	li a4, 1431655766
	mul a0, a2, a4
	srli a4, a0, 63
	srli a3, a0, 32
	add a0, a4, a3
	sw a0, 72(sp)
	li a0, 3
	j label554
