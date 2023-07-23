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
	xori a2, a0, 13
	xori a4, a0, 10
	sltu a1, zero, a2
	sltu a3, zero, a4
pcrel768:
	auipc a2, %pcrel_hi(get)
	and a1, a1, a3
	addi s3, a2, %pcrel_lo(pcrel768)
pcrel769:
	auipc a2, %pcrel_hi(chas)
	addi s2, a2, %pcrel_lo(pcrel769)
pcrel770:
	auipc a2, %pcrel_hi(ints)
	addi s1, a2, %pcrel_lo(pcrel770)
pcrel771:
	auipc a2, %pcrel_hi(get2)
	addi s0, a2, %pcrel_lo(pcrel771)
	bne a1, zero, label131
	mv a0, zero
	mv a3, zero
	li a4, 1
	mv a1, zero
	sh2add a1, a4, s0
	li a0, 64
	sw a0, 0(a1)
	lw a1, 4(s0)
	bne a1, a0, label350
	j label79
label131:
	mv s4, zero
	j label115
label350:
	li a0, 1
	mv a1, zero
	j label80
label79:
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
label80:
	sh2add a2, a0, s0
	lw a3, 0(a2)
	xori t2, a3, 47
	xori a4, a3, 45
	xori a5, a3, 43
	sltiu t0, a4, 1
	sltiu t1, a5, 1
	xori a4, a3, 42
	or a2, t1, t0
	sltiu a5, a4, 1
	sltiu a4, t2, 1
	or a2, a2, a5
	xori t2, a3, 37
	or a2, a2, a4
	sltiu a4, t2, 1
	xori t2, a3, 94
	or a2, a2, a4
	sltiu a4, t2, 1
	or a2, a2, a4
	bne a2, zero, label95
	li a2, 32
	bne a3, a2, label89
	addiw a0, a0, 1
	sh2add a3, a0, s0
	li a4, 64
	lw a2, 0(a3)
	bne a2, a4, label80
	j label79
label95:
	sh2add t2, a1, s1
	subw t1, zero, t1
	lw a4, 0(t2)
	lw a2, -4(t2)
	addw t3, a4, a2
	and t2, t3, t1
	subw t3, a2, a4
	mv t1, t3
	bne t0, zero, label592
	mv t1, t2
label592:
	mulw t2, a4, a2
	mv t0, t2
	bne a5, zero, label594
	mv t0, t1
label594:
	li t1, 47
	beq a3, t1, label96
	mv a5, t0
	li t0, 37
	beq a3, t0, label107
	li t0, 94
	beq a3, t0, label103
	j label660
label443:
	li a3, 1
label104:
	mulw a3, a2, a3
	addiw a4, a4, -1
	bne a4, zero, label104
	mv a2, a3
	addiw a1, a1, -1
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a0, a0, 1
	sh2add a3, a0, s0
	li a4, 64
	lw a2, 0(a3)
	bne a2, a4, label80
	j label79
label89:
	addiw a1, a1, 1
	addiw a4, a3, -48
	li t0, 32
	sh2add a2, a1, s1
	addiw a3, a0, 1
	sw a4, 0(a2)
	sh2add a5, a3, s0
	lw a2, 0(a5)
	bne a2, t0, label393
	li a2, 1
	addw a0, a0, a2
	sh2add a3, a0, s0
	li a4, 64
	lw a2, 0(a3)
	bne a2, a4, label80
	j label79
label393:
	li a2, 1
label90:
	addw t0, a0, a2
	sh2add a4, a4, a4
	sh2add t1, t0, s0
	slliw t0, a4, 1
	lw a5, 0(t1)
	addi t1, t0, -48
	addw t0, a3, a2
	addw a4, a5, t1
	addiw a2, a2, 1
	sh2add t1, t0, s0
	sh2add a5, a1, s1
	li t0, 32
	sw a4, 0(a5)
	lw a5, 0(t1)
	bne a5, t0, label90
	addw a0, a0, a2
	sh2add a3, a0, s0
	li a4, 64
	lw a2, 0(a3)
	bne a2, a4, label80
	j label79
label103:
	bne a4, zero, label443
	li a2, 1
	addiw a1, a1, -1
	sh2add a3, a1, s1
	sw a2, 0(a3)
	addiw a0, a0, 1
	sh2add a3, a0, s0
	li a4, 64
	lw a2, 0(a3)
	bne a2, a4, label80
	j label79
label96:
	divw a5, a2, a4
	li t0, 37
	beq a3, t0, label107
	li t0, 94
	beq a3, t0, label103
	mv a2, a5
	addiw a1, a1, -1
	sh2add a3, a1, s1
	sw a5, 0(a3)
	addiw a0, a0, 1
	sh2add a3, a0, s0
	li a4, 64
	lw a2, 0(a3)
	bne a2, a4, label80
	j label79
label107:
	remw a5, a2, a4
	li t0, 94
	beq a3, t0, label103
	mv a2, a5
	addiw a1, a1, -1
	sh2add a3, a1, s1
	sw a5, 0(a3)
	addiw a0, a0, 1
	sh2add a3, a0, s0
	li a4, 64
	lw a2, 0(a3)
	bne a2, a4, label80
	j label79
label660:
	mv a2, a5
	addiw a1, a1, -1
	sh2add a3, a1, s1
	sw a5, 0(a3)
	addiw a0, a0, 1
	sh2add a3, a0, s0
	li a4, 64
	lw a2, 0(a3)
	bne a2, a4, label80
	j label79
label115:
	sh2add a1, s4, s3
	sw a0, 0(a1)
	jal getch
	xori a3, a0, 10
	addiw s4, s4, 1
	xori a2, a0, 13
	sltu a1, zero, a2
	sltu a2, zero, a3
	and a1, a1, a2
	bne a1, zero, label115
	mv a0, s4
	mv a3, zero
	li a4, 1
	mv a1, zero
	bgt s4, zero, label8
	sh2add a1, a4, s0
	li a0, 64
	sw a0, 0(a1)
	lw a1, 4(s0)
	bne a1, a0, label350
	j label79
label4:
	ble a0, a1, label134
label8:
	sh2add t0, a1, s3
	lw a2, 0(t0)
	li t0, 10
	addiw a5, a2, -48
	bltu a5, t0, label75
	li a5, 40
	beq a2, a5, label74
	li a5, 94
	beq a2, a5, label73
	li a5, 41
	beq a2, a5, label14
	li t0, 43
	beq a2, t0, label23
	mv a5, a4
	mv a4, a3
	li t0, 45
	beq a2, t0, label208
	mv a3, a5
	li a5, 42
	beq a2, a5, label66
	mv a5, a4
	li t0, 47
	beq a2, t0, label245
	mv a4, a3
	mv a3, a5
	li a5, 37
	beq a2, a5, label274
label754:
	sh2add a2, a4, s0
	li a5, 32
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a5, 0(a2)
	j label4
label74:
	addiw a3, a3, 1
	li t0, 40
	sh2add a5, a3, s2
	sw t0, 0(a5)
	li a5, 94
	beq a2, a5, label73
	li a5, 41
	beq a2, a5, label14
	li t0, 43
	beq a2, t0, label23
	mv a5, a4
	mv a4, a3
	li t0, 45
	beq a2, t0, label208
	mv a3, a5
	li a5, 42
	beq a2, a5, label66
	mv a5, a4
	li t0, 47
	beq a2, t0, label245
	mv a4, a3
	mv a3, a5
	li a5, 37
	beq a2, a5, label274
	j label754
label75:
	sh2add a5, a4, s0
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a2, 0(a5)
	bgt a0, a1, label8
	bgt a3, zero, label108
	sh2add a1, a4, s0
	li a0, 64
	sw a0, 0(a1)
	lw a1, 4(s0)
	bne a1, a0, label350
	j label79
label14:
	sh2add t0, a3, s2
	addiw a3, a3, -1
	lw a5, 0(t0)
label15:
	li t0, 40
	bne a5, t0, label19
	li t0, 43
	beq a2, t0, label23
	mv a5, a4
	mv a4, a3
	li t0, 45
	beq a2, t0, label208
	mv a3, a5
	li a5, 42
	beq a2, a5, label66
	mv a5, a4
	li t0, 47
	beq a2, t0, label245
	mv a4, a3
	mv a3, a5
	li a5, 37
	beq a2, a5, label274
	sh2add a2, a4, s0
	li a5, 32
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a5, 0(a2)
	bgt a0, a1, label8
	j label134
label19:
	sh2add t0, a4, s0
	li t1, 32
	addiw a4, a4, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	sh2add t0, a3, s2
	addiw a3, a3, -1
	lw a5, 0(t0)
	j label15
label23:
	sh2add t0, a3, s2
	lw a5, 0(t0)
	xori t3, a5, 45
	xori t1, a5, 43
	sltiu t2, t3, 1
	sltiu t0, t1, 1
	xori t1, a5, 42
	or t0, t0, t2
	sltiu t3, t1, 1
	xori t2, a5, 47
	or t0, t0, t3
	sltiu t1, t2, 1
	xori t2, a5, 37
	or t0, t0, t1
	sltiu t1, t2, 1
	xori t2, a5, 94
	or t0, t0, t1
	sltiu t1, t2, 1
	or t0, t0, t1
	bne t0, zero, label26
	addiw t0, a3, 1
	li t1, 43
	mv a5, a4
	sh2add a3, t0, s2
	mv a4, t0
	sw t1, 0(a3)
	li t0, 45
	beq a2, t0, label208
	mv a3, a5
	li a5, 42
	beq a2, a5, label66
	mv a5, a4
	li t0, 47
	beq a2, t0, label245
	mv a4, a3
	mv a3, a5
	li a5, 37
	beq a2, a5, label274
	sh2add a2, a4, s0
	li a5, 32
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a5, 0(a2)
	bgt a0, a1, label8
	bgt a3, zero, label108
	j label746
label26:
	sh2add t0, a4, s0
	li t1, 32
	addiw a3, a3, -1
	addiw a4, a4, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	beq a3, zero, label27
	j label23
label746:
	sh2add a1, a4, s0
	li a0, 64
	sw a0, 0(a1)
	lw a1, 4(s0)
	bne a1, a0, label350
	j label79
label134:
	ble a3, zero, label601
label108:
	addiw a0, a3, -4
	bgt a0, zero, label111
	sh2add a2, a3, s2
	sh2add a1, a4, s0
	addiw a3, a3, -1
	lw a0, 0(a2)
	addiw a4, a4, 2
	li a2, 32
	sw a2, 0(a1)
	sw a0, 4(a1)
	bgt a3, zero, label112
	sh2add a1, a4, s0
	li a0, 64
	sw a0, 0(a1)
	lw a1, 4(s0)
	bne a1, a0, label350
	j label79
label111:
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
	j label108
label50:
	addiw a5, a4, 1
	li t0, 47
	sh2add a4, a5, s2
	sw t0, 0(a4)
	mv a4, a3
	mv a3, a5
	li a5, 37
	beq a2, a5, label274
	sh2add a2, a4, s0
	li a5, 32
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a5, 0(a2)
	bgt a0, a1, label8
	bgt a3, zero, label108
	sh2add a1, a4, s0
	li a0, 64
	sw a0, 0(a1)
	lw a1, 4(s0)
	bne a1, a0, label350
	j label79
label274:
	mv a2, a4
label59:
	sh2add a5, a3, s2
	lw a4, 0(a5)
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
	bne a5, zero, label62
	addiw a3, a3, 1
	li a5, 37
	sh2add a4, a3, s2
	sw a5, 0(a4)
	mv a4, a2
	sh2add a2, a2, s0
	li a5, 32
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a5, 0(a2)
	bgt a0, a1, label8
	bgt a3, zero, label108
	sh2add a1, a4, s0
	li a0, 64
	sw a0, 0(a1)
	lw a1, 4(s0)
	bne a1, a0, label350
	j label79
label62:
	sh2add a5, a2, s0
	li t0, 32
	addiw a3, a3, -1
	addiw a2, a2, 2
	sw t0, 0(a5)
	sw a4, 4(a5)
	beq a3, zero, label63
	j label59
label245:
	mv a4, a5
label46:
	sh2add t0, a4, s2
	lw a5, 0(t0)
	xori t2, a5, 47
	xori t1, a5, 42
	sltiu t3, t2, 1
	sltiu t0, t1, 1
	xori t1, a5, 37
	or t0, t0, t3
	sltiu t2, t1, 1
	xori t1, a5, 94
	or t0, t0, t2
	sltiu t2, t1, 1
	or t0, t0, t2
	bne t0, zero, label49
	addiw a5, a4, 1
	li t0, 47
	sh2add a4, a5, s2
	sw t0, 0(a4)
	mv a4, a3
	mv a3, a5
	li a5, 37
	beq a2, a5, label274
	sh2add a2, a4, s0
	li a5, 32
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a5, 0(a2)
	bgt a0, a1, label8
	bgt a3, zero, label108
	sh2add a1, a4, s0
	li a0, 64
	sw a0, 0(a1)
	lw a1, 4(s0)
	bne a1, a0, label350
	j label79
label49:
	sh2add t0, a3, s0
	li t1, 32
	addiw a4, a4, -1
	addiw a3, a3, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	beq a4, zero, label50
	j label46
label66:
	sh2add t0, a4, s2
	lw a5, 0(t0)
	xori t1, a5, 47
	xori t3, a5, 37
	xori t2, a5, 42
	sltiu t0, t2, 1
	sltiu t2, t1, 1
	sltiu t1, t3, 1
	or t0, t0, t2
	xori t2, a5, 94
	or t0, t0, t1
	sltiu t1, t2, 1
	or t0, t0, t1
	bne t0, zero, label72
	addiw a5, a4, 1
	li t0, 42
	sh2add a4, a5, s2
	sw t0, 0(a4)
	li t0, 47
	beq a2, t0, label245
	mv a4, a3
	mv a3, a5
	li a5, 37
	beq a2, a5, label274
	sh2add a2, a4, s0
	li a5, 32
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a5, 0(a2)
	bgt a0, a1, label8
	bgt a3, zero, label108
	sh2add a1, a4, s0
	li a0, 64
	sw a0, 0(a1)
	lw a1, 4(s0)
	bne a1, a0, label350
	j label79
label69:
	addiw a5, a4, 1
	li t0, 42
	sh2add a4, a5, s2
	sw t0, 0(a4)
	li t0, 47
	beq a2, t0, label245
	mv a4, a3
	mv a3, a5
	li a5, 37
	beq a2, a5, label274
	sh2add a2, a4, s0
	li a5, 32
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a5, 0(a2)
	bgt a0, a1, label8
	bgt a3, zero, label108
	sh2add a1, a4, s0
	li a0, 64
	sw a0, 0(a1)
	lw a1, 4(s0)
	bne a1, a0, label350
	j label79
label72:
	sh2add t0, a3, s0
	li t1, 32
	addiw a4, a4, -1
	addiw a3, a3, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	beq a4, zero, label69
	j label66
label27:
	addiw t0, a3, 1
	li t1, 43
	mv a5, a4
	sh2add a3, t0, s2
	mv a4, t0
	sw t1, 0(a3)
	li t0, 45
	beq a2, t0, label208
	mv a3, a5
	li a5, 42
	beq a2, a5, label66
	mv a5, a4
	li t0, 47
	beq a2, t0, label245
	mv a4, a3
	mv a3, a5
	li a5, 37
	beq a2, a5, label274
	sh2add a2, a4, s0
	li a5, 32
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a5, 0(a2)
	bgt a0, a1, label8
	bgt a3, zero, label108
	j label746
label208:
	mv a3, a5
label33:
	sh2add t0, a4, s2
	lw a5, 0(t0)
	xori t3, a5, 42
	xori t2, a5, 45
	xori t1, a5, 43
	sltiu t0, t1, 1
	sltiu t1, t2, 1
	sltiu t2, t3, 1
	or t0, t0, t1
	xori t3, a5, 94
	xori t1, a5, 47
	or t0, t0, t2
	sltiu t2, t1, 1
	xori t1, a5, 37
	or t0, t0, t2
	sltiu t2, t1, 1
	sltiu t1, t3, 1
	or t0, t0, t2
	or t0, t0, t1
	bne t0, zero, label36
	addiw a4, a4, 1
	li t0, 45
	sh2add a5, a4, s2
	sw t0, 0(a5)
	li a5, 42
	beq a2, a5, label66
	mv a5, a4
	li t0, 47
	beq a2, t0, label245
	mv a4, a3
	mv a3, a5
	li a5, 37
	beq a2, a5, label274
	sh2add a2, a4, s0
	li a5, 32
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a5, 0(a2)
	bgt a0, a1, label8
	bgt a3, zero, label108
	sh2add a1, a4, s0
	li a0, 64
	sw a0, 0(a1)
	lw a1, 4(s0)
	bne a1, a0, label350
	j label79
label36:
	sh2add t0, a3, s0
	li t1, 32
	addiw a4, a4, -1
	addiw a3, a3, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	beq a4, zero, label37
	j label33
label73:
	addiw a3, a3, 1
	li t0, 94
	sh2add a5, a3, s2
	sw t0, 0(a5)
	li a5, 41
	beq a2, a5, label14
	li t0, 43
	beq a2, t0, label23
	mv a5, a4
	mv a4, a3
	li t0, 45
	beq a2, t0, label208
	mv a3, a5
	li a5, 42
	beq a2, a5, label66
	mv a5, a4
	li t0, 47
	beq a2, t0, label245
	mv a4, a3
	mv a3, a5
	li a5, 37
	beq a2, a5, label274
	sh2add a2, a4, s0
	li a5, 32
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a5, 0(a2)
	bgt a0, a1, label8
	j label134
label37:
	addiw a4, a4, 1
	li t0, 45
	sh2add a5, a4, s2
	sw t0, 0(a5)
	li a5, 42
	beq a2, a5, label66
	mv a5, a4
	li t0, 47
	beq a2, t0, label245
	mv a4, a3
	mv a3, a5
	li a5, 37
	beq a2, a5, label274
	sh2add a2, a4, s0
	li a5, 32
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a5, 0(a2)
	bgt a0, a1, label8
	bgt a3, zero, label108
	sh2add a1, a4, s0
	li a0, 64
	sw a0, 0(a1)
	lw a1, 4(s0)
	bne a1, a0, label350
	j label79
label63:
	addiw a3, a3, 1
	li a5, 37
	sh2add a4, a3, s2
	sw a5, 0(a4)
	mv a4, a2
	sh2add a2, a2, s0
	li a5, 32
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a5, 0(a2)
	bgt a0, a1, label8
	bgt a3, zero, label108
	sh2add a1, a4, s0
	li a0, 64
	sw a0, 0(a1)
	lw a1, 4(s0)
	bne a1, a0, label350
	j label79
label601:
	sh2add a1, a4, s0
	li a0, 64
	sw a0, 0(a1)
	lw a1, 4(s0)
	bne a1, a0, label350
	j label79
label112:
	sh2add a2, a3, s2
	sh2add a1, a4, s0
	addiw a3, a3, -1
	lw a0, 0(a2)
	addiw a4, a4, 2
	li a2, 32
	sw a2, 0(a1)
	sw a0, 4(a1)
	bgt a3, zero, label112
	sh2add a1, a4, s0
	li a0, 64
	sw a0, 0(a1)
	lw a1, 4(s0)
	bne a1, a0, label350
	j label79
