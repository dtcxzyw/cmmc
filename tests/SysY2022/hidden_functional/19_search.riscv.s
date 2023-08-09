.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
a:
	.zero	3600
.text
.p2align 2
search:
	addi sp, sp, -176
	mv t0, a0
	sd ra, 0(sp)
	sd s4, 8(sp)
	mv s4, a1
	sd s1, 16(sp)
	li s1, 1
	sd s6, 24(sp)
	sd s0, 32(sp)
	sd s5, 40(sp)
	sd s3, 48(sp)
	sd s2, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	sd a3, 160(sp)
	sd a0, 152(sp)
pcrel327:
	auipc a0, %pcrel_hi(a)
	sd a1, 144(sp)
	addi a3, a0, %pcrel_lo(pcrel327)
	li a1, 10
	sd a2, 136(sp)
	sd a6, 128(sp)
	sd a4, 120(sp)
	sd a5, 112(sp)
	sd a7, 104(sp)
	sd a3, 168(sp)
	bgt a2, a1, label70
	ld a3, 160(sp)
	lui s3, 262144
	mv a0, zero
	mv s0, a3
	j label3
label18:
	addiw s6, a0, 1
	li a3, 2
	bge a1, a3, label20
label19:
	addi s0, s0, 8
	mv a0, s6
label3:
	li a1, 4
	bge a0, a1, label55
	ld t0, 152(sp)
	ld a3, 168(sp)
	slli a1, t0, 4
	ld s4, 144(sp)
	sub a2, a1, t0
	mv a1, zero
	sh3add s2, a2, a3
	mv a2, t0
	sh2add a4, s4, s2
	lw a3, 0(a4)
	bne a3, s1, label13
	j label16
.p2align 2
label14:
	lw a3, 0(s0)
	addiw a1, a1, 1
	slli a5, a3, 4
	addw a2, a2, a3
	lw a4, 4(s0)
	addw s4, s4, a4
	subw a4, a5, a3
	sh3add s2, a4, s2
	sh2add a4, s4, s2
	lw a3, 0(a4)
	beq a3, s1, label16
.p2align 2
label13:
	ld a6, 128(sp)
	lw a3, 0(a6)
	bne a2, a3, label14
	ld a7, 104(sp)
	lw a3, 0(a7)
	bne s4, a3, label14
label16:
	ld a6, 128(sp)
	lw a3, 0(a6)
	bne a2, a3, label18
	ld a7, 104(sp)
	lw a3, 0(a7)
	bne s4, a3, label18
	mv a0, s1
	j label56
label20:
	beq a2, zero, label19
	ld a5, 112(sp)
	lw a4, 0(a5)
	addiw a3, a4, 1
	sltiu a4, s4, 1
	xor a1, a2, a3
	sltiu a0, a1, 1
	or a3, a0, a4
	bne a3, zero, label19
	ld a4, 120(sp)
	lw a1, 0(a4)
	addiw a0, a1, 1
	beq s4, a0, label19
	sh2add a3, s4, s2
	sw zero, 0(a3)
	lw a1, 0(s0)
	lw a0, 4(s0)
	subw s7, a2, a1
	subw s8, s4, a0
	li a1, 10
	ld a2, 136(sp)
	addiw a3, a2, 1
	bgt a3, a1, label149
	ld a3, 160(sp)
	lui s9, 262144
	mv s10, zero
	mv s5, a3
	j label27
label70:
	lui a0, 262144
label56:
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s1, 16(sp)
	ld s6, 24(sp)
	ld s0, 32(sp)
	ld s5, 40(sp)
	ld s3, 48(sp)
	ld s2, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 176
	ret
label37:
	ld a6, 128(sp)
	lw a4, 0(a6)
	beq a2, a4, label47
label38:
	addiw s10, s10, 1
	li a4, 2
	blt a3, a4, label43
	bne a2, zero, label40
label43:
	addi s5, s5, 8
label27:
	li a0, 4
	bge s10, a0, label51
	slli a2, s7, 4
	ld a3, 168(sp)
	sub a1, a2, s7
	mv a2, s7
	sh3add a0, a1, a3
	mv a1, s8
	mv a3, zero
	j label32
label50:
	ld a7, 104(sp)
	lw a4, 0(a7)
	beq a1, a4, label37
label49:
	lw a4, 0(s5)
	addiw a3, a3, 1
	slli t0, a4, 4
	addw a2, a2, a4
	lw a5, 4(s5)
	addw a1, a1, a5
	subw a5, t0, a4
	sh3add a0, a5, a0
label32:
	sh2add a5, a1, a0
	lw a4, 0(a5)
	beq a4, s1, label37
	ld a6, 128(sp)
	lw a4, 0(a6)
	beq a2, a4, label50
	j label49
label47:
	ld a7, 104(sp)
	lw a4, 0(a7)
	beq a1, a4, label211
	j label38
label40:
	ld a5, 112(sp)
	lw a4, 0(a5)
	addiw t1, a4, 1
	sltiu a4, a1, 1
	xor t0, a2, t1
	sltiu a3, t0, 1
	or a5, a3, a4
	bne a5, zero, label43
	ld a4, 120(sp)
	lw a5, 0(a4)
	addiw a3, a5, 1
	beq a1, a3, label43
	sh2add s11, a1, a0
	sw zero, 0(s11)
	lw a3, 0(s5)
	lw a4, 4(s5)
	subw a0, a2, a3
	subw a1, a1, a4
	ld a2, 136(sp)
	ld a7, 104(sp)
	addiw a2, a2, 2
	ld a5, 112(sp)
	ld a4, 120(sp)
	ld a6, 128(sp)
	ld a3, 160(sp)
	jal search
	addi s5, s5, 8
	addiw a1, a0, 1
	sw s1, 0(s11)
	min s9, s9, a1
	j label27
label55:
	lui a0, 262144
	li a1, 10
	bgt s3, a1, label56
	mv a0, s3
	j label56
label51:
	lui a0, 262144
	li a1, 10
	bgt s9, a1, label52
	mv a0, s9
label52:
	addiw a1, a0, 1
	sh2add a2, s4, s2
	addi s0, s0, 8
	mv a0, s6
	min s3, s3, a1
	sw s1, 0(a2)
	j label3
label211:
	addiw a1, s1, 1
	sh2add a2, s4, s2
	addi s0, s0, 8
	mv a0, s6
	min s3, s3, a1
	sw s1, 0(a2)
	j label3
label149:
	lui a0, 262144
	sh2add a2, s4, s2
	addi s0, s0, 8
	addiw a1, a0, 1
	sw s1, 0(a2)
	mv a0, s6
	min s3, s3, a1
	j label3
.p2align 2
.globl main
main:
	addi sp, sp, -152
	li a3, -1
	li a2, 1
	zext.w a1, a3
	sd ra, 0(sp)
	sd s9, 8(sp)
	li s9, 1
	sd s2, 16(sp)
	zext.w a0, s9
	slli s2, a2, 32
	sd s6, 24(sp)
	sd s1, 32(sp)
	sd s4, 40(sp)
	sd s10, 48(sp)
	sd s11, 56(sp)
	sd s0, 64(sp)
	sd s5, 72(sp)
	sd s3, 80(sp)
	sd s7, 88(sp)
	sd s8, 96(sp)
	sd a0, 104(sp)
	sub a0, zero, s2
	sd a1, 112(sp)
	sd s2, 120(sp)
	sd a0, 128(sp)
	sw zero, 140(sp)
	sw zero, 136(sp)
	jal getint
	sw a0, 148(sp)
	mv s6, a0
	jal getint
	li s5, 11
	li s3, 28
	li s1, 3
	li s0, 2
	mv s11, zero
	mv s10, zero
pcrel1028:
	auipc a1, %pcrel_hi(a)
	sw a0, 144(sp)
	addi s4, a1, %pcrel_lo(pcrel1028)
	bne s6, zero, label334
	j label333
.p2align 2
label360:
	addi a3, sp, 104
	addi a4, sp, 148
	addi a5, sp, 144
	addi a6, sp, 140
	addi a7, sp, 136
	li s9, 1
	mv a0, s11
	mv a1, s10
	mv a2, s9
	jal search
	mv a1, a0
	blt a0, s5, label998
	li a1, -1
.p2align 2
label998:
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	jal getint
	sw a0, 148(sp)
	mv s6, a0
	jal getint
	sw a0, 144(sp)
	beq s6, zero, label333
.p2align 2
label334:
	mv a0, s4
	mv a2, zero
	j label335
.p2align 2
label361:
	addi a0, a0, 480
.p2align 2
label335:
	ori a1, s2, 1
	addiw a2, a2, 4
	sd a1, 0(a0)
	sd a1, 8(a0)
	sd a1, 16(a0)
	sd a1, 24(a0)
	sd a1, 32(a0)
	sd a1, 40(a0)
	sd a1, 48(a0)
	sd a1, 56(a0)
	sd a1, 64(a0)
	sd a1, 72(a0)
	sd a1, 80(a0)
	sd a1, 88(a0)
	sd a1, 96(a0)
	sd a1, 104(a0)
	sd a1, 112(a0)
	sd a1, 120(a0)
	sd a1, 128(a0)
	sd a1, 136(a0)
	sd a1, 144(a0)
	sd a1, 152(a0)
	sd a1, 160(a0)
	sd a1, 168(a0)
	sd a1, 176(a0)
	sd a1, 184(a0)
	sd a1, 192(a0)
	sd a1, 200(a0)
	sd a1, 208(a0)
	sd a1, 216(a0)
	sd a1, 224(a0)
	sd a1, 232(a0)
	sd a1, 240(a0)
	sd a1, 248(a0)
	sd a1, 256(a0)
	sd a1, 264(a0)
	sd a1, 272(a0)
	sd a1, 280(a0)
	sd a1, 288(a0)
	sd a1, 296(a0)
	sd a1, 304(a0)
	sd a1, 312(a0)
	sd a1, 320(a0)
	sd a1, 328(a0)
	sd a1, 336(a0)
	sd a1, 344(a0)
	sd a1, 352(a0)
	sd a1, 360(a0)
	sd a1, 368(a0)
	sd a1, 376(a0)
	sd a1, 384(a0)
	sd a1, 392(a0)
	sd a1, 400(a0)
	sd a1, 408(a0)
	sd a1, 416(a0)
	sd a1, 424(a0)
	sd a1, 432(a0)
	sd a1, 440(a0)
	sd a1, 448(a0)
	sd a1, 456(a0)
	sd a1, 464(a0)
	sd a1, 472(a0)
	blt a2, s3, label361
	slli a4, a2, 4
	addi s7, s4, 120
	li s9, 1
	sub a3, a4, a2
	mv s6, s9
	sh3add a0, a3, s4
	sd a1, 0(a0)
	sd a1, 8(a0)
	sd a1, 16(a0)
	sd a1, 24(a0)
	sd a1, 32(a0)
	sd a1, 40(a0)
	sd a1, 48(a0)
	sd a1, 56(a0)
	sd a1, 64(a0)
	sd a1, 72(a0)
	sd a1, 80(a0)
	sd a1, 88(a0)
	sd a1, 96(a0)
	sd a1, 104(a0)
	sd a1, 112(a0)
	sd a1, 120(a0)
	sd a1, 128(a0)
	sd a1, 136(a0)
	sd a1, 144(a0)
	sd a1, 152(a0)
	sd a1, 160(a0)
	sd a1, 168(a0)
	sd a1, 176(a0)
	sd a1, 184(a0)
	sd a1, 192(a0)
	sd a1, 200(a0)
	sd a1, 208(a0)
	sd a1, 216(a0)
	sd a1, 224(a0)
	sd a1, 232(a0)
	lw a0, 144(sp)
	ble s9, a0, label344
	j label360
.p2align 2
label588:
	bne a0, s1, label1013
	sw s6, 140(sp)
	mv a0, s11
	sw s9, 136(sp)
	addiw s9, s9, 1
	lw a1, 148(sp)
	bgt s9, a1, label598
.p2align 2
label359:
	addi s8, s8, 4
	mv s11, a0
.p2align 2
label349:
	jal getint
	sw a0, 0(s8)
	bne a0, s0, label588
	mv s10, s9
	mv a0, s6
	lw a1, 148(sp)
	addiw s9, s9, 1
	ble s9, a1, label359
	mv s11, s6
	addiw s6, s6, 1
	addi s7, s7, 120
	lw a0, 144(sp)
	bgt s6, a0, label360
.p2align 2
label344:
	lw a0, 148(sp)
	ble a0, zero, label345
	addi s8, s7, 4
	li s9, 1
	j label349
.p2align 2
label1013:
	mv a0, s11
	addiw s9, s9, 1
	lw a1, 148(sp)
	ble s9, a1, label359
	addiw s6, s6, 1
	addi s7, s7, 120
	lw a0, 144(sp)
	ble s6, a0, label344
	j label360
.p2align 2
label345:
	addiw s6, s6, 1
	addi s7, s7, 120
	lw a0, 144(sp)
	ble s6, a0, label344
	j label360
.p2align 2
label598:
	mv s11, a0
	addiw s6, s6, 1
	addi s7, s7, 120
	lw a0, 144(sp)
	ble s6, a0, label344
	j label360
label333:
	mv a0, zero
	ld ra, 0(sp)
	ld s9, 8(sp)
	ld s2, 16(sp)
	ld s6, 24(sp)
	ld s1, 32(sp)
	ld s4, 40(sp)
	ld s10, 48(sp)
	ld s11, 56(sp)
	ld s0, 64(sp)
	ld s5, 72(sp)
	ld s3, 80(sp)
	ld s7, 88(sp)
	ld s8, 96(sp)
	addi sp, sp, 152
	ret
