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
	j label4
.p2align 2
label11:
	lw a5, 0(a3)
	bge a2, a5, label12
	addiw a4, a4, -1
	addi a3, a3, -4
	blt s2, a4, label11
	sh2add a5, s2, s0
	bgt a4, s2, label348
.p2align 2
label4:
	ble a4, s2, label21
	sh2add a3, a4, s0
	blt s2, a4, label11
	sh2add a5, s2, s0
	lw t0, 0(a5)
	ble a1, t0, label353
.p2align 2
label18:
	addiw s2, s2, 1
	addi a5, a5, 4
	ble a4, s2, label4
	lw t0, 0(a5)
	bgt a1, t0, label18
label353:
	sw t0, 0(a3)
	addiw a4, a4, -1
	j label4
label21:
	sh2add a2, s2, s0
	addiw s3, s2, -1
	sw a1, 0(a2)
	bge a0, s3, label84
label22:
	sh2add a3, a0, s0
	mv a4, s3
	mv s4, a0
	lw a1, 0(a3)
	addiw a2, a1, -1
	j label24
.p2align 2
label338:
	lw t0, 0(a5)
	ble a1, t0, label35
.p2align 2
label36:
	addiw s4, s4, 1
	addi a5, a5, 4
	bgt a4, s4, label338
.p2align 2
label24:
	ble a4, s4, label41
	sh2add a3, a4, s0
	blt s4, a4, label38
	sh2add a5, s4, s0
.p2align 2
label31:
	ble a4, s4, label24
	lw t0, 0(a5)
	bgt a1, t0, label36
	j label35
.p2align 2
label38:
	lw a5, 0(a3)
	bge a2, a5, label170
	addiw a4, a4, -1
	addi a3, a3, -4
	blt s4, a4, label38
	sh2add a5, s4, s0
	ble a4, s4, label24
	lw t0, 0(a5)
	bgt a1, t0, label36
	j label35
label41:
	sh2add a2, s4, s0
	addiw s5, s4, -1
	sw a1, 0(a2)
	blt a0, s5, label42
label83:
	addiw a0, s4, 1
	bgt s3, a0, label22
	j label84
label12:
	sh2add t0, s2, s0
	addiw s2, s2, 1
	sw a5, 0(t0)
	sh2add a5, s2, s0
	ble a4, s2, label4
	lw t0, 0(a5)
	bgt a1, t0, label18
	j label353
label84:
	addiw a0, s2, 1
	bgt s1, a0, label2
	j label85
label35:
	sw t0, 0(a3)
	addiw a4, a4, -1
	j label24
.p2align 2
label348:
	lw t0, 0(a5)
	bgt a1, t0, label18
	j label353
label170:
	sh2add t0, s4, s0
	addiw s4, s4, 1
	sw a5, 0(t0)
	sh2add a5, s4, s0
	j label31
label42:
	sh2add a3, a0, s0
	mv a4, s5
	mv s6, a0
	lw a1, 0(a3)
	addiw a2, a1, -1
	j label44
.p2align 2
label80:
	lw a5, 0(a3)
	bge a2, a5, label81
	addiw a4, a4, -1
	addi a3, a3, -4
	blt s6, a4, label80
	sh2add a5, s6, s0
	bgt a4, s6, label357
.p2align 2
label44:
	ble a4, s6, label47
	sh2add a3, a4, s0
	blt s6, a4, label80
	sh2add a5, s6, s0
.p2align 2
label73:
	ble a4, s6, label44
	lw t0, 0(a5)
	ble a1, t0, label77
.p2align 2
label78:
	addiw s6, s6, 1
	addi a5, a5, 4
	ble a4, s6, label44
	lw t0, 0(a5)
	bgt a1, t0, label78
label77:
	sw t0, 0(a3)
	addiw a4, a4, -1
	j label44
label47:
	sh2add a2, s6, s0
	addiw s7, s6, -1
	sw a1, 0(a2)
	blt a0, s7, label200
label48:
	addiw a0, s6, 1
	bgt s5, a0, label42
	j label83
label81:
	sh2add t0, s6, s0
	addiw s6, s6, 1
	sw a5, 0(t0)
	sh2add a5, s6, s0
	j label73
.p2align 2
label357:
	lw t0, 0(a5)
	bgt a1, t0, label78
	j label77
label200:
	mv a1, a0
	sh2add a3, a0, s0
	mv a4, s7
	mv s8, a0
	lw a0, 0(a3)
	addiw a2, a0, -1
	j label51
.p2align 2
label218:
	sh2add a5, s8, s0
.p2align 2
label58:
	ble a4, s8, label51
	lw t0, 0(a5)
	ble a0, t0, label62
.p2align 2
label63:
	addiw s8, s8, 1
	addi a5, a5, 4
	ble a4, s8, label51
	lw t0, 0(a5)
	bgt a0, t0, label63
label62:
	sw t0, 0(a3)
	addiw a4, a4, -1
.p2align 2
label51:
	ble a4, s8, label68
	sh2add a3, a4, s0
	bge s8, a4, label218
.p2align 2
label64:
	lw a5, 0(a3)
	bge a2, a5, label235
	addiw a4, a4, -1
	addi a3, a3, -4
	blt s8, a4, label64
	sh2add a5, s8, s0
	ble a4, s8, label51
	lw t0, 0(a5)
	bgt a0, t0, label63
	j label62
label68:
	sh2add a3, s8, s0
	addiw a2, s8, -1
	sw a0, 0(a3)
	mv a0, s0
	jal QuickSort
	addiw a1, s8, 1
	bgt s7, a1, label49
	j label48
label235:
	sh2add t0, s8, s0
	addiw s8, s8, 1
	sw a5, 0(t0)
	sh2add a5, s8, s0
	j label58
label49:
	sh2add a3, a1, s0
	mv a4, s7
	mv s8, a1
	lw a0, 0(a3)
	addiw a2, a0, -1
	j label51
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
label379:
	lw a0, 0(s2)
	jal putint
	li a0, 32
	addiw a1, s3, 1
	bge a1, a0, label583
	addi s2, s2, 4
	mv s3, a1
	j label379
label583:
	mv a2, zero
	j label383
.p2align 2
label603:
	addiw a2, a2, 1
	li a0, 31
	bge a2, a0, label2076
.p2align 2
label383:
	li a3, 32
	subw a1, a3, a2
	addiw a0, a1, -1
	ble a0, zero, label392
	mv a1, s0
	mv a3, zero
	lw a4, 0(s0)
	lw a5, 4(s0)
	bgt a4, a5, label389
	li a3, 1
	bgt a0, a3, label391
	addiw a2, a2, 1
	li a0, 31
	blt a2, a0, label383
	j label2076
.p2align 2
label389:
	sw a4, 4(a1)
	sw a5, 0(a1)
	addiw a3, a3, 1
	ble a0, a3, label603
.p2align 2
label391:
	addi a1, a1, 4
	lw a4, 0(a1)
	lw a5, 4(a1)
	bgt a4, a5, label389
	addiw a3, a3, 1
	bgt a0, a3, label391
	addiw a2, a2, 1
	li a0, 31
	blt a2, a0, label383
label2076:
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
	addw a1, a0, a3
	srliw a4, a1, 31
	add a2, a1, a4
	sraiw a0, a2, 1
	jal putint
	mv a2, zero
pcrel2127:
	auipc a3, %pcrel_hi(count)
	addi a0, a3, %pcrel_lo(pcrel2127)
	mv a1, a0
	j label399
.p2align 2
label511:
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
	blt a2, a3, label511
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
label2028:
	mv a4, a5
label2029:
	max t0, t1, t5
	sw t5, 0(t2)
	max t4, a2, t0
	lw t1, 16(a1)
	mv a5, t1
	sh2add t3, t1, a0
	lw t2, 0(t3)
	addiw t5, t2, 1
	blt t4, t5, label2031
	mv a5, a4
label2031:
	max t1, t0, t5
	sw t5, 0(t3)
	max t2, a2, t1
	lw t6, 20(a1)
	mv a4, t6
	sh2add t0, t6, a0
	lw t3, 0(t0)
	addiw t4, t3, 1
	blt t2, t4, label2033
	mv a4, a5
label2033:
	max t2, t1, t4
	sw t4, 0(t0)
	max t3, a2, t2
	lw t6, 24(a1)
	mv a5, t6
	sh2add t1, t6, a0
	lw t0, 0(t1)
	addiw t5, t0, 1
	blt t3, t5, label2035
	mv a5, a4
label2035:
	max t0, t2, t5
	sw t5, 0(t1)
	max t4, a2, t0
	lw t2, 28(a1)
	mv a4, t2
	sh2add t3, t2, a0
	lw t1, 0(t3)
	addiw t5, t1, 1
	blt t4, t5, label2037
	mv a4, a5
label2037:
	max t1, t0, t5
	sw t5, 0(t3)
	max t4, a2, t1
	lw t0, 32(a1)
	mv a5, t0
	sh2add t2, t0, a0
	lw t3, 0(t2)
	addiw t5, t3, 1
	blt t4, t5, label2039
	mv a5, a4
label2039:
	max t0, t1, t5
	sw t5, 0(t2)
	max t4, a2, t0
	lw t1, 36(a1)
	mv a4, t1
	sh2add t3, t1, a0
	lw t2, 0(t3)
	addiw t5, t2, 1
	blt t4, t5, label2041
	mv a4, a5
label2041:
	max t1, t0, t5
	sw t5, 0(t3)
	max t2, a2, t1
	lw t6, 40(a1)
	mv a5, t6
	sh2add t0, t6, a0
	lw t3, 0(t0)
	addiw t4, t3, 1
	blt t2, t4, label2043
	mv a5, a4
label2043:
	max t2, t1, t4
	sw t4, 0(t0)
	max t3, a2, t2
	lw t6, 44(a1)
	mv a4, t6
	sh2add t1, t6, a0
	lw t0, 0(t1)
	addiw t5, t0, 1
	blt t3, t5, label2045
	mv a4, a5
label2045:
	max t0, t2, t5
	sw t5, 0(t1)
	max t4, a2, t0
	lw t2, 48(a1)
	mv a5, t2
	sh2add t3, t2, a0
	lw t1, 0(t3)
	addiw t5, t1, 1
	blt t4, t5, label2047
	mv a5, a4
label2047:
	max t2, t0, t5
	sw t5, 0(t3)
	max t1, a2, t2
	lw t6, 52(a1)
	mv a4, t6
	sh2add t0, t6, a0
	lw t3, 0(t0)
	addiw t4, t3, 1
	blt t1, t4, label2049
	mv a4, a5
label2049:
	max t1, t2, t4
	sw t4, 0(t0)
	max t3, a2, t1
	lw t5, 56(a1)
	mv a5, t5
	sh2add t2, t5, a0
	lw t0, 0(t2)
	addiw t4, t0, 1
	blt t3, t4, label2051
	mv a5, a4
label2051:
	max t0, t1, t4
	sw t4, 0(t2)
	max t3, a2, t0
	lw t5, 60(a1)
	mv a4, t5
	sh2add t1, t5, a0
	lw t4, 0(t1)
	addiw t2, t4, 1
	blt t3, t2, label2053
	mv a4, a5
label2053:
	max t3, t0, t2
	addiw a3, a3, 16
	li a5, 32
	max a2, a2, t3
	sw t2, 0(t1)
	bge a3, a5, label408
	addi a1, a1, 64
label403:
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
	blt a2, a5, label2023
	mv t5, a4
label2023:
	mv t0, t4
	blt t2, t3, label2025
	mv t0, t5
label2025:
	max a4, a5, t3
	sw t3, 0(t1)
	max t2, a2, a4
	lw t5, 8(a1)
	mv a5, t5
	sh2add t4, t5, a0
	lw t1, 0(t4)
	addiw t3, t1, 1
	blt t2, t3, label2027
	mv a5, t0
label2027:
	max t1, a4, t3
	sw t3, 0(t4)
	max t0, a2, t1
	lw t6, 12(a1)
	mv a4, t6
	sh2add t2, t6, a0
	lw t3, 0(t2)
	addiw t5, t3, 1
	blt t0, t5, label2029
	j label2028
label408:
	mv a0, a4
	jal putint
	ld a2, 48(sp)
	sd a2, 176(sp)
	mv a2, zero
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
	ld a0, 160(sp)
	sd a0, 288(sp)
	ld a1, 168(sp)
	sd a1, 296(sp)
	j label409
.p2align 2
label2066:
	addiw a3, a3, 1
	ble a0, a3, label2078
.p2align 2
label416:
	addi a1, a1, 4
	lw a4, 0(a1)
	lw a5, 4(a1)
	ble a4, a5, label2066
.p2align 2
label417:
	sw a4, 4(a1)
	addiw a3, a3, 1
	sw a5, 0(a1)
	bgt a0, a3, label416
	addiw a2, a2, 1
	li a0, 31
	bge a2, a0, label2065
.p2align 2
label409:
	li a3, 32
	subw a1, a3, a2
	addiw a0, a1, -1
	ble a0, zero, label418
	mv a1, s0
	mv a3, zero
	lw a4, 0(s0)
	lw a5, 4(s0)
	bgt a4, a5, label417
	li a3, 1
	bgt a0, a3, label416
	addiw a2, a2, 1
	li a0, 31
	blt a2, a0, label409
label2065:
	mv s2, s0
	mv s3, zero
	j label420
.p2align 2
label423:
	addi s2, s2, 4
	mv s3, a1
.p2align 2
label420:
	lw a0, 0(s2)
	jal putint
	li a0, 32
	addiw a1, s3, 1
	blt a1, a0, label423
	ld a2, 48(sp)
	addi a0, s0, 4
	sd a2, 176(sp)
	ld a1, 56(sp)
	sd a1, 184(sp)
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
	ld a3, 112(sp)
	sd a3, 240(sp)
	ld a1, 120(sp)
	sd a1, 248(sp)
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
	blt a3, zero, label1128
.p2align 2
label509:
	lw a5, 0(a1)
	slt a4, a2, a5
	beq a4, zero, label2075
	lw a4, 0(a1)
	addiw a3, a3, -1
	sw a4, 4(a1)
	addi a1, a1, -4
	bge a3, zero, label509
	mv a4, zero
	addiw s1, s1, 1
	li a3, 32
	sw a2, 4(a1)
	bge s1, a3, label2068
.p2align 2
label508:
	addi a0, a0, 4
	addiw a3, s1, -1
	lw a2, 0(a0)
	sh2add a1, a3, s0
	bge a3, zero, label509
	mv a4, zero
	addiw s1, s1, 1
	li a3, 32
	sw a2, 4(a1)
	blt s1, a3, label508
label2068:
	mv s1, s0
	mv s2, zero
.p2align 2
label436:
	lw a0, 0(s1)
	jal putint
	li a0, 32
	addiw a1, s2, 1
	bge a1, a0, label439
	addi s1, s1, 4
	mv s2, a1
	j label436
label439:
	ld a0, 48(sp)
	sd a0, 176(sp)
	ld a1, 56(sp)
	sd a1, 184(sp)
	ld a2, 64(sp)
	sd a2, 192(sp)
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
label440:
	lw a0, 0(s1)
	jal putint
	li a0, 32
	addiw a1, s2, 1
	bge a1, a0, label444
	addi s1, s1, 4
	mv s2, a1
	j label440
label444:
	ld a0, 48(sp)
	sd a0, 176(sp)
	ld a1, 56(sp)
	sd a1, 184(sp)
	ld a0, 64(sp)
	sd a0, 192(sp)
	ld a2, 72(sp)
	sd a2, 200(sp)
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
	ld a2, 120(sp)
	sd a2, 248(sp)
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
label445:
	lw a4, 0(a0)
	addiw a5, a1, 1
	sw zero, 0(a0)
	addw a3, a2, a4
	lw t0, 4(a0)
	andi a4, a5, 3
	addw a2, a3, t0
	li a3, 3
	beq a4, a3, label449
	sw zero, 4(a0)
	j label450
label449:
	sw a2, 4(a0)
	mv a2, zero
label450:
	lw a4, 8(a0)
	addiw t0, a1, 3
	sw zero, 8(a0)
	addw a3, a2, a4
	lw a5, 12(a0)
	andi a4, t0, 3
	addw a2, a3, a5
	li a3, 3
	bne a4, a3, label453
	sw a2, 12(a0)
	mv a2, zero
	j label454
label453:
	sw zero, 12(a0)
label454:
	lw a4, 16(a0)
	addiw a5, a1, 5
	sw zero, 16(a0)
	addw a3, a2, a4
	lw t0, 20(a0)
	andi a4, a5, 3
	addw a2, a3, t0
	li a3, 3
	bne a4, a3, label505
	sw a2, 20(a0)
	mv a2, zero
label457:
	lw a4, 24(a0)
	addiw a5, a1, 7
	sw zero, 24(a0)
	addw a3, a2, a4
	lw t0, 28(a0)
	andi a4, a5, 3
	addw a2, a3, t0
	li a3, 3
	bne a4, a3, label459
	sw a2, 28(a0)
	mv a2, zero
	j label460
label459:
	sw zero, 28(a0)
label460:
	lw a4, 32(a0)
	addiw a5, a1, 9
	sw zero, 32(a0)
	addw a3, a2, a4
	lw t0, 36(a0)
	andi a4, a5, 3
	addw a2, a3, t0
	li a3, 3
	bne a4, a3, label503
	sw a2, 36(a0)
	mv a2, zero
	j label463
label503:
	sw zero, 36(a0)
label463:
	lw a4, 40(a0)
	addiw t0, a1, 11
	sw zero, 40(a0)
	addw a3, a2, a4
	lw a5, 44(a0)
	andi a4, t0, 3
	addw a2, a3, a5
	li a3, 3
	beq a4, a3, label465
	sw zero, 44(a0)
label467:
	lw a4, 48(a0)
	addiw t0, a1, 13
	sw zero, 48(a0)
	addw a3, a2, a4
	lw a5, 52(a0)
	andi a4, t0, 3
	addw a2, a3, a5
	li a3, 3
	bne a4, a3, label469
	sw a2, 52(a0)
	mv a2, zero
	j label470
label469:
	sw zero, 52(a0)
label470:
	lw a4, 56(a0)
	addiw a5, a1, 15
	sw zero, 56(a0)
	addw a3, a2, a4
	lw t0, 60(a0)
	andi a4, a5, 3
	addw a2, a3, t0
	li a3, 3
	bne a4, a3, label473
	sw a2, 60(a0)
	mv a2, zero
	j label474
label473:
	sw zero, 60(a0)
label474:
	addiw a1, a1, 16
	li a3, 32
	blt a1, a3, label476
	mv s1, s0
	mv s2, zero
.p2align 2
label478:
	lw a0, 0(s1)
	jal putint
	li a0, 32
	addiw a1, s2, 1
	bge a1, a0, label482
	addi s1, s1, 4
	mv s2, a1
	j label478
label482:
	ld a0, 48(sp)
	mv a3, zero
	sd a0, 176(sp)
	ld a1, 56(sp)
	sd a1, 184(sp)
	ld a0, 64(sp)
	sd a0, 192(sp)
	ld a1, 72(sp)
	sd a1, 200(sp)
	ld a2, 80(sp)
	sd a2, 208(sp)
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
	ld a2, 128(sp)
	sd a2, 256(sp)
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
	bge zero, a4, label1565
.p2align 2
label498:
	lw a4, 0(a0)
	addiw a1, a1, 1
	addw a3, a3, a4
	li a4, 32
	bge a1, a4, label2072
.p2align 2
label491:
	addi a0, a0, 4
	li a4, 2
	blt a1, a4, label498
	beq a1, a4, label501
.p2align 2
label500:
	sh2add a4, a1, s0
	lui t2, 349525
	addiw a1, a1, 1
	addiw t1, t2, 1366
	lw a5, 0(a4)
	addw t0, a3, a5
	subw a3, t0, a2
	lw a2, -8(a4)
	mul a5, a3, t1
	srli t2, a5, 63
	srli t0, a5, 32
	add t1, t2, t0
	sw t1, -8(a4)
	li a4, 32
	blt a1, a4, label491
label2072:
	sd zero, 296(sp)
	mv s1, zero
.p2align 2
label493:
	lw a0, 0(s0)
	jal putint
	li a0, 32
	addiw a1, s1, 1
	bge a1, a0, label497
	addi s0, s0, 4
	mv s1, a1
	j label493
label497:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 304
	ret
label465:
	sw a2, 44(a0)
	mv a2, zero
	j label467
label1128:
	mv a4, zero
	sw a2, 4(a1)
	addiw s1, s1, 1
	li a3, 32
	blt s1, a3, label508
	j label2068
.p2align 2
label2078:
	addiw a2, a2, 1
	li a0, 31
	blt a2, a0, label409
	j label2065
label418:
	addiw a2, a2, 1
	li a0, 31
	blt a2, a0, label409
	j label2065
label392:
	addiw a2, a2, 1
	li a0, 31
	blt a2, a0, label383
	j label2076
.p2align 2
label501:
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
	blt a1, a4, label491
	j label2072
label1565:
	li a4, 2
	beq a1, a4, label501
	j label500
label2075:
	sw a2, 4(a1)
	addiw s1, s1, 1
	li a3, 32
	blt s1, a3, label508
	j label2068
label476:
	addi a0, a0, 64
	j label445
label505:
	sw zero, 20(a0)
	j label457
