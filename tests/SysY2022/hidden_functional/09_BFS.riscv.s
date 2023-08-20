.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
to:
	.zero	20020
.p2align 3
next:
	.zero	20020
.p2align 3
head:
	.zero	4020
.p2align 3
que:
	.zero	4020
.p2align 3
inq:
	.zero	4020
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[0] RegSpill[24] CalleeSaved[104]
	addi sp, sp, -128
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s4, 24(sp)
	sd s1, 32(sp)
	sd s6, 40(sp)
	sd s2, 48(sp)
	sd s3, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getch
	li s3, 10
	li s1, -1
	addiw a1, a0, -48
pcrel935:
	auipc a2, %pcrel_hi(que)
	li s4, 9
pcrel936:
	auipc a3, %pcrel_hi(to)
	li s2, 1
	addi t1, a2, %pcrel_lo(pcrel935)
	addi t0, a3, %pcrel_lo(pcrel936)
pcrel937:
	auipc a2, %pcrel_hi(next)
	sd t1, 104(sp)
pcrel938:
	auipc a3, %pcrel_hi(inq)
	addi a5, a2, %pcrel_lo(pcrel937)
	addi s0, a3, %pcrel_lo(pcrel938)
	sd t0, 112(sp)
	sd a5, 120(sp)
	bleu a1, s4, label3
.p2align 2
label2:
	jal getch
	addiw a1, a0, -48
	bgtu a1, s4, label2
label3:
	addiw a1, a0, -48
	bgeu a1, s3, label6
.p2align 2
label5:
	jal getch
	addiw a1, a0, -48
	bltu a1, s3, label5
label6:
	jal getch
	addiw a1, a0, -48
	bleu a1, s4, label137
	mv s5, a0
	mv s6, zero
	j label7
.p2align 2
label146:
	mv s5, a0
	mv s6, a1
.p2align 2
label7:
	jal getch
	li a1, 1
	li a3, 45
	addiw a2, a0, -48
	beq s5, a3, label847
	mv a1, s6
label847:
	bgtu a2, s4, label146
	mv s5, a1
label10:
	addiw a2, a0, -48
	bgeu a2, s3, label150
	mv s6, a0
	mv s7, zero
	j label100
.p2align 2
label525:
	mv s6, a0
.p2align 2
label100:
	jal getch
	sh2add a3, s7, s7
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	addw s7, s6, a4
	bltu a1, s3, label525
label13:
	subw a0, zero, s7
	mv s6, a0
	bne s5, zero, label849
	mv s6, s7
label849:
	auipc a1, %pcrel_hi(head)
	mv a2, zero
	addi s5, a1, %pcrel_lo(label849)
	mv a0, s5
	j label15
.p2align 2
label18:
	addi a0, a0, 256
.p2align 2
label15:
	li a4, -1
	addiw a2, a2, 64
	slli a3, a4, 32
	add.uw a1, s1, a3
	li a3, 960
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
	blt a2, a3, label18
	li a3, -1
	slli a2, a3, 32
	add.uw a1, s1, a2
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
	sw s1, 432(a0)
	beq s6, zero, label99
	mv s7, zero
	j label20
.p2align 2
label89:
	addi a2, a2, 4
.p2align 2
label86:
	lw a4, 0(a2)
	addiw a3, a3, 1
	sh2add a5, a4, s0
	sw zero, 0(a5)
	bgt a0, a3, label89
.p2align 2
label76:
	mv a0, a1
	jal putint
	mv a0, s3
	jal putch
	addiw s6, s6, -1
	beq s6, zero, label99
.p2align 2
label20:
	jal getch
	xori a4, a0, 85
	xori a2, a0, 81
	sltu a3, zero, a4
	sltu a1, zero, a2
	and a2, a1, a3
	bne a2, zero, label20
	li a1, 81
	bne a0, a1, label26
	jal getch
	addiw a1, a0, -48
	bleu a1, s4, label371
	mv s8, a0
	mv s9, zero
	j label50
.p2align 2
label26:
	jal getch
	addiw a1, a0, -48
	bleu a1, s4, label295
	mv s8, a0
	mv s9, zero
.p2align 2
label27:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s8, a3, label853
	mv a2, s9
label853:
	bleu a1, s4, label303
	mv s8, a0
	mv s9, a2
	j label27
.p2align 2
label380:
	mv s8, a0
	mv s9, a2
.p2align 2
label50:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s8, a3, label861
	mv a2, s9
label861:
	bgtu a1, s4, label380
	mv s9, a2
	addiw a1, a0, -48
	bgeu a1, s3, label890
.p2align 2
label385:
	mv s8, a0
	mv s10, zero
	j label96
.p2align 2
label303:
	mv s8, a0
	mv s9, a2
	addiw a0, a0, -48
	bgeu a0, s3, label886
.p2align 2
label309:
	mv s10, zero
.p2align 2
label33:
	jal getch
	sh2add a3, s10, s10
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s10, s8, a2
	bgeu a1, s3, label36
	mv s8, a0
	j label33
.p2align 2
label36:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label855
	mv s8, s10
label855:
	bleu a1, s4, label326
	mv s9, a0
	mv s10, zero
.p2align 2
label38:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s9, a3, label857
	mv a2, s10
label857:
	bleu a1, s4, label334
	mv s9, a0
	mv s10, a2
	j label38
.p2align 2
label334:
	mv s9, a2
	addiw a1, a0, -48
	bgeu a1, s3, label887
.p2align 2
label340:
	mv s10, a0
	mv s11, zero
.p2align 2
label44:
	jal getch
	sh2add a3, s11, s11
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s11, s10, a2
	bgeu a1, s3, label348
	mv s10, a0
	j label44
.p2align 2
label516:
	mv s8, a0
.p2align 2
label96:
	jal getch
	sh2add a3, s10, s10
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s10, s8, a2
	bltu a1, s3, label516
.p2align 2
label56:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label863
	mv s8, s10
label863:
	bleu a1, s4, label393
	mv s9, a0
	mv s10, zero
	j label93
.p2align 2
label507:
	mv s9, a0
	mv s10, a2
.p2align 2
label93:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s9, a3, label869
	mv a2, s10
label869:
	bgtu a1, s4, label507
	mv s9, a2
	addiw a1, a0, -48
	bgeu a1, s3, label398
.p2align 2
label399:
	mv s10, a0
	mv s11, zero
.p2align 2
label90:
	jal getch
	sh2add a4, s11, s11
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	addw s11, s10, a3
	bgeu a1, s3, label498
	mv s10, a0
	j label90
.p2align 2
label348:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label859
.p2align 2
label888:
	mv a0, s11
.p2align 2
label859:
	ld t0, 112(sp)
	sh2add a4, s8, s5
	sh2add a3, a0, s5
	addiw s6, s6, -1
	sh2add a1, s7, t0
	sw a0, 0(a1)
	lw t0, 0(a4)
	ld a5, 120(sp)
	sh2add a2, s7, a5
	sw t0, 0(a2)
	sw s7, 0(a4)
	sw s8, 4(a1)
	addiw a1, s7, 1
	lw a0, 0(a3)
	addiw s7, s7, 2
	sw a0, 4(a2)
	sw a1, 0(a3)
	bne s6, zero, label20
	j label99
.p2align 2
label498:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label865
	mv a0, s11
	sh2add a1, s8, s0
	mv a4, s2
	mv a3, zero
	li a2, 1
	sw s2, 0(a1)
	li a1, 1
	ld t1, 104(sp)
	sh2add t0, a2, t1
	sw s8, 4(t1)
	lw a5, 0(t0)
	beq s11, a5, label867
	mv a1, zero
	sh2add t0, a5, s5
	lw a3, 0(t0)
	bne a3, s1, label67
label417:
	blt a2, a4, label444
	j label443
.p2align 2
label72:
	addiw a4, a4, 1
	sh2add t2, a5, s0
	ld t1, 104(sp)
	sw s2, 0(t2)
	sh2add t0, a4, t1
	sw a5, 0(t0)
	ld a5, 120(sp)
	sh2add t0, a3, a5
	lw a3, 0(t0)
	beq a3, s1, label893
.p2align 2
label67:
	ld t0, 112(sp)
	sh2add t1, a3, t0
	lw a5, 0(t1)
	sh2add t2, a5, s0
	lw t0, 0(t2)
	beq t0, zero, label72
	ld a5, 120(sp)
	sh2add t0, a3, a5
	lw a3, 0(t0)
	bne a3, s1, label67
	blt a2, a4, label444
	bge a4, zero, label77
	j label76
.p2align 2
label893:
	bge a2, a4, label901
.p2align 2
label444:
	mv a3, a1
	addiw a2, a2, 1
	ld t1, 104(sp)
	li a1, 1
	sh2add t0, a2, t1
	lw a5, 0(t0)
	beq a0, a5, label867
	mv a1, a3
	sh2add t0, a5, s5
	lw a3, 0(t0)
	bne a3, s1, label67
	blt a2, a4, label444
label443:
	bge a4, zero, label77
	j label76
.p2align 2
label901:
	blt a4, zero, label76
.p2align 2
label77:
	addiw a0, a4, 1
	li a2, 3
	ble a0, a2, label452
	ld t1, 104(sp)
	mv a2, zero
.p2align 2
label79:
	lw a5, 0(t1)
	addiw a2, a2, 4
	sh2add a3, a5, s0
	sw zero, 0(a3)
	lw t0, 4(t1)
	sh2add a5, t0, s0
	sw zero, 0(a5)
	lw t2, 8(t1)
	sh2add t0, t2, s0
	sw zero, 0(t0)
	lw a3, 12(t1)
	sh2add a5, a3, s0
	addiw a3, a4, -2
	sw zero, 0(a5)
	bge a2, a3, label473
	addi t1, t1, 16
	j label79
.p2align 2
label473:
	mv a3, a2
	ble a0, a2, label76
.p2align 2
label85:
	ld t1, 104(sp)
	sh2add a2, a3, t1
	j label86
label452:
	mv a3, zero
	bgt a0, zero, label85
	j label76
label398:
	mv s11, zero
	mv a1, zero
	mv a0, zero
	bne s9, zero, label865
label865:
	sh2add a1, s8, s0
	mv a4, s2
	mv a3, zero
	sw s2, 0(a1)
	ld t1, 104(sp)
	sw s8, 4(t1)
	li a2, 1
	li a1, 1
	sh2add t0, a2, t1
	lw a5, 0(t0)
	beq a0, a5, label867
	mv a1, zero
label867:
	sh2add t0, a5, s5
	lw a3, 0(t0)
	bne a3, s1, label67
	j label417
label99:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s4, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s2, 48(sp)
	ld s3, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 128
	ret
label326:
	mv s9, zero
	addiw a1, a0, -48
	bltu a1, s3, label340
label887:
	mv s11, zero
	mv a1, zero
	mv a0, zero
	bne s9, zero, label859
	j label888
label295:
	mv s8, a0
	mv s9, zero
	addiw a0, a0, -48
	bltu a0, s3, label309
label886:
	mv s10, zero
	j label36
label371:
	mv s9, zero
	addiw a1, a0, -48
	bltu a1, s3, label385
label890:
	mv s10, zero
	j label56
label393:
	mv s9, zero
	addiw a1, a0, -48
	bltu a1, s3, label399
	j label398
label137:
	mv s5, zero
	j label10
label150:
	mv s7, zero
	j label13
