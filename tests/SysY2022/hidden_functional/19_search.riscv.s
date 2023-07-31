.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
a:
	.zero	3600
.text
search:
.p2align 2
	addi sp, sp, -152
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s5, 16(sp)
pcrel292:
	auipc a0, %pcrel_hi(a)
	sd s1, 24(sp)
	mv s1, a1
	sd s6, 32(sp)
	sd s2, 40(sp)
	addi s2, a0, %pcrel_lo(pcrel292)
	sd s4, 48(sp)
	li a0, 10
	sd s3, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	sd a2, 144(sp)
	sd a3, 136(sp)
	sd a6, 128(sp)
	sd a4, 120(sp)
	sd a5, 112(sp)
	sd a7, 104(sp)
	bgt a2, a0, label54
	lui s4, 262144
	mv a0, zero
label2:
	ld a3, 136(sp)
	li a1, 4
	sh3add a3, a0, a3
	bge a0, a1, label5
	mv a2, zero
	mv s3, s1
	mv a1, s0
	j label6
label5:
	li a2, 10
	lui a0, 262144
	bgt s4, a2, label40
	mv a0, s4
	j label40
label6:
	slli a5, a1, 4
	sub a4, a5, a1
	li a5, 1
	sh3add s5, a4, s2
	sh2add t0, s3, s5
	lw a4, 0(t0)
	beq a4, a5, label10
	ld a6, 128(sp)
	lw a4, 0(a6)
	beq a1, a4, label38
label201:
	lw a4, 0(a3)
	addiw a2, a2, 1
	lw a5, 4(a3)
	addw a1, a1, a4
	addw s3, s3, a5
	j label6
label38:
	ld a7, 104(sp)
	lw a4, 0(a7)
	bne s3, a4, label201
label10:
	ld a6, 128(sp)
	lw a4, 0(a6)
	beq a1, a4, label36
label11:
	addiw s6, a0, 1
	li a0, 2
	blt a2, a0, label81
	j label12
label36:
	ld a7, 104(sp)
	lw a4, 0(a7)
	beq s3, a4, label197
	j label11
label81:
	mv a0, s6
	j label2
label12:
	beq a1, zero, label81
	ld a5, 112(sp)
	lw a0, 0(a5)
	addiw a4, a0, 1
	xor a2, a1, a4
	sltiu a4, s3, 1
	sltiu a0, a2, 1
	or a2, a0, a4
	bne a2, zero, label81
	ld a4, 120(sp)
	lw a0, 0(a4)
	addiw a2, a0, 1
	beq s3, a2, label81
	sh2add a2, s3, s5
	sw zero, 0(a2)
	lw a4, 0(a3)
	lw a0, 4(a3)
	subw s7, a1, a4
	ld a2, 144(sp)
	subw s8, s3, a0
	li a1, 10
	addiw a0, a2, 1
	ble a0, a1, label110
	lui a0, 262144
label16:
	addiw a1, a0, 1
	sh2add a0, s3, s5
	min s4, s4, a1
	li a1, 1
	sw a1, 0(a0)
	mv a0, s6
	j label2
label54:
	lui a0, 262144
label40:
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
	addi sp, sp, 152
	ret
label110:
	lui s9, 262144
	mv s10, zero
label18:
	ld a3, 136(sp)
	li a0, 4
	sh3add t0, s10, a3
	bge s10, a0, label21
	mv a2, zero
	mv a0, s8
	mv a1, s7
	j label22
label21:
	li a2, 10
	lui a0, 262144
	bgt s9, a2, label16
	mv a0, s9
	addiw a1, s9, 1
	sh2add a0, s3, s5
	min s4, s4, a1
	li a1, 1
	sw a1, 0(a0)
	mv a0, s6
	j label2
label22:
	slli a4, a1, 4
	sub a5, a4, a1
	sh3add a3, a5, s2
	li a5, 1
	sh2add t1, a0, a3
	lw a4, 0(t1)
	beq a4, a5, label26
	ld a6, 128(sp)
	lw a4, 0(a6)
	beq a1, a4, label35
label34:
	lw a4, 0(t0)
	addiw a2, a2, 1
	lw a3, 4(t0)
	addw a1, a1, a4
	addw a0, a0, a3
	j label22
label26:
	ld a6, 128(sp)
	lw a4, 0(a6)
	bne a1, a4, label27
	ld a7, 104(sp)
	lw a4, 0(a7)
	bne a0, a4, label27
	li a0, 1
	addiw a1, a0, 1
	sh2add a0, s3, s5
	min s4, s4, a1
	li a1, 1
	sw a1, 0(a0)
	mv a0, s6
	j label2
label35:
	ld a7, 104(sp)
	lw a4, 0(a7)
	beq a0, a4, label26
	j label34
label27:
	addiw s10, s10, 1
	li a4, 2
	blt a2, a4, label18
	beq a1, zero, label18
	ld a5, 112(sp)
	lw a2, 0(a5)
	addiw a4, a2, 1
	xor a5, a1, a4
	sltiu a4, a0, 1
	sltiu a2, a5, 1
	or a5, a2, a4
	bne a5, zero, label18
	ld a4, 120(sp)
	lw a2, 0(a4)
	addiw a5, a2, 1
	beq a0, a5, label18
	sh2add s11, a0, a3
	sw zero, 0(s11)
	lw a2, 0(t0)
	lw a3, 4(t0)
	subw a1, a1, a2
	subw t0, a0, a3
	ld a2, 144(sp)
	ld a7, 104(sp)
	addiw a2, a2, 2
	ld a5, 112(sp)
	ld a6, 128(sp)
	ld a3, 136(sp)
	mv a0, a1
	mv a1, t0
	jal search
	addiw a1, a0, 1
	li a0, 1
	min s9, s9, a1
	sw a0, 0(s11)
	j label18
label197:
	li a0, 1
	j label40
.globl main
main:
.p2align 2
	addi sp, sp, -144
	li a0, 1
	li a1, -1
	sd ra, 0(sp)
	sd s1, 8(sp)
	addi s1, sp, 96
	sd s6, 16(sp)
	mv s6, zero
	sd s2, 24(sp)
	addi s2, sp, 100
	sd s3, 32(sp)
	addi s3, sp, 104
	sd s4, 40(sp)
	addi s4, sp, 108
	sd s5, 48(sp)
	addi s5, sp, 112
	sd s0, 56(sp)
	sd s10, 64(sp)
	sd s7, 72(sp)
	sd s9, 80(sp)
	sd s8, 88(sp)
	sw a0, 112(sp)
	sw zero, 116(sp)
	sw a1, 120(sp)
	sw zero, 124(sp)
	sw zero, 128(sp)
	sw a0, 132(sp)
pcrel788:
	auipc a0, %pcrel_hi(a)
	sw zero, 136(sp)
	addi s0, a0, %pcrel_lo(pcrel788)
	sw a1, 140(sp)
	sw zero, 100(sp)
	sw zero, 96(sp)
	mv s10, zero
.p2align 2
label294:
	jal getint
	sw a0, 108(sp)
	mv s7, a0
	jal getint
	sw a0, 104(sp)
	bne s7, zero, label340
	j label316
.p2align 2
label313:
	sw s6, 100(sp)
	sw s8, 96(sp)
	addiw s8, s8, 1
	lw a0, 108(sp)
	ble s8, a0, label308
	addiw s6, s6, 1
	lw a0, 104(sp)
	slli a2, s6, 4
	sub a1, a2, s6
	sh3add s7, a1, s0
	ble s6, a0, label534
.p2align 2
label315:
	mv a0, s10
	li a2, 1
	mv a1, s9
	mv a3, s5
	mv a4, s4
	mv a5, s3
	mv a6, s2
	mv a7, s1
	jal search
	mv a1, a0
	li a2, 11
	blt a0, a2, label761
	li a1, -1
.p2align 2
label761:
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	mv s6, s9
	j label294
.p2align 2
label304:
	lw a0, 108(sp)
	bgt s8, a0, label538
.p2align 2
label308:
	jal getint
	li a2, 2
	sh2add a1, s8, s7
	sw a0, 0(a1)
	beq a0, a2, label546
	li a1, 3
	beq a0, a1, label313
	addiw s8, s8, 1
	lw a0, 108(sp)
	ble s8, a0, label308
	addiw s6, s6, 1
	lw a0, 104(sp)
	slli a2, s6, 4
	sub a1, a2, s6
	sh3add s7, a1, s0
	bgt s6, a0, label315
.p2align 2
label534:
	li s8, 1
	j label304
.p2align 2
label546:
	mv s9, s8
	mv s10, s6
	addiw s8, s8, 1
	lw a0, 108(sp)
	ble s8, a0, label308
	addiw s6, s6, 1
	lw a0, 104(sp)
	slli a2, s6, 4
	sub a1, a2, s6
	sh3add s7, a1, s0
	ble s6, a0, label534
	j label315
.p2align 2
label538:
	addiw s6, s6, 1
	lw a0, 104(sp)
	slli a2, s6, 4
	sub a1, a2, s6
	sh3add s7, a1, s0
	ble s6, a0, label534
	j label315
label340:
	mv a2, zero
.p2align 2
label297:
	slli a1, a2, 4
	sub a3, a1, a2
	addiw a2, a2, 4
	li a1, 1
	sh3add a0, a3, s0
	sw a1, 0(a0)
	sw a1, 4(a0)
	sw a1, 8(a0)
	sw a1, 12(a0)
	sw a1, 16(a0)
	sw a1, 20(a0)
	sw a1, 24(a0)
	sw a1, 28(a0)
	sw a1, 32(a0)
	sw a1, 36(a0)
	sw a1, 40(a0)
	sw a1, 44(a0)
	sw a1, 48(a0)
	sw a1, 52(a0)
	sw a1, 56(a0)
	sw a1, 60(a0)
	sw a1, 64(a0)
	sw a1, 68(a0)
	sw a1, 72(a0)
	sw a1, 76(a0)
	sw a1, 80(a0)
	sw a1, 84(a0)
	sw a1, 88(a0)
	sw a1, 92(a0)
	sw a1, 96(a0)
	sw a1, 100(a0)
	sw a1, 104(a0)
	sw a1, 108(a0)
	sw a1, 112(a0)
	sw a1, 116(a0)
	sw a1, 120(a0)
	sw a1, 124(a0)
	sw a1, 128(a0)
	sw a1, 132(a0)
	sw a1, 136(a0)
	sw a1, 140(a0)
	sw a1, 144(a0)
	sw a1, 148(a0)
	sw a1, 152(a0)
	sw a1, 156(a0)
	sw a1, 160(a0)
	sw a1, 164(a0)
	sw a1, 168(a0)
	sw a1, 172(a0)
	sw a1, 176(a0)
	sw a1, 180(a0)
	sw a1, 184(a0)
	sw a1, 188(a0)
	sw a1, 192(a0)
	sw a1, 196(a0)
	sw a1, 200(a0)
	sw a1, 204(a0)
	sw a1, 208(a0)
	sw a1, 212(a0)
	sw a1, 216(a0)
	sw a1, 220(a0)
	sw a1, 224(a0)
	sw a1, 228(a0)
	sw a1, 232(a0)
	sw a1, 236(a0)
	sw a1, 240(a0)
	sw a1, 244(a0)
	sw a1, 248(a0)
	sw a1, 252(a0)
	sw a1, 256(a0)
	sw a1, 260(a0)
	sw a1, 264(a0)
	sw a1, 268(a0)
	sw a1, 272(a0)
	sw a1, 276(a0)
	sw a1, 280(a0)
	sw a1, 284(a0)
	sw a1, 288(a0)
	sw a1, 292(a0)
	sw a1, 296(a0)
	sw a1, 300(a0)
	sw a1, 304(a0)
	sw a1, 308(a0)
	sw a1, 312(a0)
	sw a1, 316(a0)
	sw a1, 320(a0)
	sw a1, 324(a0)
	sw a1, 328(a0)
	sw a1, 332(a0)
	sw a1, 336(a0)
	sw a1, 340(a0)
	sw a1, 344(a0)
	sw a1, 348(a0)
	sw a1, 352(a0)
	sw a1, 356(a0)
	sw a1, 360(a0)
	sw a1, 364(a0)
	sw a1, 368(a0)
	sw a1, 372(a0)
	sw a1, 376(a0)
	sw a1, 380(a0)
	sw a1, 384(a0)
	sw a1, 388(a0)
	sw a1, 392(a0)
	sw a1, 396(a0)
	sw a1, 400(a0)
	sw a1, 404(a0)
	sw a1, 408(a0)
	sw a1, 412(a0)
	sw a1, 416(a0)
	sw a1, 420(a0)
	sw a1, 424(a0)
	sw a1, 428(a0)
	sw a1, 432(a0)
	sw a1, 436(a0)
	sw a1, 440(a0)
	sw a1, 444(a0)
	sw a1, 448(a0)
	sw a1, 452(a0)
	sw a1, 456(a0)
	sw a1, 460(a0)
	sw a1, 464(a0)
	sw a1, 468(a0)
	sw a1, 472(a0)
	sw a1, 476(a0)
	li a0, 28
	blt a2, a0, label297
	slli a0, a2, 4
	mv s9, s6
	sub a2, a0, a2
	li a0, 1
	sh3add a1, a2, s0
	mv s6, a0
	sw a0, 0(a1)
	sw a0, 4(a1)
	sw a0, 8(a1)
	sw a0, 12(a1)
	sw a0, 16(a1)
	sw a0, 20(a1)
	sw a0, 24(a1)
	sw a0, 28(a1)
	sw a0, 32(a1)
	sw a0, 36(a1)
	sw a0, 40(a1)
	sw a0, 44(a1)
	sw a0, 48(a1)
	sw a0, 52(a1)
	sw a0, 56(a1)
	sw a0, 60(a1)
	sw a0, 64(a1)
	sw a0, 68(a1)
	sw a0, 72(a1)
	sw a0, 76(a1)
	sw a0, 80(a1)
	sw a0, 84(a1)
	sw a0, 88(a1)
	sw a0, 92(a1)
	sw a0, 96(a1)
	sw a0, 100(a1)
	sw a0, 104(a1)
	sw a0, 108(a1)
	sw a0, 112(a1)
	sw a0, 116(a1)
	sw a0, 120(a1)
	sw a0, 124(a1)
	sw a0, 128(a1)
	sw a0, 132(a1)
	sw a0, 136(a1)
	sw a0, 140(a1)
	sw a0, 144(a1)
	sw a0, 148(a1)
	sw a0, 152(a1)
	sw a0, 156(a1)
	sw a0, 160(a1)
	sw a0, 164(a1)
	sw a0, 168(a1)
	sw a0, 172(a1)
	sw a0, 176(a1)
	sw a0, 180(a1)
	sw a0, 184(a1)
	sw a0, 188(a1)
	sw a0, 192(a1)
	sw a0, 196(a1)
	sw a0, 200(a1)
	sw a0, 204(a1)
	sw a0, 208(a1)
	sw a0, 212(a1)
	sw a0, 216(a1)
	sw a0, 220(a1)
	sw a0, 224(a1)
	sw a0, 228(a1)
	sw a0, 232(a1)
	sw a0, 236(a1)
	lw a0, 104(sp)
	slli a2, s6, 4
	sub a1, a2, s6
	sh3add s7, a1, s0
	ble s6, a0, label534
	j label315
label316:
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	ld s4, 40(sp)
	ld s5, 48(sp)
	ld s0, 56(sp)
	ld s10, 64(sp)
	ld s7, 72(sp)
	ld s9, 80(sp)
	ld s8, 88(sp)
	addi sp, sp, 144
	ret
