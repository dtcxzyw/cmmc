.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
to:
	.zero	20020
.align 4
next:
	.zero	20020
.align 4
head:
	.zero	4020
.align 4
vis:
	.zero	4020
.text
same:
	addi sp, sp, -64
pcrel121:
	auipc a2, %pcrel_hi(vis)
	sd s1, 56(sp)
	mv s1, a1
	sd s6, 48(sp)
	addi a1, a2, %pcrel_lo(pcrel121)
	sd s3, 40(sp)
	sh2add a2, a0, a1
	mv s3, a1
	sd s4, 32(sp)
	li a1, 1
	sd s0, 24(sp)
	sd s5, 16(sp)
	sd s2, 8(sp)
	sd ra, 0(sp)
	sw a1, 0(a2)
	bne a0, s1, label2
	j label23
label2:
	auipc a2, %pcrel_hi(head)
	addi a1, a2, %pcrel_lo(label2)
	sh2add a2, a0, a1
	mv s4, a1
pcrel122:
	auipc a0, %pcrel_hi(next)
	lw s0, 0(a2)
	addi s5, a0, %pcrel_lo(pcrel122)
pcrel123:
	auipc a0, %pcrel_hi(to)
	addi s6, a0, %pcrel_lo(pcrel123)
	li a0, -1
	beq s0, a0, label37
	sh2add a2, s0, s6
	lw a0, 0(a2)
	sh2add a1, a0, s3
	lw a2, 0(a1)
	bne a2, zero, label13
	li a2, 1
	sw a2, 0(a1)
	bne s1, a0, label7
	j label23
label37:
	mv a0, zero
label14:
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s5, 16(sp)
	ld s0, 24(sp)
	ld s4, 32(sp)
	ld s3, 40(sp)
	ld s6, 48(sp)
	ld s1, 56(sp)
	addi sp, sp, 64
	ret
label23:
	li a0, 1
	j label14
label13:
	sh2add a0, s0, s5
	lw s0, 0(a0)
	li a0, -1
	beq s0, a0, label37
	sh2add a2, s0, s6
	lw a0, 0(a2)
	sh2add a1, a0, s3
	lw a2, 0(a1)
	bne a2, zero, label13
	li a2, 1
	sw a2, 0(a1)
	bne s1, a0, label7
	j label23
label7:
	sh2add a0, a0, s4
	lw s2, 0(a0)
	li a0, -1
	beq s2, a0, label13
	sh2add a1, s2, s6
	lw a0, 0(a1)
	sh2add a2, a0, s3
	lw a1, 0(a2)
	bne a1, zero, label12
label11:
	mv a1, s1
	jal same
	beq a0, zero, label12
	j label23
label12:
	sh2add a0, s2, s5
	lw s2, 0(a0)
	li a0, -1
	beq s2, a0, label13
	sh2add a1, s2, s6
	lw a0, 0(a1)
	sh2add a2, a0, s3
	lw a1, 0(a2)
	bne a1, zero, label12
	j label11
.globl main
main:
	addi sp, sp, -96
	sd s4, 88(sp)
	sd s0, 80(sp)
	sd s5, 72(sp)
	sd s2, 64(sp)
	sd s3, 56(sp)
	sd s1, 48(sp)
	sd s6, 40(sp)
	sd s7, 32(sp)
	sd s8, 24(sp)
	sd s9, 16(sp)
	sd s10, 8(sp)
	sd ra, 0(sp)
	jal getch
	mv s4, a0
	li a1, 57
	slti a0, a0, 48
	slt a2, a1, s4
pcrel658:
	auipc a1, %pcrel_hi(vis)
	or a0, a0, a2
	addi s0, a1, %pcrel_lo(pcrel658)
pcrel659:
	auipc a1, %pcrel_hi(to)
	addi s2, a1, %pcrel_lo(pcrel659)
pcrel660:
	auipc a1, %pcrel_hi(next)
	addi s3, a1, %pcrel_lo(pcrel660)
pcrel661:
	auipc a1, %pcrel_hi(head)
	addi s1, a1, %pcrel_lo(pcrel661)
	beq a0, zero, label218
	mv s5, zero
	j label125
label218:
	mv s5, zero
	addiw a0, s4, -48
	li a1, 10
	bgeu a0, a1, label232
label625:
	mv s6, zero
	j label202
label125:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s4, a3, label590
	mv a1, s5
label590:
	beq a2, zero, label227
	mv s4, a0
	mv s5, a1
	j label125
label227:
	mv s4, a0
	mv s5, a1
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label232
	j label625
label232:
	mv s6, zero
	j label131
label202:
	jal getch
	sh2add a4, s6, s6
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	li a3, 10
	addw s6, s4, a2
	bgeu a1, a3, label131
	mv s4, a0
	j label202
label131:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	subw a2, zero, s6
	or a1, a1, a3
	mv s4, a2
	bne s5, zero, label592
	mv s4, s6
label592:
	beq a1, zero, label243
	mv s5, a0
	mv s6, zero
	j label133
label243:
	mv s5, a0
	mv s6, zero
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label257
label626:
	mv s7, zero
	j label139
label133:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s5, a3, label594
	mv a1, s6
label594:
	beq a2, zero, label252
	mv s5, a0
	mv s6, a1
	j label133
label252:
	mv s5, a0
	mv s6, a1
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label257
	j label626
label257:
	mv s7, zero
	subw a0, zero, zero
	mv s5, a0
	bne s6, zero, label596
	mv s5, zero
	mv a1, zero
	j label144
label139:
	jal getch
	sh2add a2, s7, s7
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s7, s5, a4
	bgeu a1, a2, label142
	mv s5, a0
	j label139
label144:
	sh2add a0, a1, s1
	li a2, -1
	addiw a1, a1, 16
	sw a2, 0(a0)
	sw a2, 4(a0)
	sw a2, 8(a0)
	sw a2, 12(a0)
	sw a2, 16(a0)
	sw a2, 20(a0)
	sw a2, 24(a0)
	sw a2, 28(a0)
	sw a2, 32(a0)
	sw a2, 36(a0)
	sw a2, 40(a0)
	sw a2, 44(a0)
	sw a2, 48(a0)
	sw a2, 52(a0)
	sw a2, 56(a0)
	sw a2, 60(a0)
	li a0, 992
	bge a1, a0, label146
	j label144
label146:
	sh2add a0, a1, s1
	mv s6, zero
	li a1, -1
	sw a1, 0(a0)
	sw a1, 4(a0)
	sw a1, 8(a0)
	sw a1, 12(a0)
	sw a1, 16(a0)
	sw a1, 20(a0)
	sw a1, 24(a0)
	sw a1, 28(a0)
	sw a1, 32(a0)
	sw a1, 36(a0)
	sw a1, 40(a0)
	sw a1, 44(a0)
	sw a1, 48(a0)
	beq s5, zero, label150
	j label151
label150:
	mv a0, zero
	ld ra, 0(sp)
	ld s10, 8(sp)
	ld s9, 16(sp)
	ld s8, 24(sp)
	ld s7, 32(sp)
	ld s6, 40(sp)
	ld s1, 48(sp)
	ld s3, 56(sp)
	ld s2, 64(sp)
	ld s5, 72(sp)
	ld s0, 80(sp)
	ld s4, 88(sp)
	addi sp, sp, 96
	ret
label151:
	jal getch
	xori a3, a0, 85
	xori a2, a0, 81
	sltu a1, zero, a2
	sltu a2, zero, a3
	and a1, a1, a2
	beq a1, zero, label152
	j label151
label187:
	mv a0, s7
	jal same
	jal putint
	li a0, 10
	jal putch
	addiw s5, s5, -1
	beq s5, zero, label150
	j label151
label152:
	li a1, 81
	bne a0, a1, label153
	jal getch
	li a2, 57
	mv s7, a0
	slt a1, a2, a0
	slti a0, a0, 48
	or a0, a0, a1
	beq a0, zero, label414
	mv s8, zero
	j label199
label414:
	mv s8, zero
	addiw a0, s7, -48
	li a1, 10
	bgeu a0, a1, label419
label418:
	mv s9, zero
	j label196
label419:
	mv s9, zero
label180:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	subw a2, zero, s9
	or a1, a1, a3
	mv s7, a2
	bne s8, zero, label606
	mv s7, s9
label606:
	beq a1, zero, label429
	mv s8, a0
	mv s9, zero
	j label193
label429:
	mv s9, a0
	mv s8, zero
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label434
label433:
	mv s10, zero
	j label190
label434:
	mv s10, zero
label185:
	subw a0, zero, s10
	mv a1, a0
	bne s8, zero, label608
	mv a1, s10
label608:
	ble s4, zero, label187
	li a0, 1
	sh2add a2, a0, s0
	addiw a0, a0, 1
	sw zero, 0(a2)
	blt s4, a0, label187
	sh2add a2, a0, s0
	addiw a0, a0, 1
	sw zero, 0(a2)
	blt s4, a0, label187
	sh2add a2, a0, s0
	addiw a0, a0, 1
	sw zero, 0(a2)
	blt s4, a0, label187
	sh2add a2, a0, s0
	addiw a0, a0, 1
	sw zero, 0(a2)
	blt s4, a0, label187
	sh2add a2, a0, s0
	addiw a0, a0, 1
	sw zero, 0(a2)
	blt s4, a0, label187
	sh2add a2, a0, s0
	addiw a0, a0, 1
	sw zero, 0(a2)
	blt s4, a0, label187
	sh2add a2, a0, s0
	addiw a0, a0, 1
	sw zero, 0(a2)
	blt s4, a0, label187
	j label646
label193:
	jal getch
	li a3, 45
	li a2, 57
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s8, a3, label610
	mv a2, s9
label610:
	beq a1, zero, label469
	mv s8, a0
	mv s9, a2
	j label193
label469:
	mv s9, a0
	mv s8, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label434
	j label433
label196:
	jal getch
	sh2add a3, s9, s9
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	li a2, 10
	addw s9, s7, a4
	bgeu a1, a2, label180
	mv s7, a0
	j label196
label199:
	jal getch
	li a3, 45
	li a2, 57
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s7, a3, label612
	mv a2, s8
label612:
	beq a1, zero, label489
	mv s7, a0
	mv s8, a2
	j label199
label489:
	mv s7, a0
	mv s8, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label419
	j label418
label190:
	jal getch
	sh2add a4, s10, s10
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	li a3, 10
	addw s10, s9, a2
	bgeu a1, a3, label185
	mv s9, a0
	j label190
label646:
	sh2add a2, a0, s0
	addiw a0, a0, 1
	sw zero, 0(a2)
	blt s4, a0, label187
	sh2add a2, a0, s0
	addiw a0, a0, 1
	sw zero, 0(a2)
	blt s4, a0, label187
	sh2add a2, a0, s0
	addiw a0, a0, 1
	sw zero, 0(a2)
	blt s4, a0, label187
label188:
	sh2add a2, a0, s0
	addiw a0, a0, 1
	sw zero, 0(a2)
	blt s4, a0, label187
	j label188
label153:
	jal getch
	li a2, 57
	mv s7, a0
	slt a1, a2, a0
	slti a0, a0, 48
	or a0, a0, a1
	beq a0, zero, label329
	mv s8, zero
	j label173
label329:
	mv s8, zero
	addiw a0, s7, -48
	li a1, 10
	bgeu a0, a1, label334
	j label333
label334:
	mv s9, zero
	j label157
label333:
	mv s9, zero
label170:
	jal getch
	sh2add a3, s9, s9
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	li a2, 10
	addw s9, s7, a4
	bgeu a1, a2, label157
	mv s7, a0
	j label170
label173:
	jal getch
	li a3, 45
	li a2, 57
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s7, a3, label604
	mv a2, s8
label604:
	beq a1, zero, label407
	mv s7, a0
	mv s8, a2
	j label173
label407:
	mv s7, a0
	mv s8, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label334
	j label333
label157:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	subw a2, zero, s9
	or a1, a1, a3
	mv s7, a2
	bne s8, zero, label598
	mv s7, s9
label598:
	beq a1, zero, label344
	mv s8, a0
	mv s9, zero
	j label159
label344:
	mv s9, a0
	mv s8, zero
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label358
	j label628
label358:
	mv s10, zero
label165:
	subw a1, zero, s10
	mv a0, a1
	bne s8, zero, label602
	j label601
label628:
	mv s10, zero
	j label167
label159:
	jal getch
	li a3, 45
	li a2, 57
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s8, a3, label600
	mv a2, s9
label600:
	beq a1, zero, label353
	mv s8, a0
	mv s9, a2
	j label159
label353:
	mv s9, a0
	mv s8, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label358
	j label628
label167:
	jal getch
	sh2add a4, s10, s10
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	li a3, 10
	addw s10, s9, a2
	bgeu a1, a3, label165
	mv s9, a0
	j label167
label601:
	mv a0, s10
label602:
	sh2add a1, s6, s2
	addiw s5, s5, -1
	sh2add a3, s7, s1
	sw a0, 0(a1)
	sh2add a2, s6, s3
	lw a4, 0(a3)
	sh2add a0, a0, s1
	sw a4, 0(a2)
	sw s6, 0(a3)
	sw s7, 4(a1)
	addiw a1, s6, 1
	lw a3, 0(a0)
	addiw s6, s6, 2
	sw a3, 4(a2)
	sw a1, 0(a0)
	beq s5, zero, label150
	j label151
label142:
	subw a0, zero, s7
	mv s5, a0
	bne s6, zero, label596
	mv s5, s7
label596:
	mv a1, zero
	j label144
