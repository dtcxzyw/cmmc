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
.p2align 2
label6:
	ble a4, s2, label102
	sh2add a3, a4, s0
	bge s2, a4, label108
.p2align 2
label19:
	lw a5, 0(a3)
	bge a2, a5, label125
	addiw a4, a4, -1
	addi a3, a3, -4
	blt s2, a4, label19
	sh2add a5, s2, s0
	ble a4, s2, label6
	lw t0, 0(a5)
	bgt a1, t0, label18
	j label17
.p2align 2
label108:
	sh2add a5, s2, s0
.p2align 2
label13:
	ble a4, s2, label6
	lw t0, 0(a5)
	ble a1, t0, label17
.p2align 2
label18:
	addiw s2, s2, 1
	addi a5, a5, 4
	ble a4, s2, label6
	lw t0, 0(a5)
	bgt a1, t0, label18
label17:
	sw t0, 0(a3)
	addiw a4, a4, -1
	j label6
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
label102:
	sh2add a2, s2, s0
	addiw s3, s2, -1
	sw a1, 0(a2)
label24:
	ble s3, a0, label26
	sh2add a3, a0, s0
	mv a4, s3
	mv s4, a0
	lw a1, 0(a3)
	addi a2, a1, -1
	j label28
.p2align 2
label333:
	lw t0, 0(a5)
	ble a1, t0, label346
.p2align 2
label87:
	addiw s4, s4, 1
	addi a5, a5, 4
	bgt a4, s4, label333
.p2align 2
label28:
	ble a4, s4, label31
	sh2add a3, a4, s0
	blt s4, a4, label80
	sh2add a5, s4, s0
	lw t0, 0(a5)
	bgt a1, t0, label87
	j label346
.p2align 2
label80:
	lw a5, 0(a3)
	bge a2, a5, label261
	addiw a4, a4, -1
	addi a3, a3, -4
	blt s4, a4, label80
	sh2add a5, s4, s0
	ble a4, s4, label28
	lw t0, 0(a5)
	bgt a1, t0, label87
	j label346
label26:
	addiw a0, s2, 1
	j label2
label31:
	sh2add a2, s4, s0
	addiw s5, s4, -1
	sw a1, 0(a2)
label32:
	bgt s5, a0, label35
	addiw a0, s4, 1
	j label24
label261:
	sh2add t0, s4, s0
	addiw s4, s4, 1
	sw a5, 0(t0)
	sh2add a5, s4, s0
	ble a4, s4, label28
	lw t0, 0(a5)
	bgt a1, t0, label87
label346:
	sw t0, 0(a3)
	addiw a4, a4, -1
	j label28
label125:
	sh2add t0, s2, s0
	addiw s2, s2, 1
	sw a5, 0(t0)
	sh2add a5, s2, s0
	j label13
label35:
	sh2add a3, a0, s0
	mv a4, s5
	mv s6, a0
	lw a1, 0(a3)
	addi a2, a1, -1
	j label36
.p2align 2
label326:
	lw t0, 0(a5)
	ble a1, t0, label181
.p2align 2
label47:
	addiw s6, s6, 1
	addi a5, a5, 4
	bgt a4, s6, label326
.p2align 2
label36:
	ble a4, s6, label166
	sh2add a3, a4, s0
	bge s6, a4, label172
.p2align 2
label50:
	lw a5, 0(a3)
	bge a2, a5, label51
	addiw a4, a4, -1
	addi a3, a3, -4
	blt s6, a4, label50
	sh2add a5, s6, s0
	ble a4, s6, label36
	lw t0, 0(a5)
	bgt a1, t0, label47
	j label181
.p2align 2
label172:
	sh2add a5, s6, s0
.p2align 2
label43:
	ble a4, s6, label36
	lw t0, 0(a5)
	bgt a1, t0, label47
	j label181
label166:
	sh2add a2, s6, s0
	addiw s7, s6, -1
	sw a1, 0(a2)
	mv a1, a0
label54:
	bgt s7, a1, label56
	addiw a0, s6, 1
	j label32
label51:
	sh2add t0, s6, s0
	addiw s6, s6, 1
	sw a5, 0(t0)
	sh2add a5, s6, s0
	j label43
label181:
	sw t0, 0(a3)
	addiw a4, a4, -1
	j label36
label56:
	sh2add a3, a1, s0
	mv a4, s7
	mv s8, a1
	lw a0, 0(a3)
	addi a2, a0, -1
	j label57
.p2align 2
label331:
	lw t0, 0(a5)
	ble a0, t0, label337
.p2align 2
label73:
	addiw s8, s8, 1
	addi a5, a5, 4
	bgt a4, s8, label331
.p2align 2
label57:
	ble a4, s8, label74
	sh2add a3, a4, s0
	bge s8, a4, label64
.p2align 2
label65:
	lw a5, 0(a3)
	bge a2, a5, label66
	addiw a4, a4, -1
	addi a3, a3, -4
	blt s8, a4, label65
	sh2add a5, s8, s0
	ble a4, s8, label57
	lw t0, 0(a5)
	bgt a0, t0, label73
	j label337
.p2align 2
label64:
	sh2add a5, s8, s0
	ble a4, s8, label57
	lw t0, 0(a5)
	bgt a0, t0, label73
	j label337
label74:
	sh2add a3, s8, s0
	addiw a2, s8, -1
	sw a0, 0(a3)
	mv a0, s0
	jal QuickSort
	addiw a1, s8, 1
	j label54
label66:
	sh2add t0, s8, s0
	addiw s8, s8, 1
	sw a5, 0(t0)
	sh2add a5, s8, s0
	ble a4, s8, label57
	lw t0, 0(a5)
	bgt a0, t0, label73
label337:
	sw t0, 0(a3)
	addiw a4, a4, -1
	j label57
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
.p2align 2
label374:
	lw a0, 0(s2)
	jal putint
	li a0, 32
	addiw a1, s3, 1
	bge a1, a0, label610
	addi s2, s2, 4
	mv s3, a1
	j label374
label610:
	mv a2, zero
	li a0, 31
	blt zero, a0, label531
	j label380
.p2align 2
label1686:
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
	ble a4, a5, label1680
.p2align 2
label535:
	sw a4, 4(a0)
	sw a5, 0(a0)
	addiw a3, a3, 1
	ble a1, a3, label1686
.p2align 2
label537:
	addi a0, a0, 4
	lw a4, 0(a0)
	lw a5, 4(a0)
	bgt a4, a5, label535
	addiw a3, a3, 1
	bgt a1, a3, label537
	addiw a2, a2, 1
	li a0, 31
	blt a2, a0, label531
	j label380
.p2align 2
label1680:
	addiw a3, a3, 1
	bgt a1, a3, label537
	addiw a2, a2, 1
	li a0, 31
	blt a2, a0, label531
label380:
	mv s2, s0
	mv s3, zero
	j label381
.p2align 2
label530:
	addi s2, s2, 4
	mv s3, a1
.p2align 2
label381:
	lw a0, 0(s2)
	jal putint
	li a0, 32
	addiw a1, s3, 1
	blt a1, a0, label530
	lw a0, 240(sp)
	lw a3, 236(sp)
	addw a1, a0, a3
	srliw a2, a1, 31
	add a4, a1, a2
	sraiw a0, a4, 1
	jal putint
	mv a2, zero
pcrel2134:
	auipc a3, %pcrel_hi(count)
	addi a0, a3, %pcrel_lo(pcrel2134)
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
	blt a2, a5, label2039
	mv t5, a4
label2039:
	mv t0, t4
	blt t2, t3, label2041
	mv t0, t5
label2041:
	max a4, a5, t3
	sw t3, 0(t1)
	max t2, a2, a4
	lw t5, 8(a1)
	mv a5, t5
	sh2add t4, t5, a0
	lw t1, 0(t4)
	addiw t3, t1, 1
	blt t2, t3, label2043
	mv a5, t0
label2043:
	max t1, a4, t3
	sw t3, 0(t4)
	max t0, a2, t1
	lw t6, 12(a1)
	mv a4, t6
	sh2add t2, t6, a0
	lw t3, 0(t2)
	addiw t5, t3, 1
	blt t0, t5, label2045
	mv a4, a5
label2045:
	max t0, t1, t5
	sw t5, 0(t2)
	max t4, a2, t0
	lw t1, 16(a1)
	mv a5, t1
	sh2add t3, t1, a0
	lw t2, 0(t3)
	addiw t5, t2, 1
	blt t4, t5, label2047
	mv a5, a4
label2047:
	max t1, t0, t5
	sw t5, 0(t3)
	max t4, a2, t1
	lw t0, 20(a1)
	mv a4, t0
	sh2add t2, t0, a0
	lw t3, 0(t2)
	addiw t5, t3, 1
	blt t4, t5, label2049
	mv a4, a5
label2049:
	max t0, t1, t5
	sw t5, 0(t2)
	max t4, a2, t0
	lw t1, 24(a1)
	mv a5, t1
	sh2add t3, t1, a0
	lw t2, 0(t3)
	addiw t5, t2, 1
	blt t4, t5, label2051
	mv a5, a4
label2051:
	max t1, t0, t5
	sw t5, 0(t3)
	max t4, a2, t1
	lw t0, 28(a1)
	mv a4, t0
	sh2add t2, t0, a0
	lw t3, 0(t2)
	addiw t5, t3, 1
	blt t4, t5, label2053
	mv a4, a5
label2053:
	max t0, t1, t5
	sw t5, 0(t2)
	max t3, a2, t0
	lw t6, 32(a1)
	mv a5, t6
	sh2add t1, t6, a0
	lw t2, 0(t1)
	addiw t4, t2, 1
	blt t3, t4, label2055
	mv a5, a4
label2055:
	max t2, t0, t4
	sw t4, 0(t1)
	max t3, a2, t2
	lw t5, 36(a1)
	mv t0, t5
	sh2add a4, t5, a0
	lw t1, 0(a4)
	addiw t4, t1, 1
	blt t3, t4, label2057
	mv t0, a5
label2057:
	max t1, t2, t4
	sw t4, 0(a4)
	max t3, a2, t1
	lw t2, 40(a1)
	mv a4, t2
	sh2add a5, t2, a0
	lw t5, 0(a5)
	addiw t4, t5, 1
	blt t3, t4, label2059
	mv a4, t0
label2059:
	max t2, t1, t4
	sw t4, 0(a5)
	max t0, a2, t2
	lw t3, 44(a1)
	mv a5, t3
	sh2add t1, t3, a0
	lw t4, 0(t1)
	addiw t5, t4, 1
	blt t0, t5, label2061
	mv a5, a4
label2061:
	max t0, t2, t5
	sw t5, 0(t1)
	max t4, a2, t0
	lw t2, 48(a1)
	mv a4, t2
	sh2add t3, t2, a0
	lw t1, 0(t3)
	addiw t5, t1, 1
	blt t4, t5, label2063
	mv a4, a5
label2063:
	max t2, t0, t5
	sw t5, 0(t3)
	max t1, a2, t2
	lw t6, 52(a1)
	mv t0, t6
	sh2add a5, t6, a0
	lw t3, 0(a5)
	addiw t4, t3, 1
	blt t1, t4, label2065
	mv t0, a4
label2065:
	max t1, t2, t4
	sw t4, 0(a5)
	max t3, a2, t1
	lw t2, 56(a1)
	mv a5, t2
	sh2add a4, t2, a0
	lw t5, 0(a4)
	addiw t4, t5, 1
	blt t3, t4, label2067
	mv a5, t0
label2067:
	max t2, t1, t4
	sw t4, 0(a4)
	max t3, a2, t2
	lw t5, 60(a1)
	mv a4, t5
	sh2add t0, t5, a0
	lw t4, 0(t0)
	addiw t1, t4, 1
	blt t3, t1, label2069
	mv a4, a5
label2069:
	max t3, t2, t1
	addiw a3, a3, 16
	li a5, 32
	max a2, a2, t3
	sw t1, 0(t0)
	blt a3, a5, label395
	mv a0, a4
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
	blt zero, a0, label399
	j label1002
.p2align 2
label2079:
	addiw a3, a3, 1
	ble a1, a3, label2092
.p2align 2
label405:
	addi a0, a0, 4
	lw a4, 0(a0)
	lw a5, 4(a0)
	ble a4, a5, label2079
.p2align 2
label403:
	sw a4, 4(a0)
	sw a5, 0(a0)
	addiw a3, a3, 1
	bgt a1, a3, label405
	addiw a2, a2, 1
	li a0, 31
	bge a2, a0, label1002
.p2align 2
label399:
	li a3, 32
	mv a0, s0
	subw a4, a3, a2
	mv a3, zero
	addi a1, a4, -1
	lw a4, 0(s0)
	lw a5, 4(s0)
	bgt a4, a5, label403
	li a3, 1
	bgt a1, a3, label405
	addiw a2, a2, 1
	li a0, 31
	blt a2, a0, label399
label1002:
	mv s2, s0
	mv s3, zero
.p2align 2
label408:
	lw a0, 0(s2)
	jal putint
	li a0, 32
	addiw a1, s3, 1
	bge a1, a0, label412
	addi s2, s2, 4
	mv s3, a1
	j label408
label412:
	lw a2, 48(sp)
	addi a0, s0, 4
	sw a2, 176(sp)
	lw a1, 52(sp)
	sw a1, 180(sp)
	lw a2, 56(sp)
	sw a2, 184(sp)
	lw a1, 60(sp)
	sw a1, 188(sp)
	lw a2, 64(sp)
	sw a2, 192(sp)
	lw a1, 68(sp)
	sw a1, 196(sp)
	lw a2, 72(sp)
	sw a2, 200(sp)
	lw a3, 76(sp)
	sw a3, 204(sp)
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
	lw a3, 108(sp)
	sw a3, 236(sp)
	lw a2, 112(sp)
	sw a2, 240(sp)
	lw a1, 116(sp)
	sw a1, 244(sp)
	lw a2, 120(sp)
	sw a2, 248(sp)
	lw a3, 124(sp)
	sw a3, 252(sp)
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
	li a1, 32
	blt s1, a1, label521
	j label416
.p2align 2
label1658:
	mv a4, zero
	addiw s1, s1, 1
	addi a0, a0, 4
	sw a1, 4(a2)
	li a1, 32
	bge s1, a1, label416
.p2align 2
label521:
	addiw a3, s1, -1
	lw a1, 0(a0)
	sh2add a2, a3, s0
	blt a3, zero, label1658
.p2align 2
label525:
	lw a5, 0(a2)
	slt a4, a1, a5
	beq a4, zero, label528
	lw a4, 0(a2)
	addiw a3, a3, -1
	sw a4, 4(a2)
	addi a2, a2, -4
	bge a3, zero, label525
	mv a4, zero
	addiw s1, s1, 1
	addi a0, a0, 4
	sw a1, 4(a2)
	li a1, 32
	blt s1, a1, label521
label416:
	mv s1, s0
	mv s2, zero
.p2align 2
label417:
	lw a0, 0(s1)
	jal putint
	li a0, 32
	addiw a1, s2, 1
	bge a1, a0, label420
	addi s1, s1, 4
	mv s2, a1
	j label417
label420:
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
	lw a1, 168(sp)
	sw a1, 296(sp)
	mv a1, zero
	lw a2, 172(sp)
	sw a2, 300(sp)
	li a2, 31
	mv a0, s0
	jal QuickSort
	mv s2, zero
	mv s1, s0
.p2align 2
label421:
	lw a0, 0(s1)
	jal putint
	li a0, 32
	addiw a1, s2, 1
	bge a1, a0, label425
	addi s1, s1, 4
	mv s2, a1
	j label421
label425:
	lw a2, 48(sp)
	sw a2, 176(sp)
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
	lw a2, 144(sp)
	sw a2, 272(sp)
	lw a0, 148(sp)
	sw a0, 276(sp)
	lw a1, 152(sp)
	sw a1, 280(sp)
	lw a2, 156(sp)
	sw a2, 284(sp)
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
label426:
	lw a4, 0(a0)
	andi a3, a1, 3
	li a5, 3
	addw a2, a2, a4
	beq a3, a5, label1339
	sw zero, 0(a0)
	j label431
label1339:
	sw a2, 0(a0)
	mv a2, zero
label431:
	lw a4, 4(a0)
	addiw a5, a1, 1
	addw a2, a2, a4
	andi a3, a5, 3
	li a4, 3
	beq a3, a4, label1348
	sw zero, 4(a0)
	j label433
label1348:
	sw a2, 4(a0)
	mv a2, zero
label433:
	lw a4, 8(a0)
	addiw a5, a1, 2
	addw a2, a2, a4
	andi a3, a5, 3
	li a4, 3
	beq a3, a4, label1357
	sw zero, 8(a0)
label436:
	lw a5, 12(a0)
	addiw a4, a1, 3
	addw a2, a2, a5
	andi a3, a4, 3
	li a5, 3
	beq a3, a5, label1367
	sw zero, 12(a0)
	j label438
label1367:
	sw a2, 12(a0)
	mv a2, zero
label438:
	lw a5, 16(a0)
	addiw a4, a1, 4
	addw a2, a2, a5
	andi a3, a4, 3
	li a5, 3
	beq a3, a5, label1376
	sw zero, 16(a0)
	j label440
label1376:
	sw a2, 16(a0)
	mv a2, zero
label440:
	lw a5, 20(a0)
	addiw a4, a1, 5
	addw a2, a2, a5
	andi a3, a4, 3
	li a5, 3
	bne a3, a5, label442
	sw a2, 20(a0)
	mv a2, zero
label444:
	lw a5, 24(a0)
	addiw a4, a1, 6
	addw a2, a2, a5
	andi a3, a4, 3
	li a5, 3
	bne a3, a5, label446
	sw a2, 24(a0)
	mv a2, zero
	j label448
label446:
	sw zero, 24(a0)
label448:
	lw a5, 28(a0)
	addiw a4, a1, 7
	addw a2, a2, a5
	andi a3, a4, 3
	li a5, 3
	bne a3, a5, label451
	sw a2, 28(a0)
	mv a2, zero
label452:
	lw a5, 32(a0)
	addiw a4, a1, 8
	addw a2, a2, a5
	andi a3, a4, 3
	li a5, 3
	beq a3, a5, label1418
	sw zero, 32(a0)
label454:
	lw a5, 36(a0)
	addiw a4, a1, 9
	addw a2, a2, a5
	andi a3, a4, 3
	li a5, 3
	beq a3, a5, label1427
	sw zero, 36(a0)
	j label456
label1427:
	sw a2, 36(a0)
	mv a2, zero
label456:
	lw a5, 40(a0)
	addiw a4, a1, 10
	addw a2, a2, a5
	andi a3, a4, 3
	li a5, 3
	bne a3, a5, label459
	sw a2, 40(a0)
	mv a2, zero
	j label460
label459:
	sw zero, 40(a0)
label460:
	lw a4, 44(a0)
	addiw a5, a1, 11
	addw a2, a2, a4
	andi a3, a5, 3
	li a4, 3
	bne a3, a4, label507
	sw a2, 44(a0)
	mv a2, zero
	j label463
label507:
	sw zero, 44(a0)
label463:
	lw a4, 48(a0)
	addiw a5, a1, 12
	addw a2, a2, a4
	andi a3, a5, 3
	li a4, 3
	bne a3, a4, label466
	sw a2, 48(a0)
	mv a2, zero
	j label467
label466:
	sw zero, 48(a0)
label467:
	lw a4, 52(a0)
	addiw a5, a1, 13
	addw a2, a2, a4
	andi a3, a5, 3
	li a4, 3
	bne a3, a4, label470
	sw a2, 52(a0)
	mv a2, zero
	j label471
label470:
	sw zero, 52(a0)
label471:
	lw a4, 56(a0)
	addiw a5, a1, 14
	addw a2, a2, a4
	andi a3, a5, 3
	li a4, 3
	bne a3, a4, label474
	sw a2, 56(a0)
	mv a2, zero
	j label475
label474:
	sw zero, 56(a0)
label475:
	lw a4, 60(a0)
	addiw a5, a1, 15
	addw a2, a2, a4
	andi a3, a5, 3
	li a4, 3
	bne a3, a4, label477
	sw a2, 60(a0)
	mv a2, zero
label479:
	addiw a1, a1, 16
	li a3, 32
	bge a1, a3, label481
	addi a0, a0, 64
	j label426
label481:
	mv s1, s0
	mv s2, zero
.p2align 2
label482:
	lw a0, 0(s1)
	jal putint
	li a0, 32
	addiw a1, s2, 1
	bge a1, a0, label485
	addi s1, s1, 4
	mv s2, a1
	j label482
label485:
	lw a1, 48(sp)
	mv a3, zero
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
	lw a2, 152(sp)
	sw a2, 280(sp)
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
	li a4, 2
	bge zero, a4, label1603
.p2align 2
label491:
	lw a4, 0(a0)
	addw a3, a3, a4
	addiw a1, a1, 1
	li a4, 32
	bge a1, a4, label1610
.p2align 2
label495:
	addi a0, a0, 4
	li a4, 2
	blt a1, a4, label491
	bne a1, a4, label503
.p2align 2
label504:
	lw a2, 176(sp)
	lui t0, 349525
	addiw a1, a1, 1
	addiw t1, t0, 1366
	mul a4, a3, t1
	srli t0, a4, 63
	srli a5, a4, 32
	li a4, 32
	add t1, t0, a5
	sw t1, 176(sp)
	blt a1, a4, label495
label1610:
	sd zero, 296(sp)
	mv s1, zero
.p2align 2
label497:
	lw a0, 0(s0)
	jal putint
	li a0, 32
	addiw a1, s1, 1
	bge a1, a0, label501
	addi s0, s0, 4
	mv s1, a1
	j label497
.p2align 2
label503:
	sh2add a4, a1, s0
	lui t2, 349525
	addiw a1, a1, 1
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
	blt a1, a4, label495
	j label1610
label501:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 304
	ret
label528:
	sw a1, 4(a2)
	addiw s1, s1, 1
	addi a0, a0, 4
	li a1, 32
	blt s1, a1, label521
	j label416
.p2align 2
label2092:
	addiw a2, a2, 1
	li a0, 31
	blt a2, a0, label399
	j label1002
label1603:
	li a4, 2
	beq a1, a4, label504
	j label503
label1418:
	sw a2, 32(a0)
	mv a2, zero
	j label454
label451:
	sw zero, 28(a0)
	j label452
label442:
	sw zero, 20(a0)
	j label444
label477:
	sw zero, 60(a0)
	j label479
label1357:
	sw a2, 8(a0)
	mv a2, zero
	j label436
label395:
	addi a1, a1, 64
	j label390
