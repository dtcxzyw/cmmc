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
	bgt s1, a0, label4
	j label89
label25:
	addiw a0, s2, 1
	j label2
label89:
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
label4:
	sh2add a3, a0, s0
	mv a4, s1
	mv s2, a0
	lw a1, 0(a3)
	addi a2, a1, -1
label5:
	ble a4, s2, label102
	sh2add a3, a4, s0
	blt s2, a4, label18
	j label108
.p2align 2
label15:
	lw t0, 0(a5)
	ble a1, t0, label16
	addiw s2, s2, 1
	addi a5, a5, 4
	bgt a4, s2, label15
	j label102
.p2align 2
label18:
	lw a5, 0(a3)
	bge a2, a5, label125
	addiw a4, a4, -1
	addi a3, a3, -4
	blt s2, a4, label18
	sh2add a5, s2, s0
	bgt a4, s2, label15
	j label102
.p2align 2
label108:
	sh2add a5, s2, s0
.p2align 2
label12:
	bgt a4, s2, label15
	j label102
label16:
	sw t0, 0(a3)
	addiw a4, a4, -1
	j label5
label102:
	sh2add a2, s2, s0
	addiw s3, s2, -1
	sw a1, 0(a2)
label23:
	bgt s3, a0, label26
	j label25
label47:
	addiw a0, s4, 1
	j label23
label26:
	sh2add a3, a0, s0
	mv a4, s3
	mv s4, a0
	lw a1, 0(a3)
	addi a2, a1, -1
label27:
	bgt a4, s4, label30
label150:
	sh2add a2, s4, s0
	addiw s5, s4, -1
	sw a1, 0(a2)
	j label45
.p2align 2
label30:
	sh2add a3, a4, s0
	bge s4, a4, label34
.p2align 2
label35:
	lw a5, 0(a3)
	bge a2, a5, label36
	addiw a4, a4, -1
	addi a3, a3, -4
	blt s4, a4, label35
	sh2add a5, s4, s0
	ble a4, s4, label336
.p2align 2
label41:
	lw t0, 0(a5)
	ble a1, t0, label42
	addiw s4, s4, 1
	addi a5, a5, 4
	bgt a4, s4, label41
	j label150
.p2align 2
label34:
	sh2add a5, s4, s0
	bgt a4, s4, label41
	j label150
label45:
	bgt s5, a0, label48
	j label47
label55:
	addiw a0, s6, 1
	j label45
label48:
	sh2add a3, a0, s0
	mv a4, s5
	mv s6, a0
	lw a1, 0(a3)
	addi a2, a1, -1
label49:
	ble a4, s6, label52
	sh2add a3, a4, s0
	blt s6, a4, label86
	j label79
.p2align 2
label83:
	lw t0, 0(a5)
	ble a1, t0, label84
	addiw s6, s6, 1
	addi a5, a5, 4
	bgt a4, s6, label83
	j label52
.p2align 2
label86:
	lw a5, 0(a3)
	bge a2, a5, label87
	addiw a4, a4, -1
	addi a3, a3, -4
	blt s6, a4, label86
	sh2add a5, s6, s0
	bgt a4, s6, label83
	j label52
.p2align 2
label79:
	sh2add a5, s6, s0
.p2align 2
label80:
	bgt a4, s6, label83
	j label52
label84:
	sw t0, 0(a3)
	addiw a4, a4, -1
	j label49
label87:
	sh2add t0, s6, s0
	addiw s6, s6, 1
	sw a5, 0(t0)
	sh2add a5, s6, s0
	j label80
label42:
	sw t0, 0(a3)
	addiw a4, a4, -1
	j label27
label36:
	sh2add t0, s4, s0
	addiw s4, s4, 1
	sw a5, 0(t0)
	sh2add a5, s4, s0
	bgt a4, s4, label41
	j label150
label52:
	sh2add a2, s6, s0
	addiw s7, s6, -1
	sw a1, 0(a2)
	mv a1, a0
label53:
	bgt s7, a1, label56
	j label55
.p2align 2
label60:
	sh2add a3, a4, s0
	blt s8, a4, label65
	sh2add a5, s8, s0
	ble a4, s8, label327
.p2align 2
label71:
	lw t0, 0(a5)
	ble a0, t0, label72
	addiw s8, s8, 1
	addi a5, a5, 4
	bgt a4, s8, label71
label74:
	sh2add a3, s8, s0
	addiw a2, s8, -1
	sw a0, 0(a3)
	mv a0, s0
	jal QuickSort
	addiw a1, s8, 1
	j label53
.p2align 2
label65:
	lw a5, 0(a3)
	bge a2, a5, label227
	addiw a4, a4, -1
	addi a3, a3, -4
	blt s8, a4, label65
	sh2add a5, s8, s0
	bgt a4, s8, label71
	j label74
label56:
	sh2add a3, a1, s0
	mv a4, s7
	mv s8, a1
	lw a0, 0(a3)
	addi a2, a0, -1
label57:
	bgt a4, s8, label60
	j label74
label227:
	sh2add t0, s8, s0
	addiw s8, s8, 1
	sw a5, 0(t0)
	sh2add a5, s8, s0
	bgt a4, s8, label71
	j label74
label72:
	sw t0, 0(a3)
	addiw a4, a4, -1
	j label57
.p2align 2
label327:
	bgt a4, s8, label60
	j label74
.p2align 2
label336:
	bgt a4, s4, label30
	j label150
label125:
	sh2add t0, s2, s0
	addiw s2, s2, 1
	sw a5, 0(t0)
	sh2add a5, s2, s0
	j label12
.p2align 2
.globl main
main:
	addi sp, sp, -304
	li a2, 23
	li a3, 26
	li a4, 254
	li a5, 5
	li t0, 273
	li t1, 905
	li t2, 657
	li t3, 264
	li t4, 459
	li t5, 68
	li t6, 756
	li a6, 279
	li a7, 87
	sd ra, 0(sp)
	slli a1, a2, 32
	sd s0, 8(sp)
	slli a2, a3, 32
	addi a0, a1, 7
	addi s0, sp, 176
	sd s1, 16(sp)
	slli a3, a4, 32
	addi a1, a2, 89
	li s1, 36
	sd s2, 24(sp)
	slli a4, a5, 32
	addi a2, a3, 282
	slli a5, t0, 32
	sd s4, 32(sp)
	addi a3, a4, 27
	slli t0, t1, 32
	li s4, 290
	sd s3, 40(sp)
	addi a4, a5, 83
	slli t1, t2, 32
	addi a5, t0, 574
	sd a0, 48(sp)
	slli t2, t3, 32
	addi t0, t1, 354
	slli t3, t4, 32
	sd a1, 56(sp)
	addi t1, t2, 935
	slli t4, t5, 32
	addi t2, t3, 639
	sd a2, 64(sp)
	slli t5, t6, 32
	addi t3, t4, 29
	slli t6, a6, 32
	sd a3, 72(sp)
	addi t4, t5, 929
	slli a6, a7, 32
	addi t5, t6, 452
	sd a4, 80(sp)
	slli a7, s1, 32
	addi t6, a6, 58
	li s1, 28
	sd a5, 88(sp)
	addi a6, a7, 96
	slli s2, s1, 32
	sd t0, 96(sp)
	li s1, 1
	addi a7, s2, 39
	sd t1, 104(sp)
	slli s2, s4, 32
	sd t2, 112(sp)
	mv s4, zero
	addi s3, s2, 1
	sd t3, 120(sp)
	sd t4, 128(sp)
	sd t5, 136(sp)
	sd t6, 144(sp)
	sd a6, 152(sp)
	sd a7, 160(sp)
	sd s3, 168(sp)
	sd a0, 176(sp)
pcrel1962:
	auipc a0, %pcrel_hi(count)
	sd a1, 184(sp)
	addi s2, a0, %pcrel_lo(pcrel1962)
	sd a2, 192(sp)
	sd a3, 200(sp)
	sd a4, 208(sp)
	sd a5, 216(sp)
	sd t0, 224(sp)
	sd t1, 232(sp)
	sd t2, 240(sp)
	sd t3, 248(sp)
	sd t4, 256(sp)
	sd t5, 264(sp)
	sd t6, 272(sp)
	sd a6, 280(sp)
	sd a7, 288(sp)
	sd s3, 296(sp)
	mv s3, s0
.p2align 2
label369:
	lw a0, 0(s3)
	jal putint
	li a0, 32
	addiw a1, s4, 1
	bge a1, a0, label532
	addi s3, s3, 4
	mv s4, a1
	j label369
label532:
	mv a2, zero
	li a3, 32
	li a4, 31
	mv a1, a3
	addi a0, a3, -1
	bge zero, a4, label539
.p2align 2
label375:
	mv a1, s0
	mv a3, zero
	ble a0, zero, label379
.p2align 2
label380:
	lw a4, 0(a1)
	addiw a3, a3, 1
	lw a5, 4(a1)
	bgt a4, a5, label381
	addi a1, a1, 4
	bgt a0, a3, label380
	j label1915
.p2align 2
label381:
	addi t0, a1, 4
	sw a4, 4(a1)
	sw a5, 0(a1)
	mv a1, t0
	bgt a0, a3, label380
	addiw a2, a2, 1
	li a3, 32
	li a4, 31
	subw a1, a3, a2
	addi a0, a1, -1
	blt a2, a4, label375
	j label539
label379:
	addiw a2, a2, 1
	li a3, 32
	li a4, 31
	subw a1, a3, a2
	addi a0, a1, -1
	blt a2, a4, label375
label539:
	mv s3, s0
	mv s4, zero
	j label384
.p2align 2
label1915:
	addiw a2, a2, 1
	li a3, 32
	li a4, 31
	subw a1, a3, a2
	addi a0, a1, -1
	blt a2, a4, label375
	j label539
.p2align 2
label384:
	lw a0, 0(s3)
	jal putint
	li a0, 32
	addiw a1, s4, 1
	bge a1, a0, label388
	addi s3, s3, 4
	mv s4, a1
	j label384
label388:
	lw a0, 240(sp)
	lw a2, 236(sp)
	addw a1, a0, a2
	srliw a4, a1, 31
	add a3, a1, a4
	sraiw a0, a3, 1
	jal putint
	mv a1, zero
	mv a0, s2
.p2align 2
label389:
	sd zero, 0(a0)
	addiw a1, a1, 64
	li a2, 960
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
	bge a1, a2, label393
	addi a0, a0, 256
	j label389
label393:
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
	lw a1, 176(sp)
	mv t0, a1
	sh2add a2, a1, s2
	lw a4, 0(a2)
	addiw a3, a4, 1
	max a0, a3, zero
	sw a3, 0(a2)
	lw a5, 180(sp)
	sh2add a2, a5, s2
	lw t1, 0(a2)
	addiw a4, t1, 1
	bgt a3, zero, label1831
	mv t0, zero
label1831:
	mv a1, a5
	blt a0, a4, label1833
	mv a1, t0
label1833:
	max a3, a0, a4
	sw a4, 0(a2)
	lw t0, 184(sp)
	mv a2, t0
	sh2add a0, t0, s2
	lw a4, 0(a0)
	addiw a5, a4, 1
	blt a3, a5, label1835
	mv a2, a1
label1835:
	max a4, a3, a5
	sw a5, 0(a0)
	lw t0, 188(sp)
	mv a0, t0
	sh2add a1, t0, s2
	lw a3, 0(a1)
	addiw a5, a3, 1
	blt a4, a5, label1837
	mv a0, a2
label1837:
	max a3, a4, a5
	sw a5, 0(a1)
	lw a2, 192(sp)
	mv a1, a2
	sh2add a4, a2, s2
	lw t0, 0(a4)
	addiw a5, t0, 1
	blt a3, a5, label1839
	mv a1, a0
label1839:
	max a2, a3, a5
	sw a5, 0(a4)
	lw t0, 196(sp)
	mv a0, t0
	sh2add a3, t0, s2
	lw a4, 0(a3)
	addiw a5, a4, 1
	blt a2, a5, label1841
	mv a0, a1
label1841:
	max a4, a2, a5
	sw a5, 0(a3)
	lw t1, 200(sp)
	mv a1, t1
	sh2add a2, t1, s2
	lw a3, 0(a2)
	addiw t0, a3, 1
	blt a4, t0, label1843
	mv a1, a0
label1843:
	max a3, a4, t0
	sw t0, 0(a2)
	lw t1, 204(sp)
	mv a0, t1
	sh2add a5, t1, s2
	lw a2, 0(a5)
	addiw t0, a2, 1
	blt a3, t0, label1845
	mv a0, a1
label1845:
	max a2, a3, t0
	sw t0, 0(a5)
	lw t1, 208(sp)
	mv a1, t1
	sh2add a4, t1, s2
	lw a3, 0(a4)
	addiw a5, a3, 1
	blt a2, a5, label1847
	mv a1, a0
label1847:
	max a3, a2, a5
	sw a5, 0(a4)
	lw t0, 212(sp)
	mv a2, t0
	sh2add a0, t0, s2
	lw a4, 0(a0)
	addiw a5, a4, 1
	blt a3, a5, label1849
	mv a2, a1
label1849:
	max a4, a3, a5
	sw a5, 0(a0)
	lw t1, 216(sp)
	mv a0, t1
	sh2add a1, t1, s2
	lw a3, 0(a1)
	addiw t0, a3, 1
	blt a4, t0, label1851
	mv a0, a2
label1851:
	max a3, a4, t0
	sw t0, 0(a1)
	lw a2, 220(sp)
	mv a1, a2
	sh2add a5, a2, s2
	lw a4, 0(a5)
	addiw t0, a4, 1
	blt a3, t0, label1853
	mv a1, a0
label1853:
	max a2, a3, t0
	sw t0, 0(a5)
	lw t1, 224(sp)
	mv a0, t1
	sh2add a4, t1, s2
	lw a3, 0(a4)
	addiw a5, a3, 1
	blt a2, a5, label1855
	mv a0, a1
label1855:
	max a3, a2, a5
	sw a5, 0(a4)
	lw t0, 228(sp)
	mv a2, t0
	sh2add a1, t0, s2
	lw a4, 0(a1)
	addiw a5, a4, 1
	blt a3, a5, label1857
	mv a2, a0
label1857:
	max a4, a3, a5
	sw a5, 0(a1)
	lw t1, 232(sp)
	mv a1, t1
	sh2add a0, t1, s2
	lw a3, 0(a0)
	addiw t0, a3, 1
	blt a4, t0, label1859
	mv a1, a2
label1859:
	max a3, a4, t0
	sw t0, 0(a0)
	lw a2, 236(sp)
	mv a0, a2
	sh2add a5, a2, s2
	lw a4, 0(a5)
	addiw t0, a4, 1
	blt a3, t0, label1861
	mv a0, a1
label1861:
	max a2, a3, t0
	sw t0, 0(a5)
	lw t1, 240(sp)
	mv a1, t1
	sh2add a4, t1, s2
	lw a3, 0(a4)
	addiw t0, a3, 1
	blt a2, t0, label1863
	mv a1, a0
label1863:
	max a3, a2, t0
	sw t0, 0(a4)
	lw t1, 244(sp)
	mv a0, t1
	sh2add a5, t1, s2
	lw a2, 0(a5)
	addiw a4, a2, 1
	blt a3, a4, label1865
	mv a0, a1
label1865:
	max a2, a3, a4
	sw a4, 0(a5)
	lw t1, 248(sp)
	mv a1, t1
	sh2add t0, t1, s2
	lw a3, 0(t0)
	addiw a5, a3, 1
	blt a2, a5, label1867
	mv a1, a0
label1867:
	max a3, a2, a5
	sw a5, 0(t0)
	lw t1, 252(sp)
	mv a0, t1
	sh2add a4, t1, s2
	lw a2, 0(a4)
	addiw t0, a2, 1
	blt a3, t0, label1869
	mv a0, a1
label1869:
	max a2, a3, t0
	sw t0, 0(a4)
	lw t1, 256(sp)
	mv a1, t1
	sh2add a5, t1, s2
	lw a3, 0(a5)
	addiw t0, a3, 1
	blt a2, t0, label1871
	mv a1, a0
label1871:
	max a3, a2, t0
	sw t0, 0(a5)
	lw t1, 260(sp)
	mv a0, t1
	sh2add a4, t1, s2
	lw a2, 0(a4)
	addiw a5, a2, 1
	blt a3, a5, label1873
	mv a0, a1
label1873:
	max a2, a3, a5
	sw a5, 0(a4)
	lw t0, 264(sp)
	mv a1, t0
	sh2add a3, t0, s2
	lw a4, 0(a3)
	addiw a5, a4, 1
	blt a2, a5, label1875
	mv a1, a0
label1875:
	max a4, a2, a5
	sw a5, 0(a3)
	lw t0, 268(sp)
	mv a2, t0
	sh2add a0, t0, s2
	lw a3, 0(a0)
	addiw a5, a3, 1
	blt a4, a5, label1877
	mv a2, a1
label1877:
	max a3, a4, a5
	sw a5, 0(a0)
	lw a1, 272(sp)
	mv a0, a1
	sh2add a4, a1, s2
	lw a5, 0(a4)
	addiw t0, a5, 1
	blt a3, t0, label1879
	mv a0, a2
label1879:
	max a1, a3, t0
	sw t0, 0(a4)
	lw t1, 276(sp)
	mv a2, t1
	sh2add a5, t1, s2
	lw a3, 0(a5)
	addiw a4, a3, 1
	blt a1, a4, label1881
	mv a2, a0
label1881:
	max a3, a1, a4
	sw a4, 0(a5)
	lw t0, 280(sp)
	mv a1, t0
	sh2add a0, t0, s2
	lw a4, 0(a0)
	addiw a5, a4, 1
	blt a3, a5, label1883
	mv a1, a2
label1883:
	max a4, a3, a5
	sw a5, 0(a0)
	lw t0, 284(sp)
	mv a0, t0
	sh2add a2, t0, s2
	lw a3, 0(a2)
	addiw a5, a3, 1
	blt a4, a5, label1885
	mv a0, a1
label1885:
	max a3, a4, a5
	sw a5, 0(a2)
	lw t1, 288(sp)
	mv a1, t1
	sh2add a4, t1, s2
	lw a2, 0(a4)
	addiw t0, a2, 1
	blt a3, t0, label1887
	mv a1, a0
label1887:
	max a2, a3, t0
	sw t0, 0(a4)
	lw t1, 292(sp)
	mv a0, t1
	sh2add a5, t1, s2
	lw a3, 0(a5)
	addiw t0, a3, 1
	blt a2, t0, label1889
	mv a0, a1
label1889:
	max a3, a2, t0
	sw t0, 0(a5)
	lw t1, 296(sp)
	mv a1, t1
	sh2add a4, t1, s2
	lw a2, 0(a4)
	addiw a5, a2, 1
	blt a3, a5, label1891
	mv a1, a0
label1891:
	max a2, a3, a5
	sw a5, 0(a4)
	lw t0, 300(sp)
	mv a0, t0
	sh2add a3, t0, s2
	lw a5, 0(a3)
	addiw a4, a5, 1
	blt a2, a4, label1893
	mv a0, a1
label1893:
	sw a4, 0(a3)
	jal putint
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
	lw a2, 92(sp)
	sw a2, 220(sp)
	mv a2, zero
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
	lw a0, 160(sp)
	sw a0, 288(sp)
	lw a1, 164(sp)
	sw a1, 292(sp)
	lw a0, 168(sp)
	sw a0, 296(sp)
	lw a1, 172(sp)
	sw a1, 300(sp)
	li a3, 32
	li a4, 31
	mv a1, a3
	addi a0, a3, -1
	blt zero, a4, label396
label1033:
	mv s2, s0
	mv s3, zero
	j label405
.p2align 2
label396:
	mv a1, s0
	mv a3, zero
	ble a0, zero, label400
.p2align 2
label401:
	lw a4, 0(a1)
	addiw a3, a3, 1
	lw a5, 4(a1)
	bgt a4, a5, label402
	addi a1, a1, 4
	bgt a0, a3, label401
	j label1917
.p2align 2
label402:
	addi t0, a1, 4
	sw a4, 4(a1)
	sw a5, 0(a1)
	mv a1, t0
	bgt a0, a3, label401
	addiw a2, a2, 1
	li a3, 32
	li a4, 31
	subw a1, a3, a2
	addi a0, a1, -1
	blt a2, a4, label396
	j label1033
.p2align 2
label405:
	lw a0, 0(s2)
	jal putint
	li a0, 32
	addiw a1, s3, 1
	bge a1, a0, label409
	addi s2, s2, 4
	mv s3, a1
	j label405
label409:
	lw a2, 48(sp)
	addi a0, s0, 4
	sw a2, 176(sp)
	lw a1, 52(sp)
	sw a1, 180(sp)
	lw a3, 56(sp)
	sw a3, 184(sp)
	lw a2, 60(sp)
	sw a2, 188(sp)
	lw a1, 64(sp)
	sw a1, 192(sp)
	lw a2, 68(sp)
	sw a2, 196(sp)
	lw a1, 72(sp)
	sw a1, 200(sp)
	lw a2, 76(sp)
	sw a2, 204(sp)
	lw a1, 80(sp)
	sw a1, 208(sp)
	lw a2, 84(sp)
	sw a2, 212(sp)
	lw a1, 88(sp)
	sw a1, 216(sp)
	lw a3, 92(sp)
	sw a3, 220(sp)
	lw a2, 96(sp)
	sw a2, 224(sp)
	lw a1, 100(sp)
	sw a1, 228(sp)
	lw a2, 104(sp)
	sw a2, 232(sp)
	lw a1, 108(sp)
	sw a1, 236(sp)
	lw a2, 112(sp)
	sw a2, 240(sp)
	lw a1, 116(sp)
	sw a1, 244(sp)
	lw a2, 120(sp)
	sw a2, 248(sp)
	lw a1, 124(sp)
	sw a1, 252(sp)
	lw a2, 128(sp)
	sw a2, 256(sp)
	lw a1, 132(sp)
	sw a1, 260(sp)
	lw a3, 136(sp)
	sw a3, 264(sp)
	lw a2, 140(sp)
	sw a2, 268(sp)
	lw a1, 144(sp)
	sw a1, 272(sp)
	lw a2, 148(sp)
	sw a2, 276(sp)
	lw a1, 152(sp)
	sw a1, 280(sp)
	lw a2, 156(sp)
	sw a2, 284(sp)
	lw a1, 160(sp)
	sw a1, 288(sp)
	lw a2, 164(sp)
	sw a2, 292(sp)
	lw a1, 168(sp)
	sw a1, 296(sp)
	lw a2, 172(sp)
	sw a2, 300(sp)
label410:
	li a1, 32
	bge s1, a1, label1155
.p2align 2
label413:
	lw a1, 0(a0)
	addiw a3, s1, -1
	sh2add a2, a3, s0
	addiw a4, a3, 1
	bge a3, zero, label417
	sh2add a2, a4, s0
	addiw s1, s1, 1
	addi a0, a0, 4
	sw a1, 0(a2)
	li a1, 32
	blt s1, a1, label413
	j label1155
.p2align 2
label417:
	lw a5, 0(a2)
	bge a1, a5, label1169
	sh2add t0, a4, s0
	addiw a3, a3, -1
	addi a2, a2, -4
	addiw a4, a3, 1
	sw a5, 0(t0)
	bge a3, zero, label417
	sh2add a2, a4, s0
	addiw s1, s1, 1
	addi a0, a0, 4
	sw a1, 0(a2)
	li a1, 32
	blt s1, a1, label413
label1155:
	mv s1, s0
	mv s2, zero
.p2align 2
label421:
	lw a0, 0(s1)
	jal putint
	li a0, 32
	addiw a1, s2, 1
	bge a1, a0, label424
	addi s1, s1, 4
	mv s2, a1
	j label421
label424:
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
	lw a2, 108(sp)
	sw a2, 236(sp)
	lw a1, 112(sp)
	sw a1, 240(sp)
	lw a0, 116(sp)
	sw a0, 244(sp)
	lw a1, 120(sp)
	sw a1, 248(sp)
	lw a0, 124(sp)
	sw a0, 252(sp)
	lw a2, 128(sp)
	sw a2, 256(sp)
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
	lw a0, 160(sp)
	sw a0, 288(sp)
	lw a1, 164(sp)
	sw a1, 292(sp)
	mv a1, zero
	lw a0, 168(sp)
	sw a0, 296(sp)
	lw a2, 172(sp)
	sw a2, 300(sp)
	li a2, 31
	mv a0, s0
	jal QuickSort
	mv s2, zero
	mv s1, s0
.p2align 2
label425:
	lw a0, 0(s1)
	jal putint
	li a0, 32
	addiw a1, s2, 1
	bge a1, a0, label428
	addi s1, s1, 4
	mv s2, a1
	j label425
label428:
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
	lw a2, 132(sp)
	sw a2, 260(sp)
	lw a0, 136(sp)
	sw a0, 264(sp)
	lw a1, 140(sp)
	sw a1, 268(sp)
	lw a0, 144(sp)
	sw a0, 272(sp)
	lw a2, 148(sp)
	sw a2, 276(sp)
	lw a1, 152(sp)
	sw a1, 280(sp)
	lw a0, 156(sp)
	sw a0, 284(sp)
	lw a2, 160(sp)
	sw a2, 288(sp)
	mv a2, zero
	lw a1, 164(sp)
	sw a1, 292(sp)
	lw a0, 168(sp)
	sw a0, 296(sp)
	mv a0, s0
	lw a1, 172(sp)
	sw a1, 300(sp)
	mv a1, zero
	li a3, 32
	bge zero, a3, label1381
.p2align 2
label433:
	lw a4, 0(a0)
	andi a3, a1, 3
	addw a2, a2, a4
	addiw a1, a1, 1
	li a4, 3
	bne a3, a4, label435
	sw a2, 0(a0)
	li a3, 32
	mv a2, zero
	addi a0, a0, 4
	blt a1, a3, label433
	j label1381
.p2align 2
label435:
	sw zero, 0(a0)
	li a3, 32
	addi a0, a0, 4
	blt a1, a3, label433
label1381:
	mv s1, s0
	mv s2, zero
.p2align 2
label437:
	lw a0, 0(s1)
	jal putint
	li a0, 32
	addiw a1, s2, 1
	bge a1, a0, label440
	addi s1, s1, 4
	mv s2, a1
	j label437
label440:
	lw a0, 48(sp)
	mv a3, zero
	mv a4, zero
	sw a0, 176(sp)
	lw a1, 52(sp)
	sw a1, 180(sp)
	lw a0, 56(sp)
	sw a0, 184(sp)
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
	lw a2, 112(sp)
	sw a2, 240(sp)
	lw a0, 116(sp)
	sw a0, 244(sp)
	lw a1, 120(sp)
	sw a1, 248(sp)
	lw a0, 124(sp)
	sw a0, 252(sp)
	lw a2, 128(sp)
	sw a2, 256(sp)
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
	lw a0, 160(sp)
	sw a0, 288(sp)
	lw a1, 164(sp)
	sw a1, 292(sp)
	mv a1, s0
	lw a0, 168(sp)
	sw a0, 296(sp)
	mv a0, s0
	lw a2, 172(sp)
	sw a2, 300(sp)
	mv a2, zero
	li a5, 32
	blt zero, a5, label447
label1495:
	sd zero, 296(sp)
	mv s1, zero
	j label453
.p2align 2
label447:
	li a5, 2
	blt a4, a5, label451
	bne a4, a5, label450
	lw a2, 176(sp)
	lui a5, 349525
	addiw a1, a5, 1366
	mul a0, a3, a1
	addi a1, s0, 12
	srli a5, a0, 63
	srli a4, a0, 32
	mv a0, a1
	add t0, a5, a4
	li a5, 32
	li a4, 3
	sw t0, 176(sp)
	blt a4, a5, label447
	j label1495
.p2align 2
label451:
	lw a5, 0(a1)
	addiw a4, a4, 1
	addi a0, a0, 4
	addi a1, a1, 4
	addw a3, a3, a5
	li a5, 32
	blt a4, a5, label447
	j label1495
.p2align 2
label453:
	lw a0, 0(s0)
	jal putint
	li a0, 32
	addiw a1, s1, 1
	bge a1, a0, label457
	addi s0, s0, 4
	mv s1, a1
	j label453
.p2align 2
label450:
	lw t0, 0(a0)
	lui t2, 349525
	addiw a4, a4, 1
	addi a1, a1, 4
	addw a5, a3, t0
	addiw t1, t2, 1366
	subw a3, a5, a2
	lw a2, -8(a0)
	mul a5, a3, t1
	srli t2, a5, 63
	srli t0, a5, 32
	li a5, 32
	add t1, t2, t0
	sw t1, -8(a0)
	addi a0, a0, 4
	blt a4, a5, label447
	j label1495
label457:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	ld s4, 32(sp)
	ld s3, 40(sp)
	addi sp, sp, 304
	ret
label400:
	addiw a2, a2, 1
	li a3, 32
	li a4, 31
	subw a1, a3, a2
	addi a0, a1, -1
	blt a2, a4, label396
	j label1033
.p2align 2
label1917:
	addiw a2, a2, 1
	li a3, 32
	li a4, 31
	subw a1, a3, a2
	addi a0, a1, -1
	blt a2, a4, label396
	j label1033
label1169:
	sh2add a2, a4, s0
	addiw s1, s1, 1
	addi a0, a0, 4
	sw a1, 0(a2)
	j label410
