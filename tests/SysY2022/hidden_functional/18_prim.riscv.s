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
	addi sp, sp, -80
pcrel141:
	auipc a1, %pcrel_hi(fa)
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s5, 16(sp)
	sd s3, 24(sp)
	addi s3, a1, %pcrel_lo(pcrel141)
	sd s1, 32(sp)
	sh2add a0, a0, s3
	sd s6, 40(sp)
	sd s2, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	lw s1, 0(a0)
	beq s0, s1, label34
	sh2add a1, s1, s3
	lw s2, 0(a1)
	bne s1, s2, label5
	mv a0, s1
	sh2add a1, s0, s3
	sw s1, 0(a1)
	j label24
label34:
	mv a0, s0
label24:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s3, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s2, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	addi sp, sp, 80
	ret
label5:
	sh2add a1, s2, s3
	lw s4, 0(a1)
	beq s2, s4, label50
	sh2add a1, s4, s3
	lw s5, 0(a1)
	bne s4, s5, label9
	mv a0, s4
	sh2add a1, s2, s3
	sw s4, 0(a1)
	sh2add a1, s1, s3
	sw s4, 0(a1)
	sh2add a1, s0, s3
	sw s4, 0(a1)
	j label24
label9:
	sh2add a1, s5, s3
	lw s6, 0(a1)
	beq s5, s6, label66
	sh2add a1, s6, s3
	lw s7, 0(a1)
	bne s6, s7, label11
	mv a0, s6
	sh2add a1, s5, s3
	sw s6, 0(a1)
	sh2add a1, s4, s3
	sw s6, 0(a1)
	sh2add a1, s2, s3
	sw s6, 0(a1)
	sh2add a1, s1, s3
	sw s6, 0(a1)
	sh2add a1, s0, s3
	sw s6, 0(a1)
	j label24
label11:
	sh2add a1, s7, s3
	lw s8, 0(a1)
	beq s7, s8, label80
	sh2add a1, s8, s3
	lw a0, 0(a1)
	bne s8, a0, label13
	mv a0, s8
	sh2add a1, s7, s3
	sw s8, 0(a1)
	sh2add a1, s6, s3
	sw s8, 0(a1)
	sh2add a1, s5, s3
	sw s8, 0(a1)
	sh2add a1, s4, s3
	sw s8, 0(a1)
	sh2add a1, s2, s3
	sw s8, 0(a1)
	sh2add a1, s1, s3
	sw s8, 0(a1)
	sh2add a1, s0, s3
	sw s8, 0(a1)
	j label24
label13:
	jal find
	sh2add a1, s8, s3
	sw a0, 0(a1)
	sh2add a1, s7, s3
	sw a0, 0(a1)
	sh2add a1, s6, s3
	sw a0, 0(a1)
	sh2add a1, s5, s3
	sw a0, 0(a1)
	sh2add a1, s4, s3
	sw a0, 0(a1)
	sh2add a1, s2, s3
	sw a0, 0(a1)
	sh2add a1, s1, s3
	sw a0, 0(a1)
	sh2add a1, s0, s3
	sw a0, 0(a1)
	j label24
label80:
	mv a0, s7
	sh2add a1, s6, s3
	sw s7, 0(a1)
	sh2add a1, s5, s3
	sw s7, 0(a1)
	sh2add a1, s4, s3
	sw s7, 0(a1)
	sh2add a1, s2, s3
	sw s7, 0(a1)
	sh2add a1, s1, s3
	sw s7, 0(a1)
	sh2add a1, s0, s3
	sw s7, 0(a1)
	j label24
label66:
	mv a0, s5
	sh2add a1, s4, s3
	sw s5, 0(a1)
	sh2add a1, s2, s3
	sw s5, 0(a1)
	sh2add a1, s1, s3
	sw s5, 0(a1)
	sh2add a1, s0, s3
	sw s5, 0(a1)
	j label24
label50:
	mv a0, s2
	sh2add a1, s1, s3
	sw s2, 0(a1)
	sh2add a1, s0, s3
	sw s2, 0(a1)
	j label24
.p2align 2
.globl main
main:
	addi sp, sp, -104
	sd ra, 0(sp)
	sd s0, 8(sp)
	li s0, 10
	sd s5, 16(sp)
	sd s2, 24(sp)
	li s2, 45
	sd s1, 32(sp)
	li s1, 9
	sd s6, 40(sp)
	sd s4, 48(sp)
	sd s3, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
.p2align 2
label143:
	jal getch
	addiw a1, a0, -48
	bgtu a1, s1, label143
.p2align 2
label144:
	jal getch
	addiw a1, a0, -48
	bltu a1, s0, label144
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label232
	mv s3, a0
	mv s4, zero
	j label214
.p2align 2
label512:
	mv a1, s4
.p2align 2
label513:
	bleu a2, s1, label427
	mv s3, a0
	mv s4, a1
.p2align 2
label214:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s3, s2, label513
	j label512
label427:
	mv s4, a0
	mv s3, a1
label146:
	addiw a0, s4, -48
	bgeu a0, s0, label237
	mv s5, zero
	j label149
.p2align 2
label247:
	mv s4, a0
.p2align 2
label149:
	jal getch
	sh2add a2, s5, s5
	addiw a1, a0, -48
	slliw a3, a2, 1
	addi a4, a3, -48
	addw s5, s4, a4
	bltu a1, s0, label247
label152:
	subw a0, zero, s5
	mv s7, a0
	bne s3, zero, label499
	mv s7, s5
label499:
	auipc a0, %pcrel_hi(u)
pcrel560:
	auipc a1, %pcrel_hi(v)
	addi s3, a0, %pcrel_lo(label499)
	addi s4, a1, %pcrel_lo(pcrel560)
pcrel561:
	auipc a0, %pcrel_hi(c)
	addi s5, a0, %pcrel_lo(pcrel561)
	ble s7, zero, label154
	mv s6, s3
	mv s8, zero
	j label176
label383:
	mv s11, zero
	mv a1, zero
	mv a0, zero
	bne s9, zero, label507
.p2align 2
label507:
	sh2add a1, s8, s5
	addiw s8, s8, 1
	sw a0, 0(a1)
	ble s7, s8, label154
.p2align 2
label204:
	addi s6, s6, 4
.p2align 2
label176:
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label322
	mv s9, a0
	mv s10, zero
	j label179
.p2align 2
label500:
	mv a1, s10
.p2align 2
label501:
	bleu a2, s1, label330
	mv s9, a0
	mv s10, a1
.p2align 2
label179:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s2, label501
	j label500
.p2align 2
label330:
	mv s9, a1
	addiw a2, a0, -48
	bgeu a2, s0, label530
.p2align 2
label336:
	mv s10, a0
	mv s11, zero
	j label185
.p2align 2
label345:
	mv s10, a0
.p2align 2
label185:
	jal getch
	sh2add a2, s11, s11
	addiw a1, a0, -48
	slliw a4, a2, 1
	addi a3, a4, -48
	addw s11, s10, a3
	bltu a1, s0, label345
	subw a0, zero, s11
	mv a1, a0
	bne s9, zero, label503
.p2align 2
label531:
	mv a1, s11
.p2align 2
label503:
	sw a1, 0(s6)
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label353
	mv s9, a0
	mv s10, zero
	j label211
.p2align 2
label510:
	mv a1, s10
.p2align 2
label511:
	bleu a2, s1, label419
	mv s9, a0
	mv s10, a1
.p2align 2
label211:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s2, label511
	j label510
.p2align 2
label419:
	mv s10, a0
	mv s9, a1
	addiw a0, a0, -48
	bgeu a0, s0, label358
.p2align 2
label359:
	mv s11, zero
	j label193
.p2align 2
label368:
	mv s10, a0
.p2align 2
label193:
	jal getch
	sh2add a4, s11, s11
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	addw s11, s10, a2
	bltu a1, s0, label368
	subw a0, zero, s11
	mv a1, a0
	bne s9, zero, label505
.p2align 2
label532:
	mv a1, s11
.p2align 2
label505:
	sh2add a2, s8, s4
	sw a1, 0(a2)
	jal getch
	addiw a1, a0, -48
	bleu a1, s1, label378
	mv s9, a0
	mv s10, zero
	j label208
.p2align 2
label509:
	bleu a2, s1, label411
	mv s9, a0
	mv s10, a1
.p2align 2
label208:
	jal getch
	li a1, 1
	addiw a2, a0, -48
	beq s9, s2, label509
	mv a1, s10
	j label509
.p2align 2
label411:
	mv s10, a0
	mv s9, a1
	addiw a0, a0, -48
	bgeu a0, s0, label383
.p2align 2
label384:
	mv s11, zero
	j label205
.p2align 2
label404:
	mv s10, a0
.p2align 2
label205:
	jal getch
	sh2add a3, s11, s11
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s11, s10, a2
	bltu a1, s0, label404
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label507
	mv a0, s11
	sh2add a1, s8, s5
	addiw s8, s8, 1
	sw s11, 0(a1)
	bgt s7, s8, label204
label154:
	mv a0, s4
	mv a3, s3
	mv a1, s5
	mv a2, zero
label155:
	blt a2, zero, label170
	j label160
.p2align 2
label173:
	addi a1, a1, 4
	addi a3, a3, 4
	addi a0, a0, 4
	bge a2, zero, label160
.p2align 2
label170:
	addiw a2, a2, 1
	bge a2, zero, label171
	lw a4, 0(a1)
	lw a5, 4(a1)
	ble a4, a5, label173
	lw t2, 0(a3)
	addi t0, a3, 4
	lw t1, 4(a3)
	sw t1, 0(a3)
	addi t1, a0, 4
	sw t2, 4(a3)
	addi t2, a1, 4
	lw t3, 0(a0)
	lw a3, 4(a0)
	sw a3, 0(a0)
	mv a3, t0
	sw t3, 4(a0)
	mv a0, t1
	sw a5, 0(a1)
	sw a4, 4(a1)
	mv a1, t2
	blt a2, zero, label170
label160:
	auipc a0, %pcrel_hi(fa)
	mv a3, zero
	mv a4, zero
	addi a2, a0, %pcrel_lo(label160)
.p2align 2
label161:
	bge a4, zero, label169
.p2align 2
label167:
	lw a0, 0(s3)
	lw t0, 0(s4)
	jal find
	mv a5, a0
	mv a0, t0
	jal find
	beq a5, a0, label161
	lw a5, 0(s5)
	lw a0, 0(s3)
	jal find
	addi s5, s5, 4
	addi s3, s3, 4
	addw a3, a3, a5
	addiw a4, a4, 1
	lw t0, 0(s4)
	sh2add a1, a0, a2
	addi s4, s4, 4
	sw t0, 0(a1)
	blt a4, zero, label167
	j label169
label322:
	mv s9, zero
	addiw a2, a0, -48
	bltu a2, s0, label336
label530:
	mv s11, zero
	mv a0, zero
	mv a1, zero
	bne s9, zero, label503
	j label531
label353:
	mv s10, a0
	mv s9, zero
	addiw a0, a0, -48
	bltu a0, s0, label359
label358:
	mv s11, zero
	mv a0, zero
	mv a1, zero
	bne s9, zero, label505
	j label532
label378:
	mv s10, a0
	mv s9, zero
	addiw a0, a0, -48
	bltu a0, s0, label384
	j label383
label171:
	addi a1, a1, 4
	addi a3, a3, 4
	addi a0, a0, 4
	j label155
label169:
	mv a0, a3
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s4, 48(sp)
	ld s3, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 104
	ret
label232:
	mv s4, a0
	mv s3, zero
	j label146
label237:
	mv s5, zero
	j label152
