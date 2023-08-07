.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
u:
	.zero	4020
.align 8
v:
	.zero	4020
.align 8
c:
	.zero	4020
.align 8
fa:
	.zero	4020
.text
.p2align 2
find:
	addi sp, sp, -48
pcrel75:
	auipc a1, %pcrel_hi(fa)
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s4, 16(sp)
	addi s4, a1, %pcrel_lo(pcrel75)
	sd s1, 24(sp)
	sh2add a0, a0, s4
	sd s2, 32(sp)
	sd s3, 40(sp)
	lw s1, 0(a0)
	beq s0, s1, label22
	sh2add a1, s1, s4
	lw s2, 0(a1)
	bne s1, s2, label7
	mv a0, s1
	sh2add a1, s0, s4
	sw s1, 0(a1)
	j label2
label22:
	mv a0, s0
label2:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s4, 16(sp)
	ld s1, 24(sp)
	ld s2, 32(sp)
	ld s3, 40(sp)
	addi sp, sp, 48
	ret
label7:
	sh2add a1, s2, s4
	lw s3, 0(a1)
	beq s2, s3, label38
	sh2add a1, s3, s4
	lw a0, 0(a1)
	bne s3, a0, label13
	mv a0, s3
	sh2add a1, s2, s4
	sw s3, 0(a1)
	sh2add a1, s1, s4
	sw s3, 0(a1)
	sh2add a1, s0, s4
	sw s3, 0(a1)
	j label2
label38:
	mv a0, s2
	sh2add a1, s1, s4
	sw s2, 0(a1)
	sh2add a1, s0, s4
	sw s2, 0(a1)
	j label2
label13:
	jal find
	sh2add a1, s3, s4
	sw a0, 0(a1)
	sh2add a1, s2, s4
	sw a0, 0(a1)
	sh2add a1, s1, s4
	sw a0, 0(a1)
	sh2add a1, s0, s4
	sw a0, 0(a1)
	j label2
.p2align 2
.globl main
main:
	addi sp, sp, -104
	sd ra, 0(sp)
	sd s2, 8(sp)
	li s2, 45
	sd s0, 16(sp)
	li s0, 9
	sd s5, 24(sp)
	sd s1, 32(sp)
	li s1, 10
	sd s6, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s10, 80(sp)
	sd s9, 88(sp)
	sd s11, 96(sp)
.p2align 2
label77:
	jal getch
	addiw a1, a0, -48
	bgtu a1, s0, label77
.p2align 2
label78:
	jal getch
	addiw a1, a0, -48
	bltu a1, s1, label78
	jal getch
	addiw a1, a0, -48
	bleu a1, s0, label165
	mv s3, a0
	mv s4, zero
.p2align 2
label80:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s3, s2, label431
	mv a1, s4
.p2align 2
label431:
	bleu a2, s0, label173
	mv s3, a0
	mv s4, a1
	j label80
label173:
	mv s3, a1
label83:
	addiw a2, a0, -48
	bgeu a2, s1, label178
	mv s4, a0
	mv s5, zero
.p2align 2
label147:
	jal getch
	sh2add a3, s5, s5
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s5, s4, a2
	bgeu a1, s1, label86
	mv s4, a0
	j label147
label86:
	subw a0, zero, s5
	mv s7, a0
	bne s3, zero, label433
	mv s7, s5
label433:
	auipc a1, %pcrel_hi(c)
pcrel496:
	auipc a0, %pcrel_hi(u)
	addi s4, a1, %pcrel_lo(label433)
	addi s3, a0, %pcrel_lo(pcrel496)
pcrel497:
	auipc a1, %pcrel_hi(v)
	addi s5, a1, %pcrel_lo(pcrel497)
	ble s7, zero, label88
	mv s6, s3
	mv s8, zero
.p2align 2
label110:
	jal getch
	addiw a1, a0, -48
	bleu a1, s0, label254
	mv s9, a0
	mv s10, zero
	j label144
label438:
	mv a0, s11
.p2align 2
label439:
	sh2add a1, s8, s4
	addiw s8, s8, 1
	sw a0, 0(a1)
	ble s7, s8, label88
.p2align 2
label128:
	addi s6, s6, 4
	j label110
.p2align 2
label144:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s2, label445
	mv a1, s10
.p2align 2
label445:
	bleu a2, s0, label351
	mv s9, a0
	mv s10, a1
	j label144
label259:
	mv s11, zero
	j label116
.p2align 2
label260:
	mv s11, zero
	j label141
label116:
	subw a0, zero, s11
	mv a1, a0
	bne s9, zero, label435
	j label434
.p2align 2
label351:
	mv s10, a0
	mv s9, a1
	addiw a0, a0, -48
	bltu a0, s1, label260
	j label259
.p2align 2
label141:
	jal getch
	sh2add a2, s11, s11
	addiw a1, a0, -48
	slliw a4, a2, 1
	addi a3, a4, -48
	addw s11, s10, a3
	bgeu a1, s1, label343
	mv s10, a0
	j label141
.p2align 2
label434:
	mv a1, s11
.p2align 2
label435:
	sw a1, 0(s6)
	jal getch
	addiw a1, a0, -48
	bleu a1, s0, label268
	mv s9, a0
	mv s10, zero
	j label138
.p2align 2
label343:
	subw a0, zero, s11
	mv a1, a0
	bne s9, zero, label435
	j label434
.p2align 2
label138:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s2, label443
	mv a1, s10
.p2align 2
label443:
	bleu a2, s0, label334
	mv s9, a0
	mv s10, a1
	j label138
label273:
	mv s11, zero
	j label121
.p2align 2
label274:
	mv s11, zero
	j label135
label121:
	subw a0, zero, s11
	mv a1, a0
	bne s9, zero, label437
	j label436
.p2align 2
label334:
	mv s10, a0
	mv s9, a1
	addiw a0, a0, -48
	bltu a0, s1, label274
	j label273
.p2align 2
label135:
	jal getch
	sh2add a2, s11, s11
	addiw a1, a0, -48
	slliw a3, a2, 1
	addi a4, a3, -48
	addw s11, s10, a4
	bgeu a1, s1, label326
	mv s10, a0
	j label135
.p2align 2
label436:
	mv a1, s11
.p2align 2
label437:
	sh2add a2, s8, s5
	sw a1, 0(a2)
	jal getch
	addiw a1, a0, -48
	bleu a1, s0, label284
	mv s9, a0
	mv s10, zero
	j label132
.p2align 2
label326:
	subw a0, zero, s11
	mv a1, a0
	bne s9, zero, label437
	j label436
.p2align 2
label132:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s2, label441
	mv a1, s10
.p2align 2
label441:
	bleu a2, s0, label317
	mv s9, a0
	mv s10, a1
	j label132
label289:
	mv s11, zero
	j label126
.p2align 2
label290:
	mv s11, zero
	j label129
label126:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label439
	j label438
.p2align 2
label129:
	jal getch
	sh2add a3, s11, s11
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	addw s11, s10, a4
	bgeu a1, s1, label309
	mv s10, a0
	j label129
.p2align 2
label317:
	mv s10, a0
	mv s9, a1
	addiw a0, a0, -48
	bltu a0, s1, label290
	j label289
.p2align 2
label309:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label439
	mv a0, s11
	sh2add a1, s8, s4
	addiw s8, s8, 1
	sw s11, 0(a1)
	bgt s7, s8, label128
label88:
	auipc a1, %pcrel_hi(fa)
	mv a0, s5
	mv a4, s3
	mv a3, zero
	addi a2, a1, %pcrel_lo(label88)
	mv a1, s4
label89:
	bge a3, zero, label197
.p2align 2
label94:
	addiw a3, a3, 1
	bge a3, zero, label202
	lw a5, 0(a1)
	lw t0, 4(a1)
	bgt a5, t0, label96
	addi a1, a1, 4
	addi a4, a4, 4
	addi a0, a0, 4
	blt a3, zero, label94
	j label197
.p2align 2
label96:
	lw t3, 0(a4)
	addi t1, a4, 4
	lw t2, 4(a4)
	sw t2, 0(a4)
	addi t2, a0, 4
	sw t3, 4(a4)
	addi t3, a1, 4
	lw t4, 0(a0)
	lw a4, 4(a0)
	sw a4, 0(a0)
	mv a4, t1
	sw t4, 4(a0)
	mv a0, t2
	sw t0, 0(a1)
	sw a5, 4(a1)
	mv a1, t3
	blt a3, zero, label94
label197:
	mv a3, zero
	mv a4, zero
.p2align 2
label100:
	bge a4, zero, label108
.p2align 2
label106:
	lw a0, 0(s3)
	lw t0, 0(s5)
	jal find
	mv a5, a0
	mv a0, t0
	jal find
	beq a5, a0, label100
	lw a5, 0(s4)
	lw a0, 0(s3)
	jal find
	addi s4, s4, 4
	addi s3, s3, 4
	addiw a4, a4, 1
	addw a3, a3, a5
	lw t0, 0(s5)
	sh2add a1, a0, a2
	addi s5, s5, 4
	sw t0, 0(a1)
	blt a4, zero, label106
	j label108
label254:
	mv s10, a0
	mv s9, zero
	addiw a0, a0, -48
	bltu a0, s1, label260
	j label259
label284:
	mv s10, a0
	mv s9, zero
	addiw a0, a0, -48
	bltu a0, s1, label290
	j label289
label268:
	mv s10, a0
	mv s9, zero
	addiw a0, a0, -48
	bltu a0, s1, label274
	j label273
label108:
	mv a0, a3
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s0, 16(sp)
	ld s5, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s10, 80(sp)
	ld s9, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 104
	ret
label202:
	addi a1, a1, 4
	addi a4, a4, 4
	addi a0, a0, 4
	j label89
label178:
	mv s5, zero
	j label86
label165:
	mv s3, zero
	j label83
