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
find:
.p2align 2
	addi sp, sp, -48
pcrel73:
	auipc a1, %pcrel_hi(fa)
	sd s0, 40(sp)
	mv s0, a0
	sd s1, 32(sp)
	addi a0, a1, %pcrel_lo(pcrel73)
	sd s2, 24(sp)
	sh2add a1, s0, a0
	mv s1, a0
	sd s3, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	lw s2, 0(a1)
	bne s0, s2, label4
	mv a0, s0
label2:
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s0, 40(sp)
	addi sp, sp, 48
	ret
label4:
	sh2add a1, s2, s1
	lw s3, 0(a1)
	bne s2, s3, label7
	mv a0, s2
	sh2add a1, s0, s1
	sw s2, 0(a1)
	j label2
label7:
	sh2add a1, s3, s1
	lw s4, 0(a1)
	bne s3, s4, label10
	mv a0, s3
	sh2add a1, s2, s1
	sw s3, 0(a1)
	sh2add a1, s0, s1
	sw s3, 0(a1)
	j label2
label10:
	sh2add a1, s4, s1
	lw a0, 0(a1)
	bne s4, a0, label13
	mv a0, s4
	sh2add a1, s3, s1
	sw s4, 0(a1)
	sh2add a1, s2, s1
	sw s4, 0(a1)
	sh2add a1, s0, s1
	sw s4, 0(a1)
	j label2
label13:
	jal find
	sh2add a1, s4, s1
	sw a0, 0(a1)
	sh2add a1, s3, s1
	sw a0, 0(a1)
	sh2add a1, s2, s1
	sw a0, 0(a1)
	sh2add a1, s0, s1
	sw a0, 0(a1)
	j label2
.globl main
main:
.p2align 2
	addi sp, sp, -72
	sd s0, 64(sp)
	sd s5, 56(sp)
	sd s1, 48(sp)
	sd s6, 40(sp)
	sd s2, 32(sp)
	sd s3, 24(sp)
	sd s4, 16(sp)
	sd s7, 8(sp)
	sd ra, 0(sp)
.p2align 2
label75:
	jal getch
	li a1, 9
	addiw a0, a0, -48
	bgtu a0, a1, label75
.p2align 2
label76:
	jal getch
	li a1, 10
	addiw a0, a0, -48
	bltu a0, a1, label76
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bgtu a1, a2, label147
	mv s0, zero
	li a2, 10
	bltu a1, a2, label160
	mv s2, zero
	mv a0, zero
	mv s3, zero
label422:
	mv s3, s2
	j label382
label147:
	mv s1, a0
	mv s2, zero
.p2align 2
label78:
	jal getch
	li s0, 1
	li a2, 45
	addiw a1, a0, -48
	beq s1, a2, label380
	mv s0, s2
.p2align 2
label380:
	li a2, 9
	bgtu a1, a2, label155
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label160
	mv s2, zero
	mv a0, zero
	mv s3, zero
	bne s0, zero, label382
	j label422
label155:
	mv s1, a0
	mv s2, s0
	j label78
label160:
	mv s1, a0
	mv s2, zero
.p2align 2
label84:
	jal getch
	sh2add a3, s2, s2
	addiw a1, a0, -48
	slliw a4, a3, 1
	li a3, 10
	addi a2, a4, -48
	addw s2, s1, a2
	bltu a1, a3, label169
	subw a0, zero, s2
	mv s3, a0
	bne s0, zero, label382
	j label422
label169:
	mv s1, a0
	j label84
label382:
	auipc a0, %pcrel_hi(c)
	addi s2, a0, %pcrel_lo(label382)
pcrel437:
	auipc a0, %pcrel_hi(u)
	addi s0, a0, %pcrel_lo(pcrel437)
pcrel438:
	auipc a0, %pcrel_hi(v)
	addi s1, a0, %pcrel_lo(pcrel438)
	ble s3, zero, label181
	mv s4, zero
	j label89
.p2align 2
label181:
	auipc a0, %pcrel_hi(fa)
	mv a2, zero
	mv a3, zero
	addi a4, a0, %pcrel_lo(label181)
	j label128
.p2align 2
label89:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bgtu a1, a2, label188
	mv s5, zero
	li a2, 10
	bltu a1, a2, label193
	mv a0, zero
	mv a2, zero
	mv a1, zero
.p2align 2
label425:
	mv a1, a0
	j label384
.p2align 2
label188:
	mv s6, a0
	mv s5, zero
	j label121
.p2align 2
label193:
	mv s6, a0
	mv s7, zero
.p2align 2
label94:
	jal getch
	sh2add a4, s7, s7
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	li a3, 10
	addw s7, s6, a2
	bltu a1, a3, label202
	mv a0, s7
	subw a2, zero, s7
	mv a1, a2
	bne s5, zero, label384
	j label425
.p2align 2
label202:
	mv s6, a0
	j label94
.p2align 2
label384:
	sh2add a0, s4, s0
	sw a1, 0(a0)
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bgtu a1, a2, label213
	mv s5, zero
	li a2, 10
	bltu a1, a2, label218
	mv a0, zero
	mv a2, zero
	mv a1, zero
.p2align 2
label426:
	mv a1, a0
	j label386
.p2align 2
label213:
	mv s6, a0
	mv s5, zero
	j label118
.p2align 2
label218:
	mv s6, a0
	mv s7, zero
.p2align 2
label102:
	jal getch
	sh2add a2, s7, s7
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addi a3, a4, -48
	addw s7, s6, a3
	bltu a1, a2, label227
	mv a0, s7
	subw a2, zero, s7
	mv a1, a2
	bne s5, zero, label386
	j label426
.p2align 2
label227:
	mv s6, a0
	j label102
.p2align 2
label386:
	sh2add a0, s4, s1
	sw a1, 0(a0)
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bgtu a1, a2, label238
	mv s5, zero
	li a2, 10
	bltu a1, a2, label243
	mv a0, zero
	mv a2, zero
	mv a1, zero
	sh2add a0, s4, s2
	addiw s4, s4, 1
	sw zero, 0(a0)
	bgt s3, s4, label89
	j label181
.p2align 2
label238:
	mv s6, a0
	mv s5, zero
	j label115
.p2align 2
label243:
	mv s6, a0
	mv s7, zero
	j label112
.p2align 2
label388:
	sh2add a0, s4, s2
	addiw s4, s4, 1
	sw a1, 0(a0)
	bgt s3, s4, label89
	j label181
.p2align 2
label112:
	jal getch
	sh2add a4, s7, s7
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	li a2, 10
	addw s7, s6, a3
	bltu a1, a2, label262
	mv a0, s7
	subw a2, zero, s7
	mv a1, a2
	bne s5, zero, label388
	mv a1, s7
	sh2add a0, s4, s2
	addiw s4, s4, 1
	sw s7, 0(a0)
	bgt s3, s4, label89
	j label181
.p2align 2
label262:
	mv s6, a0
	j label112
.p2align 2
label115:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s6, a3, label390
	mv a2, s5
.p2align 2
label390:
	li a3, 9
	bgtu a1, a3, label270
	mv s5, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label243
	mv a0, zero
	mv a2, zero
	mv a1, zero
	bne s5, zero, label388
	sh2add a0, s4, s2
	addiw s4, s4, 1
	sw zero, 0(a0)
	bgt s3, s4, label89
	j label181
.p2align 2
label270:
	mv s6, a0
	mv s5, a2
	j label115
.p2align 2
label118:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s6, a3, label392
	mv a2, s5
.p2align 2
label392:
	li a3, 9
	bgtu a1, a3, label278
	mv s5, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label218
	mv a0, zero
	mv a2, zero
	mv a1, zero
	bne s5, zero, label386
	j label426
.p2align 2
label278:
	mv s6, a0
	mv s5, a2
	j label118
.p2align 2
label121:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s6, a3, label394
	mv a2, s5
.p2align 2
label394:
	li a3, 9
	bgtu a1, a3, label286
	mv s5, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label193
	mv a0, zero
	mv a2, zero
	mv a1, zero
	bne s5, zero, label384
	j label425
.p2align 2
label286:
	mv s6, a0
	mv s5, a2
	j label121
label128:
	mv a0, a2
	ld ra, 0(sp)
	ld s7, 8(sp)
	ld s4, 16(sp)
	ld s3, 24(sp)
	ld s2, 32(sp)
	ld s6, 40(sp)
	ld s1, 48(sp)
	ld s5, 56(sp)
	ld s0, 64(sp)
	addi sp, sp, 72
	ret
