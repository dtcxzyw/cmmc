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
	addi sp, sp, -608
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s3, 24(sp)
	sd s1, 32(sp)
	sd s6, 40(sp)
	sd s2, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
	addiw s0, a0, 1
	sd a0, 224(sp)
	jal getint
	mv a2, a0
	sd a0, 232(sp)
	addw a0, s0, a0
	sd a0, 216(sp)
	ld a0, 224(sp)
	ld a2, 232(sp)
	addiw a1, a0, 2
	addw a0, a2, a1
	sd a0, 208(sp)
	ld a0, 224(sp)
	addiw a1, a0, 3
	addw a0, a2, a1
	sd a0, 200(sp)
	ld a0, 224(sp)
	addiw a1, a0, 4
	addw a0, a2, a1
	sd a0, 192(sp)
	ld a0, 224(sp)
	addiw a1, a0, 5
	addw a0, a2, a1
	sd a0, 184(sp)
	ld a0, 224(sp)
	addiw a1, a0, 6
	addw a0, a2, a1
	sd a0, 176(sp)
	ld a0, 224(sp)
	addiw a1, a0, 7
	addw a0, a2, a1
	sd a0, 168(sp)
	ld a0, 224(sp)
	addiw a1, a0, 8
	addw a0, a2, a1
	sd a0, 160(sp)
	ld a0, 224(sp)
	addiw a1, a0, 9
	addw a0, a2, a1
	sd a0, 152(sp)
	ld a0, 224(sp)
	addiw a3, a0, 10
	addw a0, a0, a2
	addw a1, a2, a3
	sd a1, 136(sp)
	sd a0, 144(sp)
	jal getint
	sd a0, 304(sp)
	jal getint
	sd a0, 288(sp)
	mv a1, a0
	jal getint
	sd a0, 272(sp)
	mv a1, a0
	jal getint
	sd a0, 264(sp)
	mv a1, a0
	jal getint
	sd a0, 280(sp)
	mv a4, a0
	jal getint
	sd a0, 296(sp)
	mv t1, a0
	jal getint
	mv t5, a0
	mv a1, zero
	sd a0, 312(sp)
pcrel736:
	auipc a0, %pcrel_hi(arr1)
	addi a2, a0, %pcrel_lo(pcrel736)
	li a0, 21
	sd a2, 320(sp)
	slli a1, a0, 8
	sd zero, 368(sp)
	li a0, 45
	sd a1, 328(sp)
	slli a1, a0, 6
	sd a1, 352(sp)
	ld a1, 328(sp)
	slli a0, a1, 1
	sd a0, 344(sp)
	lui a0, 244
	ld a1, 352(sp)
	addiw t3, a0, 576
	slli a2, a1, 1
	lui a0, 24
	addiw t0, a0, 1696
	li a0, 625
	sd a2, 336(sp)
	slli a3, a0, 4
	sd t3, 360(sp)
	sd t0, 256(sp)
	sd a3, 248(sp)
.p2align 2
label2:
	ld a0, 224(sp)
	ld a1, 368(sp)
	ld a2, 232(sp)
	slt a0, a1, a0
	slt a3, a1, a2
	ld a2, 336(sp)
	and a0, a0, a3
	mul a3, a1, a2
	ld a2, 320(sp)
	add a1, a2, a3
	sd a1, 400(sp)
	bne a0, zero, label100
	j label99
.p2align 2
label106:
	ld a1, 368(sp)
	addiw a1, a1, 1
	sd a1, 368(sp)
	j label2
.p2align 2
label100:
	mv a0, zero
	sd zero, 408(sp)
.p2align 2
label4:
	ld a1, 368(sp)
	li s3, 2
	ld a0, 408(sp)
	addw a3, a1, a0
	sd a3, 416(sp)
	ld a1, 352(sp)
	mul a2, a0, a1
	ld a1, 400(sp)
	add a5, a1, a2
	sd a5, 432(sp)
	bge a0, s3, label106
	mv a2, zero
	sd zero, 448(sp)
	li a0, 3
	blt zero, a0, label10
.p2align 2
label9:
	ld a0, 408(sp)
	addiw a0, a0, 1
	sd a0, 408(sp)
	j label4
.p2align 2
label10:
	ld a0, 144(sp)
	ld a2, 448(sp)
	addw a1, a0, a2
	ld a3, 416(sp)
	addw a5, a3, a1
	sd a5, 464(sp)
	ld a0, 216(sp)
	addw a1, a0, a2
	addw t1, a3, a1
	sd t1, 472(sp)
	ld a0, 208(sp)
	addw a1, a0, a2
	addw t0, a3, a1
	sd t0, 480(sp)
	ld a0, 200(sp)
	addw a1, a0, a2
	addw a5, a3, a1
	sd a5, 496(sp)
	ld a0, 192(sp)
	addw a1, a0, a2
	addw t1, a3, a1
	sd t1, 504(sp)
	ld a0, 184(sp)
	addw a1, a0, a2
	addw t4, a3, a1
	sd t4, 520(sp)
	ld a0, 176(sp)
	addw a1, a0, a2
	addw t4, a3, a1
	sd t4, 536(sp)
	ld a0, 168(sp)
	addw a1, a0, a2
	addw t3, a3, a1
	sd t3, 128(sp)
	ld a0, 160(sp)
	addw a1, a0, a2
	addw t2, a3, a1
	sd t2, 112(sp)
	ld a0, 152(sp)
	addw a1, a0, a2
	addw a0, a3, a1
	ld a1, 136(sp)
	ld a5, 432(sp)
	addw a4, a1, a2
	addw a1, a3, a4
	slli a3, a2, 4
	sub t0, a3, a2
	mv a2, zero
	slli a4, t0, 6
	add a3, a5, a4
.p2align 2
label11:
	slli a4, a2, 4
	li s3, 4
	sub a5, a4, a2
	slli t0, a5, 4
	ld a5, 464(sp)
	add a4, a3, t0
	ld t1, 472(sp)
	addw t0, a5, a2
	addw a5, t1, a2
	slli t2, a5, 32
	add.uw t1, t0, t2
	sd t1, 0(a4)
	ld t0, 480(sp)
	addw t1, t0, a2
	slli t2, t1, 32
	add.uw t3, a5, t2
	sd t3, 8(a4)
	ld a5, 496(sp)
	addw t0, a5, a2
	slli t4, t0, 32
	add.uw t2, t1, t4
	sd t2, 16(a4)
	ld t1, 504(sp)
	addw a5, t1, a2
	slli t4, a5, 32
	add.uw t1, t0, t4
	sd t1, 24(a4)
	ld t4, 520(sp)
	addw t0, t4, a2
	slli t5, t0, 32
	add.uw a5, a5, t5
	sd a5, 32(a4)
	ld t4, 536(sp)
	addw t5, t4, a2
	slli t6, t5, 32
	add.uw t0, t0, t6
	sd t0, 40(a4)
	sd t3, 48(a4)
	sd t2, 56(a4)
	sd t1, 64(a4)
	sd a5, 72(a4)
	sd t0, 80(a4)
	ld t3, 128(sp)
	addw t4, t3, a2
	slli t6, t4, 32
	add.uw t3, t5, t6
	sd t3, 88(a4)
	sd t2, 96(a4)
	sd t1, 104(a4)
	sd a5, 112(a4)
	sd t0, 120(a4)
	sd t3, 128(a4)
	ld t2, 112(sp)
	addw t5, t2, a2
	slli t6, t5, 32
	add.uw t2, t4, t6
	sd t2, 136(a4)
	sd t1, 144(a4)
	addw t1, a0, a2
	sd a5, 152(a4)
	slli t6, t1, 32
	sd t0, 160(a4)
	add.uw t4, t5, t6
	sd t3, 168(a4)
	sd t2, 176(a4)
	sd t4, 184(a4)
	sd a5, 192(a4)
	addw a5, a1, a2
	sd t0, 200(a4)
	addiw a2, a2, 1
	slli t0, a5, 32
	sd t3, 208(a4)
	add.uw t1, t1, t0
	sd t2, 216(a4)
	sd t4, 224(a4)
	sd t1, 232(a4)
	blt a2, s3, label11
	ld a2, 448(sp)
	addiw a2, a2, 1
	sd a2, 448(sp)
	li a0, 3
	blt a2, a0, label10
	j label9
label99:
	auipc a1, %pcrel_hi(arr2)
	addi a0, a1, %pcrel_lo(label99)
	mv a1, zero
	sd a0, 240(sp)
	sd zero, 528(sp)
.p2align 2
label15:
	ld a0, 344(sp)
	ld a1, 528(sp)
	mul a2, a1, a0
	addiw a1, a1, 1
	ld a0, 240(sp)
	add a3, a0, a2
	li a0, 10
	sd a3, 592(sp)
	sd a1, 584(sp)
	ld a1, 528(sp)
	addiw t1, a1, 6
	addiw t0, a1, 5
	addiw a5, a1, 4
	addiw a4, a1, 3
	addiw a3, a1, 2
	sd a3, 576(sp)
	sd a4, 568(sp)
	sd a5, 560(sp)
	sd t0, 552(sp)
	sd t1, 544(sp)
	blt a1, a0, label229
	j label228
.p2align 2
label333:
	ld a1, 584(sp)
	sd a1, 528(sp)
	j label15
label228:
	mv t4, zero
	mv a1, zero
	sd zero, 376(sp)
label17:
	ld a2, 336(sp)
	ld a1, 376(sp)
	mul a0, a1, a2
	ld a2, 320(sp)
	add a1, a2, a0
	sd a1, 384(sp)
	ld a0, 344(sp)
	ld a1, 376(sp)
	mul a2, a1, a0
	ld a0, 240(sp)
	add a1, a0, a2
	li a0, 10
	sd a1, 392(sp)
	ld a1, 376(sp)
	bge a1, a0, label236
	mv a0, zero
	sd zero, 424(sp)
label22:
	ld a1, 352(sp)
	ld a0, 424(sp)
	mul a2, a0, a1
	ld a1, 384(sp)
	add a0, a1, a2
	sd a0, 440(sp)
	ld a1, 328(sp)
	ld a0, 424(sp)
	mul a2, a0, a1
	ld a1, 392(sp)
	add a0, a1, a2
	li a1, 100
	sd a0, 456(sp)
	ld a0, 424(sp)
	bge a0, a1, label25
	mv a0, zero
	sd zero, 488(sp)
.p2align 2
label27:
	ld a0, 488(sp)
	slli a1, a0, 4
	sub a2, a1, a0
	ld a0, 440(sp)
	slli a1, a2, 6
	add a3, a0, a1
	sd a3, 512(sp)
	ld a0, 488(sp)
	slli a1, a0, 3
	sub a2, a1, a0
	ld a0, 456(sp)
	slli a1, a2, 8
	add a4, a0, a1
	li a1, 1000
	sd a4, 600(sp)
	ld a0, 488(sp)
	bge a0, a1, label30
	mv a0, zero
.p2align 2
label32:
	slli a3, a0, 4
	slli a4, a0, 3
	sub a1, a3, a0
	ld a3, 512(sp)
	slli a2, a1, 4
	add a1, a3, a2
	sub a2, a4, a0
	ld a4, 600(sp)
	slli a3, a2, 7
	add a2, a4, a3
	ld a3, 248(sp)
	bge a0, a3, label35
	mv a3, zero
	mv t0, zero
	mv t2, zero
	mv a5, zero
	sub t0, zero, zero
	mv a4, a1
	slli t1, t0, 5
	ld t0, 256(sp)
	add a5, a2, t1
	bge zero, t0, label49
.p2align 2
label284:
	mv t0, zero
	mv t2, zero
	mv t1, a4
	ld t3, 360(sp)
	sub t5, zero, zero
	sh2add t2, t5, a5
	bge zero, t3, label43
.p2align 2
label292:
	mv t3, zero
.p2align 2
label45:
	sh2add t6, t3, t1
	lui a7, 657125
	lw t5, 0(t6)
	addiw t6, a7, -1067
	mul a6, t4, t6
	srli a7, a6, 32
	add t6, a7, t4
	srliw a7, t6, 31
	sraiw a6, t6, 9
	add t6, a7, a6
	li a7, 817
	mulw a6, t6, a7
	subw t6, t4, a6
	addw t4, t5, t6
	sh2add t5, t3, t2
	addiw t3, t3, 1
	lw t6, 0(t5)
	ld t5, 312(sp)
	addw t4, t4, t6
	bgt t5, t3, label45
	addiw t0, t0, 1
	ld t1, 296(sp)
	ble t1, t0, label43
	slli t2, t0, 3
	sh3add t1, t0, a4
	ld t3, 360(sp)
	sub t5, t2, t0
	sh2add t2, t5, a5
	blt t0, t3, label292
.p2align 2
label43:
	addiw a3, a3, 1
	ld a4, 280(sp)
	ble a4, a3, label49
	sh1add t0, a3, a3
	slli t2, a3, 3
	slli a5, t0, 4
	sub t0, t2, a3
	add a4, a1, a5
	slli t1, t0, 5
	ld t0, 256(sp)
	add a5, a2, t1
	blt a3, t0, label284
	j label49
.p2align 2
label35:
	ld a0, 488(sp)
	ld a1, 272(sp)
	addiw a0, a0, 1
	ble a1, a0, label30
	j label275
.p2align 2
label49:
	addiw a0, a0, 1
	ld a1, 264(sp)
	ble a1, a0, label35
	j label32
label30:
	ld a0, 424(sp)
	ld a1, 288(sp)
	addiw a0, a0, 1
	ble a1, a0, label25
	sd a0, 424(sp)
	j label22
label236:
	mv a0, t4
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s3, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s2, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 608
	ret
label25:
	ld a1, 376(sp)
	ld a0, 304(sp)
	addiw a1, a1, 1
	ble a0, a1, label236
	sd a1, 376(sp)
	j label17
.p2align 2
label229:
	mv a0, zero
	sd zero, 120(sp)
.p2align 2
label51:
	ld a1, 528(sp)
	li s3, 2
	ld a0, 120(sp)
	addw t6, a1, a0
	sd t6, 104(sp)
	ld a1, 328(sp)
	ld a3, 592(sp)
	mul a2, a0, a1
	ld a1, 584(sp)
	add t2, a3, a2
	addw a1, a1, a0
	ld a3, 576(sp)
	ld a4, 568(sp)
	addw a2, a3, a0
	ld a5, 560(sp)
	addw a3, a4, a0
	ld t0, 552(sp)
	addw a4, a5, a0
	ld t1, 544(sp)
	addw a5, t0, a0
	addw t0, t1, a0
	blt a0, s3, label334
	j label333
.p2align 2
label339:
	ld a0, 120(sp)
	addiw a0, a0, 1
	sd a0, 120(sp)
	j label51
.p2align 2
label340:
	mv a0, zero
	j label56
.p2align 2
label353:
	addiw t3, t3, 1
	slli a0, t3, 3
	sub t4, a0, t3
	li a0, 3
	slli t5, t4, 8
	add t1, t2, t5
	blt t3, a0, label340
	j label339
.p2align 2
label56:
	ld t6, 104(sp)
	addw t5, a1, a0
	addw a6, a3, a0
	addw a7, a4, a0
	addw s0, a5, a0
	addw s1, t0, a0
	slli s2, a0, 3
	addw t4, t6, a0
	sub s3, s2, a0
	addw t6, a2, a0
	slli s4, s3, 7
	li s3, 2
	add s2, t1, s4
	bge a0, s3, label353
	mv s4, zero
.p2align 2
label59:
	slli s3, s4, 3
	slli s7, t5, 32
	slli s8, s0, 32
	slli s9, t4, 32
	slli s10, t6, 32
	slli s11, a7, 32
	sub s5, s3, s4
	addiw s4, s4, 1
	slli s6, s5, 5
	add.uw s5, t4, s7
	add s3, s2, s6
	slli s7, a6, 32
	sd s5, 0(s3)
	add.uw s6, t6, s7
	add.uw s7, a7, s8
	sd s6, 8(s3)
	add.uw s8, s1, s9
	sd s7, 16(s3)
	add.uw s9, t5, s10
	sd s8, 24(s3)
	add.uw s10, a6, s11
	sd s9, 32(s3)
	slli s11, s1, 32
	sd s10, 40(s3)
	add.uw s11, s0, s11
	sd s11, 48(s3)
	sd s5, 56(s3)
	sd s6, 64(s3)
	sd s7, 72(s3)
	sd s8, 80(s3)
	sd s9, 88(s3)
	sd s10, 96(s3)
	sd s11, 104(s3)
	sd s5, 112(s3)
	sd s6, 120(s3)
	sd s7, 128(s3)
	sd s8, 136(s3)
	sd s9, 144(s3)
	sd s10, 152(s3)
	sd s11, 160(s3)
	sd s5, 168(s3)
	sd s6, 176(s3)
	sd s7, 184(s3)
	sd s8, 192(s3)
	sd s9, 200(s3)
	sd s10, 208(s3)
	sd s11, 216(s3)
	li s3, 4
	blt s4, s3, label59
	addiw a0, a0, 1
	j label56
.p2align 2
label334:
	mv t3, zero
	mv a0, zero
	sub t4, zero, zero
	li a0, 3
	slli t5, t4, 8
	add t1, t2, t5
	blt zero, a0, label340
	j label339
label275:
	sd a0, 488(sp)
	j label27
