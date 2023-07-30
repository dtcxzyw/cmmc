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
	sd s0, 48(sp)
	mv s0, a0
	sd s5, 64(sp)
pcrel282:
	auipc a0, %pcrel_hi(a)
	sd s1, 80(sp)
	mv s1, a1
	sd s6, 96(sp)
	sd s2, 112(sp)
	addi s2, a0, %pcrel_lo(pcrel282)
	sd s4, 128(sp)
	li a0, 10
	sd s3, 0(sp)
	sd s7, 8(sp)
	sd s8, 16(sp)
	sd s9, 24(sp)
	sd s10, 32(sp)
	sd s11, 40(sp)
	sd ra, 144(sp)
	sd a2, 56(sp)
	sd a3, 72(sp)
	sd a6, 88(sp)
	sd a4, 104(sp)
	sd a5, 120(sp)
	sd a7, 136(sp)
	bgt a2, a0, label54
	lui s4, 262144
	mv a1, zero
	j label4
label54:
	lui a0, 262144
label2:
	ld ra, 144(sp)
	ld s11, 40(sp)
	ld s10, 32(sp)
	ld s9, 24(sp)
	ld s8, 16(sp)
	ld s7, 8(sp)
	ld s3, 0(sp)
	ld s4, 128(sp)
	ld s2, 112(sp)
	ld s6, 96(sp)
	ld s1, 80(sp)
	ld s5, 64(sp)
	ld s0, 48(sp)
	addi sp, sp, 152
	ret
label4:
	ld a3, 72(sp)
	li a0, 4
	sh3add a3, a1, a3
	bge a1, a0, label41
	mv a2, zero
	mv s3, s1
	mv a0, s0
	j label7
label41:
	li a1, 10
	lui a0, 262144
	bgt s4, a1, label2
	mv a0, s4
	j label2
label7:
	slli a4, a0, 4
	sub a5, a4, a0
	sh3add s5, a5, s2
	li a5, 1
	sh2add t0, s3, s5
	lw a4, 0(t0)
	beq a4, a5, label14
	ld a6, 88(sp)
	lw a4, 0(a6)
	beq a0, a4, label12
label73:
	lw a5, 0(a3)
	addiw a2, a2, 1
	lw a4, 4(a3)
	addw a0, a0, a5
	addw s3, s3, a4
	j label7
label14:
	ld a6, 88(sp)
	lw a4, 0(a6)
	beq a0, a4, label15
	j label16
label12:
	ld a7, 136(sp)
	lw a4, 0(a7)
	beq s3, a4, label14
	j label73
label15:
	ld a7, 136(sp)
	lw a4, 0(a7)
	bne s3, a4, label16
	li a0, 1
	j label2
label16:
	addiw s6, a1, 1
	li a1, 2
	bge a2, a1, label17
label100:
	mv a1, s6
	j label4
label17:
	beq a0, zero, label100
	ld a5, 120(sp)
	lw a1, 0(a5)
	addiw a4, a1, 1
	xor a2, a0, a4
	sltiu a4, s3, 1
	sltiu a1, a2, 1
	or a2, a1, a4
	bne a2, zero, label100
	ld a4, 104(sp)
	lw a2, 0(a4)
	addiw a1, a2, 1
	beq s3, a1, label100
	sh2add a2, s3, s5
	sw zero, 0(a2)
	lw a1, 0(a3)
	subw s7, a0, a1
	li a1, 10
	lw a0, 4(a3)
	ld a2, 56(sp)
	subw s8, s3, a0
	addiw a0, a2, 1
	bgt a0, a1, label130
	lui s9, 262144
	mv s10, zero
	j label23
label130:
	lui a0, 262144
label21:
	addiw a1, a0, 1
	sh2add a0, s3, s5
	min s4, s4, a1
	li a1, 1
	sw a1, 0(a0)
	mv a1, s6
	j label4
label23:
	ld a3, 72(sp)
	li a0, 4
	sh3add t0, s10, a3
	bge s10, a0, label26
	mv a2, zero
	mv a0, s8
	mv a1, s7
	j label27
label26:
	li a2, 10
	lui a0, 262144
	bgt s9, a2, label21
	mv a0, s9
	addiw a1, s9, 1
	sh2add a0, s3, s5
	min s4, s4, a1
	li a1, 1
	sw a1, 0(a0)
	mv a1, s6
	j label4
label27:
	slli a5, a1, 4
	sub a4, a5, a1
	li a5, 1
	sh3add a3, a4, s2
	sh2add t1, a0, a3
	lw a4, 0(t1)
	bne a4, a5, label38
label31:
	ld a6, 88(sp)
	lw a4, 0(a6)
	beq a1, a4, label37
	j label32
label38:
	ld a6, 88(sp)
	lw a4, 0(a6)
	beq a1, a4, label40
label199:
	lw a3, 0(t0)
	addiw a2, a2, 1
	lw a4, 4(t0)
	addw a1, a1, a3
	addw a0, a0, a4
	j label27
label40:
	ld a7, 136(sp)
	lw a4, 0(a7)
	beq a0, a4, label31
	j label199
label32:
	addiw s10, s10, 1
	li a4, 2
	blt a2, a4, label23
	beq a1, zero, label23
	ld a5, 120(sp)
	lw a2, 0(a5)
	sltiu a5, a0, 1
	addiw a4, a2, 1
	xor t1, a1, a4
	sltiu a2, t1, 1
	or a4, a2, a5
	bne a4, zero, label23
	ld a4, 104(sp)
	lw a5, 0(a4)
	addiw a2, a5, 1
	beq a0, a2, label23
	sh2add s11, a0, a3
	sw zero, 0(s11)
	lw a2, 0(t0)
	lw a3, 4(t0)
	subw a1, a1, a2
	subw t0, a0, a3
	ld a2, 56(sp)
	ld a7, 136(sp)
	addiw a2, a2, 2
	ld a5, 120(sp)
	ld a6, 88(sp)
	ld a3, 72(sp)
	mv a0, a1
	mv a1, t0
	jal search
	addiw a1, a0, 1
	li a0, 1
	min s9, s9, a1
	sw a0, 0(s11)
	j label23
label37:
	ld a7, 136(sp)
	lw a4, 0(a7)
	bne a0, a4, label32
	li a0, 1
	addiw a1, a0, 1
	sh2add a0, s3, s5
	min s4, s4, a1
	li a1, 1
	sw a1, 0(a0)
	mv a1, s6
	j label4
.globl main
main:
.p2align 2
	addi sp, sp, -152
	li a0, 1
	li a1, -1
	sd s1, 32(sp)
	addi s1, sp, 48
	sd s6, 40(sp)
	mv s6, zero
	sd s2, 56(sp)
	addi s2, sp, 72
	sd s3, 64(sp)
	addi s3, sp, 76
	sd s4, 0(sp)
	addi s4, sp, 88
	sd s5, 8(sp)
	addi s5, sp, 104
	sd s0, 136(sp)
	sd s10, 16(sp)
	sd s7, 96(sp)
	sd s9, 24(sp)
	sd s8, 80(sp)
	sd ra, 144(sp)
	sw a0, 104(sp)
	sw zero, 108(sp)
	sw a1, 112(sp)
	sw zero, 116(sp)
	sw zero, 120(sp)
	sw a0, 124(sp)
pcrel775:
	auipc a0, %pcrel_hi(a)
	sw zero, 128(sp)
	addi s0, a0, %pcrel_lo(pcrel775)
	sw a1, 132(sp)
	sw zero, 72(sp)
	sw zero, 48(sp)
	mv s10, zero
.p2align 2
label284:
	jal getint
	sw a0, 88(sp)
	mv s7, a0
	jal getint
	sw a0, 76(sp)
	beq s7, zero, label306
	mv a2, zero
	j label287
.p2align 2
label305:
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
	blt a0, a2, label751
	li a1, -1
.p2align 2
label751:
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	mv s6, s9
	j label284
label306:
	mv a0, zero
	ld ra, 144(sp)
	ld s8, 80(sp)
	ld s9, 24(sp)
	ld s7, 96(sp)
	ld s10, 16(sp)
	ld s0, 136(sp)
	ld s5, 8(sp)
	ld s4, 0(sp)
	ld s3, 64(sp)
	ld s2, 56(sp)
	ld s6, 40(sp)
	ld s1, 32(sp)
	addi sp, sp, 152
	ret
.p2align 2
label524:
	li s8, 1
	lw a0, 88(sp)
	ble s8, a0, label298
	addiw s6, s6, 1
	lw a0, 76(sp)
	slli a2, s6, 4
	sub a1, a2, s6
	sh3add s7, a1, s0
	ble s6, a0, label524
	j label305
.p2align 2
label298:
	jal getint
	li a2, 2
	sh2add a1, s8, s7
	sw a0, 0(a1)
	beq a0, a2, label536
	li a1, 3
	beq a0, a1, label303
	addiw s8, s8, 1
	lw a0, 88(sp)
	ble s8, a0, label298
	addiw s6, s6, 1
	lw a0, 76(sp)
	slli a2, s6, 4
	sub a1, a2, s6
	sh3add s7, a1, s0
	ble s6, a0, label524
	j label305
.p2align 2
label536:
	mv s9, s8
	mv s10, s6
	addiw s8, s8, 1
	lw a0, 88(sp)
	ble s8, a0, label298
	addiw s6, s6, 1
	lw a0, 76(sp)
	slli a2, s6, 4
	sub a1, a2, s6
	sh3add s7, a1, s0
	ble s6, a0, label524
	j label305
.p2align 2
label303:
	sw s6, 72(sp)
	sw s8, 48(sp)
	addiw s8, s8, 1
	lw a0, 88(sp)
	ble s8, a0, label298
	addiw s6, s6, 1
	lw a0, 76(sp)
	slli a2, s6, 4
	sub a1, a2, s6
	sh3add s7, a1, s0
	ble s6, a0, label524
	j label305
.p2align 2
label287:
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
	blt a2, a0, label287
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
	lw a0, 76(sp)
	slli a2, s6, 4
	sub a1, a2, s6
	sh3add s7, a1, s0
	ble s6, a0, label524
	j label305
