.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
a:
	.zero	3600
.text
.p2align 2
search:
	# stack usage: CalleeArg[0] Local[0] RegSpill[64] CalleeSaved[104]
	addi sp, sp, -168
	sd ra, 0(sp)
	sd s4, 8(sp)
	mv s4, a0
	sd s3, 16(sp)
	sd s0, 24(sp)
	sd s5, 32(sp)
	sd s1, 40(sp)
	sd s6, 48(sp)
	sd s2, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	sd a3, 160(sp)
	sd a0, 152(sp)
	sd a1, 144(sp)
	li a1, 10
	sd a2, 136(sp)
	sd a6, 128(sp)
	sd a4, 120(sp)
	sd a5, 112(sp)
	sd a7, 104(sp)
	ble a2, a1, label67
	lui a0, 262144
label2:
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s0, 24(sp)
	ld s5, 32(sp)
	ld s1, 40(sp)
	ld s6, 48(sp)
	ld s2, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 168
	ret
label67:
	auipc a1, %pcrel_hi(a)
	lui s1, 262144
	mv a0, zero
	addi s3, a1, %pcrel_lo(label67)
	ld a3, 160(sp)
	mv s0, a3
	j label5
label18:
	ld a6, 128(sp)
	lw a3, 0(a6)
	beq s4, a3, label19
label20:
	addiw s6, a0, 1
	li a3, 2
	blt a2, a3, label23
	beq s4, zero, label23
	ld a5, 112(sp)
	lw a3, 0(a5)
	addiw a4, a3, 1
	sltiu a3, a1, 1
	xor a2, s4, a4
	sltiu a0, a2, 1
	or a4, a0, a3
	beq a4, zero, label24
label23:
	addi s0, s0, 8
	mv a0, s6
label5:
	li a1, 4
	bge a0, a1, label57
	ld a1, 144(sp)
	ld s4, 152(sp)
	slli a2, a1, 4
	sub a3, a2, a1
	mv a2, zero
	sh3add s2, a3, s3
	sh2add a5, s4, s2
	li a3, 1
	lw a4, 0(a5)
	bne a4, a3, label15
	j label18
label87:
	lw a4, 0(s0)
	addiw a2, a2, 1
	lw a3, 4(s0)
	addw s4, s4, a4
	addw a1, a1, a3
	slli a4, a3, 4
	subw a5, a4, a3
	li a3, 1
	sh3add s2, a5, s2
	sh2add a5, s4, s2
	lw a4, 0(a5)
	beq a4, a3, label18
.p2align 2
label15:
	ld a6, 128(sp)
	lw a3, 0(a6)
	bne s4, a3, label87
	ld a7, 104(sp)
	lw a3, 0(a7)
	beq a1, a3, label18
	lw a4, 0(s0)
	addiw a2, a2, 1
	lw a3, 4(s0)
	addw s4, s4, a4
	addw a1, a1, a3
	slli a4, a3, 4
	subw a5, a4, a3
	li a3, 1
	sh3add s2, a5, s2
	sh2add a5, s4, s2
	lw a4, 0(a5)
	bne a4, a3, label15
	j label18
label19:
	ld a7, 104(sp)
	lw a4, 0(a7)
	beq a1, a4, label112
	j label20
label24:
	ld a4, 120(sp)
	lw a0, 0(a4)
	addiw a2, a0, 1
	beq a1, a2, label23
	sh2add a2, s4, s2
	sw zero, 0(a2)
	lw a0, 0(s0)
	lw a3, 4(s0)
	subw s7, s4, a0
	ld a2, 136(sp)
	subw s8, a1, a3
	addiw a0, a2, 1
	li a1, 10
	bgt a0, a1, label150
	ld a3, 160(sp)
	lui s9, 262144
	mv s10, zero
	mv s5, a3
	j label28
label51:
	ld a7, 104(sp)
	lw a3, 0(a7)
	bne a1, a3, label50
label38:
	ld a6, 128(sp)
	lw a3, 0(a6)
	beq a2, a3, label39
label40:
	addiw s10, s10, 1
	li a3, 2
	blt a4, a3, label43
	bne a2, zero, label42
label43:
	addi s5, s5, 8
label28:
	li a0, 4
	bge s10, a0, label52
	slli a1, s8, 4
	mv a4, zero
	sub a2, a1, s8
	mv a1, s8
	sh3add a0, a2, s3
	mv a2, s7
	j label33
label50:
	lw a5, 0(s5)
	addiw a4, a4, 1
	lw a3, 4(s5)
	addw a2, a2, a5
	slli t0, a3, 4
	addw a1, a1, a3
	subw a5, t0, a3
	sh3add a0, a5, a0
label33:
	sh2add t0, a2, a0
	li a3, 1
	lw a5, 0(t0)
	beq a5, a3, label38
	ld a6, 128(sp)
	lw a3, 0(a6)
	beq a2, a3, label51
	j label50
label39:
	ld a7, 104(sp)
	lw a5, 0(a7)
	bne a1, a5, label40
	li a3, 1
	sh2add a0, s4, s2
	addi s0, s0, 8
	addiw a1, a3, 1
	sw a3, 0(a0)
	min s1, s1, a1
	mv a0, s6
	j label5
label42:
	ld a5, 112(sp)
	lw t0, 0(a5)
	sltiu a5, a1, 1
	addiw a4, t0, 1
	xor t1, a2, a4
	sltiu a3, t1, 1
	or a4, a3, a5
	bne a4, zero, label43
	ld a4, 120(sp)
	lw a3, 0(a4)
	addiw a5, a3, 1
	beq a1, a5, label43
	sh2add s11, a2, a0
	sw zero, 0(s11)
	lw a4, 0(s5)
	lw a3, 4(s5)
	subw a0, a2, a4
	subw a1, a1, a3
	ld a2, 136(sp)
	ld a7, 104(sp)
	addiw a2, a2, 2
	ld a5, 112(sp)
	ld a4, 120(sp)
	ld a6, 128(sp)
	ld a3, 160(sp)
	jal search
	addi s5, s5, 8
	li a3, 1
	addiw a1, a0, 1
	sw a3, 0(s11)
	min s9, s9, a1
	j label28
label57:
	lui a0, 262144
	li a1, 10
	bgt s1, a1, label2
	mv a0, s1
	j label2
label52:
	lui a3, 262144
	li a1, 10
	bgt s9, a1, label53
	mv a3, s9
label53:
	addiw a1, a3, 1
	sh2add a0, s4, s2
	addi s0, s0, 8
	li a3, 1
	min s1, s1, a1
	sw a3, 0(a0)
	mv a0, s6
	j label5
label150:
	lui a3, 262144
	sh2add a0, s4, s2
	addi s0, s0, 8
	addiw a1, a3, 1
	li a3, 1
	min s1, s1, a1
	sw a3, 0(a0)
	mv a0, s6
	j label5
label112:
	li a3, 1
	mv a0, a3
	j label2
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[48] RegSpill[0] CalleeSaved[104]
	addi sp, sp, -160
	li a3, -1
	li a2, 1
	zext.w a1, a3
	sd ra, 0(sp)
	sd s4, 8(sp)
	addi s4, sp, 144
	sd s5, 16(sp)
	addi s5, sp, 148
	sd s0, 24(sp)
	mv s0, zero
	sd s6, 32(sp)
	addi s6, sp, 152
	sd s1, 40(sp)
	li s1, 1
	sd s7, 48(sp)
	zext.w a0, s1
	addi s7, sp, 104
	sd s3, 56(sp)
	slli s3, a2, 32
	sd s2, 64(sp)
	sd s8, 72(sp)
	mv s8, zero
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	sd a0, 112(sp)
	sub a0, zero, s3
	sd a1, 120(sp)
	sd s3, 128(sp)
	sd a0, 136(sp)
pcrel1028:
	auipc a0, %pcrel_hi(a)
	sw zero, 148(sp)
	addi s2, a0, %pcrel_lo(pcrel1028)
	sw zero, 144(sp)
	j label332
.p2align 2
label589:
	mv s0, s10
	mv s8, s11
.p2align 2
label360:
	addi a3, sp, 112
	mv a0, s8
	mv a1, s0
	mv a2, s1
	mv a4, s7
	mv a5, s6
	mv a6, s5
	mv a7, s4
	jal search
	mv a1, a0
	li a2, 11
	blt a0, a2, label998
	li a1, -1
label998:
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
.p2align 2
label332:
	jal getint
	sw a0, 104(sp)
	mv s9, a0
	jal getint
	sw a0, 152(sp)
	beq s9, zero, label363
	mv a0, s2
	mv a2, zero
.p2align 2
label336:
	ori a1, s3, 1
	addiw a2, a2, 4
	li a3, 28
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
	bge a2, a3, label340
	addi a0, a0, 480
	j label336
.p2align 2
label340:
	ori a1, s3, 1
	sd a1, 480(a0)
	sd a1, 488(a0)
	sd a1, 496(a0)
	sd a1, 504(a0)
	sd a1, 512(a0)
	sd a1, 520(a0)
	sd a1, 528(a0)
	sd a1, 536(a0)
	sd a1, 544(a0)
	sd a1, 552(a0)
	sd a1, 560(a0)
	sd a1, 568(a0)
	sd a1, 576(a0)
	sd a1, 584(a0)
	sd a1, 592(a0)
	sd a1, 600(a0)
	sd a1, 608(a0)
	sd a1, 616(a0)
	sd a1, 624(a0)
	sd a1, 632(a0)
	sd a1, 640(a0)
	sd a1, 648(a0)
	sd a1, 656(a0)
	sd a1, 664(a0)
	sd a1, 672(a0)
	sd a1, 680(a0)
	sd a1, 688(a0)
	sd a1, 696(a0)
	sd a1, 704(a0)
	sd a1, 712(a0)
	lw a2, 152(sp)
	ble a2, zero, label360
	mv s10, s0
	mv s11, s8
	mv s0, s1
	j label341
.p2align 2
label355:
	sw s0, 148(sp)
	sw s9, 144(sp)
	addiw s9, s9, 1
	lw a0, 104(sp)
	bgt s9, a0, label607
.p2align 2
label359:
	addi s8, s8, 120
.p2align 2
label349:
	jal getint
	li a2, 2
	sh2add a1, s0, s8
	sw a0, 0(a1)
	bne a0, a2, label597
	mv s10, s9
	mv s11, s0
	lw a0, 104(sp)
	addiw s9, s9, 1
	ble s9, a0, label359
	addiw s0, s0, 1
	lw a0, 152(sp)
	bgt s0, a0, label589
.p2align 2
label341:
	lw a0, 104(sp)
	ble a0, zero, label345
	addi s8, s2, 120
	mv s9, s1
	j label349
.p2align 2
label597:
	li a1, 3
	beq a0, a1, label355
	addiw s9, s9, 1
	lw a0, 104(sp)
	ble s9, a0, label359
	addiw s0, s0, 1
	lw a0, 152(sp)
	ble s0, a0, label341
	j label589
.p2align 2
label345:
	addiw s0, s0, 1
	lw a0, 152(sp)
	ble s0, a0, label341
	j label589
.p2align 2
label607:
	addiw s0, s0, 1
	lw a0, 152(sp)
	ble s0, a0, label341
	j label589
label363:
	mv a0, zero
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s5, 16(sp)
	ld s0, 24(sp)
	ld s6, 32(sp)
	ld s1, 40(sp)
	ld s7, 48(sp)
	ld s3, 56(sp)
	ld s2, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 160
	ret
