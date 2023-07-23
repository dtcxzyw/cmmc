.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
count:
	.zero	4000
.text
QuickSort:
	addi sp, sp, -32
	sd s0, 24(sp)
	mv s0, a0
	sd s1, 16(sp)
	mv s1, a2
	sd s2, 8(sp)
	sd ra, 0(sp)
	ble a2, a1, label21
	sh2add a3, a1, a0
	mv s2, a1
	lw a0, 0(a3)
	mv a3, a2
	addi a2, a0, -1
	ble s1, a1, label8
	bge a1, a3, label13
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label13
	addiw a3, a3, -1
	bge a1, a3, label13
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label13
	addiw a3, a3, -1
	bge a1, a3, label13
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label13
	addiw a3, a3, -1
	bge a1, a3, label13
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label13
label228:
	addiw a3, a3, -1
	bge s2, a3, label13
	j label194
label14:
	ble a3, s2, label18
	sh2add a4, s2, s0
	lw a5, 0(a4)
	ble a0, a5, label18
	addiw s2, s2, 1
	ble a3, s2, label18
	sh2add a4, s2, s0
	lw a5, 0(a4)
	ble a0, a5, label18
	addiw s2, s2, 1
	ble a3, s2, label18
	sh2add a4, s2, s0
	lw a5, 0(a4)
	ble a0, a5, label18
	addiw s2, s2, 1
	ble a3, s2, label18
	sh2add a4, s2, s0
	lw a5, 0(a4)
	ble a0, a5, label18
	j label218
label18:
	ble a3, s2, label5
	sh2add t0, s2, s0
	sh2add a5, a3, s0
	lw a4, 0(t0)
	addiw a3, a3, -1
	sw a4, 0(a5)
	ble a3, s2, label8
	bge s2, a3, label13
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label13
	addiw a3, a3, -1
	bge s2, a3, label13
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label13
	addiw a3, a3, -1
	bge s2, a3, label13
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label13
	addiw a3, a3, -1
	bge s2, a3, label13
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label13
	j label228
label5:
	ble a3, s2, label8
	bge s2, a3, label13
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label13
	addiw a3, a3, -1
	bge s2, a3, label13
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label13
	addiw a3, a3, -1
	bge s2, a3, label13
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label13
	addiw a3, a3, -1
	bge s2, a3, label13
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label13
	j label228
label8:
	sh2add a3, s2, s0
	addiw a2, s2, -1
	sw a0, 0(a3)
	mv a0, s0
	jal QuickSort
	addiw a1, s2, 1
	ble s1, a1, label21
	sh2add a3, a1, s0
	mv s2, a1
	lw a0, 0(a3)
	mv a3, s1
	addi a2, a0, -1
	bge a1, s1, label13
	sh2add a5, s1, s0
	lw a4, 0(a5)
	bge a2, a4, label13
	addiw a3, s1, -1
	bge a1, a3, label13
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label13
	addiw a3, a3, -1
	bge a1, a3, label13
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label13
	addiw a3, a3, -1
	bge a1, a3, label13
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label13
	j label228
label13:
	bge s2, a3, label14
	sh2add t0, a3, s0
	sh2add a5, s2, s0
	lw a4, 0(t0)
	addiw s2, s2, 1
	sw a4, 0(a5)
	ble a3, s2, label18
	sh2add a4, s2, s0
	lw a5, 0(a4)
	ble a0, a5, label18
	addiw s2, s2, 1
	ble a3, s2, label18
	sh2add a4, s2, s0
	lw a5, 0(a4)
	ble a0, a5, label18
	addiw s2, s2, 1
	ble a3, s2, label18
	sh2add a4, s2, s0
	lw a5, 0(a4)
	ble a0, a5, label18
	addiw s2, s2, 1
	ble a3, s2, label18
	sh2add a4, s2, s0
	lw a5, 0(a4)
	ble a0, a5, label18
	addiw s2, s2, 1
	ble a3, s2, label18
label236:
	sh2add a4, s2, s0
	lw a5, 0(a4)
	ble a0, a5, label18
	j label218
label194:
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label13
label212:
	addiw a3, a3, -1
	bge s2, a3, label13
	sh2add a5, a3, s0
	lw a4, 0(a5)
	bge a2, a4, label13
	j label212
label218:
	addiw s2, s2, 1
	ble a3, s2, label18
	j label236
label21:
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s1, 16(sp)
	ld s0, 24(sp)
	addi sp, sp, 32
	ret
.globl main
main:
	addi sp, sp, -440
	li a0, 7
	li a1, 23
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
	addi a2, sp, 32
	addi a3, sp, 168
	sd s0, 336(sp)
	li s0, 264
	sd s5, 344(sp)
	li s5, 929
	sd s1, 352(sp)
	li s1, 639
	sd s6, 360(sp)
	li s6, 756
	sd s2, 368(sp)
	li s2, 459
	sd s3, 376(sp)
	li s3, 29
	sd s4, 384(sp)
	li s4, 68
	sd s7, 392(sp)
	li s7, 452
	sd s11, 400(sp)
	li s11, 279
	sd s8, 408(sp)
	li s8, 28
	sd s9, 416(sp)
	li s9, 1
	sd s10, 424(sp)
	li s10, 290
	sd ra, 432(sp)
	sd a3, 296(sp)
	li a3, 26
	sd a2, 312(sp)
	li a2, 89
	sw a0, 32(sp)
	sw a1, 36(sp)
	sw a2, 40(sp)
	sw a3, 44(sp)
	sw a4, 48(sp)
	sw a5, 52(sp)
	sw t0, 56(sp)
	sw t1, 60(sp)
	sw t2, 64(sp)
	sw t3, 68(sp)
	sw t4, 72(sp)
	sw t5, 76(sp)
	sw t6, 80(sp)
	sw a6, 84(sp)
	sw a7, 88(sp)
	sw s0, 92(sp)
	sw s1, 96(sp)
	sw s2, 100(sp)
	sw s3, 104(sp)
	sw s4, 108(sp)
	sw s5, 112(sp)
	sw s6, 116(sp)
	sw s7, 120(sp)
	sd s11, 328(sp)
	sw s11, 124(sp)
	li s11, 58
	sd s11, 320(sp)
	sw s11, 128(sp)
	li s11, 87
	sd s11, 0(sp)
	sw s11, 132(sp)
	li s11, 96
	sd s11, 8(sp)
	sw s11, 136(sp)
	li s11, 36
	sd s11, 16(sp)
	sw s11, 140(sp)
	li s11, 39
	sd s11, 24(sp)
	sw s11, 144(sp)
	sw s8, 148(sp)
	sw s9, 152(sp)
	sw s10, 156(sp)
	sw a0, 168(sp)
pcrel1223:
	auipc a0, %pcrel_hi(count)
	sw a1, 172(sp)
	sw a2, 176(sp)
	addi a2, a0, %pcrel_lo(pcrel1223)
	sw a3, 180(sp)
	sw a4, 184(sp)
	sw a5, 188(sp)
	sw t0, 192(sp)
	sw t1, 196(sp)
	sw t2, 200(sp)
	sw t3, 204(sp)
	sw t4, 208(sp)
	sw t5, 212(sp)
	sw t6, 216(sp)
	sw a6, 220(sp)
	sw a7, 224(sp)
	sw s0, 228(sp)
	mv s0, zero
	sw s1, 232(sp)
	sw s2, 236(sp)
	sw s3, 240(sp)
	sw s4, 244(sp)
	sw s5, 248(sp)
	sw s6, 252(sp)
	sw s7, 256(sp)
	ld s11, 328(sp)
	sw s11, 260(sp)
	ld s11, 320(sp)
	sw s11, 264(sp)
	ld s11, 0(sp)
	sw s11, 268(sp)
	ld s11, 8(sp)
	sw s11, 272(sp)
	ld s11, 16(sp)
	sw s11, 276(sp)
	ld s11, 24(sp)
	sw s11, 280(sp)
	sw s8, 284(sp)
	sw s9, 288(sp)
	sw s10, 292(sp)
	sd a2, 160(sp)
label269:
	ld a3, 296(sp)
	sh2add a1, s0, a3
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	bge s0, a0, label436
	j label269
label436:
	mv a1, zero
	li a2, 32
	li a3, 31
	subw a4, a2, zero
	addi a0, a4, -1
	bge zero, a3, label442
	mv a2, zero
	ble a0, zero, label277
	ld a3, 296(sp)
	mv t0, a3
	lw a4, 0(a3)
	lw a5, 4(a3)
	li t0, 1
	ble a4, a5, label456
	mv a2, a3
	sw a4, 4(a3)
	sw a5, 0(a3)
	mv a2, t0
	ble a0, t0, label277
	sh2add t0, t0, a3
	lw a4, 0(t0)
	lw a5, 4(t0)
	addiw t0, a2, 1
	ble a4, a5, label456
	sh2add a2, a2, a3
	sw a4, 4(a2)
	sw a5, 0(a2)
	mv a2, t0
	ble a0, t0, label277
	j label1083
label442:
	mv s0, zero
	j label278
label1083:
	ld a3, 296(sp)
	sh2add t0, a2, a3
	lw a4, 0(t0)
	lw a5, 4(t0)
	addiw t0, a2, 1
	ble a4, a5, label456
label1116:
	ld a3, 296(sp)
	sh2add a2, a2, a3
	sw a4, 4(a2)
	sw a5, 0(a2)
	mv a2, t0
	ble a0, t0, label277
	j label1150
label277:
	addiw a1, a1, 1
	li a2, 32
	li a3, 31
	subw a4, a2, a1
	addi a0, a4, -1
	bge a1, a3, label442
	mv a2, zero
	ble a0, zero, label277
	ld a3, 296(sp)
	mv t0, a3
	lw a4, 0(a3)
	lw a5, 4(a3)
	li t0, 1
	ble a4, a5, label456
	mv a2, a3
	sw a4, 4(a3)
	sw a5, 0(a3)
	mv a2, t0
	ble a0, t0, label277
	sh2add t0, t0, a3
	lw a4, 0(t0)
	lw a5, 4(t0)
	addiw t0, a2, 1
	ble a4, a5, label456
	sh2add a2, a2, a3
	sw a4, 4(a2)
	sw a5, 0(a2)
	mv a2, t0
	ble a0, t0, label277
	j label1083
label1150:
	ld a3, 296(sp)
	sh2add t0, a2, a3
	lw a4, 0(t0)
	lw a5, 4(t0)
	addiw t0, a2, 1
	ble a4, a5, label456
	j label1116
label456:
	mv a2, t0
	ble a0, t0, label277
	ld a3, 296(sp)
	sh2add t0, t0, a3
	lw a4, 0(t0)
	lw a5, 4(t0)
	addiw t0, a2, 1
	ble a4, a5, label456
	sh2add a2, a2, a3
	sw a4, 4(a2)
	sw a5, 0(a2)
	mv a2, t0
	ble a0, t0, label277
	sh2add t0, t0, a3
	lw a4, 0(t0)
	lw a5, 4(t0)
	addiw t0, a2, 1
	ble a4, a5, label456
	sh2add a2, a2, a3
	sw a4, 4(a2)
	sw a5, 0(a2)
	mv a2, t0
	ble a0, t0, label277
	sh2add t0, t0, a3
	lw a4, 0(t0)
	lw a5, 4(t0)
	addiw t0, a2, 1
	ble a4, a5, label456
	j label1116
label278:
	ld a3, 296(sp)
	sh2add a1, s0, a3
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	bge s0, a0, label280
	j label278
label280:
	lw a1, 232(sp)
	lw a2, 228(sp)
	addw a0, a1, a2
	srliw a1, a0, 31
	add a2, a0, a1
	sraiw a0, a2, 1
	jal putint
	mv a0, zero
label281:
	ld a2, 160(sp)
	sh2add a1, a0, a2
	addiw a0, a0, 16
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	sw zero, 16(a1)
	sw zero, 20(a1)
	sw zero, 24(a1)
	sw zero, 28(a1)
	sw zero, 32(a1)
	sw zero, 36(a1)
	sw zero, 40(a1)
	sw zero, 44(a1)
	sw zero, 48(a1)
	sw zero, 52(a1)
	sw zero, 56(a1)
	sw zero, 60(a1)
	li a1, 992
	bge a0, a1, label283
	j label281
label283:
	ld a2, 160(sp)
	sh2add a0, a0, a2
	li a2, 4
	sw zero, 0(a0)
	sw zero, 4(a0)
	sw zero, 8(a0)
	sw zero, 12(a0)
	sw zero, 16(a0)
	sw zero, 20(a0)
	sw zero, 24(a0)
	sw zero, 28(a0)
	mv a0, zero
	sd a2, 304(sp)
	mv a4, zero
	mv a1, zero
label284:
	ld a3, 296(sp)
	sh2add a1, a1, a3
	lw a5, 0(a1)
	ld a2, 160(sp)
	sh2add t0, a5, a2
	lw t1, 0(t0)
	addiw a3, t1, 1
	sw a3, 0(t0)
	lw t2, 4(a1)
	max t0, a4, a3
	sh2add a2, t2, a2
	lw t3, 0(a2)
	addiw t1, t3, 1
	blt a4, a3, label989
	mv a5, a0
label989:
	mv a3, t2
	blt t0, t1, label991
	mv a3, a5
label991:
	max a4, t0, t1
	sw t1, 0(a2)
	lw a0, 8(a1)
	ld a2, 160(sp)
	sh2add a5, a0, a2
	lw t0, 0(a5)
	addiw a2, t0, 1
	blt a4, a2, label993
	mv a0, a3
label993:
	max a3, a4, a2
	sw a2, 0(a5)
	lw a1, 12(a1)
	ld a2, 160(sp)
	sh2add a5, a1, a2
	lw a4, 0(a5)
	addiw a2, a4, 1
	blt a3, a2, label995
	mv a1, a0
label995:
	max a4, a3, a2
	sw a2, 0(a5)
	li a5, 32
	ld a2, 304(sp)
	addiw a3, a2, 4
	bge a3, a5, label547
	mv a0, a1
	sd a3, 304(sp)
	mv a1, a2
	mv a2, a3
	j label284
label547:
	ld a2, 304(sp)
	mv a0, a2
	ld a3, 296(sp)
	sh2add t0, a2, a3
	lw a5, 0(t0)
	ld a2, 160(sp)
	sh2add a3, a5, a2
	mv a2, a5
	lw t1, 0(a3)
	addiw t0, t1, 1
	blt a4, t0, label997
	mv a2, a1
label997:
	sw t0, 0(a3)
	max a4, a4, t0
	addiw a0, a0, 1
	li a1, 32
	bge a0, a1, label293
	mv a1, a2
	ld a3, 296(sp)
	sh2add t0, a0, a3
	lw a5, 0(t0)
	ld a2, 160(sp)
	sh2add a3, a5, a2
	mv a2, a5
	lw t1, 0(a3)
	addiw t0, t1, 1
	blt a4, t0, label997
	mv a2, a1
	sw t0, 0(a3)
	max a4, a4, t0
	addiw a0, a0, 1
	li a1, 32
	bge a0, a1, label293
	mv a1, a2
	ld a3, 296(sp)
	sh2add t0, a0, a3
	lw a5, 0(t0)
	ld a2, 160(sp)
	sh2add a3, a5, a2
	mv a2, a5
	lw t1, 0(a3)
	addiw t0, t1, 1
	blt a4, t0, label997
label1122:
	mv a2, a1
	sw t0, 0(a3)
	max a4, a4, t0
	addiw a0, a0, 1
	li a1, 32
	bge a0, a1, label293
	mv a1, a2
	ld a3, 296(sp)
	sh2add t0, a0, a3
	lw a5, 0(t0)
	ld a2, 160(sp)
	sh2add a3, a5, a2
	mv a2, a5
	lw t1, 0(a3)
	addiw t0, t1, 1
	blt a4, t0, label997
	j label1122
label293:
	mv a0, a2
	jal putint
	mv a1, zero
	li a0, 4
	li a2, 32
	bge a0, a2, label297
label296:
	ld a2, 312(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	ld a3, 296(sp)
	sh2add a1, a1, a3
	sw a5, 0(a1)
	lw a2, 4(a4)
	sw a2, 4(a1)
	lw a3, 8(a4)
	sw a3, 8(a1)
	lw a2, 12(a4)
	sw a2, 12(a1)
	mv a1, a0
	addiw a0, a0, 4
	li a2, 32
	bge a0, a2, label297
	j label296
label297:
	ld a2, 312(sp)
	sh2add a4, a1, a2
	lw a0, 0(a4)
	ld a3, 296(sp)
	sh2add a2, a1, a3
	addiw a1, a1, 1
	sw a0, 0(a2)
	li a0, 32
	bge a1, a0, label592
	j label297
label592:
	mv a1, zero
	li a2, 32
	li a4, 31
	subw a3, a2, zero
	addi a0, a3, -1
	bge zero, a4, label598
	mv a2, zero
	ble a0, zero, label303
	ld a3, 296(sp)
	mv t0, a3
	lw a4, 0(a3)
	lw a5, 4(a3)
	li t0, 1
	ble a4, a5, label613
	mv a2, a3
	sw a4, 4(a3)
	sw a5, 0(a3)
	mv a2, t0
	ble a0, t0, label303
	sh2add t0, t0, a3
	lw a4, 0(t0)
	lw a5, 4(t0)
	addiw t0, a2, 1
	ble a4, a5, label613
	sh2add a2, a2, a3
	sw a4, 4(a2)
	sw a5, 0(a2)
	mv a2, t0
	ble a0, t0, label303
	j label1091
label598:
	mv s0, zero
	j label306
label1091:
	ld a3, 296(sp)
	sh2add t0, a2, a3
	lw a4, 0(t0)
	lw a5, 4(t0)
	addiw t0, a2, 1
	ble a4, a5, label613
	j label1125
label303:
	addiw a1, a1, 1
	li a2, 32
	li a4, 31
	subw a3, a2, a1
	addi a0, a3, -1
	bge a1, a4, label598
	mv a2, zero
	ble a0, zero, label303
	ld a3, 296(sp)
	mv t0, a3
	lw a4, 0(a3)
	lw a5, 4(a3)
	li t0, 1
	ble a4, a5, label613
	mv a2, a3
	sw a4, 4(a3)
	sw a5, 0(a3)
	mv a2, t0
	ble a0, t0, label303
	sh2add t0, t0, a3
	lw a4, 0(t0)
	lw a5, 4(t0)
	addiw t0, a2, 1
	ble a4, a5, label613
	sh2add a2, a2, a3
	sw a4, 4(a2)
	sw a5, 0(a2)
	mv a2, t0
	ble a0, t0, label303
	j label1091
label306:
	ld a3, 296(sp)
	sh2add a1, s0, a3
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	bge s0, a0, label624
	j label306
label624:
	mv a1, zero
	li a0, 4
	li a2, 32
	bge a0, a2, label311
	j label310
label1125:
	ld a3, 296(sp)
	sh2add a2, a2, a3
	sw a4, 4(a2)
	sw a5, 0(a2)
	mv a2, t0
	ble a0, t0, label303
	sh2add t0, t0, a3
	lw a4, 0(t0)
	lw a5, 4(t0)
	addiw t0, a2, 1
	ble a4, a5, label613
	j label1125
label613:
	mv a2, t0
	ble a0, t0, label303
	ld a3, 296(sp)
	sh2add t0, t0, a3
	lw a4, 0(t0)
	lw a5, 4(t0)
	addiw t0, a2, 1
	ble a4, a5, label613
	sh2add a2, a2, a3
	sw a4, 4(a2)
	sw a5, 0(a2)
	mv a2, t0
	ble a0, t0, label303
	sh2add t0, t0, a3
	lw a4, 0(t0)
	lw a5, 4(t0)
	addiw t0, a2, 1
	ble a4, a5, label613
	sh2add a2, a2, a3
	sw a4, 4(a2)
	sw a5, 0(a2)
	mv a2, t0
	ble a0, t0, label303
	sh2add t0, t0, a3
	lw a4, 0(t0)
	lw a5, 4(t0)
	addiw t0, a2, 1
	ble a4, a5, label613
	j label1125
label311:
	ld a2, 312(sp)
	sh2add a4, a1, a2
	lw a0, 0(a4)
	ld a3, 296(sp)
	sh2add a2, a1, a3
	addiw a1, a1, 1
	sw a0, 0(a2)
	li a0, 32
	bge a1, a0, label653
	j label311
label653:
	li a0, 1
	li a1, 32
	bge a0, a1, label657
	ld a3, 296(sp)
	addiw a2, a0, -1
	sh2add a4, a0, a3
	lw a1, 0(a4)
	blt a2, zero, label318
	sh2add a5, a2, a3
	lw a4, 0(a5)
	bge a1, a4, label318
	addiw a5, a2, 1
	addiw a2, a2, -1
	sh2add t0, a5, a3
	sw a4, 0(t0)
	blt a2, zero, label318
	sh2add a5, a2, a3
	lw a4, 0(a5)
	bge a1, a4, label318
	addiw a5, a2, 1
	addiw a2, a2, -1
	sh2add t0, a5, a3
	sw a4, 0(t0)
	blt a2, zero, label318
	j label1166
label657:
	mv s0, zero
	j label321
label1166:
	ld a3, 296(sp)
	sh2add a5, a2, a3
	lw a4, 0(a5)
	bge a1, a4, label318
	j label1132
label321:
	ld a3, 296(sp)
	sh2add a1, s0, a3
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	bge s0, a0, label688
	j label321
label688:
	mv a1, zero
	li a0, 4
	li a2, 32
	bge a0, a2, label326
	j label325
label318:
	addiw a2, a2, 1
	addiw a0, a0, 1
	ld a3, 296(sp)
	sh2add a4, a2, a3
	sw a1, 0(a4)
	li a1, 32
	bge a0, a1, label657
	addiw a2, a0, -1
	sh2add a4, a0, a3
	lw a1, 0(a4)
	blt a2, zero, label318
	sh2add a5, a2, a3
	lw a4, 0(a5)
	bge a1, a4, label318
	addiw a5, a2, 1
	addiw a2, a2, -1
	sh2add t0, a5, a3
	sw a4, 0(t0)
	blt a2, zero, label318
	sh2add a5, a2, a3
	lw a4, 0(a5)
	bge a1, a4, label318
	addiw a5, a2, 1
	addiw a2, a2, -1
	sh2add t0, a5, a3
	sw a4, 0(t0)
	blt a2, zero, label318
	j label1166
label1132:
	addiw a5, a2, 1
	ld a3, 296(sp)
	addiw a2, a2, -1
	sh2add t0, a5, a3
	sw a4, 0(t0)
	blt a2, zero, label318
	j label1166
label325:
	ld a2, 312(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	ld a3, 296(sp)
	sh2add a1, a1, a3
	sw a5, 0(a1)
	lw a2, 4(a4)
	sw a2, 4(a1)
	lw a3, 8(a4)
	sw a3, 8(a1)
	lw a2, 12(a4)
	sw a2, 12(a1)
	mv a1, a0
	addiw a0, a0, 4
	li a2, 32
	bge a0, a2, label326
	j label325
label310:
	ld a2, 312(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	ld a3, 296(sp)
	sh2add a1, a1, a3
	sw a5, 0(a1)
	lw a2, 4(a4)
	sw a2, 4(a1)
	lw a3, 8(a4)
	sw a3, 8(a1)
	lw a2, 12(a4)
	sw a2, 12(a1)
	mv a1, a0
	addiw a0, a0, 4
	li a2, 32
	bge a0, a2, label311
	j label310
label326:
	ld a2, 312(sp)
	sh2add a4, a1, a2
	lw a0, 0(a4)
	ld a3, 296(sp)
	sh2add a2, a1, a3
	addiw a1, a1, 1
	sw a0, 0(a2)
	li a0, 32
	bge a1, a0, label328
	j label326
label328:
	ld a3, 296(sp)
	mv a1, zero
	li a2, 31
	mv a0, a3
	jal QuickSort
	mv s0, zero
label329:
	ld a3, 296(sp)
	sh2add a1, s0, a3
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	bge s0, a0, label725
	j label329
label725:
	mv a1, zero
	li a0, 4
	li a2, 32
	bge a0, a2, label333
	j label361
label333:
	ld a2, 312(sp)
	sh2add a4, a1, a2
	lw a0, 0(a4)
	ld a3, 296(sp)
	sh2add a2, a1, a3
	addiw a1, a1, 1
	sw a0, 0(a2)
	li a0, 32
	bge a1, a0, label740
	j label333
label740:
	mv a1, zero
	mv a0, zero
	li a2, 32
	bge zero, a2, label744
	ld a3, 296(sp)
	mv a2, a3
	li a3, 3
	lw a4, 0(a2)
	mv a2, zero
	mv a1, a4
	beq zero, a3, label339
	ld a3, 296(sp)
	mv a2, a3
	li a0, 1
	sw zero, 0(a3)
	li a2, 32
	bge a0, a2, label744
	sh2add a2, a0, a3
	li a3, 3
	lw a4, 0(a2)
	andi a2, a0, 3
	addw a1, a1, a4
	beq a2, a3, label339
	j label1138
label744:
	mv s0, zero
label341:
	ld a3, 296(sp)
	sh2add a1, s0, a3
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	bge s0, a0, label767
	j label341
label767:
	mv a1, zero
	li a0, 4
	li a2, 32
	bge a0, a2, label346
label345:
	ld a2, 312(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	ld a3, 296(sp)
	sh2add a1, a1, a3
	sw a5, 0(a1)
	lw a2, 4(a4)
	sw a2, 4(a1)
	lw a3, 8(a4)
	sw a3, 8(a1)
	lw a2, 12(a4)
	sw a2, 12(a1)
	mv a1, a0
	addiw a0, a0, 4
	li a2, 32
	bge a0, a2, label346
	j label345
label346:
	ld a2, 312(sp)
	sh2add a4, a1, a2
	lw a0, 0(a4)
	ld a3, 296(sp)
	sh2add a2, a1, a3
	addiw a1, a1, 1
	sw a0, 0(a2)
	li a0, 32
	bge a1, a0, label796
	j label346
label796:
	mv a0, zero
	mv a1, zero
	mv a2, zero
	li a3, 32
	bge zero, a3, label800
	li a3, 2
	bge zero, a3, label353
	ld a3, 296(sp)
	mv a4, a3
	li a2, 1
	lw a5, 0(a3)
	mv a1, a5
	li a3, 32
	bge a2, a3, label800
	li a3, 2
	bge a2, a3, label353
	j label1143
label800:
	sw zero, 288(sp)
	mv s0, zero
	sw zero, 292(sp)
	j label358
label1143:
	ld a3, 296(sp)
	sh2add a4, a2, a3
	addiw a2, a2, 1
	lw a5, 0(a4)
	addw a1, a1, a5
	li a3, 32
	bge a2, a3, label800
label1177:
	li a3, 2
	bge a2, a3, label353
	j label1143
label353:
	li a3, 2
	bne a2, a3, label355
	lw a0, 168(sp)
	li a4, 1431655766
	mul a2, a1, a4
	srli a4, a2, 63
	srli a3, a2, 32
	add a2, a4, a3
	sw a2, 168(sp)
	li a2, 3
	li a3, 32
	bge a2, a3, label800
	li a3, 2
	bge a2, a3, label353
	ld a3, 296(sp)
	sh2add a4, a2, a3
	addiw a2, a2, 1
	lw a5, 0(a4)
	addw a1, a1, a5
	li a3, 32
	bge a2, a3, label800
	li a3, 2
	bge a2, a3, label353
	ld a3, 296(sp)
	sh2add a4, a2, a3
	addiw a2, a2, 1
	lw a5, 0(a4)
	addw a1, a1, a5
	li a3, 32
	bge a2, a3, label800
	j label1177
label358:
	ld a3, 296(sp)
	sh2add a1, s0, a3
	lw a0, 0(a1)
	jal putint
	li a0, 32
	addiw s0, s0, 1
	bge s0, a0, label360
	j label358
label355:
	ld a3, 296(sp)
	li t0, 1431655766
	sh2add a4, a2, a3
	addiw a2, a2, 1
	lw a5, 0(a4)
	addw a3, a1, a5
	subw a1, a3, a0
	mul a0, a1, t0
	srli t0, a0, 63
	srli a5, a0, 32
	lw a0, -8(a4)
	add a3, t0, a5
	sw a3, -8(a4)
	li a3, 32
	bge a2, a3, label800
	li a3, 2
	bge a2, a3, label353
	ld a3, 296(sp)
	sh2add a4, a2, a3
	addiw a2, a2, 1
	lw a5, 0(a4)
	addw a1, a1, a5
	li a3, 32
	bge a2, a3, label800
	li a3, 2
	bge a2, a3, label353
	ld a3, 296(sp)
	sh2add a4, a2, a3
	addiw a2, a2, 1
	lw a5, 0(a4)
	addw a1, a1, a5
	li a3, 32
	bge a2, a3, label800
	li a3, 2
	bge a2, a3, label353
	j label1143
label1138:
	ld a3, 296(sp)
	sh2add a2, a0, a3
	addiw a0, a0, 1
	sw zero, 0(a2)
	li a2, 32
	bge a0, a2, label744
	j label1172
label339:
	ld a3, 296(sp)
	sh2add a2, a0, a3
	addiw a0, a0, 1
	sw a1, 0(a2)
	mv a1, zero
	li a2, 32
	bge a0, a2, label744
	sh2add a2, a0, a3
	li a3, 3
	lw a4, 0(a2)
	andi a2, a0, 3
	mv a1, a4
	beq a2, a3, label339
	ld a3, 296(sp)
	sh2add a2, a0, a3
	addiw a0, a0, 1
	sw zero, 0(a2)
	li a2, 32
	bge a0, a2, label744
	sh2add a2, a0, a3
	li a3, 3
	lw a4, 0(a2)
	andi a2, a0, 3
	addw a1, a1, a4
	beq a2, a3, label339
	ld a3, 296(sp)
	sh2add a2, a0, a3
	addiw a0, a0, 1
	sw zero, 0(a2)
	li a2, 32
	bge a0, a2, label744
	sh2add a2, a0, a3
	li a3, 3
	lw a4, 0(a2)
	andi a2, a0, 3
	addw a1, a1, a4
	beq a2, a3, label339
	j label1138
label1172:
	ld a3, 296(sp)
	sh2add a2, a0, a3
	li a3, 3
	lw a4, 0(a2)
	andi a2, a0, 3
	addw a1, a1, a4
	beq a2, a3, label339
	j label1138
label361:
	ld a2, 312(sp)
	sh2add a4, a1, a2
	lw a5, 0(a4)
	ld a3, 296(sp)
	sh2add a1, a1, a3
	sw a5, 0(a1)
	lw a3, 4(a4)
	sw a3, 4(a1)
	lw a2, 8(a4)
	sw a2, 8(a1)
	lw a3, 12(a4)
	sw a3, 12(a1)
	mv a1, a0
	addiw a0, a0, 4
	li a2, 32
	bge a0, a2, label333
	j label361
label360:
	mv a0, zero
	ld ra, 432(sp)
	ld s10, 424(sp)
	ld s9, 416(sp)
	ld s8, 408(sp)
	ld s11, 400(sp)
	ld s7, 392(sp)
	ld s4, 384(sp)
	ld s3, 376(sp)
	ld s2, 368(sp)
	ld s6, 360(sp)
	ld s1, 352(sp)
	ld s5, 344(sp)
	ld s0, 336(sp)
	addi sp, sp, 440
	ret
