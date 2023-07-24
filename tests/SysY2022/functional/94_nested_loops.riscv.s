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
	addi sp, sp, -504
	sd s0, 144(sp)
	sd s5, 168(sp)
	sd s1, 192(sp)
	sd s6, 72(sp)
	sd s2, 0(sp)
	sd s3, 8(sp)
	sd s4, 16(sp)
	sd s10, 24(sp)
	sd s7, 496(sp)
	sd s8, 488(sp)
	sd s9, 480(sp)
	sd s11, 472(sp)
	sd ra, 464(sp)
	jal getint
	addiw s0, a0, 1
	sd a0, 272(sp)
	jal getint
	sd a0, 264(sp)
	mv a1, a0
	addw a0, s0, a0
	sd a0, 280(sp)
	ld a0, 272(sp)
	ld a1, 264(sp)
	addiw a2, a0, 2
	addw a0, a1, a2
	sd a0, 288(sp)
	ld a0, 272(sp)
	addiw a2, a0, 3
	addw a0, a1, a2
	sd a0, 80(sp)
	ld a0, 272(sp)
	addiw a2, a0, 4
	addw a4, a1, a2
	addiw a2, a0, 5
	sd a4, 88(sp)
	addw a4, a1, a2
	addiw a2, a0, 6
	sd a4, 96(sp)
	addw a0, a1, a2
	sd a0, 112(sp)
	ld a0, 272(sp)
	addw a0, a0, a1
	sd a0, 104(sp)
	jal getint
	sd a0, 56(sp)
	mv a2, a0
	jal getint
	sd a0, 136(sp)
	mv a1, a0
	jal getint
	sd a0, 176(sp)
	mv a1, a0
	jal getint
	sd a0, 64(sp)
	jal getint
	sd a0, 200(sp)
	mv a2, a0
	jal getint
	sd a0, 152(sp)
	mv a5, a0
	jal getint
	mv a3, zero
	mv t3, a0
	sd a0, 48(sp)
pcrel520:
	auipc a0, %pcrel_hi(arr1)
	addi a4, a0, %pcrel_lo(pcrel520)
	sd a4, 40(sp)
	sd zero, 184(sp)
label2:
	ld a0, 272(sp)
	li a2, 5760
	ld a3, 184(sp)
	ld a1, 264(sp)
	slt a0, a3, a0
	slt a4, a3, a1
	and a1, a0, a4
	ld a4, 40(sp)
	mul a0, a3, a2
	add a2, a4, a0
	sd a2, 248(sp)
	ld a0, 104(sp)
	addw a2, a0, a3
	sd a2, 240(sp)
	ld a0, 280(sp)
	addw a2, a0, a3
	sd a2, 232(sp)
	ld a0, 288(sp)
	addw a2, a0, a3
	sd a2, 224(sp)
	ld a0, 80(sp)
	addw a2, a0, a3
	sd a2, 304(sp)
	ld a4, 88(sp)
	addw a0, a4, a3
	sd a0, 312(sp)
	ld a4, 96(sp)
	addw a2, a4, a3
	sd a2, 320(sp)
	ld a0, 112(sp)
	addw a2, a0, a3
	sd a2, 336(sp)
	bne a1, zero, label102
pcrel521:
	auipc a0, %pcrel_hi(arr2)
	addi a3, a0, %pcrel_lo(pcrel521)
	mv a0, zero
	sd a3, 32(sp)
	sd zero, 424(sp)
	j label18
label102:
	mv a1, zero
	sd zero, 344(sp)
	j label4
label114:
	ld a3, 184(sp)
	addiw a3, a3, 1
	sd a3, 184(sp)
	j label2
label18:
	li a1, 10752
	ld a0, 424(sp)
	addiw t0, a0, 3
	addiw a5, a0, 2
	addiw t1, a0, 4
	ld a3, 32(sp)
	mul a2, a0, a1
	add a4, a3, a2
	li a3, 10
	addiw a2, a0, 1
	addiw a0, a0, 5
	sd a0, 456(sp)
	ld a0, 424(sp)
	addiw a1, a0, 6
	sd a1, 448(sp)
	blt a0, a3, label184
	mv a1, zero
	mv a0, zero
	sd zero, 120(sp)
	j label20
label184:
	mv a3, zero
	j label54
label20:
	li a4, 5760
	ld a0, 120(sp)
	mul a2, a0, a4
	ld a4, 40(sp)
	add a3, a4, a2
	li a4, 10752
	sd a3, 128(sp)
	mul a2, a0, a4
	ld a3, 32(sp)
	add a3, a3, a2
	li a2, 10
	sd a3, 216(sp)
	bge a0, a2, label23
	mv t2, a1
	mv a0, zero
	sd zero, 208(sp)
	j label25
label23:
	mv a0, a1
	ld ra, 464(sp)
	ld s11, 472(sp)
	ld s9, 480(sp)
	ld s8, 488(sp)
	ld s7, 496(sp)
	ld s10, 24(sp)
	ld s4, 16(sp)
	ld s3, 8(sp)
	ld s2, 0(sp)
	ld s6, 72(sp)
	ld s1, 192(sp)
	ld s5, 168(sp)
	ld s0, 144(sp)
	addi sp, sp, 504
	ret
label54:
	ld a0, 424(sp)
	li a1, 5376
	addw t3, a2, a3
	addw t4, a5, a3
	addw t5, t0, a3
	addw t6, t1, a3
	addw t2, a0, a3
	mul a0, a3, a1
	add s0, a4, a0
	ld a0, 456(sp)
	ld a1, 448(sp)
	addw a6, a0, a3
	addw a7, a1, a3
	li a0, 2
	blt a3, a0, label289
	mv a0, a2
	sd a2, 424(sp)
	j label18
label289:
	mv s1, zero
	li a0, 1792
	mv a1, zero
	li a0, 3
	mv s3, s0
	blt zero, a0, label295
label294:
	addiw a3, a3, 1
	j label54
label295:
	mv s2, zero
label59:
	addw a1, t2, s2
	li a0, 896
	addw s4, t3, s2
	addw s6, t5, s2
	addw s7, t6, s2
	addw s8, a6, s2
	addw s9, a7, s2
	mul s5, s2, a0
	li a0, 2
	add s10, s3, s5
	addw s5, t4, s2
	blt s2, a0, label309
	addiw s1, s1, 1
	li a0, 1792
	mul a1, s1, a0
	li a0, 3
	add s3, s0, a1
	blt s1, a0, label295
	j label294
label309:
	mv s11, zero
	j label62
label371:
	addiw s2, s2, 1
	j label59
label4:
	li a2, 2880
	ld a1, 344(sp)
	mul a0, a1, a2
	ld a2, 248(sp)
	add a3, a2, a0
	sd a3, 360(sp)
	ld a2, 240(sp)
	addw a0, a2, a1
	sd a0, 368(sp)
	ld a2, 232(sp)
	addw a5, a2, a1
	sd a5, 376(sp)
	ld a2, 224(sp)
	addw a0, a2, a1
	sd a0, 392(sp)
	ld a2, 304(sp)
	addw t1, a2, a1
	sd t1, 400(sp)
	ld a0, 312(sp)
	addw t2, a0, a1
	sd t2, 408(sp)
	ld a2, 320(sp)
	addw a0, a2, a1
	sd a0, 416(sp)
	li a0, 2
	ld a2, 336(sp)
	addw t4, a2, a1
	sd t4, 440(sp)
	bge a1, a0, label114
	mv a1, zero
	j label6
label127:
	ld a1, 344(sp)
	addiw a1, a1, 1
	sd a1, 344(sp)
	j label4
label6:
	li a2, 960
	ld a3, 360(sp)
	mul a0, a1, a2
	add a2, a3, a0
	ld a0, 368(sp)
	ld a5, 376(sp)
	addw a3, a0, a1
	addw a4, a5, a1
	ld a0, 392(sp)
	ld t1, 400(sp)
	addw a5, a0, a1
	ld t2, 408(sp)
	addw t0, t1, a1
	ld a0, 416(sp)
	addw t1, t2, a1
	ld t4, 440(sp)
	addw t2, a0, a1
	addw t3, t4, a1
	li a0, 3
	bge a1, a0, label127
	mv a0, zero
	li t4, 4
	blt zero, t4, label11
label131:
	addiw a1, a1, 1
	j label6
label11:
	li t5, 240
	addw a6, a5, a0
	addw a7, t0, a0
	addw s0, t1, a0
	addw s1, t2, a0
	addw s2, t3, a0
	mv s3, zero
	mul t6, a0, t5
	addw t5, a3, a0
	add t4, a2, t6
	addw t6, a4, a0
label12:
	li s6, 48
	mul s5, s3, s6
	addw s6, t5, s3
	add s4, t4, s5
	addw s5, t6, s3
	sw s6, 0(s4)
	sw s5, 4(s4)
	sw s5, 8(s4)
	addw s5, a6, s3
	sw s5, 12(s4)
	sw s5, 16(s4)
	addw s5, a7, s3
	sw s5, 20(s4)
	sw s5, 24(s4)
	addw s5, s0, s3
	sw s5, 28(s4)
	sw s5, 32(s4)
	addw s5, s1, s3
	sw s5, 36(s4)
	sw s5, 40(s4)
	addw s5, s2, s3
	addiw s3, s3, 1
	sw s5, 44(s4)
	li s4, 5
	blt s3, s4, label12
	addiw a0, a0, 1
	li t4, 4
	blt a0, t4, label11
	j label131
label62:
	li a0, 224
	mul a0, s11, a0
	addiw s11, s11, 1
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
	blt s11, a0, label62
	j label371
label25:
	li a2, 2880
	ld a0, 208(sp)
	ld a3, 128(sp)
	mul a1, a0, a2
	add a2, a3, a1
	li a3, 5376
	sd a2, 160(sp)
	mul a1, a0, a3
	ld a3, 216(sp)
	add a2, a3, a1
	li a1, 100
	sd a2, 256(sp)
	bge a0, a1, label28
	mv a0, zero
	sd zero, 296(sp)
	j label30
label28:
	ld a0, 120(sp)
	ld a2, 56(sp)
	addiw a0, a0, 1
	ble a2, a0, label205
	mv a1, t2
	sd a0, 120(sp)
	j label20
label205:
	mv a1, t2
	j label23
label30:
	li a2, 960
	ld a0, 296(sp)
	mul a1, a0, a2
	ld a2, 160(sp)
	add a0, a2, a1
	li a2, 1792
	sd a0, 328(sp)
	ld a0, 296(sp)
	mul a1, a0, a2
	ld a2, 256(sp)
	add a3, a2, a1
	li a1, 1000
	sd a3, 352(sp)
	blt a0, a1, label213
	ld a0, 208(sp)
	ld a1, 136(sp)
	addiw a0, a0, 1
	ble a1, a0, label28
label496:
	sd a0, 208(sp)
	j label25
label213:
	mv a1, zero
	sd zero, 384(sp)
	j label35
label33:
	ld a0, 208(sp)
	ld a1, 136(sp)
	addiw a0, a0, 1
	ble a1, a0, label28
	j label496
label35:
	li a0, 240
	ld a1, 384(sp)
	mul a2, a1, a0
	ld a0, 328(sp)
	add a4, a0, a2
	li a0, 896
	mul a2, a1, a0
	sd a4, 432(sp)
	ld a3, 352(sp)
	add a0, a3, a2
	li a2, 10000
	blt a1, a2, label226
	ld a0, 296(sp)
	ld a1, 176(sp)
	addiw a0, a0, 1
	ble a1, a0, label33
label497:
	sd a0, 296(sp)
	j label30
label226:
	mv a1, zero
	li a2, 48
	li a5, 224
	ld a4, 432(sp)
	mv a3, zero
	mv t0, zero
	mv a2, a4
	li a4, 100000
	mv a3, a0
	blt zero, a4, label234
	ld a1, 384(sp)
	ld a0, 64(sp)
	addiw a1, a1, 1
	ble a0, a1, label52
label498:
	sd a1, 384(sp)
	j label35
label234:
	mv a4, zero
	mv a5, a2
	li t1, 28
	mv t3, zero
	li t1, 1000000
	mv t0, a3
	blt zero, t1, label247
	addiw a1, a1, 1
	ld a2, 200(sp)
	ble a2, a1, label41
	li a2, 48
	li a5, 224
	ld a4, 432(sp)
	mul a3, a1, a2
	mul t0, a1, a5
	add a2, a4, a3
	li a4, 100000
	add a3, a0, t0
	blt a1, a4, label234
	ld a1, 384(sp)
	ld a0, 64(sp)
	addiw a1, a1, 1
	ble a0, a1, label52
	j label498
label41:
	ld a1, 384(sp)
	ld a0, 64(sp)
	addiw a1, a1, 1
	ble a0, a1, label52
	j label498
label49:
	addiw a4, a4, 1
	ld a5, 152(sp)
	ble a5, a4, label50
	sh3add a5, a4, a2
	li t1, 28
	mul t3, a4, t1
	li t1, 1000000
	add t0, a3, t3
	blt a4, t1, label247
	addiw a1, a1, 1
	ld a2, 200(sp)
	ble a2, a1, label41
	li a2, 48
	li a5, 224
	ld a4, 432(sp)
	mul a3, a1, a2
	mul t0, a1, a5
	add a2, a4, a3
	li a4, 100000
	add a3, a0, t0
	blt a1, a4, label234
	ld a1, 384(sp)
	ld a0, 64(sp)
	addiw a1, a1, 1
	ble a0, a1, label52
	j label498
label50:
	addiw a1, a1, 1
	ld a2, 200(sp)
	ble a2, a1, label41
	li a2, 48
	li a5, 224
	ld a4, 432(sp)
	mul a3, a1, a2
	mul t0, a1, a5
	add a2, a4, a3
	li a4, 100000
	add a3, a0, t0
	blt a1, a4, label234
	ld a1, 384(sp)
	ld a0, 64(sp)
	addiw a1, a1, 1
	bgt a0, a1, label498
label52:
	ld a0, 296(sp)
	ld a1, 176(sp)
	addiw a0, a0, 1
	ble a1, a0, label33
	j label497
label247:
	mv t1, zero
label46:
	sh2add t5, t1, a5
	li t4, -1603384363
	lw t3, 0(t5)
	mul t5, t2, t4
	srli t6, t5, 32
	add t4, t6, t2
	li t6, 817
	srliw a6, t4, 31
	sraiw t5, t4, 9
	add t4, a6, t5
	mulw t5, t4, t6
	subw t4, t2, t5
	sh2add t5, t1, t0
	addw t2, t3, t4
	addiw t1, t1, 1
	lw t3, 0(t5)
	addw t2, t2, t3
	ld t3, 48(sp)
	ble t3, t1, label49
	j label46
