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
	sd s0, 32(sp)
pcrel86:
	auipc a1, %pcrel_hi(dep)
	addiw s0, a3, 1
	addi a4, a1, %pcrel_lo(pcrel86)
	sd s1, 24(sp)
	sh2add a2, a0, a4
	sd s2, 16(sp)
pcrel87:
	auipc a4, %pcrel_hi(f)
	sd s3, 8(sp)
	sd ra, 0(sp)
	sw a3, 0(a2)
pcrel88:
	auipc a3, %pcrel_hi(to)
	addi a2, a4, %pcrel_lo(pcrel87)
	addi s1, a3, %pcrel_lo(pcrel88)
	li a4, 80
	mv a1, a2
pcrel89:
	auipc a3, %pcrel_hi(next)
	mul a5, a0, a4
	addi s2, a3, %pcrel_lo(pcrel89)
	add a2, a2, a5
	lw a4, 0(a2)
	bne a4, zero, label26
pcrel90:
	auipc a1, %pcrel_hi(head)
	addi a2, a1, %pcrel_lo(pcrel90)
	sh2add a3, a0, a2
	li a0, -1
	lw s3, 0(a3)
	bne s3, a0, label5
	j label7
label26:
	mv a3, zero
	j label2
.p2align 2
label5:
	sh2add a1, s3, s1
	lw a0, 0(a1)
	mv a1, s0
	jal tree
	li a1, -1
	sh2add a0, s3, s2
	lw s3, 0(a0)
	bne s3, a1, label5
label7:
	ld ra, 0(sp)
	ld s3, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	ld s0, 32(sp)
	addi sp, sp, 40
	ret
.p2align 2
label2:
	sh2add t0, a3, a2
	li a5, 80
	lw a4, 0(t0)
	mul t0, a4, a5
	add t1, a1, t0
	sh2add a5, a3, t1
	addiw a3, a3, 1
	lw a4, 0(a5)
	sh2add a5, a3, a2
	sw a4, 0(a5)
	bne a4, zero, label2
pcrel91:
	auipc a1, %pcrel_hi(head)
	addi a2, a1, %pcrel_lo(pcrel91)
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
pcrel728:
	auipc a3, %pcrel_hi(to)
	or a1, a1, a2
	addi s2, a3, %pcrel_lo(pcrel728)
pcrel729:
	auipc a2, %pcrel_hi(next)
	addi s3, a2, %pcrel_lo(pcrel729)
pcrel730:
	auipc a2, %pcrel_hi(head)
	addi s1, a2, %pcrel_lo(pcrel730)
pcrel731:
	auipc a2, %pcrel_hi(f)
	addi a4, a2, %pcrel_lo(pcrel731)
pcrel732:
	auipc a2, %pcrel_hi(dep)
	sd a4, 16(sp)
	addi s0, a2, %pcrel_lo(pcrel732)
	bne a1, zero, label199
	mv s5, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label213
	j label676
label199:
	mv s4, a0
	mv s5, zero
.p2align 2
label93:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s4, a3, label617
	mv a1, s5
.p2align 2
label617:
	bne a2, zero, label208
	mv s5, a1
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label213
	j label676
label208:
	mv s4, a0
	mv s5, a1
	j label93
label213:
	mv s4, a0
	mv s6, zero
.p2align 2
label181:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	mulw a4, s6, a2
	addi a3, a4, -48
	addw s6, s4, a3
	bgeu a1, a2, label99
	mv s4, a0
	j label181
.p2align 2
label676:
	mv s6, zero
label99:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	subw a2, zero, s6
	or a1, a1, a3
	mv s4, a2
	bne s5, zero, label619
	mv s4, s6
label619:
	bne a1, zero, label223
	mv s6, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label237
	mv a0, zero
	mv a1, zero
	mv s5, zero
label699:
	mv s5, a0
	j label623
label223:
	mv s5, a0
	mv s6, zero
.p2align 2
label101:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s5, a3, label621
	mv a1, s6
.p2align 2
label621:
	bne a2, zero, label232
	mv s6, a1
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label237
	mv a0, zero
	mv a1, zero
	mv s5, zero
	bne s6, zero, label623
	j label699
label232:
	mv s5, a0
	mv s6, a1
	j label101
label237:
	mv s5, a0
	mv s7, zero
.p2align 2
label107:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	mulw a4, s7, a2
	addi a3, a4, -48
	addw s7, s5, a3
	bltu a1, a2, label246
	mv a0, s7
	subw a1, zero, s7
	mv s5, a1
	bne s6, zero, label623
	j label699
label246:
	mv s5, a0
	j label107
label623:
	li a0, 1061109567
	sw a0, 0(s0)
	bgt s4, zero, label253
	li a1, 1
	bne s4, a1, label264
	j label140
label253:
	li a0, 1
	j label112
label140:
	li a0, 1
	li a1, 1
	jal tree
	beq s5, zero, label141
	mv s1, s5
	j label142
label141:
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
.p2align 2
label142:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	or a1, a1, a3
	bne a1, zero, label356
	mv s3, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label361
.p2align 2
label690:
	mv s4, zero
	j label150
.p2align 2
label356:
	mv s4, a0
	mv s2, zero
	j label178
.p2align 2
label361:
	mv s2, a0
	mv s4, zero
.p2align 2
label147:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	mulw a4, s4, a2
	addi a3, a4, -48
	addw s4, s2, a3
	bgeu a1, a2, label150
	mv s2, a0
	j label147
.p2align 2
label150:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	subw a3, zero, s4
	or a1, a1, a2
	mv s2, a3
	bne s3, zero, label633
	mv s2, s4
.p2align 2
label633:
	bne a1, zero, label380
	mv s3, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label394
	mv a0, zero
	mv a2, zero
	mv a1, zero
	mv a0, s0
	sh2add a2, s2, s0
	lw a3, 0(a2)
	lw a4, 0(s0)
	mv a0, s2
	slt a2, a3, a4
	bne a2, zero, label639
	mv a0, zero
	mv a3, zero
	mv a3, s2
	li a1, 19
	mv a2, s2
	sh2add a3, s2, s0
	mv a5, s0
	lw a4, 0(a3)
	lw a3, 0(s0)
	bgt a4, a3, label166
	beq zero, s2, label171
	j label722
.p2align 2
label380:
	mv s4, a0
	mv s3, zero
.p2align 2
label152:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s4, a3, label635
	mv a2, s3
.p2align 2
label635:
	bne a1, zero, label389
	mv s3, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label394
	mv a0, zero
	mv a2, zero
	mv a1, zero
	bne s3, zero, label637
	mv a0, s0
	sh2add a2, s2, s0
	lw a3, 0(a2)
	lw a4, 0(s0)
	mv a0, s2
	slt a2, a3, a4
	bne a2, zero, label639
	mv a0, zero
	mv a3, zero
	mv a3, s2
	li a1, 19
	mv a2, s2
	sh2add a3, s2, s0
	mv a5, s0
	lw a4, 0(a3)
	lw a3, 0(s0)
	bgt a4, a3, label166
	beq zero, s2, label171
	j label722
.p2align 2
label389:
	mv s4, a0
	mv s3, a2
	j label152
.p2align 2
label394:
	mv s4, a0
	mv s5, zero
.p2align 2
label158:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	mulw a4, s5, a2
	addi a3, a4, -48
	addw s5, s4, a3
	bltu a1, a2, label403
	mv a0, s5
	subw a2, zero, s5
	mv a1, a2
	bne s3, zero, label637
	mv a1, s5
	sh2add a0, s5, s0
	sh2add a2, s2, s0
	lw a3, 0(a2)
	lw a4, 0(a0)
	mv a0, s2
	slt a2, a3, a4
	bne a2, zero, label639
	mv a0, s5
	mv a3, s5
	mv a3, s2
	li a1, 19
	mv a2, s2
	sh2add a3, s2, s0
	sh2add a5, s5, s0
	lw a4, 0(a3)
	lw a3, 0(a5)
	bgt a4, a3, label166
	beq s5, s2, label171
	j label722
.p2align 2
label403:
	mv s4, a0
	j label158
.p2align 2
label171:
	mv a0, a2
	jal putint
	li a0, 10
	jal putch
	addiw s1, s1, -1
	bne s1, zero, label142
	j label141
.p2align 2
label178:
	jal getch
	li s3, 1
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	li a2, 45
	or a1, a1, a3
	beq s4, a2, label661
	mv s3, s2
.p2align 2
label661:
	bne a1, zero, label521
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label361
	j label690
.p2align 2
label521:
	mv s4, a0
	mv s2, s3
	j label178
.p2align 2
label722:
	li a1, 19
	mv a5, a2
	mv a2, a0
	j label173
.p2align 2
label637:
	sh2add a0, a1, s0
	sh2add a2, s2, s0
	lw a3, 0(a2)
	lw a4, 0(a0)
	mv a0, s2
	slt a2, a3, a4
	bne a2, zero, label639
	mv a0, a1
.p2align 2
label639:
	mv a3, a1
	bne a2, zero, label641
	mv a3, s2
.p2align 2
label641:
	li a1, 19
	mv a2, a3
	sh2add a3, a3, s0
	sh2add a5, a0, s0
	lw a4, 0(a3)
	lw a3, 0(a5)
	bgt a4, a3, label166
	beq a0, a2, label171
	j label722
.p2align 2
label166:
	li t0, 80
	ld a4, 16(sp)
	mul a5, a2, t0
	add t0, a4, a5
	sh2add a5, a1, t0
	lw a4, 0(a5)
	bne a4, zero, label167
	mv a5, zero
	mv a3, a4
	mv a3, a2
	addiw a1, a1, -1
	sh2add a3, a2, s0
	sh2add a5, a0, s0
	lw a4, 0(a3)
	lw a3, 0(a5)
	bgt a4, a3, label166
	beq a0, a2, label171
	j label722
.p2align 2
label173:
	li a0, 80
	ld a4, 16(sp)
	mul a3, a5, a0
	add t0, a4, a3
	sh2add t1, a1, t0
	mul t0, a2, a0
	add a4, a4, t0
	lw a3, 0(t1)
	sh2add t1, a1, a4
	lw t0, 0(t1)
	xor a4, a3, t0
	sltu t1, zero, a4
	bne t1, zero, label645
	mv a3, a5
.p2align 2
label645:
	mul a5, a3, a0
	ld a4, 16(sp)
	addiw t3, a1, -1
	add t2, a4, a5
	mv a5, t0
	sh2add a4, t3, t2
	lw t2, 0(a4)
	bne t1, zero, label647
	mv a5, a2
.p2align 2
label647:
	mul a2, a5, a0
	ld a4, 16(sp)
	add t1, a4, a2
	sh2add t0, t3, t1
	lw a2, 0(t0)
	mv t0, t2
	xor a4, t2, a2
	sltu t1, zero, a4
	bne t1, zero, label649
	mv t0, a3
.p2align 2
label649:
	mul a3, t0, a0
	ld a4, 16(sp)
	addiw t2, a1, -2
	add t3, a4, a3
	mv a3, a2
	sh2add a4, t2, t3
	lw t3, 0(a4)
	bne t1, zero, label651
	mv a3, a5
.p2align 2
label651:
	mul a2, a3, a0
	ld a4, 16(sp)
	add a5, a4, a2
	sh2add a2, t2, a5
	lw t1, 0(a2)
	mv a2, t3
	xor a4, t3, t1
	sltu t2, zero, a4
	bne t2, zero, label653
	mv a2, t0
.p2align 2
label653:
	mul a5, a2, a0
	ld a4, 16(sp)
	addiw t3, a1, -3
	add t0, a4, a5
	sh2add a4, t3, t0
	mv t0, t1
	lw a5, 0(a4)
	bne t2, zero, label655
	mv t0, a3
.p2align 2
label655:
	mul a0, t0, a0
	ld a4, 16(sp)
	add a3, a4, a0
	sh2add t1, t3, a3
	lw a0, 0(t1)
	xor a4, a5, a0
	sltu a3, zero, a4
	bne a3, zero, label657
	mv a0, t0
.p2align 2
label657:
	bne a3, zero, label659
	mv a5, a2
.p2align 2
label659:
	addiw a1, a1, -4
	blt a1, zero, label508
	mv a2, a0
	j label173
.p2align 2
label167:
	sh2add a5, a4, s0
	lw t0, 0(a5)
	slt a3, t0, a3
	xori a5, a3, 1
	mv a3, a4
	bne a5, zero, label643
	mv a3, a2
.p2align 2
label643:
	addiw a1, a1, -1
	mv a2, a3
	sh2add a3, a3, s0
	sh2add a5, a0, s0
	lw a4, 0(a3)
	lw a3, 0(a5)
	bgt a4, a3, label166
	beq a0, a2, label171
	j label722
.p2align 2
label112:
	sh2add a1, a0, s1
	li a2, -1
	addiw a0, a0, 1
	sw a2, 0(a1)
	bge s4, a0, label112
	li a1, 1
	beq s4, a1, label140
label264:
	mv s6, zero
	li s7, 1
.p2align 2
label115:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label271
	mv s9, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label276
.p2align 2
label684:
	mv s10, zero
	j label124
.p2align 2
label271:
	mv s10, a0
	mv s8, zero
	j label137
.p2align 2
label276:
	mv s8, a0
	mv s10, zero
.p2align 2
label121:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	mulw a4, s10, a2
	addi a3, a4, -48
	addw s10, s8, a3
	bgeu a1, a2, label124
	mv s8, a0
	j label121
.p2align 2
label124:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	subw a2, zero, s10
	or a1, a1, a3
	mv s8, a2
	bne s9, zero, label625
	mv s8, s10
.p2align 2
label625:
	bne a1, zero, label295
	mv s9, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label300
	mv a0, zero
	mv a2, zero
	mv a1, zero
.p2align 2
label701:
	mv a1, a0
	j label627
.p2align 2
label295:
	mv s10, a0
	mv s9, zero
	j label134
.p2align 2
label300:
	mv s10, a0
	mv s11, zero
	j label131
.p2align 2
label627:
	sh2add a2, s6, s2
	li a0, 80
	sh2add a3, s6, s3
	addiw s7, s7, 1
	sw a1, 0(a2)
	ld a4, 16(sp)
	mul a1, a1, a0
	add a0, a4, a1
	sh2add a1, s8, s1
	lw a2, 0(a1)
	sw a2, 0(a3)
	sw s6, 0(a1)
	addiw s6, s6, 1
	sw s8, 0(a0)
	bne s4, s7, label115
	j label140
.p2align 2
label131:
	jal getch
	li a2, 10
	addiw a1, a0, -48
	mulw a3, s11, a2
	addi a4, a3, -48
	addw s11, s10, a4
	bltu a1, a2, label327
	mv a0, s11
	subw a2, zero, s11
	mv a1, a2
	bne s9, zero, label627
	j label701
.p2align 2
label327:
	mv s10, a0
	j label131
.p2align 2
label134:
	jal getch
	li a3, 45
	li a2, 57
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s10, a3, label629
	mv a2, s9
.p2align 2
label629:
	bne a1, zero, label336
	mv s9, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label300
	mv a0, zero
	mv a2, zero
	mv a1, zero
	bne s9, zero, label627
	j label701
.p2align 2
label336:
	mv s10, a0
	mv s9, a2
	j label134
.p2align 2
label137:
	jal getch
	li a2, 57
	li s9, 1
	slti a1, a0, 48
	slt a3, a2, a0
	li a2, 45
	or a1, a1, a3
	beq s10, a2, label631
	mv s9, s8
.p2align 2
label631:
	bne a1, zero, label345
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label276
	j label684
.p2align 2
label345:
	mv s10, a0
	mv s8, s9
	j label137
.p2align 2
label508:
	li a1, 80
	ld a4, 16(sp)
	mul a0, a5, a1
	add a1, a4, a0
	lw a2, 0(a1)
	j label171
