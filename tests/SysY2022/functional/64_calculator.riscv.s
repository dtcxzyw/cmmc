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
	xori a3, a0, 10
	sltu a1, zero, a2
	sltu a2, zero, a3
pcrel778:
	auipc a3, %pcrel_hi(get)
	and a1, a1, a2
	addi s3, a3, %pcrel_lo(pcrel778)
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
	j label2
label131:
	mv a0, zero
	mv a3, zero
	li a4, 1
	mv a1, zero
	sh2add a1, a4, s0
	li a0, 64
	sw a0, 0(a1)
	lw a1, 4(s0)
	beq a1, a0, label110
label689:
	li a0, 1
	mv a1, zero
	j label82
label80:
	sh2add a1, a4, s0
	li a0, 64
	sw a0, 0(a1)
	lw a1, 4(s0)
	beq a1, a0, label110
	j label689
label82:
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
	beq a2, zero, label103
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
	bne a3, a5, label392
	divw a5, a2, a4
	li t0, 37
	bne a3, t0, label89
	remw a5, a2, a4
	li t0, 94
	bne a3, t0, label399
label683:
	beq a4, zero, label403
	mv a3, a4
	li a4, 1
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label95
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label95
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label95
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label95
	j label726
label89:
	li t0, 94
	bne a3, t0, label399
	beq a4, zero, label403
	mv a3, a4
	li a4, 1
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label95
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label95
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label95
	j label707
label726:
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label95
	j label745
label399:
	mv a4, a5
	addiw a1, a1, -1
	sh2add a2, a1, s1
	sw a5, 0(a2)
	addiw a0, a0, 1
	sh2add a4, a0, s0
	li a3, 64
	lw a2, 0(a4)
	beq a2, a3, label110
	j label82
label103:
	li a2, 32
	beq a3, a2, label101
	addiw a1, a1, 1
	addiw a4, a3, -48
	li a5, 32
	sh2add a2, a1, s1
	sw a4, 0(a2)
	addiw a2, a0, 1
	sh2add t0, a2, s0
	lw a3, 0(t0)
	beq a3, a5, label437
	j label655
label745:
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label95
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label95
	j label92
label403:
	li a4, 1
	addiw a1, a1, -1
	sh2add a2, a1, s1
	sw a4, 0(a2)
	addiw a0, a0, 1
	sh2add a4, a0, s0
	li a3, 64
	lw a2, 0(a4)
	beq a2, a3, label110
	j label82
label92:
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label95
	j label92
label594:
	mulw t2, a4, a2
	mv t0, t2
	bne a5, zero, label596
	mv t0, t1
label596:
	li a5, 47
	bne a3, a5, label392
	divw a5, a2, a4
	li t0, 37
	bne a3, t0, label89
	remw a5, a2, a4
	li t0, 94
	bne a3, t0, label399
	j label683
label392:
	mv a5, t0
	li t0, 37
	bne a3, t0, label89
	remw a5, a2, a4
	li t0, 94
	bne a3, t0, label399
	beq a4, zero, label403
	mv a3, a4
	li a4, 1
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label95
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label95
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label95
label707:
	mulw a4, a2, a4
	addiw a3, a3, -1
	beq a3, zero, label95
	j label726
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
	mv a3, zero
	li a4, 1
	mv a1, zero
	ble s4, zero, label79
	mv t0, s3
	lw a2, 0(s3)
	li t0, 10
	addiw a5, a2, -48
	bgeu a5, t0, label12
	sh2add t0, a4, s0
	li a1, 1
	addiw a4, a4, 1
	sw a2, 0(t0)
	ble s4, a1, label79
	sh2add t0, a1, s3
	lw a2, 0(t0)
	li t0, 10
	addiw a5, a2, -48
	bgeu a5, t0, label12
	sh2add t0, a4, s0
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a2, 0(t0)
	ble s4, a1, label79
	j label711
label79:
	ble a3, zero, label80
	addiw a1, a3, -4
	ble a1, zero, label114
	j label117
label12:
	li a5, 40
	bne a2, a5, label14
	addiw a3, a3, 1
	li t0, 40
	sh2add a5, a3, s2
	sw t0, 0(a5)
	li a5, 94
	bne a2, a5, label164
	addiw a5, a3, 1
	li t0, 94
	sh2add a3, a5, s2
	sw t0, 0(a3)
	li a3, 41
	bne a2, a3, label24
	sh2add t1, a5, s2
	addiw a3, a5, -1
	lw t0, 0(t1)
	mv a5, t0
	li t0, 40
	beq a5, t0, label176
	sh2add t0, a4, s0
	li t1, 32
	addiw a4, a4, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	sh2add t0, a3, s2
	addiw a3, a3, -1
	lw a5, 0(t0)
	li t0, 40
	beq a5, t0, label176
label732:
	sh2add t0, a4, s0
	li t1, 32
	addiw a4, a4, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	sh2add t0, a3, s2
	addiw a3, a3, -1
	lw a5, 0(t0)
	j label19
label14:
	li a5, 94
	bne a2, a5, label164
	addiw a5, a3, 1
	li t0, 94
	sh2add a3, a5, s2
	sw t0, 0(a3)
	li a3, 41
	bne a2, a3, label24
	sh2add t1, a5, s2
	addiw a3, a5, -1
	lw t0, 0(t1)
	mv a5, t0
	li t0, 40
	beq a5, t0, label176
	sh2add t0, a4, s0
	li t1, 32
	addiw a4, a4, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	sh2add t0, a3, s2
	addiw a3, a3, -1
	lw a5, 0(t0)
	li t0, 40
	beq a5, t0, label176
	sh2add t0, a4, s0
	addiw a4, a4, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	sh2add t0, a3, s2
	addiw a3, a3, -1
	lw a5, 0(t0)
	li t0, 40
	beq a5, t0, label176
	j label732
label19:
	li t0, 40
	beq a5, t0, label176
	j label732
label176:
	mv a5, a3
	li t0, 43
	bne a2, t0, label34
	j label606
label286:
	mv a2, a5
	j label63
label716:
	sh2add t0, a1, s3
	lw a2, 0(t0)
	li t0, 10
	addiw a5, a2, -48
	bgeu a5, t0, label12
	j label734
label63:
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
	beq a5, zero, label67
	sh2add a5, a2, s0
	li t0, 32
	addiw a3, a3, -1
	addiw a2, a2, 2
	sw t0, 0(a5)
	sw a4, 4(a5)
	bne a3, zero, label63
	addiw a3, a3, 1
	li a5, 37
	sh2add a4, a3, s2
	sw a5, 0(a4)
	mv a5, a2
	sh2add a2, a2, s0
	addiw a4, a5, 1
	addiw a1, a1, 1
	sw t0, 0(a2)
	ble a0, a1, label79
	sh2add t0, a1, s3
	lw a2, 0(t0)
	li t0, 10
	addiw a5, a2, -48
	bgeu a5, t0, label12
	sh2add t0, a4, s0
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a2, 0(t0)
	ble a0, a1, label79
	sh2add t0, a1, s3
	lw a2, 0(t0)
	li t0, 10
	addiw a5, a2, -48
	bgeu a5, t0, label12
	sh2add t0, a4, s0
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a2, 0(t0)
	ble a0, a1, label79
	j label716
label67:
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
	sh2add t0, a4, s0
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a2, 0(t0)
	ble a0, a1, label79
	sh2add t0, a1, s3
	lw a2, 0(t0)
	li t0, 10
	addiw a5, a2, -48
	bgeu a5, t0, label12
	sh2add t0, a4, s0
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a2, 0(t0)
	ble a0, a1, label79
	sh2add t0, a1, s3
	lw a2, 0(t0)
	li t0, 10
	addiw a5, a2, -48
	bgeu a5, t0, label12
	sh2add t0, a4, s0
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a2, 0(t0)
	ble a0, a1, label79
	j label711
label164:
	mv a5, a3
	li a3, 41
	bne a2, a3, label24
	sh2add t1, a5, s2
	addiw a3, a5, -1
	lw t0, 0(t1)
	mv a5, t0
	li t0, 40
	beq a5, t0, label176
	sh2add t0, a4, s0
	li t1, 32
	addiw a4, a4, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	sh2add t0, a3, s2
	addiw a3, a3, -1
	lw a5, 0(t0)
	li t0, 40
	beq a5, t0, label176
	sh2add t0, a4, s0
	addiw a4, a4, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	sh2add t0, a3, s2
	addiw a3, a3, -1
	lw a5, 0(t0)
	li t0, 40
	beq a5, t0, label176
	j label732
label606:
	mv a3, a4
	mv a4, a5
	j label27
label24:
	li t0, 43
	bne a2, t0, label34
	j label606
label711:
	sh2add t0, a1, s3
	lw a2, 0(t0)
	li t0, 10
	addiw a5, a2, -48
	bgeu a5, t0, label12
	j label730
label95:
	addiw a1, a1, -1
	sh2add a2, a1, s1
	sw a4, 0(a2)
	addiw a0, a0, 1
	sh2add a4, a0, s0
	li a3, 64
	lw a2, 0(a4)
	beq a2, a3, label110
	j label82
label101:
	addiw a0, a0, 1
	sh2add a4, a0, s0
	li a3, 64
	lw a2, 0(a4)
	beq a2, a3, label110
	j label82
label734:
	sh2add t0, a4, s0
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a2, 0(t0)
	ble a0, a1, label79
	j label711
label60:
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
	sh2add t0, a4, s0
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a2, 0(t0)
	ble a0, a1, label79
	sh2add t0, a1, s3
	lw a2, 0(t0)
	li t0, 10
	addiw a5, a2, -48
	bgeu a5, t0, label12
	sh2add t0, a4, s0
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a2, 0(t0)
	ble a0, a1, label79
	j label716
label730:
	sh2add t0, a4, s0
	addiw a1, a1, 1
	addiw a4, a4, 1
	sw a2, 0(t0)
	ble a0, a1, label79
	j label711
label609:
	mv a3, a4
	mv a4, a5
	j label37
label27:
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
	beq t0, zero, label31
	sh2add t0, a3, s0
	li t1, 32
	addiw a4, a4, -1
	addiw a3, a3, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	bne a4, zero, label27
	addiw a5, a4, 1
	li t0, 43
	sh2add a4, a5, s2
	sw t0, 0(a4)
	mv a4, a3
	li t0, 45
	bne a2, t0, label44
	j label609
label31:
	addiw a5, a4, 1
	li t0, 43
	sh2add a4, a5, s2
	sw t0, 0(a4)
	mv a4, a3
label34:
	li t0, 45
	bne a2, t0, label44
	j label609
label611:
	mv a3, a4
	mv a4, a5
	j label47
label37:
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
	sltiu t2, t1, 1
	xori t1, a5, 37
	or t0, t0, t2
	sltiu t2, t1, 1
	xori t1, a5, 94
	or t0, t0, t2
	sltiu t2, t1, 1
	or t0, t0, t2
	beq t0, zero, label41
	sh2add t0, a3, s0
	li t1, 32
	addiw a4, a4, -1
	addiw a3, a3, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	bne a4, zero, label37
	addiw a5, a4, 1
	li t0, 45
	sh2add a4, a5, s2
	sw t0, 0(a4)
	mv a4, a3
	li t0, 42
	bne a2, t0, label254
	j label611
label41:
	addiw a5, a4, 1
	li t0, 45
	sh2add a4, a5, s2
	sw t0, 0(a4)
	mv a4, a3
label44:
	li t0, 42
	bne a2, t0, label254
	j label611
label47:
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
	beq t0, zero, label51
	sh2add t0, a3, s0
	li t1, 32
	addiw a4, a4, -1
	addiw a3, a3, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	bne a4, zero, label47
	addiw a4, a4, 1
	li t0, 42
	sh2add a5, a4, s2
	sw t0, 0(a5)
	li a5, 47
	bne a2, a5, label283
	j label70
label51:
	addiw a4, a4, 1
	li t0, 42
	sh2add a5, a4, s2
	sw t0, 0(a5)
	li a5, 47
	bne a2, a5, label283
label70:
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
	beq t0, zero, label73
	sh2add t0, a3, s0
	li t1, 32
	addiw a4, a4, -1
	addiw a3, a3, 2
	sw t1, 0(t0)
	sw a5, 4(t0)
	bne a4, zero, label70
	addiw t0, a4, 1
	li t1, 47
	mv a5, a3
	sh2add a4, t0, s2
	mv a3, t0
	sw t1, 0(a4)
	li a4, 37
	bne a2, a4, label60
	j label286
label254:
	mv a3, a4
	mv a4, a5
	li a5, 47
	bne a2, a5, label283
	j label70
label283:
	mv a5, a3
	mv a3, a4
	li a4, 37
	bne a2, a4, label60
	j label286
label655:
	li a3, 1
	j label105
label437:
	li a3, 1
	addw a0, a0, a3
	sh2add a4, a0, s0
	li a3, 64
	lw a2, 0(a4)
	beq a2, a3, label110
	j label82
label105:
	addw t1, a0, a3
	sh2add a4, a4, a4
	sh2add t0, t1, s0
	lw a5, 0(t0)
	slliw t0, a4, 1
	addiw t1, t0, -48
	addw a4, a5, t1
	addw t1, a2, a3
	sh2add a5, a1, s1
	addiw a3, a3, 1
	sh2add t0, t1, s0
	sw a4, 0(a5)
	lw a5, 0(t0)
	li t0, 32
	beq a5, t0, label108
	j label105
label73:
	addiw t0, a4, 1
	li t1, 47
	mv a5, a3
	sh2add a4, t0, s2
	mv a3, t0
	sw t1, 0(a4)
	li a4, 37
	bne a2, a4, label60
	j label286
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
label110:
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
label108:
	addw a0, a0, a3
	sh2add a4, a0, s0
	li a3, 64
	lw a2, 0(a4)
	beq a2, a3, label110
	j label82
