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
	j label12
label22:
	mv a0, s0
label12:
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
	beq s2, s3, label38
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
	j label12
label38:
	mv a0, s2
	sh2add a1, s1, s4
	sw s2, 0(a1)
	sh2add a1, s0, s4
	sw s2, 0(a1)
	j label12
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
	j label12
.p2align 2
.globl main
main:
	addi sp, sp, -96
	sd ra, 0(sp)
	sd s5, 8(sp)
pcrel469:
	auipc s5, %pcrel_hi(array)
	sd s0, 16(sp)
	addi s0, s5, %pcrel_lo(pcrel469)
	sd s7, 24(sp)
	li s7, 1
	sd s4, 32(sp)
	li s4, 10
	sd s3, 40(sp)
	li s3, 4
	sd s2, 48(sp)
	mv s2, s7
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
label365:
	bne s8, zero, label389
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
	ld s3, 40(sp)
	ld s2, 48(sp)
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
label97:
	lw a0, 68(s0)
	bne a0, s1, label98
	blt s9, s4, label83
	j label373
.p2align 2
label237:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(label237)(s5)
	bne a0, s1, label97
	blt s9, s4, label83
	j label372
.p2align 2
label84:
	addiw a1, s10, -1
	sh2add a2, a1, a3
	sh2add a0, a2, s0
	sw a2, 0(a0)
	beq s10, s2, label108
	bne s10, s3, label86
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
	blt s10, s3, label103
	bgt s10, s2, label100
pcrel470:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel470)(s5)
	bne a0, s1, label97
	blt s9, s4, label83
	j label372
.p2align 2
label87:
	addiw a4, a2, 1
	sh2add a1, a4, s0
	lw a0, 0(a1)
	beq a0, s1, label170
	mv a0, a2
	jal findfa
	mv a5, a0
	mv a0, a4
	jal findfa
	beq a5, a0, label176
	sh2add a1, a5, s0
	sw a0, 0(a1)
	bgt a3, s2, label91
	blt s10, s3, label103
	j label369
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
	blt s10, s3, label103
	bgt s10, s2, label100
	lw a0, %pcrel_lo(label108)(s5)
	bne a0, s1, label97
	blt s9, s4, label83
	j label372
.p2align 2
label93:
	sh2add a1, a4, s0
	sw a0, 0(a1)
	bge s10, s3, label95
.p2align 2
label103:
	addiw a3, a2, 4
	sh2add a0, a3, s0
	lw a1, 0(a0)
	bne a1, s1, label104
	bgt s10, s2, label100
pcrel471:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel471)(s5)
	bne a0, s1, label97
	blt s9, s4, label83
	j label372
.p2align 2
label95:
	bgt s10, s2, label100
	j label96
.p2align 2
label372:
	beq s8, zero, label111
.p2align 2
label396:
	bne s7, zero, label79
	j label112
.p2align 2
label100:
	addiw a3, a2, -4
	sh2add a1, a3, s0
	lw a0, 0(a1)
	beq a0, s1, label231
	mv a0, a2
	jal findfa
	mv a2, a0
	mv a0, a3
	jal findfa
	beq a2, a0, label237
	sh2add a1, a2, s0
	sw a0, 0(a1)
pcrel472:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel472)(s5)
	bne a0, s1, label97
	blt s9, s4, label83
	j label372
.p2align 2
label170:
	ble a3, s2, label367
.p2align 2
label91:
	addiw a3, a2, -1
	sh2add a0, a3, s0
	lw a1, 0(a0)
	bne a1, s1, label92
	blt s10, s3, label103
	bgt s10, s2, label100
pcrel473:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel473)(s5)
	bne a0, s1, label97
	blt s9, s4, label83
	j label372
.p2align 2
label86:
	blt a3, s3, label87
	bgt a3, s2, label91
	blt s10, s3, label103
	bgt s10, s2, label100
pcrel474:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel474)(s5)
	bne a0, s1, label97
	blt s9, s4, label83
	j label372
.p2align 2
label104:
	mv a0, a2
	jal findfa
	mv a4, a0
	mv a0, a3
	jal findfa
	beq a4, a0, label253
	sh2add a1, a4, s0
	sw a0, 0(a1)
	bgt s10, s2, label100
pcrel475:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel475)(s5)
	bne a0, s1, label97
	blt s9, s4, label83
	j label372
.p2align 2
label231:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(label231)(s5)
	bne a0, s1, label97
	blt s9, s4, label83
	beq s8, zero, label111
	j label396
.p2align 2
label107:
	sh2add a1, a4, s0
	sw a0, 0(a1)
	blt a3, s3, label87
	bgt a3, s2, label91
	blt s10, s3, label103
	bgt s10, s2, label100
pcrel476:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel476)(s5)
	bne a0, s1, label97
	blt s9, s4, label83
	j label372
.p2align 2
label364:
	bne s7, zero, label79
	j label112
.p2align 2
label98:
	mv a0, zero
	jal findfa
	mv a2, a0
	mv a0, s6
	jal findfa
	bne a2, a0, label223
	mv a0, s9
	jal putint
	mv a0, s4
	jal putch
	mv s8, s2
	blt s9, s4, label83
	beq s2, zero, label111
	j label364
.p2align 2
label109:
	sh2add a1, a4, s0
	sw a0, 0(a1)
	beq s10, s3, label106
	blt a3, s3, label87
	bgt a3, s2, label91
	blt s10, s3, label103
	bgt s10, s2, label100
pcrel477:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel477)(s5)
	bne a0, s1, label97
	blt s9, s4, label83
	j label372
.p2align 2
label92:
	mv a0, a2
	jal findfa
	mv a4, a0
	mv a0, a3
	jal findfa
	bne a4, a0, label93
	blt s10, s3, label103
	bgt s10, s2, label100
pcrel478:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel478)(s5)
	bne a0, s1, label97
	blt s9, s4, label83
	j label372
.p2align 2
label253:
	bgt s10, s2, label100
pcrel479:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel479)(s5)
	bne a0, s1, label97
	blt s9, s4, label83
	j label372
.p2align 2
label367:
	blt s10, s3, label103
	bgt s10, s2, label100
pcrel480:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel480)(s5)
	bne a0, s1, label97
	blt s9, s4, label83
	j label372
.p2align 2
label176:
	bgt a3, s2, label91
	blt s10, s3, label103
	bgt s10, s2, label100
pcrel481:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel481)(s5)
	bne a0, s1, label97
	blt s9, s4, label83
	j label372
.p2align 2
label96:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(label96)(s5)
	bne a0, s1, label97
	blt s9, s4, label83
	j label372
.p2align 2
label369:
	bgt s10, s2, label100
pcrel482:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel482)(s5)
	bne a0, s1, label97
	blt s9, s4, label83
	j label372
.p2align 2
label373:
	beq s8, zero, label111
	bne s7, zero, label79
	j label112
.p2align 2
label223:
	blt s9, s4, label83
	beq s8, zero, label111
	j label364
.p2align 2
label389:
	bne s7, zero, label79
	j label112
label139:
	beq s8, zero, label111
	j label364
