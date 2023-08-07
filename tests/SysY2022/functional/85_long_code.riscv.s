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
	ble s1, a0, label4
	sh2add a3, a0, s0
	mv a4, s1
	mv s2, a0
	lw a1, 0(a3)
	addi a2, a1, -1
label6:
	ble a4, s2, label9
.p2align 2
label76:
	sh2add a3, a4, s0
	blt s2, a4, label87
	sh2add a5, s2, s0
.p2align 2
label81:
	ble a4, s2, label262
.p2align 2
label84:
	lw t0, 0(a5)
	ble a1, t0, label85
	addiw s2, s2, 1
	addi a5, a5, 4
	bgt a4, s2, label84
	j label9
.p2align 2
label87:
	lw a5, 0(a3)
	bge a2, a5, label275
	addiw a4, a4, -1
	addi a3, a3, -4
	blt s2, a4, label87
	sh2add a5, s2, s0
	bgt a4, s2, label84
	j label9
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
label85:
	sw t0, 0(a3)
	addiw a4, a4, -1
	j label6
label9:
	sh2add a2, s2, s0
	addiw s3, s2, -1
	sw a1, 0(a2)
label10:
	bgt s3, a0, label13
	j label12
label20:
	addiw a0, s4, 1
	j label10
label12:
	addiw a0, s2, 1
	j label2
label13:
	sh2add a3, a0, s0
	mv a4, s3
	mv s4, a0
	lw a1, 0(a3)
	addi a2, a1, -1
label14:
	bgt a4, s4, label62
label17:
	sh2add a2, s4, s0
	addiw s5, s4, -1
	sw a1, 0(a2)
	j label18
.p2align 2
label62:
	sh2add a3, a4, s0
	blt s4, a4, label66
	sh2add a5, s4, s0
	bgt a4, s4, label73
	j label338
label229:
	sh2add t0, s4, s0
	addiw s4, s4, 1
	sw a5, 0(t0)
	sh2add a5, s4, s0
	ble a4, s4, label242
.p2align 2
label73:
	lw t0, 0(a5)
	ble a1, t0, label247
	addiw s4, s4, 1
	addi a5, a5, 4
	bgt a4, s4, label73
	j label17
label18:
	bgt s5, a0, label21
	j label20
label134:
	sh2add a2, s6, s0
	addiw s7, s6, -1
	sw a1, 0(a2)
	mv a1, a0
	j label40
.p2align 2
label25:
	sh2add a3, a4, s0
	blt s6, a4, label30
	sh2add a5, s6, s0
	bgt a4, s6, label36
	j label319
.p2align 2
label30:
	lw a5, 0(a3)
	bge a2, a5, label147
	addiw a4, a4, -1
	addi a3, a3, -4
	blt s6, a4, label30
	sh2add a5, s6, s0
	ble a4, s6, label333
.p2align 2
label36:
	lw t0, 0(a5)
	ble a1, t0, label163
	addiw s6, s6, 1
	addi a5, a5, 4
	bgt a4, s6, label36
	j label134
label40:
	bgt s7, a1, label42
	addiw a0, s6, 1
	j label18
.p2align 2
label66:
	lw a5, 0(a3)
	bge a2, a5, label229
	addiw a4, a4, -1
	addi a3, a3, -4
	blt s4, a4, label66
	sh2add a5, s4, s0
	bgt a4, s4, label73
	j label17
label42:
	sh2add a3, a1, s0
	mv a4, s7
	mv s8, a1
	lw a0, 0(a3)
	addi a2, a0, -1
label43:
	bgt a4, s8, label47
label46:
	sh2add a3, s8, s0
	addiw a2, s8, -1
	sw a0, 0(a3)
	mv a0, s0
	jal QuickSort
	addiw a1, s8, 1
	j label40
.p2align 2
label47:
	sh2add a3, a4, s0
	bge s8, a4, label191
.p2align 2
label51:
	lw a5, 0(a3)
	blt a2, a5, label52
	sh2add t0, s8, s0
	addiw s8, s8, 1
	sw a5, 0(t0)
	sh2add a5, s8, s0
	j label55
.p2align 2
label52:
	addiw a4, a4, -1
	addi a3, a3, -4
	blt s8, a4, label51
	sh2add a5, s8, s0
	bgt a4, s8, label58
	j label336
label55:
	ble a4, s8, label209
.p2align 2
label58:
	lw t0, 0(a5)
	ble a0, t0, label214
	addiw s8, s8, 1
	addi a5, a5, 4
	bgt a4, s8, label58
	j label46
.p2align 2
label191:
	sh2add a5, s8, s0
	bgt a4, s8, label58
	j label46
label21:
	sh2add a3, a0, s0
	mv a4, s5
	mv s6, a0
	lw a1, 0(a3)
	addi a2, a1, -1
label22:
	bgt a4, s6, label25
	j label134
label147:
	sh2add t0, s6, s0
	addiw s6, s6, 1
	sw a5, 0(t0)
	sh2add a5, s6, s0
	bgt a4, s6, label36
	j label134
.p2align 2
label262:
	bgt a4, s2, label76
	j label9
.p2align 2
label319:
	bgt a4, s6, label25
	j label134
.p2align 2
label338:
	bgt a4, s4, label62
	j label17
.p2align 2
label333:
	bgt a4, s6, label25
	j label134
.p2align 2
label336:
	bgt a4, s8, label47
	j label46
label209:
	bgt a4, s8, label47
	j label46
label242:
	bgt a4, s4, label62
	j label17
label214:
	sw t0, 0(a3)
	addiw a4, a4, -1
	j label43
label163:
	sw t0, 0(a3)
	addiw a4, a4, -1
	j label22
label247:
	sw t0, 0(a3)
	addiw a4, a4, -1
	j label14
label275:
	sh2add t0, s2, s0
	addiw s2, s2, 1
	sw a5, 0(t0)
	sh2add a5, s2, s0
	j label81
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
pcrel2313:
	auipc a0, %pcrel_hi(count)
	sd a1, 184(sp)
	addi s2, a0, %pcrel_lo(pcrel2313)
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
label370:
	lw a0, 0(s3)
	jal putint
	li a2, 32
	addiw a1, s4, 1
	bge a1, a2, label588
	addi s3, s3, 4
	mv s4, a1
	j label370
label588:
	mv a0, zero
	li a2, 31
	blt zero, a2, label494
label376:
	mv s3, s0
	mv s4, zero
.p2align 2
label377:
	lw a0, 0(s3)
	jal putint
	li a0, 32
	addiw a1, s4, 1
	bge a1, a0, label381
	addi s3, s3, 4
	mv s4, a1
	j label377
.p2align 2
label494:
	li a4, 32
	subw a3, a4, a0
	li a4, 4
	addi a2, a3, -5
	addiw a1, a3, -1
	ble a1, a4, label1695
	mv a3, s0
	mv a4, zero
	lw a5, 0(s0)
	lw t0, 4(s0)
	bgt a5, t0, label499
	j label1702
.p2align 2
label1763:
	addiw a0, a0, 1
	li a2, 31
	blt a0, a2, label494
	j label376
.p2align 2
label499:
	sw a5, 4(a3)
	sw t0, 0(a3)
	addiw a5, a4, 1
	sh2add t2, a5, s0
	lw t0, 0(t2)
	lw t1, 4(t2)
	bgt t0, t1, label508
	addiw a5, a4, 2
	sh2add t2, a5, s0
	lw t0, 0(t2)
	lw t1, 4(t2)
	bgt t0, t1, label502
	addiw a5, a4, 3
	sh2add t2, a5, s0
	lw t0, 0(t2)
	lw t1, 4(t2)
	bgt t0, t1, label504
	addiw a4, a4, 4
	bgt a2, a4, label506
	sh2add a2, a4, s0
	lw a3, 0(a2)
	lw a5, 4(a2)
	bgt a3, a5, label512
label2253:
	addiw a4, a4, 1
	bgt a1, a4, label514
	j label2205
.p2align 2
label502:
	sh2add t2, a5, s0
	sw t0, 4(t2)
	sw t1, 0(t2)
	addiw a5, a4, 3
	sh2add t2, a5, s0
	lw t0, 0(t2)
	lw t1, 4(t2)
	ble t0, t1, label1736
.p2align 2
label504:
	sh2add t2, a5, s0
	sw t0, 4(t2)
	sw t1, 0(t2)
	addiw a4, a4, 4
	ble a2, a4, label1744
.p2align 2
label506:
	addi a3, a3, 16
	lw a5, 0(a3)
	lw t0, 4(a3)
	bgt a5, t0, label499
	addiw a5, a4, 1
	sh2add t2, a5, s0
	lw t0, 0(t2)
	lw t1, 4(t2)
	bgt t0, t1, label508
	addiw a5, a4, 2
	sh2add t2, a5, s0
	lw t0, 0(t2)
	lw t1, 4(t2)
	bgt t0, t1, label502
	j label2243
.p2align 2
label508:
	sh2add t2, a5, s0
	addiw a5, a4, 2
	sw t0, 4(t2)
	sw t1, 0(t2)
	sh2add t2, a5, s0
	lw t0, 0(t2)
	lw t1, 4(t2)
	bgt t0, t1, label502
	addiw a5, a4, 3
	sh2add t2, a5, s0
	lw t0, 0(t2)
	lw t1, 4(t2)
	bgt t0, t1, label504
	addiw a4, a4, 4
	bgt a2, a4, label506
	sh2add a2, a4, s0
	lw a3, 0(a2)
	lw a5, 4(a2)
	bgt a3, a5, label512
	addiw a4, a4, 1
	bgt a1, a4, label514
	j label2205
.p2align 2
label1736:
	addiw a4, a4, 4
	bgt a2, a4, label506
	sh2add a2, a4, s0
	lw a3, 0(a2)
	lw a5, 4(a2)
	ble a3, a5, label2241
.p2align 2
label512:
	sw a3, 4(a2)
	sw a5, 0(a2)
	addiw a4, a4, 1
	ble a1, a4, label1763
.p2align 2
label514:
	addi a2, a2, 4
	lw a3, 0(a2)
	lw a5, 4(a2)
	bgt a3, a5, label512
	addiw a4, a4, 1
	bgt a1, a4, label514
	addiw a0, a0, 1
	li a2, 31
	blt a0, a2, label494
	j label376
.p2align 2
label2243:
	addiw a5, a4, 3
	sh2add t2, a5, s0
	lw t0, 0(t2)
	lw t1, 4(t2)
	bgt t0, t1, label504
	addiw a4, a4, 4
	bgt a2, a4, label506
	sh2add a2, a4, s0
	lw a3, 0(a2)
	lw a5, 4(a2)
	bgt a3, a5, label512
	j label2253
.p2align 2
label1744:
	sh2add a2, a4, s0
	lw a3, 0(a2)
	lw a5, 4(a2)
	bgt a3, a5, label512
	addiw a4, a4, 1
	bgt a1, a4, label514
	addiw a0, a0, 1
	li a2, 31
	blt a0, a2, label494
	j label376
.p2align 2
label1702:
	addiw a5, a4, 1
	sh2add t2, a5, s0
	lw t0, 0(t2)
	lw t1, 4(t2)
	bgt t0, t1, label508
	addiw a5, a4, 2
	sh2add t2, a5, s0
	lw t0, 0(t2)
	lw t1, 4(t2)
	bgt t0, t1, label502
	addiw a5, a4, 3
	sh2add t2, a5, s0
	lw t0, 0(t2)
	lw t1, 4(t2)
	bgt t0, t1, label504
	addiw a4, a4, 4
	bgt a2, a4, label506
	sh2add a2, a4, s0
	lw a3, 0(a2)
	lw a5, 4(a2)
	bgt a3, a5, label512
	j label2253
.p2align 2
label1695:
	mv a2, s0
	mv a4, zero
	lw a3, 0(s0)
	lw a5, 4(s0)
	bgt a3, a5, label512
	li a4, 1
	bgt a1, a4, label514
	j label2205
.p2align 2
label2241:
	addiw a4, a4, 1
	bgt a1, a4, label514
.p2align 2
label2205:
	addiw a0, a0, 1
	li a2, 31
	blt a0, a2, label494
	j label376
label381:
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
label382:
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
	bge a1, a2, label385
	addi a0, a0, 256
	j label382
label385:
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
	bgt a3, zero, label2104
	mv t0, zero
label2104:
	mv a1, a5
	blt a0, a4, label2106
	mv a1, t0
label2106:
	max a3, a0, a4
	sw a4, 0(a2)
	lw t0, 184(sp)
	mv a2, t0
	sh2add a0, t0, s2
	lw a4, 0(a0)
	addiw a5, a4, 1
	blt a3, a5, label2108
	mv a2, a1
label2108:
	max a4, a3, a5
	sw a5, 0(a0)
	lw t0, 188(sp)
	mv a0, t0
	sh2add a1, t0, s2
	lw a3, 0(a1)
	addiw a5, a3, 1
	blt a4, a5, label2110
	mv a0, a2
label2110:
	max a3, a4, a5
	sw a5, 0(a1)
	lw t0, 192(sp)
	mv a1, t0
	sh2add a2, t0, s2
	lw a4, 0(a2)
	addiw a5, a4, 1
	blt a3, a5, label2112
	mv a1, a0
label2112:
	max a4, a3, a5
	sw a5, 0(a2)
	lw t0, 196(sp)
	mv a2, t0
	sh2add a0, t0, s2
	lw a3, 0(a0)
	addiw a5, a3, 1
	blt a4, a5, label2114
	mv a2, a1
label2114:
	max a3, a4, a5
	sw a5, 0(a0)
	lw a1, 200(sp)
	mv a0, a1
	sh2add a4, a1, s2
	lw t0, 0(a4)
	addiw a5, t0, 1
	blt a3, a5, label2116
	mv a0, a2
label2116:
	max a1, a3, a5
	sw a5, 0(a4)
	lw t0, 204(sp)
	mv a2, t0
	sh2add a3, t0, s2
	lw a4, 0(a3)
	addiw a5, a4, 1
	blt a1, a5, label2118
	mv a2, a0
label2118:
	max a4, a1, a5
	sw a5, 0(a3)
	lw t0, 208(sp)
	mv a1, t0
	sh2add a0, t0, s2
	lw a3, 0(a0)
	addiw a5, a3, 1
	blt a4, a5, label2120
	mv a1, a2
label2120:
	max a3, a4, a5
	sw a5, 0(a0)
	lw t0, 212(sp)
	mv a0, t0
	sh2add a2, t0, s2
	lw a4, 0(a2)
	addiw a5, a4, 1
	blt a3, a5, label2122
	mv a0, a1
label2122:
	max a4, a3, a5
	sw a5, 0(a2)
	lw t0, 216(sp)
	mv a2, t0
	sh2add a1, t0, s2
	lw a3, 0(a1)
	addiw a5, a3, 1
	blt a4, a5, label2124
	mv a2, a0
label2124:
	max a3, a4, a5
	sw a5, 0(a1)
	lw t0, 220(sp)
	mv a1, t0
	sh2add a0, t0, s2
	lw a4, 0(a0)
	addiw a5, a4, 1
	blt a3, a5, label2126
	mv a1, a2
label2126:
	max a4, a3, a5
	sw a5, 0(a0)
	lw t0, 224(sp)
	mv a0, t0
	sh2add a2, t0, s2
	lw a3, 0(a2)
	addiw a5, a3, 1
	blt a4, a5, label2128
	mv a0, a1
label2128:
	max a3, a4, a5
	sw a5, 0(a2)
	lw t1, 228(sp)
	mv a1, t1
	sh2add a4, t1, s2
	lw a2, 0(a4)
	addiw t0, a2, 1
	blt a3, t0, label2130
	mv a1, a0
label2130:
	max a2, a3, t0
	sw t0, 0(a4)
	lw t1, 232(sp)
	mv a0, t1
	sh2add a5, t1, s2
	lw a3, 0(a5)
	addiw a4, a3, 1
	blt a2, a4, label2132
	mv a0, a1
label2132:
	max a3, a2, a4
	sw a4, 0(a5)
	lw t0, 236(sp)
	mv a1, t0
	sh2add a2, t0, s2
	lw a5, 0(a2)
	addiw a4, a5, 1
	blt a3, a4, label2134
	mv a1, a0
label2134:
	max a5, a3, a4
	sw a4, 0(a2)
	lw t0, 240(sp)
	mv a2, t0
	sh2add a0, t0, s2
	lw a4, 0(a0)
	addiw a3, a4, 1
	blt a5, a3, label2136
	mv a2, a1
label2136:
	max a4, a5, a3
	sw a3, 0(a0)
	lw t0, 244(sp)
	mv a0, t0
	sh2add a1, t0, s2
	lw a3, 0(a1)
	addiw a5, a3, 1
	blt a4, a5, label2138
	mv a0, a2
label2138:
	max a3, a4, a5
	sw a5, 0(a1)
	lw t0, 248(sp)
	mv a1, t0
	sh2add a2, t0, s2
	lw a4, 0(a2)
	addiw a5, a4, 1
	blt a3, a5, label2140
	mv a1, a0
label2140:
	max a4, a3, a5
	sw a5, 0(a2)
	lw t0, 252(sp)
	mv a0, t0
	sh2add a3, t0, s2
	lw a2, 0(a3)
	addiw a5, a2, 1
	blt a4, a5, label2142
	mv a0, a1
label2142:
	max a2, a4, a5
	sw a5, 0(a3)
	lw t1, 256(sp)
	mv a1, t1
	sh2add a4, t1, s2
	lw a3, 0(a4)
	addiw t0, a3, 1
	blt a2, t0, label2144
	mv a1, a0
label2144:
	max a3, a2, t0
	sw t0, 0(a4)
	lw t1, 260(sp)
	mv a0, t1
	sh2add a5, t1, s2
	lw a2, 0(a5)
	addiw a4, a2, 1
	blt a3, a4, label2146
	mv a0, a1
label2146:
	max a2, a3, a4
	sw a4, 0(a5)
	lw t0, 264(sp)
	mv a1, t0
	sh2add a3, t0, s2
	lw a4, 0(a3)
	addiw a5, a4, 1
	blt a2, a5, label2148
	mv a1, a0
label2148:
	max a4, a2, a5
	sw a5, 0(a3)
	lw t0, 268(sp)
	mv a0, t0
	sh2add a2, t0, s2
	lw a3, 0(a2)
	addiw a5, a3, 1
	blt a4, a5, label2150
	mv a0, a1
label2150:
	max a3, a4, a5
	sw a5, 0(a2)
	lw t0, 272(sp)
	mv a2, t0
	sh2add a1, t0, s2
	lw a5, 0(a1)
	addiw a4, a5, 1
	blt a3, a4, label2152
	mv a2, a0
label2152:
	max a5, a3, a4
	sw a4, 0(a1)
	lw t0, 276(sp)
	mv a1, t0
	sh2add a0, t0, s2
	lw a4, 0(a0)
	addiw a3, a4, 1
	blt a5, a3, label2154
	mv a1, a2
label2154:
	max a4, a5, a3
	sw a3, 0(a0)
	lw t0, 280(sp)
	mv a0, t0
	sh2add a2, t0, s2
	lw a3, 0(a2)
	addiw a5, a3, 1
	blt a4, a5, label2156
	mv a0, a1
label2156:
	max a3, a4, a5
	sw a5, 0(a2)
	lw t0, 284(sp)
	mv a2, t0
	sh2add a1, t0, s2
	lw a4, 0(a1)
	addiw a5, a4, 1
	blt a3, a5, label2158
	mv a2, a0
label2158:
	max a4, a3, a5
	sw a5, 0(a1)
	lw t1, 288(sp)
	mv a1, t1
	sh2add a0, t1, s2
	lw a3, 0(a0)
	addiw t0, a3, 1
	blt a4, t0, label2160
	mv a1, a2
label2160:
	max a3, a4, t0
	sw t0, 0(a0)
	lw a2, 292(sp)
	mv a0, a2
	sh2add a5, a2, s2
	lw a4, 0(a5)
	addiw t0, a4, 1
	blt a3, t0, label2162
	mv a0, a1
label2162:
	max a2, a3, t0
	sw t0, 0(a5)
	lw t1, 296(sp)
	mv a1, t1
	sh2add a4, t1, s2
	lw a3, 0(a4)
	addiw a5, a3, 1
	blt a2, a5, label2164
	mv a1, a0
label2164:
	max a3, a2, a5
	sw a5, 0(a4)
	lw t0, 300(sp)
	mv a0, t0
	sh2add a2, t0, s2
	lw a5, 0(a2)
	addiw a4, a5, 1
	blt a3, a4, label2166
	mv a0, a1
label2166:
	sw a4, 0(a2)
	jal putint
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
	lw a1, 84(sp)
	sw a1, 212(sp)
	lw a2, 88(sp)
	sw a2, 216(sp)
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
	lw a2, 136(sp)
	sw a2, 264(sp)
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
	lw a2, 160(sp)
	sw a2, 288(sp)
	lw a0, 164(sp)
	sw a0, 292(sp)
	mv a0, zero
	lw a1, 168(sp)
	sw a1, 296(sp)
	lw a2, 172(sp)
	sw a2, 300(sp)
	li a1, 31
	blt zero, a1, label388
label1068:
	mv s2, s0
	mv s3, zero
	j label412
.p2align 2
label388:
	li a4, 32
	subw a3, a4, a0
	li a4, 4
	addi a2, a3, -5
	addiw a1, a3, -1
	ble a1, a4, label1075
	mv a3, s0
	mv a4, zero
	lw a5, 0(s0)
	lw t0, 4(s0)
	bgt a5, t0, label393
	j label1082
.p2align 2
label408:
	addi a2, a2, 4
	lw a3, 0(a2)
	lw a5, 4(a2)
	bgt a3, a5, label409
	addiw a4, a4, 1
	bgt a1, a4, label408
	j label2215
.p2align 2
label409:
	sw a3, 4(a2)
	addiw a4, a4, 1
	sw a5, 0(a2)
	bgt a1, a4, label408
	addiw a0, a0, 1
	li a1, 31
	blt a0, a1, label388
	j label1068
.p2align 2
label412:
	lw a0, 0(s2)
	jal putint
	li a0, 32
	addiw a1, s3, 1
	bge a1, a0, label415
	addi s2, s2, 4
	mv s3, a1
	j label412
.p2align 2
label393:
	sw a5, 4(a3)
	sw t0, 0(a3)
	addiw a5, a4, 1
	sh2add t2, a5, s0
	lw t0, 0(t2)
	lw t1, 4(t2)
	bgt t0, t1, label395
	addiw a5, a4, 2
	sh2add t2, a5, s0
	lw t0, 0(t2)
	lw t1, 4(t2)
	bgt t0, t1, label397
	addiw a5, a4, 3
	sh2add t2, a5, s0
	lw t0, 0(t2)
	lw t1, 4(t2)
	bgt t0, t1, label399
	addiw a4, a4, 4
	bgt a2, a4, label401
	sh2add a2, a4, s0
	lw a3, 0(a2)
	lw a5, 4(a2)
	bgt a3, a5, label409
label406:
	addiw a4, a4, 1
	bgt a1, a4, label408
	j label407
.p2align 2
label395:
	sh2add t2, a5, s0
	sw t0, 4(t2)
	sw t1, 0(t2)
	addiw a5, a4, 2
	sh2add t2, a5, s0
	lw t0, 0(t2)
	lw t1, 4(t2)
	bgt t0, t1, label397
	addiw a5, a4, 3
	sh2add t2, a5, s0
	lw t0, 0(t2)
	lw t1, 4(t2)
	ble t0, t1, label2177
.p2align 2
label399:
	sh2add t2, a5, s0
	sw t0, 4(t2)
	sw t1, 0(t2)
	addiw a4, a4, 4
	ble a2, a4, label1127
.p2align 2
label401:
	addi a3, a3, 16
	lw a5, 0(a3)
	lw t0, 4(a3)
	bgt a5, t0, label393
	addiw a5, a4, 1
	sh2add t2, a5, s0
	lw t0, 0(t2)
	lw t1, 4(t2)
	bgt t0, t1, label395
	addiw a5, a4, 2
	sh2add t2, a5, s0
	lw t0, 0(t2)
	lw t1, 4(t2)
	bgt t0, t1, label397
	addiw a5, a4, 3
	sh2add t2, a5, s0
	lw t0, 0(t2)
	lw t1, 4(t2)
	bgt t0, t1, label399
	addiw a4, a4, 4
	bgt a2, a4, label401
	sh2add a2, a4, s0
	lw a3, 0(a2)
	lw a5, 4(a2)
	bgt a3, a5, label409
	j label406
.p2align 2
label397:
	sh2add t2, a5, s0
	sw t0, 4(t2)
	sw t1, 0(t2)
	addiw a5, a4, 3
	sh2add t2, a5, s0
	lw t0, 0(t2)
	lw t1, 4(t2)
	bgt t0, t1, label399
	addiw a4, a4, 4
	bgt a2, a4, label401
	sh2add a2, a4, s0
	lw a3, 0(a2)
	lw a5, 4(a2)
	bgt a3, a5, label409
	addiw a4, a4, 1
	bgt a1, a4, label408
.p2align 2
label407:
	addiw a0, a0, 1
	li a1, 31
	blt a0, a1, label388
	j label1068
.p2align 2
label1127:
	sh2add a2, a4, s0
	lw a3, 0(a2)
	lw a5, 4(a2)
	bgt a3, a5, label409
	addiw a4, a4, 1
	bgt a1, a4, label408
	addiw a0, a0, 1
	li a1, 31
	blt a0, a1, label388
	j label1068
.p2align 2
label1082:
	addiw a5, a4, 1
	sh2add t2, a5, s0
	lw t0, 0(t2)
	lw t1, 4(t2)
	bgt t0, t1, label395
	addiw a5, a4, 2
	sh2add t2, a5, s0
	lw t0, 0(t2)
	lw t1, 4(t2)
	bgt t0, t1, label397
	addiw a5, a4, 3
	sh2add t2, a5, s0
	lw t0, 0(t2)
	lw t1, 4(t2)
	bgt t0, t1, label399
	addiw a4, a4, 4
	bgt a2, a4, label401
	sh2add a2, a4, s0
	lw a3, 0(a2)
	lw a5, 4(a2)
	bgt a3, a5, label409
	j label406
.p2align 2
label2177:
	addiw a4, a4, 4
	bgt a2, a4, label401
	sh2add a2, a4, s0
	lw a3, 0(a2)
	lw a5, 4(a2)
	bgt a3, a5, label409
	addiw a4, a4, 1
	bgt a1, a4, label408
	j label407
.p2align 2
label1075:
	mv a2, s0
	mv a4, zero
	lw a3, 0(s0)
	lw a5, 4(s0)
	bgt a3, a5, label409
	li a4, 1
	bgt a1, a4, label408
	j label407
label415:
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
	lw a2, 92(sp)
	sw a2, 220(sp)
	lw a1, 96(sp)
	sw a1, 224(sp)
	lw a2, 100(sp)
	sw a2, 228(sp)
	lw a1, 104(sp)
	sw a1, 232(sp)
	lw a2, 108(sp)
	sw a2, 236(sp)
	lw a1, 112(sp)
	sw a1, 240(sp)
	lw a2, 116(sp)
	sw a2, 244(sp)
	lw a1, 120(sp)
	sw a1, 248(sp)
	lw a2, 124(sp)
	sw a2, 252(sp)
	lw a1, 128(sp)
	sw a1, 256(sp)
	lw a2, 132(sp)
	sw a2, 260(sp)
	lw a1, 136(sp)
	sw a1, 264(sp)
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
label416:
	li a1, 32
	bge s1, a1, label419
.p2align 2
label485:
	lw a1, 0(a0)
	addiw a3, s1, -1
	sh2add a2, a3, s0
	addiw a4, a3, 1
	bge a3, zero, label489
	sh2add a2, a4, s0
	addiw s1, s1, 1
	addi a0, a0, 4
	sw a1, 0(a2)
	li a1, 32
	blt s1, a1, label485
	j label419
.p2align 2
label489:
	lw a5, 0(a2)
	bge a1, a5, label1678
	sh2add t0, a4, s0
	addiw a3, a3, -1
	addi a2, a2, -4
	addiw a4, a3, 1
	sw a5, 0(t0)
	bge a3, zero, label489
	sh2add a2, a4, s0
	addiw s1, s1, 1
	addi a0, a0, 4
	sw a1, 0(a2)
	li a1, 32
	blt s1, a1, label485
label419:
	mv s1, s0
	mv s2, zero
.p2align 2
label420:
	lw a0, 0(s1)
	jal putint
	li a0, 32
	addiw a1, s2, 1
	bge a1, a0, label423
	addi s1, s1, 4
	mv s2, a1
	j label420
label423:
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
	lw a2, 68(sp)
	sw a2, 196(sp)
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
	lw a2, 100(sp)
	sw a2, 228(sp)
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
	lw a2, 124(sp)
	sw a2, 252(sp)
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
label424:
	lw a0, 0(s1)
	jal putint
	li a0, 32
	addiw a1, s2, 1
	bge a1, a0, label427
	addi s1, s1, 4
	mv s2, a1
	j label424
label427:
	lw a0, 48(sp)
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
	lw a2, 76(sp)
	sw a2, 204(sp)
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
	lw a0, 160(sp)
	sw a0, 288(sp)
	lw a1, 164(sp)
	sw a1, 292(sp)
	mv a1, zero
	lw a0, 168(sp)
	sw a0, 296(sp)
	li a0, 4
	lw a2, 172(sp)
	sw a2, 300(sp)
	mv a3, zero
	lw a4, 0(s0)
	li a5, 3
	mv a2, a4
	bne zero, a5, label482
	sw a4, 0(s0)
	li a3, 1
	andi a4, a3, 3
	sh2add t0, a3, s0
	lw a5, 0(t0)
	li t0, 3
	mv a2, a5
	bne a4, t0, label480
label1469:
	sh2add a4, a3, s0
	sw a2, 0(a4)
	addiw a3, a1, 2
	andi a4, a3, 3
	sh2add t0, a3, s0
	lw a5, 0(t0)
	li t0, 3
	mv a2, a5
	beq a4, t0, label1479
label436:
	sh2add a4, a3, s0
	addiw a3, a1, 3
	sw zero, 0(a4)
	andi a1, a3, 3
	sh2add a5, a3, s0
	lw a4, 0(a5)
	li a5, 3
	addw a2, a2, a4
	bne a1, a5, label440
	sh2add a1, a3, s0
	sw a2, 0(a1)
	mv a2, zero
	j label441
label440:
	sh2add a1, a3, s0
	sw zero, 0(a1)
.p2align 2
label441:
	addiw a3, a0, 4
	li a4, 32
	bge a3, a4, label2218
.p2align 2
label1501:
	mv a1, a0
	sh2add a5, a0, s0
	mv a0, a3
	lw a4, 0(a5)
	andi a3, a1, 3
	li a5, 3
	addw a2, a2, a4
	bne a3, a5, label482
	j label2185
label480:
	sh2add a4, a3, s0
	addiw a3, a1, 2
	sw zero, 0(a4)
	sh2add t0, a3, s0
	andi a4, a3, 3
	lw a5, 0(t0)
	li t0, 3
	addw a2, a2, a5
	bne a4, t0, label436
	j label1479
label482:
	sh2add a3, a1, s0
	sw zero, 0(a3)
	addiw a3, a1, 1
	andi a4, a3, 3
	sh2add t0, a3, s0
	lw a5, 0(t0)
	li t0, 3
	addw a2, a2, a5
	bne a4, t0, label480
	j label1469
label1479:
	sh2add a4, a3, s0
	addiw a3, a1, 3
	sw a2, 0(a4)
	andi a1, a3, 3
	sh2add a5, a3, s0
	lw a4, 0(a5)
	li a5, 3
	mv a2, a4
	bne a1, a5, label440
	sh2add a1, a3, s0
	li a4, 32
	addiw a3, a0, 4
	sw a2, 0(a1)
	mv a2, zero
	blt a3, a4, label1501
	j label2218
label2185:
	sh2add a3, a1, s0
	sw a2, 0(a3)
	addiw a3, a1, 1
	andi a4, a3, 3
	sh2add t0, a3, s0
	lw a5, 0(t0)
	li t0, 3
	mv a2, a5
	bne a4, t0, label480
	j label1469
label2218:
	sh2add a1, a0, s0
	lw a4, 0(a1)
	andi a3, a0, 3
	li a5, 3
	addw a2, a2, a4
	bne a3, a5, label448
label1510:
	sw a2, 0(a1)
	addiw a0, a0, 1
	li a3, 32
	mv a2, zero
	blt a0, a3, label451
	j label2219
label448:
	sw zero, 0(a1)
	addiw a0, a0, 1
	li a3, 32
	bge a0, a3, label2219
label451:
	addi a1, a1, 4
	andi a3, a0, 3
	li a5, 3
	lw a4, 0(a1)
	addw a2, a2, a4
	bne a3, a5, label448
	j label1510
label2219:
	mv s1, s0
	mv s2, zero
.p2align 2
label453:
	lw a0, 0(s1)
	jal putint
	li a0, 32
	addiw a1, s2, 1
	bge a1, a0, label457
	addi s1, s1, 4
	mv s2, a1
	j label453
label457:
	lw a2, 48(sp)
	mv a3, zero
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
	mv a0, s0
	lw a1, 168(sp)
	sw a1, 296(sp)
	mv a1, zero
	lw a2, 172(sp)
	sw a2, 300(sp)
	mv a2, zero
	li a4, 2
	blt zero, a4, label473
	j label1621
.p2align 2
label466:
	addi a0, a0, 4
	li a4, 2
	blt a1, a4, label473
	beq a1, a4, label476
	j label475
.p2align 2
label468:
	lw a0, 0(s0)
	jal putint
	li a0, 32
	addiw a1, s1, 1
	bge a1, a0, label471
	addi s0, s0, 4
	mv s1, a1
	j label468
.p2align 2
label473:
	lw a4, 0(a0)
	addiw a1, a1, 1
	addw a3, a3, a4
	li a4, 32
	blt a1, a4, label466
label2189:
	sd zero, 296(sp)
	mv s1, zero
	j label468
.p2align 2
label475:
	sh2add a4, a1, s0
	lui t2, 349525
	addiw a1, a1, 1
	addiw t1, t2, 1366
	lw t0, 0(a4)
	addw a5, a3, t0
	subw a3, a5, a2
	lw a2, -8(a4)
	mul a5, a3, t1
	srli t2, a5, 63
	srli t0, a5, 32
	add t1, t2, t0
	sw t1, -8(a4)
	li a4, 32
	blt a1, a4, label466
	j label2189
label471:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	ld s4, 32(sp)
	ld s3, 40(sp)
	addi sp, sp, 304
	ret
.p2align 2
label2215:
	addiw a0, a0, 1
	li a1, 31
	blt a0, a1, label388
	j label1068
.p2align 2
label476:
	lw a2, 176(sp)
	lui t1, 349525
	addiw a1, a1, 1
	addiw t0, t1, 1366
	mul a4, a3, t0
	srli t1, a4, 63
	srli a5, a4, 32
	li a4, 32
	add t0, t1, a5
	sw t0, 176(sp)
	blt a1, a4, label466
	j label2189
label1621:
	li a4, 2
	beq a1, a4, label476
	j label475
label1678:
	sh2add a2, a4, s0
	addiw s1, s1, 1
	addi a0, a0, 4
	sw a1, 0(a2)
	j label416
