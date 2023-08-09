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
pcrel142:
	auipc a1, %pcrel_hi(array)
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s5, 16(sp)
	sd s3, 24(sp)
	addi s3, a1, %pcrel_lo(pcrel142)
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
label50:
	mv a0, s2
	sh2add a1, s1, s3
	sw s2, 0(a1)
	sh2add a1, s0, s3
	sw s2, 0(a1)
	j label2
label11:
	sh2add a1, s5, s3
	lw s6, 0(a1)
	bne s5, s6, label12
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
label12:
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
	bne s7, s8, label14
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
label14:
	sh2add a1, s8, s3
	lw a0, 0(a1)
	beq s8, a0, label87
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
label87:
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
.p2align 2
.globl main
main:
	addi sp, sp, -96
	li a0, -1
	sd ra, 0(sp)
	sd s5, 8(sp)
pcrel543:
	auipc s5, %pcrel_hi(array)
	sd s0, 16(sp)
	addi s0, s5, %pcrel_lo(pcrel543)
	sd s7, 24(sp)
	li s7, 1
	sd s4, 32(sp)
	li s4, 10
	sd s2, 40(sp)
	mv s2, s7
	sd s1, 48(sp)
	li s1, -1
	sd s6, 56(sp)
	slli s6, a0, 32
	sd s3, 64(sp)
	li s3, 4
	sd s9, 72(sp)
	sd s8, 80(sp)
	sd s10, 88(sp)
	j label144
.p2align 2
label302:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(label302)(s5)
	bne a0, s1, label164
	blt s9, s4, label147
.p2align 2
label457:
	beq s8, zero, label179
.p2align 2
label144:
	beq s7, zero, label180
.p2align 2
label146:
	addiw s7, s7, -1
	add.uw a0, s1, s6
	mv s9, zero
	mv s8, zero
	sw s1, 4(s0)
	sd a0, 8(s0)
	sd a0, 16(s0)
	sd a0, 24(s0)
	sd a0, 32(s0)
	sd a0, 40(s0)
	sd a0, 48(s0)
	sd a0, 56(s0)
	sd a0, 64(s0)
	j label147
.p2align 2
label209:
	bge s9, s4, label449
.p2align 2
label147:
	jal getint
	mv s10, a0
	jal getint
	addiw s9, s9, 1
	mv a3, a0
	bne s8, zero, label209
	addiw a0, s10, -1
	sh2add a2, a0, a3
	sh2add a4, a2, s0
	sw a2, 0(a4)
	beq s10, s2, label151
	bne s10, s3, label450
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
	bgt a3, s2, label173
	blt s10, s3, label170
	bgt s10, s2, label167
pcrel544:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel544)(s5)
	bne a0, s1, label164
	blt s9, s4, label147
	j label457
.p2align 2
label155:
	sh2add a1, t0, s0
	sw a0, 0(a1)
	blt a3, s3, label157
	bgt a3, s2, label173
	blt s10, s3, label170
	bgt s10, s2, label167
pcrel545:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel545)(s5)
	bne a0, s1, label164
	blt s9, s4, label147
	j label457
.p2align 2
label151:
	auipc s5, %pcrel_hi(array)
	sw zero, %pcrel_lo(label151)(s5)
	mv a0, a2
	jal findfa
	mv a5, a0
	mv a0, zero
	jal findfa
	bne a5, a0, label152
	beq s10, s3, label154
	bge a3, s3, label473
.p2align 2
label157:
	addiw a5, a2, 1
	sh2add a0, a5, s0
	lw a1, 0(a0)
	bne a1, s1, label158
	ble a3, s2, label455
.p2align 2
label173:
	addiw a3, a2, -1
	sh2add a1, a3, s0
	lw a0, 0(a1)
	beq a0, s1, label327
	mv a0, a2
	jal findfa
	mv a5, a0
	mv a0, a3
	jal findfa
	beq a5, a0, label333
	sh2add a1, a5, s0
	sw a0, 0(a1)
	blt s10, s3, label170
	bgt s10, s2, label167
pcrel546:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel546)(s5)
	bne a0, s1, label164
	blt s9, s4, label147
	j label457
.p2align 2
label455:
	bge s10, s3, label477
.p2align 2
label170:
	lw a1, 16(a4)
	bne a1, s1, label171
	ble s10, s2, label464
.p2align 2
label167:
	addiw a3, a2, -4
	sh2add a1, a3, s0
	lw a0, 0(a1)
	bne a0, s1, label168
pcrel547:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel547)(s5)
	beq a0, s1, label461
.p2align 2
label164:
	lw a0, 68(s0)
	bne a0, s1, label165
	blt s9, s4, label147
	bne s8, zero, label144
	j label179
.p2align 2
label152:
	sh2add a1, a5, s0
	sw a0, 0(a1)
	beq s10, s3, label154
	blt a3, s3, label157
	bgt a3, s2, label173
	blt s10, s3, label170
	bgt s10, s2, label167
pcrel548:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel548)(s5)
	bne a0, s1, label164
label518:
	blt s9, s4, label147
	j label457
.p2align 2
label158:
	mv a0, a2
	jal findfa
	mv t0, a0
	mv a0, a5
	jal findfa
	bne t0, a0, label159
	bgt a3, s2, label173
	blt s10, s3, label170
	bgt s10, s2, label167
pcrel549:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel549)(s5)
	bne a0, s1, label164
	blt s9, s4, label147
	j label457
.p2align 2
label450:
	blt a3, s3, label157
	bgt a3, s2, label173
	blt s10, s3, label170
	bgt s10, s2, label167
pcrel550:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel550)(s5)
	bne a0, s1, label164
	blt s9, s4, label147
	j label457
.p2align 2
label168:
	mv a0, a2
	jal findfa
	mv a4, a0
	mv a0, a3
	jal findfa
	beq a4, a0, label302
	sh2add a2, a4, s0
	sw a0, 0(a2)
pcrel551:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel551)(s5)
	bne a0, s1, label164
	blt s9, s4, label147
	j label457
.p2align 2
label327:
	blt s10, s3, label170
	bgt s10, s2, label167
pcrel552:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel552)(s5)
	bne a0, s1, label164
	blt s9, s4, label147
	j label457
.p2align 2
label165:
	mv a0, zero
	jal findfa
	li a5, 17
	mv a2, a0
	mv a0, a5
	jal findfa
	bne a2, a0, label288
	mv a0, s9
	jal putint
	mv a0, s4
	jal putch
	mv s8, s2
	blt s9, s4, label147
	bne s2, zero, label144
	j label179
.p2align 2
label159:
	sh2add a1, t0, s0
	sw a0, 0(a1)
	bgt a3, s2, label173
	blt s10, s3, label170
	bgt s10, s2, label167
pcrel553:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel553)(s5)
	bne a0, s1, label164
	blt s9, s4, label147
	j label457
.p2align 2
label171:
	mv a0, a2
	jal findfa
	mv a3, a0
	addiw a0, a2, 4
	jal findfa
	bne a3, a0, label172
	bgt s10, s2, label167
pcrel554:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel554)(s5)
	bne a0, s1, label164
	blt s9, s4, label147
	j label457
.p2align 2
label172:
	sh2add a1, a3, s0
	sw a0, 0(a1)
	bgt s10, s2, label167
pcrel555:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel555)(s5)
	bne a0, s1, label164
	blt s9, s4, label147
	j label457
.p2align 2
label333:
	blt s10, s3, label170
	bgt s10, s2, label167
pcrel556:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel556)(s5)
	bne a0, s1, label164
	blt s9, s4, label147
	j label457
.p2align 2
label464:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(label464)(s5)
	bne a0, s1, label164
	blt s9, s4, label147
	j label457
.p2align 2
label449:
	bne s8, zero, label144
.p2align 2
label179:
	mv a0, s1
	jal putint
	mv a0, s4
	jal putch
	bne s7, zero, label146
	j label180
.p2align 2
label473:
	bgt a3, s2, label173
	blt s10, s3, label170
	bgt s10, s2, label167
pcrel557:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel557)(s5)
	bne a0, s1, label164
	j label518
.p2align 2
label477:
	bgt s10, s2, label167
pcrel558:
	auipc s5, %pcrel_hi(array)
	lw a0, %pcrel_lo(pcrel558)(s5)
	bne a0, s1, label164
	blt s9, s4, label147
	j label457
.p2align 2
label288:
	blt s9, s4, label147
	bne s8, zero, label144
	j label179
.p2align 2
label461:
	blt s9, s4, label147
	bne s8, zero, label144
	j label179
label180:
	mv a0, zero
	ld ra, 0(sp)
	ld s5, 8(sp)
	ld s0, 16(sp)
	ld s7, 24(sp)
	ld s4, 32(sp)
	ld s2, 40(sp)
	ld s1, 48(sp)
	ld s6, 56(sp)
	ld s3, 64(sp)
	ld s9, 72(sp)
	ld s8, 80(sp)
	ld s10, 88(sp)
	addi sp, sp, 96
	ret
