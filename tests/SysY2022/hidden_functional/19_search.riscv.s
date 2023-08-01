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
	slli a4, s0, 4
	sub a5, a4, s0
	sh3add s5, a5, s4
	sh2add a4, s2, s5
	lw a5, 0(a4)
	bne a5, s1, label11
	j label14
label16:
	addiw s6, a0, 1
	li a0, 2
	bge a2, a0, label17
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
	slli a4, a1, 4
	sub a5, a4, a1
	sh3add s5, a5, s4
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
	slli a4, a1, 4
	sub a5, a4, a1
	sh3add s5, a5, s4
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
	lw a0, 0(a5)
	addiw a2, a0, 1
	xor a4, a1, a2
	sltiu a2, s2, 1
	sltiu a0, a4, 1
	or a4, a0, a2
	bne a4, zero, label100
	ld a4, 120(sp)
	lw a2, 0(a4)
	addiw a0, a2, 1
	beq s2, a0, label100
	sh2add a2, s2, s5
	sw zero, 0(a2)
	lw a0, 0(a3)
	subw s7, a1, a0
	lw a1, 4(a3)
	ld a2, 144(sp)
	subw s8, s2, a1
	addiw a0, a2, 1
	li a1, 10
	bgt a0, a1, label130
	lui s9, 262144
	mv s10, zero
label23:
	ld a3, 136(sp)
	li a0, 4
	sh3add t0, s10, a3
	bge s10, a0, label26
	mv a2, zero
	mv a0, s8
	mv a1, s7
label27:
	slli a5, a1, 4
	sub a4, a5, a1
	sh3add a3, a4, s4
	sh2add a5, a0, a3
	lw a4, 0(a5)
	beq a4, s1, label34
	ld a6, 128(sp)
	lw a4, 0(a6)
	beq a1, a4, label33
label32:
	lw a3, 0(t0)
	addiw a2, a2, 1
	lw a4, 4(t0)
	addw a1, a1, a3
	addw a0, a0, a4
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
	lw a2, 0(a5)
	sltiu a5, a0, 1
	addiw t1, a2, 1
	xor a4, a1, t1
	sltiu a2, a4, 1
	or a4, a2, a5
	bne a4, zero, label23
	ld a4, 120(sp)
	lw a2, 0(a4)
	addiw a5, a2, 1
	beq a0, a5, label23
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
	sw s1, 0(s11)
	addiw a1, a0, 1
	min s9, s9, a1
	j label23
label130:
	lui a0, 262144
label21:
	addiw a1, a0, 1
	sh2add a0, s2, s5
	min s3, s3, a1
	sw s1, 0(a0)
	mv a0, s6
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
	sh2add a0, s2, s5
	min s3, s3, a1
	sw s1, 0(a0)
	mv a0, s6
	j label4
label211:
	mv a0, s1
	addiw a1, s1, 1
	sh2add a0, s2, s5
	min s3, s3, a1
	sw s1, 0(a0)
	mv a0, s6
	j label4
.p2align 2
.globl main
main:
	addi sp, sp, -152
	li a0, -1
	sd ra, 0(sp)
	sd s5, 8(sp)
	addi s5, sp, 104
	sd s0, 16(sp)
	li s0, 2
	sd s2, 24(sp)
	li s2, 1
	sd s3, 32(sp)
	sd s9, 40(sp)
	mv s9, zero
	sd s10, 48(sp)
	sd s1, 56(sp)
	li s1, 3
	sd s6, 64(sp)
	li s6, 11
	sd s4, 72(sp)
	li s4, 28
	sd s7, 80(sp)
	sd s8, 88(sp)
	sd s11, 96(sp)
	sw s2, 120(sp)
	sw zero, 124(sp)
	sw a0, 128(sp)
	sw zero, 132(sp)
	sw zero, 136(sp)
	sw s2, 140(sp)
	sw zero, 144(sp)
	sw a0, 148(sp)
pcrel798:
	auipc a0, %pcrel_hi(a)
	sw zero, 108(sp)
	addi s3, a0, %pcrel_lo(pcrel798)
	sw zero, 104(sp)
	mv s10, zero
.p2align 2
label298:
	jal getint
	sw a0, 116(sp)
	mv s7, a0
	jal getint
	sw a0, 112(sp)
	bne s7, zero, label344
	j label320
.p2align 2
label538:
	mv s11, s2
	lw a0, 116(sp)
	ble s2, a0, label312
	j label542
.p2align 2
label784:
	addiw s7, s7, 1
	lw a0, 112(sp)
	slli a2, s7, 4
	sub a1, a2, s7
	sh3add s8, a1, s3
	ble s7, a0, label538
.p2align 2
label319:
	addi a3, sp, 120
	addi a4, sp, 116
	addi a5, sp, 112
	addi a6, sp, 108
	mv a0, s10
	mv a1, s9
	mv a2, s2
	mv a7, s5
	jal search
	mv a1, a0
	blt a0, s6, label769
	li a1, -1
.p2align 2
label769:
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
	j label783
.p2align 2
label550:
	mv s9, s11
	mv s10, s7
	addiw s11, s11, 1
	lw a0, 116(sp)
	ble s11, a0, label312
	j label784
.p2align 2
label317:
	sw s7, 108(sp)
	sw s11, 104(sp)
	addiw s11, s11, 1
	lw a0, 116(sp)
	ble s11, a0, label312
	addiw s7, s7, 1
	lw a0, 112(sp)
	slli a2, s7, 4
	sub a1, a2, s7
	sh3add s8, a1, s3
	ble s7, a0, label538
	j label319
.p2align 2
label783:
	addiw s11, s11, 1
	lw a0, 116(sp)
	ble s11, a0, label312
	addiw s7, s7, 1
	lw a0, 112(sp)
	slli a2, s7, 4
	sub a1, a2, s7
	sh3add s8, a1, s3
	ble s7, a0, label538
	j label319
.p2align 2
label344:
	mv a1, zero
.p2align 2
label301:
	slli a3, a1, 4
	sub a2, a3, a1
	addiw a1, a1, 4
	sh3add a0, a2, s3
	sw s2, 0(a0)
	sw s2, 4(a0)
	sw s2, 8(a0)
	sw s2, 12(a0)
	sw s2, 16(a0)
	sw s2, 20(a0)
	sw s2, 24(a0)
	sw s2, 28(a0)
	sw s2, 32(a0)
	sw s2, 36(a0)
	sw s2, 40(a0)
	sw s2, 44(a0)
	sw s2, 48(a0)
	sw s2, 52(a0)
	sw s2, 56(a0)
	sw s2, 60(a0)
	sw s2, 64(a0)
	sw s2, 68(a0)
	sw s2, 72(a0)
	sw s2, 76(a0)
	sw s2, 80(a0)
	sw s2, 84(a0)
	sw s2, 88(a0)
	sw s2, 92(a0)
	sw s2, 96(a0)
	sw s2, 100(a0)
	sw s2, 104(a0)
	sw s2, 108(a0)
	sw s2, 112(a0)
	sw s2, 116(a0)
	sw s2, 120(a0)
	sw s2, 124(a0)
	sw s2, 128(a0)
	sw s2, 132(a0)
	sw s2, 136(a0)
	sw s2, 140(a0)
	sw s2, 144(a0)
	sw s2, 148(a0)
	sw s2, 152(a0)
	sw s2, 156(a0)
	sw s2, 160(a0)
	sw s2, 164(a0)
	sw s2, 168(a0)
	sw s2, 172(a0)
	sw s2, 176(a0)
	sw s2, 180(a0)
	sw s2, 184(a0)
	sw s2, 188(a0)
	sw s2, 192(a0)
	sw s2, 196(a0)
	sw s2, 200(a0)
	sw s2, 204(a0)
	sw s2, 208(a0)
	sw s2, 212(a0)
	sw s2, 216(a0)
	sw s2, 220(a0)
	sw s2, 224(a0)
	sw s2, 228(a0)
	sw s2, 232(a0)
	sw s2, 236(a0)
	sw s2, 240(a0)
	sw s2, 244(a0)
	sw s2, 248(a0)
	sw s2, 252(a0)
	sw s2, 256(a0)
	sw s2, 260(a0)
	sw s2, 264(a0)
	sw s2, 268(a0)
	sw s2, 272(a0)
	sw s2, 276(a0)
	sw s2, 280(a0)
	sw s2, 284(a0)
	sw s2, 288(a0)
	sw s2, 292(a0)
	sw s2, 296(a0)
	sw s2, 300(a0)
	sw s2, 304(a0)
	sw s2, 308(a0)
	sw s2, 312(a0)
	sw s2, 316(a0)
	sw s2, 320(a0)
	sw s2, 324(a0)
	sw s2, 328(a0)
	sw s2, 332(a0)
	sw s2, 336(a0)
	sw s2, 340(a0)
	sw s2, 344(a0)
	sw s2, 348(a0)
	sw s2, 352(a0)
	sw s2, 356(a0)
	sw s2, 360(a0)
	sw s2, 364(a0)
	sw s2, 368(a0)
	sw s2, 372(a0)
	sw s2, 376(a0)
	sw s2, 380(a0)
	sw s2, 384(a0)
	sw s2, 388(a0)
	sw s2, 392(a0)
	sw s2, 396(a0)
	sw s2, 400(a0)
	sw s2, 404(a0)
	sw s2, 408(a0)
	sw s2, 412(a0)
	sw s2, 416(a0)
	sw s2, 420(a0)
	sw s2, 424(a0)
	sw s2, 428(a0)
	sw s2, 432(a0)
	sw s2, 436(a0)
	sw s2, 440(a0)
	sw s2, 444(a0)
	sw s2, 448(a0)
	sw s2, 452(a0)
	sw s2, 456(a0)
	sw s2, 460(a0)
	sw s2, 464(a0)
	sw s2, 468(a0)
	sw s2, 472(a0)
	sw s2, 476(a0)
	blt a1, s4, label301
	slli a2, a1, 4
	mv s7, s2
	sub a1, a2, a1
	sh3add a0, a1, s3
	sw s2, 0(a0)
	sw s2, 4(a0)
	sw s2, 8(a0)
	sw s2, 12(a0)
	sw s2, 16(a0)
	sw s2, 20(a0)
	sw s2, 24(a0)
	sw s2, 28(a0)
	sw s2, 32(a0)
	sw s2, 36(a0)
	sw s2, 40(a0)
	sw s2, 44(a0)
	sw s2, 48(a0)
	sw s2, 52(a0)
	sw s2, 56(a0)
	sw s2, 60(a0)
	sw s2, 64(a0)
	sw s2, 68(a0)
	sw s2, 72(a0)
	sw s2, 76(a0)
	sw s2, 80(a0)
	sw s2, 84(a0)
	sw s2, 88(a0)
	sw s2, 92(a0)
	sw s2, 96(a0)
	sw s2, 100(a0)
	sw s2, 104(a0)
	sw s2, 108(a0)
	sw s2, 112(a0)
	sw s2, 116(a0)
	sw s2, 120(a0)
	sw s2, 124(a0)
	sw s2, 128(a0)
	sw s2, 132(a0)
	sw s2, 136(a0)
	sw s2, 140(a0)
	sw s2, 144(a0)
	sw s2, 148(a0)
	sw s2, 152(a0)
	sw s2, 156(a0)
	sw s2, 160(a0)
	sw s2, 164(a0)
	sw s2, 168(a0)
	sw s2, 172(a0)
	sw s2, 176(a0)
	sw s2, 180(a0)
	sw s2, 184(a0)
	sw s2, 188(a0)
	sw s2, 192(a0)
	sw s2, 196(a0)
	sw s2, 200(a0)
	sw s2, 204(a0)
	sw s2, 208(a0)
	sw s2, 212(a0)
	sw s2, 216(a0)
	sw s2, 220(a0)
	sw s2, 224(a0)
	sw s2, 228(a0)
	sw s2, 232(a0)
	sw s2, 236(a0)
	lw a0, 112(sp)
	slli a2, s2, 4
	sub a1, a2, s2
	sh3add s8, a1, s3
	ble s2, a0, label538
	j label319
label320:
	mv a0, zero
	ld ra, 0(sp)
	ld s5, 8(sp)
	ld s0, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	ld s9, 40(sp)
	ld s10, 48(sp)
	ld s1, 56(sp)
	ld s6, 64(sp)
	ld s4, 72(sp)
	ld s7, 80(sp)
	ld s8, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 152
	ret
.p2align 2
label542:
	addiw s7, s7, 1
	lw a0, 112(sp)
	slli a2, s7, 4
	sub a1, a2, s7
	sh3add s8, a1, s3
	ble s7, a0, label538
	j label319
