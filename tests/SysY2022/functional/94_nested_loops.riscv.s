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
.globl main
main:
.p2align 2
	addi sp, sp, -472
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s2, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	sd s10, 64(sp)
	sd s7, 72(sp)
	sd s8, 80(sp)
	sd s9, 88(sp)
	sd s11, 96(sp)
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
	addw a3, a2, a1
	addiw a1, a0, 7
	sd a3, 368(sp)
	addw a4, a2, a1
	addiw a1, a0, 8
	sd a4, 376(sp)
	addw a5, a2, a1
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
	mv a2, a0
	jal getint
	sd a0, 304(sp)
	mv a1, a0
	jal getint
	sd a0, 320(sp)
	mv a1, a0
	jal getint
	sd a0, 336(sp)
	jal getint
	sd a0, 328(sp)
	mv a2, a0
	jal getint
	sd a0, 312(sp)
	mv a5, a0
	jal getint
	sd a0, 288(sp)
	mv a1, zero
	mv t3, a0
pcrel590:
	auipc a0, %pcrel_hi(arr1)
	addi a3, a0, %pcrel_lo(pcrel590)
	sd a3, 280(sp)
	sd zero, 464(sp)
.p2align 2
label2:
	ld a0, 256(sp)
	li a3, 5760
	ld a1, 464(sp)
	ld a2, 264(sp)
	slt a0, a1, a0
	slt a4, a1, a2
	mul a2, a1, a3
	and a0, a0, a4
	ld a3, 280(sp)
	add a1, a3, a2
	sd a1, 224(sp)
	bne a0, zero, label100
	j label99
.p2align 2
label309:
	ld a1, 464(sp)
	addiw a1, a1, 1
	sd a1, 464(sp)
	j label2
label100:
	mv a0, zero
	sd zero, 216(sp)
.p2align 2
label52:
	ld a1, 464(sp)
	ld a0, 216(sp)
	addw t2, a1, a0
	li a1, 2880
	sd t2, 200(sp)
	mul a3, a0, a1
	ld a1, 224(sp)
	add a2, a1, a3
	li a1, 2
	sd a2, 192(sp)
	bge a0, a1, label309
	mv a2, zero
	sd zero, 176(sp)
	li a0, 3
	blt zero, a0, label56
.p2align 2
label313:
	ld a0, 216(sp)
	addiw a0, a0, 1
	sd a0, 216(sp)
	j label52
.p2align 2
label56:
	ld a0, 400(sp)
	ld a2, 176(sp)
	addw a1, a0, a2
	ld t2, 200(sp)
	addw t4, t2, a1
	sd t4, 160(sp)
	ld a0, 248(sp)
	addw a1, a0, a2
	addw t4, t2, a1
	sd t4, 152(sp)
	ld a0, 240(sp)
	addw a1, a0, a2
	addw t4, t2, a1
	sd t4, 136(sp)
	ld a0, 344(sp)
	addw a1, a0, a2
	addw t4, t2, a1
	sd t4, 120(sp)
	ld a0, 352(sp)
	addw a1, a0, a2
	addw a0, t2, a1
	ld a1, 360(sp)
	addw a3, a1, a2
	addw a1, t2, a3
	ld a3, 368(sp)
	addw a4, a3, a2
	addw a3, t2, a4
	ld a4, 376(sp)
	addw a5, a4, a2
	addw a4, t2, a5
	ld a5, 384(sp)
	addw t0, a5, a2
	addw a5, t2, t0
	ld t0, 392(sp)
	addw t1, t0, a2
	addw t0, t2, t1
	ld t1, 408(sp)
	addw t3, t1, a2
	addw t1, t2, t3
	slli t2, a2, 4
	sub t3, t2, a2
	ld a2, 192(sp)
	slli t2, t3, 6
	add t3, a2, t2
	mv t2, zero
.p2align 2
label57:
	slli a2, t2, 4
	addw t6, a3, t2
	sub t4, a2, t2
	slli t5, t4, 4
	ld t4, 160(sp)
	add a2, t3, t5
	addw t5, t4, t2
	sw t5, 0(a2)
	addw t5, a1, t2
	ld t4, 152(sp)
	addw a7, t4, t2
	sw a7, 4(a2)
	sw a7, 8(a2)
	ld t4, 136(sp)
	addw s0, t4, t2
	sw s0, 12(a2)
	sw s0, 16(a2)
	ld t4, 120(sp)
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
	blt t2, a2, label57
	ld a2, 176(sp)
	addiw a2, a2, 1
	sd a2, 176(sp)
	li a0, 3
	blt a2, a0, label56
	j label313
.p2align 2
label99:
	auipc a0, %pcrel_hi(arr2)
	addi a3, a0, %pcrel_lo(label99)
	mv a0, zero
	sd a3, 272(sp)
	sd zero, 144(sp)
.p2align 2
label5:
	li a1, 10752
	ld a0, 144(sp)
	addiw t1, a0, 4
	addiw t0, a0, 3
	addiw a5, a0, 2
	ld a3, 272(sp)
	mul a2, a0, a1
	add a4, a3, a2
	li a3, 10
	addiw a2, a0, 1
	addiw a0, a0, 5
	sd a0, 104(sp)
	ld a0, 144(sp)
	addiw a1, a0, 6
	sd a1, 112(sp)
	blt a0, a3, label114
	j label113
.p2align 2
label126:
	mv a0, a2
	sd a2, 144(sp)
	j label5
.p2align 2
label113:
	mv a1, zero
	mv a0, zero
	sd zero, 416(sp)
label18:
	li a2, 5760
	ld a0, 416(sp)
	ld a3, 280(sp)
	mul a4, a0, a2
	add a3, a3, a4
	li a4, 10752
	sd a3, 424(sp)
	mul a2, a0, a4
	ld a3, 272(sp)
	add a3, a3, a2
	li a2, 10
	sd a3, 432(sp)
	bge a0, a2, label50
	mv t2, a1
	mv a0, zero
	sd zero, 440(sp)
	j label21
label114:
	mv a3, zero
.p2align 2
label7:
	ld a0, 144(sp)
	li a1, 5376
	addw t3, a2, a3
	addw t4, a5, a3
	addw t5, t0, a3
	addw t6, t1, a3
	addw t2, a0, a3
	mul a0, a3, a1
	add s0, a4, a0
	ld a0, 104(sp)
	ld a1, 112(sp)
	addw a6, a0, a3
	addw a7, a1, a3
	li a0, 2
	bge a3, a0, label126
	mv s1, zero
	mv a0, zero
	sub s2, zero, zero
	li a0, 3
	slli a1, s2, 8
	add s3, s0, a1
	blt zero, a0, label133
.p2align 2
label132:
	addiw a3, a3, 1
	j label7
.p2align 2
label133:
	mv s2, zero
	j label12
.p2align 2
label146:
	addiw s1, s1, 1
	slli a0, s1, 3
	sub s2, a0, s1
	li a0, 3
	slli a1, s2, 8
	add s3, s0, a1
	blt s1, a0, label133
	j label132
.p2align 2
label12:
	addw a1, t2, s2
	slli a0, s2, 3
	addw s5, t4, s2
	addw s6, t5, s2
	addw s7, t6, s2
	addw s8, a6, s2
	addw s9, a7, s2
	sub s4, a0, s2
	slli a0, s4, 7
	addw s4, t3, s2
	add s10, s3, a0
	li a0, 2
	bge s2, a0, label146
	mv s11, zero
.p2align 2
label15:
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
	blt s11, a0, label15
	addiw s2, s2, 1
	j label12
label21:
	li a1, 2880
	ld a0, 440(sp)
	ld a3, 424(sp)
	mul a2, a0, a1
	li a1, 5376
	add a0, a3, a2
	sd a0, 448(sp)
	ld a0, 440(sp)
	ld a3, 432(sp)
	mul a2, a0, a1
	li a1, 100
	add a0, a3, a2
	sd a0, 456(sp)
	ld a0, 440(sp)
	bge a0, a1, label48
	mv a0, zero
	sd zero, 232(sp)
	j label24
.p2align 2
label234:
	ld a0, 440(sp)
	ld a1, 304(sp)
	addiw a0, a0, 1
	ble a1, a0, label48
label561:
	sd a0, 440(sp)
	j label21
label24:
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
	bge a0, a2, label234
	mv a1, zero
	sd zero, 168(sp)
	j label27
.p2align 2
label242:
	ld a0, 232(sp)
	ld a1, 320(sp)
	addiw a0, a0, 1
	ble a1, a0, label46
label562:
	sd a0, 232(sp)
	j label24
.p2align 2
label27:
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
	bge a1, a2, label242
	mv a1, zero
	j label30
label563:
	sd a1, 168(sp)
	j label27
.p2align 2
label258:
	addiw a1, a1, 1
	ld a2, 328(sp)
	bgt a2, a1, label564
.p2align 2
label42:
	ld a1, 168(sp)
	ld a0, 336(sp)
	addiw a1, a1, 1
	ble a0, a1, label44
	j label563
.p2align 2
label30:
	sh1add a2, a1, a1
	ld a4, 128(sp)
	slli a3, a2, 4
	add a2, a4, a3
	slli a3, a1, 3
	sub a5, a3, a1
	slli a4, a5, 5
	li a5, 100000
	add a3, a0, a4
	bge a1, a5, label250
.p2align 2
label251:
	mv a4, zero
	mv t0, zero
	mv a5, a2
	li t3, 1000000
	sub t1, zero, zero
	sh2add t0, t1, a3
	bge zero, t3, label258
.p2align 2
label259:
	mv t1, zero
.p2align 2
label38:
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
	bgt t3, t1, label38
	addiw a4, a4, 1
	ld a5, 312(sp)
	ble a5, a4, label36
	slli t0, a4, 3
	sh3add a5, a4, a2
	li t3, 1000000
	sub t1, t0, a4
	sh2add t0, t1, a3
	blt a4, t3, label259
	addiw a1, a1, 1
	ld a2, 328(sp)
	ble a2, a1, label42
	sh1add a2, a1, a1
	ld a4, 128(sp)
	slli a3, a2, 4
	add a2, a4, a3
	slli a3, a1, 3
	sub a5, a3, a1
	slli a4, a5, 5
	li a5, 100000
	add a3, a0, a4
	blt a1, a5, label251
	ld a1, 168(sp)
	ld a0, 336(sp)
	addiw a1, a1, 1
	ble a0, a1, label44
	j label563
.p2align 2
label250:
	ld a1, 168(sp)
	ld a0, 336(sp)
	addiw a1, a1, 1
	bgt a0, a1, label563
label44:
	ld a0, 232(sp)
	ld a1, 320(sp)
	addiw a0, a0, 1
	bgt a1, a0, label562
label46:
	ld a0, 440(sp)
	ld a1, 304(sp)
	addiw a0, a0, 1
	ble a1, a0, label48
	j label561
.p2align 2
label36:
	addiw a1, a1, 1
	ld a2, 328(sp)
	ble a2, a1, label42
	sh1add a2, a1, a1
	ld a4, 128(sp)
	slli a3, a2, 4
	add a2, a4, a3
	slli a3, a1, 3
	sub a5, a3, a1
	slli a4, a5, 5
	li a5, 100000
	add a3, a0, a4
	blt a1, a5, label251
	ld a1, 168(sp)
	ld a0, 336(sp)
	addiw a1, a1, 1
	ble a0, a1, label44
	j label563
.p2align 2
label564:
	sh1add a2, a1, a1
	ld a4, 128(sp)
	slli a3, a2, 4
	add a2, a4, a3
	slli a3, a1, 3
	sub a5, a3, a1
	slli a4, a5, 5
	li a5, 100000
	add a3, a0, a4
	blt a1, a5, label251
	ld a1, 168(sp)
	ld a0, 336(sp)
	addiw a1, a1, 1
	ble a0, a1, label44
	j label563
label48:
	ld a0, 416(sp)
	ld a2, 296(sp)
	addiw a0, a0, 1
	bgt a2, a0, label302
	mv a1, t2
label50:
	mv a0, a1
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s2, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	ld s10, 64(sp)
	ld s7, 72(sp)
	ld s8, 80(sp)
	ld s9, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 472
	ret
label302:
	mv a1, t2
	sd a0, 416(sp)
	j label18
