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
.p2align 2
	addi sp, sp, -40
	mv a3, a1
pcrel80:
	auipc a4, %pcrel_hi(dep)
	sd s0, 32(sp)
	addi a2, a4, %pcrel_lo(pcrel80)
	addiw s0, a1, 1
pcrel81:
	auipc a4, %pcrel_hi(f)
	sh2add a1, a0, a2
	sd s1, 24(sp)
	addi a2, a4, %pcrel_lo(pcrel81)
	sd s2, 16(sp)
	li a4, 80
	sd s3, 8(sp)
	mul a5, a0, a4
	sd ra, 0(sp)
	sw a3, 0(a1)
pcrel82:
	auipc a3, %pcrel_hi(to)
	mv a1, a2
	addi s1, a3, %pcrel_lo(pcrel82)
	add a2, a2, a5
pcrel83:
	auipc a3, %pcrel_hi(next)
	lw a4, 0(a2)
	addi s2, a3, %pcrel_lo(pcrel83)
	bne a4, zero, label26
pcrel84:
	auipc a1, %pcrel_hi(head)
	addi a2, a1, %pcrel_lo(pcrel84)
	sh2add a3, a0, a2
	li a0, -1
	lw s3, 0(a3)
	bne s3, a0, label5
	j label7
label26:
	mv a3, zero
	j label2
label5:
.p2align 2
	sh2add a1, s3, s1
	lw a0, 0(a1)
	mv a1, s0
	jal tree
	li a0, -1
	sh2add a2, s3, s2
	lw s3, 0(a2)
	bne s3, a0, label5
label7:
	ld ra, 0(sp)
	ld s3, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	ld s0, 32(sp)
	addi sp, sp, 40
	ret
label2:
.p2align 2
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
	bne a4, zero, label2
pcrel85:
.p2align 2
	auipc a1, %pcrel_hi(head)
	addi a2, a1, %pcrel_lo(pcrel85)
	sh2add a3, a0, a2
	li a0, -1
	lw s3, 0(a3)
	bne s3, a0, label5
	j label7
.globl main
main:
.p2align 2
	addi sp, sp, -112
	sd s2, 8(sp)
	sd s3, 0(sp)
	sd s1, 104(sp)
	sd s6, 96(sp)
	sd s0, 88(sp)
	sd s5, 80(sp)
	sd s4, 72(sp)
	sd s7, 64(sp)
	sd s9, 56(sp)
	sd s10, 48(sp)
	sd s8, 40(sp)
	sd s11, 32(sp)
	sd ra, 24(sp)
	jal getch
	slti a1, a0, 48
	li a3, 57
	slt a2, a3, a0
pcrel715:
	auipc a3, %pcrel_hi(to)
	or a1, a1, a2
	addi s2, a3, %pcrel_lo(pcrel715)
pcrel716:
	auipc a2, %pcrel_hi(next)
	addi s3, a2, %pcrel_lo(pcrel716)
pcrel717:
	auipc a2, %pcrel_hi(head)
	addi s1, a2, %pcrel_lo(pcrel717)
pcrel718:
	auipc a2, %pcrel_hi(f)
	addi a4, a2, %pcrel_lo(pcrel718)
pcrel719:
	auipc a2, %pcrel_hi(dep)
	sd a4, 16(sp)
	addi s0, a2, %pcrel_lo(pcrel719)
	bne a1, zero, label193
	mv s5, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label207
	j label663
label193:
	mv s4, a0
	mv s5, zero
label87:
.p2align 2
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s4, a3, label604
	mv a1, s5
label604:
.p2align 2
	bne a2, zero, label202
	mv s5, a1
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label207
	j label663
label202:
	mv s4, a0
	mv s5, a1
	j label87
label207:
	mv s4, a0
	mv s6, zero
label175:
.p2align 2
	jal getch
	sh2add a3, s6, s6
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	li a2, 10
	addw s6, s4, a4
	bgeu a1, a2, label93
	mv s4, a0
	j label175
label663:
.p2align 2
	mv s6, zero
label93:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	subw a3, zero, s6
	or a1, a1, a2
	mv s4, a3
	bne s5, zero, label606
	mv s4, s6
label606:
	bne a1, zero, label217
	mv s6, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label231
	mv s7, zero
	subw a0, zero, zero
	mv s5, a0
label686:
	mv s5, s7
	j label610
label217:
	mv s5, a0
	mv s6, zero
label95:
.p2align 2
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s5, a3, label608
	mv a1, s6
label608:
.p2align 2
	bne a2, zero, label226
	mv s6, a1
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label231
	mv s7, zero
	subw a0, zero, zero
	mv s5, a0
	bne s6, zero, label610
	j label686
label226:
	mv s5, a0
	mv s6, a1
	j label95
label231:
	mv s5, a0
	mv s7, zero
label101:
.p2align 2
	jal getch
	sh2add a4, s7, s7
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	li a2, 10
	addw s7, s5, a3
	bltu a1, a2, label242
	subw a0, zero, s7
	mv s5, a0
	bne s6, zero, label610
	j label686
label242:
	mv s5, a0
	j label101
label610:
	li a0, 1061109567
	sw a0, 0(s0)
	bgt s4, zero, label249
	li a1, 1
	bne s4, a1, label260
	j label134
label249:
	li a0, 1
	j label106
label134:
	li a0, 1
	li a1, 1
	jal tree
	beq s5, zero, label135
	mv s1, s5
	j label136
label135:
	mv a0, zero
	ld ra, 24(sp)
	ld s11, 32(sp)
	ld s8, 40(sp)
	ld s10, 48(sp)
	ld s9, 56(sp)
	ld s7, 64(sp)
	ld s4, 72(sp)
	ld s5, 80(sp)
	ld s0, 88(sp)
	ld s6, 96(sp)
	ld s1, 104(sp)
	ld s3, 0(sp)
	ld s2, 8(sp)
	addi sp, sp, 112
	ret
label136:
.p2align 2
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label356
	mv s3, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label361
label677:
.p2align 2
	mv s4, zero
	j label144
label356:
.p2align 2
	mv s4, a0
	mv s2, zero
	j label172
label361:
.p2align 2
	mv s2, a0
	mv s4, zero
label141:
.p2align 2
	jal getch
	sh2add a2, s4, s4
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s4, s2, a4
	bgeu a1, a2, label144
	mv s2, a0
	j label141
label144:
.p2align 2
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	subw a3, zero, s4
	or a1, a1, a2
	mv s2, a3
	bne s3, zero, label620
	mv s2, s4
label620:
.p2align 2
	bne a1, zero, label382
	mv s3, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label396
	mv a0, zero
	subw a2, zero, zero
	mv a1, a2
	mv a1, zero
	mv a0, s0
	sh2add a2, s2, s0
	lw a3, 0(a2)
	lw a4, 0(s0)
	mv a0, s2
	slt a2, a3, a4
	bne a2, zero, label626
	mv a0, zero
	mv a3, zero
	mv a3, s2
	li a1, 19
	mv a2, s2
	sh2add a3, s2, s0
	mv a5, s0
	lw a4, 0(a3)
	lw a3, 0(s0)
	bgt a4, a3, label160
	beq zero, s2, label165
	j label709
label382:
.p2align 2
	mv s4, a0
	mv s3, zero
label146:
.p2align 2
	jal getch
	li a3, 45
	li a2, 57
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s4, a3, label622
	mv a2, s3
label622:
.p2align 2
	bne a1, zero, label391
	mv s3, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label396
	mv a0, zero
	subw a2, zero, zero
	mv a1, a2
	bne s3, zero, label624
	mv a1, zero
	mv a0, s0
	sh2add a2, s2, s0
	lw a3, 0(a2)
	lw a4, 0(s0)
	mv a0, s2
	slt a2, a3, a4
	bne a2, zero, label626
	mv a0, zero
	mv a3, zero
	mv a3, s2
	li a1, 19
	mv a2, s2
	sh2add a3, s2, s0
	mv a5, s0
	lw a4, 0(a3)
	lw a3, 0(s0)
	bgt a4, a3, label160
	beq zero, s2, label165
	j label709
label391:
.p2align 2
	mv s4, a0
	mv s3, a2
	j label146
label396:
.p2align 2
	mv s4, a0
	mv s5, zero
label152:
.p2align 2
	jal getch
	sh2add a3, s5, s5
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	li a2, 10
	addw s5, s4, a4
	bltu a1, a2, label407
	mv a0, s5
	subw a2, zero, s5
	mv a1, a2
	bne s3, zero, label624
	mv a1, s5
	sh2add a0, s5, s0
	sh2add a2, s2, s0
	lw a3, 0(a2)
	lw a4, 0(a0)
	mv a0, s2
	slt a2, a3, a4
	bne a2, zero, label626
	mv a0, s5
	mv a3, s5
	mv a3, s2
	li a1, 19
	mv a2, s2
	sh2add a3, s2, s0
	sh2add a5, s5, s0
	lw a4, 0(a3)
	lw a3, 0(a5)
	bgt a4, a3, label160
	beq s5, s2, label165
	j label709
label407:
.p2align 2
	mv s4, a0
	j label152
label165:
.p2align 2
	mv a0, a2
	jal putint
	li a0, 10
	jal putch
	addiw s1, s1, -1
	bne s1, zero, label136
	j label135
label172:
.p2align 2
	jal getch
	li s3, 1
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	li a2, 45
	or a1, a1, a3
	beq s4, a2, label648
	mv s3, s2
label648:
.p2align 2
	bne a1, zero, label525
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label361
	j label677
label525:
.p2align 2
	mv s4, a0
	mv s2, s3
	j label172
label709:
.p2align 2
	li a1, 19
	mv a5, a2
	mv a2, a0
	j label167
label624:
.p2align 2
	sh2add a0, a1, s0
	sh2add a2, s2, s0
	lw a3, 0(a2)
	lw a4, 0(a0)
	mv a0, s2
	slt a2, a3, a4
	bne a2, zero, label626
	mv a0, a1
label626:
.p2align 2
	mv a3, a1
	bne a2, zero, label628
	mv a3, s2
label628:
.p2align 2
	li a1, 19
	mv a2, a3
	sh2add a3, a3, s0
	sh2add a5, a0, s0
	lw a4, 0(a3)
	lw a3, 0(a5)
	bgt a4, a3, label160
	beq a0, a2, label165
	j label709
label160:
.p2align 2
	li t0, 80
	ld a4, 16(sp)
	mul a5, a2, t0
	add t0, a4, a5
	sh2add a5, a1, t0
	lw a4, 0(a5)
	bne a4, zero, label161
	mv a5, zero
	mv a3, a4
	mv a3, a2
	addiw a1, a1, -1
	sh2add a3, a2, s0
	sh2add a5, a0, s0
	lw a4, 0(a3)
	lw a3, 0(a5)
	bgt a4, a3, label160
	beq a0, a2, label165
	j label709
label167:
.p2align 2
	li a0, 80
	ld a4, 16(sp)
	mul a3, a5, a0
	add t1, a4, a3
	sh2add t0, a1, t1
	mul t1, a2, a0
	add a4, a4, t1
	lw a3, 0(t0)
	sh2add t2, a1, a4
	lw t0, 0(t2)
	xor a4, a3, t0
	sltu t1, zero, a4
	bne t1, zero, label632
	mv a3, a5
label632:
.p2align 2
	mul t2, a3, a0
	ld a4, 16(sp)
	addiw t3, a1, -1
	add a5, a4, t2
	sh2add a4, t3, a5
	mv a5, t0
	lw t2, 0(a4)
	bne t1, zero, label634
	mv a5, a2
label634:
.p2align 2
	mul a2, a5, a0
	ld a4, 16(sp)
	add t0, a4, a2
	sh2add t1, t3, t0
	mv t0, t2
	lw a2, 0(t1)
	xor a4, t2, a2
	sltu t1, zero, a4
	bne t1, zero, label636
	mv t0, a3
label636:
.p2align 2
	mul a3, t0, a0
	ld a4, 16(sp)
	addiw t3, a1, -2
	add t2, a4, a3
	mv a3, a2
	sh2add a4, t3, t2
	lw t2, 0(a4)
	bne t1, zero, label638
	mv a3, a5
label638:
.p2align 2
	mul a2, a3, a0
	ld a4, 16(sp)
	add a5, a4, a2
	sh2add a2, t3, a5
	lw t1, 0(a2)
	mv a2, t2
	xor a4, t2, t1
	sltu t3, zero, a4
	bne t3, zero, label640
	mv a2, t0
label640:
.p2align 2
	mul t0, a2, a0
	ld a4, 16(sp)
	addiw t2, a1, -3
	add a5, a4, t0
	mv t0, t1
	sh2add a4, t2, a5
	lw a5, 0(a4)
	bne t3, zero, label642
	mv t0, a3
label642:
.p2align 2
	mul a0, t0, a0
	ld a4, 16(sp)
	add t1, a4, a0
	sh2add a3, t2, t1
	lw a0, 0(a3)
	xor a4, a5, a0
	sltu a3, zero, a4
	bne a3, zero, label644
	mv a0, t0
label644:
.p2align 2
	bne a3, zero, label646
	mv a5, a2
label646:
.p2align 2
	addiw a1, a1, -4
	blt a1, zero, label512
	mv a2, a0
	j label167
label161:
.p2align 2
	sh2add a5, a4, s0
	lw t0, 0(a5)
	slt a3, t0, a3
	xori a5, a3, 1
	mv a3, a4
	bne a5, zero, label630
	mv a3, a2
label630:
.p2align 2
	addiw a1, a1, -1
	mv a2, a3
	sh2add a3, a3, s0
	sh2add a5, a0, s0
	lw a4, 0(a3)
	lw a3, 0(a5)
	bgt a4, a3, label160
	beq a0, a2, label165
	j label709
label106:
.p2align 2
	sh2add a1, a0, s1
	li a2, -1
	addiw a0, a0, 1
	sw a2, 0(a1)
	bge s4, a0, label106
	li a1, 1
	beq s4, a1, label134
label260:
	mv s6, zero
	li s7, 1
label109:
.p2align 2
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label267
	mv s9, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label272
label671:
.p2align 2
	mv s10, zero
	j label118
label267:
.p2align 2
	mv s10, a0
	mv s8, zero
	j label131
label272:
.p2align 2
	mv s8, a0
	mv s10, zero
label115:
.p2align 2
	jal getch
	sh2add a4, s10, s10
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	li a2, 10
	addw s10, s8, a3
	bgeu a1, a2, label118
	mv s8, a0
	j label115
label118:
.p2align 2
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	subw a2, zero, s10
	or a1, a1, a3
	mv s8, a2
	bne s9, zero, label612
	mv s8, s10
label612:
.p2align 2
	bne a1, zero, label293
	mv s9, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label298
	mv a0, zero
	subw a2, zero, zero
	mv a1, a2
label688:
.p2align 2
	mv a1, a0
	j label614
label293:
.p2align 2
	mv s10, a0
	mv s9, zero
	j label128
label298:
.p2align 2
	mv s10, a0
	mv s11, zero
	j label125
label614:
.p2align 2
	sh2add a0, s6, s2
	li a2, 80
	sh2add a3, s6, s3
	addiw s7, s7, 1
	sw a1, 0(a0)
	ld a4, 16(sp)
	mul a1, a1, a2
	add a0, a4, a1
	sh2add a1, s8, s1
	lw a2, 0(a1)
	sw a2, 0(a3)
	sw s6, 0(a1)
	addiw s6, s6, 1
	sw s8, 0(a0)
	bne s4, s7, label109
	j label134
label125:
.p2align 2
	jal getch
	sh2add a2, s11, s11
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addi a3, a4, -48
	addw s11, s10, a3
	bltu a1, a2, label327
	mv a0, s11
	subw a2, zero, s11
	mv a1, a2
	bne s9, zero, label614
	j label688
label327:
.p2align 2
	mv s10, a0
	j label125
label128:
.p2align 2
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s10, a3, label616
	mv a2, s9
label616:
.p2align 2
	bne a1, zero, label336
	mv s9, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label298
	mv a0, zero
	subw a2, zero, zero
	mv a1, a2
	bne s9, zero, label614
	j label688
label336:
.p2align 2
	mv s10, a0
	mv s9, a2
	j label128
label131:
.p2align 2
	jal getch
	li s9, 1
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	li a2, 45
	or a1, a1, a3
	beq s10, a2, label618
	mv s9, s8
label618:
.p2align 2
	bne a1, zero, label345
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label272
	j label671
label345:
.p2align 2
	mv s10, a0
	mv s8, s9
	j label131
label512:
.p2align 2
	li a1, 80
	ld a4, 16(sp)
	mul a0, a5, a1
	add a1, a4, a0
	lw a2, 0(a1)
	j label165
