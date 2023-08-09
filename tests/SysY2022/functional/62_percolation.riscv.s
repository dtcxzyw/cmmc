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
pcrel143:
	auipc a1, %pcrel_hi(array)
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s5, 16(sp)
	sd s3, 24(sp)
	addi s3, a1, %pcrel_lo(pcrel143)
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
	bne s2, s4, label8
	mv a0, s2
	sh2add a1, s1, s3
	sw s2, 0(a1)
	sh2add a1, s0, s3
	sw s2, 0(a1)
	j label2
label8:
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
	j label2
label9:
	sh2add a1, s5, s3
	lw s6, 0(a1)
	bne s5, s6, label10
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
label10:
	sh2add a1, s6, s3
	lw s7, 0(a1)
	bne s6, s7, label13
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
	j label2
label13:
	sh2add a1, s7, s3
	lw s8, 0(a1)
	beq s7, s8, label80
	sh2add a1, s8, s3
	lw a0, 0(a1)
	bne s8, a0, label15
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
label15:
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
	j label2
.p2align 2
.globl main
main:
	addi sp, sp, -96
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
	sd s3, 40(sp)
	li s3, 4
	sd s2, 48(sp)
	mv s2, s7
	sd s1, 56(sp)
	li s1, -1
	sd s6, 64(sp)
	slli s6, a0, 32
	sd s9, 72(sp)
	sd s8, 80(sp)
	sd s10, 88(sp)
	j label145
.p2align 2
label277:
	blt s9, s4, label148
	beq s8, zero, label180
.p2align 2
label145:
	beq s7, zero, label181
.p2align 2
label147:
	sw s1, 4(s0)
	add.uw a0, s1, s6
	addiw s7, s7, -1
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
	j label148
.p2align 2
label210:
	bge s9, s4, label451
.p2align 2
label148:
	jal getint
	mv s10, a0
	jal getint
	addiw s9, s9, 1
	mv a3, a0
	bne s8, zero, label210
	addiw a0, s10, -1
	sh2add a5, a3, s0
	sh2add a2, a0, a3
	slliw a1, a0, 2
	sh2add a4, a1, a5
	sw a2, 0(a4)
	beq s10, s2, label152
	beq s10, s3, label175
	blt a3, s3, label156
	bgt a3, s2, label172
	blt s10, s3, label169
	bgt s10, s2, label166
pcrel553:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel553)(s5)
	bne a0, s1, label163
	blt s9, s4, label148
	j label457
.p2align 2
label228:
	bne s10, s3, label453
.p2align 2
label175:
	li a5, 17
	sw a5, 68(s0)
	mv a0, a2
	jal findfa
	mv t0, a0
	mv a0, a5
	jal findfa
	beq t0, a0, label336
	sh2add a1, t0, s0
	sw a0, 0(a1)
	blt a3, s3, label156
	bgt a3, s2, label172
	blt s10, s3, label169
	bgt s10, s2, label166
pcrel554:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel554)(s5)
	bne a0, s1, label163
	blt s9, s4, label148
	j label457
.p2align 2
label453:
	bge a3, s3, label475
.p2align 2
label156:
	lw a0, 4(a4)
	beq a0, s1, label244
	mv a0, a2
	jal findfa
	mv a5, a0
	addiw a0, a2, 1
	jal findfa
	beq a5, a0, label251
	sh2add a1, a5, s0
	sw a0, 0(a1)
	bgt a3, s2, label172
	blt s10, s3, label169
	bgt s10, s2, label166
pcrel555:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel555)(s5)
	bne a0, s1, label163
	blt s9, s4, label148
	j label457
.p2align 2
label327:
	bge s10, s3, label468
.p2align 2
label169:
	lw a1, 16(a4)
	beq a1, s1, label305
	mv a0, a2
	jal findfa
	mv a3, a0
	addiw a0, a2, 4
	jal findfa
	beq a3, a0, label312
	sh2add a5, a3, s0
	sw a0, 0(a5)
	bgt s10, s2, label166
pcrel556:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel556)(s5)
	bne a0, s1, label163
	blt s9, s4, label148
	j label457
.p2align 2
label152:
	auipc s5, %pcrel_hi(array)
	sw zero, %pcrel_lo(label152)(s5)
	mv a0, a2
	jal findfa
	mv a5, a0
	mv a0, zero
	jal findfa
	beq a5, a0, label228
	sh2add a1, a5, s0
	sw a0, 0(a1)
	beq s10, s3, label175
	blt a3, s3, label156
	bgt a3, s2, label172
	blt s10, s3, label169
	bgt s10, s2, label166
	lw a0, %pcrel_lo(label152)(s5)
	bne a0, s1, label163
label510:
	blt s9, s4, label148
	j label457
.p2align 2
label244:
	ble a3, s2, label455
.p2align 2
label172:
	lw a1, -4(a4)
	beq a1, s1, label320
	mv a0, a2
	jal findfa
	mv a3, a0
	addiw a0, a2, -1
	jal findfa
	beq a3, a0, label327
	sh2add a1, a3, s0
	sw a0, 0(a1)
	blt s10, s3, label169
	bgt s10, s2, label166
pcrel557:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel557)(s5)
	bne a0, s1, label163
	blt s9, s4, label148
	j label457
.p2align 2
label305:
	ble s10, s2, label464
.p2align 2
label166:
	addiw a3, a2, -4
	sh2add a1, a3, s0
	lw a0, 0(a1)
	bne a0, s1, label167
pcrel558:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel558)(s5)
	beq a0, s1, label461
.p2align 2
label163:
	lw a0, 68(s0)
	beq a0, s1, label277
	mv a0, zero
	jal findfa
	li a5, 17
	mv a2, a0
	mv a0, a5
	jal findfa
	bne a2, a0, label283
	mv a0, s9
	jal putint
	mv a0, s4
	jal putch
	mv s8, s2
	blt s9, s4, label148
	bne s2, zero, label145
	j label180
.p2align 2
label336:
	blt a3, s3, label156
	bgt a3, s2, label172
	blt s10, s3, label169
	bgt s10, s2, label166
pcrel559:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel559)(s5)
	bne a0, s1, label163
	blt s9, s4, label148
	j label457
.p2align 2
label320:
	blt s10, s3, label169
	bgt s10, s2, label166
pcrel560:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel560)(s5)
	bne a0, s1, label163
	blt s9, s4, label148
	j label457
.p2align 2
label167:
	mv a0, a2
	jal findfa
	mv a4, a0
	mv a0, a3
	jal findfa
	beq a4, a0, label297
	sh2add a2, a4, s0
	sw a0, 0(a2)
pcrel561:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel561)(s5)
	bne a0, s1, label163
	blt s9, s4, label148
	j label457
.p2align 2
label251:
	bgt a3, s2, label172
	blt s10, s3, label169
	bgt s10, s2, label166
pcrel562:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel562)(s5)
	bne a0, s1, label163
	blt s9, s4, label148
	j label457
.p2align 2
label455:
	blt s10, s3, label169
	bgt s10, s2, label166
pcrel563:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel563)(s5)
	bne a0, s1, label163
	blt s9, s4, label148
	j label457
.p2align 2
label464:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(label464)(s5)
	bne a0, s1, label163
	blt s9, s4, label148
	j label457
.p2align 2
label312:
	bgt s10, s2, label166
pcrel564:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel564)(s5)
	bne a0, s1, label163
	blt s9, s4, label148
	j label457
.p2align 2
label297:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(label297)(s5)
	bne a0, s1, label163
	blt s9, s4, label148
.p2align 2
label457:
	bne s8, zero, label145
	j label180
.p2align 2
label451:
	bne s8, zero, label145
.p2align 2
label180:
	mv a0, s1
	jal putint
	mv a0, s4
	jal putch
	bne s7, zero, label147
	j label181
.p2align 2
label468:
	bgt s10, s2, label166
pcrel565:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel565)(s5)
	bne a0, s1, label163
	blt s9, s4, label148
	j label457
.p2align 2
label475:
	bgt a3, s2, label172
	blt s10, s3, label169
	bgt s10, s2, label166
pcrel566:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel566)(s5)
	bne a0, s1, label163
	j label510
.p2align 2
label461:
	blt s9, s4, label148
	bne s8, zero, label145
	j label180
.p2align 2
label283:
	blt s9, s4, label148
	bne s8, zero, label145
	j label180
label181:
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
	ld s9, 72(sp)
	ld s8, 80(sp)
	ld s10, 88(sp)
	addi sp, sp, 96
	ret
