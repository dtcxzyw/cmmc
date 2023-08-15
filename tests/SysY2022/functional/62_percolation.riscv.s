.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
array:
	.zero	440
.text
.p2align 2
findfa:
	addi sp, sp, -80
pcrel141:
	auipc a1, %pcrel_hi(array)
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
	jal findfa
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
	li a0, -1
	sd ra, 0(sp)
	sd s5, 8(sp)
pcrel552:
	auipc s5, %pcrel_hi(array)
	sd s0, 16(sp)
	addi s0, s5, %pcrel_lo(pcrel552)
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
	slli s6, a0, 32
	sd s11, 72(sp)
	sd s9, 80(sp)
	sd s8, 88(sp)
	sd s10, 96(sp)
	bne s7, zero, label145
	j label180
.p2align 2
label334:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(label334)(s5)
	bne a0, s1, label170
	sltiu s11, s8, 1
	blt s9, s4, label146
.p2align 2
label463:
	bne s8, zero, label486
.p2align 2
label179:
	mv a0, s1
	jal putint
	mv a0, s4
	jal putch
	beq s7, zero, label180
.p2align 2
label145:
	sw s1, 4(s0)
	add.uw a0, s1, s6
	addiw s7, s7, -1
	mv s11, s2
	mv s9, zero
	mv s8, zero
	sd a0, 8(s0)
	sd a0, 16(s0)
	sd a0, 24(s0)
	sd a0, 32(s0)
	sd a0, 40(s0)
	sd a0, 48(s0)
	sd a0, 56(s0)
	sd a0, 64(s0)
	j label146
.p2align 2
label208:
	sltiu s11, s8, 1
	bge s9, s4, label449
.p2align 2
label146:
	jal getint
	mv s10, a0
	jal getint
	addiw s9, s9, 1
	mv a3, a0
	beq s11, zero, label208
	addiw a0, s10, -1
	sh2add a5, a3, s0
	sh2add a2, a0, a3
	slliw a1, a0, 2
	sh2add a4, a1, a5
	sw a2, 0(a4)
	beq s10, s2, label151
	beq s10, s3, label154
	blt a3, s3, label157
	bgt a3, s2, label161
	blt s10, s3, label165
	bgt s10, s2, label173
pcrel553:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel553)(s5)
	bne a0, s1, label170
	sltiu s11, s8, 1
	blt s9, s4, label146
	j label504
.p2align 2
label154:
	li a5, 17
	sw a5, 68(s0)
	mv a0, a2
	jal findfa
	mv t0, a0
	mv a0, a5
	jal findfa
	bne t0, a0, label155
	blt a3, s3, label157
	ble a3, s2, label476
.p2align 2
label161:
	lw a0, -4(a4)
	beq a0, s1, label270
	mv a0, a2
	jal findfa
	mv a3, a0
	addiw a0, a2, -1
	jal findfa
	bne a3, a0, label163
	blt s10, s3, label165
	bgt s10, s2, label173
pcrel554:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel554)(s5)
	bne a0, s1, label170
	sltiu s11, s8, 1
	blt s9, s4, label146
	j label504
.p2align 2
label461:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(label461)(s5)
	beq a0, s1, label484
.p2align 2
label170:
	lw a0, 68(s0)
	bne a0, s1, label171
	sltiu s11, s8, 1
	blt s9, s4, label146
	beq s8, zero, label179
	bne s7, zero, label145
	j label180
.p2align 2
label155:
	sh2add a1, t0, s0
	sw a0, 0(a1)
	bge a3, s3, label245
.p2align 2
label157:
	lw a0, 4(a4)
	beq a0, s1, label251
	mv a0, a2
	jal findfa
	mv a5, a0
	addiw a0, a2, 1
	jal findfa
	bne a5, a0, label159
	bgt a3, s2, label161
	blt s10, s3, label165
	bgt s10, s2, label173
pcrel555:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel555)(s5)
	bne a0, s1, label170
	sltiu s11, s8, 1
	blt s9, s4, label146
	j label504
.p2align 2
label289:
	ble s10, s2, label461
.p2align 2
label173:
	addiw a3, a2, -4
	sh2add a1, a3, s0
	lw a0, 0(a1)
	beq a0, s1, label328
	mv a0, a2
	jal findfa
	mv a4, a0
	mv a0, a3
	jal findfa
	beq a4, a0, label334
	sh2add a1, a4, s0
	sw a0, 0(a1)
pcrel556:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel556)(s5)
	bne a0, s1, label170
	sltiu s11, s8, 1
	blt s9, s4, label146
	j label463
.p2align 2
label163:
	sh2add a1, a3, s0
	sw a0, 0(a1)
	bge s10, s3, label283
.p2align 2
label165:
	lw a0, 16(a4)
	beq a0, s1, label289
	mv a0, a2
	jal findfa
	mv a3, a0
	addiw a0, a2, 4
	jal findfa
	bne a3, a0, label167
	bgt s10, s2, label173
pcrel557:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel557)(s5)
	bne a0, s1, label170
	sltiu s11, s8, 1
	blt s9, s4, label146
	j label463
.p2align 2
label151:
	auipc s5, %pcrel_hi(array)
	sw zero, %pcrel_lo(label151)(s5)
	mv a0, a2
	jal findfa
	mv a5, a0
	mv a0, zero
	jal findfa
	beq a5, a0, label226
	sh2add a1, a5, s0
	sw a0, 0(a1)
	beq s10, s3, label154
	blt a3, s3, label157
	bgt a3, s2, label161
	blt s10, s3, label165
	bgt s10, s2, label173
	lw a0, %pcrel_lo(label151)(s5)
	bne a0, s1, label170
	j label523
.p2align 2
label270:
	blt s10, s3, label165
	bgt s10, s2, label173
pcrel558:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel558)(s5)
	bne a0, s1, label170
	sltiu s11, s8, 1
	blt s9, s4, label146
label504:
	beq s8, zero, label179
.p2align 2
label486:
	bne s7, zero, label145
	j label180
.p2align 2
label328:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(label328)(s5)
	bne a0, s1, label170
	sltiu s11, s8, 1
	blt s9, s4, label146
	beq s8, zero, label179
	j label486
.p2align 2
label251:
	bgt a3, s2, label161
	blt s10, s3, label165
	bgt s10, s2, label173
pcrel559:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel559)(s5)
	bne a0, s1, label170
	sltiu s11, s8, 1
	blt s9, s4, label146
	j label504
.p2align 2
label159:
	sh2add a1, a5, s0
	sw a0, 0(a1)
	bgt a3, s2, label161
	blt s10, s3, label165
	bgt s10, s2, label173
pcrel560:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel560)(s5)
	bne a0, s1, label170
	sltiu s11, s8, 1
	blt s9, s4, label146
	j label504
.p2align 2
label171:
	mv a0, zero
	jal findfa
	li a5, 17
	mv a2, a0
	mv a0, a5
	jal findfa
	bne a2, a0, label320
	mv a0, s9
	jal putint
	mv a0, s4
	jal putch
	sltiu s11, s2, 1
	mv s8, s2
	blt s9, s4, label146
	beq s2, zero, label179
	j label344
.p2align 2
label226:
	beq s10, s3, label154
	blt a3, s3, label157
	bgt a3, s2, label161
	blt s10, s3, label165
	bgt s10, s2, label173
pcrel561:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel561)(s5)
	bne a0, s1, label170
label523:
	sltiu s11, s8, 1
	blt s9, s4, label146
	j label504
.p2align 2
label167:
	sh2add a1, a3, s0
	sw a0, 0(a1)
	bgt s10, s2, label173
pcrel562:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel562)(s5)
	bne a0, s1, label170
	sltiu s11, s8, 1
	blt s9, s4, label146
	j label463
.p2align 2
label245:
	bgt a3, s2, label161
	blt s10, s3, label165
	bgt s10, s2, label173
pcrel563:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel563)(s5)
	bne a0, s1, label170
	sltiu s11, s8, 1
	blt s9, s4, label146
	j label504
.p2align 2
label449:
	beq s8, zero, label179
	bne s7, zero, label145
	j label180
.p2align 2
label476:
	blt s10, s3, label165
	bgt s10, s2, label173
pcrel564:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel564)(s5)
	bne a0, s1, label170
	sltiu s11, s8, 1
	blt s9, s4, label146
	j label504
.p2align 2
label283:
	bgt s10, s2, label173
pcrel565:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel565)(s5)
	bne a0, s1, label170
	sltiu s11, s8, 1
	blt s9, s4, label146
	j label504
.p2align 2
label320:
	sltiu s11, s8, 1
	blt s9, s4, label146
	beq s8, zero, label179
label344:
	bne s7, zero, label145
	j label180
.p2align 2
label484:
	sltiu s11, s8, 1
	blt s9, s4, label146
	j label463
label180:
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
	ld s11, 72(sp)
	ld s9, 80(sp)
	ld s8, 88(sp)
	ld s10, 96(sp)
	addi sp, sp, 104
	ret
