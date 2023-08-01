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
label24:
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
	ble s1, a0, label94
.p2align 2
label9:
	blt s2, a3, label19
.p2align 2
label11:
	blt s2, a3, label18
	j label12
.p2align 2
label14:
	sh2add a5, s2, s0
	lw a4, 0(a5)
	ble a1, a4, label16
	addiw s2, s2, 1
	bgt a3, s2, label14
	ble a3, s2, label384
.p2align 2
label17:
	sh2add a5, s2, s0
	sh2add t0, a3, s0
	lw a4, 0(a5)
	addiw a3, a3, -1
	sw a4, 0(t0)
	bgt a3, s2, label9
	j label94
.p2align 2
label19:
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label11
	addiw a3, a3, -1
	blt s2, a3, label19
	bgt a3, s2, label14
	j label94
.p2align 2
label12:
	bgt a3, s2, label14
	j label94
.p2align 2
label18:
	sh2add a4, s2, s0
	sh2add t0, a3, s0
	addiw s2, s2, 1
	lw a5, 0(t0)
	sw a5, 0(a4)
	bgt a3, s2, label14
	j label94
label16:
	bgt a3, s2, label17
label94:
	sh2add a2, s2, s0
	addiw s3, s2, -1
	sw a1, 0(a2)
label22:
	bgt s3, a0, label25
	j label24
label32:
	addiw a0, s4, 1
	j label22
label25:
	sh2add a3, a0, s0
	mv s4, a0
	lw a1, 0(a3)
	mv a3, s3
	addi a2, a1, -1
	ble s3, a0, label29
.p2align 2
label70:
	blt s4, a3, label72
	j label377
.p2align 2
label78:
	sh2add t0, s4, s0
	sh2add a5, a3, s0
	lw a4, 0(t0)
	addiw a3, a3, -1
	sw a4, 0(a5)
	bgt a3, s4, label70
	j label29
.p2align 2
label81:
	sh2add a4, s4, s0
	sh2add a5, a3, s0
	addiw s4, s4, 1
	lw t0, 0(a5)
	sw t0, 0(a4)
	bgt a3, s4, label79
	j label29
.p2align 2
label377:
	ble a3, s4, label395
.p2align 2
label79:
	sh2add a5, s4, s0
	lw a4, 0(a5)
	ble a1, a4, label77
	addiw s4, s4, 1
	bgt a3, s4, label79
	j label29
.p2align 2
label72:
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label74
	addiw a3, a3, -1
	blt s4, a3, label72
	bgt a3, s4, label79
	j label29
.p2align 2
label395:
	bgt a3, s4, label78
	j label29
label74:
	blt s4, a3, label81
	bgt a3, s4, label79
label77:
	bgt a3, s4, label78
	j label294
label29:
	sh2add a2, s4, s0
	addiw s5, s4, -1
	sw a1, 0(a2)
	mv a1, a0
label30:
	bgt s5, a1, label33
	j label32
label217:
	addiw a1, s6, 1
	j label30
label33:
	sh2add a3, a1, s0
	mv s6, a1
	lw a0, 0(a3)
	mv a3, s5
	addi a2, a0, -1
	ble s5, a1, label168
.p2align 2
label37:
	blt s6, a3, label39
	j label365
label41:
	bge s6, a3, label183
	sh2add a4, s6, s0
	sh2add t0, a3, s0
	addiw s6, s6, 1
	lw a5, 0(t0)
	sw a5, 0(a4)
	bgt a3, s6, label47
	j label45
.p2align 2
label46:
	sh2add a5, s6, s0
	sh2add t0, a3, s0
	lw a4, 0(a5)
	addiw a3, a3, -1
	sw a4, 0(t0)
	bgt a3, s6, label37
	j label168
.p2align 2
label47:
	sh2add a5, s6, s0
	lw a4, 0(a5)
	ble a0, a4, label45
	addiw s6, s6, 1
	bgt a3, s6, label47
	j label168
.p2align 2
label39:
	sh2add a4, a3, s0
	lw a5, 0(a4)
	bge a2, a5, label41
	addiw a3, a3, -1
	blt s6, a3, label39
	bgt a3, s6, label47
	j label168
.p2align 2
label45:
	bgt a3, s6, label46
	j label168
.p2align 2
label365:
	bgt a3, s6, label47
label168:
	sh2add a2, s6, s0
	addiw s7, s6, -1
	sw a0, 0(a2)
label50:
	bgt s7, a1, label52
	j label217
label56:
	sh2add a4, s8, s0
	addiw a2, s8, -1
	sw a0, 0(a4)
	mv a0, s0
	jal QuickSort
	addiw a1, s8, 1
	j label50
.p2align 2
label57:
	blt s8, a3, label67
.p2align 2
label59:
	blt s8, a3, label60
	bgt a3, s8, label63
	ble a3, s8, label391
.p2align 2
label66:
	sh2add a5, s8, s0
	sh2add t0, a3, s0
	lw a4, 0(a5)
	addiw a3, a3, -1
	sw a4, 0(t0)
	bgt a3, s8, label57
	j label56
.p2align 2
label67:
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label59
	addiw a3, a3, -1
	blt s8, a3, label67
	bgt a3, s8, label63
	j label56
.p2align 2
label60:
	sh2add a4, s8, s0
	sh2add a5, a3, s0
	addiw s8, s8, 1
	lw t0, 0(a5)
	sw t0, 0(a4)
	ble a3, s8, label246
.p2align 2
label63:
	sh2add a5, s8, s0
	lw a4, 0(a5)
	ble a0, a4, label65
	addiw s8, s8, 1
	bgt a3, s8, label63
	j label56
.p2align 2
label246:
	bgt a3, s8, label66
	j label56
label52:
	sh2add a3, a1, s0
	mv s8, a1
	lw a0, 0(a3)
	mv a3, s7
	addi a2, a0, -1
	bgt s7, a1, label57
	j label56
label65:
	bgt a3, s8, label66
	j label56
label183:
	bgt a3, s6, label47
	j label168
.p2align 2
label384:
	bgt a3, s2, label9
	j label94
.p2align 2
label391:
	bgt a3, s8, label57
	j label56
label294:
	bgt a3, s4, label70
	j label29
.globl main
main:
.p2align 2
	addi sp, sp, -392
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
	li s6, 756
	sd s2, 40(sp)
	li s2, 459
	sd s3, 48(sp)
	li s3, 29
	sd s4, 56(sp)
	li s4, 68
	sd s7, 64(sp)
	li s7, 452
	sd s8, 72(sp)
	li s8, 279
	sd s11, 80(sp)
	li s11, 58
	sd s9, 88(sp)
	li s9, 1
	sd s10, 96(sp)
	li s10, 290
	sw a0, 232(sp)
	sw a1, 236(sp)
	sw a2, 240(sp)
	sw a3, 244(sp)
	sw a4, 248(sp)
	sw a5, 252(sp)
	sw t0, 256(sp)
	sw t1, 260(sp)
	sw t2, 264(sp)
	sw t3, 268(sp)
	sw t4, 272(sp)
	sw t5, 276(sp)
	sw t6, 280(sp)
	sw a6, 284(sp)
	sw a7, 288(sp)
	sw s0, 292(sp)
	sw s1, 296(sp)
	sw s2, 300(sp)
	sw s3, 304(sp)
	sw s4, 308(sp)
	sw s5, 312(sp)
	sw s6, 316(sp)
	sw s7, 320(sp)
	sw s8, 324(sp)
	sw s11, 328(sp)
	li s11, 87
	sw s11, 332(sp)
	li s11, 96
	sw s11, 336(sp)
	li s11, 36
	sw s11, 340(sp)
	li s11, 39
	sw s11, 344(sp)
	li s11, 28
	sw s11, 348(sp)
	li s11, 58
	sw s9, 352(sp)
	sw s10, 356(sp)
	sw a0, 104(sp)
pcrel1657:
	auipc a0, %pcrel_hi(count)
	sw a1, 108(sp)
	sw a2, 112(sp)
	sw a3, 116(sp)
	addi a3, a0, %pcrel_lo(pcrel1657)
	sw a4, 120(sp)
	sw a5, 124(sp)
	sw t0, 128(sp)
	sw t1, 132(sp)
	sw t2, 136(sp)
	sw t3, 140(sp)
	sw t4, 144(sp)
	sw t5, 148(sp)
	sw t6, 152(sp)
	sw a6, 156(sp)
	sw a7, 160(sp)
	sw s0, 164(sp)
	mv s0, zero
	sw s1, 168(sp)
	sw s2, 172(sp)
	sw s3, 176(sp)
	sw s4, 180(sp)
	sw s5, 184(sp)
	sw s6, 188(sp)
	sw s7, 192(sp)
	sw s8, 196(sp)
	sw s11, 200(sp)
	li s11, 87
	sw s11, 204(sp)
	li s11, 96
	sw s11, 208(sp)
	li s11, 36
	sw s11, 212(sp)
	li s11, 39
	sw s11, 216(sp)
	li s11, 28
	sw s11, 220(sp)
	sw s9, 224(sp)
	sw s10, 228(sp)
	sd a3, 360(sp)
.p2align 2
label451:
	addi a5, sp, 104
	sh2add a1, s0, a5
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label451
	mv a1, zero
	li a3, 32
	mv a2, a3
	li a3, 31
	addi a0, a2, -1
	blt zero, a3, label601
label600:
	mv s0, zero
	j label460
.p2align 2
label601:
	mv a2, zero
	bgt a0, zero, label457
	j label604
.p2align 2
label1620:
	addiw a1, a1, 1
	li a3, 32
	subw a2, a3, a1
	li a3, 31
	addi a0, a2, -1
	blt a1, a3, label601
	j label600
.p2align 2
label460:
	addi a5, sp, 104
	sh2add a1, s0, a5
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label460
	lw a1, 168(sp)
	lw a3, 164(sp)
	addw a0, a1, a3
	srliw a2, a0, 31
	add a1, a0, a2
	sraiw a0, a1, 1
	jal putint
	mv a1, zero
.p2align 2
label463:
	ld a3, 360(sp)
	sh2add a0, a1, a3
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
	blt a1, a0, label463
	sh2add a0, a1, a3
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
	mv a1, zero
	mv a0, zero
	sd zero, 376(sp)
	mv a3, zero
	sd zero, 368(sp)
	j label466
.p2align 2
label457:
	addi a5, sp, 104
	sh2add t0, a2, a5
	lw a3, 0(t0)
	lw a4, 4(t0)
	addiw t0, a2, 1
	bgt a3, a4, label458
	mv a2, t0
	bgt a0, t0, label457
	j label1620
.p2align 2
label458:
	addi a5, sp, 104
	sh2add a2, a2, a5
	sw a3, 4(a2)
	sw a4, 0(a2)
	mv a2, t0
	bgt a0, t0, label457
	addiw a1, a1, 1
	li a3, 32
	subw a2, a3, a1
	li a3, 31
	addi a0, a2, -1
	blt a1, a3, label601
	j label600
label466:
	addi a5, sp, 104
	ld a3, 368(sp)
	sh2add a2, a3, a5
	sd a2, 384(sp)
	lw a5, 0(a2)
	ld a3, 360(sp)
	sh2add a1, a5, a3
	lw t0, 0(a1)
	addiw a4, t0, 1
	sw a4, 0(a1)
	ld a1, 376(sp)
	lw t1, 4(a2)
	max t0, a1, a4
	sh2add a2, t1, a3
	lw t2, 0(a2)
	addiw a3, t2, 1
	blt a1, a4, label1586
	mv a5, a0
label1586:
	mv a0, t1
	blt t0, a3, label1588
	mv a0, a5
label1588:
	max a5, a4, a3
	ld a1, 376(sp)
	sw a3, 0(a2)
	max t0, a1, a5
	ld a2, 384(sp)
	lw a1, 8(a2)
	mv a4, a1
	ld a3, 360(sp)
	sh2add a2, a1, a3
	lw t1, 0(a2)
	addiw a3, t1, 1
	blt t0, a3, label1590
	mv a4, a0
label1590:
	max a5, a5, a3
	ld a1, 376(sp)
	sw a3, 0(a2)
	max t0, a1, a5
	ld a2, 384(sp)
	lw a0, 12(a2)
	ld a3, 360(sp)
	sh2add a2, a0, a3
	lw a1, 0(a2)
	addiw a3, a1, 1
	blt t0, a3, label1592
	mv a0, a4
label1592:
	max a5, a5, a3
	ld a1, 376(sp)
	sw a3, 0(a2)
	max t0, a1, a5
	ld a2, 384(sp)
	lw a1, 16(a2)
	mv a4, a1
	ld a3, 360(sp)
	sh2add a2, a1, a3
	lw t1, 0(a2)
	addiw a3, t1, 1
	blt t0, a3, label1594
	mv a4, a0
label1594:
	max a0, a5, a3
	ld a1, 376(sp)
	sw a3, 0(a2)
	max t0, a1, a0
	ld a2, 384(sp)
	lw a1, 20(a2)
	mv a5, a1
	ld a3, 360(sp)
	sh2add a2, a1, a3
	lw t1, 0(a2)
	addiw a3, t1, 1
	blt t0, a3, label1596
	mv a5, a4
label1596:
	max a4, a0, a3
	ld a1, 376(sp)
	sw a3, 0(a2)
	max t0, a1, a4
	ld a2, 384(sp)
	lw a0, 24(a2)
	ld a3, 360(sp)
	sh2add a2, a0, a3
	lw a1, 0(a2)
	addiw a3, a1, 1
	blt t0, a3, label1598
	mv a0, a5
label1598:
	max a4, a4, a3
	ld a1, 376(sp)
	sw a3, 0(a2)
	max a5, a1, a4
	ld a2, 384(sp)
	lw a1, 28(a2)
	mv a2, a1
	ld a3, 360(sp)
	sh2add t0, a1, a3
	lw t1, 0(t0)
	addiw a3, t1, 1
	blt a5, a3, label1600
	mv a2, a0
label1600:
	max a0, a4, a3
	ld a1, 376(sp)
	li a4, 24
	sw a3, 0(t0)
	max a1, a1, a0
	ld a3, 368(sp)
	addiw a3, a3, 8
	bge a3, a4, label828
	mv a0, a2
	sd a1, 376(sp)
	sd a3, 368(sp)
	j label466
label828:
	mv a0, a3
	addi a5, sp, 104
	sh2add a4, a3, a5
	lw t0, 0(a4)
	ld a3, 360(sp)
	sh2add a4, t0, a3
	mv a3, t0
	lw t1, 0(a4)
	addiw a5, t1, 1
	blt a1, a5, label1602
	mv a3, a2
label1602:
	sw a5, 0(a4)
	max a1, a1, a5
	addiw a0, a0, 1
	li a2, 32
	bge a0, a2, label474
label844:
	mv a2, a3
	addi a5, sp, 104
	sh2add a4, a0, a5
	lw t0, 0(a4)
	ld a3, 360(sp)
	sh2add a4, t0, a3
	mv a3, t0
	lw t1, 0(a4)
	addiw a5, t1, 1
	blt a1, a5, label1602
	mv a3, a2
	sw a5, 0(a4)
	max a1, a1, a5
	addiw a0, a0, 1
	li a2, 32
	blt a0, a2, label844
label474:
	mv a0, a3
	jal putint
	lw a1, 232(sp)
	sw a1, 104(sp)
	lw a0, 236(sp)
	sw a0, 108(sp)
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
	lw a2, 272(sp)
	sw a2, 144(sp)
	lw a0, 276(sp)
	sw a0, 148(sp)
	lw a2, 280(sp)
	sw a2, 152(sp)
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
	mv a1, zero
	lw a0, 352(sp)
	sw a0, 224(sp)
	lw a2, 356(sp)
	sw a2, 228(sp)
	li a2, 32
	mv a3, a2
	li a2, 31
	addi a0, a3, -1
	blt zero, a2, label944
label943:
	mv s0, zero
	j label482
.p2align 2
label479:
	addi a5, sp, 104
	sh2add t0, a2, a5
	lw a3, 0(t0)
	lw a4, 4(t0)
	addiw t0, a2, 1
	bgt a3, a4, label480
	mv a2, t0
	bgt a0, t0, label479
	j label1624
.p2align 2
label480:
	addi a5, sp, 104
	sh2add a2, a2, a5
	sw a3, 4(a2)
	sw a4, 0(a2)
	mv a2, t0
	bgt a0, t0, label479
	addiw a1, a1, 1
	li a2, 32
	subw a3, a2, a1
	li a2, 31
	addi a0, a3, -1
	blt a1, a2, label944
	j label943
.p2align 2
label482:
	addi a5, sp, 104
	sh2add a1, s0, a5
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label482
	lw a1, 232(sp)
	sw a1, 104(sp)
	lw a0, 236(sp)
	sw a0, 108(sp)
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
	lw a2, 304(sp)
	sw a2, 176(sp)
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
	li a0, 1
	lw a1, 352(sp)
	sw a1, 224(sp)
	lw a2, 356(sp)
	sw a2, 228(sp)
	li a1, 32
	blt a0, a1, label487
	j label1067
.p2align 2
label944:
	mv a2, zero
	bgt a0, zero, label479
	j label947
.p2align 2
label1624:
	addiw a1, a1, 1
	li a2, 32
	subw a3, a2, a1
	li a2, 31
	addi a0, a3, -1
	blt a1, a2, label944
	j label943
label1067:
	mv s0, zero
	j label493
.p2align 2
label487:
	addi a5, sp, 104
	addiw a2, a0, -1
	sh2add a3, a0, a5
	lw a1, 0(a3)
	addiw a3, a2, 1
	bge a2, zero, label491
.p2align 2
label490:
	addi a5, sp, 104
	addiw a0, a0, 1
	sh2add a2, a3, a5
	sw a1, 0(a2)
	li a1, 32
	blt a0, a1, label487
	j label1067
.p2align 2
label493:
	addi a5, sp, 104
	sh2add a1, s0, a5
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label493
	lw a1, 232(sp)
	addi a5, sp, 104
	sw a1, 104(sp)
	lw a0, 236(sp)
	sw a0, 108(sp)
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
	lw a2, 276(sp)
	sw a2, 148(sp)
	lw a0, 280(sp)
	sw a0, 152(sp)
	lw a2, 284(sp)
	sw a2, 156(sp)
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
	lw a0, 316(sp)
	sw a0, 188(sp)
	lw a1, 320(sp)
	sw a1, 192(sp)
	lw a0, 324(sp)
	sw a0, 196(sp)
	lw a2, 328(sp)
	sw a2, 200(sp)
	li a2, 31
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
	mv a0, a5
	jal QuickSort
	mv s0, zero
.p2align 2
label496:
	addi a5, sp, 104
	sh2add a1, s0, a5
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label496
	lw a0, 232(sp)
	sw a0, 104(sp)
	lw a1, 236(sp)
	sw a1, 108(sp)
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
	lw a2, 348(sp)
	sw a2, 220(sp)
	lw a1, 352(sp)
	sw a1, 224(sp)
	mv a1, zero
	lw a0, 356(sp)
	sw a0, 228(sp)
	mv a0, zero
	li a2, 32
	blt zero, a2, label502
	j label1297
.p2align 2
label491:
	addi a5, sp, 104
	sh2add t0, a2, a5
	lw a4, 0(t0)
	bge a1, a4, label490
	addiw a2, a2, -1
	sh2add a3, a3, a5
	sw a4, 0(a3)
	addiw a3, a2, 1
	bge a2, zero, label491
	addiw a0, a0, 1
	sh2add a2, a3, a5
	sw a1, 0(a2)
	li a1, 32
	blt a0, a1, label487
	j label1067
.p2align 2
label502:
	addi a5, sp, 104
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
	blt a0, a2, label502
	j label1297
.p2align 2
label503:
	addi a5, sp, 104
	sh2add a0, a0, a5
	sw zero, 0(a0)
	mv a0, a2
	li a2, 32
	blt a0, a2, label502
label1297:
	mv s0, zero
.p2align 2
label505:
	addi a5, sp, 104
	sh2add a1, s0, a5
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label505
	lw a0, 232(sp)
	sw a0, 104(sp)
	lw a1, 236(sp)
	sw a1, 108(sp)
	lw a0, 240(sp)
	sw a0, 112(sp)
	lw a2, 244(sp)
	sw a2, 116(sp)
	lw a1, 248(sp)
	sw a1, 120(sp)
	lw a0, 252(sp)
	sw a0, 124(sp)
	lw a1, 256(sp)
	sw a1, 128(sp)
	lw a2, 260(sp)
	sw a2, 132(sp)
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
	lw a2, 284(sp)
	sw a2, 156(sp)
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
	mv a2, zero
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
	mv a0, zero
	li a3, 32
	blt zero, a3, label516
label512:
	mv s0, zero
	sd zero, 224(sp)
.p2align 2
label513:
	addi a5, sp, 104
	sh2add a1, s0, a5
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	blt s0, a0, label513
	mv a0, zero
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
	ld s11, 80(sp)
	ld s9, 88(sp)
	ld s10, 96(sp)
	addi sp, sp, 392
	ret
.p2align 2
label516:
	li a3, 2
	blt a0, a3, label520
	beq a0, a3, label518
	j label519
.p2align 2
label520:
	addi a5, sp, 104
	sh2add a4, a0, a5
	addiw a0, a0, 1
	lw a3, 0(a4)
	addw a1, a1, a3
	li a3, 32
	blt a0, a3, label516
	j label512
.p2align 2
label519:
	addi a5, sp, 104
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
	blt a0, a3, label516
	j label512
.p2align 2
label518:
	lw a2, 104(sp)
	li a4, 1431655766
	mul a0, a1, a4
	srli a4, a0, 63
	srli a3, a0, 32
	add a0, a4, a3
	sw a0, 104(sp)
	li a0, 3
	li a3, 32
	blt a0, a3, label516
	j label512
label604:
	addiw a1, a1, 1
	li a3, 32
	subw a2, a3, a1
	li a3, 31
	addi a0, a2, -1
	blt a1, a3, label601
	j label600
label947:
	addiw a1, a1, 1
	li a2, 32
	subw a3, a2, a1
	li a2, 31
	addi a0, a3, -1
	blt a1, a2, label944
	j label943
