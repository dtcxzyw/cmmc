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
	ble s1, a0, label89
	sh2add a3, a0, s0
	mv a4, s1
	mv s2, a0
	lw a1, 0(a3)
	addi a2, a1, -1
	j label5
.p2align 2
label256:
	sh2add a5, s2, s0
.p2align 2
label79:
	bgt a4, s2, label82
.p2align 2
label5:
	ble a4, s2, label8
	sh2add a3, a4, s0
	bge s2, a4, label256
.p2align 2
label86:
	lw a5, 0(a3)
	bge a2, a5, label275
	addiw a4, a4, -1
	addi a3, a3, -4
	blt s2, a4, label86
	sh2add a5, s2, s0
	ble a4, s2, label5
	lw t0, 0(a5)
	bgt a1, t0, label84
	j label83
label8:
	sh2add a2, s2, s0
	addiw s3, s2, -1
	sw a1, 0(a2)
label9:
	ble s3, a0, label11
	sh2add a3, a0, s0
	mv a4, s3
	mv s4, a0
	lw a1, 0(a3)
	addi a2, a1, -1
.p2align 2
label13:
	ble a4, s4, label118
	sh2add a3, a4, s0
	blt s4, a4, label21
	sh2add a5, s4, s0
	lw t0, 0(a5)
	ble a1, t0, label335
.p2align 2
label29:
	addiw s4, s4, 1
	addi a5, a5, 4
	ble a4, s4, label13
	lw t0, 0(a5)
	bgt a1, t0, label29
label335:
	sw t0, 0(a3)
	addiw a4, a4, -1
	j label13
.p2align 2
label21:
	lw a5, 0(a3)
	bge a2, a5, label22
	addiw a4, a4, -1
	addi a3, a3, -4
	blt s4, a4, label21
	sh2add a5, s4, s0
	ble a4, s4, label13
	lw t0, 0(a5)
	bgt a1, t0, label29
	j label335
.p2align 2
label82:
	lw t0, 0(a5)
	ble a1, t0, label83
.p2align 2
label84:
	addiw s2, s2, 1
	addi a5, a5, 4
	ble a4, s2, label5
	lw t0, 0(a5)
	bgt a1, t0, label84
label83:
	sw t0, 0(a3)
	addiw a4, a4, -1
	j label5
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
label11:
	addiw a0, s2, 1
	j label2
label118:
	sh2add a2, s4, s0
	addiw s5, s4, -1
	sw a1, 0(a2)
label31:
	ble s5, a0, label33
	sh2add a3, a0, s0
	mv a4, s5
	mv s6, a0
	lw a1, 0(a3)
	addi a2, a1, -1
	j label35
.p2align 2
label330:
	lw t0, 0(a5)
	ble a1, t0, label348
.p2align 2
label72:
	addiw s6, s6, 1
	addi a5, a5, 4
	bgt a4, s6, label330
.p2align 2
label35:
	ble a4, s6, label38
	sh2add a3, a4, s0
	bge s6, a4, label224
.p2align 2
label65:
	lw a5, 0(a3)
	bge a2, a5, label66
	addiw a4, a4, -1
	addi a3, a3, -4
	blt s6, a4, label65
	sh2add a5, s6, s0
	ble a4, s6, label35
	lw t0, 0(a5)
	bgt a1, t0, label72
	j label348
.p2align 2
label224:
	sh2add a5, s6, s0
	ble a4, s6, label35
	lw t0, 0(a5)
	bgt a1, t0, label72
	j label348
label33:
	addiw a0, s4, 1
	j label9
label38:
	sh2add a2, s6, s0
	addiw s7, s6, -1
	sw a1, 0(a2)
	mv a1, a0
label39:
	bgt s7, a1, label42
	addiw a0, s6, 1
	j label31
label22:
	sh2add t0, s4, s0
	addiw s4, s4, 1
	sw a5, 0(t0)
	sh2add a5, s4, s0
	ble a4, s4, label13
	lw t0, 0(a5)
	bgt a1, t0, label29
	j label335
label66:
	sh2add t0, s6, s0
	addiw s6, s6, 1
	sw a5, 0(t0)
	sh2add a5, s6, s0
	ble a4, s6, label35
	lw t0, 0(a5)
	bgt a1, t0, label72
label348:
	sw t0, 0(a3)
	addiw a4, a4, -1
	j label35
label275:
	sh2add t0, s2, s0
	addiw s2, s2, 1
	sw a5, 0(t0)
	sh2add a5, s2, s0
	j label79
label42:
	sh2add a3, a1, s0
	mv a4, s7
	mv s8, a1
	lw a0, 0(a3)
	addi a2, a0, -1
	j label43
.p2align 2
label327:
	lw t0, 0(a5)
	ble a0, t0, label346
.p2align 2
label58:
	addiw s8, s8, 1
	addi a5, a5, 4
	bgt a4, s8, label327
.p2align 2
label43:
	ble a4, s8, label60
	sh2add a3, a4, s0
	blt s8, a4, label50
	sh2add a5, s8, s0
	lw t0, 0(a5)
	bgt a0, t0, label58
	j label346
.p2align 2
label50:
	lw a5, 0(a3)
	bge a2, a5, label51
	addiw a4, a4, -1
	addi a3, a3, -4
	blt s8, a4, label50
	sh2add a5, s8, s0
	ble a4, s8, label43
	lw t0, 0(a5)
	bgt a0, t0, label58
	j label346
label60:
	sh2add a3, s8, s0
	addiw a2, s8, -1
	sw a0, 0(a3)
	mv a0, s0
	jal QuickSort
	addiw a1, s8, 1
	j label39
label51:
	sh2add t0, s8, s0
	addiw s8, s8, 1
	sw a5, 0(t0)
	sh2add a5, s8, s0
	ble a4, s8, label43
	lw t0, 0(a5)
	bgt a0, t0, label58
label346:
	sw t0, 0(a3)
	addiw a4, a4, -1
	j label43
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
	sd s3, 32(sp)
	addi a3, a4, 27
	slli t0, t1, 32
	li s3, 290
	sd s4, 40(sp)
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
	slli s2, s3, 32
	sd t2, 112(sp)
	mv s3, zero
	addi s4, s2, 1
	sd t3, 120(sp)
	mv s2, s0
	sd t4, 128(sp)
	sd t5, 136(sp)
	sd t6, 144(sp)
	sd a6, 152(sp)
	sd a7, 160(sp)
	sd s4, 168(sp)
	sd a0, 176(sp)
	sd a1, 184(sp)
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
	sd s4, 296(sp)
	j label375
.p2align 2
label539:
	addi s2, s2, 4
	mv s3, a1
.p2align 2
label375:
	lw a0, 0(s2)
	jal putint
	li a0, 32
	addiw a1, s3, 1
	blt a1, a0, label539
	mv a2, zero
	li a0, 31
	blt zero, a0, label531
	j label380
.p2align 2
label2131:
	addiw a2, a2, 1
	li a0, 31
	bge a2, a0, label380
.p2align 2
label531:
	li a3, 32
	mv a0, s0
	subw a4, a3, a2
	mv a3, zero
	addi a1, a4, -1
	lw a4, 0(s0)
	lw a5, 4(s0)
	bgt a4, a5, label538
	li a3, 1
	bgt a1, a3, label537
	addiw a2, a2, 1
	li a0, 31
	blt a2, a0, label531
	j label380
.p2align 2
label538:
	sw a4, 4(a0)
	addiw a3, a3, 1
	sw a5, 0(a0)
	ble a1, a3, label2131
.p2align 2
label537:
	addi a0, a0, 4
	lw a4, 0(a0)
	lw a5, 4(a0)
	bgt a4, a5, label538
	addiw a3, a3, 1
	bgt a1, a3, label537
	addiw a2, a2, 1
	li a0, 31
	blt a2, a0, label531
label380:
	mv s2, s0
	mv s3, zero
.p2align 2
label381:
	lw a0, 0(s2)
	jal putint
	li a0, 32
	addiw a1, s3, 1
	bge a1, a0, label384
	addi s2, s2, 4
	mv s3, a1
	j label381
label384:
	lw a0, 240(sp)
	lw a2, 236(sp)
	addw a1, a0, a2
	srliw a4, a1, 31
	add a3, a1, a4
	sraiw a0, a3, 1
	jal putint
	mv a2, zero
pcrel2169:
	auipc a3, %pcrel_hi(count)
	addi a0, a3, %pcrel_lo(pcrel2169)
	mv a1, a0
.p2align 2
label385:
	sd zero, 0(a1)
	addiw a2, a2, 64
	li a3, 960
	sd zero, 8(a1)
	sd zero, 16(a1)
	sd zero, 24(a1)
	sd zero, 32(a1)
	sd zero, 40(a1)
	sd zero, 48(a1)
	sd zero, 56(a1)
	sd zero, 64(a1)
	sd zero, 72(a1)
	sd zero, 80(a1)
	sd zero, 88(a1)
	sd zero, 96(a1)
	sd zero, 104(a1)
	sd zero, 112(a1)
	sd zero, 120(a1)
	sd zero, 128(a1)
	sd zero, 136(a1)
	sd zero, 144(a1)
	sd zero, 152(a1)
	sd zero, 160(a1)
	sd zero, 168(a1)
	sd zero, 176(a1)
	sd zero, 184(a1)
	sd zero, 192(a1)
	sd zero, 200(a1)
	sd zero, 208(a1)
	sd zero, 216(a1)
	sd zero, 224(a1)
	sd zero, 232(a1)
	sd zero, 240(a1)
	sd zero, 248(a1)
	bge a2, a3, label389
	addi a1, a1, 256
	j label385
label389:
	sh2add a4, a2, a0
	mv a1, s0
	mv a3, zero
	mv a2, zero
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	sw zero, 16(a4)
	sw zero, 20(a4)
	sw zero, 24(a4)
	sw zero, 28(a4)
	sw zero, 32(a4)
	sw zero, 36(a4)
	sw zero, 40(a4)
	sw zero, 44(a4)
	sw zero, 48(a4)
	sw zero, 52(a4)
	sw zero, 56(a4)
	sw zero, 60(a4)
	sw zero, 64(a4)
	sw zero, 68(a4)
	sw zero, 72(a4)
	sw zero, 76(a4)
	sw zero, 80(a4)
	sw zero, 84(a4)
	sw zero, 88(a4)
	sw zero, 92(a4)
	sw zero, 96(a4)
	sw zero, 100(a4)
	sw zero, 104(a4)
	sw zero, 108(a4)
	sw zero, 112(a4)
	sw zero, 116(a4)
	sw zero, 120(a4)
	sw zero, 124(a4)
	sw zero, 128(a4)
	sw zero, 132(a4)
	sw zero, 136(a4)
	sw zero, 140(a4)
	sw zero, 144(a4)
	sw zero, 148(a4)
	sw zero, 152(a4)
	sw zero, 156(a4)
	mv a4, zero
label390:
	lw t0, 0(a1)
	mv t5, t0
	sh2add t1, t0, a0
	lw t3, 0(t1)
	addiw a5, t3, 1
	max t2, a2, a5
	sw a5, 0(t1)
	lw t4, 4(a1)
	sh2add t1, t4, a0
	lw t6, 0(t1)
	addiw t3, t6, 1
	blt a2, a5, label2079
	mv t5, a4
label2079:
	mv t0, t4
	blt t2, t3, label2081
	mv t0, t5
label2081:
	max a4, a5, t3
	sw t3, 0(t1)
	max t2, a2, a4
	lw t5, 8(a1)
	mv a5, t5
	sh2add t4, t5, a0
	lw t1, 0(t4)
	addiw t3, t1, 1
	blt t2, t3, label2083
	mv a5, t0
label2083:
	max t2, a4, t3
	sw t3, 0(t4)
	max t1, a2, t2
	lw t6, 12(a1)
	mv a4, t6
	sh2add t0, t6, a0
	lw t3, 0(t0)
	addiw t5, t3, 1
	blt t1, t5, label2085
	mv a4, a5
label2085:
	max t1, t2, t5
	sw t5, 0(t0)
	max t4, a2, t1
	lw t2, 16(a1)
	mv a5, t2
	sh2add t3, t2, a0
	lw t0, 0(t3)
	addiw t5, t0, 1
	blt t4, t5, label2087
	mv a5, a4
label2087:
	max t0, t1, t5
	sw t5, 0(t3)
	max t4, a2, t0
	lw t1, 20(a1)
	mv a4, t1
	sh2add t2, t1, a0
	lw t3, 0(t2)
	addiw t5, t3, 1
	blt t4, t5, label2089
	mv a4, a5
label2089:
	max t1, t0, t5
	sw t5, 0(t2)
	max t4, a2, t1
	lw t0, 24(a1)
	mv a5, t0
	sh2add t3, t0, a0
	lw t2, 0(t3)
	addiw t5, t2, 1
	blt t4, t5, label2091
	mv a5, a4
label2091:
	max t0, t1, t5
	sw t5, 0(t3)
	max t4, a2, t0
	lw t1, 28(a1)
	mv a4, t1
	sh2add t2, t1, a0
	lw t3, 0(t2)
	addiw t5, t3, 1
	blt t4, t5, label2093
	mv a4, a5
label2093:
	max t1, t0, t5
	sw t5, 0(t2)
	max t3, a2, t1
	lw t6, 32(a1)
	mv t0, t6
	sh2add a5, t6, a0
	lw t2, 0(a5)
	addiw t4, t2, 1
	blt t3, t4, label2095
	mv t0, a4
label2095:
	max t2, t1, t4
	sw t4, 0(a5)
	max t3, a2, t2
	lw t1, 36(a1)
	mv a5, t1
	sh2add a4, t1, a0
	lw t5, 0(a4)
	addiw t4, t5, 1
	blt t3, t4, label2097
	mv a5, t0
label2097:
	max t1, t2, t4
	sw t4, 0(a4)
	max t0, a2, t1
	lw t2, 40(a1)
	mv a4, t2
	sh2add t3, t2, a0
	lw t4, 0(t3)
	addiw t5, t4, 1
	blt t0, t5, label2099
	mv a4, a5
label2099:
	max t0, t1, t5
	sw t5, 0(t3)
	max t4, a2, t0
	lw t1, 44(a1)
	mv a5, t1
	sh2add t2, t1, a0
	lw t3, 0(t2)
	addiw t5, t3, 1
	blt t4, t5, label2101
	mv a5, a4
label2101:
	max t1, t0, t5
	sw t5, 0(t2)
	max t3, a2, t1
	lw t6, 48(a1)
	mv t0, t6
	sh2add a4, t6, a0
	lw t2, 0(a4)
	addiw t4, t2, 1
	blt t3, t4, label2103
	mv t0, a5
label2103:
	max t2, t1, t4
	sw t4, 0(a4)
	max t3, a2, t2
	lw t1, 52(a1)
	mv a4, t1
	sh2add a5, t1, a0
	lw t5, 0(a5)
	addiw t4, t5, 1
	blt t3, t4, label2105
	mv a4, t0
label2105:
	max t1, t2, t4
	sw t4, 0(a5)
	max t0, a2, t1
	lw t3, 56(a1)
	mv a5, t3
	sh2add t2, t3, a0
	lw t5, 0(t2)
	addiw t4, t5, 1
	blt t0, t4, label2107
	mv a5, a4
label2107:
	max t0, t1, t4
	sw t4, 0(t2)
	max t3, a2, t0
	lw t5, 60(a1)
	mv a4, t5
	sh2add t1, t5, a0
	lw t4, 0(t1)
	addiw t2, t4, 1
	blt t3, t2, label2109
	mv a4, a5
label2109:
	max t3, t0, t2
	addiw a3, a3, 16
	li a5, 32
	max a2, a2, t3
	sw t2, 0(t1)
	blt a3, a5, label395
	mv a0, a4
	jal putint
	lw a2, 48(sp)
	sw a2, 176(sp)
	lw a1, 52(sp)
	sw a1, 180(sp)
	lw a0, 56(sp)
	sw a0, 184(sp)
	lw a2, 60(sp)
	sw a2, 188(sp)
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
	lw a2, 120(sp)
	sw a2, 248(sp)
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
	lw a2, 160(sp)
	sw a2, 288(sp)
	mv a2, zero
	lw a0, 164(sp)
	sw a0, 292(sp)
	lw a1, 168(sp)
	sw a1, 296(sp)
	lw a0, 172(sp)
	sw a0, 300(sp)
	li a0, 31
	blt zero, a0, label522
	j label399
.p2align 2
label2127:
	addiw a3, a3, 1
	ble a1, a3, label2135
.p2align 2
label528:
	addi a0, a0, 4
	lw a4, 0(a0)
	lw a5, 4(a0)
	ble a4, a5, label2127
.p2align 2
label526:
	sw a4, 4(a0)
	sw a5, 0(a0)
	addiw a3, a3, 1
	bgt a1, a3, label528
	addiw a2, a2, 1
	li a0, 31
	bge a2, a0, label399
.p2align 2
label522:
	li a3, 32
	mv a0, s0
	subw a4, a3, a2
	mv a3, zero
	addi a1, a4, -1
	lw a4, 0(s0)
	lw a5, 4(s0)
	bgt a4, a5, label526
	li a3, 1
	bgt a1, a3, label528
	addiw a2, a2, 1
	li a0, 31
	blt a2, a0, label522
label399:
	mv s2, s0
	mv s3, zero
	j label400
.p2align 2
label521:
	addi s2, s2, 4
	mv s3, a1
.p2align 2
label400:
	lw a0, 0(s2)
	jal putint
	li a0, 32
	addiw a1, s3, 1
	blt a1, a0, label521
	lw a2, 48(sp)
	addi a1, s0, 4
	sw a2, 176(sp)
	lw a0, 52(sp)
	sw a0, 180(sp)
	lw a2, 56(sp)
	sw a2, 184(sp)
	lw a0, 60(sp)
	sw a0, 188(sp)
	lw a2, 64(sp)
	sw a2, 192(sp)
	lw a3, 68(sp)
	sw a3, 196(sp)
	lw a0, 72(sp)
	sw a0, 200(sp)
	lw a2, 76(sp)
	sw a2, 204(sp)
	lw a0, 80(sp)
	sw a0, 208(sp)
	lw a2, 84(sp)
	sw a2, 212(sp)
	lw a3, 88(sp)
	sw a3, 216(sp)
	lw a0, 92(sp)
	sw a0, 220(sp)
	lw a2, 96(sp)
	sw a2, 224(sp)
	lw a0, 100(sp)
	sw a0, 228(sp)
	lw a3, 104(sp)
	sw a3, 232(sp)
	lw a2, 108(sp)
	sw a2, 236(sp)
	lw a0, 112(sp)
	sw a0, 240(sp)
	lw a2, 116(sp)
	sw a2, 244(sp)
	lw a0, 120(sp)
	sw a0, 248(sp)
	lw a2, 124(sp)
	sw a2, 252(sp)
	lw a0, 128(sp)
	sw a0, 256(sp)
	lw a2, 132(sp)
	sw a2, 260(sp)
	lw a0, 136(sp)
	sw a0, 264(sp)
	lw a2, 140(sp)
	sw a2, 268(sp)
	lw a0, 144(sp)
	sw a0, 272(sp)
	lw a2, 148(sp)
	sw a2, 276(sp)
	lw a0, 152(sp)
	sw a0, 280(sp)
	lw a2, 156(sp)
	sw a2, 284(sp)
	lw a0, 160(sp)
	sw a0, 288(sp)
	lw a2, 164(sp)
	sw a2, 292(sp)
	lw a3, 168(sp)
	sw a3, 296(sp)
	lw a0, 172(sp)
	sw a0, 300(sp)
	li a0, 32
	blt s1, a0, label407
	j label1104
.p2align 2
label1112:
	mv a4, zero
	addiw s1, s1, 1
	addi a1, a1, 4
	sw a0, 4(a2)
	li a0, 32
	bge s1, a0, label1104
.p2align 2
label407:
	lw a0, 0(a1)
	addiw a3, s1, -1
	sh2add a2, a3, s0
	blt a3, zero, label1112
.p2align 2
label411:
	lw a5, 0(a2)
	slt a4, a0, a5
	beq a4, zero, label1117
	lw a4, 0(a2)
	addiw a3, a3, -1
	sw a4, 4(a2)
	addi a2, a2, -4
	bge a3, zero, label411
	mv a4, zero
	addiw s1, s1, 1
	addi a1, a1, 4
	sw a0, 4(a2)
	li a0, 32
	blt s1, a0, label407
label1104:
	mv s1, s0
	mv s2, zero
	j label417
.p2align 2
label420:
	addi s1, s1, 4
	mv s2, a1
.p2align 2
label417:
	lw a0, 0(s1)
	jal putint
	li a0, 32
	addiw a1, s2, 1
	blt a1, a0, label420
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
	j label422
.p2align 2
label425:
	addi s1, s1, 4
	mv s2, a1
.p2align 2
label422:
	lw a0, 0(s1)
	jal putint
	li a0, 32
	addiw a1, s2, 1
	blt a1, a0, label425
	lw a0, 48(sp)
	sw a0, 176(sp)
	lw a1, 52(sp)
	sw a1, 180(sp)
	lw a0, 56(sp)
	sw a0, 184(sp)
	lw a1, 60(sp)
	sw a1, 188(sp)
	lw a2, 64(sp)
	sw a2, 192(sp)
	lw a0, 68(sp)
	sw a0, 196(sp)
	lw a1, 72(sp)
	sw a1, 200(sp)
	lw a0, 76(sp)
	sw a0, 204(sp)
	lw a1, 80(sp)
	sw a1, 208(sp)
	lw a2, 84(sp)
	sw a2, 212(sp)
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
	lw a2, 148(sp)
	sw a2, 276(sp)
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
	mv a0, s0
	lw a2, 172(sp)
	sw a2, 300(sp)
	mv a2, zero
label427:
	lw a4, 0(a0)
	andi a3, a1, 3
	li a5, 3
	addw a2, a2, a4
	bne a3, a5, label519
	sw a2, 0(a0)
	mv a2, zero
	j label431
label519:
	sw zero, 0(a0)
label431:
	addiw a3, a1, 1
	andi a4, a3, 3
	sh2add a5, a3, s0
	lw t0, 0(a5)
	li a5, 3
	addw a2, a2, t0
	beq a4, a5, label1343
	sh2add a4, a3, s0
	sw zero, 0(a4)
	j label433
label1343:
	sh2add a4, a3, s0
	sw a2, 0(a4)
	mv a2, zero
label433:
	addiw a3, a1, 2
	andi a4, a3, 3
	sh2add a5, a3, s0
	lw t0, 0(a5)
	li a5, 3
	addw a2, a2, t0
	bne a4, a5, label435
	sh2add a4, a3, s0
	sw a2, 0(a4)
	mv a2, zero
label437:
	addiw a3, a1, 3
	andi a4, a3, 3
	sh2add t0, a3, s0
	lw a5, 0(t0)
	li t0, 3
	addw a2, a2, a5
	beq a4, t0, label1367
	sh2add a4, a3, s0
	sw zero, 0(a4)
label439:
	addiw a3, a1, 4
	andi a4, a3, 3
	sh2add t0, a3, s0
	lw a5, 0(t0)
	li t0, 3
	addw a2, a2, a5
	beq a4, t0, label1377
	sh2add a4, a3, s0
	sw zero, 0(a4)
	j label441
label1377:
	sh2add a4, a3, s0
	sw a2, 0(a4)
	mv a2, zero
label441:
	addiw a3, a1, 5
	andi a4, a3, 3
	sh2add t0, a3, s0
	lw a5, 0(t0)
	li t0, 3
	addw a2, a2, a5
	bne a4, t0, label512
	sh2add a4, a3, s0
	sw a2, 0(a4)
	mv a2, zero
label443:
	addiw a3, a1, 6
	andi a4, a3, 3
	sh2add t0, a3, s0
	lw a5, 0(t0)
	li t0, 3
	addw a2, a2, a5
	bne a4, t0, label445
	sh2add a4, a3, s0
	sw a2, 0(a4)
	mv a2, zero
	j label446
label445:
	sh2add a4, a3, s0
	sw zero, 0(a4)
label446:
	addiw a3, a1, 7
	andi a4, a3, 3
	sh2add t0, a3, s0
	lw a5, 0(t0)
	li t0, 3
	addw a2, a2, a5
	bne a4, t0, label509
	sh2add a4, a3, s0
	sw a2, 0(a4)
	mv a2, zero
label449:
	addiw a3, a1, 8
	andi a4, a3, 3
	sh2add t0, a3, s0
	lw a5, 0(t0)
	li t0, 3
	addw a2, a2, a5
	bne a4, t0, label508
	sh2add a4, a3, s0
	sw a2, 0(a4)
	mv a2, zero
	j label452
label508:
	sh2add a4, a3, s0
	sw zero, 0(a4)
label452:
	addiw a3, a1, 9
	andi a4, a3, 3
	sh2add t0, a3, s0
	lw a5, 0(t0)
	li t0, 3
	addw a2, a2, a5
	bne a4, t0, label507
	sh2add a4, a3, s0
	sw a2, 0(a4)
	mv a2, zero
label454:
	addiw a3, a1, 10
	andi a4, a3, 3
	sh2add a5, a3, s0
	lw t0, 0(a5)
	li a5, 3
	addw a2, a2, t0
	beq a4, a5, label456
	sh2add a4, a3, s0
	sw zero, 0(a4)
label457:
	addiw a3, a1, 11
	andi a4, a3, 3
	sh2add t0, a3, s0
	lw a5, 0(t0)
	li t0, 3
	addw a2, a2, a5
	bne a4, t0, label504
	sh2add a4, a3, s0
	sw a2, 0(a4)
	mv a2, zero
label459:
	addiw a3, a1, 12
	andi a4, a3, 3
	sh2add a5, a3, s0
	lw t0, 0(a5)
	li a5, 3
	addw a2, a2, t0
	bne a4, a5, label462
	sh2add a4, a3, s0
	sw a2, 0(a4)
	mv a2, zero
	j label463
label456:
	sh2add a4, a3, s0
	sw a2, 0(a4)
	mv a2, zero
	j label457
label462:
	sh2add a4, a3, s0
	sw zero, 0(a4)
label463:
	addiw a3, a1, 13
	andi a4, a3, 3
	sh2add t0, a3, s0
	lw a5, 0(t0)
	li t0, 3
	addw a2, a2, a5
	bne a4, t0, label466
	sh2add a4, a3, s0
	sw a2, 0(a4)
	mv a2, zero
	j label467
label466:
	sh2add a4, a3, s0
	sw zero, 0(a4)
label467:
	addiw a3, a1, 14
	andi a4, a3, 3
	sh2add t0, a3, s0
	lw a5, 0(t0)
	li t0, 3
	addw a2, a2, a5
	bne a4, t0, label470
	sh2add a4, a3, s0
	sw a2, 0(a4)
	mv a2, zero
	j label471
label470:
	sh2add a4, a3, s0
	sw zero, 0(a4)
label471:
	addiw a3, a1, 15
	andi a4, a3, 3
	sh2add a5, a3, s0
	lw t0, 0(a5)
	li a5, 3
	addw a2, a2, t0
	bne a4, a5, label502
	sh2add a4, a3, s0
	sw a2, 0(a4)
	mv a2, zero
	j label473
label502:
	sh2add a4, a3, s0
	sw zero, 0(a4)
label473:
	addiw a1, a1, 16
	li a3, 32
	blt a1, a3, label500
	mv s1, s0
	mv s2, zero
.p2align 2
label476:
	lw a0, 0(s1)
	jal putint
	li a0, 32
	addiw a1, s2, 1
	bge a1, a0, label479
	addi s1, s1, 4
	mv s2, a1
	j label476
label479:
	lw a0, 48(sp)
	mv a3, zero
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
	lw a2, 92(sp)
	sw a2, 220(sp)
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
	lw a2, 136(sp)
	sw a2, 264(sp)
	lw a1, 140(sp)
	sw a1, 268(sp)
	lw a0, 144(sp)
	sw a0, 272(sp)
	lw a1, 148(sp)
	sw a1, 276(sp)
	lw a0, 152(sp)
	sw a0, 280(sp)
	lw a2, 156(sp)
	sw a2, 284(sp)
	lw a1, 160(sp)
	sw a1, 288(sp)
	lw a0, 164(sp)
	sw a0, 292(sp)
	mv a0, zero
	lw a1, 168(sp)
	sw a1, 296(sp)
	mv a1, s0
	lw a2, 172(sp)
	sw a2, 300(sp)
	mv a2, zero
	li a4, 2
	blt zero, a4, label498
	beq zero, a4, label497
	j label496
.p2align 2
label498:
	lw a4, 0(a1)
	addiw a0, a0, 1
	addw a3, a3, a4
	li a4, 32
	bge a0, a4, label2123
.p2align 2
label494:
	addi a1, a1, 4
	li a4, 2
	blt a0, a4, label498
	bne a0, a4, label496
.p2align 2
label497:
	lw a2, 176(sp)
	lui t1, 349525
	addiw a0, a0, 1
	addiw t0, t1, 1366
	mul a4, a3, t0
	srli t1, a4, 63
	srli a5, a4, 32
	li a4, 32
	add t0, t1, a5
	sw t0, 176(sp)
	blt a0, a4, label494
label2123:
	sd zero, 296(sp)
	mv s1, zero
.p2align 2
label489:
	lw a0, 0(s0)
	jal putint
	li a0, 32
	addiw a1, s1, 1
	bge a1, a0, label493
	addi s0, s0, 4
	mv s1, a1
	j label489
.p2align 2
label496:
	sh2add a4, a0, s0
	lui t2, 349525
	addiw a0, a0, 1
	addiw t0, t2, 1366
	lw a5, 0(a4)
	addw t1, a3, a5
	subw a3, t1, a2
	lw a2, -8(a4)
	mul a5, a3, t0
	srli t2, a5, 63
	srli t1, a5, 32
	add t0, t2, t1
	sw t0, -8(a4)
	li a4, 32
	blt a0, a4, label494
	j label2123
label493:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 304
	ret
.p2align 2
label2135:
	addiw a2, a2, 1
	li a0, 31
	blt a2, a0, label522
	j label399
label1117:
	sw a0, 4(a2)
	addiw s1, s1, 1
	addi a1, a1, 4
	li a0, 32
	blt s1, a0, label407
	j label1104
label507:
	sh2add a4, a3, s0
	sw zero, 0(a4)
	j label454
label504:
	sh2add a4, a3, s0
	sw zero, 0(a4)
	j label459
label509:
	sh2add a4, a3, s0
	sw zero, 0(a4)
	j label449
label512:
	sh2add a4, a3, s0
	sw zero, 0(a4)
	j label443
label500:
	addi a0, a0, 64
	j label427
label435:
	sh2add a4, a3, s0
	sw zero, 0(a4)
	j label437
label395:
	addi a1, a1, 64
	j label390
label1367:
	sh2add a4, a3, s0
	sw a2, 0(a4)
	mv a2, zero
	j label439
