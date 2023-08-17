.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
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
	bne s1, s2, label7
	mv a0, s1
	sh2add a1, s0, s3
	sw s1, 0(a1)
	j label2
label34:
	mv a0, s0
label2:
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
label7:
	sh2add a1, s2, s3
	lw s4, 0(a1)
	beq s2, s4, label50
	sh2add a1, s4, s3
	lw s5, 0(a1)
	bne s4, s5, label11
	mv a0, s4
	sh2add a1, s2, s3
	sw s4, 0(a1)
	sh2add a1, s1, s3
	sw s4, 0(a1)
	sh2add a1, s0, s3
	sw s4, 0(a1)
	j label2
label11:
	sh2add a1, s5, s3
	lw s6, 0(a1)
	beq s5, s6, label66
	sh2add a1, s6, s3
	lw s7, 0(a1)
	bne s6, s7, label15
	mv a0, s6
label13:
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
	j label2
label15:
	sh2add a1, s7, s3
	lw s8, 0(a1)
	beq s7, s8, label82
	sh2add a1, s8, s3
	lw a0, 0(a1)
	bne s8, a0, label17
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
	j label2
label17:
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
	j label2
label82:
	mv a0, s7
	sh2add a1, s6, s3
	sw s7, 0(a1)
	j label13
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
	j label2
label50:
	mv a0, s2
	sh2add a1, s1, s3
	sw s2, 0(a1)
	sh2add a1, s0, s3
	sw s2, 0(a1)
	j label2
.p2align 2
.globl main
main:
	addi sp, sp, -104
	li a0, -1
	sd ra, 0(sp)
	sd s5, 8(sp)
pcrel562:
	auipc s5, %pcrel_hi(array)
	sd s0, 16(sp)
	addi s0, s5, %pcrel_lo(pcrel562)
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
	slli s6, a0, 32
	sd s11, 72(sp)
	sd s9, 80(sp)
	sd s8, 88(sp)
	sd s10, 96(sp)
	bne s7, zero, label145
	j label180
.p2align 2
label448:
	bne s8, zero, label471
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
	bge s9, s4, label448
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
	bne s10, s2, label219
pcrel563:
	auipc s5, %pcrel_hi(array)
	sw zero, %pcrel_lo(pcrel563)(s5)
	mv a0, a2
	jal findfa
	mv a5, a0
	mv a0, zero
	jal findfa
	beq a5, a0, label226
	sh2add a1, a5, s0
	sw a0, 0(a1)
	bne s10, s3, label232
.p2align 2
label154:
	li a5, 17
	sw a5, 68(s0)
	mv a0, a2
	jal findfa
	mv t0, a0
	mv a0, a5
	jal findfa
	beq t0, a0, label239
	sh2add a1, t0, s0
	sw a0, 0(a1)
	bge a3, s3, label157
.p2align 2
label173:
	lw a1, 4(a4)
	bne a1, s1, label174
	bgt a3, s2, label170
	bge s10, s3, label489
.p2align 2
label167:
	lw a1, 16(a4)
	beq a1, s1, label297
	mv a0, a2
	jal findfa
	mv a3, a0
	addiw a0, a2, 4
	jal findfa
	bne a3, a0, label169
	ble s10, s2, label461
.p2align 2
label164:
	addiw a3, a2, -4
	sh2add a1, a3, s0
	lw a0, 0(a1)
	beq a0, s1, label283
	mv a0, a2
	jal findfa
	mv a4, a0
	mv a0, a3
	jal findfa
	beq a4, a0, label289
	sh2add a2, a4, s0
	sw a0, 0(a2)
pcrel564:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel564)(s5)
	bne a0, s1, label161
	sltiu s11, s8, 1
	blt s9, s4, label146
	beq s8, zero, label179
	j label476
.p2align 2
label174:
	mv a0, a2
	jal findfa
	mv a5, a0
	addiw a0, a2, 1
	jal findfa
	beq a5, a0, label334
	sh2add a1, a5, s0
	sw a0, 0(a1)
	ble a3, s2, label468
.p2align 2
label170:
	lw a1, -4(a4)
	bne a1, s1, label171
	blt s10, s3, label167
	bgt s10, s2, label164
pcrel565:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel565)(s5)
	bne a0, s1, label161
	sltiu s11, s8, 1
	blt s9, s4, label146
	j label453
.p2align 2
label283:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(label283)(s5)
	beq a0, s1, label457
.p2align 2
label161:
	lw a0, 68(s0)
	beq a0, s1, label269
	mv a0, zero
	jal findfa
	li a5, 17
	mv a2, a0
	mv a0, a5
	jal findfa
	bne a2, a0, label275
	mv a0, s9
	jal putint
	mv a0, s4
	jal putch
	sltiu s11, s2, 1
	mv s8, s2
	blt s9, s4, label146
	beq s2, zero, label179
	bne s7, zero, label145
	j label180
.p2align 2
label219:
	beq s10, s3, label154
	blt a3, s3, label173
	bgt a3, s2, label170
	blt s10, s3, label167
	bgt s10, s2, label164
pcrel566:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel566)(s5)
	bne a0, s1, label161
	sltiu s11, s8, 1
	blt s9, s4, label146
	j label453
.p2align 2
label157:
	bgt a3, s2, label170
	blt s10, s3, label167
	bgt s10, s2, label164
pcrel567:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel567)(s5)
	bne a0, s1, label161
	sltiu s11, s8, 1
	blt s9, s4, label146
	j label453
.p2align 2
label171:
	mv a0, a2
	jal findfa
	mv a3, a0
	addiw a0, a2, -1
	jal findfa
	bne a3, a0, label172
	blt s10, s3, label167
	bgt s10, s2, label164
pcrel568:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel568)(s5)
	bne a0, s1, label161
	sltiu s11, s8, 1
	blt s9, s4, label146
	j label453
.p2align 2
label226:
	beq s10, s3, label154
	blt a3, s3, label173
	bgt a3, s2, label170
	blt s10, s3, label167
	bgt s10, s2, label164
pcrel569:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel569)(s5)
	bne a0, s1, label161
label525:
	sltiu s11, s8, 1
	blt s9, s4, label146
	j label453
.p2align 2
label239:
	blt a3, s3, label173
	bgt a3, s2, label170
	blt s10, s3, label167
	bgt s10, s2, label164
pcrel570:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel570)(s5)
	bne a0, s1, label161
	sltiu s11, s8, 1
	blt s9, s4, label146
	j label453
.p2align 2
label297:
	bgt s10, s2, label164
pcrel571:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel571)(s5)
	bne a0, s1, label161
	sltiu s11, s8, 1
	blt s9, s4, label146
.p2align 2
label453:
	beq s8, zero, label179
.p2align 2
label476:
	bne s7, zero, label145
	j label180
.p2align 2
label172:
	sh2add a5, a3, s0
	sw a0, 0(a5)
	blt s10, s3, label167
	bgt s10, s2, label164
pcrel572:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel572)(s5)
	bne a0, s1, label161
	sltiu s11, s8, 1
	blt s9, s4, label146
	j label453
.p2align 2
label169:
	sh2add a5, a3, s0
	sw a0, 0(a5)
	bgt s10, s2, label164
pcrel573:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel573)(s5)
	bne a0, s1, label161
	sltiu s11, s8, 1
	blt s9, s4, label146
	j label453
.p2align 2
label289:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(label289)(s5)
	bne a0, s1, label161
	sltiu s11, s8, 1
	blt s9, s4, label146
	beq s8, zero, label179
	j label476
.p2align 2
label334:
	bgt a3, s2, label170
	blt s10, s3, label167
	bgt s10, s2, label164
pcrel574:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel574)(s5)
	bne a0, s1, label161
	sltiu s11, s8, 1
	blt s9, s4, label146
	j label453
.p2align 2
label232:
	blt a3, s3, label173
	bgt a3, s2, label170
	blt s10, s3, label167
	bgt s10, s2, label164
pcrel575:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel575)(s5)
	bne a0, s1, label161
	j label525
.p2align 2
label489:
	bgt s10, s2, label164
pcrel576:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel576)(s5)
	bne a0, s1, label161
	sltiu s11, s8, 1
	blt s9, s4, label146
	j label453
.p2align 2
label461:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(label461)(s5)
	bne a0, s1, label161
	sltiu s11, s8, 1
	blt s9, s4, label146
	j label453
.p2align 2
label468:
	blt s10, s3, label167
	bgt s10, s2, label164
pcrel577:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel577)(s5)
	bne a0, s1, label161
	sltiu s11, s8, 1
	blt s9, s4, label146
	j label453
.p2align 2
label269:
	sltiu s11, s8, 1
	blt s9, s4, label146
	beq s8, zero, label179
	bne s7, zero, label145
	j label180
.p2align 2
label457:
	sltiu s11, s8, 1
	blt s9, s4, label146
	beq s8, zero, label179
	j label476
.p2align 2
label275:
	sltiu s11, s8, 1
	blt s9, s4, label146
	beq s8, zero, label179
	bne s7, zero, label145
label180:
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
	ld s11, 72(sp)
	ld s9, 80(sp)
	ld s8, 88(sp)
	ld s10, 96(sp)
	addi sp, sp, 104
	ret
.p2align 2
label471:
	bne s7, zero, label145
	j label180
