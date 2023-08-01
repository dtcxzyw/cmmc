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
	addi sp, sp, -472
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s2, 24(sp)
	sd s3, 32(sp)
	sd s4, 40(sp)
	sd s6, 48(sp)
	sd s1, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s11, 88(sp)
	sd s10, 96(sp)
	jal getint
	addiw s0, a0, 1
	sd a0, 256(sp)
	jal getint
	mv a2, a0
	sd a0, 264(sp)
	addw a0, s0, a0
	sd a0, 248(sp)
	ld a0, 256(sp)
	ld a2, 264(sp)
	addiw a1, a0, 2
	addw a0, a2, a1
	sd a0, 240(sp)
	ld a0, 256(sp)
	addiw a1, a0, 3
	addw a0, a2, a1
	sd a0, 344(sp)
	ld a0, 256(sp)
	addiw a1, a0, 4
	addw a0, a2, a1
	sd a0, 352(sp)
	ld a0, 256(sp)
	addiw a3, a0, 5
	addw a1, a2, a3
	sd a1, 360(sp)
	addiw a1, a0, 6
	addw a2, a2, a1
	addiw a1, a0, 7
	sd a2, 368(sp)
	ld a2, 264(sp)
	addw a4, a2, a1
	addiw a1, a0, 8
	addw a5, a2, a1
	sd a4, 376(sp)
	addiw a1, a0, 9
	sd a5, 384(sp)
	addw t0, a2, a1
	addiw a1, a0, 10
	sd t0, 392(sp)
	addw a0, a0, a2
	addw t1, a2, a1
	sd t1, 408(sp)
	sd a0, 400(sp)
	jal getint
	sd a0, 296(sp)
	jal getint
	sd a0, 312(sp)
	mv a1, a0
	jal getint
	sd a0, 328(sp)
	mv a1, a0
	jal getint
	sd a0, 336(sp)
	jal getint
	sd a0, 320(sp)
	mv a2, a0
	jal getint
	sd a0, 304(sp)
	mv a5, a0
	jal getint
	sd a0, 288(sp)
	mv a1, zero
	mv t3, a0
pcrel582:
	auipc a0, %pcrel_hi(arr1)
	addi a4, a0, %pcrel_lo(pcrel582)
	sd a4, 280(sp)
	sd zero, 464(sp)
.p2align 2
label2:
	ld a0, 256(sp)
	ld a1, 464(sp)
	ld a2, 264(sp)
	slt a0, a1, a0
	ld a4, 280(sp)
	slt a3, a1, a2
	li a2, 5760
	and a0, a0, a3
	mul a3, a1, a2
	add a2, a4, a3
	sd a2, 224(sp)
	bne a0, zero, label100
	j label99
.p2align 2
label106:
	ld a1, 464(sp)
	addiw a1, a1, 1
	sd a1, 464(sp)
	j label2
.p2align 2
label100:
	mv a0, zero
	sd zero, 216(sp)
.p2align 2
label4:
	ld a1, 464(sp)
	li a2, 2880
	ld a0, 216(sp)
	addw t2, a1, a0
	mul a1, a0, a2
	sd t2, 200(sp)
	ld a2, 224(sp)
	add a3, a2, a1
	li a1, 2
	sd a3, 192(sp)
	bge a0, a1, label106
	mv a3, zero
	sd zero, 176(sp)
	li a0, 3
	blt zero, a0, label10
.p2align 2
label9:
	ld a0, 216(sp)
	addiw a0, a0, 1
	sd a0, 216(sp)
	j label4
.p2align 2
label10:
	ld a0, 400(sp)
	ld a3, 176(sp)
	addw a1, a0, a3
	ld t2, 200(sp)
	addw t4, t2, a1
	sd t4, 160(sp)
	ld a0, 248(sp)
	addw a1, a0, a3
	addw t4, t2, a1
	sd t4, 152(sp)
	ld a0, 240(sp)
	addw a1, a0, a3
	addw t4, t2, a1
	sd t4, 136(sp)
	ld a0, 344(sp)
	addw a1, a0, a3
	addw t4, t2, a1
	sd t4, 120(sp)
	ld a0, 352(sp)
	addw a1, a0, a3
	addw a0, t2, a1
	ld a1, 360(sp)
	addw a2, a1, a3
	addw a1, t2, a2
	ld a2, 368(sp)
	addw a4, a2, a3
	addw a2, t2, a4
	ld a4, 376(sp)
	addw a5, a4, a3
	addw a4, t2, a5
	ld a5, 384(sp)
	addw t0, a5, a3
	addw a5, t2, t0
	ld t0, 392(sp)
	addw t1, t0, a3
	addw t0, t2, t1
	ld t1, 408(sp)
	addw t3, t1, a3
	addw t1, t2, t3
	slli t2, a3, 4
	sub t3, t2, a3
	ld a3, 192(sp)
	slli t2, t3, 6
	add t3, a3, t2
	mv t2, zero
.p2align 2
label11:
	slli a3, t2, 4
	addw t6, a2, t2
	sub t4, a3, t2
	slli t5, t4, 4
	ld t4, 160(sp)
	add a3, t3, t5
	addw t5, t4, t2
	sw t5, 0(a3)
	addw t5, a1, t2
	ld t4, 152(sp)
	addw a7, t4, t2
	sw a7, 4(a3)
	sw a7, 8(a3)
	ld t4, 136(sp)
	addw s0, t4, t2
	sw s0, 12(a3)
	sw s0, 16(a3)
	ld t4, 120(sp)
	addw a6, t4, t2
	addw t4, a0, t2
	sw a6, 20(a3)
	sw a6, 24(a3)
	sw t4, 28(a3)
	sw t4, 32(a3)
	sw t5, 36(a3)
	sw t5, 40(a3)
	sw t6, 44(a3)
	sw a7, 48(a3)
	addw a7, a4, t2
	sw s0, 52(a3)
	sw s0, 56(a3)
	sw a6, 60(a3)
	sw a6, 64(a3)
	sw t4, 68(a3)
	sw t4, 72(a3)
	sw t5, 76(a3)
	sw t5, 80(a3)
	sw t6, 84(a3)
	sw t6, 88(a3)
	sw a7, 92(a3)
	sw s0, 96(a3)
	addw s0, a5, t2
	sw a6, 100(a3)
	sw a6, 104(a3)
	sw t4, 108(a3)
	sw t4, 112(a3)
	sw t5, 116(a3)
	sw t5, 120(a3)
	sw t6, 124(a3)
	sw t6, 128(a3)
	sw a7, 132(a3)
	sw a7, 136(a3)
	sw s0, 140(a3)
	sw a6, 144(a3)
	addw a6, t0, t2
	sw t4, 148(a3)
	sw t4, 152(a3)
	sw t5, 156(a3)
	sw t5, 160(a3)
	sw t6, 164(a3)
	sw t6, 168(a3)
	sw a7, 172(a3)
	sw a7, 176(a3)
	sw s0, 180(a3)
	sw s0, 184(a3)
	sw a6, 188(a3)
	sw t4, 192(a3)
	addw t4, t1, t2
	sw t5, 196(a3)
	addiw t2, t2, 1
	sw t5, 200(a3)
	sw t6, 204(a3)
	sw t6, 208(a3)
	sw a7, 212(a3)
	sw a7, 216(a3)
	sw s0, 220(a3)
	sw s0, 224(a3)
	sw a6, 228(a3)
	sw a6, 232(a3)
	sw t4, 236(a3)
	li a3, 4
	blt t2, a3, label11
	ld a3, 176(sp)
	addiw a3, a3, 1
	sd a3, 176(sp)
	li a0, 3
	blt a3, a0, label10
	j label9
label99:
	auipc a0, %pcrel_hi(arr2)
	addi a1, a0, %pcrel_lo(label99)
	mv a0, zero
	sd a1, 272(sp)
	sd zero, 144(sp)
.p2align 2
label15:
	li a1, 10752
	ld a0, 144(sp)
	addiw s6, a0, 4
	addiw s4, a0, 2
	addiw s3, a0, 1
	addiw s5, a0, 3
	mul a2, a0, a1
	addiw a0, a0, 5
	ld a1, 272(sp)
	sd a0, 104(sp)
	add s2, a1, a2
	ld a0, 144(sp)
	li a2, 10
	addiw a1, a0, 6
	sd a1, 112(sp)
	blt a0, a2, label229
	j label228
.p2align 2
label333:
	mv a0, s3
	sd s3, 144(sp)
	j label15
label228:
	mv t2, zero
	mv a2, zero
	sd zero, 416(sp)
label17:
	li a0, 5760
	ld a2, 416(sp)
	ld a4, 280(sp)
	mul a1, a2, a0
	li a0, 10752
	add a2, a4, a1
	sd a2, 424(sp)
	ld a2, 416(sp)
	ld a1, 272(sp)
	mul a3, a2, a0
	li a0, 10
	add a1, a1, a3
	sd a1, 432(sp)
	bge a2, a0, label236
	mv a0, zero
	sd zero, 440(sp)
label22:
	li a2, 2880
	ld a0, 440(sp)
	mul a1, a0, a2
	ld a2, 424(sp)
	add a0, a2, a1
	li a1, 5376
	sd a0, 448(sp)
	ld a0, 440(sp)
	mul a2, a0, a1
	ld a1, 432(sp)
	add a0, a1, a2
	li a1, 100
	sd a0, 456(sp)
	ld a0, 440(sp)
	bge a0, a1, label25
	mv a0, zero
	sd zero, 232(sp)
label27:
	ld a0, 232(sp)
	slli a1, a0, 4
	sub a3, a1, a0
	ld a0, 448(sp)
	slli a2, a3, 6
	add a1, a0, a2
	sd a1, 208(sp)
	ld a0, 232(sp)
	slli a1, a0, 3
	sub a3, a1, a0
	ld a0, 456(sp)
	slli a2, a3, 8
	add a1, a0, a2
	li a2, 1000
	sd a1, 184(sp)
	ld a0, 232(sp)
	bge a0, a2, label49
	mv a1, zero
	sd zero, 168(sp)
.p2align 2
label30:
	ld a1, 168(sp)
	slli a0, a1, 4
	sub a2, a0, a1
	ld a1, 208(sp)
	slli a0, a2, 4
	add a4, a1, a0
	sd a4, 128(sp)
	ld a1, 168(sp)
	slli a0, a1, 3
	sub a3, a0, a1
	ld a1, 184(sp)
	slli a2, a3, 7
	add a0, a1, a2
	ld a1, 168(sp)
	li a2, 10000
	bge a1, a2, label33
	mv a1, zero
	mv a2, zero
	mv a3, zero
	mv a2, a4
	sub a5, zero, zero
	slli a4, a5, 5
	li a5, 100000
	add a3, a0, a4
	bge zero, a5, label47
.p2align 2
label279:
	mv a4, zero
	mv t0, zero
	mv a5, a2
	li t1, 1000000
	sub t3, zero, zero
	sh2add t0, t3, a3
	bge zero, t1, label45
.p2align 2
label287:
	mv t1, zero
.p2align 2
label41:
	sh2add t5, t1, a5
	li t4, -1603384363
	lw t3, 0(t5)
	mul t5, t2, t4
	srli t6, t5, 32
	add t4, t6, t2
	srliw t6, t4, 31
	sraiw t5, t4, 9
	add t4, t6, t5
	li t5, 817
	mulw a6, t4, t5
	sh2add t4, t1, t0
	subw t6, t2, a6
	addiw t1, t1, 1
	addw t2, t3, t6
	lw t3, 0(t4)
	addw t2, t2, t3
	ld t3, 288(sp)
	bgt t3, t1, label41
	addiw a4, a4, 1
	ld a5, 304(sp)
	ble a5, a4, label45
	slli t0, a4, 3
	sh3add a5, a4, a2
	li t1, 1000000
	sub t3, t0, a4
	sh2add t0, t3, a3
	blt a4, t1, label287
.p2align 2
label45:
	addiw a1, a1, 1
	ld a2, 320(sp)
	ble a2, a1, label47
	sh1add a2, a1, a1
	ld a4, 128(sp)
	slli a3, a2, 4
	add a2, a4, a3
	slli a3, a1, 3
	sub a5, a3, a1
	slli a4, a5, 5
	li a5, 100000
	add a3, a0, a4
	blt a1, a5, label279
	j label47
label33:
	ld a0, 232(sp)
	ld a1, 328(sp)
	addiw a0, a0, 1
	ble a1, a0, label49
	j label270
.p2align 2
label47:
	ld a1, 168(sp)
	ld a0, 336(sp)
	addiw a1, a1, 1
	ble a0, a1, label33
	sd a1, 168(sp)
	j label30
label25:
	ld a2, 416(sp)
	ld a0, 296(sp)
	addiw a2, a2, 1
	ble a0, a2, label236
	j label249
label49:
	ld a0, 440(sp)
	ld a1, 312(sp)
	addiw a0, a0, 1
	ble a1, a0, label25
	sd a0, 440(sp)
	j label22
label236:
	mv a0, t2
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	ld s4, 40(sp)
	ld s6, 48(sp)
	ld s1, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s11, 88(sp)
	ld s10, 96(sp)
	addi sp, sp, 472
	ret
.p2align 2
label229:
	mv s1, zero
.p2align 2
label51:
	ld a0, 144(sp)
	li a1, 5376
	addw t2, s3, s1
	addw t3, s4, s1
	addw t4, s5, s1
	addw t5, s6, s1
	li a2, 2
	addw t1, a0, s1
	mul a0, s1, a1
	add s0, s2, a0
	ld a0, 104(sp)
	ld a1, 112(sp)
	addw t6, a0, s1
	addw a6, a1, s1
	blt s1, a2, label334
	j label333
.p2align 2
label339:
	addiw s1, s1, 1
	j label51
.p2align 2
label340:
	mv a4, zero
	j label56
.p2align 2
label353:
	addiw s7, s7, 1
	slli a0, s7, 3
	sub a1, a0, s7
	li a0, 3
	slli a2, a1, 8
	add a7, s0, a2
	blt s7, a0, label340
	j label339
.p2align 2
label56:
	addw a1, t1, a4
	addw a2, t2, a4
	addw a3, t3, a4
	addw a5, t4, a4
	addw t0, t5, a4
	addw s8, t6, a4
	addw s9, a6, a4
	slli a0, a4, 3
	sub s11, a0, a4
	slli a0, s11, 7
	add s10, a7, a0
	li a0, 2
	bge a4, a0, label353
	mv s11, zero
.p2align 2
label58:
	slli a0, s11, 3
	sub a0, a0, s11
	addiw s11, s11, 1
	slli a0, a0, 5
	add a0, s10, a0
	sw a1, 0(a0)
	sw a2, 4(a0)
	sw a3, 8(a0)
	sw a5, 12(a0)
	sw t0, 16(a0)
	sw s8, 20(a0)
	sw s9, 24(a0)
	sw a1, 28(a0)
	sw a2, 32(a0)
	sw a3, 36(a0)
	sw a5, 40(a0)
	sw t0, 44(a0)
	sw s8, 48(a0)
	sw s9, 52(a0)
	sw a1, 56(a0)
	sw a2, 60(a0)
	sw a3, 64(a0)
	sw a5, 68(a0)
	sw t0, 72(a0)
	sw s8, 76(a0)
	sw s9, 80(a0)
	sw a1, 84(a0)
	sw a2, 88(a0)
	sw a3, 92(a0)
	sw a5, 96(a0)
	sw t0, 100(a0)
	sw s8, 104(a0)
	sw s9, 108(a0)
	sw a1, 112(a0)
	sw a2, 116(a0)
	sw a3, 120(a0)
	sw a5, 124(a0)
	sw t0, 128(a0)
	sw s8, 132(a0)
	sw s9, 136(a0)
	sw a1, 140(a0)
	sw a2, 144(a0)
	sw a3, 148(a0)
	sw a5, 152(a0)
	sw t0, 156(a0)
	sw s8, 160(a0)
	sw s9, 164(a0)
	sw a1, 168(a0)
	sw a2, 172(a0)
	sw a3, 176(a0)
	sw a5, 180(a0)
	sw t0, 184(a0)
	sw s8, 188(a0)
	sw s9, 192(a0)
	sw a1, 196(a0)
	sw a2, 200(a0)
	sw a3, 204(a0)
	sw a5, 208(a0)
	sw t0, 212(a0)
	sw s8, 216(a0)
	sw s9, 220(a0)
	li a0, 4
	blt s11, a0, label58
	addiw a4, a4, 1
	j label56
.p2align 2
label334:
	mv s7, zero
	mv a0, zero
	sub a1, zero, zero
	li a0, 3
	slli a2, a1, 8
	add a7, s0, a2
	blt zero, a0, label340
	j label339
label249:
	sd a2, 416(sp)
	j label17
label270:
	sd a0, 232(sp)
	j label27
