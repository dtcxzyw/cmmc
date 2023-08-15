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
	sd s1, 24(sp)
	mv s1, a2
	sd s6, 32(sp)
	sd s2, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	blt a1, a2, label91
label2:
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
	sh2add a3, a1, s0
	mv a4, s1
	mv s2, a1
	lw a1, 0(a3)
	addi a2, a1, -1
	j label5
.p2align 2
label336:
	lw t0, 0(a5)
	ble a1, t0, label357
.p2align 2
label19:
	addiw s2, s2, 1
	addi a5, a5, 4
	bgt a4, s2, label336
.p2align 2
label5:
	ble a4, s2, label22
	sh2add a3, a4, s0
	blt s2, a4, label12
	sh2add a5, s2, s0
	lw t0, 0(a5)
	bgt a1, t0, label19
	j label357
.p2align 2
label12:
	lw a5, 0(a3)
	bge a2, a5, label109
	addiw a4, a4, -1
	addi a3, a3, -4
	blt s2, a4, label12
	sh2add a5, s2, s0
	ble a4, s2, label5
	lw t0, 0(a5)
	bgt a1, t0, label19
	j label357
label22:
	sh2add a2, s2, s0
	addiw s3, s2, -1
	sw a1, 0(a2)
	bge a0, s3, label85
label23:
	sh2add a3, a0, s0
	mv a4, s3
	mv s4, a0
	lw a1, 0(a3)
	addi a2, a1, -1
	j label25
.p2align 2
label339:
	lw t0, 0(a5)
	ble a1, t0, label359
.p2align 2
label40:
	addiw s4, s4, 1
	addi a5, a5, 4
	bgt a4, s4, label339
.p2align 2
label25:
	ble a4, s4, label42
	sh2add a3, a4, s0
	blt s4, a4, label32
	sh2add a5, s4, s0
	lw t0, 0(a5)
	bgt a1, t0, label40
	j label359
.p2align 2
label32:
	lw a5, 0(a3)
	bge a2, a5, label33
	addiw a4, a4, -1
	addi a3, a3, -4
	blt s4, a4, label32
	sh2add a5, s4, s0
	ble a4, s4, label25
	lw t0, 0(a5)
	bgt a1, t0, label40
	j label359
label42:
	sh2add a2, s4, s0
	addiw s5, s4, -1
	sw a1, 0(a2)
	blt a0, s5, label43
label84:
	addiw a0, s4, 1
	bgt s3, a0, label23
	j label85
label69:
	addiw a0, s6, 1
	ble s5, a0, label84
label43:
	sh2add a3, a0, s0
	mv a4, s5
	mv s6, a0
	lw a1, 0(a3)
	addi a2, a1, -1
.p2align 2
label45:
	ble a4, s6, label48
	sh2add a3, a4, s0
	bge s6, a4, label74
.p2align 2
label75:
	lw a5, 0(a3)
	bge a2, a5, label76
	addiw a4, a4, -1
	addi a3, a3, -4
	blt s6, a4, label75
	sh2add a5, s6, s0
	ble a4, s6, label45
	lw t0, 0(a5)
	bgt a1, t0, label83
	j label354
.p2align 2
label74:
	sh2add a5, s6, s0
	ble a4, s6, label45
	lw t0, 0(a5)
	ble a1, t0, label354
.p2align 2
label83:
	addiw s6, s6, 1
	addi a5, a5, 4
	ble a4, s6, label45
	lw t0, 0(a5)
	bgt a1, t0, label83
label354:
	sw t0, 0(a3)
	addiw a4, a4, -1
	j label45
label48:
	sh2add a2, s6, s0
	addiw s7, s6, -1
	sw a1, 0(a2)
	bge a0, s7, label69
	mv a1, a0
label49:
	sh2add a3, a1, s0
	mv a4, s7
	mv s8, a1
	lw a0, 0(a3)
	addi a2, a0, -1
	j label51
.p2align 2
label341:
	lw t0, 0(a5)
	ble a0, t0, label62
.p2align 2
label63:
	addiw s8, s8, 1
	addi a5, a5, 4
	bgt a4, s8, label341
.p2align 2
label51:
	ble a4, s8, label68
	sh2add a3, a4, s0
	bge s8, a4, label213
.p2align 2
label64:
	lw a5, 0(a3)
	bge a2, a5, label230
	addiw a4, a4, -1
	addi a3, a3, -4
	blt s8, a4, label64
	sh2add a5, s8, s0
	ble a4, s8, label51
	lw t0, 0(a5)
	bgt a0, t0, label63
	j label62
.p2align 2
label213:
	sh2add a5, s8, s0
.p2align 2
label58:
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
	j label69
label109:
	sh2add t0, s2, s0
	addiw s2, s2, 1
	sw a5, 0(t0)
	sh2add a5, s2, s0
	ble a4, s2, label5
	lw t0, 0(a5)
	bgt a1, t0, label19
	j label357
label33:
	sh2add t0, s4, s0
	addiw s4, s4, 1
	sw a5, 0(t0)
	sh2add a5, s4, s0
	ble a4, s4, label25
	lw t0, 0(a5)
	bgt a1, t0, label40
	j label359
label76:
	sh2add t0, s6, s0
	addiw s6, s6, 1
	sw a5, 0(t0)
	sh2add a5, s6, s0
	ble a4, s6, label45
	lw t0, 0(a5)
	bgt a1, t0, label83
	j label354
label85:
	addiw a0, s2, 1
	bgt s1, a0, label3
	j label2
label357:
	sw t0, 0(a3)
	addiw a4, a4, -1
	j label5
label359:
	sw t0, 0(a3)
	addiw a4, a4, -1
	j label25
label62:
	sw t0, 0(a3)
	addiw a4, a4, -1
	j label51
label3:
	sh2add a3, a0, s0
	mv a4, s1
	mv s2, a0
	lw a1, 0(a3)
	addi a2, a1, -1
	j label5
label230:
	sh2add t0, s8, s0
	addiw s8, s8, 1
	sw a5, 0(t0)
	sh2add a5, s8, s0
	j label58
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
	j label387
.p2align 2
label519:
	addi s2, s2, 4
	mv s3, a1
.p2align 2
label387:
	lw a0, 0(s2)
	jal putint
	li a0, 32
	addiw a1, s3, 1
	blt a1, a0, label519
	mv a2, zero
	j label390
.p2align 2
label1992:
	addiw a2, a2, 1
	li a0, 31
	bge a2, a0, label1990
.p2align 2
label390:
	li a3, 32
	subw a1, a3, a2
	addiw a0, a1, -1
	ble a0, zero, label399
	mv a1, s0
	mv a3, zero
	lw a4, 0(s0)
	lw a5, 4(s0)
	ble a4, a5, label396
.p2align 2
label398:
	sw a4, 4(a1)
	addiw a3, a3, 1
	sw a5, 0(a1)
	ble a0, a3, label1992
.p2align 2
label397:
	addi a1, a1, 4
	lw a4, 0(a1)
	lw a5, 4(a1)
	bgt a4, a5, label398
	addiw a3, a3, 1
	bgt a0, a3, label397
	addiw a2, a2, 1
	li a0, 31
	blt a2, a0, label390
	j label1990
.p2align 2
label396:
	addiw a3, a3, 1
	bgt a0, a3, label397
	addiw a2, a2, 1
	li a0, 31
	blt a2, a0, label390
label1990:
	mv s2, s0
	mv s3, zero
	j label401
.p2align 2
label404:
	addi s2, s2, 4
	mv s3, a1
.p2align 2
label401:
	lw a0, 0(s2)
	jal putint
	li a0, 32
	addiw a1, s3, 1
	blt a1, a0, label404
	lw a0, 240(sp)
	lw a4, 236(sp)
	addw a1, a0, a4
	srliw a3, a1, 31
	add a2, a1, a3
	sraiw a0, a2, 1
	jal putint
	mv a2, zero
pcrel2045:
	auipc a3, %pcrel_hi(count)
	addi a0, a3, %pcrel_lo(pcrel2045)
	mv a1, a0
	j label406
.p2align 2
label409:
	addi a1, a1, 256
.p2align 2
label406:
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
	blt a2, a3, label409
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
	j label411
label1976:
	mv a4, a5
label1977:
	max t1, t0, t5
	sw t5, 0(t3)
	max t4, a2, t1
	lw t0, 56(a1)
	mv a5, t0
	sh2add t2, t0, a0
	lw t3, 0(t2)
	addiw t5, t3, 1
	blt t4, t5, label1979
	mv a5, a4
label1979:
	max t0, t1, t5
	sw t5, 0(t2)
	max t3, a2, t0
	lw t4, 60(a1)
	mv a4, t4
	sh2add t1, t4, a0
	lw t5, 0(t1)
	addiw t2, t5, 1
	blt t3, t2, label1981
	mv a4, a5
label1981:
	max t3, t0, t2
	addiw a3, a3, 16
	li a5, 32
	max a2, a2, t3
	sw t2, 0(t1)
	bge a3, a5, label417
	addi a1, a1, 64
label411:
	lw t0, 0(a1)
	mv t5, t0
	sh2add t1, t0, a0
	lw t3, 0(t1)
	addiw a5, t3, 1
	max t2, a2, a5
	sw a5, 0(t1)
	lw t3, 4(a1)
	sh2add t1, t3, a0
	lw t6, 0(t1)
	addiw t4, t6, 1
	blt a2, a5, label1951
	mv t5, a4
label1951:
	mv t0, t3
	blt t2, t4, label1953
	mv t0, t5
label1953:
	max t3, a5, t4
	sw t4, 0(t1)
	max t2, a2, t3
	lw t5, 8(a1)
	mv a4, t5
	sh2add a5, t5, a0
	lw t1, 0(a5)
	addiw t4, t1, 1
	blt t2, t4, label1955
	mv a4, t0
label1955:
	max t2, t3, t4
	sw t4, 0(a5)
	max t1, a2, t2
	lw t3, 12(a1)
	mv a5, t3
	sh2add t0, t3, a0
	lw t4, 0(t0)
	addiw t5, t4, 1
	blt t1, t5, label1957
	mv a5, a4
label1957:
	max t1, t2, t5
	sw t5, 0(t0)
	max t4, a2, t1
	lw t2, 16(a1)
	mv a4, t2
	sh2add t3, t2, a0
	lw t0, 0(t3)
	addiw t5, t0, 1
	blt t4, t5, label1959
	mv a4, a5
label1959:
	max t0, t1, t5
	sw t5, 0(t3)
	max t4, a2, t0
	lw t1, 20(a1)
	mv a5, t1
	sh2add t2, t1, a0
	lw t3, 0(t2)
	addiw t5, t3, 1
	blt t4, t5, label1961
	mv a5, a4
label1961:
	max t1, t0, t5
	sw t5, 0(t2)
	max t4, a2, t1
	lw t0, 24(a1)
	mv a4, t0
	sh2add t3, t0, a0
	lw t2, 0(t3)
	addiw t5, t2, 1
	blt t4, t5, label1963
	mv a4, a5
label1963:
	max t0, t1, t5
	sw t5, 0(t3)
	max t2, a2, t0
	lw t1, 28(a1)
	mv a5, t1
	sh2add t4, t1, a0
	lw t3, 0(t4)
	addiw t5, t3, 1
	blt t2, t5, label1965
	mv a5, a4
label1965:
	max t1, t0, t5
	sw t5, 0(t4)
	max t3, a2, t1
	lw t0, 32(a1)
	mv a4, t0
	sh2add t2, t0, a0
	lw t5, 0(t2)
	addiw t4, t5, 1
	blt t3, t4, label1967
	mv a4, a5
label1967:
	max t0, t1, t4
	sw t4, 0(t2)
	max t3, a2, t0
	lw t5, 36(a1)
	mv a5, t5
	sh2add t1, t5, a0
	lw t2, 0(t1)
	addiw t4, t2, 1
	blt t3, t4, label1969
	mv a5, a4
label1969:
	max t2, t0, t4
	sw t4, 0(t1)
	max t3, a2, t2
	lw t5, 40(a1)
	mv t0, t5
	sh2add a4, t5, a0
	lw t1, 0(a4)
	addiw t4, t1, 1
	blt t3, t4, label1971
	mv t0, a5
label1971:
	max t1, t2, t4
	sw t4, 0(a4)
	max t3, a2, t1
	lw t2, 44(a1)
	mv a4, t2
	sh2add a5, t2, a0
	lw t5, 0(a5)
	addiw t4, t5, 1
	blt t3, t4, label1973
	mv a4, t0
label1973:
	max t2, t1, t4
	sw t4, 0(a5)
	max t0, a2, t2
	lw t3, 48(a1)
	mv a5, t3
	sh2add t1, t3, a0
	lw t4, 0(t1)
	addiw t5, t4, 1
	blt t0, t5, label1975
	mv a5, a4
label1975:
	max t0, t2, t5
	sw t5, 0(t1)
	max t4, a2, t0
	lw t2, 52(a1)
	mv a4, t2
	sh2add t3, t2, a0
	lw t1, 0(t3)
	addiw t5, t1, 1
	blt t4, t5, label1977
	j label1976
label417:
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
	lw a2, 124(sp)
	sw a2, 252(sp)
	mv a2, zero
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
	j label418
.p2align 2
label1995:
	addiw a3, a3, 1
	ble a0, a3, label2007
.p2align 2
label426:
	addi a1, a1, 4
	lw a4, 0(a1)
	lw a5, 4(a1)
	ble a4, a5, label1995
.p2align 2
label424:
	sw a4, 4(a1)
	sw a5, 0(a1)
	addiw a3, a3, 1
	bgt a0, a3, label426
	addiw a2, a2, 1
	li a0, 31
	bge a2, a0, label2006
.p2align 2
label418:
	li a3, 32
	subw a1, a3, a2
	addiw a0, a1, -1
	ble a0, zero, label427
	mv a1, s0
	mv a3, zero
	lw a4, 0(s0)
	lw a5, 4(s0)
	bgt a4, a5, label424
	li a3, 1
	bgt a0, a3, label426
	addiw a2, a2, 1
	li a0, 31
	blt a2, a0, label418
label2006:
	mv s2, s0
	mv s3, zero
.p2align 2
label429:
	lw a0, 0(s2)
	jal putint
	li a0, 32
	addiw a1, s3, 1
	bge a1, a0, label432
	addi s2, s2, 4
	mv s3, a1
	j label429
label432:
	lw a2, 48(sp)
	addi a0, s0, 4
	sw a2, 176(sp)
	lw a1, 52(sp)
	sw a1, 180(sp)
	lw a2, 56(sp)
	sw a2, 184(sp)
	lw a1, 60(sp)
	sw a1, 188(sp)
	lw a3, 64(sp)
	sw a3, 192(sp)
	lw a2, 68(sp)
	sw a2, 196(sp)
	lw a1, 72(sp)
	sw a1, 200(sp)
	lw a3, 76(sp)
	sw a3, 204(sp)
	lw a2, 80(sp)
	sw a2, 208(sp)
	lw a1, 84(sp)
	sw a1, 212(sp)
	lw a3, 88(sp)
	sw a3, 216(sp)
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
	addiw a3, s1, -1
	lw a2, 0(a0)
	sh2add a1, a3, s0
	bge a3, zero, label439
	mv a4, zero
	addiw s1, s1, 1
	li a3, 32
	sw a2, 4(a1)
	blt s1, a3, label444
label2008:
	mv s1, s0
	mv s2, zero
.p2align 2
label446:
	lw a0, 0(s1)
	jal putint
	li a0, 32
	addiw a1, s2, 1
	bge a1, a0, label449
	addi s1, s1, 4
	mv s2, a1
	j label446
label449:
	lw a1, 48(sp)
	sw a1, 176(sp)
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
	lw a2, 72(sp)
	sw a2, 200(sp)
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
	lw a1, 108(sp)
	sw a1, 236(sp)
	lw a0, 112(sp)
	sw a0, 240(sp)
	lw a1, 116(sp)
	sw a1, 244(sp)
	lw a2, 120(sp)
	sw a2, 248(sp)
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
label450:
	lw a0, 0(s1)
	jal putint
	li a0, 32
	addiw a1, s2, 1
	bge a1, a0, label454
	addi s1, s1, 4
	mv s2, a1
	j label450
.p2align 2
label439:
	lw a5, 0(a1)
	slt a4, a2, a5
	beq a4, zero, label1141
	lw a4, 0(a1)
	addiw a3, a3, -1
	sw a4, 4(a1)
	addi a1, a1, -4
	bge a3, zero, label439
	mv a4, zero
	addiw s1, s1, 1
	li a3, 32
	sw a2, 4(a1)
	bge s1, a3, label2008
.p2align 2
label444:
	addi a0, a0, 4
	addiw a3, s1, -1
	lw a2, 0(a0)
	sh2add a1, a3, s0
	bge a3, zero, label439
	mv a4, zero
	addiw s1, s1, 1
	li a3, 32
	sw a2, 4(a1)
	blt s1, a3, label444
	j label2008
label454:
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
	lw a2, 160(sp)
	sw a2, 288(sp)
	lw a0, 164(sp)
	sw a0, 292(sp)
	mv a0, s0
	lw a1, 168(sp)
	sw a1, 296(sp)
	mv a1, zero
	lw a2, 172(sp)
	sw a2, 300(sp)
	mv a2, zero
label455:
	lw a4, 0(a0)
	addiw t0, a1, 1
	sw zero, 0(a0)
	addw a3, a2, a4
	lw a5, 4(a0)
	andi a4, t0, 3
	addw a2, a3, a5
	li a3, 3
	beq a4, a3, label459
	sw zero, 4(a0)
	j label460
label459:
	sw a2, 4(a0)
	mv a2, zero
label460:
	lw a4, 8(a0)
	addiw a5, a1, 3
	sw zero, 8(a0)
	addw a3, a2, a4
	lw t0, 12(a0)
	andi a4, a5, 3
	addw a2, a3, t0
	li a3, 3
	bne a4, a3, label514
	sw a2, 12(a0)
	mv a2, zero
label462:
	lw a4, 16(a0)
	addiw t0, a1, 5
	sw zero, 16(a0)
	addw a3, a2, a4
	lw a5, 20(a0)
	andi a4, t0, 3
	addw a2, a3, a5
	li a3, 3
	bne a4, a3, label513
	sw a2, 20(a0)
	mv a2, zero
	j label465
label513:
	sw zero, 20(a0)
label465:
	lw a4, 24(a0)
	addiw t0, a1, 7
	sw zero, 24(a0)
	addw a3, a2, a4
	lw a5, 28(a0)
	andi a4, t0, 3
	addw a2, a3, a5
	li a3, 3
	bne a4, a3, label467
	sw a2, 28(a0)
	mv a2, zero
	j label469
label467:
	sw zero, 28(a0)
label469:
	lw a4, 32(a0)
	addiw a5, a1, 9
	sw zero, 32(a0)
	addw a3, a2, a4
	lw t0, 36(a0)
	andi a4, a5, 3
	addw a2, a3, t0
	li a3, 3
	bne a4, a3, label472
	sw a2, 36(a0)
	mv a2, zero
	j label473
label472:
	sw zero, 36(a0)
label473:
	lw a4, 40(a0)
	addiw a5, a1, 11
	sw zero, 40(a0)
	addw a3, a2, a4
	lw t0, 44(a0)
	andi a4, a5, 3
	addw a2, a3, t0
	li a3, 3
	bne a4, a3, label511
	sw a2, 44(a0)
	mv a2, zero
	j label475
label511:
	sw zero, 44(a0)
label475:
	lw a4, 48(a0)
	addiw t0, a1, 13
	sw zero, 48(a0)
	addw a3, a2, a4
	lw a5, 52(a0)
	andi a4, t0, 3
	addw a2, a3, a5
	li a3, 3
	bne a4, a3, label477
	sw a2, 52(a0)
	mv a2, zero
label479:
	lw a4, 56(a0)
	addiw t0, a1, 15
	sw zero, 56(a0)
	addw a3, a2, a4
	lw a5, 60(a0)
	andi a4, t0, 3
	addw a2, a3, a5
	li a3, 3
	bne a4, a3, label481
	sw a2, 60(a0)
	mv a2, zero
	j label482
label481:
	sw zero, 60(a0)
label482:
	addiw a1, a1, 16
	li a3, 32
	blt a1, a3, label484
	mv s1, s0
	mv s2, zero
.p2align 2
label486:
	lw a0, 0(s1)
	jal putint
	li a0, 32
	addiw a1, s2, 1
	bge a1, a0, label489
	addi s1, s1, 4
	mv s2, a1
	j label486
label489:
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
	lw a2, 80(sp)
	sw a2, 208(sp)
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
	lw a1, 108(sp)
	sw a1, 236(sp)
	lw a0, 112(sp)
	sw a0, 240(sp)
	lw a1, 116(sp)
	sw a1, 244(sp)
	lw a2, 120(sp)
	sw a2, 248(sp)
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
	mv a0, zero
	lw a1, 168(sp)
	sw a1, 296(sp)
	mv a1, s0
	lw a2, 172(sp)
	sw a2, 300(sp)
	mv a2, zero
	li a4, 2
	blt zero, a4, label505
	bne zero, a4, label507
.p2align 2
label508:
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
	blt a0, a4, label504
	j label2001
.p2align 2
label505:
	lw a4, 0(a1)
	addiw a0, a0, 1
	addw a3, a3, a4
	li a4, 32
	bge a0, a4, label2001
.p2align 2
label504:
	addi a1, a1, 4
	li a4, 2
	blt a0, a4, label505
	beq a0, a4, label508
.p2align 2
label507:
	sh2add a4, a0, s0
	lui t2, 349525
	addiw a0, a0, 1
	lw t0, 0(a4)
	addw a5, a3, t0
	addiw t0, t2, 1366
	subw a3, a5, a2
	lw a2, -8(a4)
	mul a5, a3, t0
	srli t2, a5, 63
	srli t1, a5, 32
	add t0, t2, t1
	sw t0, -8(a4)
	li a4, 32
	blt a0, a4, label504
label2001:
	sd zero, 296(sp)
	mv s1, zero
.p2align 2
label499:
	lw a0, 0(s0)
	jal putint
	li a0, 32
	addiw a1, s1, 1
	bge a1, a0, label503
	addi s0, s0, 4
	mv s1, a1
	j label499
label503:
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
label2007:
	addiw a2, a2, 1
	li a0, 31
	blt a2, a0, label418
	j label2006
label399:
	addiw a2, a2, 1
	li a0, 31
	blt a2, a0, label390
	j label1990
label427:
	addiw a2, a2, 1
	li a0, 31
	blt a2, a0, label418
	j label2006
label1141:
	sw a2, 4(a1)
	addiw s1, s1, 1
	li a3, 32
	blt s1, a3, label444
	j label2008
label484:
	addi a0, a0, 64
	j label455
label477:
	sw zero, 52(a0)
	j label479
label514:
	sw zero, 12(a0)
	j label462
