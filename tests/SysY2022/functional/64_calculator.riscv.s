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
pcrel778:
	auipc a2, %pcrel_hi(get)
	and a1, a1, a3
	addi s3, a2, %pcrel_lo(pcrel778)
pcrel779:
	auipc a2, %pcrel_hi(chas)
	addi s2, a2, %pcrel_lo(pcrel779)
pcrel780:
	auipc a2, %pcrel_hi(ints)
	addi s1, a2, %pcrel_lo(pcrel780)
pcrel781:
	auipc a2, %pcrel_hi(get2)
	addi s0, a2, %pcrel_lo(pcrel781)
	beq a1, zero, label131
	mv s4, zero
	j label115
label131:
	mv a0, zero
	mv a3, zero
	li a4, 1
	mv a1, zero
label76:
	ble a3, zero, label77
	addiw a0, a3, -4
	ble a0, zero, label112
	j label111
label711:
	sh2add t0, a1, s3
	lw a2, 0(t0)
	li t0, 10
	addiw a5, a2, -48
	bgeu a5, t0, label9
	j label730
label9:
	li a5, 40
	bne a2, a5, label10
	addiw a3, a3, 1
	li t0, 40
	sh2add a5, a3, s2
	sw t0, 0(a5)
	li a5, 94
	bne a2, a5, label151
	addiw a5, a3, 1
	li t0, 94
	sh2add a3, a5, s2
	sw t0, 0(a3)
	li a3, 41
	bne a2, a3, label20
	sh2add t1, a5, s2
	addiw a3, a5, -1
	lw t0, 0(t1)
	mv a5, t0
	li t0, 40
	beq a5, t0, label163
	sh2add t0, a4, s0
	li t1, 32
	addiw a4, a4, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	sh2add t0, a3, s2
	addiw a3, a3, -1
	lw a5, 0(t0)
	li t0, 40
	beq a5, t0, label163
	j label732
label715:
	sh2add t0, a1, s3
	lw a2, 0(t0)
	li t0, 10
	addiw a5, a2, -48
	bgeu a5, t0, label9
	sh2add a5, a4, s0
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a2, 0(a5)
	ble a0, a1, label76
	j label711
label59:
	sh2add a5, a3, s2
	lw a4, 0(a5)
	xori t1, a4, 47
	xori t0, a4, 42
	sltiu a5, t0, 1
	sltiu t0, t1, 1
	xori t1, a4, 37
	or a5, a5, t0
	sltiu t0, t1, 1
	xori t1, a4, 94
	or a5, a5, t0
	sltiu t0, t1, 1
	or a5, a5, t0
	beq a5, zero, label63
	sh2add a5, a2, s0
	li t0, 32
	addiw a3, a3, -1
	addiw a2, a2, 2
	sw t0, 0(a5)
	sw a4, 4(a5)
	bne a3, zero, label59
	addiw a3, a3, 1
	li a5, 37
	sh2add a4, a3, s2
	sw a5, 0(a4)
	mv a5, a2
	sh2add a2, a2, s0
	addiw a4, a5, 1
	addiw a1, a1, 1
	sw t0, 0(a2)
	ble a0, a1, label76
	sh2add t0, a1, s3
	lw a2, 0(t0)
	li t0, 10
	addiw a5, a2, -48
	bgeu a5, t0, label9
	sh2add a5, a4, s0
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a2, 0(a5)
	ble a0, a1, label76
	sh2add t0, a1, s3
	lw a2, 0(t0)
	li t0, 10
	addiw a5, a2, -48
	bgeu a5, t0, label9
	sh2add a5, a4, s0
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a2, 0(a5)
	ble a0, a1, label76
	j label715
label63:
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
	bgeu a5, t0, label9
	sh2add a5, a4, s0
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a2, 0(a5)
	ble a0, a1, label76
	sh2add t0, a1, s3
	lw a2, 0(t0)
	li t0, 10
	addiw a5, a2, -48
	bgeu a5, t0, label9
	sh2add a5, a4, s0
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a2, 0(a5)
	ble a0, a1, label76
	sh2add t0, a1, s3
	lw a2, 0(t0)
	li t0, 10
	addiw a5, a2, -48
	bgeu a5, t0, label9
	sh2add a5, a4, s0
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a2, 0(a5)
	ble a0, a1, label76
	j label711
label732:
	sh2add t0, a4, s0
	li t1, 32
	addiw a4, a4, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	sh2add t0, a3, s2
	addiw a3, a3, -1
	lw a5, 0(t0)
	j label15
label10:
	li a5, 94
	bne a2, a5, label151
	addiw a5, a3, 1
	li t0, 94
	sh2add a3, a5, s2
	sw t0, 0(a3)
	li a3, 41
	bne a2, a3, label20
	sh2add t1, a5, s2
	addiw a3, a5, -1
	lw t0, 0(t1)
	mv a5, t0
	li t0, 40
	beq a5, t0, label163
	sh2add t0, a4, s0
	li t1, 32
	addiw a4, a4, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	sh2add t0, a3, s2
	addiw a3, a3, -1
	lw a5, 0(t0)
	li t0, 40
	beq a5, t0, label163
	sh2add t0, a4, s0
	addiw a4, a4, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	sh2add t0, a3, s2
	addiw a3, a3, -1
	lw a5, 0(t0)
	li t0, 40
	beq a5, t0, label163
	j label732
label151:
	mv a5, a3
	li a3, 41
	bne a2, a3, label20
	sh2add t1, a5, s2
	addiw a3, a5, -1
	lw t0, 0(t1)
	mv a5, t0
	li t0, 40
	beq a5, t0, label163
	sh2add t0, a4, s0
	li t1, 32
	addiw a4, a4, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	sh2add t0, a3, s2
	addiw a3, a3, -1
	lw a5, 0(t0)
	li t0, 40
	beq a5, t0, label163
	sh2add t0, a4, s0
	addiw a4, a4, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	sh2add t0, a3, s2
	addiw a3, a3, -1
	lw a5, 0(t0)
	li t0, 40
	beq a5, t0, label163
	j label732
label605:
	mv a3, a4
	mv a4, a5
	j label23
label15:
	li t0, 40
	beq a5, t0, label163
	j label732
label163:
	mv a5, a3
	li t0, 43
	bne a2, t0, label30
	j label605
label20:
	li t0, 43
	bne a2, t0, label30
	j label605
label730:
	sh2add a5, a4, s0
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a2, 0(a5)
	ble a0, a1, label76
	j label711
label115:
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
	j label115
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
	bgeu a5, t0, label9
	sh2add a5, a4, s0
	li a1, 1
	addiw a4, a4, 1
	sw a2, 0(a5)
	ble s4, a1, label76
	sh2add t0, a1, s3
	lw a2, 0(t0)
	li t0, 10
	addiw a5, a2, -48
	bgeu a5, t0, label9
	sh2add a5, a4, s0
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a2, 0(a5)
	ble s4, a1, label76
	sh2add t0, a1, s3
	lw a2, 0(t0)
	li t0, 10
	addiw a5, a2, -48
	bgeu a5, t0, label9
	j label730
label608:
	mv a3, a4
	mv a4, a5
	j label33
label23:
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
	beq t0, zero, label27
	sh2add t0, a3, s0
	li t1, 32
	addiw a4, a4, -1
	addiw a3, a3, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	bne a4, zero, label23
	addiw a5, a4, 1
	li t0, 43
	sh2add a4, a5, s2
	sw t0, 0(a4)
	mv a4, a3
	li t0, 45
	bne a2, t0, label208
	j label608
label27:
	addiw a5, a4, 1
	li t0, 43
	sh2add a4, a5, s2
	sw t0, 0(a4)
	mv a4, a3
label30:
	li t0, 45
	bne a2, t0, label208
	j label608
label33:
	sh2add t0, a4, s2
	lw a5, 0(t0)
	xori t1, a5, 45
	xori t2, a5, 43
	sltiu t3, t1, 1
	sltiu t0, t2, 1
	xori t2, a5, 42
	or t0, t0, t3
	sltiu t1, t2, 1
	xori t3, a5, 47
	or t0, t0, t1
	sltiu t2, t3, 1
	xori t1, a5, 37
	or t0, t0, t2
	sltiu t3, t1, 1
	xori t2, a5, 94
	or t0, t0, t3
	sltiu t1, t2, 1
	or t0, t0, t1
	beq t0, zero, label37
	sh2add t0, a3, s0
	li t1, 32
	addiw a4, a4, -1
	addiw a3, a3, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	bne a4, zero, label33
	addiw a4, a4, 1
	li t0, 45
	sh2add a5, a4, s2
	sw t0, 0(a5)
	li a5, 42
	bne a2, a5, label43
	j label66
label37:
	addiw a4, a4, 1
	li t0, 45
	sh2add a5, a4, s2
	sw t0, 0(a5)
	li a5, 42
	bne a2, a5, label43
	j label66
label43:
	li a5, 47
	bne a2, a5, label245
	j label46
label245:
	mv a5, a3
	mv a3, a4
	li a4, 37
	bne a2, a4, label56
	j label612
label56:
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
	bgeu a5, t0, label9
	sh2add a5, a4, s0
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a2, 0(a5)
	ble a0, a1, label76
	sh2add t0, a1, s3
	lw a2, 0(t0)
	li t0, 10
	addiw a5, a2, -48
	bgeu a5, t0, label9
	sh2add a5, a4, s0
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a2, 0(a5)
	ble a0, a1, label76
	j label715
label66:
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
	beq t0, zero, label69
	sh2add t0, a3, s0
	li t1, 32
	addiw a4, a4, -1
	addiw a3, a3, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	bne a4, zero, label66
	addiw a4, a4, 1
	li t0, 42
	sh2add a5, a4, s2
	sw t0, 0(a5)
	li a5, 47
	bne a2, a5, label245
	j label46
label612:
	mv a2, a5
	j label59
label46:
	sh2add t0, a4, s2
	lw a5, 0(t0)
	xori t3, a5, 47
	xori t1, a5, 42
	sltiu t2, t3, 1
	sltiu t0, t1, 1
	xori t1, a5, 37
	or t0, t0, t2
	sltiu t2, t1, 1
	xori t1, a5, 94
	or t0, t0, t2
	sltiu t2, t1, 1
	or t0, t0, t2
	beq t0, zero, label50
	sh2add t0, a3, s0
	li t1, 32
	addiw a4, a4, -1
	addiw a3, a3, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	bne a4, zero, label46
	addiw t0, a4, 1
	li t1, 47
	mv a5, a3
	sh2add a4, t0, s2
	mv a3, t0
	sw t1, 0(a4)
	li a4, 37
	bne a2, a4, label56
	j label612
label50:
	addiw t0, a4, 1
	li t1, 47
	mv a5, a3
	sh2add a4, t0, s2
	mv a3, t0
	sw t1, 0(a4)
	li a4, 37
	bne a2, a4, label56
	j label612
label208:
	mv a3, a4
	mv a4, a5
	li a5, 42
	bne a2, a5, label43
	j label66
label69:
	addiw a4, a4, 1
	li t0, 42
	sh2add a5, a4, s2
	sw t0, 0(a5)
	li a5, 47
	bne a2, a5, label245
	j label46
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
	addiw a0, a0, -4
	ble a0, zero, label112
	j label111
label112:
	sh2add a2, a3, s2
	sh2add a1, a4, s0
	addiw a3, a3, -1
	lw a0, 0(a2)
	addiw a4, a4, 2
	li a2, 32
	sw a2, 0(a1)
	sw a0, 4(a1)
	ble a3, zero, label77
	j label112
label77:
	sh2add a1, a4, s0
	li a0, 64
	sw a0, 0(a1)
	lw a1, 4(s0)
	beq a1, a0, label79
	li a0, 1
	mv a1, zero
label80:
	sh2add a2, a0, s0
	lw a3, 0(a2)
	xori t2, a3, 47
	xori a5, a3, 45
	xori a4, a3, 43
	sltiu t0, a5, 1
	sltiu t1, a4, 1
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
	beq a2, zero, label88
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
	bne a3, a5, label429
	divw a5, a2, a4
	li t0, 37
	bne a3, t0, label99
	remw a5, a2, a4
	li t0, 94
	bne a3, t0, label436
	j label683
label654:
	li a3, 1
	j label90
label83:
	addiw a0, a0, 1
	sh2add a3, a0, s0
	li a4, 64
	lw a2, 0(a3)
	beq a2, a4, label79
	j label80
label88:
	li a2, 32
	beq a3, a2, label83
	addiw a1, a1, 1
	addiw a4, a3, -48
	li a5, 32
	sh2add a2, a1, s1
	sw a4, 0(a2)
	addiw a2, a0, 1
	sh2add t0, a2, s0
	lw a3, 0(t0)
	beq a3, a5, label393
	j label654
label594:
	mulw t2, a4, a2
	mv t0, t2
	bne a5, zero, label596
	mv t0, t1
label596:
	li a5, 47
	bne a3, a5, label429
	divw a5, a2, a4
	li t0, 37
	bne a3, t0, label99
	remw a5, a2, a4
	li t0, 94
	bne a3, t0, label436
label683:
	beq a4, zero, label443
	mv a3, a4
	li a4, 1
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label101
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label101
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label101
	j label745
label429:
	mv a5, t0
	li t0, 37
	bne a3, t0, label99
	remw a5, a2, a4
	li t0, 94
	bne a3, t0, label436
	beq a4, zero, label443
	mv a3, a4
	li a4, 1
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label101
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label101
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label101
	j label706
label745:
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label101
	j label725
label99:
	li t0, 94
	bne a3, t0, label436
	beq a4, zero, label443
	mv a3, a4
	li a4, 1
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label101
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label101
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label101
label706:
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label101
label725:
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label101
	j label746
label436:
	mv a4, a5
label101:
	addiw a1, a1, -1
	sh2add a2, a1, s1
	sw a4, 0(a2)
	addiw a0, a0, 1
	sh2add a3, a0, s0
	li a4, 64
	lw a2, 0(a3)
	beq a2, a4, label79
	j label80
label746:
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label101
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label101
label104:
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label101
	j label104
label443:
	li a4, 1
	addiw a1, a1, -1
	sh2add a2, a1, s1
	sw a4, 0(a2)
	addiw a0, a0, 1
	sh2add a3, a0, s0
	li a4, 64
	lw a2, 0(a3)
	beq a2, a4, label79
	j label80
label90:
	addw t0, a0, a3
	sh2add a4, a4, a4
	sh2add t1, t0, s0
	slliw t0, a4, 1
	lw a5, 0(t1)
	addiw t1, t0, -48
	addw t0, a2, a3
	addw a4, a5, t1
	addiw a3, a3, 1
	sh2add t1, t0, s0
	sh2add a5, a1, s1
	li t0, 32
	sw a4, 0(a5)
	lw a5, 0(t1)
	beq a5, t0, label93
	j label90
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
label93:
	addw a0, a0, a3
	sh2add a3, a0, s0
	li a4, 64
	lw a2, 0(a3)
	beq a2, a4, label79
	j label80
label393:
	li a3, 1
	addw a0, a0, a3
	sh2add a3, a0, s0
	li a4, 64
	lw a2, 0(a3)
	beq a2, a4, label79
	j label80