.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
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
	sd s1, 24(sp)
	mv s1, a2
	sd s6, 32(sp)
	sd s2, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	blt a1, a2, label91
label85:
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
label91:
	mv a0, a1
label2:
	sh2add a3, a0, s0
	mv a4, s1
	mv s2, a0
	lw a1, 0(a3)
	addiw a2, a1, -1
.p2align 2
label4:
	ble a4, s2, label7
	sh2add a3, a4, s0
	blt s2, a4, label75
	sh2add a5, s2, s0
	lw t0, 0(a5)
	ble a1, t0, label363
.p2align 2
label83:
	addiw s2, s2, 1
	addi a5, a5, 4
	ble a4, s2, label4
	lw t0, 0(a5)
	bgt a1, t0, label83
label363:
	sw t0, 0(a3)
	addiw a4, a4, -1
	j label4
.p2align 2
label75:
	lw a5, 0(a3)
	bge a2, a5, label273
	addiw a4, a4, -1
	addi a3, a3, -4
	blt s2, a4, label75
	sh2add a5, s2, s0
	ble a4, s2, label4
	lw t0, 0(a5)
	bgt a1, t0, label83
	j label363
label7:
	sh2add a2, s2, s0
	addiw s3, s2, -1
	sw a1, 0(a2)
	bge a0, s3, label70
label8:
	sh2add a3, a0, s0
	mv a4, s3
	mv s4, a0
	lw a1, 0(a3)
	addiw a2, a1, -1
	j label10
.p2align 2
label119:
	sh2add a5, s4, s0
	bgt a4, s4, label345
.p2align 2
label10:
	ble a4, s4, label27
	sh2add a3, a4, s0
	bge s4, a4, label119
.p2align 2
label17:
	lw a5, 0(a3)
	bge a2, a5, label18
	addiw a4, a4, -1
	addi a3, a3, -4
	blt s4, a4, label17
	sh2add a5, s4, s0
	ble a4, s4, label10
	lw t0, 0(a5)
	bgt a1, t0, label25
	j label357
.p2align 2
label345:
	lw t0, 0(a5)
	ble a1, t0, label357
.p2align 2
label25:
	addiw s4, s4, 1
	addi a5, a5, 4
	ble a4, s4, label10
	lw t0, 0(a5)
	bgt a1, t0, label25
label357:
	sw t0, 0(a3)
	addiw a4, a4, -1
	j label10
label27:
	sh2add a2, s4, s0
	addiw s5, s4, -1
	sw a1, 0(a2)
	blt a0, s5, label153
label28:
	addiw a0, s4, 1
	bgt s3, a0, label8
	j label70
label273:
	sh2add t0, s2, s0
	addiw s2, s2, 1
	sw a5, 0(t0)
	sh2add a5, s2, s0
	ble a4, s2, label4
	lw t0, 0(a5)
	bgt a1, t0, label83
	j label363
label18:
	sh2add t0, s4, s0
	addiw s4, s4, 1
	sw a5, 0(t0)
	sh2add a5, s4, s0
	ble a4, s4, label10
	lw t0, 0(a5)
	bgt a1, t0, label25
	j label357
label70:
	addiw a0, s2, 1
	bgt s1, a0, label2
	j label85
label153:
	mv a1, a0
	sh2add a3, a0, s0
	mv a4, s5
	mv s6, a0
	lw a0, 0(a3)
	addiw a2, a0, -1
	j label31
.p2align 2
label340:
	lw t0, 0(a5)
	ble a0, t0, label361
.p2align 2
label68:
	addiw s6, s6, 1
	addi a5, a5, 4
	bgt a4, s6, label340
.p2align 2
label31:
	ble a4, s6, label34
	sh2add a3, a4, s0
	blt s6, a4, label60
	sh2add a5, s6, s0
	lw t0, 0(a5)
	bgt a0, t0, label68
	j label361
.p2align 2
label60:
	lw a5, 0(a3)
	bge a2, a5, label61
	addiw a4, a4, -1
	addi a3, a3, -4
	blt s6, a4, label60
	sh2add a5, s6, s0
	ble a4, s6, label31
	lw t0, 0(a5)
	bgt a0, t0, label68
	j label361
label34:
	sh2add a2, s6, s0
	addiw s7, s6, -1
	sw a0, 0(a2)
	bge a1, s7, label35
label36:
	sh2add a3, a1, s0
	mv a4, s7
	mv s8, a1
	lw a0, 0(a3)
	addiw a2, a0, -1
	j label38
.p2align 2
label45:
	lw a5, 0(a3)
	bge a2, a5, label196
	addiw a4, a4, -1
	addi a3, a3, -4
	blt s8, a4, label45
	sh2add a5, s8, s0
	bgt a4, s8, label349
.p2align 2
label38:
	ble a4, s8, label55
	sh2add a3, a4, s0
	blt s8, a4, label45
	sh2add a5, s8, s0
	lw t0, 0(a5)
	ble a0, t0, label359
.p2align 2
label54:
	addiw s8, s8, 1
	addi a5, a5, 4
	ble a4, s8, label38
	lw t0, 0(a5)
	bgt a0, t0, label54
label359:
	sw t0, 0(a3)
	addiw a4, a4, -1
	j label38
label55:
	sh2add a3, s8, s0
	addiw a2, s8, -1
	sw a0, 0(a3)
	mv a0, s0
	jal QuickSort
	addiw a1, s8, 1
	bgt s7, a1, label36
	j label35
label61:
	sh2add t0, s6, s0
	addiw s6, s6, 1
	sw a5, 0(t0)
	sh2add a5, s6, s0
	ble a4, s6, label31
	lw t0, 0(a5)
	bgt a0, t0, label68
	j label361
label196:
	sh2add t0, s8, s0
	addiw s8, s8, 1
	sw a5, 0(t0)
	sh2add a5, s8, s0
	ble a4, s8, label38
	lw t0, 0(a5)
	bgt a0, t0, label54
	j label359
label35:
	addiw a1, s6, 1
	ble s5, a1, label28
	sh2add a3, a1, s0
	mv a4, s5
	mv s6, a1
	lw a0, 0(a3)
	addiw a2, a0, -1
	j label31
label361:
	sw t0, 0(a3)
	addiw a4, a4, -1
	j label31
.p2align 2
label349:
	lw t0, 0(a5)
	bgt a0, t0, label54
	j label359
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[256] RegSpill[0] CalleeSaved[48]
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
	j label386
.p2align 2
label389:
	addi s2, s2, 4
	mv s3, a1
.p2align 2
label386:
	lw a0, 0(s2)
	jal putint
	li a0, 32
	addiw a1, s3, 1
	blt a1, a0, label389
	mv a2, zero
	j label390
.p2align 2
label1558:
	addiw a2, a2, 1
	li a0, 31
	bge a2, a0, label393
.p2align 2
label390:
	li a3, 32
	subw a1, a3, a2
	addiw a0, a1, -1
	ble a0, zero, label392
	mv a1, s0
	mv a3, zero
	lw a4, 0(s0)
	lw a5, 4(s0)
	ble a4, a5, label1552
.p2align 2
label484:
	sw a4, 4(a1)
	sw a5, 0(a1)
	addiw a3, a3, 1
	ble a0, a3, label1558
.p2align 2
label486:
	addi a1, a1, 4
	lw a4, 0(a1)
	lw a5, 4(a1)
	bgt a4, a5, label484
	addiw a3, a3, 1
	bgt a0, a3, label486
	addiw a2, a2, 1
	li a0, 31
	blt a2, a0, label390
label393:
	mv s2, s0
	mv s3, zero
.p2align 2
label394:
	lw a0, 0(s2)
	jal putint
	li a0, 32
	addiw a1, s3, 1
	bge a1, a0, label398
	addi s2, s2, 4
	mv s3, a1
	j label394
label398:
	lw a0, 240(sp)
	lw a3, 236(sp)
	addw a2, a0, a3
	mv a1, a2
	bge a2, zero, label1965
	addiw a1, a2, 1
label1965:
	sraiw a0, a1, 1
	jal putint
	mv a2, zero
pcrel2078:
	auipc a3, %pcrel_hi(count)
	addi a0, a3, %pcrel_lo(pcrel2078)
	mv a1, a0
	j label399
.p2align 2
label479:
	addi a1, a1, 256
.p2align 2
label399:
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
	blt a2, a3, label479
	sd zero, 256(a1)
	mv a3, zero
	mv a2, zero
	mv a4, zero
	sd zero, 264(a1)
	sd zero, 272(a1)
	sd zero, 280(a1)
	sd zero, 288(a1)
	sd zero, 296(a1)
	sd zero, 304(a1)
	sd zero, 312(a1)
	sd zero, 320(a1)
	sd zero, 328(a1)
	sd zero, 336(a1)
	sd zero, 344(a1)
	sd zero, 352(a1)
	sd zero, 360(a1)
	sd zero, 368(a1)
	sd zero, 376(a1)
	sd zero, 384(a1)
	sd zero, 392(a1)
	sd zero, 400(a1)
	sd zero, 408(a1)
	mv a1, s0
	j label403
label478:
	addi a1, a1, 64
label403:
	lw t0, 0(a1)
	mv t5, t0
	sh2add t1, t0, a0
	lw t2, 0(t1)
	addiw a5, t2, 1
	max t3, a2, a5
	sw a5, 0(t1)
	lw t4, 4(a1)
	sh2add t1, t4, a0
	lw t6, 0(t1)
	addiw t2, t6, 1
	blt a2, a5, label1967
	mv t5, a4
label1967:
	mv t0, t4
	blt t3, t2, label1969
	mv t0, t5
label1969:
	max a4, a5, t2
	sw t2, 0(t1)
	max t3, a2, a4
	lw t5, 8(a1)
	mv a5, t5
	sh2add t4, t5, a0
	lw t1, 0(t4)
	addiw t2, t1, 1
	blt t3, t2, label1971
	mv a5, t0
label1971:
	max t1, a4, t2
	sw t2, 0(t4)
	max t0, a2, t1
	lw t6, 12(a1)
	mv a4, t6
	sh2add t3, t6, a0
	lw t2, 0(t3)
	addiw t5, t2, 1
	blt t0, t5, label1973
	mv a4, a5
label1973:
	max t0, t1, t5
	sw t5, 0(t3)
	max t4, a2, t0
	lw t1, 16(a1)
	mv a5, t1
	sh2add t2, t1, a0
	lw t3, 0(t2)
	addiw t5, t3, 1
	blt t4, t5, label1975
	mv a5, a4
label1975:
	max t1, t0, t5
	sw t5, 0(t2)
	max t3, a2, t1
	lw t6, 20(a1)
	mv t0, t6
	sh2add a4, t6, a0
	lw t2, 0(a4)
	addiw t4, t2, 1
	blt t3, t4, label1977
	mv t0, a5
label1977:
	max t2, t1, t4
	sw t4, 0(a4)
	max t3, a2, t2
	lw t1, 24(a1)
	mv a4, t1
	sh2add a5, t1, a0
	lw t5, 0(a5)
	addiw t4, t5, 1
	blt t3, t4, label1979
	mv a4, t0
label1979:
	max t1, t2, t4
	sw t4, 0(a5)
	max t3, a2, t1
	lw t2, 28(a1)
	mv a5, t2
	sh2add t0, t2, a0
	lw t5, 0(t0)
	addiw t4, t5, 1
	blt t3, t4, label1981
	mv a5, a4
label1981:
	max t2, t1, t4
	sw t4, 0(t0)
	max t3, a2, t2
	lw t5, 32(a1)
	mv a4, t5
	sh2add t1, t5, a0
	lw t0, 0(t1)
	addiw t4, t0, 1
	blt t3, t4, label1983
	mv a4, a5
label1983:
	max t0, t2, t4
	sw t4, 0(t1)
	max t3, a2, t0
	lw t6, 36(a1)
	mv a5, t6
	sh2add t2, t6, a0
	lw t1, 0(t2)
	addiw t5, t1, 1
	blt t3, t5, label1985
	mv a5, a4
label1985:
	max t1, t0, t5
	sw t5, 0(t2)
	max t4, a2, t1
	lw t0, 40(a1)
	mv a4, t0
	sh2add t3, t0, a0
	lw t2, 0(t3)
	addiw t5, t2, 1
	blt t4, t5, label1987
	mv a4, a5
label1987:
	max t0, t1, t5
	sw t5, 0(t3)
	max t4, a2, t0
	lw t1, 44(a1)
	mv a5, t1
	sh2add t2, t1, a0
	lw t3, 0(t2)
	addiw t5, t3, 1
	blt t4, t5, label1989
	mv a5, a4
label1989:
	max t1, t0, t5
	sw t5, 0(t2)
	max t3, a2, t1
	lw t6, 48(a1)
	mv t0, t6
	sh2add a4, t6, a0
	lw t2, 0(a4)
	addiw t4, t2, 1
	blt t3, t4, label1991
	mv t0, a5
label1991:
	max t2, t1, t4
	sw t4, 0(a4)
	max t3, a2, t2
	lw t1, 52(a1)
	mv a4, t1
	sh2add a5, t1, a0
	lw t5, 0(a5)
	addiw t4, t5, 1
	blt t3, t4, label1993
	mv a4, t0
label1993:
	max t1, t2, t4
	sw t4, 0(a5)
	max t0, a2, t1
	lw t3, 56(a1)
	mv a5, t3
	sh2add t2, t3, a0
	lw t5, 0(t2)
	addiw t4, t5, 1
	blt t0, t4, label1995
	mv a5, a4
label1995:
	max t0, t1, t4
	sw t4, 0(t2)
	max t3, a2, t0
	lw t5, 60(a1)
	mv a4, t5
	sh2add t1, t5, a0
	lw t4, 0(t1)
	addiw t2, t4, 1
	blt t3, t2, label1997
	mv a4, a5
label1997:
	max t3, t0, t2
	addiw a3, a3, 16
	li a5, 32
	max a2, a2, t3
	sw t2, 0(t1)
	blt a3, a5, label478
	mv a0, a4
	jal putint
	ld a1, 48(sp)
	sd a1, 176(sp)
	ld a2, 56(sp)
	sd a2, 184(sp)
	ld a0, 64(sp)
	sd a0, 192(sp)
	ld a1, 72(sp)
	sd a1, 200(sp)
	ld a0, 80(sp)
	sd a0, 208(sp)
	ld a1, 88(sp)
	sd a1, 216(sp)
	ld a0, 96(sp)
	sd a0, 224(sp)
	ld a2, 104(sp)
	sd a2, 232(sp)
	ld a1, 112(sp)
	sd a1, 240(sp)
	ld a0, 120(sp)
	sd a0, 248(sp)
	ld a1, 128(sp)
	sd a1, 256(sp)
	ld a2, 136(sp)
	sd a2, 264(sp)
	mv a2, zero
	ld a0, 144(sp)
	sd a0, 272(sp)
	ld a1, 152(sp)
	sd a1, 280(sp)
	ld a0, 160(sp)
	sd a0, 288(sp)
	ld a1, 168(sp)
	sd a1, 296(sp)
	j label409
.p2align 2
label2046:
	addiw a2, a2, 1
	li a0, 31
	bge a2, a0, label412
.p2align 2
label409:
	li a3, 32
	subw a1, a3, a2
	addiw a0, a1, -1
	ble a0, zero, label411
	mv a1, s0
	mv a3, zero
	lw a4, 0(s0)
	lw a5, 4(s0)
	bgt a4, a5, label477
	li a3, 1
	bgt a0, a3, label476
	addiw a2, a2, 1
	li a0, 31
	blt a2, a0, label409
	j label412
.p2align 2
label477:
	sw a4, 4(a1)
	addiw a3, a3, 1
	sw a5, 0(a1)
	ble a0, a3, label2046
.p2align 2
label476:
	addi a1, a1, 4
	lw a4, 0(a1)
	lw a5, 4(a1)
	bgt a4, a5, label477
	addiw a3, a3, 1
	bgt a0, a3, label476
	addiw a2, a2, 1
	li a0, 31
	blt a2, a0, label409
label412:
	mv s2, s0
	mv s3, zero
	j label413
.p2align 2
label470:
	addi s2, s2, 4
	mv s3, a1
.p2align 2
label413:
	lw a0, 0(s2)
	jal putint
	li a0, 32
	addiw a1, s3, 1
	blt a1, a0, label470
	ld a1, 48(sp)
	addi a0, s0, 4
	sd a1, 176(sp)
	ld a3, 56(sp)
	sd a3, 184(sp)
	ld a2, 64(sp)
	sd a2, 192(sp)
	ld a1, 72(sp)
	sd a1, 200(sp)
	ld a3, 80(sp)
	sd a3, 208(sp)
	ld a2, 88(sp)
	sd a2, 216(sp)
	ld a1, 96(sp)
	sd a1, 224(sp)
	ld a2, 104(sp)
	sd a2, 232(sp)
	ld a1, 112(sp)
	sd a1, 240(sp)
	ld a3, 120(sp)
	sd a3, 248(sp)
	ld a2, 128(sp)
	sd a2, 256(sp)
	ld a1, 136(sp)
	sd a1, 264(sp)
	ld a2, 144(sp)
	sd a2, 272(sp)
	ld a1, 152(sp)
	sd a1, 280(sp)
	ld a2, 160(sp)
	sd a2, 288(sp)
	ld a1, 168(sp)
	sd a1, 296(sp)
	addiw a3, s1, -1
	lw a2, 0(a0)
	sh2add a1, a3, s0
	bge a3, zero, label423
	mv a4, zero
	addiw s1, s1, 1
	li a3, 32
	sw a2, 4(a1)
	blt s1, a3, label428
	j label2050
.p2align 2
label2052:
	mv a4, zero
	addiw s1, s1, 1
	li a3, 32
	sw a2, 4(a1)
	bge s1, a3, label2050
.p2align 2
label428:
	addi a0, a0, 4
	addiw a3, s1, -1
	lw a2, 0(a0)
	sh2add a1, a3, s0
	blt a3, zero, label2052
.p2align 2
label423:
	lw a5, 0(a1)
	slt a4, a2, a5
	beq a4, zero, label1079
	lw a4, 0(a1)
	addiw a3, a3, -1
	sw a4, 4(a1)
	addi a1, a1, -4
	bge a3, zero, label423
	mv a4, zero
	addiw s1, s1, 1
	li a3, 32
	sw a2, 4(a1)
	blt s1, a3, label428
label2050:
	mv s1, s0
	mv s2, zero
	j label430
.p2align 2
label433:
	addi s1, s1, 4
	mv s2, a1
.p2align 2
label430:
	lw a0, 0(s1)
	jal putint
	li a0, 32
	addiw a1, s2, 1
	blt a1, a0, label433
	ld a2, 48(sp)
	sd a2, 176(sp)
	ld a0, 56(sp)
	sd a0, 184(sp)
	ld a1, 64(sp)
	sd a1, 192(sp)
	ld a0, 72(sp)
	sd a0, 200(sp)
	ld a1, 80(sp)
	sd a1, 208(sp)
	ld a0, 88(sp)
	sd a0, 216(sp)
	ld a1, 96(sp)
	sd a1, 224(sp)
	ld a0, 104(sp)
	sd a0, 232(sp)
	ld a1, 112(sp)
	sd a1, 240(sp)
	ld a0, 120(sp)
	sd a0, 248(sp)
	ld a1, 128(sp)
	sd a1, 256(sp)
	ld a0, 136(sp)
	sd a0, 264(sp)
	ld a1, 144(sp)
	sd a1, 272(sp)
	ld a0, 152(sp)
	sd a0, 280(sp)
	ld a1, 160(sp)
	sd a1, 288(sp)
	mv a1, zero
	ld a2, 168(sp)
	sd a2, 296(sp)
	li a2, 31
	mv a0, s0
	jal QuickSort
	mv s2, zero
	mv s1, s0
.p2align 2
label435:
	lw a0, 0(s1)
	jal putint
	li a0, 32
	addiw a1, s2, 1
	bge a1, a0, label438
	addi s1, s1, 4
	mv s2, a1
	j label435
label438:
	ld a0, 48(sp)
	sd a0, 176(sp)
	ld a1, 56(sp)
	sd a1, 184(sp)
	ld a0, 64(sp)
	sd a0, 192(sp)
	ld a1, 72(sp)
	sd a1, 200(sp)
	ld a0, 80(sp)
	sd a0, 208(sp)
	ld a1, 88(sp)
	sd a1, 216(sp)
	ld a0, 96(sp)
	sd a0, 224(sp)
	ld a2, 104(sp)
	sd a2, 232(sp)
	ld a1, 112(sp)
	sd a1, 240(sp)
	ld a0, 120(sp)
	sd a0, 248(sp)
	ld a1, 128(sp)
	sd a1, 256(sp)
	ld a0, 136(sp)
	sd a0, 264(sp)
	ld a2, 144(sp)
	sd a2, 272(sp)
	ld a1, 152(sp)
	sd a1, 280(sp)
	mv a1, zero
	ld a0, 160(sp)
	sd a0, 288(sp)
	mv a0, s0
	ld a2, 168(sp)
	sd a2, 296(sp)
	mv a2, zero
label439:
	lw a4, 0(a0)
	addiw a5, a1, 1
	sw zero, 0(a0)
	addw a3, a2, a4
	lw t0, 4(a0)
	andi a4, a5, 3
	addw a2, a3, t0
	mv a5, zero
	xori t0, a4, 3
	sltu a3, zero, t0
	bne a3, zero, label1999
	mv a5, a2
label1999:
	sw a5, 4(a0)
	mv a4, a2
	bne a3, zero, label2001
	mv a4, zero
label2001:
	lw a2, 8(a0)
	sw zero, 8(a0)
	addw a3, a4, a2
	lw a5, 12(a0)
	addiw a4, a1, 3
	addw a2, a3, a5
	andi t0, a4, 3
	mv a5, zero
	xori t1, t0, 3
	sltu a3, zero, t1
	bne a3, zero, label2003
	mv a5, a2
label2003:
	sw a5, 12(a0)
	mv a4, a2
	bne a3, zero, label2005
	mv a4, zero
label2005:
	lw a2, 16(a0)
	addiw t0, a1, 5
	sw zero, 16(a0)
	addw a3, a4, a2
	lw a5, 20(a0)
	andi a4, t0, 3
	addw a2, a3, a5
	xori t1, a4, 3
	mv a5, zero
	sltu a3, zero, t1
	bne a3, zero, label2007
	mv a5, a2
label2007:
	sw a5, 20(a0)
	mv a4, a2
	bne a3, zero, label2009
	mv a4, zero
label2009:
	lw a2, 24(a0)
	addiw a5, a1, 7
	sw zero, 24(a0)
	addw a3, a4, a2
	andi t0, a5, 3
	lw t1, 28(a0)
	mv a5, zero
	xori a4, t0, 3
	addw a2, a3, t1
	sltu a3, zero, a4
	bne a3, zero, label2011
	mv a5, a2
label2011:
	sw a5, 28(a0)
	mv a4, a2
	bne a3, zero, label2013
	mv a4, zero
label2013:
	lw a2, 32(a0)
	sw zero, 32(a0)
	addw a3, a4, a2
	lw a5, 36(a0)
	addiw a4, a1, 9
	addw a2, a3, a5
	andi t1, a4, 3
	mv a5, zero
	xori t0, t1, 3
	sltu a3, zero, t0
	bne a3, zero, label2015
	mv a5, a2
label2015:
	sw a5, 36(a0)
	mv a4, a2
	bne a3, zero, label2017
	mv a4, zero
label2017:
	lw a2, 40(a0)
	addiw t1, a1, 11
	sw zero, 40(a0)
	addw a3, a4, a2
	lw a5, 44(a0)
	andi a4, t1, 3
	addw a2, a3, a5
	xori t0, a4, 3
	mv a5, zero
	sltu a3, zero, t0
	bne a3, zero, label2019
	mv a5, a2
label2019:
	sw a5, 44(a0)
	mv a4, a2
	bne a3, zero, label2021
	mv a4, zero
label2021:
	lw a2, 48(a0)
	addiw t0, a1, 13
	sw zero, 48(a0)
	addw a3, a4, a2
	andi t1, t0, 3
	lw a5, 52(a0)
	xori a4, t1, 3
	addw a2, a3, a5
	mv a5, zero
	sltu a3, zero, a4
	bne a3, zero, label2023
	mv a5, a2
label2023:
	sw a5, 52(a0)
	mv a4, a2
	bne a3, zero, label2025
	mv a4, zero
label2025:
	lw a3, 56(a0)
	addiw a5, a1, 15
	sw zero, 56(a0)
	addw a2, a4, a3
	andi t1, a5, 3
	lw t0, 60(a0)
	mv a5, zero
	addw a3, a2, t0
	xori a2, t1, 3
	sltu a4, zero, a2
	bne a4, zero, label2027
	mv a5, a3
label2027:
	sw a5, 60(a0)
	mv a2, a3
	bne a4, zero, label2029
	mv a2, zero
label2029:
	addiw a1, a1, 16
	li a3, 32
	bge a1, a3, label1387
	addi a0, a0, 64
	j label439
label1387:
	mv s1, s0
	mv s2, zero
.p2align 2
label445:
	lw a0, 0(s1)
	jal putint
	li a0, 32
	addiw a1, s2, 1
	bge a1, a0, label449
	addi s1, s1, 4
	mv s2, a1
	j label445
label449:
	ld a0, 48(sp)
	mv a3, zero
	sd a0, 176(sp)
	ld a1, 56(sp)
	sd a1, 184(sp)
	ld a0, 64(sp)
	sd a0, 192(sp)
	ld a1, 72(sp)
	sd a1, 200(sp)
	ld a0, 80(sp)
	sd a0, 208(sp)
	ld a1, 88(sp)
	sd a1, 216(sp)
	ld a0, 96(sp)
	sd a0, 224(sp)
	ld a1, 104(sp)
	sd a1, 232(sp)
	ld a0, 112(sp)
	sd a0, 240(sp)
	ld a1, 120(sp)
	sd a1, 248(sp)
	ld a0, 128(sp)
	sd a0, 256(sp)
	ld a1, 136(sp)
	sd a1, 264(sp)
	ld a0, 144(sp)
	sd a0, 272(sp)
	ld a1, 152(sp)
	sd a1, 280(sp)
	mv a1, zero
	ld a0, 160(sp)
	sd a0, 288(sp)
	mv a0, s0
	ld a2, 168(sp)
	sd a2, 296(sp)
	mv a2, zero
	li a4, 2
	blt zero, a4, label468
	beq zero, a4, label457
	j label456
.p2align 2
label2042:
	li a4, 2
	beq a1, a4, label457
.p2align 2
label456:
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
	bge a1, a4, label2041
.p2align 2
label467:
	addi a0, a0, 4
	li a4, 2
	bge a1, a4, label2042
.p2align 2
label468:
	lw a4, 0(a0)
	addiw a1, a1, 1
	addw a3, a3, a4
	li a4, 32
	blt a1, a4, label467
label2041:
	sd zero, 296(sp)
	mv s1, zero
	j label462
.p2align 2
label466:
	addi s0, s0, 4
	mv s1, a1
.p2align 2
label462:
	lw a0, 0(s0)
	jal putint
	li a0, 32
	addiw a1, s1, 1
	blt a1, a0, label466
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
label457:
	lw a2, 176(sp)
	lui t1, 349525
	addiw t0, t1, 1366
	mul a4, a3, t0
	srli t1, a4, 63
	srli a5, a4, 32
	add t0, t1, a5
	sw t0, 176(sp)
	addiw a1, a1, 1
	li a4, 32
	blt a1, a4, label467
	j label2041
label411:
	addiw a2, a2, 1
	li a0, 31
	blt a2, a0, label409
	j label412
label392:
	addiw a2, a2, 1
	li a0, 31
	blt a2, a0, label390
	j label393
.p2align 2
label1552:
	addiw a3, a3, 1
	bgt a0, a3, label486
	addiw a2, a2, 1
	li a0, 31
	blt a2, a0, label390
	j label393
label1079:
	sw a2, 4(a1)
	addiw s1, s1, 1
	li a3, 32
	blt s1, a3, label428
	j label2050
