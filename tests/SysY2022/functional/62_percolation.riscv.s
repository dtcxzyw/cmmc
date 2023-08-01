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
	sd s6, 8(sp)
pcrel507:
	auipc s6, %pcrel_hi(array)
	sd s1, 16(sp)
	sd s0, 24(sp)
	addi s0, s6, %pcrel_lo(pcrel507)
	sd s5, 32(sp)
	li s5, 17
	sd s7, 40(sp)
	li s7, 1
	sd s4, 48(sp)
	mv s1, s7
	li s4, 10
	sd s3, 56(sp)
	li s3, 4
	sd s2, 64(sp)
	li s2, -1
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	beq s7, zero, label116
.p2align 2
label79:
	addiw s7, s7, -1
	mv s8, zero
	sw s2, 4(s0)
	sw s2, 8(s0)
	sw s2, 12(s0)
	sw s2, 16(s0)
	sw s2, 20(s0)
	sw s2, 24(s0)
	sw s2, 28(s0)
	sw s2, 32(s0)
	sw s2, 36(s0)
	sw s2, 40(s0)
	sw s2, 44(s0)
	sw s2, 48(s0)
	sw s2, 52(s0)
	sw s2, 56(s0)
	sw s2, 60(s0)
	sw s2, 64(s0)
	sw s2, 68(s0)
	mv s9, zero
	blt zero, s4, label83
	j label143
.p2align 2
label368:
	bne s8, zero, label392
.p2align 2
label115:
	mv a0, s2
	jal putint
	mv a0, s4
	jal putch
	bne s7, zero, label79
label116:
	mv a0, zero
	ld ra, 0(sp)
	ld s6, 8(sp)
	ld s1, 16(sp)
	ld s0, 24(sp)
	ld s5, 32(sp)
	ld s7, 40(sp)
	ld s4, 48(sp)
	ld s3, 56(sp)
	ld s2, 64(sp)
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
	j label368
.p2align 2
label102:
	lw a1, 68(s0)
	xori a2, a1, -1
	sltu a0, zero, a2
	bne a0, zero, label101
	mv a0, zero
	blt s9, s4, label83
	j label433
.p2align 2
label227:
	auipc s6, %pcrel_hi(array)
	lw a1, %pcrel_lo(label227)(s6)
	bne a1, s2, label102
	mv a0, zero
	blt s9, s4, label83
	beq s8, zero, label115
	j label398
.p2align 2
label84:
	addiw a0, s10, -1
	sh2add a2, a0, a3
	sh2add a1, a2, s0
	sw a2, 0(a1)
	bne s10, s1, label158
pcrel508:
	auipc s6, %pcrel_hi(array)
	sw zero, %pcrel_lo(pcrel508)(s6)
	mv a0, a2
	jal findfa
	mv a4, a0
	mv a0, zero
	jal findfa
	beq a4, a0, label164
	sh2add a1, a4, s0
	sw a0, 0(a1)
	bne s10, s3, label88
.p2align 2
label112:
	sw s5, 68(s0)
	mv a0, a2
	jal findfa
	mv a4, a0
	mv a0, s5
	jal findfa
	bne a4, a0, label113
	blt a3, s3, label89
	bgt a3, s1, label109
	blt s10, s3, label106
	bgt s10, s1, label103
pcrel509:
	auipc s6, %pcrel_hi(array)
	lw a1, %pcrel_lo(pcrel509)(s6)
	bne a1, s2, label102
	mv a0, zero
	blt s9, s4, label83
.p2align 2
label374:
	beq s8, zero, label115
.p2align 2
label398:
	bne s7, zero, label79
	j label116
.p2align 2
label103:
	addiw a3, a2, -4
	sh2add a1, a3, s0
	lw a0, 0(a1)
	beq a0, s2, label227
	mv a0, a2
	jal findfa
	mv a2, a0
	mv a0, a3
	jal findfa
	beq a2, a0, label233
	sh2add a1, a2, s0
	sw a0, 0(a1)
pcrel510:
	auipc s6, %pcrel_hi(array)
	lw a1, %pcrel_lo(pcrel510)(s6)
	bne a1, s2, label102
	j label380
.p2align 2
label243:
	bgt s10, s1, label103
pcrel511:
	auipc s6, %pcrel_hi(array)
	lw a1, %pcrel_lo(pcrel511)(s6)
	bne a1, s2, label102
	mv a0, zero
	blt s9, s4, label83
	j label374
.p2align 2
label89:
	addiw a4, a2, 1
	sh2add a0, a4, s0
	lw a1, 0(a0)
	bne a1, s2, label90
	bgt a3, s1, label109
	j label372
.p2align 2
label106:
	addiw a3, a2, 4
	sh2add a0, a3, s0
	lw a1, 0(a0)
	beq a1, s2, label243
	mv a0, a2
	jal findfa
	mv a4, a0
	mv a0, a3
	jal findfa
	bne a4, a0, label108
	j label249
.p2align 2
label109:
	addiw a3, a2, -1
	sh2add a1, a3, s0
	lw a0, 0(a1)
	bne a0, s2, label110
	blt s10, s3, label106
	bgt s10, s1, label103
	j label404
.p2align 2
label113:
	sh2add a1, a4, s0
	sw a0, 0(a1)
	blt a3, s3, label89
	bgt a3, s1, label109
	blt s10, s3, label106
	bgt s10, s1, label103
pcrel512:
	auipc s6, %pcrel_hi(array)
	lw a1, %pcrel_lo(pcrel512)(s6)
	bne a1, s2, label102
	mv a0, zero
	blt s9, s4, label83
	j label374
.p2align 2
label158:
	beq s10, s3, label112
	blt a3, s3, label89
	bgt a3, s1, label109
	blt s10, s3, label106
	bgt s10, s1, label103
pcrel513:
	auipc s6, %pcrel_hi(array)
	lw a1, %pcrel_lo(pcrel513)(s6)
	bne a1, s2, label102
	mv a0, zero
	blt s9, s4, label83
	j label374
.p2align 2
label100:
	mv a0, s9
	jal putint
	mv a0, s4
	jal putch
	mv s8, s1
	blt s9, s4, label83
	j label375
.p2align 2
label101:
	mv a0, zero
	jal findfa
	mv a2, a0
	mv a0, s5
	jal findfa
	xor a1, a2, a0
	sltiu a0, a1, 1
	bne a0, zero, label100
	blt s9, s4, label83
	beq s8, zero, label115
	bne s7, zero, label79
	j label116
.p2align 2
label90:
	mv a0, a2
	jal findfa
	mv a5, a0
	mv a0, a4
	jal findfa
	beq a5, a0, label188
	sh2add a1, a5, s0
	sw a0, 0(a1)
	bgt a3, s1, label109
	blt s10, s3, label106
	bgt s10, s1, label103
pcrel514:
	auipc s6, %pcrel_hi(array)
	lw a1, %pcrel_lo(pcrel514)(s6)
	bne a1, s2, label102
	mv a0, zero
	blt s9, s4, label83
	j label374
.p2align 2
label88:
	blt a3, s3, label89
	bgt a3, s1, label109
	blt s10, s3, label106
	bgt s10, s1, label103
pcrel515:
	auipc s6, %pcrel_hi(array)
	lw a1, %pcrel_lo(pcrel515)(s6)
	bne a1, s2, label102
	mv a0, zero
	blt s9, s4, label83
	j label374
.p2align 2
label110:
	mv a0, a2
	jal findfa
	mv a4, a0
	mv a0, a3
	jal findfa
	beq a4, a0, label265
	sh2add a1, a4, s0
	sw a0, 0(a1)
	blt s10, s3, label106
	bgt s10, s1, label103
pcrel516:
	auipc s6, %pcrel_hi(array)
	lw a1, %pcrel_lo(pcrel516)(s6)
	bne a1, s2, label102
	mv a0, zero
	blt s9, s4, label83
	j label374
.p2align 2
label164:
	beq s10, s3, label112
	blt a3, s3, label89
	bgt a3, s1, label109
	blt s10, s3, label106
	bgt s10, s1, label103
pcrel517:
	auipc s6, %pcrel_hi(array)
	lw a1, %pcrel_lo(pcrel517)(s6)
	bne a1, s2, label102
	mv a0, zero
	blt s9, s4, label83
	j label374
.p2align 2
label188:
	bgt a3, s1, label109
	blt s10, s3, label106
	bgt s10, s1, label103
pcrel518:
	auipc s6, %pcrel_hi(array)
	lw a1, %pcrel_lo(pcrel518)(s6)
	bne a1, s2, label102
	mv a0, zero
	blt s9, s4, label83
	j label374
.p2align 2
label108:
	sh2add a1, a4, s0
	sw a0, 0(a1)
	bgt s10, s1, label103
pcrel519:
	auipc s6, %pcrel_hi(array)
	lw a1, %pcrel_lo(pcrel519)(s6)
	bne a1, s2, label102
	mv a0, zero
	blt s9, s4, label83
	j label374
.p2align 2
label265:
	blt s10, s3, label106
	bgt s10, s1, label103
pcrel520:
	auipc s6, %pcrel_hi(array)
	lw a1, %pcrel_lo(pcrel520)(s6)
	bne a1, s2, label102
	mv a0, zero
	blt s9, s4, label83
	j label374
.p2align 2
label233:
	auipc s6, %pcrel_hi(array)
	lw a1, %pcrel_lo(label233)(s6)
	bne a1, s2, label102
	mv a0, zero
	blt s9, s4, label83
	j label374
.p2align 2
label249:
	bgt s10, s1, label103
pcrel521:
	auipc s6, %pcrel_hi(array)
	lw a1, %pcrel_lo(pcrel521)(s6)
	bne a1, s2, label102
	mv a0, zero
	blt s9, s4, label83
	j label374
.p2align 2
label372:
	blt s10, s3, label106
	bgt s10, s1, label103
pcrel522:
	auipc s6, %pcrel_hi(array)
	lw a1, %pcrel_lo(pcrel522)(s6)
	bne a1, s2, label102
	mv a0, zero
	blt s9, s4, label83
	j label374
.p2align 2
label404:
	auipc s6, %pcrel_hi(array)
	lw a1, %pcrel_lo(label404)(s6)
	bne a1, s2, label102
	mv a0, zero
	blt s9, s4, label83
	j label374
.p2align 2
label433:
	beq s8, zero, label115
	bne s7, zero, label79
	j label116
.p2align 2
label375:
	beq s8, zero, label115
	bne s7, zero, label79
	j label116
.p2align 2
label380:
	mv a0, zero
	blt s9, s4, label83
	j label374
label143:
	beq s8, zero, label115
	bne s7, zero, label79
	j label116
.p2align 2
label392:
	bne s7, zero, label79
	j label116
