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
pcrel770:
	auipc a2, %pcrel_hi(get)
	and a1, a1, a3
	addi s3, a2, %pcrel_lo(pcrel770)
pcrel771:
	auipc a2, %pcrel_hi(chas)
	addi s2, a2, %pcrel_lo(pcrel771)
pcrel772:
	auipc a2, %pcrel_hi(ints)
	addi s1, a2, %pcrel_lo(pcrel772)
pcrel773:
	auipc a2, %pcrel_hi(get2)
	addi s0, a2, %pcrel_lo(pcrel773)
	beq a1, zero, label130
	mv s4, zero
	j label114
label130:
	mv a0, zero
	mv a3, zero
	li a4, 1
	mv a1, zero
label76:
	ble a3, zero, label84
	addiw a0, a3, -4
	ble a0, zero, label81
label80:
	sh2add a2, a3, s2
	sh2add a1, a4, s0
	li a3, 32
	lw a5, 0(a2)
	addiw a4, a4, 8
	sw a3, 0(a1)
	sw a5, 4(a1)
	lw a5, -4(a2)
	sw a3, 8(a1)
	sw a5, 12(a1)
	lw a5, -8(a2)
	sw a3, 16(a1)
	sw a5, 20(a1)
	lw a2, -12(a2)
	sw a3, 24(a1)
	mv a3, a0
	sw a2, 28(a1)
	addiw a0, a0, -4
	ble a0, zero, label81
	j label80
label727:
	sh2add a5, a4, s0
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a2, 0(a5)
	ble a0, a1, label76
	j label708
label10:
	li a5, 40
	bne a2, a5, label12
	addiw a3, a3, 1
	li t0, 40
	sh2add a5, a3, s2
	sw t0, 0(a5)
	li a5, 94
	bne a2, a5, label157
	addiw a5, a3, 1
	li t0, 94
	sh2add a3, a5, s2
	sw t0, 0(a3)
	li a3, 41
	bne a2, a3, label22
	sh2add t1, a5, s2
	addiw a3, a5, -1
	lw t0, 0(t1)
	mv a5, t0
	li t0, 40
	beq a5, t0, label169
	sh2add t0, a4, s0
	li t1, 32
	addiw a4, a4, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	sh2add t0, a3, s2
	addiw a3, a3, -1
	lw a5, 0(t0)
	li t0, 40
	beq a5, t0, label169
	j label729
label114:
	sh2add a1, s4, s3
	sw a0, 0(a1)
	jal getch
	addiw s4, s4, 1
	xori a2, a0, 10
	xori a3, a0, 13
	sltu a1, zero, a3
	sltu a3, zero, a2
	and a1, a1, a3
	beq a1, zero, label496
	j label114
label496:
	mv a0, s4
	mv a3, zero
	li a4, 1
	mv a1, zero
	ble s4, zero, label76
	mv t0, s3
	lw a2, 0(s3)
	li t0, 10
	addiw a5, a2, -48
	bgeu a5, t0, label10
	sh2add a5, a4, s0
	li a1, 1
	addiw a4, a4, 1
	sw a2, 0(a5)
	ble s4, a1, label76
	sh2add t0, a1, s3
	lw a2, 0(t0)
	li t0, 10
	addiw a5, a2, -48
	bgeu a5, t0, label10
	sh2add a5, a4, s0
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a2, 0(a5)
	ble s4, a1, label76
	sh2add t0, a1, s3
	lw a2, 0(t0)
	li t0, 10
	addiw a5, a2, -48
	bgeu a5, t0, label10
	j label727
label729:
	sh2add t0, a4, s0
	li t1, 32
	addiw a4, a4, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	sh2add t0, a3, s2
	addiw a3, a3, -1
	lw a5, 0(t0)
	j label17
label12:
	li a5, 94
	bne a2, a5, label157
	addiw a5, a3, 1
	li t0, 94
	sh2add a3, a5, s2
	sw t0, 0(a3)
	li a3, 41
	bne a2, a3, label22
	sh2add t1, a5, s2
	addiw a3, a5, -1
	lw t0, 0(t1)
	mv a5, t0
	li t0, 40
	beq a5, t0, label169
	sh2add t0, a4, s0
	li t1, 32
	addiw a4, a4, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	sh2add t0, a3, s2
	addiw a3, a3, -1
	lw a5, 0(t0)
	li t0, 40
	beq a5, t0, label169
	sh2add t0, a4, s0
	addiw a4, a4, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	sh2add t0, a3, s2
	addiw a3, a3, -1
	lw a5, 0(t0)
	li t0, 40
	beq a5, t0, label169
	j label729
label157:
	mv a5, a3
	li a3, 41
	bne a2, a3, label22
	sh2add t1, a5, s2
	addiw a3, a5, -1
	lw t0, 0(t1)
	mv a5, t0
	li t0, 40
	beq a5, t0, label169
	sh2add t0, a4, s0
	li t1, 32
	addiw a4, a4, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	sh2add t0, a3, s2
	addiw a3, a3, -1
	lw a5, 0(t0)
	li t0, 40
	beq a5, t0, label169
	sh2add t0, a4, s0
	addiw a4, a4, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	sh2add t0, a3, s2
	addiw a3, a3, -1
	lw a5, 0(t0)
	li t0, 40
	beq a5, t0, label169
	j label729
label608:
	mv a3, a4
	mv a4, a5
	j label25
label17:
	li t0, 40
	beq a5, t0, label169
	j label729
label169:
	mv a5, a3
	li t0, 43
	bne a2, t0, label32
	j label608
label22:
	li t0, 43
	bne a2, t0, label32
	j label608
label611:
	mv a3, a4
	mv a4, a5
	j label35
label25:
	sh2add t0, a4, s2
	lw a5, 0(t0)
	xori t3, a5, 37
	xori t1, a5, 45
	xori t2, a5, 43
	sltiu t0, t2, 1
	sltiu t2, t1, 1
	xori t1, a5, 42
	or t0, t0, t2
	sltiu t2, t1, 1
	xori t1, a5, 47
	or t0, t0, t2
	sltiu t2, t1, 1
	sltiu t1, t3, 1
	or t0, t0, t2
	xori t2, a5, 94
	or t0, t0, t1
	sltiu t1, t2, 1
	or t0, t0, t1
	beq t0, zero, label29
	sh2add t0, a3, s0
	li t1, 32
	addiw a4, a4, -1
	addiw a3, a3, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	bne a4, zero, label25
	addiw a5, a4, 1
	li t0, 43
	sh2add a4, a5, s2
	sw t0, 0(a4)
	mv a4, a3
	li t0, 45
	bne a2, t0, label42
	j label611
label29:
	addiw a5, a4, 1
	li t0, 43
	sh2add a4, a5, s2
	sw t0, 0(a4)
	mv a4, a3
label32:
	li t0, 45
	bne a2, t0, label42
	j label611
label613:
	mv a3, a4
	mv a4, a5
	j label45
label35:
	sh2add t0, a4, s2
	lw a5, 0(t0)
	xori t3, a5, 47
	xori t2, a5, 45
	xori t1, a5, 43
	sltiu t0, t1, 1
	sltiu t1, t2, 1
	xori t2, a5, 42
	or t0, t0, t1
	sltiu t1, t2, 1
	sltiu t2, t3, 1
	or t0, t0, t1
	xori t1, a5, 37
	or t0, t0, t2
	sltiu t3, t1, 1
	xori t2, a5, 94
	or t0, t0, t3
	sltiu t1, t2, 1
	or t0, t0, t1
	beq t0, zero, label39
	sh2add t0, a3, s0
	li t1, 32
	addiw a4, a4, -1
	addiw a3, a3, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	bne a4, zero, label35
	addiw a5, a4, 1
	li t0, 45
	sh2add a4, a5, s2
	sw t0, 0(a4)
	mv a4, a3
	li t0, 42
	bne a2, t0, label247
	j label613
label39:
	addiw a5, a4, 1
	li t0, 45
	sh2add a4, a5, s2
	sw t0, 0(a4)
	mv a4, a3
label42:
	li t0, 42
	bne a2, t0, label247
	j label613
label45:
	sh2add t0, a4, s2
	lw a5, 0(t0)
	xori t3, a5, 94
	xori t1, a5, 47
	xori t2, a5, 42
	sltiu t0, t2, 1
	sltiu t2, t1, 1
	xori t1, a5, 37
	or t0, t0, t2
	sltiu t2, t1, 1
	sltiu t1, t3, 1
	or t0, t0, t2
	or t0, t0, t1
	beq t0, zero, label49
	sh2add t0, a3, s0
	li t1, 32
	addiw a4, a4, -1
	addiw a3, a3, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	bne a4, zero, label45
	addiw a4, a4, 1
	li t0, 42
	sh2add a5, a4, s2
	sw t0, 0(a5)
	li a5, 47
	bne a2, a5, label276
	j label68
label49:
	addiw a4, a4, 1
	li t0, 42
	sh2add a5, a4, s2
	sw t0, 0(a5)
	li a5, 47
	bne a2, a5, label276
	j label68
label276:
	mv a5, a3
	mv a3, a4
	li a4, 37
	bne a2, a4, label65
	j label279
label65:
	sh2add a2, a5, s0
	li t0, 32
	addiw a4, a5, 1
	addiw a1, a1, 1
	sw t0, 0(a2)
	ble a0, a1, label76
	sh2add t0, a1, s3
	lw a2, 0(t0)
	li t0, 10
	addiw a5, a2, -48
	bgeu a5, t0, label10
	sh2add a5, a4, s0
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a2, 0(a5)
	ble a0, a1, label76
	sh2add t0, a1, s3
	lw a2, 0(t0)
	li t0, 10
	addiw a5, a2, -48
	bgeu a5, t0, label10
	sh2add a5, a4, s0
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a2, 0(a5)
	ble a0, a1, label76
	sh2add t0, a1, s3
	lw a2, 0(t0)
	li t0, 10
	addiw a5, a2, -48
	bgeu a5, t0, label10
	sh2add a5, a4, s0
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a2, 0(a5)
	ble a0, a1, label76
	j label708
label68:
	sh2add t0, a4, s2
	lw a5, 0(t0)
	xori t3, a5, 94
	xori t1, a5, 47
	xori t2, a5, 42
	sltiu t0, t2, 1
	sltiu t2, t1, 1
	xori t1, a5, 37
	or t0, t0, t2
	sltiu t2, t1, 1
	sltiu t1, t3, 1
	or t0, t0, t2
	or t0, t0, t1
	beq t0, zero, label71
	sh2add t0, a3, s0
	li t1, 32
	addiw a4, a4, -1
	addiw a3, a3, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	bne a4, zero, label68
	addiw t0, a4, 1
	li t1, 47
	mv a5, a3
	sh2add a4, t0, s2
	mv a3, t0
	sw t1, 0(a4)
	li a4, 37
	bne a2, a4, label65
	j label279
label624:
	mv a1, zero
	li a0, 1
	j label86
label84:
	sh2add a1, a4, s0
	li a0, 64
	sw a0, 0(a1)
	lw a2, 4(s0)
	beq a2, a0, label113
	j label624
label86:
	sh2add a2, a0, s0
	lw a3, 0(a2)
	xori t3, a3, 94
	xori a4, a3, 45
	xori a5, a3, 43
	sltiu t0, a4, 1
	sltiu t1, a5, 1
	xori a4, a3, 42
	or a2, t1, t0
	sltiu a5, a4, 1
	xori a4, a3, 47
	or a2, a2, a5
	sltiu t2, a4, 1
	xori a4, a3, 37
	or a2, a2, t2
	sltiu t2, a4, 1
	sltiu a4, t3, 1
	or a2, a2, t2
	or a2, a2, a4
	beq a2, zero, label92
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
	bne a3, a5, label462
	divw a5, a2, a4
	li t0, 37
	bne a3, t0, label104
	remw a5, a2, a4
	li t0, 94
	bne a3, t0, label469
	j label682
label92:
	li a2, 32
	beq a3, a2, label99
	addiw a1, a1, 1
	addiw a4, a3, -48
	li a5, 32
	sh2add a2, a1, s1
	sw a4, 0(a2)
	addiw a2, a0, 1
	sh2add t0, a2, s0
	lw a3, 0(t0)
	beq a3, a5, label425
	j label658
label594:
	mulw t2, a4, a2
	mv t0, t2
	bne a5, zero, label596
	mv t0, t1
label596:
	li a5, 47
	bne a3, a5, label462
	divw a5, a2, a4
	li t0, 37
	bne a3, t0, label104
	remw a5, a2, a4
	li t0, 94
	bne a3, t0, label469
label682:
	beq a4, zero, label477
	mv a3, a4
	li a4, 1
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label106
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label106
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label106
	j label741
label462:
	mv a5, t0
	li t0, 37
	bne a3, t0, label104
	remw a5, a2, a4
	li t0, 94
	bne a3, t0, label469
	beq a4, zero, label477
	mv a3, a4
	li a4, 1
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label106
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label106
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label106
	j label704
label741:
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label106
	j label723
label704:
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label106
label723:
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label106
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label106
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label106
	j label109
label477:
	li a4, 1
	addiw a1, a1, -1
	addiw a0, a0, 1
	sh2add a2, a1, s1
	sw a4, 0(a2)
	sh2add a3, a0, s0
	li a4, 64
	lw a2, 0(a3)
	beq a2, a4, label113
	j label86
label109:
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label106
	j label109
label104:
	li t0, 94
	bne a3, t0, label469
	beq a4, zero, label477
	mv a3, a4
	li a4, 1
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label106
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label106
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label106
	j label704
label469:
	mv a4, a5
label106:
	addiw a1, a1, -1
	addiw a0, a0, 1
	sh2add a2, a1, s1
	sw a4, 0(a2)
	sh2add a3, a0, s0
	li a4, 64
	lw a2, 0(a3)
	beq a2, a4, label113
	j label86
label708:
	sh2add t0, a1, s3
	lw a2, 0(t0)
	li t0, 10
	addiw a5, a2, -48
	bgeu a5, t0, label10
	j label727
label279:
	mv a2, a5
label58:
	sh2add t0, a3, s2
	lw a4, 0(t0)
	xori t2, a4, 94
	xori t0, a4, 47
	xori t1, a4, 42
	sltiu a5, t1, 1
	sltiu t1, t0, 1
	xori t0, a4, 37
	or a5, a5, t1
	sltiu t1, t0, 1
	sltiu t0, t2, 1
	or a5, a5, t1
	or a5, a5, t0
	beq a5, zero, label61
	sh2add t0, a2, s0
	li a5, 32
	addiw a3, a3, -1
	addiw a2, a2, 2
	sw a5, 0(t0)
	sw a4, 4(t0)
	bne a3, zero, label58
label61:
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
	ble a0, a1, label76
	sh2add t0, a1, s3
	lw a2, 0(t0)
	li t0, 10
	addiw a5, a2, -48
	bgeu a5, t0, label10
	sh2add a5, a4, s0
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a2, 0(a5)
	ble a0, a1, label76
	sh2add t0, a1, s3
	lw a2, 0(t0)
	li t0, 10
	addiw a5, a2, -48
	bgeu a5, t0, label10
	sh2add a5, a4, s0
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a2, 0(a5)
	ble a0, a1, label76
	sh2add t0, a1, s3
	lw a2, 0(t0)
	li t0, 10
	addiw a5, a2, -48
	bgeu a5, t0, label10
	j label727
label658:
	li a3, 1
	j label96
label425:
	li a3, 1
label94:
	addw a0, a0, a3
	sh2add a3, a0, s0
	li a4, 64
	lw a2, 0(a3)
	beq a2, a4, label113
	j label86
label96:
	addw t1, a0, a3
	sh2add a4, a4, a4
	sh2add t0, t1, s0
	slliw t1, a4, 1
	lw a5, 0(t0)
	addiw t0, t1, -48
	addw a4, a5, t0
	addw t0, a2, a3
	sh2add a5, a1, s1
	addiw a3, a3, 1
	sh2add t1, t0, s0
	sw a4, 0(a5)
	li t0, 32
	lw a5, 0(t1)
	beq a5, t0, label94
	j label96
label247:
	mv a3, a4
	mv a4, a5
	li a5, 47
	bne a2, a5, label276
	j label68
label71:
	addiw t0, a4, 1
	li t1, 47
	mv a5, a3
	sh2add a4, t0, s2
	mv a3, t0
	sw t1, 0(a4)
	li a4, 37
	bne a2, a4, label65
	j label279
label81:
	sh2add a2, a3, s2
	sh2add a1, a4, s0
	addiw a3, a3, -1
	lw a0, 0(a2)
	addiw a4, a4, 2
	li a2, 32
	sw a2, 0(a1)
	sw a0, 4(a1)
	ble a3, zero, label84
	j label81
label113:
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
label99:
	addiw a0, a0, 1
	sh2add a3, a0, s0
	li a4, 64
	lw a2, 0(a3)
	beq a2, a4, label113
	j label86
