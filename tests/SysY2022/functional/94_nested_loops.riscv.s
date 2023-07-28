.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
arr1:
	.zero	57600
.align 4
arr2:
	.zero	107520
.text
.globl main
main:
.p2align 2
	addi sp, sp, -472
	sd s0, 336(sp)
	sd s5, 328(sp)
	sd s1, 320(sp)
	sd s6, 312(sp)
	sd s2, 304(sp)
	sd s3, 296(sp)
	sd s4, 288(sp)
	sd s10, 280(sp)
	sd s7, 272(sp)
	sd s8, 264(sp)
	sd s9, 256(sp)
	sd s11, 248(sp)
	sd ra, 240(sp)
	jal getint
	addiw s0, a0, 1
	sd a0, 208(sp)
	jal getint
	mv a2, a0
	sd a0, 200(sp)
	addw a0, s0, a0
	sd a0, 216(sp)
	ld a0, 208(sp)
	ld a2, 200(sp)
	addiw a1, a0, 2
	addw a0, a2, a1
	sd a0, 224(sp)
	ld a0, 208(sp)
	addiw a1, a0, 3
	addw a0, a2, a1
	sd a0, 120(sp)
	ld a0, 208(sp)
	addiw a1, a0, 4
	addw a0, a2, a1
	sd a0, 112(sp)
	ld a0, 208(sp)
	addiw a3, a0, 5
	addw a1, a2, a3
	sd a1, 104(sp)
	addiw a1, a0, 6
	addw a3, a2, a1
	addiw a1, a0, 7
	sd a3, 96(sp)
	addw a4, a2, a1
	addiw a1, a0, 8
	sd a4, 88(sp)
	addw a5, a2, a1
	addiw a1, a0, 9
	sd a5, 80(sp)
	addw t0, a2, a1
	addiw a1, a0, 10
	sd t0, 72(sp)
	addw a0, a0, a2
	addw t1, a2, a1
	sd t1, 56(sp)
	sd a0, 64(sp)
	jal getint
	sd a0, 168(sp)
	mv a2, a0
	jal getint
	sd a0, 160(sp)
	mv a1, a0
	jal getint
	sd a0, 144(sp)
	mv a1, a0
	jal getint
	sd a0, 128(sp)
	jal getint
	sd a0, 136(sp)
	mv a2, a0
	jal getint
	sd a0, 152(sp)
	mv a5, a0
	jal getint
	sd a0, 176(sp)
	mv a1, zero
	mv t3, a0
pcrel583:
	auipc a0, %pcrel_hi(arr1)
	addi a4, a0, %pcrel_lo(pcrel583)
	sd a4, 184(sp)
	sd zero, 0(sp)
.p2align 2
label2:
	ld a0, 208(sp)
	li a3, 5760
	ld a1, 0(sp)
	ld a2, 200(sp)
	slt a0, a1, a0
	slt a4, a1, a2
	mul a2, a1, a3
	and a0, a0, a4
	ld a4, 184(sp)
	add a3, a4, a2
	sd a3, 464(sp)
	bne a0, zero, label100
pcrel584:
	auipc a0, %pcrel_hi(arr2)
	addi a3, a0, %pcrel_lo(pcrel584)
	mv a0, zero
	sd a3, 192(sp)
	sd zero, 384(sp)
	j label15
label100:
	mv a0, zero
	sd zero, 456(sp)
.p2align 2
label4:
	ld a1, 0(sp)
	li a2, 2880
	ld a0, 456(sp)
	addw t2, a1, a0
	mul a1, a0, a2
	sd t2, 440(sp)
	ld a3, 464(sp)
	add a2, a3, a1
	li a1, 2
	sd a2, 432(sp)
	blt a0, a1, label107
	ld a1, 0(sp)
	addiw a1, a1, 1
	sd a1, 0(sp)
	j label2
.p2align 2
label107:
	mv a2, zero
	sd zero, 416(sp)
	li a0, 3
	blt zero, a0, label9
.p2align 2
label110:
	ld a0, 456(sp)
	addiw a0, a0, 1
	sd a0, 456(sp)
	j label4
.p2align 2
label9:
	ld a0, 64(sp)
	ld a2, 416(sp)
	addw a1, a0, a2
	ld t2, 440(sp)
	addw t4, t2, a1
	sd t4, 400(sp)
	ld a0, 216(sp)
	addw a1, a0, a2
	addw t4, t2, a1
	sd t4, 392(sp)
	ld a0, 224(sp)
	addw a1, a0, a2
	addw t4, t2, a1
	sd t4, 376(sp)
	ld a0, 120(sp)
	addw a1, a0, a2
	addw t4, t2, a1
	sd t4, 360(sp)
	ld a0, 112(sp)
	addw a1, a0, a2
	addw a0, t2, a1
	ld a1, 104(sp)
	addw a3, a1, a2
	addw a1, t2, a3
	ld a3, 96(sp)
	addw a4, a3, a2
	addw a3, t2, a4
	ld a4, 88(sp)
	addw a5, a4, a2
	addw a4, t2, a5
	ld a5, 80(sp)
	addw t0, a5, a2
	addw a5, t2, t0
	ld t0, 72(sp)
	addw t1, t0, a2
	addw t0, t2, t1
	ld t1, 56(sp)
	addw t3, t1, a2
	addw t1, t2, t3
	slli t2, a2, 4
	sub t3, t2, a2
	ld a2, 432(sp)
	slli t2, t3, 6
	add t3, a2, t2
	mv t2, zero
.p2align 2
label10:
	slli a2, t2, 4
	addw t6, a3, t2
	sub t4, a2, t2
	slli t5, t4, 4
	ld t4, 400(sp)
	add a2, t3, t5
	addw t5, t4, t2
	sw t5, 0(a2)
	addw t5, a1, t2
	ld t4, 392(sp)
	addw a7, t4, t2
	sw a7, 4(a2)
	sw a7, 8(a2)
	ld t4, 376(sp)
	addw s0, t4, t2
	sw s0, 12(a2)
	sw s0, 16(a2)
	ld t4, 360(sp)
	addw a6, t4, t2
	addw t4, a0, t2
	sw a6, 20(a2)
	sw a6, 24(a2)
	sw t4, 28(a2)
	sw t4, 32(a2)
	sw t5, 36(a2)
	sw t5, 40(a2)
	sw t6, 44(a2)
	sw a7, 48(a2)
	addw a7, a4, t2
	sw s0, 52(a2)
	sw s0, 56(a2)
	sw a6, 60(a2)
	sw a6, 64(a2)
	sw t4, 68(a2)
	sw t4, 72(a2)
	sw t5, 76(a2)
	sw t5, 80(a2)
	sw t6, 84(a2)
	sw t6, 88(a2)
	sw a7, 92(a2)
	sw s0, 96(a2)
	addw s0, a5, t2
	sw a6, 100(a2)
	sw a6, 104(a2)
	sw t4, 108(a2)
	sw t4, 112(a2)
	sw t5, 116(a2)
	sw t5, 120(a2)
	sw t6, 124(a2)
	sw t6, 128(a2)
	sw a7, 132(a2)
	sw a7, 136(a2)
	sw s0, 140(a2)
	sw a6, 144(a2)
	addw a6, t0, t2
	sw t4, 148(a2)
	sw t4, 152(a2)
	sw t5, 156(a2)
	sw t5, 160(a2)
	sw t6, 164(a2)
	sw t6, 168(a2)
	sw a7, 172(a2)
	sw a7, 176(a2)
	sw s0, 180(a2)
	sw s0, 184(a2)
	sw a6, 188(a2)
	sw t4, 192(a2)
	addw t4, t1, t2
	sw t5, 196(a2)
	addiw t2, t2, 1
	sw t5, 200(a2)
	sw t6, 204(a2)
	sw t6, 208(a2)
	sw a7, 212(a2)
	sw a7, 216(a2)
	sw s0, 220(a2)
	sw s0, 224(a2)
	sw a6, 228(a2)
	sw a6, 232(a2)
	sw t4, 236(a2)
	li a2, 4
	blt t2, a2, label10
	ld a2, 416(sp)
	addiw a2, a2, 1
	sd a2, 416(sp)
	li a0, 3
	blt a2, a0, label9
	j label110
.p2align 2
label15:
	li a1, 10752
	ld a0, 384(sp)
	addiw t1, a0, 4
	addiw t0, a0, 3
	addiw a5, a0, 2
	ld a3, 192(sp)
	mul a2, a0, a1
	addiw a1, a0, 5
	add a4, a3, a2
	sd a1, 344(sp)
	addiw a2, a0, 1
	li a1, 10
	addiw a0, a0, 6
	sd a0, 352(sp)
	ld a0, 384(sp)
	blt a0, a1, label229
	mv a1, zero
	mv a0, zero
	sd zero, 48(sp)
	j label17
label229:
	mv a3, zero
	j label51
label17:
	li a2, 5760
	ld a0, 48(sp)
	ld a4, 184(sp)
	mul a5, a0, a2
	li a2, 10752
	add a3, a4, a5
	mul a4, a0, a2
	sd a3, 40(sp)
	li a2, 10
	ld a3, 192(sp)
	add a3, a3, a4
	sd a3, 32(sp)
	bge a0, a2, label49
	mv t2, a1
	mv a0, zero
	sd zero, 24(sp)
	j label20
label49:
	mv a0, a1
	ld ra, 240(sp)
	ld s11, 248(sp)
	ld s9, 256(sp)
	ld s8, 264(sp)
	ld s7, 272(sp)
	ld s10, 280(sp)
	ld s4, 288(sp)
	ld s3, 296(sp)
	ld s2, 304(sp)
	ld s6, 312(sp)
	ld s1, 320(sp)
	ld s5, 328(sp)
	ld s0, 336(sp)
	addi sp, sp, 472
	ret
.p2align 2
label51:
	ld a0, 384(sp)
	li a1, 5376
	addw t3, a2, a3
	addw t4, a5, a3
	addw t5, t0, a3
	addw t6, t1, a3
	addw t2, a0, a3
	mul a0, a3, a1
	ld a1, 344(sp)
	add s0, a4, a0
	addw a6, a1, a3
	ld a0, 352(sp)
	li a1, 2
	addw a7, a0, a3
	blt a3, a1, label334
	mv a0, a2
	sd a2, 384(sp)
	j label15
.p2align 2
label334:
	mv s1, zero
	mv a1, zero
	sub s2, zero, zero
	li a1, 3
	slli a0, s2, 8
	add s3, s0, a0
	blt zero, a1, label340
.p2align 2
label339:
	addiw a3, a3, 1
	j label51
.p2align 2
label340:
	mv s2, zero
.p2align 2
label56:
	addw a1, t2, s2
	slli s4, s2, 3
	addw s6, t5, s2
	addw s7, t6, s2
	addw s8, a6, s2
	addw s9, a7, s2
	sub a0, s4, s2
	addw s4, t3, s2
	slli s5, a0, 7
	li a0, 2
	add s10, s3, s5
	addw s5, t4, s2
	blt s2, a0, label354
	addiw s1, s1, 1
	slli a1, s1, 3
	sub s2, a1, s1
	li a1, 3
	slli a0, s2, 8
	add s3, s0, a0
	blt s1, a1, label340
	j label339
.p2align 2
label354:
	mv s11, zero
	j label59
.p2align 2
label416:
	addiw s2, s2, 1
	j label56
.p2align 2
label59:
	slli a0, s11, 3
	sub a0, a0, s11
	addiw s11, s11, 1
	slli a0, a0, 5
	add a0, s10, a0
	sw a1, 0(a0)
	sw s4, 4(a0)
	sw s5, 8(a0)
	sw s6, 12(a0)
	sw s7, 16(a0)
	sw s8, 20(a0)
	sw s9, 24(a0)
	sw a1, 28(a0)
	sw s4, 32(a0)
	sw s5, 36(a0)
	sw s6, 40(a0)
	sw s7, 44(a0)
	sw s8, 48(a0)
	sw s9, 52(a0)
	sw a1, 56(a0)
	sw s4, 60(a0)
	sw s5, 64(a0)
	sw s6, 68(a0)
	sw s7, 72(a0)
	sw s8, 76(a0)
	sw s9, 80(a0)
	sw a1, 84(a0)
	sw s4, 88(a0)
	sw s5, 92(a0)
	sw s6, 96(a0)
	sw s7, 100(a0)
	sw s8, 104(a0)
	sw s9, 108(a0)
	sw a1, 112(a0)
	sw s4, 116(a0)
	sw s5, 120(a0)
	sw s6, 124(a0)
	sw s7, 128(a0)
	sw s8, 132(a0)
	sw s9, 136(a0)
	sw a1, 140(a0)
	sw s4, 144(a0)
	sw s5, 148(a0)
	sw s6, 152(a0)
	sw s7, 156(a0)
	sw s8, 160(a0)
	sw s9, 164(a0)
	sw a1, 168(a0)
	sw s4, 172(a0)
	sw s5, 176(a0)
	sw s6, 180(a0)
	sw s7, 184(a0)
	sw s8, 188(a0)
	sw s9, 192(a0)
	sw a1, 196(a0)
	sw s4, 200(a0)
	sw s5, 204(a0)
	sw s6, 208(a0)
	sw s7, 212(a0)
	sw s8, 216(a0)
	sw s9, 220(a0)
	li a0, 4
	blt s11, a0, label59
	j label416
label20:
	li a1, 2880
	ld a0, 24(sp)
	ld a3, 40(sp)
	mul a2, a0, a1
	li a1, 5376
	add a0, a3, a2
	sd a0, 16(sp)
	ld a0, 24(sp)
	ld a3, 32(sp)
	mul a2, a0, a1
	li a1, 100
	add a0, a3, a2
	sd a0, 8(sp)
	ld a0, 24(sp)
	bge a0, a1, label47
	mv a0, zero
	sd zero, 232(sp)
label23:
	ld a0, 232(sp)
	slli a1, a0, 4
	sub a3, a1, a0
	ld a0, 16(sp)
	slli a2, a3, 6
	add a1, a0, a2
	sd a1, 448(sp)
	ld a0, 232(sp)
	slli a1, a0, 3
	sub a3, a1, a0
	ld a0, 8(sp)
	slli a2, a3, 8
	add a1, a0, a2
	li a2, 1000
	sd a1, 424(sp)
	ld a0, 232(sp)
	blt a0, a2, label253
	ld a0, 24(sp)
	ld a1, 160(sp)
	addiw a0, a0, 1
	ble a1, a0, label47
label561:
	sd a0, 24(sp)
	j label20
label253:
	mv a1, zero
	sd zero, 408(sp)
	j label28
label26:
	ld a0, 24(sp)
	ld a1, 160(sp)
	addiw a0, a0, 1
	ble a1, a0, label47
	j label561
.p2align 2
label28:
	ld a1, 408(sp)
	slli a0, a1, 4
	sub a2, a0, a1
	ld a1, 448(sp)
	slli a0, a2, 4
	add a4, a1, a0
	sd a4, 368(sp)
	ld a1, 408(sp)
	slli a0, a1, 3
	sub a3, a0, a1
	ld a1, 424(sp)
	slli a2, a3, 7
	add a0, a1, a2
	ld a1, 408(sp)
	li a2, 10000
	blt a1, a2, label266
	ld a0, 232(sp)
	ld a1, 144(sp)
	addiw a0, a0, 1
	ble a1, a0, label26
label562:
	sd a0, 232(sp)
	j label23
label266:
	mv a1, zero
	mv a2, zero
	ld a4, 368(sp)
	mv a3, zero
	mv a2, a4
	sub a4, zero, zero
	slli a5, a4, 5
	li a4, 100000
	add a3, a0, a5
	blt zero, a4, label274
	ld a1, 408(sp)
	ld a0, 128(sp)
	addiw a1, a1, 1
	ble a0, a1, label45
label563:
	sd a1, 408(sp)
	j label28
.p2align 2
label274:
	mv a4, zero
	mv t0, zero
	mv a5, a2
	li t1, 1000000
	sub t3, zero, zero
	sh2add t0, t3, a3
	blt zero, t1, label287
	addiw a1, a1, 1
	ld a2, 136(sp)
	ble a2, a1, label34
	sh1add a2, a1, a1
	ld a4, 368(sp)
	slli a3, a2, 4
	add a2, a4, a3
	slli a3, a1, 3
	sub a4, a3, a1
	slli a5, a4, 5
	li a4, 100000
	add a3, a0, a5
	blt a1, a4, label274
	ld a1, 408(sp)
	ld a0, 128(sp)
	addiw a1, a1, 1
	bgt a0, a1, label563
label45:
	ld a0, 232(sp)
	ld a1, 144(sp)
	addiw a0, a0, 1
	ble a1, a0, label26
	j label562
label47:
	ld a0, 48(sp)
	ld a2, 168(sp)
	addiw a0, a0, 1
	ble a2, a0, label321
	mv a1, t2
	sd a0, 48(sp)
	j label17
label321:
	mv a1, t2
	j label49
.p2align 2
label34:
	ld a1, 408(sp)
	ld a0, 128(sp)
	addiw a1, a1, 1
	ble a0, a1, label45
	j label563
.p2align 2
label287:
	mv t1, zero
.p2align 2
label39:
	sh2add t4, t1, a5
	li a6, -1603384363
	lw t3, 0(t4)
	mul t5, t2, a6
	srli t6, t5, 32
	add t4, t6, t2
	srliw t6, t4, 31
	sraiw t5, t4, 9
	add t4, t6, t5
	li t5, 817
	mulw t6, t4, t5
	sh2add t5, t1, t0
	subw t4, t2, t6
	addiw t1, t1, 1
	addw t2, t3, t4
	lw t3, 0(t5)
	addw t2, t2, t3
	ld t3, 176(sp)
	bgt t3, t1, label39
	addiw a4, a4, 1
	ld a5, 152(sp)
	ble a5, a4, label43
	slli t0, a4, 3
	sh3add a5, a4, a2
	li t1, 1000000
	sub t3, t0, a4
	sh2add t0, t3, a3
	blt a4, t1, label287
	addiw a1, a1, 1
	ld a2, 136(sp)
	ble a2, a1, label34
	sh1add a2, a1, a1
	ld a4, 368(sp)
	slli a3, a2, 4
	add a2, a4, a3
	slli a3, a1, 3
	sub a4, a3, a1
	slli a5, a4, 5
	li a4, 100000
	add a3, a0, a5
	blt a1, a4, label274
	ld a1, 408(sp)
	ld a0, 128(sp)
	addiw a1, a1, 1
	ble a0, a1, label45
	j label563
.p2align 2
label43:
	addiw a1, a1, 1
	ld a2, 136(sp)
	ble a2, a1, label34
	sh1add a2, a1, a1
	ld a4, 368(sp)
	slli a3, a2, 4
	add a2, a4, a3
	slli a3, a1, 3
	sub a4, a3, a1
	slli a5, a4, 5
	li a4, 100000
	add a3, a0, a5
	blt a1, a4, label274
	ld a1, 408(sp)
	ld a0, 128(sp)
	addiw a1, a1, 1
	ble a0, a1, label45
	j label563
