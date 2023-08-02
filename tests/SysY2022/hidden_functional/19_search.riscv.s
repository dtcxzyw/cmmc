.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
a:
	.zero	3600
.text
.p2align 2
search:
	addi sp, sp, -160
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s5, 16(sp)
pcrel296:
	auipc a0, %pcrel_hi(a)
	sd s2, 24(sp)
	mv s2, a1
	sd s4, 32(sp)
	addi s4, a0, %pcrel_lo(pcrel296)
	sd s1, 40(sp)
	li s1, 1
	sd s6, 48(sp)
	sd s3, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	sd a1, 152(sp)
	li a1, 10
	sd a2, 144(sp)
	sd a3, 136(sp)
	sd a6, 128(sp)
	sd a4, 120(sp)
	sd a5, 112(sp)
	sd a7, 104(sp)
	bgt a2, a1, label54
	lui s3, 262144
	mv a0, zero
label4:
	ld a3, 136(sp)
	li a1, 4
	sh3add a3, a0, a3
	bge a0, a1, label41
	mv a2, zero
	mv a1, s0
	ld s2, 152(sp)
	slli a5, s0, 4
	sub t0, a5, s0
	sh3add s5, t0, s4
	sh2add a4, s2, s5
	lw a5, 0(a4)
	bne a5, s1, label11
	j label14
label16:
	addiw s6, a0, 1
	li a4, 2
	bge a2, a4, label17
label100:
	mv a0, s6
	j label4
.p2align 2
label11:
	ld a6, 128(sp)
	lw a4, 0(a6)
	beq a1, a4, label12
	lw a4, 0(a3)
	addiw a2, a2, 1
	lw a5, 4(a3)
	addw a1, a1, a4
	addw s2, s2, a5
	slli a5, a1, 4
	sub t0, a5, a1
	sh3add s5, t0, s4
	sh2add a4, s2, s5
	lw a5, 0(a4)
	bne a5, s1, label11
	j label14
label12:
	ld a7, 104(sp)
	lw a4, 0(a7)
	beq s2, a4, label14
	lw a4, 0(a3)
	addiw a2, a2, 1
	lw a5, 4(a3)
	addw a1, a1, a4
	addw s2, s2, a5
	slli a5, a1, 4
	sub t0, a5, a1
	sh3add s5, t0, s4
	sh2add a4, s2, s5
	lw a5, 0(a4)
	bne a5, s1, label11
label14:
	ld a6, 128(sp)
	lw a4, 0(a6)
	bne a1, a4, label16
	ld a7, 104(sp)
	lw a4, 0(a7)
	bne s2, a4, label16
	mv a0, s1
	j label2
label17:
	beq a1, zero, label100
	ld a5, 112(sp)
	lw a2, 0(a5)
	addiw t0, a2, 1
	sltiu a2, s2, 1
	xor a4, a1, t0
	sltiu a0, a4, 1
	or a5, a0, a2
	bne a5, zero, label100
	ld a4, 120(sp)
	lw a0, 0(a4)
	addiw a2, a0, 1
	beq s2, a2, label100
	sh2add a2, s2, s5
	sw zero, 0(a2)
	lw a0, 0(a3)
	lw a4, 4(a3)
	subw s7, a1, a0
	ld a2, 144(sp)
	subw s8, s2, a4
	li a1, 10
	addiw a0, a2, 1
	bgt a0, a1, label130
	lui s9, 262144
	mv s10, zero
label23:
	ld a3, 136(sp)
	li a0, 4
	sh3add a3, s10, a3
	bge s10, a0, label26
	mv a2, zero
	mv a0, s8
	mv a1, s7
label27:
	slli a4, a1, 4
	sub t1, a4, a1
	sh3add t0, t1, s4
	sh2add a5, a0, t0
	lw a4, 0(a5)
	beq a4, s1, label34
	ld a6, 128(sp)
	lw a4, 0(a6)
	beq a1, a4, label33
label32:
	lw a4, 0(a3)
	addiw a2, a2, 1
	lw a5, 4(a3)
	addw a1, a1, a4
	addw a0, a0, a5
	j label27
label54:
	lui a0, 262144
label2:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s2, 24(sp)
	ld s4, 32(sp)
	ld s1, 40(sp)
	ld s6, 48(sp)
	ld s3, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 160
	ret
label33:
	ld a7, 104(sp)
	lw a4, 0(a7)
	bne a0, a4, label32
label34:
	ld a6, 128(sp)
	lw a4, 0(a6)
	bne a1, a4, label35
	ld a7, 104(sp)
	lw a4, 0(a7)
	beq a0, a4, label211
label35:
	addiw s10, s10, 1
	li a4, 2
	blt a2, a4, label23
	beq a1, zero, label23
	ld a5, 112(sp)
	lw t2, 0(a5)
	addiw t1, t2, 1
	sltiu t2, a0, 1
	xor a4, a1, t1
	sltiu a2, a4, 1
	or a5, a2, t2
	bne a5, zero, label23
	ld a4, 120(sp)
	lw a2, 0(a4)
	addiw a5, a2, 1
	beq a0, a5, label23
	sh2add s11, a0, t0
	sw zero, 0(s11)
	lw a2, 0(a3)
	lw a4, 4(a3)
	subw t0, a1, a2
	ld a2, 144(sp)
	subw a1, a0, a4
	ld a7, 104(sp)
	addiw a2, a2, 2
	ld a5, 112(sp)
	ld a4, 120(sp)
	ld a6, 128(sp)
	ld a3, 136(sp)
	mv a0, t0
	jal search
	sw s1, 0(s11)
	addiw a1, a0, 1
	min s9, s9, a1
	j label23
label130:
	lui a0, 262144
label21:
	addiw a1, a0, 1
	sh2add a2, s2, s5
	mv a0, s6
	min s3, s3, a1
	sw s1, 0(a2)
	j label4
label41:
	lui a0, 262144
	li a1, 10
	bgt s3, a1, label2
	mv a0, s3
	j label2
label26:
	lui a0, 262144
	li a1, 10
	bgt s9, a1, label21
	mv a0, s9
	addiw a1, s9, 1
	sh2add a2, s2, s5
	mv a0, s6
	min s3, s3, a1
	sw s1, 0(a2)
	j label4
label211:
	mv a0, s1
	addiw a1, s1, 1
	sh2add a2, s2, s5
	mv a0, s6
	min s3, s3, a1
	sw s1, 0(a2)
	j label4
.p2align 2
.globl main
main:
	addi sp, sp, -152
	li a3, -1
	li a2, 1
	zext.w a1, a3
	sd ra, 0(sp)
	sd s4, 8(sp)
	li s4, 1
	sd s5, 16(sp)
	zext.w a0, s4
	slli s5, a2, 32
	sd s0, 24(sp)
	li s0, 2
	sd s3, 32(sp)
	sd s9, 40(sp)
	mv s9, zero
	sd s10, 48(sp)
	mv s10, zero
	sd s1, 56(sp)
	li s1, 3
	sd s6, 64(sp)
	li s6, 28
	sd s7, 72(sp)
	li s7, 11
	sd s2, 80(sp)
	sd s8, 88(sp)
	sd s11, 96(sp)
	sd a0, 104(sp)
	sub a0, zero, s5
	sd a1, 112(sp)
	sd s5, 120(sp)
	sd a0, 128(sp)
pcrel987:
	auipc a0, %pcrel_hi(a)
	sw zero, 140(sp)
	addi s3, a0, %pcrel_lo(pcrel987)
	sw zero, 136(sp)
.p2align 2
label298:
	jal getint
	sw a0, 148(sp)
	mv s2, a0
	jal getint
	sw a0, 144(sp)
	bne s2, zero, label344
	j label320
.p2align 2
label538:
	mv s11, s4
	lw a0, 148(sp)
	ble s4, a0, label312
	j label542
.p2align 2
label973:
	addiw s2, s2, 1
	lw a0, 144(sp)
	slli a1, s2, 4
	sub a2, a1, s2
	sh3add s8, a2, s3
	ble s2, a0, label538
.p2align 2
label319:
	addi a3, sp, 104
	addi a4, sp, 148
	addi a5, sp, 144
	addi a6, sp, 140
	addi a7, sp, 136
	mv a0, s10
	mv a1, s9
	mv a2, s4
	jal search
	mv a1, a0
	blt a0, s7, label958
	li a1, -1
.p2align 2
label958:
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	j label298
.p2align 2
label312:
	jal getint
	sh2add a1, s11, s8
	sw a0, 0(a1)
	beq a0, s0, label550
	beq a0, s1, label317
	j label972
.p2align 2
label550:
	mv s9, s11
	mv s10, s2
	addiw s11, s11, 1
	lw a0, 148(sp)
	ble s11, a0, label312
	j label973
.p2align 2
label317:
	sw s2, 140(sp)
	sw s11, 136(sp)
	addiw s11, s11, 1
	lw a0, 148(sp)
	ble s11, a0, label312
	addiw s2, s2, 1
	lw a0, 144(sp)
	slli a1, s2, 4
	sub a2, a1, s2
	sh3add s8, a2, s3
	ble s2, a0, label538
	j label319
.p2align 2
label972:
	addiw s11, s11, 1
	lw a0, 148(sp)
	ble s11, a0, label312
	addiw s2, s2, 1
	lw a0, 144(sp)
	slli a1, s2, 4
	sub a2, a1, s2
	sh3add s8, a2, s3
	ble s2, a0, label538
	j label319
.p2align 2
label344:
	mv a2, zero
.p2align 2
label301:
	slli a3, a2, 4
	ori a1, s5, 1
	sub a4, a3, a2
	addiw a2, a2, 4
	sh3add a0, a4, s3
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
	blt a2, s6, label301
	slli a4, a2, 4
	mv s2, s4
	sub a3, a4, a2
	sh3add a0, a3, s3
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
	slli a1, s4, 4
	sub a2, a1, s4
	sh3add s8, a2, s3
	ble s4, a0, label538
	j label319
label320:
	mv a0, zero
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s5, 16(sp)
	ld s0, 24(sp)
	ld s3, 32(sp)
	ld s9, 40(sp)
	ld s10, 48(sp)
	ld s1, 56(sp)
	ld s6, 64(sp)
	ld s7, 72(sp)
	ld s2, 80(sp)
	ld s8, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 152
	ret
.p2align 2
label542:
	addiw s2, s2, 1
	lw a0, 144(sp)
	slli a1, s2, 4
	sub a2, a1, s2
	sh3add s8, a2, s3
	ble s2, a0, label538
	j label319
