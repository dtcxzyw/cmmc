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
	addi sp, sp, -640
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s2, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
	addiw s0, a0, 1
	sd a0, 256(sp)
	jal getint
	addw a1, s0, a0
	sd a0, 264(sp)
	sd a1, 248(sp)
	ld a0, 256(sp)
	ld a1, 264(sp)
	addiw a2, a0, 2
	addw a1, a1, a2
	addiw a2, a0, 3
	sd a1, 240(sp)
	ld a1, 264(sp)
	addw a1, a1, a2
	addiw a2, a0, 4
	sd a1, 232(sp)
	ld a1, 264(sp)
	addw a1, a1, a2
	addiw a2, a0, 5
	sd a1, 224(sp)
	ld a1, 264(sp)
	addw a1, a1, a2
	addiw a2, a0, 6
	sd a1, 216(sp)
	ld a1, 264(sp)
	addw a1, a1, a2
	addiw a2, a0, 7
	sd a1, 208(sp)
	ld a1, 264(sp)
	addw a1, a1, a2
	addiw a2, a0, 8
	sd a1, 200(sp)
	ld a1, 264(sp)
	addw a1, a1, a2
	addiw a2, a0, 9
	sd a1, 192(sp)
	ld a1, 264(sp)
	addw a1, a1, a2
	addiw a2, a0, 10
	sd a1, 184(sp)
	ld a1, 264(sp)
	addw a3, a1, a2
	addw a1, a0, a1
	sd a3, 168(sp)
	sd a1, 176(sp)
	jal getint
	sd a0, 336(sp)
	jal getint
	sd a0, 320(sp)
	mv a1, a0
	jal getint
	sd a0, 304(sp)
	mv a1, a0
	jal getint
	sd a0, 296(sp)
	mv a2, a0
	jal getint
	sd a0, 312(sp)
	mv a3, a0
	jal getint
	sd a0, 328(sp)
	mv t0, a0
	jal getint
	lui a3, 244
	mv t4, a0
	sd a0, 344(sp)
pcrel748:
	auipc a1, %pcrel_hi(arr1)
	li a2, 21
	addiw t1, a3, 576
	addi a0, a1, %pcrel_lo(pcrel748)
	slli a1, a2, 8
	sd a0, 280(sp)
	sd a0, 400(sp)
	li a0, 45
	sd zero, 408(sp)
	slli a2, a0, 6
	sd a1, 352(sp)
	lui a0, 24
	slli a1, a1, 1
	addiw a4, a0, 1696
	sd a2, 376(sp)
	sd a1, 368(sp)
	slli a1, a2, 1
	sd a1, 360(sp)
	sd t1, 384(sp)
	sd a4, 288(sp)
	ld a1, 368(sp)
	addi a2, a1, -752
	sd a2, 392(sp)
	ld a0, 256(sp)
	mv a3, zero
	ld a1, 264(sp)
	slt a0, zero, a0
	slt a4, zero, a1
	and a2, a0, a4
	beq a2, zero, label5
.p2align 2
label85:
	ld a0, 400(sp)
	mv a1, zero
	sd a0, 448(sp)
	sd zero, 456(sp)
	ld a3, 408(sp)
	li a0, 2
	sext.w a2, a3
	sd a2, 464(sp)
	bge zero, a0, label332
.p2align 2
label89:
	ld a3, 448(sp)
	mv a0, zero
	sd a3, 480(sp)
	sd zero, 496(sp)
	li t4, 3
	blt zero, t4, label93
.p2align 2
label336:
	ld a1, 456(sp)
	ld a2, 376(sp)
	addiw a0, a1, 1
	ld a3, 448(sp)
	mv a1, a0
	add a3, a3, a2
	sd a3, 448(sp)
	sd a0, 456(sp)
	ld a3, 408(sp)
	addw a2, a3, a0
	li a0, 2
	sd a2, 464(sp)
	blt a1, a0, label89
	j label332
.p2align 2
label93:
	ld a1, 176(sp)
	ld a0, 496(sp)
	addw a3, a1, a0
	ld a2, 464(sp)
	addw t0, a2, a3
	sd t0, 504(sp)
	ld a1, 248(sp)
	addw a3, a1, a0
	addw a5, a2, a3
	sd a5, 520(sp)
	ld a1, 240(sp)
	addw a3, a1, a0
	addw a5, a2, a3
	sd a5, 536(sp)
	ld a1, 232(sp)
	addw a3, a1, a0
	addw a5, a2, a3
	sd a5, 544(sp)
	ld a1, 224(sp)
	addw a3, a1, a0
	addw t2, a2, a3
	sd t2, 552(sp)
	ld a1, 216(sp)
	addw a3, a1, a0
	addw t4, a2, a3
	sd t4, 568(sp)
	ld a1, 208(sp)
	addw a3, a1, a0
	addw t4, a2, a3
	sd t4, 584(sp)
	ld a1, 200(sp)
	addw a3, a1, a0
	addw t4, a2, a3
	sd t4, 144(sp)
	ld a1, 192(sp)
	addw a3, a1, a0
	addw t4, a2, a3
	sd t4, 128(sp)
	ld a1, 184(sp)
	addw a4, a1, a0
	addw t4, a2, a4
	sd t4, 112(sp)
	ld a3, 168(sp)
	addw a4, a3, a0
	ld a3, 480(sp)
	addw a1, a2, a4
	mv a0, a3
	mv a2, zero
	j label94
.p2align 2
label433:
	ld a0, 496(sp)
	li t4, 3
	ld a3, 480(sp)
	addiw a0, a0, 1
	addi a3, a3, 960
	sd a3, 480(sp)
	sd a0, 496(sp)
	blt a0, t4, label93
	j label336
.p2align 2
label94:
	ld t0, 504(sp)
	li s5, 4
	ld a5, 520(sp)
	addw a3, t0, a2
	addw a4, a5, a2
	slli t1, a4, 32
	add.uw t0, a3, t1
	sd t0, 0(a0)
	ld a5, 536(sp)
	addw a3, a5, a2
	slli t0, a3, 32
	add.uw t1, a4, t0
	sd t1, 8(a0)
	ld a5, 544(sp)
	addw a4, a5, a2
	slli t3, a4, 32
	add.uw t0, a3, t3
	sd t0, 16(a0)
	ld t2, 552(sp)
	addw t3, t2, a2
	slli a3, t3, 32
	add.uw a5, a4, a3
	sd a5, 24(a0)
	ld t4, 568(sp)
	addw t2, t4, a2
	slli a4, t2, 32
	add.uw a3, t3, a4
	sd a3, 32(a0)
	ld t4, 584(sp)
	addw t3, t4, a2
	slli t5, t3, 32
	add.uw a4, t2, t5
	sd a4, 40(a0)
	sd t1, 48(a0)
	sd t0, 56(a0)
	sd a5, 64(a0)
	sd a3, 72(a0)
	sd a4, 80(a0)
	ld t4, 144(sp)
	addw t2, t4, a2
	slli t5, t2, 32
	add.uw t1, t3, t5
	sd t1, 88(a0)
	sd t0, 96(a0)
	sd a5, 104(a0)
	sd a3, 112(a0)
	sd a4, 120(a0)
	sd t1, 128(a0)
	ld t4, 128(sp)
	addw t3, t4, a2
	slli t5, t3, 32
	add.uw t0, t2, t5
	sd t0, 136(a0)
	sd a5, 144(a0)
	sd a3, 152(a0)
	sd a4, 160(a0)
	sd t1, 168(a0)
	sd t0, 176(a0)
	ld t4, 112(sp)
	addw a5, t4, a2
	slli t5, a5, 32
	add.uw t2, t3, t5
	sd t2, 184(a0)
	sd a3, 192(a0)
	sd a4, 200(a0)
	addw a4, a1, a2
	sd t1, 208(a0)
	addiw a2, a2, 1
	sd t0, 216(a0)
	slli t0, a4, 32
	sd t2, 224(a0)
	add.uw a3, a5, t0
	sd a3, 232(a0)
	bge a2, s5, label433
	addi a0, a0, 240
	j label94
.p2align 2
label332:
	ld a3, 408(sp)
	ld a1, 360(sp)
	addiw a3, a3, 1
	ld a0, 400(sp)
	add a0, a0, a1
	sd a0, 400(sp)
	sd a3, 408(sp)
	ld a0, 256(sp)
	ld a1, 264(sp)
	slt a0, a3, a0
	slt a4, a3, a1
	and a2, a0, a4
	bne a2, zero, label85
label5:
	auipc a1, %pcrel_hi(arr2)
	addi a0, a1, %pcrel_lo(label5)
	sd a0, 272(sp)
	sd a0, 592(sp)
	sd zero, 152(sp)
	mv a0, zero
.p2align 2
label6:
	ld a0, 152(sp)
	li a1, 10
	addiw a0, a0, 1
	sd a0, 576(sp)
	ld a0, 152(sp)
	addiw a5, a0, 3
	addiw a4, a0, 2
	addiw a0, a0, 4
	sd a4, 160(sp)
	sd a5, 632(sp)
	sd a0, 624(sp)
	ld a0, 152(sp)
	addiw t3, a0, 6
	addiw t1, a0, 5
	sd t1, 616(sp)
	sd t3, 608(sp)
	blt a0, a1, label9
	j label148
.p2align 2
label159:
	ld a1, 368(sp)
	ld a0, 592(sp)
	add a0, a0, a1
	sd a0, 592(sp)
	ld a0, 576(sp)
	sd a0, 152(sp)
	j label6
label148:
	ld a0, 280(sp)
	mv t3, zero
	mv a3, zero
	mv a2, a0
	sd a0, 416(sp)
	sd zero, 424(sp)
label31:
	ld a1, 368(sp)
	ld a3, 424(sp)
	ld a0, 272(sp)
	mul a2, a3, a1
	li a1, 10
	add a4, a0, a2
	sd a4, 432(sp)
	bge a3, a1, label248
	ld a2, 416(sp)
	mv a0, zero
	mv a1, a2
	sd a2, 440(sp)
	sd zero, 472(sp)
label38:
	ld a1, 352(sp)
	ld a0, 472(sp)
	ld a4, 432(sp)
	mul a2, a0, a1
	li a1, 100
	add a3, a4, a2
	sd a3, 488(sp)
	bge a0, a1, label42
	ld a1, 440(sp)
	mv a0, zero
	sd a1, 512(sp)
	sd zero, 528(sp)
	sub a5, zero, zero
	li a2, 1000
	slli a1, a5, 8
	add a4, a3, a1
	sd a4, 560(sp)
	bge zero, a2, label82
.p2align 2
label50:
	ld a1, 512(sp)
	sd a1, 600(sp)
	sd zero, 136(sp)
	mv a1, zero
	ld a4, 560(sp)
	sub a2, zero, zero
	slli a3, a2, 7
	ld a2, 392(sp)
	add a0, a4, a3
	bge zero, a2, label55
.p2align 2
label58:
	ld a1, 600(sp)
	mv a2, zero
	sub a5, zero, zero
	ld a4, 288(sp)
	slli t0, a5, 5
	add a3, a0, t0
	bge zero, a4, label63
.p2align 2
label66:
	mv a4, a1
	mv a5, zero
	mv t4, zero
	ld t1, 384(sp)
	sub t2, zero, zero
	sh2add t0, t2, a3
	bge zero, t1, label79
.p2align 2
label71:
	mv t1, a4
	mv t2, zero
.p2align 2
label72:
	lw t4, 0(t1)
	lui t5, 657125
	addiw t6, t5, -1067
	mul a7, t3, t6
	srli s0, a7, 32
	add t5, s0, t3
	srliw a7, t5, 31
	sraiw a6, t5, 9
	li t5, 817
	add t6, a7, a6
	mulw a7, t6, t5
	sh2add t6, t2, t0
	subw a6, t3, a7
	addiw t2, t2, 1
	addw t5, t4, a6
	lw a7, 0(t6)
	ld t4, 344(sp)
	addw t3, t5, a7
	ble t4, t2, label76
	addi t1, t1, 4
	j label72
.p2align 2
label76:
	addiw a5, a5, 1
	ld t0, 328(sp)
	bgt t0, a5, label77
.p2align 2
label79:
	addiw a2, a2, 1
	ld a3, 312(sp)
	ble a3, a2, label63
	addi a1, a1, 48
	slli a4, a2, 3
	sub a5, a4, a2
	ld a4, 288(sp)
	slli t0, a5, 5
	add a3, a0, t0
	blt a2, a4, label66
	j label63
.p2align 2
label77:
	addi a4, a4, 8
	slli t4, a5, 3
	ld t1, 384(sp)
	sub t2, t4, a5
	sh2add t0, t2, a3
	blt a5, t1, label71
	j label79
.p2align 2
label55:
	ld a0, 528(sp)
	ld a1, 304(sp)
	addiw a0, a0, 1
	ble a1, a0, label82
	j label57
.p2align 2
label63:
	ld a1, 136(sp)
	ld a2, 296(sp)
	addiw a0, a1, 1
	ble a2, a0, label55
	ld a1, 600(sp)
	addi a1, a1, 240
	sd a1, 600(sp)
	sd a0, 136(sp)
	mv a1, a0
	ld a4, 560(sp)
	slli a0, a0, 3
	sub a2, a0, a1
	slli a3, a2, 7
	ld a2, 392(sp)
	add a0, a4, a3
	blt a1, a2, label58
	j label55
label57:
	ld a1, 512(sp)
	slli a2, a0, 3
	addi a1, a1, 960
	sub a5, a2, a0
	li a2, 1000
	sd a1, 512(sp)
	slli a1, a5, 8
	sd a0, 528(sp)
	ld a3, 488(sp)
	add a4, a3, a1
	sd a4, 560(sp)
	blt a0, a2, label50
label82:
	ld a0, 472(sp)
	ld a1, 320(sp)
	addiw a0, a0, 1
	ble a1, a0, label42
	ld a2, 376(sp)
	ld a1, 440(sp)
	add a1, a1, a2
	sd a1, 440(sp)
	sd a0, 472(sp)
	j label38
label248:
	mv a0, t3
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
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 640
	ret
label42:
	ld a3, 424(sp)
	ld a0, 336(sp)
	addiw a3, a3, 1
	ble a0, a3, label248
	ld a1, 360(sp)
	ld a2, 416(sp)
	add a2, a2, a1
	sd a2, 416(sp)
	sd a3, 424(sp)
	j label31
.p2align 2
label9:
	ld a0, 592(sp)
	mv t2, zero
	sd a0, 120(sp)
	sd zero, 104(sp)
.p2align 2
label10:
	ld a0, 152(sp)
	ld t2, 104(sp)
	addw a1, a0, t2
	ld a0, 576(sp)
	ld a4, 160(sp)
	addw a2, a0, t2
	ld a5, 632(sp)
	addw a3, a4, t2
	ld a0, 624(sp)
	addw a4, a5, t2
	ld t1, 616(sp)
	addw a5, a0, t2
	ld t3, 608(sp)
	addw t0, t1, t2
	li a0, 2
	addw t1, t3, t2
	blt t2, a0, label13
	j label159
.p2align 2
label163:
	ld t2, 104(sp)
	ld a1, 352(sp)
	addiw t2, t2, 1
	ld a0, 120(sp)
	add a0, a0, a1
	sd a0, 120(sp)
	sd t2, 104(sp)
	j label10
.p2align 2
label17:
	mv t4, t2
	mv t5, zero
	sext.w t6, a1
	sext.w a6, a2
	sext.w a7, a3
	sext.w s0, a4
	sext.w s1, a5
	sext.w s2, t0
	sext.w s3, t1
	li a0, 2
	blt zero, a0, label21
	j label174
.p2align 2
label725:
	addiw t3, t3, 1
	addi t2, t2, 1792
	li t4, 3
	blt t3, t4, label17
	j label163
.p2align 2
label21:
	mv a0, t4
	mv s4, zero
.p2align 2
label22:
	slli s6, a6, 32
	slli s7, s0, 32
	slli s8, s2, 32
	slli s9, t6, 32
	slli s10, a7, 32
	slli s11, s1, 32
	addiw s4, s4, 1
	add.uw s5, t6, s6
	add.uw s6, a7, s7
	sd s5, 0(a0)
	add.uw s7, s1, s8
	sd s6, 8(a0)
	add.uw s8, s3, s9
	sd s7, 16(a0)
	add.uw s9, a6, s10
	sd s8, 24(a0)
	add.uw s10, s0, s11
	sd s9, 32(a0)
	slli s11, s3, 32
	sd s10, 40(a0)
	add.uw s11, s2, s11
	sd s11, 48(a0)
	sd s5, 56(a0)
	sd s6, 64(a0)
	sd s7, 72(a0)
	sd s8, 80(a0)
	sd s9, 88(a0)
	sd s10, 96(a0)
	sd s11, 104(a0)
	sd s5, 112(a0)
	sd s6, 120(a0)
	sd s7, 128(a0)
	sd s8, 136(a0)
	sd s9, 144(a0)
	sd s10, 152(a0)
	sd s11, 160(a0)
	sd s5, 168(a0)
	li s5, 4
	sd s6, 176(a0)
	sd s7, 184(a0)
	sd s8, 192(a0)
	sd s9, 200(a0)
	sd s10, 208(a0)
	sd s11, 216(a0)
	blt s4, s5, label25
	addiw t5, t5, 1
	addi t4, t4, 896
	li a0, 2
	addw s3, t1, t5
	addw s2, t0, t5
	addw s0, a4, t5
	addw a7, a3, t5
	addw s1, a5, t5
	addw a6, a2, t5
	addw t6, a1, t5
	blt t5, a0, label21
	j label725
.p2align 2
label25:
	addi a0, a0, 224
	j label22
.p2align 2
label13:
	ld a0, 120(sp)
	mv t3, zero
	mv t2, a0
	li t4, 3
	blt zero, t4, label17
	j label163
.p2align 2
label174:
	addiw t3, t3, 1
	addi t2, t2, 1792
	li t4, 3
	blt t3, t4, label17
	j label163
