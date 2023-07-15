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
pcrel117:
	auipc a2, %pcrel_hi(vis)
	sd s1, 56(sp)
	mv s1, a1
	sd s6, 48(sp)
	addi a1, a2, %pcrel_lo(pcrel117)
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
label23:
	li a0, 1
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
label2:
	auipc a2, %pcrel_hi(head)
	addi a1, a2, %pcrel_lo(label2)
	sh2add a2, a0, a1
	mv s4, a1
pcrel118:
	auipc a0, %pcrel_hi(next)
	lw s0, 0(a2)
	addi s5, a0, %pcrel_lo(pcrel118)
pcrel119:
	auipc a0, %pcrel_hi(to)
	addi s6, a0, %pcrel_lo(pcrel119)
	li a0, -1
	beq s0, a0, label37
	sh2add a1, s0, s6
	lw a0, 0(a1)
	sh2add a2, a0, s3
	lw a1, 0(a2)
	bne a1, zero, label6
	sh2add a1, a0, s3
	li a2, 1
	sw a2, 0(a1)
	bne s1, a0, label8
	j label23
label37:
	mv a0, zero
	j label14
label8:
	sh2add a0, a0, s4
	lw s2, 0(a0)
	li a0, -1
	beq s2, a0, label6
	sh2add a1, s2, s6
	lw a0, 0(a1)
	sh2add a2, a0, s3
	lw a1, 0(a2)
	bne a1, zero, label13
	j label12
label13:
	sh2add a0, s2, s5
	lw s2, 0(a0)
	li a0, -1
	beq s2, a0, label6
	sh2add a1, s2, s6
	lw a0, 0(a1)
	sh2add a2, a0, s3
	lw a1, 0(a2)
	bne a1, zero, label13
label12:
	mv a1, s1
	jal same
	beq a0, zero, label13
	j label23
label6:
	sh2add a0, s0, s5
	lw s0, 0(a0)
	li a0, -1
	beq s0, a0, label37
	sh2add a1, s0, s6
	lw a0, 0(a1)
	sh2add a2, a0, s3
	lw a1, 0(a2)
	bne a1, zero, label6
	sh2add a1, a0, s3
	li a2, 1
	sw a2, 0(a1)
	bne s1, a0, label8
	j label23
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
pcrel666:
	auipc a1, %pcrel_hi(vis)
	or a0, a0, a2
	addi s0, a1, %pcrel_lo(pcrel666)
pcrel667:
	auipc a1, %pcrel_hi(to)
	addi s2, a1, %pcrel_lo(pcrel667)
pcrel668:
	auipc a1, %pcrel_hi(next)
	addi s3, a1, %pcrel_lo(pcrel668)
pcrel669:
	auipc a1, %pcrel_hi(head)
	addi s1, a1, %pcrel_lo(pcrel669)
	beq a0, zero, label216
	mv s5, zero
	j label200
label216:
	mv s5, zero
	addiw a0, s4, -48
	li a1, 10
	bgeu a0, a1, label221
label220:
	mv s6, zero
	j label124
label221:
	mv s6, zero
label127:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	subw a2, zero, s6
	or a1, a1, a3
	mv s4, a2
	bne s5, zero, label597
	mv s4, s6
label597:
	beq a1, zero, label243
	mv s5, a0
	mv s6, zero
	j label129
label243:
	mv s5, a0
	mv s6, zero
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label257
	j label632
label257:
	mv s7, zero
label135:
	subw a0, zero, s7
	mv s5, a0
	bne s6, zero, label601
	mv s5, s7
label601:
	mv a1, zero
	j label137
label200:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s4, a3, label619
	mv a1, s5
label619:
	beq a2, zero, label505
	mv s4, a0
	mv s5, a1
	j label200
label505:
	mv s4, a0
	mv s5, a1
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label221
	j label220
label137:
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
	bge a1, a0, label139
	j label137
label139:
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
	beq s5, zero, label196
	j label143
label196:
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
label143:
	jal getch
	xori a3, a0, 85
	xori a2, a0, 81
	sltu a1, zero, a2
	sltu a2, zero, a3
	and a1, a1, a2
	beq a1, zero, label145
	j label144
label186:
	mv a0, s7
	jal same
	jal putint
	li a0, 10
	jal putch
	addiw s5, s5, -1
	beq s5, zero, label196
	j label143
label144:
	jal getch
	xori a2, a0, 85
	xori a3, a0, 81
	sltu a1, zero, a3
	sltu a3, zero, a2
	and a1, a1, a3
	beq a1, zero, label145
	j label144
label145:
	li a1, 81
	bne a0, a1, label147
	j label170
label124:
	jal getch
	sh2add a2, s6, s6
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addiw a4, a3, -48
	addw s6, s4, a4
	bgeu a1, a2, label127
	mv s4, a0
	j label124
label632:
	mv s7, zero
	j label197
label129:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s5, a3, label599
	mv a1, s6
label599:
	beq a2, zero, label252
	mv s5, a0
	mv s6, a1
	j label129
label252:
	mv s5, a0
	mv s6, a1
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label257
	j label632
label197:
	jal getch
	sh2add a4, s7, s7
	addiw a1, a0, -48
	slliw a3, a4, 1
	addiw a2, a3, -48
	li a3, 10
	addw s7, s5, a2
	bgeu a1, a3, label135
	mv s5, a0
	j label197
label147:
	jal getch
	li a1, 57
	mv s7, a0
	slt a2, a1, a0
	slti a0, a0, 48
	or a0, a0, a2
	beq a0, zero, label325
	mv s8, zero
	j label167
label325:
	mv s8, zero
	addiw a0, s7, -48
	li a1, 10
	bgeu a0, a1, label330
	j label329
label330:
	mv s9, zero
	j label151
label170:
	jal getch
	li a1, 57
	mv s7, a0
	slt a2, a1, a0
	slti a0, a0, 48
	or a0, a0, a2
	beq a0, zero, label410
	mv s8, zero
	j label193
label410:
	mv s8, zero
	addiw a0, s7, -48
	li a1, 10
	bgeu a0, a1, label415
label414:
	mv s9, zero
	j label174
label415:
	mv s9, zero
	j label177
label193:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s7, a3, label617
	mv a2, s8
label617:
	beq a1, zero, label485
	mv s7, a0
	mv s8, a2
	j label193
label485:
	mv s7, a0
	mv s8, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label415
	j label414
label177:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	subw a3, zero, s9
	or a1, a1, a2
	mv s7, a3
	bne s8, zero, label611
	mv s7, s9
label611:
	beq a1, zero, label436
	mv s8, a0
	mv s9, zero
	j label190
label436:
	mv s9, a0
	mv s8, zero
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label441
label440:
	mv s10, zero
	j label187
label441:
	mv s10, zero
label182:
	subw a0, zero, s10
	mv a1, a0
	bne s8, zero, label613
	mv a1, s10
	j label613
label190:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s8, a3, label615
	mv a2, s9
label615:
	beq a1, zero, label476
	mv s8, a0
	mv s9, a2
	j label190
label476:
	mv s9, a0
	mv s8, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label441
	j label440
label187:
	jal getch
	sh2add a4, s10, s10
	addiw a1, a0, -48
	slliw a2, a4, 1
	addiw a3, a2, -48
	li a2, 10
	addw s10, s9, a3
	bgeu a1, a2, label182
	mv s9, a0
	j label187
label174:
	jal getch
	sh2add a2, s9, s9
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addiw a3, a4, -48
	addw s9, s7, a3
	bgeu a1, a2, label177
	mv s7, a0
	j label174
label329:
	mv s9, zero
	j label164
label167:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s7, a3, label609
	mv a2, s8
label609:
	beq a1, zero, label403
	mv s7, a0
	mv s8, a2
	j label167
label403:
	mv s7, a0
	mv s8, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label330
	j label329
label164:
	jal getch
	sh2add a4, s9, s9
	addiw a1, a0, -48
	slliw a3, a4, 1
	addiw a2, a3, -48
	li a3, 10
	addw s9, s7, a2
	bgeu a1, a3, label151
	mv s7, a0
	j label164
label613:
	ble s4, zero, label186
	li a0, 1
	sh2add a2, a0, s0
	addiw a0, a0, 1
	sw zero, 0(a2)
	blt s4, a0, label186
	sh2add a2, a0, s0
	addiw a0, a0, 1
	sw zero, 0(a2)
	blt s4, a0, label186
	sh2add a2, a0, s0
	addiw a0, a0, 1
	sw zero, 0(a2)
	blt s4, a0, label186
	sh2add a2, a0, s0
	addiw a0, a0, 1
	sw zero, 0(a2)
	blt s4, a0, label186
	sh2add a2, a0, s0
	addiw a0, a0, 1
	sw zero, 0(a2)
	blt s4, a0, label186
	sh2add a2, a0, s0
	addiw a0, a0, 1
	sw zero, 0(a2)
	blt s4, a0, label186
	sh2add a2, a0, s0
	addiw a0, a0, 1
	sw zero, 0(a2)
	blt s4, a0, label186
	sh2add a2, a0, s0
	addiw a0, a0, 1
	sw zero, 0(a2)
	blt s4, a0, label186
	sh2add a2, a0, s0
	addiw a0, a0, 1
	sw zero, 0(a2)
	blt s4, a0, label186
	sh2add a2, a0, s0
	addiw a0, a0, 1
	sw zero, 0(a2)
	blt s4, a0, label186
label184:
	sh2add a2, a0, s0
	addiw a0, a0, 1
	sw zero, 0(a2)
	blt s4, a0, label186
	j label184
label151:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	subw a2, zero, s9
	or a1, a1, a3
	mv s7, a2
	bne s8, zero, label603
	mv s7, s9
label603:
	beq a1, zero, label340
	mv s8, a0
	mv s9, zero
	j label153
label340:
	mv s9, a0
	mv s8, zero
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label354
label634:
	mv s10, zero
	j label161
label153:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s8, a3, label605
	mv a2, s9
label605:
	beq a1, zero, label349
	mv s8, a0
	mv s9, a2
	j label153
label349:
	mv s9, a0
	mv s8, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label354
	j label634
label354:
	mv s10, zero
label159:
	subw a1, zero, s10
	mv a0, a1
	bne s8, zero, label607
	j label606
label607:
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
	beq s5, zero, label196
	j label143
label161:
	jal getch
	sh2add a2, s10, s10
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addiw a3, a4, -48
	addw s10, s9, a3
	bgeu a1, a2, label159
	mv s9, a0
	j label161
label606:
	mv a0, s10
	j label607
