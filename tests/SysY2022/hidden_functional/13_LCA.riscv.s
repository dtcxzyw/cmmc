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
pcrel753:
	auipc a2, %pcrel_hi(to)
	or a0, a0, a1
	addi s2, a2, %pcrel_lo(pcrel753)
pcrel754:
	auipc a1, %pcrel_hi(next)
	addi s3, a1, %pcrel_lo(pcrel754)
pcrel755:
	auipc a1, %pcrel_hi(head)
	addi s1, a1, %pcrel_lo(pcrel755)
pcrel756:
	auipc a1, %pcrel_hi(f)
	addi a4, a1, %pcrel_lo(pcrel756)
pcrel757:
	auipc a1, %pcrel_hi(dep)
	sd a4, 16(sp)
	addi s0, a1, %pcrel_lo(pcrel757)
	beq a0, zero, label190
	mv s5, zero
	j label172
label190:
	mv s5, zero
	addiw a0, s4, -48
	li a1, 10
	bgeu a0, a1, label195
label194:
	mv s6, zero
	j label87
label195:
	mv s6, zero
	j label90
label172:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s4, a3, label656
	mv a1, s5
label656:
	beq a2, zero, label533
	mv s4, a0
	mv s5, a1
	j label172
label533:
	mv s4, a0
	mv s5, a1
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label195
	j label194
label90:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	subw a2, zero, s6
	or a1, a1, a3
	mv s4, a2
	bne s5, zero, label612
	mv s4, s6
label612:
	beq a1, zero, label216
	mv s5, a0
	mv s6, zero
	j label92
label216:
	mv s5, a0
	mv s6, zero
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label230
	j label671
label230:
	mv s7, zero
	subw a0, zero, zero
	mv s5, a0
	bne s6, zero, label616
	mv s5, zero
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
label717:
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
	j label103
label674:
	mv s6, zero
	li s7, 1
	j label106
label105:
	li a0, 1
	beq s4, a0, label131
	j label674
label106:
	jal getch
	li a2, 57
	mv s8, a0
	slt a1, a2, a0
	slti a0, a0, 48
	or a0, a0, a1
	beq a0, zero, label266
	mv s9, zero
	j label128
label266:
	mv s9, zero
	addiw a0, s8, -48
	li a1, 10
	bgeu a0, a1, label271
label270:
	mv s10, zero
	j label112
label271:
	mv s10, zero
	j label115
label112:
	jal getch
	sh2add a4, s10, s10
	addiw a1, a0, -48
	slliw a3, a4, 1
	addiw a2, a3, -48
	li a3, 10
	addw s10, s8, a2
	bgeu a1, a3, label115
	mv s8, a0
	j label112
label115:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	subw a2, zero, s10
	or a1, a1, a3
	mv s8, a2
	bne s9, zero, label618
	mv s8, s10
label618:
	beq a1, zero, label292
	mv s9, a0
	mv s10, zero
	j label117
label292:
	mv s10, a0
	mv s9, zero
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label306
label675:
	mv s11, zero
	j label125
label117:
	jal getch
	li a3, 45
	li a2, 57
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s9, a3, label620
	mv a2, s10
label620:
	beq a1, zero, label301
	mv s9, a0
	mv s10, a2
	j label117
label301:
	mv s10, a0
	mv s9, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label306
	j label675
label306:
	mv s11, zero
label123:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label622
	j label621
label125:
	jal getch
	sh2add a4, s11, s11
	addiw a1, a0, -48
	slliw a3, a4, 1
	addiw a2, a3, -48
	li a3, 10
	addw s11, s10, a2
	bgeu a1, a3, label123
	mv s10, a0
	j label125
label128:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s8, a3, label624
	mv a2, s9
label624:
	beq a1, zero, label344
	mv s8, a0
	mv s9, a2
	j label128
label344:
	mv s8, a0
	mv s9, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label271
	j label270
label131:
	li a0, 1
	li a1, 1
	jal tree
	beq s5, zero, label171
	mv s1, s5
label132:
	jal getch
	li a2, 57
	mv s2, a0
	slt a1, a2, a0
	slti a0, a0, 48
	or a0, a0, a1
	beq a0, zero, label355
	mv s3, zero
	j label168
label355:
	mv s3, zero
	addiw a0, s2, -48
	li a1, 10
	bgeu a0, a1, label360
label359:
	mv s4, zero
	j label137
label360:
	mv s4, zero
	j label140
label137:
	jal getch
	sh2add a4, s4, s4
	addiw a1, a0, -48
	slliw a2, a4, 1
	addiw a3, a2, -48
	li a2, 10
	addw s4, s2, a3
	bgeu a1, a2, label140
	mv s2, a0
	j label137
label168:
	jal getch
	li a2, 57
	li a3, 45
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s2, a3, label654
	mv a2, s3
label654:
	beq a1, zero, label524
	mv s2, a0
	mv s3, a2
	j label168
label524:
	mv s2, a0
	mv s3, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label360
	j label359
label140:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	subw a3, zero, s4
	or a1, a1, a2
	mv s2, a3
	bne s3, zero, label626
	mv s2, s4
label626:
	beq a1, zero, label381
	mv s3, a0
	mv s4, zero
	j label142
label381:
	mv s4, a0
	mv s3, zero
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label395
label678:
	mv s5, zero
	j label148
label142:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s3, a3, label628
	mv a2, s4
label628:
	beq a1, zero, label390
	mv s3, a0
	mv s4, a2
	j label142
label390:
	mv s4, a0
	mv s3, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label395
	j label678
label395:
	mv s5, zero
	subw a0, zero, zero
	mv a1, a0
	bne s3, zero, label630
	mv a1, zero
	mv a0, s0
	sh2add a2, s2, s0
	lw a3, 0(a2)
	lw a4, 0(s0)
	mv a0, s2
	slt a2, a3, a4
	bne a2, zero, label632
	mv a0, zero
	mv a3, zero
	mv a3, s2
	li a1, 19
	mv a2, s2
	sh2add a3, s2, s0
	mv a5, s0
	lw a4, 0(a3)
	lw a3, 0(s0)
	ble a4, a3, label160
	li t0, 80
	ld a4, 16(sp)
	mul a5, s2, t0
	add t0, a4, a5
	sh2add a5, a1, t0
	lw a4, 0(a5)
	beq a4, zero, label437
	sh2add t1, a4, s0
	lw t0, 0(t1)
	slt a3, t0, a3
	xori a5, a3, 1
	mv a3, a4
	bne a5, zero, label636
	j label692
label148:
	jal getch
	sh2add a2, s5, s5
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addiw a3, a4, -48
	addw s5, s4, a3
	bgeu a1, a2, label151
	mv s4, a0
	j label148
label630:
	sh2add a0, a1, s0
	sh2add a2, s2, s0
	lw a3, 0(a2)
	lw a4, 0(a0)
	mv a0, s2
	slt a2, a3, a4
	bne a2, zero, label632
	mv a0, a1
label632:
	mv a3, a1
	bne a2, zero, label634
	mv a3, s2
label634:
	li a1, 19
	mv a2, a3
	sh2add a3, a3, s0
	sh2add a5, a0, s0
	lw a4, 0(a3)
	lw a3, 0(a5)
	ble a4, a3, label160
	li t0, 80
	ld a4, 16(sp)
	mul a5, a2, t0
	add t0, a4, a5
	sh2add a5, a1, t0
	lw a4, 0(a5)
	beq a4, zero, label437
	sh2add t1, a4, s0
	lw t0, 0(t1)
	slt a3, t0, a3
	xori a5, a3, 1
	mv a3, a4
	bne a5, zero, label636
label692:
	mv a3, a2
	addiw a1, a1, -1
	sh2add a3, a2, s0
	sh2add a5, a0, s0
	lw a4, 0(a3)
	lw a3, 0(a5)
	ble a4, a3, label160
	li t0, 80
	ld a4, 16(sp)
	mul a5, a2, t0
	add t0, a4, a5
	sh2add a5, a1, t0
	lw a4, 0(a5)
	beq a4, zero, label437
	sh2add t1, a4, s0
	lw t0, 0(t1)
	slt a3, t0, a3
	xori a5, a3, 1
	mv a3, a4
	bne a5, zero, label636
	mv a3, a2
	addiw a1, a1, -1
	sh2add a3, a2, s0
	sh2add a5, a0, s0
	lw a4, 0(a3)
	lw a3, 0(a5)
	ble a4, a3, label160
	li t0, 80
	ld a4, 16(sp)
	mul a5, a2, t0
	add t0, a4, a5
	sh2add a5, a1, t0
	lw a4, 0(a5)
	beq a4, zero, label437
	sh2add t1, a4, s0
	lw t0, 0(t1)
	slt a3, t0, a3
	xori a5, a3, 1
	mv a3, a4
	bne a5, zero, label636
	j label722
label437:
	mv a5, zero
	mv a3, a4
	mv a3, a2
	addiw a1, a1, -1
	sh2add a3, a2, s0
	sh2add a5, a0, s0
	lw a4, 0(a3)
	lw a3, 0(a5)
	ble a4, a3, label160
	li t0, 80
	ld a4, 16(sp)
	mul a5, a2, t0
	add t0, a4, a5
	sh2add a5, a1, t0
	lw a4, 0(a5)
	beq a4, zero, label437
	sh2add t1, a4, s0
	lw t0, 0(t1)
	slt a3, t0, a3
	xori a5, a3, 1
	mv a3, a4
	bne a5, zero, label636
	mv a3, a2
	addiw a1, a1, -1
	sh2add a3, a2, s0
	sh2add a5, a0, s0
	lw a4, 0(a3)
	lw a3, 0(a5)
	ble a4, a3, label160
	li t0, 80
	ld a4, 16(sp)
	mul a5, a2, t0
	add t0, a4, a5
	sh2add a5, a1, t0
	lw a4, 0(a5)
	beq a4, zero, label437
	sh2add t1, a4, s0
	lw t0, 0(t1)
	slt a3, t0, a3
	xori a5, a3, 1
	mv a3, a4
	bne a5, zero, label636
	mv a3, a2
	addiw a1, a1, -1
	sh2add a3, a2, s0
	sh2add a5, a0, s0
	lw a4, 0(a3)
	lw a3, 0(a5)
	ble a4, a3, label160
	li t0, 80
	ld a4, 16(sp)
	mul a5, a2, t0
	add t0, a4, a5
	sh2add a5, a1, t0
	lw a4, 0(a5)
	beq a4, zero, label437
	j label738
label722:
	mv a3, a2
	addiw a1, a1, -1
	sh2add a3, a2, s0
	sh2add a5, a0, s0
	lw a4, 0(a3)
	lw a3, 0(a5)
	ble a4, a3, label160
	j label730
label738:
	sh2add t1, a4, s0
	lw t0, 0(t1)
	slt a3, t0, a3
	xori a5, a3, 1
	mv a3, a4
	bne a5, zero, label636
	j label722
label160:
	bne a0, a2, label447
	j label161
label447:
	li a1, 19
	mv a3, a2
	mv a2, a0
	j label163
label161:
	mv a0, a2
	jal putint
	li a0, 10
	jal putch
	addiw s1, s1, -1
	beq s1, zero, label171
	j label132
label163:
	li a0, 80
	ld a4, 16(sp)
	mul a5, a3, a0
	add t1, a4, a5
	sh2add t0, a1, t1
	mul t1, a2, a0
	add t2, a4, t1
	lw a5, 0(t0)
	sh2add a4, a1, t2
	lw t0, 0(a4)
	xor t2, a5, t0
	sltu t1, zero, t2
	bne t1, zero, label638
	mv a5, a3
label638:
	mul a3, a5, a0
	ld a4, 16(sp)
	addiw t3, a1, -1
	add t2, a4, a3
	mv a3, t0
	sh2add a4, t3, t2
	lw t2, 0(a4)
	bne t1, zero, label640
	mv a3, a2
label640:
	mul a2, a3, a0
	ld a4, 16(sp)
	add t1, a4, a2
	sh2add t0, t3, t1
	lw a2, 0(t0)
	mv t0, t2
	xor a4, t2, a2
	sltu t1, zero, a4
	bne t1, zero, label642
	mv t0, a5
label642:
	mul a5, t0, a0
	ld a4, 16(sp)
	addiw t2, a1, -2
	add t3, a4, a5
	mv a5, a2
	sh2add a4, t2, t3
	lw t3, 0(a4)
	bne t1, zero, label644
	mv a5, a3
label644:
	mul a2, a5, a0
	ld a4, 16(sp)
	add a3, a4, a2
	sh2add a2, t2, a3
	lw t1, 0(a2)
	mv a2, t3
	xor a3, t3, t1
	sltu t2, zero, a3
	bne t2, zero, label646
	mv a2, t0
label646:
	mul a3, a2, a0
	ld a4, 16(sp)
	addiw t3, a1, -3
	add t0, a4, a3
	sh2add a4, t3, t0
	mv t0, t1
	lw a3, 0(a4)
	bne t2, zero, label648
	mv t0, a5
label648:
	mul a0, t0, a0
	ld a4, 16(sp)
	add a5, a4, a0
	sh2add t1, t3, a5
	lw a0, 0(t1)
	xor a5, a3, a0
	sltu a4, zero, a5
	bne a4, zero, label650
	mv a0, t0
label650:
	bne a4, zero, label652
	mv a3, a2
label652:
	addiw a1, a1, -4
	blt a1, zero, label167
	mv a2, a0
	j label163
label730:
	li t0, 80
	ld a4, 16(sp)
	mul a5, a2, t0
	add t0, a4, a5
	sh2add a5, a1, t0
	lw a4, 0(a5)
	beq a4, zero, label437
	j label738
label636:
	addiw a1, a1, -1
	mv a2, a3
	sh2add a3, a3, s0
	sh2add a5, a0, s0
	lw a4, 0(a3)
	lw a3, 0(a5)
	ble a4, a3, label160
	li t0, 80
	ld a4, 16(sp)
	mul a5, a2, t0
	add t0, a4, a5
	sh2add a5, a1, t0
	lw a4, 0(a5)
	beq a4, zero, label437
	sh2add t1, a4, s0
	lw t0, 0(t1)
	slt a3, t0, a3
	xori a5, a3, 1
	mv a3, a4
	bne a5, zero, label636
	mv a3, a2
	addiw a1, a1, -1
	sh2add a3, a2, s0
	sh2add a5, a0, s0
	lw a4, 0(a3)
	lw a3, 0(a5)
	ble a4, a3, label160
	li t0, 80
	ld a4, 16(sp)
	mul a5, a2, t0
	add t0, a4, a5
	sh2add a5, a1, t0
	lw a4, 0(a5)
	beq a4, zero, label437
	sh2add t1, a4, s0
	lw t0, 0(t1)
	slt a3, t0, a3
	xori a5, a3, 1
	mv a3, a4
	bne a5, zero, label636
	j label722
label151:
	subw a0, zero, s5
	mv a1, a0
	bne s3, zero, label630
	mv a1, s5
	j label630
label103:
	sh2add a1, a0, s1
	li a2, -1
	addiw a0, a0, 1
	sw a2, 0(a1)
	blt s4, a0, label105
	j label103
label671:
	mv s7, zero
	j label98
label92:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s5, a3, label614
	mv a1, s6
label614:
	beq a2, zero, label225
	mv s5, a0
	mv s6, a1
	j label92
label225:
	mv s5, a0
	mv s6, a1
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label230
	j label671
label98:
	jal getch
	sh2add a2, s7, s7
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addiw a4, a3, -48
	addw s7, s5, a4
	bgeu a1, a2, label101
	mv s5, a0
	j label98
label87:
	jal getch
	sh2add a2, s6, s6
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addiw a4, a3, -48
	addw s6, s4, a4
	bgeu a1, a2, label90
	mv s4, a0
	j label87
label621:
	mv a0, s11
label622:
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
	beq s4, s7, label131
	j label106
label101:
	subw a0, zero, s7
	mv s5, a0
	bne s6, zero, label616
	mv s5, s7
label616:
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
	j label717
label167:
	li a1, 80
	ld a4, 16(sp)
	mul a0, a3, a1
	add a1, a4, a0
	lw a2, 0(a1)
	j label161
label171:
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
