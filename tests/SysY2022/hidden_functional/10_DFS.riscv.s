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
pcrel812:
	auipc a2, %pcrel_hi(vis)
	addiw a1, a0, -48
	addi s0, a2, %pcrel_lo(pcrel812)
pcrel813:
	auipc a2, %pcrel_hi(to)
	addi s2, a2, %pcrel_lo(pcrel813)
pcrel814:
	auipc a2, %pcrel_hi(next)
	addi s3, a2, %pcrel_lo(pcrel814)
pcrel815:
	auipc a2, %pcrel_hi(head)
	addi s1, a2, %pcrel_lo(pcrel815)
	li a2, 9
	bgtu a1, a2, label210
	mv s5, zero
	li a2, 10
	bltu a1, a2, label223
	j label778
label210:
	mv s4, a0
	mv s6, zero
.p2align 2
label118:
	jal getch
	li s5, 1
	li a2, 45
	addiw a1, a0, -48
	beq s4, a2, label743
	mv s5, s6
.p2align 2
label743:
	li a2, 9
	bgtu a1, a2, label218
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label223
	j label778
label218:
	mv s4, a0
	mv s6, s5
	j label118
label223:
	mv s4, a0
	mv s6, zero
.p2align 2
label124:
	jal getch
	sh2add a3, s6, s6
	addiw a1, a0, -48
	slliw a4, a3, 1
	li a3, 10
	addi a2, a4, -48
	addw s6, s4, a2
	bgeu a1, a3, label127
	mv s4, a0
	j label124
label127:
	jal getch
	subw a2, zero, s6
	addiw a1, a0, -48
	mv s4, a2
	bne s5, zero, label745
	mv s4, s6
label745:
	li a2, 9
	bgtu a1, a2, label242
	mv s6, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label255
	mv s7, zero
	mv a0, zero
	mv s5, zero
label800:
	mv s5, s7
	mv a2, zero
	j label140
label242:
	mv s5, a0
	mv s7, zero
.p2align 2
label129:
	jal getch
	li s6, 1
	li a2, 45
	addiw a1, a0, -48
	beq s5, a2, label747
	mv s6, s7
.p2align 2
label747:
	li a2, 9
	bgtu a1, a2, label250
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label255
	mv s7, zero
	mv a0, zero
	mv s5, zero
	bne s6, zero, label749
	j label800
label250:
	mv s5, a0
	mv s7, s6
	j label129
label255:
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
	bltu a1, a2, label264
	subw a0, zero, s7
	mv s5, a0
	bne s6, zero, label749
	j label800
label264:
	mv s5, a0
	j label135
label749:
	mv a2, zero
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
	beq s5, zero, label146
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
	beq a0, a1, label172
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bgtu a1, a2, label404
	mv s8, zero
	li a2, 10
	bltu a1, a2, label409
	j label785
.p2align 2
label404:
	mv s9, a0
	mv s7, zero
	j label169
.p2align 2
label409:
	mv s7, a0
	mv s9, zero
.p2align 2
label153:
	jal getch
	sh2add a4, s9, s9
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	li a3, 10
	addw s9, s7, a2
	bgeu a1, a3, label156
	mv s7, a0
	j label153
.p2align 2
label169:
	jal getch
	li s8, 1
	li a2, 45
	addiw a1, a0, -48
	beq s9, a2, label757
	mv s8, s7
.p2align 2
label757:
	li a2, 9
	bgtu a1, a2, label475
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label409
	j label785
.p2align 2
label475:
	mv s9, a0
	mv s7, s8
	j label169
.p2align 2
label172:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bgtu a1, a2, label481
	mv s8, zero
	li a2, 10
	bltu a1, a2, label494
.p2align 2
label792:
	mv s9, zero
	j label182
.p2align 2
label481:
	mv s9, a0
	mv s7, zero
.p2align 2
label173:
	jal getch
	li s8, 1
	li a2, 45
	addiw a1, a0, -48
	beq s9, a2, label759
	mv s8, s7
.p2align 2
label759:
	li a2, 9
	bgtu a1, a2, label489
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label494
	j label792
.p2align 2
label489:
	mv s9, a0
	mv s7, s8
	j label173
.p2align 2
label494:
	mv s7, a0
	mv s9, zero
.p2align 2
label179:
	jal getch
	sh2add a4, s9, s9
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	li a3, 10
	addw s9, s7, a2
	bgeu a1, a3, label182
	mv s7, a0
	j label179
.p2align 2
label182:
	jal getch
	subw a2, zero, s9
	addiw a1, a0, -48
	mv s7, a2
	bne s8, zero, label761
	mv s7, s9
.p2align 2
label761:
	li a2, 9
	bgtu a1, a2, label512
	mv s8, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label517
	mv s10, zero
	mv a0, zero
	mv a1, zero
	bgt s4, zero, label523
	j label191
.p2align 2
label512:
	mv s9, a0
	mv s8, zero
	j label195
.p2align 2
label517:
	mv s9, a0
	mv s10, zero
.p2align 2
label192:
	jal getch
	sh2add a3, s10, s10
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	li a2, 10
	addw s10, s9, a4
	bltu a1, a2, label541
	subw a0, zero, s10
	mv a1, a0
	bne s8, zero, label763
	mv a1, s10
	bgt s4, zero, label523
	j label191
.p2align 2
label541:
	mv s9, a0
	j label192
.p2align 2
label195:
	jal getch
	li a3, 45
	li a2, 1
	addiw a1, a0, -48
	beq s9, a3, label765
	mv a2, s8
.p2align 2
label765:
	li a3, 9
	bgtu a1, a3, label549
	mv s8, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label517
	mv s10, zero
	mv a0, zero
	mv a1, zero
	bne s8, zero, label763
	bgt s4, zero, label523
	j label191
.p2align 2
label549:
	mv s9, a0
	mv s8, a2
	j label195
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
label753:
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
label785:
	mv s9, zero
.p2align 2
label156:
	jal getch
	subw a2, zero, s9
	addiw a1, a0, -48
	mv s7, a2
	bne s8, zero, label751
	mv s7, s9
.p2align 2
label751:
	li a2, 9
	bgtu a1, a2, label427
	mv s8, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label432
	mv s10, zero
	mv a1, zero
	mv a0, zero
.p2align 2
label802:
	mv a0, s10
	j label753
.p2align 2
label427:
	mv s9, a0
	mv s8, zero
	j label166
.p2align 2
label432:
	mv s9, a0
	mv s10, zero
.p2align 2
label163:
	jal getch
	sh2add a4, s10, s10
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	li a2, 10
	addw s10, s9, a3
	bltu a1, a2, label459
	subw a1, zero, s10
	mv a0, a1
	bne s8, zero, label753
	j label802
.p2align 2
label459:
	mv s9, a0
	j label163
.p2align 2
label166:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s9, a3, label755
	mv a2, s8
.p2align 2
label755:
	li a3, 9
	bgtu a1, a3, label467
	mv s8, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label432
	mv s10, zero
	mv a1, zero
	mv a0, zero
	bne s8, zero, label753
	j label802
.p2align 2
label467:
	mv s9, a0
	mv s8, a2
	j label166
.p2align 2
label191:
	mv a0, s7
	jal same
	jal putint
	li a0, 10
	jal putch
	addiw s5, s5, -1
	bne s5, zero, label147
	j label146
.p2align 2
label763:
	ble s4, zero, label191
.p2align 2
label523:
	li a2, 1
.p2align 2
label189:
	sh2add a0, a2, s0
	addiw a2, a2, 1
	sw zero, 0(a0)
	bge s4, a2, label189
	j label191
.p2align 2
label778:
	mv s6, zero
	j label127
