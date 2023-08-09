.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
arr1:
	.zero	57600
.align 8
arr2:
	.zero	107520
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[0] RegSpill[312] CalleeSaved[104]
	addi sp, sp, -416
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s2, 40(sp)
	sd s4, 48(sp)
	sd s3, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
	addiw s0, a0, 1
	sd a0, 376(sp)
	jal getint
	addw t4, s0, a0
	sd a0, 368(sp)
	sd t4, 384(sp)
	ld a0, 376(sp)
	addiw a2, a0, 2
	ld a1, 368(sp)
	addw t3, a1, a2
	addw t2, a0, a1
	addiw a2, a0, 3
	addw t6, a1, a2
	sd t3, 400(sp)
	addiw a2, a0, 4
	sd t6, 408(sp)
	addw t3, a1, a2
	addiw a2, a0, 5
	sd t3, 176(sp)
	addw a7, a1, a2
	addiw a2, a0, 6
	sd a7, 160(sp)
	addw t3, a1, a2
	addiw a2, a0, 7
	sd t3, 152(sp)
	addw t3, a1, a2
	addiw a2, a0, 8
	sd t3, 144(sp)
	addw t3, a1, a2
	addiw a2, a0, 9
	sd t3, 136(sp)
	addw t3, a1, a2
	addiw a2, a0, 10
	sd t3, 128(sp)
	addw t3, a1, a2
	sd t3, 104(sp)
	sd t2, 112(sp)
	jal getint
	sd a0, 240(sp)
	jal getint
	sd a0, 256(sp)
	jal getint
	sd a0, 272(sp)
	jal getint
	sd a0, 280(sp)
	mv a2, a0
	jal getint
	sd a0, 264(sp)
	mv a5, a0
	jal getint
	sd a0, 248(sp)
	mv t2, a0
	jal getint
	mv t6, a0
	addiw t5, a0, -3
	mv a2, zero
	li a4, 45
	sd a0, 232(sp)
pcrel845:
	auipc a0, %pcrel_hi(arr1)
	sd t5, 224(sp)
	addi a1, a0, %pcrel_lo(pcrel845)
	slli a0, a4, 6
	mv a3, a1
	sd a1, 328(sp)
	lui a4, 24
	li a1, 21
	addiw a5, a4, 1696
	sd a0, 216(sp)
	slli a0, a1, 8
	lui a1, 244
	sd a0, 192(sp)
	addiw t2, a1, 576
	addi a0, a0, 384
	sd a0, 200(sp)
	ld a0, 192(sp)
	slli a0, a0, 1
	sd a0, 208(sp)
	sd t2, 184(sp)
	sd a5, 296(sp)
	addi a5, a0, -752
	sd a5, 288(sp)
	ld a0, 376(sp)
	ld a1, 368(sp)
	slt a0, zero, a0
	slt a4, zero, a1
	and a5, a0, a4
	bne a5, zero, label97
	j label5
.p2align 2
label812:
	addiw a2, a2, 1
	ld a0, 200(sp)
	add a3, a3, a0
	ld a0, 376(sp)
	ld a1, 368(sp)
	slt a0, a2, a0
	slt a4, a2, a1
	and a5, a0, a4
	beq a5, zero, label5
.p2align 2
label97:
	mv a4, a3
	mv a5, zero
	sext.w a0, a2
	li t3, 2
	blt zero, t3, label101
	addiw a2, a2, 1
	ld a0, 200(sp)
	add a3, a3, a0
	ld a0, 376(sp)
	ld a1, 368(sp)
	slt a0, a2, a0
	slt a4, a2, a1
	and a5, a0, a4
	bne a5, zero, label97
	j label5
.p2align 2
label804:
	addiw a5, a5, 1
	li t3, 2
	ld a0, 216(sp)
	add a4, a4, a0
	addw a0, a2, a5
	bge a5, t3, label812
.p2align 2
label101:
	mv t0, a4
	mv a1, zero
	li t2, 3
	blt zero, t2, label106
	addiw a5, a5, 1
	li t3, 2
	ld a0, 216(sp)
	add a4, a4, a0
	addw a0, a2, a5
	blt a5, t3, label101
	addiw a2, a2, 1
	ld a0, 200(sp)
	add a3, a3, a0
	ld a0, 376(sp)
	ld a1, 368(sp)
	slt a0, a2, a0
	slt a4, a2, a1
	and a5, a0, a4
	bne a5, zero, label97
	j label5
.p2align 2
label110:
	addi t3, t3, 240
.p2align 2
label107:
	addw s3, t1, s5
	addw s6, t2, s5
	addw s7, t4, s5
	slli s8, s6, 32
	add.uw s9, s3, s8
	addw s3, t5, s5
	slli s8, s7, 32
	sd s9, 0(t3)
	slli s10, s3, 32
	add.uw s9, s6, s8
	addw s6, t6, s5
	add.uw s8, s7, s10
	sd s9, 8(t3)
	slli s11, s6, 32
	addw s10, a6, s5
	add.uw s7, s3, s11
	sd s8, 16(t3)
	slli s11, s10, 32
	sd s7, 24(t3)
	add.uw s3, s6, s11
	addw s11, a7, s5
	sd s3, 32(t3)
	slli s6, s11, 32
	add.uw s6, s10, s6
	addw s10, s0, s5
	sd s6, 40(t3)
	sd s9, 48(t3)
	slli s9, s10, 32
	sd s8, 56(t3)
	add.uw s9, s11, s9
	sd s7, 64(t3)
	addw s11, s1, s5
	sd s3, 72(t3)
	sd s6, 80(t3)
	sd s9, 88(t3)
	sd s8, 96(t3)
	slli s8, s11, 32
	sd s7, 104(t3)
	add.uw s8, s10, s8
	sd s3, 112(t3)
	sd s6, 120(t3)
	sd s9, 128(t3)
	sd s8, 136(t3)
	sd s7, 144(t3)
	addw s7, s2, s5
	sd s3, 152(t3)
	slli s10, s7, 32
	sd s6, 160(t3)
	add.uw s10, s11, s10
	sd s9, 168(t3)
	sd s8, 176(t3)
	sd s10, 184(t3)
	sd s3, 192(t3)
	addw s3, s4, s5
	sd s6, 200(t3)
	addiw s5, s5, 1
	sd s9, 208(t3)
	sd s8, 216(t3)
	slli s8, s3, 32
	sd s10, 224(t3)
	li s3, 4
	add.uw s6, s7, s8
	sd s6, 232(t3)
	blt s5, s3, label110
	addiw a1, a1, 1
	addi t0, t0, 960
	li t2, 3
	bge a1, t2, label804
.p2align 2
label106:
	ld t2, 112(sp)
	mv s5, zero
	ld t4, 384(sp)
	addw t3, t2, a1
	addw t5, t4, a1
	addw t1, a0, t3
	addw t2, a0, t5
	ld t3, 400(sp)
	ld t6, 408(sp)
	addw a6, t3, a1
	addw a7, t6, a1
	addw t4, a0, a6
	ld t3, 176(sp)
	addw t5, a0, a7
	addw a6, t3, a1
	ld a7, 160(sp)
	addw t6, a0, a6
	ld t3, 152(sp)
	addw s1, a7, a1
	addw s0, t3, a1
	addw a6, a0, s1
	ld t3, 144(sp)
	addw a7, a0, s0
	addw s1, t3, a1
	ld t3, 136(sp)
	addw s0, a0, s1
	addw s2, t3, a1
	ld t3, 128(sp)
	addw s1, a0, s2
	addw s4, t3, a1
	ld t3, 104(sp)
	addw s2, a0, s4
	addw s3, t3, a1
	mv t3, t0
	addw s4, a0, s3
	j label107
label5:
	auipc a0, %pcrel_hi(arr2)
	mv a2, zero
	addi a3, a0, %pcrel_lo(label5)
	sd a3, 304(sp)
	li a0, 10
	blt zero, a0, label9
label155:
	ld a1, 328(sp)
	mv a7, zero
	mv a2, zero
	sd a1, 312(sp)
	sd zero, 320(sp)
label31:
	ld a0, 208(sp)
	ld a2, 320(sp)
	ld a3, 304(sp)
	mul a1, a2, a0
	li a0, 10
	add a4, a3, a1
	sd a4, 336(sp)
	bge a2, a0, label256
	ld a1, 312(sp)
	mv a2, zero
	sd a1, 344(sp)
	sd zero, 352(sp)
label38:
	ld a0, 192(sp)
	ld a2, 352(sp)
	ld a4, 336(sp)
	mul a1, a2, a0
	li a0, 100
	add a3, a4, a1
	sd a3, 360(sp)
	bge a2, a0, label262
	ld a1, 344(sp)
	mv a0, zero
	sd a1, 392(sp)
	sd zero, 168(sp)
	sub a5, zero, zero
	li a2, 1000
	slli a1, a5, 8
	add a4, a3, a1
	sd a4, 120(sp)
	bge zero, a2, label268
.p2align 2
label50:
	ld a0, 392(sp)
	mv a1, zero
	ld a4, 120(sp)
	sub a5, zero, zero
	slli a2, a5, 7
	ld a5, 288(sp)
	add a3, a4, a2
	bge zero, a5, label280
.p2align 2
label58:
	mv a2, a0
	mv a4, zero
	sub t2, zero, zero
	ld a5, 296(sp)
	slli t1, t2, 5
	add t0, a3, t1
	bge zero, a5, label292
.p2align 2
label63:
	mv a5, a2
	mv t1, zero
	ld t2, 184(sp)
	bge zero, t2, label296
.p2align 2
label71:
	slli t2, t1, 3
	ld t6, 232(sp)
	sub t4, t2, t1
	li t2, 3
	sh2add t3, t4, t0
	ble t6, t2, label308
	mv t2, t3
	mv t4, zero
.p2align 2
label86:
	sh2add t5, t4, a5
	lui a6, 657125
	addiw t4, t4, 4
	addiw t6, a6, -1067
	lw s0, 0(t5)
	mul s1, a7, t6
	srli s3, s1, 32
	add a6, s3, a7
	srliw s4, a6, 31
	sraiw s2, a6, 9
	li a6, 817
	add s1, s4, s2
	mulw s3, s1, a6
	lw s1, 0(t2)
	subw s4, a7, s3
	addw s2, s0, s4
	addw a7, s2, s1
	mul s3, a7, t6
	srli s4, s3, 32
	add s0, s4, a7
	srliw s3, s0, 31
	sraiw s1, s0, 9
	add s4, s3, s1
	lw s3, 4(t5)
	mulw s2, s4, a6
	lw s4, 4(t2)
	subw s0, a7, s2
	addw s1, s0, s3
	addw a7, s1, s4
	mul s2, a7, t6
	srli s5, s2, 32
	add s0, s5, a7
	lw s5, 8(t5)
	srliw s3, s0, 31
	sraiw s1, s0, 9
	add s2, s3, s1
	lw s3, 8(t2)
	mulw s4, s2, a6
	subw s0, a7, s4
	addw s1, s0, s5
	addw a7, s1, s3
	mul s0, a7, t6
	srli s2, s0, 32
	add t6, s2, a7
	srliw s3, t6, 31
	sraiw s1, t6, 9
	add s2, s3, s1
	mulw t6, s2, a6
	lw a6, 12(t5)
	subw s0, a7, t6
	lw t5, 12(t2)
	addw t6, s0, a6
	addw a7, t6, t5
	ld t5, 224(sp)
	ble t5, t4, label366
	addi t2, t2, 16
	j label86
.p2align 2
label366:
	mv t5, a7
	ld t6, 232(sp)
	ble t6, t4, label786
.p2align 2
label76:
	sh2add t2, t4, a5
.p2align 2
label77:
	lw t6, 0(t2)
	lui s0, 657125
	addiw a6, s0, -1067
	mul a7, t5, a6
	srli s1, a7, 32
	add a6, s1, t5
	srliw s2, a6, 31
	sraiw s0, a6, 9
	li a6, 817
	add a7, s2, s0
	sh2add s2, t4, t3
	addiw t4, t4, 1
	mulw s1, a7, a6
	lw a7, 0(s2)
	subw s0, t5, s1
	addw a6, t6, s0
	ld t6, 232(sp)
	addw t5, a6, a7
	ble t6, t4, label326
	addi t2, t2, 4
	j label77
.p2align 2
label813:
	addiw a2, a2, 1
	ld a0, 208(sp)
	add a3, a3, a0
	li a0, 10
	bge a2, a0, label155
.p2align 2
label9:
	mv a4, a3
	mv a5, zero
	sext.w a1, a2
	li t3, 2
	blt zero, t3, label13
	addiw a2, a2, 1
	ld a0, 208(sp)
	add a3, a3, a0
	li a0, 10
	blt a2, a0, label9
	j label155
.p2align 2
label806:
	addiw a5, a5, 1
	li t3, 2
	ld a0, 192(sp)
	addw a1, a2, a5
	add a4, a4, a0
	bge a5, t3, label813
.p2align 2
label13:
	mv t0, a4
	mv t1, zero
	li t2, 3
	blt zero, t2, label18
	addiw a5, a5, 1
	li t3, 2
	ld a0, 192(sp)
	addw a1, a2, a5
	add a4, a4, a0
	blt a5, t3, label13
	addiw a2, a2, 1
	ld a0, 208(sp)
	add a3, a3, a0
	li a0, 10
	blt a2, a0, label9
	j label155
.p2align 2
label795:
	addiw t1, t1, 1
	addi t0, t0, 1792
	li t2, 3
	bge t1, t2, label806
.p2align 2
label18:
	mv t2, t0
	mv a0, zero
	li t3, 2
	blt zero, t3, label23
	addiw t1, t1, 1
	addi t0, t0, 1792
	li t2, 3
	blt t1, t2, label18
	addiw a5, a5, 1
	ld a0, 192(sp)
	addw a1, a2, a5
	add a4, a4, a0
	blt a5, t3, label13
	addiw a2, a2, 1
	ld a0, 208(sp)
	add a3, a3, a0
	li a0, 10
	blt a2, a0, label9
	j label155
.p2align 2
label246:
	addi t2, t2, 896
	mv a0, t3
	li t3, 2
	bge a0, t3, label795
.p2align 2
label23:
	addiw t3, a0, 1
	addiw a7, a0, 2
	addiw a6, a0, 3
	addiw s1, a0, 5
	addiw s2, a0, 6
	addw t4, a1, t3
	addw t5, a1, a7
	addw t6, a1, a6
	addw s0, a1, s2
	addiw a7, a0, 4
	mv s2, zero
	addw a6, a1, a7
	addw a7, a1, s1
	addw s1, a1, a0
	mv a0, t2
.p2align 2
label24:
	slli s4, t4, 32
	slli s5, t6, 32
	slli s6, a7, 32
	slli s7, s1, 32
	slli s8, t5, 32
	slli s9, a6, 32
	slli s10, s0, 32
	addiw s2, s2, 1
	add.uw s3, s1, s4
	add.uw s4, t5, s5
	sd s3, 0(a0)
	add.uw s5, a6, s6
	sd s4, 8(a0)
	add.uw s6, s0, s7
	sd s5, 16(a0)
	add.uw s7, t4, s8
	sd s6, 24(a0)
	add.uw s8, t6, s9
	sd s7, 32(a0)
	add.uw s9, a7, s10
	sd s8, 40(a0)
	sd s9, 48(a0)
	sd s3, 56(a0)
	sd s4, 64(a0)
	sd s5, 72(a0)
	sd s6, 80(a0)
	sd s7, 88(a0)
	sd s8, 96(a0)
	sd s9, 104(a0)
	sd s3, 112(a0)
	sd s4, 120(a0)
	sd s5, 128(a0)
	sd s6, 136(a0)
	sd s7, 144(a0)
	sd s8, 152(a0)
	sd s9, 160(a0)
	sd s3, 168(a0)
	li s3, 4
	sd s4, 176(a0)
	sd s5, 184(a0)
	sd s6, 192(a0)
	sd s7, 200(a0)
	sd s8, 208(a0)
	sd s9, 216(a0)
	bge s2, s3, label246
	addi a0, a0, 224
	j label24
.p2align 2
label326:
	addiw t1, t1, 1
	ld t2, 248(sp)
	bgt t2, t1, label84
	addiw a4, a4, 1
	ld a5, 264(sp)
	ble a5, a4, label798
.p2align 2
label70:
	addi a2, a2, 48
	mv a7, t5
	slli a5, a4, 3
	sub t2, a5, a4
	ld a5, 296(sp)
	slli t1, t2, 5
	add t0, a3, t1
	blt a4, a5, label63
label292:
	mv t5, a7
	addiw a1, a1, 1
	ld a2, 280(sp)
	bgt a2, a1, label93
	ld a0, 168(sp)
	addiw a1, a0, 1
	ld a0, 272(sp)
	bgt a0, a1, label57
	ld a2, 352(sp)
	ld a0, 256(sp)
	addiw a2, a2, 1
	bgt a0, a2, label49
	j label94
.p2align 2
label786:
	mv t5, a7
	addiw t1, t1, 1
	ld t2, 248(sp)
	ble t2, t1, label800
.p2align 2
label84:
	addi a5, a5, 8
	mv a7, t5
	ld t2, 184(sp)
	blt t1, t2, label71
label296:
	mv t5, a7
	addiw a4, a4, 1
	ld a5, 264(sp)
	bgt a5, a4, label70
	addiw a1, a1, 1
	ld a2, 280(sp)
	bgt a2, a1, label93
	ld a0, 168(sp)
	addiw a1, a0, 1
	ld a0, 272(sp)
	bgt a0, a1, label57
	ld a2, 352(sp)
	ld a0, 256(sp)
	addiw a2, a2, 1
	bgt a0, a2, label49
	j label94
.p2align 2
label798:
	addiw a1, a1, 1
	ld a2, 280(sp)
	ble a2, a1, label809
.p2align 2
label93:
	addi a0, a0, 240
	mv a7, t5
	slli a3, a1, 3
	ld a4, 120(sp)
	sub a5, a3, a1
	slli a2, a5, 7
	ld a5, 288(sp)
	add a3, a4, a2
	blt a1, a5, label58
label280:
	mv t5, a7
	ld a0, 168(sp)
	addiw a1, a0, 1
	ld a0, 272(sp)
	bgt a0, a1, label57
	ld a2, 352(sp)
	ld a0, 256(sp)
	addiw a2, a2, 1
	bgt a0, a2, label49
	j label94
label308:
	mv t4, zero
	mv t5, a7
	mv a7, zero
	ld t6, 232(sp)
	bgt t6, zero, label76
	mv t5, zero
	addiw t1, t1, 1
	ld t2, 248(sp)
	bgt t2, t1, label84
	addiw a4, a4, 1
	ld a5, 264(sp)
	bgt a5, a4, label70
	addiw a1, a1, 1
	ld a2, 280(sp)
	bgt a2, a1, label93
	j label799
.p2align 2
label800:
	addiw a4, a4, 1
	ld a5, 264(sp)
	bgt a5, a4, label70
	addiw a1, a1, 1
	ld a2, 280(sp)
	bgt a2, a1, label93
label799:
	ld a0, 168(sp)
	addiw a1, a0, 1
	ld a0, 272(sp)
	bgt a0, a1, label57
	ld a2, 352(sp)
	ld a0, 256(sp)
	addiw a2, a2, 1
	ble a0, a2, label94
label49:
	ld a0, 216(sp)
	mv a7, t5
	ld a1, 344(sp)
	add a1, a1, a0
	sd a1, 344(sp)
	sd a2, 352(sp)
	j label38
.p2align 2
label809:
	ld a0, 168(sp)
	addiw a1, a0, 1
	ld a0, 272(sp)
	ble a0, a1, label814
label57:
	ld a0, 392(sp)
	mv a7, t5
	slli a2, a1, 3
	addi a0, a0, 960
	sub a5, a2, a1
	li a2, 1000
	sd a0, 392(sp)
	sd a1, 168(sp)
	mv a0, a1
	ld a3, 360(sp)
	slli a1, a5, 8
	add a4, a3, a1
	sd a4, 120(sp)
	blt a0, a2, label50
label268:
	mv t5, a7
	ld a2, 352(sp)
	ld a0, 256(sp)
	addiw a2, a2, 1
	bgt a0, a2, label49
	j label94
label814:
	ld a2, 352(sp)
	ld a0, 256(sp)
	addiw a2, a2, 1
	bgt a0, a2, label49
label94:
	ld a2, 320(sp)
	ld a0, 240(sp)
	addiw a2, a2, 1
	ble a0, a2, label378
	ld a0, 200(sp)
	mv a7, t5
	ld a1, 312(sp)
	add a1, a1, a0
	sd a1, 312(sp)
	sd a2, 320(sp)
	j label31
label378:
	mv a0, t5
label35:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s2, 40(sp)
	ld s4, 48(sp)
	ld s3, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 416
	ret
label256:
	mv a0, a7
	j label35
label262:
	mv t5, a7
	j label94
