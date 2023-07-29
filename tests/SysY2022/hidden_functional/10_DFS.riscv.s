.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
to:
	.zero	20020
.align 8
next:
	.zero	20020
.align 8
head:
	.zero	4020
.align 8
vis:
	.zero	4020
.text
same:
.p2align 2
	addi sp, sp, -64
pcrel113:
	auipc a2, %pcrel_hi(vis)
	sd s1, 56(sp)
	mv s1, a1
	sd s6, 48(sp)
	addi a1, a2, %pcrel_lo(pcrel113)
	sd s3, 40(sp)
	sh2add a2, a0, a1
	mv s3, a1
	sd s4, 32(sp)
	li a1, 1
	sd s0, 24(sp)
	sd s5, 16(sp)
	sd s2, 8(sp)
	sd ra, 0(sp)
	sw a1, 0(a2)
	beq a0, s1, label24
pcrel114:
	auipc a2, %pcrel_hi(head)
	addi a1, a2, %pcrel_lo(pcrel114)
	sh2add a0, a0, a1
	mv s4, a1
	lw s0, 0(a0)
pcrel115:
	auipc a1, %pcrel_hi(next)
pcrel116:
	auipc a0, %pcrel_hi(to)
	addi s5, a1, %pcrel_lo(pcrel115)
	addi s6, a0, %pcrel_lo(pcrel116)
	j label5
label2:
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s5, 16(sp)
	ld s0, 24(sp)
	ld s4, 32(sp)
	ld s3, 40(sp)
	ld s6, 48(sp)
	ld s1, 56(sp)
	addi sp, sp, 64
	ret
label5:
	li a1, -1
	bne s0, a1, label7
	mv a0, zero
	j label2
label7:
	sh2add a1, s0, s6
	lw a0, 0(a1)
	sh2add a2, a0, s3
	lw a1, 0(a2)
	beq a1, zero, label8
label46:
	sh2add a0, s0, s5
	lw s0, 0(a0)
	j label5
label8:
	sh2add a1, a0, s3
	li a2, 1
	sw a2, 0(a1)
	beq s1, a0, label24
	sh2add a1, a0, s4
	lw s2, 0(a1)
label10:
	li a0, -1
	beq s2, a0, label46
	sh2add a1, s2, s6
	lw a0, 0(a1)
	sh2add a2, a0, s3
	lw a1, 0(a2)
	beq a1, zero, label13
label69:
	sh2add a1, s2, s5
	lw s2, 0(a1)
	j label10
label13:
	mv a1, s1
	jal same
	beq a0, zero, label69
label24:
	li a0, 1
	j label2
.globl main
main:
.p2align 2
	addi sp, sp, -96
	sd s0, 88(sp)
	sd s5, 80(sp)
	sd s2, 72(sp)
	sd s3, 64(sp)
	sd s1, 56(sp)
	sd s6, 48(sp)
	sd s4, 40(sp)
	sd s7, 32(sp)
	sd s8, 24(sp)
	sd s9, 16(sp)
	sd s10, 8(sp)
	sd ra, 0(sp)
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
pcrel813:
	auipc a2, %pcrel_hi(vis)
	or a1, a1, a3
	addi s0, a2, %pcrel_lo(pcrel813)
pcrel814:
	auipc a2, %pcrel_hi(to)
	addi s2, a2, %pcrel_lo(pcrel814)
pcrel815:
	auipc a2, %pcrel_hi(next)
	addi s3, a2, %pcrel_lo(pcrel815)
pcrel816:
	auipc a2, %pcrel_hi(head)
	addi s1, a2, %pcrel_lo(pcrel816)
	bne a1, zero, label211
	mv s5, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label225
	j label778
label211:
	mv s4, a0
	mv s5, zero
.p2align 2
label118:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s4, a3, label743
	mv a1, s5
.p2align 2
label743:
	bne a2, zero, label220
	mv s5, a1
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label225
	j label778
label220:
	mv s4, a0
	mv s5, a1
	j label118
label225:
	mv s4, a0
	mv s6, zero
.p2align 2
label124:
	jal getch
	sh2add a4, s6, s6
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	li a2, 10
	addw s6, s4, a3
	bgeu a1, a2, label127
	mv s4, a0
	j label124
label127:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	subw a3, zero, s6
	or a1, a1, a2
	mv s4, a3
	bne s5, zero, label745
	mv s4, s6
label745:
	bne a1, zero, label245
	mv s6, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label259
	mv s7, zero
	mv a0, zero
	mv s5, zero
label800:
	mv s5, s7
	mv a2, zero
	j label140
label245:
	mv s5, a0
	mv s6, zero
.p2align 2
label129:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s5, a3, label747
	mv a1, s6
.p2align 2
label747:
	bne a2, zero, label254
	mv s6, a1
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label259
	mv s7, zero
	mv a0, zero
	mv s5, zero
	bne s6, zero, label749
	j label800
label254:
	mv s5, a0
	mv s6, a1
	j label129
label259:
	mv s5, a0
	mv s7, zero
.p2align 2
label135:
	jal getch
	sh2add a2, s7, s7
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s7, s5, a4
	bltu a1, a2, label268
	subw a0, zero, s7
	mv s5, a0
	bne s6, zero, label749
	j label800
label268:
	mv s5, a0
	j label135
.p2align 2
label140:
	sh2add a0, a2, s1
	li a1, -1
	addiw a2, a2, 64
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
	li a0, 960
	blt a2, a0, label140
	sh2add a0, a2, s1
	mv s6, zero
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
	bne s5, zero, label147
label146:
	mv a0, zero
	ld ra, 0(sp)
	ld s10, 8(sp)
	ld s9, 16(sp)
	ld s8, 24(sp)
	ld s7, 32(sp)
	ld s4, 40(sp)
	ld s6, 48(sp)
	ld s1, 56(sp)
	ld s3, 64(sp)
	ld s2, 72(sp)
	ld s5, 80(sp)
	ld s0, 88(sp)
	addi sp, sp, 96
	ret
.p2align 2
label147:
	jal getch
	xori a3, a0, 85
	xori a2, a0, 81
	sltu a1, zero, a2
	sltu a2, zero, a3
	and a1, a1, a2
	bne a1, zero, label147
	li a1, 81
	bne a0, a1, label149
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	or a1, a1, a3
	bne a1, zero, label490
	mv s8, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label495
	j label792
.p2align 2
label490:
	mv s9, a0
	mv s7, zero
	j label195
.p2align 2
label495:
	mv s7, a0
	mv s9, zero
.p2align 2
label176:
	jal getch
	sh2add a4, s9, s9
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	li a2, 10
	addw s9, s7, a3
	bgeu a1, a2, label179
	mv s7, a0
	j label176
.p2align 2
label179:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	subw a2, zero, s9
	or a1, a1, a3
	mv s7, a2
	bne s8, zero, label759
	mv s7, s9
.p2align 2
label759:
	bne a1, zero, label514
	mv s8, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label519
	mv s10, zero
	mv a0, zero
	mv a1, zero
	bgt s4, zero, label525
	j label188
.p2align 2
label514:
	mv s9, a0
	mv s8, zero
	j label192
.p2align 2
label519:
	mv s9, a0
	mv s10, zero
	j label189
.p2align 2
label761:
	ble s4, zero, label188
.p2align 2
label525:
	li a2, 1
.p2align 2
label186:
	sh2add a0, a2, s0
	addiw a2, a2, 1
	sw zero, 0(a0)
	bge s4, a2, label186
.p2align 2
label188:
	mv a0, s7
	jal same
	jal putint
	li a0, 10
	jal putch
	addiw s5, s5, -1
	bne s5, zero, label147
	j label146
.p2align 2
label189:
	jal getch
	sh2add a2, s10, s10
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addi a3, a4, -48
	addw s10, s9, a3
	bltu a1, a2, label543
	subw a0, zero, s10
	mv a1, a0
	bne s8, zero, label761
	mv a1, s10
	bgt s4, zero, label525
	j label188
.p2align 2
label543:
	mv s9, a0
	j label189
.p2align 2
label192:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s9, a3, label763
	mv a2, s8
.p2align 2
label763:
	bne a1, zero, label552
	mv s8, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label519
	mv s10, zero
	mv a0, zero
	mv a1, zero
	bne s8, zero, label761
	bgt s4, zero, label525
	j label188
.p2align 2
label552:
	mv s9, a0
	mv s8, a2
	j label192
.p2align 2
label195:
	jal getch
	li s8, 1
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	li a2, 45
	or a1, a1, a3
	beq s9, a2, label765
	mv s8, s7
.p2align 2
label765:
	bne a1, zero, label561
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label495
	j label792
.p2align 2
label561:
	mv s9, a0
	mv s7, s8
	j label195
.p2align 2
label792:
	mv s9, zero
	j label179
.p2align 2
label149:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label409
	mv s8, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label423
	j label785
.p2align 2
label409:
	mv s9, a0
	mv s7, zero
.p2align 2
label150:
	jal getch
	li s8, 1
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	li a2, 45
	or a1, a1, a3
	beq s9, a2, label751
	mv s8, s7
.p2align 2
label751:
	bne a1, zero, label418
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label423
	j label785
.p2align 2
label418:
	mv s9, a0
	mv s7, s8
	j label150
.p2align 2
label423:
	mv s7, a0
	mv s9, zero
.p2align 2
label169:
	jal getch
	sh2add a3, s9, s9
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	li a2, 10
	addw s9, s7, a4
	bgeu a1, a2, label156
	mv s7, a0
	j label169
.p2align 2
label785:
	mv s9, zero
.p2align 2
label156:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	subw a2, zero, s9
	or a1, a1, a3
	mv s7, a2
	bne s8, zero, label753
	mv s7, s9
.p2align 2
label753:
	bne a1, zero, label433
	mv s8, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label447
	mv s10, zero
	mv a1, zero
	mv a0, zero
.p2align 2
label802:
	mv a0, s10
	j label757
.p2align 2
label433:
	mv s9, a0
	mv s8, zero
.p2align 2
label158:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s9, a3, label755
	mv a2, s8
.p2align 2
label755:
	bne a1, zero, label442
	mv s8, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label447
	mv s10, zero
	mv a1, zero
	mv a0, zero
	bne s8, zero, label757
	j label802
.p2align 2
label442:
	mv s9, a0
	mv s8, a2
	j label158
.p2align 2
label447:
	mv s9, a0
	mv s10, zero
.p2align 2
label164:
	jal getch
	sh2add a4, s10, s10
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	li a3, 10
	addw s10, s9, a2
	bltu a1, a3, label456
	subw a1, zero, s10
	mv a0, a1
	bne s8, zero, label757
	j label802
.p2align 2
label456:
	mv s9, a0
	j label164
.p2align 2
label757:
	sh2add a1, s6, s2
	addiw s5, s5, -1
	sh2add a3, s7, s1
	sw a0, 0(a1)
	sh2add a2, s6, s3
	lw a4, 0(a3)
	sh2add a0, a0, s1
	sw a4, 0(a2)
	sw s6, 0(a3)
	sw s7, 4(a1)
	addiw a1, s6, 1
	lw a3, 0(a0)
	addiw s6, s6, 2
	sw a3, 4(a2)
	sw a1, 0(a0)
	bne s5, zero, label147
	j label146
.p2align 2
label778:
	mv s6, zero
	j label127
label749:
	mv a2, zero
	j label140
