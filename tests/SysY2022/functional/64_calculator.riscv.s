.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
ints:
	.zero	40000
.align 4
chas:
	.zero	40000
.align 4
get:
	.zero	40000
.align 4
get2:
	.zero	40000
.text
.globl main
main:
	addi sp, sp, -48
	sd s3, 40(sp)
	sd s2, 32(sp)
	sd s1, 24(sp)
	sd s0, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	jal getch
	xori a2, a0, 10
	xori a3, a0, 13
	sltu a1, zero, a3
	sltu a3, zero, a2
pcrel776:
	auipc a2, %pcrel_hi(get)
	and a1, a1, a3
	addi s3, a2, %pcrel_lo(pcrel776)
pcrel777:
	auipc a2, %pcrel_hi(chas)
	addi s2, a2, %pcrel_lo(pcrel777)
pcrel778:
	auipc a2, %pcrel_hi(ints)
	addi s1, a2, %pcrel_lo(pcrel778)
pcrel779:
	auipc a2, %pcrel_hi(get2)
	addi s0, a2, %pcrel_lo(pcrel779)
	beq a1, zero, label131
	mv s4, zero
	j label2
label131:
	mv a0, zero
	li a4, 1
	mv a3, zero
	mv a1, zero
	sh2add a1, a4, s0
	li a0, 64
	sw a0, 0(a1)
	lw a1, 4(s0)
	beq a1, a0, label82
label684:
	li a0, 1
	mv a1, zero
	j label83
label80:
	sh2add a1, a4, s0
	li a0, 64
	sw a0, 0(a1)
	lw a1, 4(s0)
	beq a1, a0, label82
	j label684
label83:
	sh2add a4, a0, s0
	lw a3, 0(a4)
	xori t3, a3, 37
	xori a4, a3, 45
	xori a2, a3, 43
	sltiu t0, a4, 1
	sltiu t1, a2, 1
	xori a4, a3, 42
	or a2, t1, t0
	sltiu a5, a4, 1
	xori a4, a3, 47
	or a2, a2, a5
	sltiu t2, a4, 1
	sltiu a4, t3, 1
	or a2, a2, t2
	xori t2, a3, 94
	or a2, a2, a4
	sltiu a4, t2, 1
	or a2, a2, a4
	beq a2, zero, label102
	sh2add t2, a1, s1
	subw t1, zero, t1
	lw a4, 0(t2)
	lw a2, -4(t2)
	addw t3, a4, a2
	and t2, t3, t1
	subw t3, a2, a4
	mv t1, t3
	bne t0, zero, label594
	mv t1, t2
	mulw t2, a4, a2
	mv t0, t2
	bne a5, zero, label596
	mv t0, t1
	li a5, 47
	bne a3, a5, label394
	divw a5, a2, a4
	li t0, 37
	bne a3, t0, label91
	remw a5, a2, a4
	li t0, 94
	bne a3, t0, label402
	beq a4, zero, label409
label696:
	mv a3, a4
	li a4, 1
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label93
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label93
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label93
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label93
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label93
label732:
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label93
	j label747
label102:
	li a2, 32
	beq a3, a2, label109
	addiw a1, a1, 1
	addiw a4, a3, -48
	li t0, 32
	sh2add a2, a1, s1
	sw a4, 0(a2)
	addiw a2, a0, 1
	sh2add a5, a2, s0
	lw a3, 0(a5)
	beq a3, t0, label438
	j label653
label109:
	addiw a0, a0, 1
	sh2add a5, a0, s0
	li a3, 64
	lw a2, 0(a5)
	beq a2, a3, label82
	j label83
label594:
	mulw t2, a4, a2
	mv t0, t2
	bne a5, zero, label596
	mv t0, t1
label596:
	li a5, 47
	bne a3, a5, label394
	divw a5, a2, a4
	li t0, 37
	bne a3, t0, label91
	remw a5, a2, a4
	li t0, 94
	bne a3, t0, label402
	beq a4, zero, label409
	j label696
label394:
	mv a5, t0
	li t0, 37
	bne a3, t0, label91
	remw a5, a2, a4
	li t0, 94
	bne a3, t0, label402
	beq a4, zero, label409
	mv a3, a4
	li a4, 1
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label93
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label93
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label93
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label93
label715:
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label93
	j label732
label747:
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label93
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label93
label96:
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label93
	j label96
label409:
	li a4, 1
	addiw a1, a1, -1
	sh2add a2, a1, s1
	sw a4, 0(a2)
	addiw a0, a0, 1
	sh2add a5, a0, s0
	li a3, 64
	lw a2, 0(a5)
	beq a2, a3, label82
	j label83
label91:
	li t0, 94
	bne a3, t0, label402
	beq a4, zero, label409
	mv a3, a4
	li a4, 1
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label93
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label93
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label93
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label93
	j label715
label402:
	mv a4, a5
label93:
	addiw a1, a1, -1
	sh2add a2, a1, s1
	sw a4, 0(a2)
	addiw a0, a0, 1
	sh2add a5, a0, s0
	li a3, 64
	lw a2, 0(a5)
	beq a2, a3, label82
	j label83
label2:
	sh2add a1, s4, s3
	sw a0, 0(a1)
	jal getch
	addiw s4, s4, 1
	xori a3, a0, 10
	xori a2, a0, 13
	sltu a1, zero, a2
	sltu a2, zero, a3
	and a1, a1, a2
	beq a1, zero, label141
	j label2
label141:
	mv a0, s4
	li a4, 1
	mv a3, zero
	mv a1, zero
	ble s4, zero, label79
	mv t0, s3
	lw a2, 0(s3)
	li t0, 10
	addiw a5, a2, -48
	bgeu a5, t0, label12
	sh2add a5, a4, s0
	li a1, 1
	addiw a4, a4, 1
	sw a2, 0(a5)
	ble s4, a1, label79
	sh2add t0, a1, s3
	lw a2, 0(t0)
	li t0, 10
	addiw a5, a2, -48
	bgeu a5, t0, label12
	sh2add a5, a4, s0
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a2, 0(a5)
	ble s4, a1, label79
	sh2add t0, a1, s3
	lw a2, 0(t0)
	li t0, 10
	addiw a5, a2, -48
	bgeu a5, t0, label12
	j label718
label79:
	ble a3, zero, label80
	addiw a1, a3, -4
	ble a1, zero, label114
	j label117
label12:
	li a5, 40
	bne a2, a5, label13
	addiw a3, a3, 1
	li t0, 40
	sh2add a5, a3, s2
	sw t0, 0(a5)
	li a5, 94
	bne a2, a5, label161
	addiw a5, a3, 1
	li t0, 94
	sh2add a3, a5, s2
	sw t0, 0(a3)
	li a3, 41
	bne a2, a3, label23
	sh2add t1, a5, s2
	addiw a3, a5, -1
	lw t0, 0(t1)
	mv a5, t0
	li t0, 40
	beq a5, t0, label173
	sh2add t0, a4, s0
	li t1, 32
	addiw a4, a4, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	sh2add t0, a3, s2
	addiw a3, a3, -1
	lw a5, 0(t0)
	li t0, 40
	beq a5, t0, label173
	sh2add t0, a4, s0
	addiw a4, a4, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	sh2add t0, a3, s2
	addiw a3, a3, -1
	lw a5, 0(t0)
	li t0, 40
	beq a5, t0, label173
	j label752
label65:
	addiw a3, a3, 1
	li a5, 37
	sh2add a4, a3, s2
	sw a5, 0(a4)
	mv a5, a2
	sh2add a2, a2, s0
	li t0, 32
	addiw a4, a5, 1
	addiw a1, a1, 1
	sw t0, 0(a2)
	ble a0, a1, label79
	sh2add t0, a1, s3
	lw a2, 0(t0)
	li t0, 10
	addiw a5, a2, -48
	bgeu a5, t0, label12
	sh2add a5, a4, s0
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a2, 0(a5)
	ble a0, a1, label79
	sh2add t0, a1, s3
	lw a2, 0(t0)
	li t0, 10
	addiw a5, a2, -48
	bgeu a5, t0, label12
	sh2add a5, a4, s0
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a2, 0(a5)
	ble a0, a1, label79
	sh2add t0, a1, s3
	lw a2, 0(t0)
	li t0, 10
	addiw a5, a2, -48
	bgeu a5, t0, label12
	sh2add a5, a4, s0
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a2, 0(a5)
	ble a0, a1, label79
	sh2add t0, a1, s3
	lw a2, 0(t0)
	li t0, 10
	addiw a5, a2, -48
	bgeu a5, t0, label12
	j label718
label752:
	sh2add t0, a4, s0
	li t1, 32
	addiw a4, a4, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	sh2add t0, a3, s2
	addiw a3, a3, -1
	lw a5, 0(t0)
	j label18
label605:
	mv a3, a4
	mv a4, a5
	j label26
label18:
	li t0, 40
	beq a5, t0, label173
	j label752
label173:
	mv a5, a3
	li t0, 43
	bne a2, t0, label33
	j label605
label26:
	sh2add t0, a4, s2
	lw a5, 0(t0)
	xori t1, a5, 45
	xori t2, a5, 43
	sltiu t0, t2, 1
	sltiu t2, t1, 1
	xori t1, a5, 42
	or t0, t0, t2
	sltiu t2, t1, 1
	xori t1, a5, 47
	or t0, t0, t2
	sltiu t3, t1, 1
	xori t2, a5, 37
	or t0, t0, t3
	sltiu t1, t2, 1
	xori t2, a5, 94
	or t0, t0, t1
	sltiu t1, t2, 1
	or t0, t0, t1
	beq t0, zero, label30
	sh2add t0, a3, s0
	li t1, 32
	addiw a4, a4, -1
	addiw a3, a3, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	bne a4, zero, label26
	addiw a5, a4, 1
	li t0, 43
	sh2add a4, a5, s2
	sw t0, 0(a4)
	mv a4, a3
	li t0, 45
	bne a2, t0, label218
	j label608
label30:
	addiw a5, a4, 1
	li t0, 43
	sh2add a4, a5, s2
	sw t0, 0(a4)
	mv a4, a3
	j label33
label13:
	li a5, 94
	bne a2, a5, label161
	addiw a5, a3, 1
	li t0, 94
	sh2add a3, a5, s2
	sw t0, 0(a3)
	li a3, 41
	bne a2, a3, label23
	sh2add t1, a5, s2
	addiw a3, a5, -1
	lw t0, 0(t1)
	mv a5, t0
	li t0, 40
	beq a5, t0, label173
	sh2add t0, a4, s0
	li t1, 32
	addiw a4, a4, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	sh2add t0, a3, s2
	addiw a3, a3, -1
	lw a5, 0(t0)
	li t0, 40
	beq a5, t0, label173
	sh2add t0, a4, s0
	addiw a4, a4, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	sh2add t0, a3, s2
	addiw a3, a3, -1
	lw a5, 0(t0)
	li t0, 40
	beq a5, t0, label173
	j label752
label161:
	mv a5, a3
	li a3, 41
	bne a2, a3, label23
	sh2add t1, a5, s2
	addiw a3, a5, -1
	lw t0, 0(t1)
	mv a5, t0
	li t0, 40
	beq a5, t0, label173
	sh2add t0, a4, s0
	li t1, 32
	addiw a4, a4, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	sh2add t0, a3, s2
	addiw a3, a3, -1
	lw a5, 0(t0)
	li t0, 40
	beq a5, t0, label173
	sh2add t0, a4, s0
	addiw a4, a4, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	sh2add t0, a3, s2
	addiw a3, a3, -1
	lw a5, 0(t0)
	li t0, 40
	beq a5, t0, label173
	sh2add t0, a4, s0
	addiw a4, a4, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	sh2add t0, a3, s2
	addiw a3, a3, -1
	lw a5, 0(t0)
	li t0, 40
	beq a5, t0, label173
	j label752
label23:
	li t0, 43
	bne a2, t0, label33
	j label605
label46:
	li a5, 47
	bne a2, a5, label255
	j label49
label255:
	mv a5, a3
	mv a3, a4
	li a4, 37
	bne a2, a4, label59
label612:
	mv a2, a5
	j label62
label49:
	sh2add t0, a4, s2
	lw a5, 0(t0)
	xori t2, a5, 47
	xori t1, a5, 42
	sltiu t0, t1, 1
	sltiu t1, t2, 1
	xori t2, a5, 37
	or t0, t0, t1
	sltiu t1, t2, 1
	xori t2, a5, 94
	or t0, t0, t1
	sltiu t1, t2, 1
	or t0, t0, t1
	beq t0, zero, label53
	sh2add t0, a3, s0
	li t1, 32
	addiw a4, a4, -1
	addiw a3, a3, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	bne a4, zero, label49
	addiw t0, a4, 1
	li t1, 47
	mv a5, a3
	sh2add a4, t0, s2
	mv a3, t0
	sw t1, 0(a4)
	li a4, 37
	bne a2, a4, label59
	j label612
label53:
	addiw t0, a4, 1
	li t1, 47
	mv a5, a3
	sh2add a4, t0, s2
	mv a3, t0
	sw t1, 0(a4)
	li a4, 37
	bne a2, a4, label59
	j label612
label62:
	sh2add a5, a3, s2
	lw a4, 0(a5)
	xori t2, a4, 47
	xori t0, a4, 42
	sltiu t1, t2, 1
	sltiu a5, t0, 1
	xori t0, a4, 37
	or a5, a5, t1
	sltiu t1, t0, 1
	xori t0, a4, 94
	or a5, a5, t1
	sltiu t1, t0, 1
	or a5, a5, t1
	beq a5, zero, label65
	sh2add t0, a2, s0
	li a5, 32
	addiw a3, a3, -1
	addiw a2, a2, 2
	sw a5, 0(t0)
	sw a4, 4(t0)
	bne a3, zero, label62
	j label65
label718:
	sh2add a5, a4, s0
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a2, 0(a5)
	ble a0, a1, label79
	sh2add t0, a1, s3
	lw a2, 0(t0)
	li t0, 10
	addiw a5, a2, -48
	bgeu a5, t0, label12
	j label718
label59:
	sh2add a2, a5, s0
	li t0, 32
	addiw a4, a5, 1
	addiw a1, a1, 1
	sw t0, 0(a2)
	ble a0, a1, label79
	sh2add t0, a1, s3
	lw a2, 0(t0)
	li t0, 10
	addiw a5, a2, -48
	bgeu a5, t0, label12
	sh2add a5, a4, s0
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a2, 0(a5)
	ble a0, a1, label79
	sh2add t0, a1, s3
	lw a2, 0(t0)
	li t0, 10
	addiw a5, a2, -48
	bgeu a5, t0, label12
	sh2add a5, a4, s0
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a2, 0(a5)
	ble a0, a1, label79
	sh2add t0, a1, s3
	lw a2, 0(t0)
	li t0, 10
	addiw a5, a2, -48
	bgeu a5, t0, label12
	sh2add a5, a4, s0
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a2, 0(a5)
	ble a0, a1, label79
	sh2add t0, a1, s3
	lw a2, 0(t0)
	li t0, 10
	addiw a5, a2, -48
	bgeu a5, t0, label12
	j label718
label608:
	mv a3, a4
	mv a4, a5
	j label36
label33:
	li t0, 45
	bne a2, t0, label218
	j label608
label218:
	mv a3, a4
	mv a4, a5
	li a5, 42
	bne a2, a5, label46
	j label69
label36:
	sh2add t0, a4, s2
	lw a5, 0(t0)
	xori t3, a5, 47
	xori t1, a5, 45
	xori t2, a5, 43
	sltiu t0, t2, 1
	sltiu t2, t1, 1
	xori t1, a5, 42
	or t0, t0, t2
	sltiu t2, t1, 1
	sltiu t1, t3, 1
	or t0, t0, t2
	xori t2, a5, 37
	or t0, t0, t1
	sltiu t1, t2, 1
	xori t2, a5, 94
	or t0, t0, t1
	sltiu t1, t2, 1
	or t0, t0, t1
	beq t0, zero, label40
	sh2add t0, a3, s0
	li t1, 32
	addiw a4, a4, -1
	addiw a3, a3, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	bne a4, zero, label36
	addiw a4, a4, 1
	li t0, 45
	sh2add a5, a4, s2
	sw t0, 0(a5)
	li a5, 42
	bne a2, a5, label46
	j label69
label40:
	addiw a4, a4, 1
	li t0, 45
	sh2add a5, a4, s2
	sw t0, 0(a5)
	li a5, 42
	bne a2, a5, label46
label69:
	sh2add t0, a4, s2
	lw a5, 0(t0)
	xori t2, a5, 47
	xori t1, a5, 42
	sltiu t0, t1, 1
	sltiu t1, t2, 1
	xori t2, a5, 37
	or t0, t0, t1
	sltiu t3, t2, 1
	xori t1, a5, 94
	or t0, t0, t3
	sltiu t2, t1, 1
	or t0, t0, t2
	beq t0, zero, label72
	sh2add t0, a3, s0
	li t1, 32
	addiw a4, a4, -1
	addiw a3, a3, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	bne a4, zero, label69
	addiw a4, a4, 1
	li t0, 42
	sh2add a5, a4, s2
	sw t0, 0(a5)
	li a5, 47
	bne a2, a5, label255
	j label49
label653:
	li a3, 1
	j label104
label438:
	li a3, 1
	addw a0, a0, a3
	sh2add a5, a0, s0
	li a3, 64
	lw a2, 0(a5)
	beq a2, a3, label82
	j label83
label104:
	addw t0, a0, a3
	sh2add a4, a4, a4
	sh2add t1, t0, s0
	slliw t0, a4, 1
	lw a5, 0(t1)
	addiw t1, t0, -48
	addw a4, a5, t1
	addw t1, a2, a3
	sh2add a5, a1, s1
	addiw a3, a3, 1
	sh2add t0, t1, s0
	sw a4, 0(a5)
	lw a5, 0(t0)
	li t0, 32
	beq a5, t0, label107
	j label104
label72:
	addiw a4, a4, 1
	li t0, 42
	sh2add a5, a4, s2
	sw t0, 0(a5)
	li a5, 47
	bne a2, a5, label255
	j label49
label117:
	sh2add a2, a3, s2
	sh2add a0, a4, s0
	li a3, 32
	lw a5, 0(a2)
	addiw a4, a4, 8
	sw a3, 0(a0)
	sw a5, 4(a0)
	lw a5, -4(a2)
	sw a3, 8(a0)
	sw a5, 12(a0)
	lw a5, -8(a2)
	sw a3, 16(a0)
	sw a5, 20(a0)
	lw a2, -12(a2)
	sw a3, 24(a0)
	mv a3, a1
	sw a2, 28(a0)
	addiw a1, a1, -4
	ble a1, zero, label114
	j label117
label114:
	sh2add a2, a3, s2
	sh2add a1, a4, s0
	addiw a3, a3, -1
	lw a0, 0(a2)
	addiw a4, a4, 2
	li a2, 32
	sw a2, 0(a1)
	sw a0, 4(a1)
	ble a3, zero, label80
	j label114
label82:
	lw a0, 4(s1)
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	ld s4, 8(sp)
	ld s0, 16(sp)
	ld s1, 24(sp)
	ld s2, 32(sp)
	ld s3, 40(sp)
	addi sp, sp, 48
	ret
label107:
	addw a0, a0, a3
	sh2add a5, a0, s0
	li a3, 64
	lw a2, 0(a5)
	beq a2, a3, label82
	j label83
