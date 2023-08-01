.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
array:
	.zero	440
.text
.p2align 2
findfa:
	addi sp, sp, -48
pcrel75:
	auipc a1, %pcrel_hi(array)
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
	bne s1, s2, label5
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
label5:
	sh2add a1, s2, s4
	lw s3, 0(a1)
	beq s2, s3, label36
	sh2add a1, s3, s4
	lw a0, 0(a1)
	bne s3, a0, label11
	mv a0, s3
	sh2add a1, s2, s4
	sw s3, 0(a1)
	sh2add a1, s1, s4
	sw s3, 0(a1)
	sh2add a1, s0, s4
	sw s3, 0(a1)
	j label2
label36:
	mv a0, s2
	sh2add a1, s1, s4
	sw s2, 0(a1)
	sh2add a1, s0, s4
	sw s2, 0(a1)
	j label2
label11:
	jal findfa
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
	addi sp, sp, -96
	sd ra, 0(sp)
	sd s5, 8(sp)
pcrel472:
	auipc s5, %pcrel_hi(array)
	sd s0, 16(sp)
	addi s0, s5, %pcrel_lo(pcrel472)
	sd s7, 24(sp)
	li s7, 1
	sd s4, 32(sp)
	li s4, 10
	sd s2, 40(sp)
	mv s2, s7
	sd s3, 48(sp)
	li s3, 4
	sd s1, 56(sp)
	li s1, -1
	sd s6, 64(sp)
	li s6, 17
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	beq s7, zero, label112
.p2align 2
label79:
	addiw s7, s7, -1
	mv s8, zero
	sw s1, 4(s0)
	sw s1, 8(s0)
	sw s1, 12(s0)
	sw s1, 16(s0)
	sw s1, 20(s0)
	sw s1, 24(s0)
	sw s1, 28(s0)
	sw s1, 32(s0)
	sw s1, 36(s0)
	sw s1, 40(s0)
	sw s1, 44(s0)
	sw s1, 48(s0)
	sw s1, 52(s0)
	sw s1, 56(s0)
	sw s1, 60(s0)
	sw s1, 64(s0)
	sw s1, 68(s0)
	mv s9, zero
	blt zero, s4, label83
	j label139
.p2align 2
label101:
	mv a0, zero
	jal findfa
	mv a2, a0
	mv a0, s6
	jal findfa
	bne a2, a0, label239
	mv a0, s9
	jal putint
	mv a0, s4
	jal putch
	mv s8, s2
	blt s9, s4, label83
	bne s2, zero, label364
.p2align 2
label111:
	mv a0, s1
	jal putint
	mv a0, s4
	jal putch
	bne s7, zero, label79
label112:
	mv a0, zero
	ld ra, 0(sp)
	ld s5, 8(sp)
	ld s0, 16(sp)
	ld s7, 24(sp)
	ld s4, 32(sp)
	ld s2, 40(sp)
	ld s3, 48(sp)
	ld s1, 56(sp)
	ld s6, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	addi sp, sp, 96
	ret
.p2align 2
label83:
	jal getint
	mv s10, a0
	jal getint
	addiw s9, s9, 1
	mv a3, a0
	beq s8, zero, label84
	blt s9, s4, label83
	j label365
.p2align 2
label375:
	beq s8, zero, label111
.p2align 2
label399:
	bne s7, zero, label79
	j label112
.p2align 2
label100:
	lw a0, 68(s0)
	bne a0, s1, label101
	blt s9, s4, label83
	j label376
.p2align 2
label104:
	mv a0, a2
	jal findfa
	mv a2, a0
	mv a0, a3
	jal findfa
	beq a2, a0, label253
	sh2add a1, a2, s0
	sw a0, 0(a1)
pcrel473:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel473)(s5)
	bne a0, s1, label100
	blt s9, s4, label83
	j label375
.p2align 2
label84:
	addiw a0, s10, -1
	sh2add a2, a0, a3
	sh2add a1, a2, s0
	sw a2, 0(a1)
	beq s10, s2, label108
	j label85
.p2align 2
label106:
	sw s6, 68(s0)
	mv a0, a2
	jal findfa
	mv a4, a0
	mv a0, s6
	jal findfa
	bne a4, a0, label107
	blt a3, s3, label87
	bgt a3, s2, label91
	j label406
.p2align 2
label108:
	auipc s5, %pcrel_hi(array)
	sw zero, %pcrel_lo(label108)(s5)
	mv a0, a2
	jal findfa
	mv a4, a0
	mv a0, zero
	jal findfa
	bne a4, a0, label109
	beq s10, s3, label106
	blt a3, s3, label87
	bgt a3, s2, label91
	blt s10, s3, label95
	bgt s10, s2, label103
	lw a0, %pcrel_lo(label108)(s5)
	bne a0, s1, label100
	blt s9, s4, label83
	j label417
.p2align 2
label85:
	beq s10, s3, label106
	blt a3, s3, label87
	bgt a3, s2, label91
	blt s10, s3, label95
	bgt s10, s2, label103
pcrel474:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel474)(s5)
	bne a0, s1, label100
	blt s9, s4, label83
	j label417
.p2align 2
label93:
	sh2add a1, a4, s0
	sw a0, 0(a1)
	blt s10, s3, label95
	ble s10, s2, label372
.p2align 2
label103:
	addiw a3, a2, -4
	sh2add a0, a3, s0
	lw a1, 0(a0)
	bne a1, s1, label104
pcrel475:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel475)(s5)
	bne a0, s1, label100
	blt s9, s4, label83
	beq s8, zero, label111
	j label399
.p2align 2
label176:
	ble a3, s2, label368
.p2align 2
label91:
	addiw a3, a2, -1
	sh2add a0, a3, s0
	lw a1, 0(a0)
	bne a1, s1, label92
	bge s10, s3, label370
.p2align 2
label95:
	addiw a3, a2, 4
	sh2add a0, a3, s0
	lw a1, 0(a0)
	beq a1, s1, label210
	mv a0, a2
	jal findfa
	mv a4, a0
	mv a0, a3
	jal findfa
	beq a4, a0, label216
	sh2add a1, a4, s0
	sw a0, 0(a1)
	bgt s10, s2, label103
pcrel476:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel476)(s5)
	bne a0, s1, label100
	blt s9, s4, label83
	j label375
.p2align 2
label87:
	addiw a4, a2, 1
	sh2add a0, a4, s0
	lw a1, 0(a0)
	beq a1, s1, label170
	mv a0, a2
	jal findfa
	mv a5, a0
	mv a0, a4
	jal findfa
	beq a5, a0, label176
	sh2add a1, a5, s0
	sw a0, 0(a1)
	bgt a3, s2, label91
	j label182
.p2align 2
label107:
	sh2add a1, a4, s0
	sw a0, 0(a1)
	blt a3, s3, label87
	bgt a3, s2, label91
	blt s10, s3, label95
	bgt s10, s2, label103
pcrel477:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel477)(s5)
	bne a0, s1, label100
	blt s9, s4, label83
	j label417
.p2align 2
label92:
	mv a0, a2
	jal findfa
	mv a4, a0
	mv a0, a3
	jal findfa
	bne a4, a0, label93
	blt s10, s3, label95
	bgt s10, s2, label103
pcrel478:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel478)(s5)
	bne a0, s1, label100
	blt s9, s4, label83
	j label417
.p2align 2
label109:
	sh2add a1, a4, s0
	sw a0, 0(a1)
	beq s10, s3, label106
	blt a3, s3, label87
	bgt a3, s2, label91
	blt s10, s3, label95
	bgt s10, s2, label103
pcrel479:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel479)(s5)
	bne a0, s1, label100
	blt s9, s4, label83
	j label417
.p2align 2
label210:
	bgt s10, s2, label103
pcrel480:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel480)(s5)
	bne a0, s1, label100
	blt s9, s4, label83
	j label375
.p2align 2
label170:
	bgt a3, s2, label91
	blt s10, s3, label95
	bgt s10, s2, label103
pcrel481:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel481)(s5)
	bne a0, s1, label100
	blt s9, s4, label83
	j label417
.p2align 2
label216:
	bgt s10, s2, label103
pcrel482:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel482)(s5)
	bne a0, s1, label100
	blt s9, s4, label83
	j label375
.p2align 2
label253:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(label253)(s5)
	bne a0, s1, label100
	blt s9, s4, label83
	j label375
.p2align 2
label370:
	bgt s10, s2, label103
pcrel483:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel483)(s5)
	bne a0, s1, label100
	blt s9, s4, label83
label417:
	beq s8, zero, label111
	j label399
.p2align 2
label406:
	blt s10, s3, label95
	bgt s10, s2, label103
pcrel484:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel484)(s5)
	bne a0, s1, label100
	blt s9, s4, label83
	j label417
.p2align 2
label182:
	blt s10, s3, label95
	bgt s10, s2, label103
pcrel485:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel485)(s5)
	bne a0, s1, label100
	blt s9, s4, label83
	j label417
.p2align 2
label368:
	blt s10, s3, label95
	bgt s10, s2, label103
pcrel486:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel486)(s5)
	bne a0, s1, label100
	blt s9, s4, label83
	j label417
.p2align 2
label372:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(label372)(s5)
	bne a0, s1, label100
	blt s9, s4, label83
	j label417
.p2align 2
label365:
	beq s8, zero, label111
	bne s7, zero, label79
	j label112
.p2align 2
label376:
	beq s8, zero, label111
	bne s7, zero, label79
	j label112
.p2align 2
label239:
	blt s9, s4, label83
	beq s8, zero, label111
.p2align 2
label364:
	bne s7, zero, label79
	j label112
label139:
	beq s8, zero, label111
	j label364
