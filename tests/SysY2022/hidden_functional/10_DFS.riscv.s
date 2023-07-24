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
pcrel105:
	auipc a2, %pcrel_hi(vis)
	sd s1, 56(sp)
	mv s1, a1
	sd s6, 48(sp)
	addi a1, a2, %pcrel_lo(pcrel105)
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
	beq a0, s1, label24
pcrel106:
	auipc a2, %pcrel_hi(head)
	addi a1, a2, %pcrel_lo(pcrel106)
	sh2add a2, a0, a1
	mv s4, a1
pcrel107:
	auipc a0, %pcrel_hi(next)
	lw s0, 0(a2)
	addi s5, a0, %pcrel_lo(pcrel107)
pcrel108:
	auipc a0, %pcrel_hi(to)
	addi s6, a0, %pcrel_lo(pcrel108)
label3:
	li a1, -1
	bne s0, a1, label5
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
label5:
	sh2add a2, s0, s6
	lw a0, 0(a2)
	sh2add a1, a0, s3
	lw a2, 0(a1)
	bne a2, zero, label59
	li a2, 1
	sw a2, 0(a1)
	beq s1, a0, label24
	sh2add a1, a0, s4
	lw s2, 0(a1)
	li a0, -1
	bne s2, a0, label10
	j label59
label8:
	li a0, -1
	bne s2, a0, label10
label59:
	sh2add a0, s0, s5
	lw s0, 0(a0)
	j label3
label10:
	sh2add a1, s2, s6
	lw a0, 0(a1)
	sh2add a2, a0, s3
	lw a1, 0(a2)
	beq a1, zero, label11
	sh2add a1, s2, s5
	lw s2, 0(a1)
	j label8
label11:
	mv a1, s1
	jal same
	bne a0, zero, label24
	sh2add a1, s2, s5
	lw s2, 0(a1)
	li a0, -1
	bne s2, a0, label10
	j label59
label24:
	li a0, 1
	j label14
.globl main
main:
	addi sp, sp, -96
	sd s0, 88(sp)
	sd s5, 80(sp)
	sd s2, 72(sp)
	sd s3, 64(sp)
	sd s1, 56(sp)
	sd s6, 48(sp)
	sd s4, 40(sp)
	sd s7, 32(sp)
	sd s8, 24(sp)
	sd s9, 16(sp)
	sd s10, 8(sp)
	sd ra, 0(sp)
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
pcrel617:
	auipc a2, %pcrel_hi(vis)
	or a1, a1, a3
	addi s0, a2, %pcrel_lo(pcrel617)
pcrel618:
	auipc a2, %pcrel_hi(to)
	addi s2, a2, %pcrel_lo(pcrel618)
pcrel619:
	auipc a2, %pcrel_hi(next)
	addi s3, a2, %pcrel_lo(pcrel619)
pcrel620:
	auipc a2, %pcrel_hi(head)
	addi s1, a2, %pcrel_lo(pcrel620)
	bne a1, zero, label203
	mv s5, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label217
	j label216
label203:
	mv s4, a0
	mv s5, zero
label110:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s4, a3, label563
	mv a1, s5
label563:
	bne a2, zero, label212
	mv s5, a1
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label217
	j label216
label212:
	mv s4, a0
	mv s5, a1
	j label110
label216:
	mv s6, zero
	j label116
label217:
	mv s4, a0
	mv s6, zero
	j label187
label116:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	subw a3, zero, s6
	or a1, a1, a2
	mv s4, a3
	bne s5, zero, label565
	mv s4, s6
label565:
	bne a1, zero, label228
	mv s6, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label242
	j label241
label228:
	mv s5, a0
	mv s6, zero
label118:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s5, a3, label567
	mv a1, s6
label567:
	bne a2, zero, label237
	mv s6, a1
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label242
	j label241
label237:
	mv s5, a0
	mv s6, a1
	j label118
label241:
	mv s7, zero
	subw a0, zero, zero
	mv s5, a0
	bne s6, zero, label569
	j label568
label242:
	mv s5, a0
	mv s7, zero
label124:
	jal getch
	sh2add a4, s7, s7
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	li a2, 10
	addw s7, s5, a3
	bltu a1, a2, label253
	subw a0, zero, s7
	mv s5, a0
	bne s6, zero, label569
	j label568
label253:
	mv s5, a0
	j label124
label568:
	mv s5, s7
label569:
	mv a2, zero
label129:
	sh2add a0, a2, s1
	li a1, -1
	addiw a2, a2, 16
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
	sw a1, 52(a0)
	sw a1, 56(a0)
	sw a1, 60(a0)
	li a0, 992
	blt a2, a0, label129
	sh2add a0, a2, s1
	mv s6, zero
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
	j label132
label187:
	jal getch
	sh2add a4, s6, s6
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	li a3, 10
	addw s6, s4, a2
	bgeu a1, a3, label116
	mv s4, a0
	j label187
label132:
	bne s5, zero, label136
	mv a0, zero
	ld ra, 0(sp)
	ld s10, 8(sp)
	ld s9, 16(sp)
	ld s8, 24(sp)
	ld s7, 32(sp)
	ld s4, 40(sp)
	ld s6, 48(sp)
	ld s1, 56(sp)
	ld s3, 64(sp)
	ld s2, 72(sp)
	ld s5, 80(sp)
	ld s0, 88(sp)
	addi sp, sp, 96
	ret
label136:
	jal getch
	xori a3, a0, 85
	xori a2, a0, 81
	sltu a1, zero, a2
	sltu a2, zero, a3
	and a1, a1, a2
	bne a1, zero, label136
	li a1, 81
	beq a0, a1, label161
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label314
	mv s8, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label319
	j label318
label314:
	mv s9, a0
	mv s7, zero
	j label158
label318:
	mv s9, zero
	j label142
label319:
	mv s7, a0
	mv s9, zero
	j label155
label142:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	subw a2, zero, s9
	or a1, a1, a3
	mv s7, a2
	bne s8, zero, label571
	mv s7, s9
label571:
	bne a1, zero, label329
	mv s8, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label343
	j label342
label329:
	mv s9, a0
	mv s8, zero
label144:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s9, a3, label573
	mv a2, s8
label573:
	bne a1, zero, label338
	mv s8, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label343
	j label342
label338:
	mv s9, a0
	mv s8, a2
	j label144
label342:
	mv s10, zero
	subw a1, zero, zero
	mv a0, a1
	bne s8, zero, label575
	j label574
label343:
	mv s9, a0
	mv s10, zero
	j label152
label574:
	mv a0, s10
label575:
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
	j label132
label152:
	jal getch
	sh2add a2, s10, s10
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s10, s9, a4
	bltu a1, a2, label372
	subw a1, zero, s10
	mv a0, a1
	bne s8, zero, label575
	j label574
label372:
	mv s9, a0
	j label152
label155:
	jal getch
	sh2add a4, s9, s9
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	li a3, 10
	addw s9, s7, a2
	bgeu a1, a3, label142
	mv s7, a0
	j label155
label158:
	jal getch
	li s8, 1
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	li a2, 45
	or a1, a1, a3
	beq s9, a2, label577
	mv s8, s7
label577:
	bne a1, zero, label392
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label319
	j label318
label392:
	mv s9, a0
	mv s7, s8
	j label158
label161:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label399
	mv s8, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label404
	j label403
label399:
	mv s9, a0
	mv s7, zero
	j label184
label403:
	mv s9, zero
	j label165
label404:
	mv s7, a0
	mv s9, zero
	j label181
label165:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	subw a2, zero, s9
	or a1, a1, a3
	mv s7, a2
	bne s8, zero, label579
	mv s7, s9
label579:
	bne a1, zero, label414
	mv s8, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label419
	j label418
label414:
	mv s9, a0
	mv s8, zero
	j label178
label418:
	mv s10, zero
	subw a0, zero, zero
	mv a1, a0
	bne s8, zero, label581
	j label580
label419:
	mv s9, a0
	mv s10, zero
	j label175
label580:
	mv a1, s10
label581:
	ble s4, zero, label172
	li a2, 1
	j label173
label172:
	mv a0, s7
	jal same
	jal putint
	li a0, 10
	jal putch
	addiw s5, s5, -1
	j label132
label173:
	sh2add a0, a2, s0
	addiw a2, a2, 1
	sw zero, 0(a0)
	bge s4, a2, label173
	j label172
label175:
	jal getch
	sh2add a4, s10, s10
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	li a3, 10
	addw s10, s9, a2
	bltu a1, a3, label445
	subw a0, zero, s10
	mv a1, a0
	bne s8, zero, label581
	j label580
label445:
	mv s9, a0
	j label175
label178:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s9, a3, label583
	mv a2, s8
label583:
	bne a1, zero, label454
	mv s8, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label419
	j label418
label454:
	mv s9, a0
	mv s8, a2
	j label178
label181:
	jal getch
	sh2add a3, s9, s9
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	li a2, 10
	addw s9, s7, a4
	bgeu a1, a2, label165
	mv s7, a0
	j label181
label184:
	jal getch
	li a2, 57
	li s8, 1
	slti a1, a0, 48
	slt a3, a2, a0
	li a2, 45
	or a1, a1, a3
	beq s9, a2, label585
	mv s8, s7
label585:
	bne a1, zero, label474
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label404
	j label403
label474:
	mv s9, a0
	mv s7, s8
	j label184
