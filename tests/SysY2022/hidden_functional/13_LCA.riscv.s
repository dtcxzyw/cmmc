.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
f:
	.zero	800400
.align 4
dep:
	.zero	40020
.align 4
to:
	.zero	40020
.align 4
next:
	.zero	40020
.align 4
head:
	.zero	40020
.text
tree:
	addi sp, sp, -40
	mv a3, a1
pcrel79:
	auipc a4, %pcrel_hi(dep)
	sd s0, 32(sp)
	addi a2, a4, %pcrel_lo(pcrel79)
	addiw s0, a1, 1
pcrel80:
	auipc a4, %pcrel_hi(f)
	sh2add a1, a0, a2
	sd s1, 24(sp)
	addi a2, a4, %pcrel_lo(pcrel80)
	sd s2, 16(sp)
	li a4, 80
	sd s3, 8(sp)
	mul a5, a0, a4
	sd ra, 0(sp)
	sw a3, 0(a1)
pcrel81:
	auipc a3, %pcrel_hi(to)
	mv a1, a2
	addi s1, a3, %pcrel_lo(pcrel81)
	add a2, a2, a5
pcrel82:
	auipc a3, %pcrel_hi(next)
	lw a4, 0(a2)
	addi s2, a3, %pcrel_lo(pcrel82)
	beq a4, zero, label4
	mv a3, zero
label2:
	sh2add a5, a3, a2
	li t0, 80
	lw a4, 0(a5)
	mul t1, a4, t0
	add a5, a1, t1
	sh2add t0, a3, a5
	addiw a3, a3, 1
	sh2add a5, a3, a2
	lw a4, 0(t0)
	sw a4, 0(a5)
	beq a4, zero, label4
	j label2
label4:
	auipc a1, %pcrel_hi(head)
	addi a2, a1, %pcrel_lo(label4)
	sh2add a3, a0, a2
	li a0, -1
	lw s3, 0(a3)
	beq s3, a0, label7
label5:
	sh2add a1, s3, s1
	lw a0, 0(a1)
	mv a1, s0
	jal tree
	li a0, -1
	sh2add a2, s3, s2
	lw s3, 0(a2)
	beq s3, a0, label7
	j label5
label7:
	ld ra, 0(sp)
	ld s3, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	ld s0, 32(sp)
	addi sp, sp, 40
	ret
.globl main
main:
	addi sp, sp, -112
	sd s4, 8(sp)
	sd s2, 0(sp)
	sd s3, 104(sp)
	sd s1, 96(sp)
	sd s6, 88(sp)
	sd s0, 80(sp)
	sd s5, 72(sp)
	sd s7, 64(sp)
	sd s8, 56(sp)
	sd s9, 48(sp)
	sd s10, 40(sp)
	sd s11, 32(sp)
	sd ra, 24(sp)
	jal getch
	mv s4, a0
	li a2, 57
	slti a0, a0, 48
	slt a1, a2, s4
pcrel745:
	auipc a2, %pcrel_hi(to)
	or a0, a0, a1
	addi s2, a2, %pcrel_lo(pcrel745)
pcrel746:
	auipc a1, %pcrel_hi(next)
	addi s3, a1, %pcrel_lo(pcrel746)
pcrel747:
	auipc a1, %pcrel_hi(head)
	addi s1, a1, %pcrel_lo(pcrel747)
pcrel748:
	auipc a1, %pcrel_hi(f)
	addi a4, a1, %pcrel_lo(pcrel748)
pcrel749:
	auipc a1, %pcrel_hi(dep)
	sd a4, 16(sp)
	addi s0, a1, %pcrel_lo(pcrel749)
	beq a0, zero, label190
	mv s5, zero
	j label84
label190:
	mv s5, zero
	addiw a0, s4, -48
	li a1, 10
	bgeu a0, a1, label204
label671:
	mv s6, zero
	j label90
label84:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s4, a3, label612
	mv a1, s5
label612:
	beq a2, zero, label199
	mv s4, a0
	mv s5, a1
	j label84
label199:
	mv s4, a0
	mv s5, a1
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label204
	j label671
label204:
	mv s6, zero
	j label93
label90:
	jal getch
	sh2add a4, s6, s6
	addiw a1, a0, -48
	slliw a2, a4, 1
	addiw a3, a2, -48
	li a2, 10
	addw s6, s4, a3
	bgeu a1, a2, label93
	mv s4, a0
	j label90
label93:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	subw a3, zero, s6
	or a1, a1, a2
	mv s4, a3
	bne s5, zero, label614
	mv s4, s6
label614:
	beq a1, zero, label225
	mv s5, a0
	mv s6, zero
	j label95
label225:
	mv s5, a0
	mv s6, zero
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label239
label672:
	mv s7, zero
	j label172
label95:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s5, a3, label616
	mv a1, s6
label616:
	beq a2, zero, label234
	mv s5, a0
	mv s6, a1
	j label95
label234:
	mv s5, a0
	mv s6, a1
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label239
	j label672
label239:
	mv s7, zero
label101:
	subw a0, zero, s7
	mv s5, a0
	bne s6, zero, label618
	mv s5, s7
label618:
	li a0, 1061109567
	sw a0, 0(s0)
	ble s4, zero, label105
	li a0, 1
	sh2add a1, a0, s1
	li a2, -1
	addiw a0, a0, 1
	sw a2, 0(a1)
	blt s4, a0, label105
	sh2add a1, a0, s1
	addiw a0, a0, 1
	sw a2, 0(a1)
	blt s4, a0, label105
	sh2add a1, a0, s1
	addiw a0, a0, 1
	sw a2, 0(a1)
	blt s4, a0, label105
	sh2add a1, a0, s1
	addiw a0, a0, 1
	sw a2, 0(a1)
	blt s4, a0, label105
	sh2add a1, a0, s1
	addiw a0, a0, 1
	sw a2, 0(a1)
	blt s4, a0, label105
	sh2add a1, a0, s1
	addiw a0, a0, 1
	sw a2, 0(a1)
	blt s4, a0, label105
	sh2add a1, a0, s1
	addiw a0, a0, 1
	sw a2, 0(a1)
	blt s4, a0, label105
	sh2add a1, a0, s1
	addiw a0, a0, 1
	sw a2, 0(a1)
	blt s4, a0, label105
	sh2add a1, a0, s1
	addiw a0, a0, 1
	sw a2, 0(a1)
	blt s4, a0, label105
	sh2add a1, a0, s1
	addiw a0, a0, 1
	sw a2, 0(a1)
	blt s4, a0, label105
label103:
	sh2add a1, a0, s1
	li a2, -1
	addiw a0, a0, 1
	sw a2, 0(a1)
	blt s4, a0, label105
	j label103
label674:
	mv s6, zero
	li s7, 1
	j label147
label105:
	li a0, 1
	beq s4, a0, label106
	j label674
label147:
	jal getch
	li a2, 57
	mv s8, a0
	slt a1, a2, a0
	slti a0, a0, 48
	or a0, a0, a1
	beq a0, zero, label444
	mv s9, zero
	j label169
label444:
	mv s9, zero
	addiw a0, s8, -48
	li a1, 10
	bgeu a0, a1, label449
label448:
	mv s10, zero
	j label166
label449:
	mv s10, zero
	j label153
label169:
	jal getch
	li a3, 45
	li a2, 57
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s8, a3, label656
	mv a2, s9
label656:
	beq a1, zero, label522
	mv s8, a0
	mv s9, a2
	j label169
label522:
	mv s8, a0
	mv s9, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label449
	j label448
label166:
	jal getch
	sh2add a3, s10, s10
	addiw a1, a0, -48
	slliw a2, a3, 1
	addiw a4, a2, -48
	li a2, 10
	addw s10, s8, a4
	bgeu a1, a2, label153
	mv s8, a0
	j label166
label106:
	li a0, 1
	li a1, 1
	jal tree
	beq s5, zero, label146
	mv s1, s5
label107:
	jal getch
	li a1, 57
	mv s2, a0
	slt a2, a1, a0
	slti a0, a0, 48
	or a0, a0, a2
	beq a0, zero, label268
	mv s3, zero
	j label143
label268:
	mv s3, zero
	addiw a0, s2, -48
	li a1, 10
	bgeu a0, a1, label273
	j label272
label273:
	mv s4, zero
label115:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	subw a2, zero, s4
	or a1, a1, a3
	mv s2, a2
	bne s3, zero, label620
	mv s2, s4
label620:
	beq a1, zero, label294
	mv s3, a0
	mv s4, zero
	j label140
label294:
	mv s4, a0
	mv s3, zero
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label299
	j label298
label299:
	mv s5, zero
label120:
	subw a0, zero, s5
	mv a1, a0
	bne s3, zero, label622
	mv a1, s5
	j label622
label272:
	mv s4, zero
label112:
	jal getch
	sh2add a2, s4, s4
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addiw a4, a3, -48
	addw s4, s2, a4
	bgeu a1, a2, label115
	mv s2, a0
	j label112
label143:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s2, a3, label648
	mv a2, s3
label648:
	beq a1, zero, label437
	mv s2, a0
	mv s3, a2
	j label143
label437:
	mv s2, a0
	mv s3, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label273
	j label272
label298:
	mv s5, zero
	j label137
label140:
	jal getch
	li a3, 45
	li a2, 57
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s3, a3, label646
	mv a2, s4
label646:
	beq a1, zero, label428
	mv s3, a0
	mv s4, a2
	j label140
label428:
	mv s4, a0
	mv s3, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label299
	j label298
label137:
	jal getch
	sh2add a3, s5, s5
	addiw a1, a0, -48
	slliw a4, a3, 1
	li a3, 10
	addiw a2, a4, -48
	addw s5, s4, a2
	bgeu a1, a3, label120
	mv s4, a0
	j label137
label622:
	sh2add a0, a1, s0
	sh2add a2, s2, s0
	lw a3, 0(a2)
	lw a4, 0(a0)
	mv a0, s2
	slt a2, a3, a4
	bne a2, zero, label624
	mv a0, a1
label624:
	mv a3, a1
	bne a2, zero, label626
	mv a3, s2
label626:
	li a1, 19
	mv a2, a3
	sh2add a3, a3, s0
	sh2add a5, a0, s0
	lw a4, 0(a3)
	lw a3, 0(a5)
	ble a4, a3, label129
	li t0, 80
	ld a4, 16(sp)
	mul a5, a2, t0
	add t0, a4, a5
	sh2add a5, a1, t0
	lw a4, 0(a5)
	beq a4, zero, label330
	sh2add a5, a4, s0
	lw t0, 0(a5)
	slt a3, t0, a3
	xori a5, a3, 1
	mv a3, a4
	bne a5, zero, label628
	mv a3, a2
	addiw a1, a1, -1
	sh2add a3, a2, s0
	sh2add a5, a0, s0
	lw a4, 0(a3)
	lw a3, 0(a5)
	ble a4, a3, label129
	li t0, 80
	ld a4, 16(sp)
	mul a5, a2, t0
	add t0, a4, a5
	sh2add a5, a1, t0
	lw a4, 0(a5)
	beq a4, zero, label330
	sh2add a5, a4, s0
	lw t0, 0(a5)
	slt a3, t0, a3
	xori a5, a3, 1
	mv a3, a4
	bne a5, zero, label628
	mv a3, a2
	addiw a1, a1, -1
	sh2add a3, a2, s0
	sh2add a5, a0, s0
	lw a4, 0(a3)
	lw a3, 0(a5)
	ble a4, a3, label129
	li t0, 80
	ld a4, 16(sp)
	mul a5, a2, t0
	add t0, a4, a5
	sh2add a5, a1, t0
	lw a4, 0(a5)
	beq a4, zero, label330
	sh2add a5, a4, s0
	lw t0, 0(a5)
	slt a3, t0, a3
	xori a5, a3, 1
	mv a3, a4
	bne a5, zero, label628
label715:
	mv a3, a2
	addiw a1, a1, -1
	sh2add a3, a2, s0
	sh2add a5, a0, s0
	lw a4, 0(a3)
	lw a3, 0(a5)
	ble a4, a3, label129
	j label721
label129:
	bne a0, a2, label340
	j label130
label340:
	li a1, 19
	mv a3, a2
	mv a2, a0
	j label132
label721:
	li t0, 80
	ld a4, 16(sp)
	mul a5, a2, t0
	add t0, a4, a5
	sh2add a5, a1, t0
	lw a4, 0(a5)
	beq a4, zero, label330
	sh2add a5, a4, s0
	lw t0, 0(a5)
	slt a3, t0, a3
	xori a5, a3, 1
	mv a3, a4
	bne a5, zero, label628
	j label715
label330:
	mv a5, zero
	mv a3, a4
	mv a3, a2
label628:
	addiw a1, a1, -1
	mv a2, a3
	sh2add a3, a3, s0
	sh2add a5, a0, s0
	lw a4, 0(a3)
	lw a3, 0(a5)
	ble a4, a3, label129
	li t0, 80
	ld a4, 16(sp)
	mul a5, a2, t0
	add t0, a4, a5
	sh2add a5, a1, t0
	lw a4, 0(a5)
	beq a4, zero, label330
	sh2add a5, a4, s0
	lw t0, 0(a5)
	slt a3, t0, a3
	xori a5, a3, 1
	mv a3, a4
	bne a5, zero, label628
	mv a3, a2
	addiw a1, a1, -1
	sh2add a3, a2, s0
	sh2add a5, a0, s0
	lw a4, 0(a3)
	lw a3, 0(a5)
	ble a4, a3, label129
	li t0, 80
	ld a4, 16(sp)
	mul a5, a2, t0
	add t0, a4, a5
	sh2add a5, a1, t0
	lw a4, 0(a5)
	beq a4, zero, label330
	sh2add a5, a4, s0
	lw t0, 0(a5)
	slt a3, t0, a3
	xori a5, a3, 1
	mv a3, a4
	bne a5, zero, label628
	j label715
label132:
	li a0, 80
	ld a4, 16(sp)
	mul a5, a3, a0
	add t0, a4, a5
	sh2add t1, a1, t0
	mul t0, a2, a0
	add a4, a4, t0
	lw a5, 0(t1)
	sh2add t1, a1, a4
	lw t0, 0(t1)
	xor a4, a5, t0
	sltu t1, zero, a4
	bne t1, zero, label630
	mv a5, a3
label630:
	mul a3, a5, a0
	ld a4, 16(sp)
	addiw t2, a1, -1
	add t3, a4, a3
	sh2add a4, t2, t3
	lw a3, 0(a4)
	bne t1, zero, label632
	mv t0, a2
label632:
	mul a2, t0, a0
	ld a4, 16(sp)
	add t1, a4, a2
	sh2add t2, t2, t1
	lw a2, 0(t2)
	xor a4, a3, a2
	sltu t1, zero, a4
	bne t1, zero, label634
	mv a3, a5
label634:
	mul t2, a3, a0
	ld a4, 16(sp)
	addiw t3, a1, -2
	add a5, a4, t2
	sh2add a4, t3, a5
	mv a5, a2
	lw t2, 0(a4)
	bne t1, zero, label636
	mv a5, t0
label636:
	mul a2, a5, a0
	ld a4, 16(sp)
	add t1, a4, a2
	sh2add a2, t3, t1
	lw t0, 0(a2)
	mv a2, t2
	xor a4, t2, t0
	sltu t1, zero, a4
	bne t1, zero, label638
	mv a2, a3
label638:
	mul t2, a2, a0
	ld a4, 16(sp)
	add a3, a4, t2
	addiw t2, a1, -3
	sh2add a4, t2, a3
	lw a3, 0(a4)
	bne t1, zero, label640
	mv t0, a5
label640:
	mul a0, t0, a0
	ld a4, 16(sp)
	add a5, a4, a0
	sh2add t1, t2, a5
	lw a0, 0(t1)
	xor a5, a3, a0
	sltu a4, zero, a5
	bne a4, zero, label642
	mv a0, t0
label642:
	bne a4, zero, label644
	mv a3, a2
label644:
	addiw a1, a1, -4
	blt a1, zero, label136
	mv a2, a0
	j label132
label130:
	mv a0, a2
	jal putint
	li a0, 10
	jal putch
	addiw s1, s1, -1
	beq s1, zero, label146
	j label107
label172:
	jal getch
	sh2add a3, s7, s7
	addiw a1, a0, -48
	slliw a2, a3, 1
	addiw a4, a2, -48
	li a2, 10
	addw s7, s5, a4
	bgeu a1, a2, label101
	mv s5, a0
	j label172
label153:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	subw a2, zero, s10
	or a1, a1, a3
	mv s8, a2
	bne s9, zero, label650
	mv s8, s10
label650:
	beq a1, zero, label459
	mv s9, a0
	mv s10, zero
	j label163
label459:
	mv s10, a0
	mv s9, zero
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label464
label463:
	mv s11, zero
	j label158
label464:
	mv s11, zero
	subw a1, zero, zero
	mv a0, a1
	bne s9, zero, label652
	j label682
label163:
	jal getch
	li a3, 45
	li a2, 57
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s9, a3, label654
	mv a2, s10
label654:
	beq a1, zero, label502
	mv s9, a0
	mv s10, a2
	j label163
label502:
	mv s10, a0
	mv s9, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label464
	j label463
label158:
	jal getch
	sh2add a4, s11, s11
	addiw a1, a0, -48
	slliw a2, a4, 1
	addiw a3, a2, -48
	li a2, 10
	addw s11, s10, a3
	bgeu a1, a2, label161
	mv s10, a0
	j label158
label682:
	mv a0, s11
	j label652
label161:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label652
	j label682
label652:
	sh2add a1, s6, s2
	li a2, 80
	sh2add a3, s6, s3
	addiw s7, s7, 1
	sw a0, 0(a1)
	ld a4, 16(sp)
	mul a1, a0, a2
	add a0, a4, a1
	sh2add a1, s8, s1
	lw a2, 0(a1)
	sw a2, 0(a3)
	sw s6, 0(a1)
	addiw s6, s6, 1
	sw s8, 0(a0)
	beq s4, s7, label106
	j label147
label136:
	li a1, 80
	ld a4, 16(sp)
	mul a0, a3, a1
	add a1, a4, a0
	lw a2, 0(a1)
	j label130
label146:
	mv a0, zero
	ld ra, 24(sp)
	ld s11, 32(sp)
	ld s10, 40(sp)
	ld s9, 48(sp)
	ld s8, 56(sp)
	ld s7, 64(sp)
	ld s5, 72(sp)
	ld s0, 80(sp)
	ld s6, 88(sp)
	ld s1, 96(sp)
	ld s3, 104(sp)
	ld s2, 0(sp)
	ld s4, 8(sp)
	addi sp, sp, 112
	ret
