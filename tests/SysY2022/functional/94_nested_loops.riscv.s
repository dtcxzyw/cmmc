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
	mv a1, a0
	sd a0, 264(sp)
	addw a1, s0, a0
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
	mv t4, a0
pcrel748:
	auipc a1, %pcrel_hi(arr1)
	mv a3, zero
	sd a0, 344(sp)
	addi a0, a1, %pcrel_lo(pcrel748)
	li a1, 45
	sd a0, 280(sp)
	slli a2, a1, 6
	sd a0, 400(sp)
	li a0, 21
	sd zero, 408(sp)
	slli a1, a0, 8
	sd a2, 352(sp)
	lui a0, 24
	lui a2, 244
	addiw a4, a0, 1696
	sd a1, 376(sp)
	addiw t1, a2, 576
	addi a1, a1, 384
	sd a1, 368(sp)
	ld a1, 376(sp)
	slli a1, a1, 1
	addi a2, a1, -752
	sd a1, 360(sp)
	sd t1, 384(sp)
	sd a4, 288(sp)
	sd a2, 392(sp)
	ld a0, 256(sp)
	ld a1, 264(sp)
	slt a0, zero, a0
	slt a4, zero, a1
	and a2, a0, a4
	beq a2, zero, label136
.p2align 2
label5:
	ld a0, 400(sp)
	mv a1, zero
	mv a3, a0
	sd a0, 448(sp)
	sd zero, 456(sp)
	ld a3, 408(sp)
	li a0, 2
	sext.w a2, a3
	sd a2, 464(sp)
	bge zero, a0, label9
.p2align 2
label10:
	ld a3, 448(sp)
	mv a0, zero
	sd a3, 480(sp)
	sd zero, 496(sp)
	li t4, 3
	blt zero, t4, label14
.p2align 2
label147:
	ld a1, 456(sp)
	ld a2, 352(sp)
	addiw a0, a1, 1
	ld a3, 448(sp)
	mv a1, a0
	add a3, a3, a2
	sd a3, 448(sp)
	sd a0, 456(sp)
	ld a3, 408(sp)
	li a0, 2
	ld a1, 456(sp)
	addw a2, a3, a1
	sd a2, 464(sp)
	blt a1, a0, label10
	j label9
.p2align 2
label14:
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
	addw t3, a2, a3
	sd t3, 552(sp)
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
	j label15
.p2align 2
label244:
	ld a0, 496(sp)
	ld a3, 480(sp)
	addiw a0, a0, 1
	addi a3, a3, 960
	sd a3, 480(sp)
	sd a0, 496(sp)
	li t4, 3
	blt a0, t4, label14
	j label147
.p2align 2
label15:
	ld t0, 504(sp)
	li s5, 4
	ld a5, 520(sp)
	addw a3, t0, a2
	addw a4, a5, a2
	slli t0, a4, 32
	add.uw t1, a3, t0
	sd t1, 0(a0)
	ld a5, 536(sp)
	addw a3, a5, a2
	slli t0, a3, 32
	add.uw t1, a4, t0
	sd t1, 8(a0)
	ld a5, 544(sp)
	addw t2, a5, a2
	slli a4, t2, 32
	add.uw t0, a3, a4
	sd t0, 16(a0)
	ld t3, 552(sp)
	addw a4, t3, a2
	slli a3, a4, 32
	add.uw a5, t2, a3
	sd a5, 24(a0)
	ld t4, 568(sp)
	addw t3, t4, a2
	slli t2, t3, 32
	add.uw a3, a4, t2
	sd a3, 32(a0)
	ld t4, 584(sp)
	addw t2, t4, a2
	slli t5, t2, 32
	add.uw a4, t3, t5
	sd a4, 40(a0)
	sd t1, 48(a0)
	sd t0, 56(a0)
	sd a5, 64(a0)
	sd a3, 72(a0)
	sd a4, 80(a0)
	ld t4, 144(sp)
	addw t3, t4, a2
	slli t5, t3, 32
	add.uw t1, t2, t5
	sd t1, 88(a0)
	sd t0, 96(a0)
	sd a5, 104(a0)
	sd a3, 112(a0)
	sd a4, 120(a0)
	sd t1, 128(a0)
	ld t4, 128(sp)
	addw t2, t4, a2
	slli t5, t2, 32
	add.uw t0, t3, t5
	sd t0, 136(a0)
	sd a5, 144(a0)
	sd a3, 152(a0)
	sd a4, 160(a0)
	sd t1, 168(a0)
	sd t0, 176(a0)
	ld t4, 112(sp)
	addw a5, t4, a2
	slli t5, a5, 32
	add.uw t3, t2, t5
	sd t3, 184(a0)
	sd a3, 192(a0)
	sd a4, 200(a0)
	sd t1, 208(a0)
	addw t1, a1, a2
	sd t0, 216(a0)
	addiw a2, a2, 1
	slli a3, t1, 32
	sd t3, 224(a0)
	add.uw a4, a5, a3
	sd a4, 232(a0)
	bge a2, s5, label244
	addi a0, a0, 240
	j label15
.p2align 2
label9:
	ld a3, 408(sp)
	ld a1, 368(sp)
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
	bne a2, zero, label5
label136:
	auipc a2, %pcrel_hi(arr2)
	addi a0, a2, %pcrel_lo(label136)
	sd a0, 272(sp)
	sd a0, 592(sp)
	sd zero, 152(sp)
	mv a0, zero
.p2align 2
label22:
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
	blt a0, a1, label25
	j label261
.p2align 2
label272:
	ld a1, 360(sp)
	ld a0, 592(sp)
	add a0, a0, a1
	sd a0, 592(sp)
	ld a0, 576(sp)
	sd a0, 152(sp)
	j label22
label261:
	ld a0, 280(sp)
	mv t3, zero
	mv a2, zero
	sd a0, 416(sp)
	sd zero, 424(sp)
label47:
	ld a1, 360(sp)
	ld a2, 424(sp)
	ld a0, 272(sp)
	mul a3, a2, a1
	li a1, 10
	add a4, a0, a3
	sd a4, 432(sp)
	bge a2, a1, label99
	ld a0, 416(sp)
	mv a1, a0
	sd a0, 440(sp)
	sd zero, 472(sp)
	mv a0, zero
label52:
	ld a1, 376(sp)
	ld a0, 472(sp)
	ld a4, 432(sp)
	mul a2, a0, a1
	li a1, 100
	add a3, a4, a2
	sd a3, 488(sp)
	bge a0, a1, label56
	ld a1, 440(sp)
	mv a0, zero
	sd a1, 512(sp)
	sd zero, 528(sp)
	mv a2, zero
	sub a5, zero, zero
	li a2, 1000
	slli a1, a5, 8
	add a4, a3, a1
	sd a4, 560(sp)
	bge zero, a2, label64
.p2align 2
label67:
	ld a1, 512(sp)
	sd a1, 600(sp)
	sd zero, 136(sp)
	mv a1, zero
	ld a4, 560(sp)
	mv a0, zero
	sub a2, zero, zero
	slli a3, a2, 7
	ld a2, 392(sp)
	add a0, a4, a3
	bge zero, a2, label96
.p2align 2
label72:
	ld a1, 600(sp)
	mv a2, zero
	mv a4, zero
	sub t0, zero, zero
	ld a4, 288(sp)
	slli a5, t0, 5
	add a3, a0, a5
	bge zero, a4, label93
.p2align 2
label77:
	mv a4, a1
	mv a5, zero
	mv t2, zero
	ld t1, 384(sp)
	sub t4, zero, zero
	sh2add t0, t4, a3
	bge zero, t1, label90
.p2align 2
label82:
	mv t1, a4
	mv t2, zero
.p2align 2
label83:
	lw t4, 0(t1)
	lui t5, 657125
	addiw t6, t5, -1067
	mul a7, t3, t6
	srli a6, a7, 32
	add t5, a6, t3
	srliw a7, t5, 31
	sraiw t6, t5, 9
	li t5, 817
	add a6, a7, t6
	mulw a7, a6, t5
	sh2add a6, t2, t0
	subw t6, t3, a7
	addiw t2, t2, 1
	addw t5, t4, t6
	lw t6, 0(a6)
	ld t4, 344(sp)
	addw t3, t5, t6
	ble t4, t2, label87
	addi t1, t1, 4
	j label83
.p2align 2
label87:
	addiw a5, a5, 1
	ld t0, 328(sp)
	ble t0, a5, label90
	addi a4, a4, 8
	slli t2, a5, 3
	ld t1, 384(sp)
	sub t4, t2, a5
	sh2add t0, t4, a3
	blt a5, t1, label82
.p2align 2
label90:
	addiw a2, a2, 1
	ld a3, 312(sp)
	bgt a3, a2, label92
.p2align 2
label93:
	ld a1, 136(sp)
	ld a2, 296(sp)
	addiw a0, a1, 1
	ble a2, a0, label96
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
	blt a1, a2, label72
	j label96
.p2align 2
label92:
	addi a1, a1, 48
	slli a4, a2, 3
	sub t0, a4, a2
	ld a4, 288(sp)
	slli a5, t0, 5
	add a3, a0, a5
	blt a2, a4, label77
	j label93
label64:
	ld a0, 472(sp)
	ld a1, 320(sp)
	addiw a0, a0, 1
	ble a1, a0, label56
	j label66
.p2align 2
label96:
	ld a0, 528(sp)
	ld a1, 304(sp)
	addiw a0, a0, 1
	ble a1, a0, label64
	ld a1, 512(sp)
	addi a1, a1, 960
	sd a1, 512(sp)
	sd a0, 528(sp)
	ld a3, 488(sp)
	slli a2, a0, 3
	sub a5, a2, a0
	li a2, 1000
	slli a1, a5, 8
	add a4, a3, a1
	sd a4, 560(sp)
	blt a0, a2, label67
	j label64
label66:
	ld a2, 352(sp)
	ld a1, 440(sp)
	add a1, a1, a2
	sd a1, 440(sp)
	sd a0, 472(sp)
	j label52
label56:
	ld a2, 424(sp)
	ld a0, 336(sp)
	addiw a2, a2, 1
	bgt a0, a2, label58
label99:
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
label58:
	ld a1, 368(sp)
	ld a0, 416(sp)
	add a0, a0, a1
	sd a0, 416(sp)
	sd a2, 424(sp)
	j label47
.p2align 2
label25:
	ld a0, 592(sp)
	mv t2, zero
	sd a0, 120(sp)
	sd zero, 104(sp)
.p2align 2
label26:
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
	blt t2, a0, label29
	j label272
.p2align 2
label276:
	ld t2, 104(sp)
	ld a1, 376(sp)
	addiw t2, t2, 1
	ld a0, 120(sp)
	add a0, a0, a1
	sd a0, 120(sp)
	sd t2, 104(sp)
	j label26
.p2align 2
label33:
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
	bge zero, a0, label287
.p2align 2
label37:
	mv a0, t4
	mv s4, zero
	j label38
.p2align 2
label347:
	addiw t5, t5, 1
	addi t4, t4, 896
	addw t6, a1, t5
	addw a6, a2, t5
	addw a7, a3, t5
	addw s0, a4, t5
	addw s1, a5, t5
	addw s2, t0, t5
	addw s3, t1, t5
	li a0, 2
	blt t5, a0, label37
	addiw t3, t3, 1
	addi t2, t2, 1792
	li t4, 3
	blt t3, t4, label33
	j label276
.p2align 2
label38:
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
	bge s4, s5, label347
	addi a0, a0, 224
	j label38
.p2align 2
label29:
	ld a0, 120(sp)
	mv t3, zero
	mv t2, a0
	li t4, 3
	blt zero, t4, label33
	j label276
.p2align 2
label287:
	addiw t3, t3, 1
	addi t2, t2, 1792
	li t4, 3
	blt t3, t4, label33
	j label276
