.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
ints:
	.zero	40000
.align 8
chas:
	.zero	40000
.align 8
get:
	.zero	40000
.align 8
get2:
	.zero	40000
.text
.p2align 2
.globl main
main:
	addi sp, sp, -112
	sd ra, 0(sp)
	sd s9, 8(sp)
	sd s5, 16(sp)
	sd s0, 24(sp)
	sd s1, 32(sp)
	sd s6, 40(sp)
	sd s7, 48(sp)
	sd s2, 56(sp)
	sd s3, 64(sp)
	sd s4, 72(sp)
	sd s8, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getch
	li s4, 94
	li s3, 37
	li s2, 47
	li s7, 10
	li s6, 40
	li s0, 32
	xori a4, a0, 10
pcrel778:
	auipc a5, %pcrel_hi(get)
	li s8, 41
	xori a1, a0, 13
	sltu a3, zero, a4
	addi s9, a5, %pcrel_lo(pcrel778)
	sltu a2, zero, a1
	and a1, a2, a3
pcrel779:
	auipc a3, %pcrel_hi(ints)
pcrel780:
	auipc a2, %pcrel_hi(chas)
	addi t1, a3, %pcrel_lo(pcrel779)
	addi s5, a2, %pcrel_lo(pcrel780)
	sd t1, 104(sp)
pcrel781:
	auipc a2, %pcrel_hi(get2)
	addi s1, a2, %pcrel_lo(pcrel781)
	beq a1, zero, label157
	mv s10, s9
	mv s11, zero
.p2align 2
label3:
	sw a0, 0(s10)
	jal getch
	addiw s11, s11, 1
	xori a3, a0, 10
	xori a2, a0, 13
	sltu a4, zero, a3
	sltu a1, zero, a2
	and a2, a1, a4
	beq a2, zero, label165
	addi s10, s10, 4
	j label3
label165:
	mv a0, s11
	addi a5, s1, 4
	mv a1, s9
	mv a4, zero
	li t1, 1
	mv a2, zero
label10:
	ble a0, a2, label101
.p2align 2
label16:
	lw a3, 0(a1)
	addiw a2, a2, 1
	addiw t0, a3, -48
	bltu t0, s7, label17
	beq a3, s6, label100
	j label706
.p2align 2
label17:
	sw a3, 0(a5)
	addiw t1, t1, 1
	addi a1, a1, 4
	addi a5, a5, 4
	bgt a0, a2, label16
label101:
	ble a4, zero, label102
	addiw a0, a4, -4
	ble a0, zero, label497
	sh2add a0, a4, s5
.p2align 2
label133:
	lw a2, 0(a0)
	sh2add a1, t1, s1
	addiw a4, a4, -4
	addiw t1, t1, 8
	sw s0, 0(a1)
	sw a2, 4(a1)
	lw a3, -4(a0)
	sw s0, 8(a1)
	sw a3, 12(a1)
	lw a5, -8(a0)
	sw s0, 16(a1)
	sw a5, 20(a1)
	lw a2, -12(a0)
	sw s0, 24(a1)
	sw a2, 28(a1)
	li a1, 4
	ble a4, a1, label497
	addi a0, a0, -16
	j label133
.p2align 2
label706:
	beq a3, s4, label99
	j label725
.p2align 2
label34:
	sh2add a4, t0, s5
	mv a5, t1
.p2align 2
label35:
	lw t1, 0(a4)
	xori a6, t1, 42
	xori t4, t1, 45
	xori a7, t1, 47
	xori t3, t1, 43
	sltiu t5, t4, 1
	sltiu t6, a7, 1
	sltiu t2, t3, 1
	sltiu t4, a6, 1
	xori a7, t1, 94
	or t3, t2, t5
	xori a6, t1, 37
	or t5, t4, t6
	sltiu t6, a7, 1
	sltiu t4, a6, 1
	or t2, t3, t5
	or t5, t4, t6
	or t3, t2, t5
	beq t3, zero, label235
	sh2add t2, a5, s1
	addiw t0, t0, -1
	addiw a5, a5, 2
	sw s0, 0(t2)
	sw t1, 4(t2)
	beq t0, zero, label235
	addi a4, a4, -4
	j label35
.p2align 2
label99:
	addiw t0, a4, 1
	sh2add a5, t0, s5
	sw s4, 0(a5)
	beq a3, s8, label23
	li a4, 43
	beq a3, a4, label34
	mv a5, t1
	li a4, 45
	beq a3, a4, label47
	j label726
.p2align 2
label213:
	mv t0, a5
	li a4, 43
	beq a3, a4, label34
	mv a5, t1
	li a4, 45
	bne a3, a4, label727
.p2align 2
label47:
	sh2add a4, t0, s5
.p2align 2
label48:
	lw t1, 0(a4)
	xori t6, t1, 42
	xori t4, t1, 45
	xori t2, t1, 43
	sltiu t5, t4, 1
	sltiu t3, t2, 1
	sltiu t4, t6, 1
	or t2, t3, t5
	xori t5, t1, 47
	sltiu a6, t5, 1
	xori t5, t1, 37
	or t6, t4, a6
	sltiu t4, t5, 1
	or t3, t2, t6
	xori t2, t1, 94
	sltiu a6, t2, 1
	or t6, t4, a6
	or t5, t3, t6
	beq t5, zero, label52
	sh2add t2, a5, s1
	addiw t0, t0, -1
	addiw a5, a5, 2
	sw s0, 0(t2)
	sw t1, 4(t2)
	beq t0, zero, label52
	addi a4, a4, -4
	j label48
.p2align 2
label235:
	addiw t0, t0, 1
	li t1, 43
	sh2add a4, t0, s5
	sw t1, 0(a4)
	li a4, 45
	beq a3, a4, label47
	li a4, 42
	beq a3, a4, label89
	j label711
.p2align 2
label79:
	sh2add a3, a5, s5
	mv a4, t0
.p2align 2
label80:
	lw t0, 0(a3)
	xori t6, t0, 94
	xori t5, t0, 37
	xori t3, t0, 47
	xori t1, t0, 42
	sltiu t4, t3, 1
	sltiu t2, t1, 1
	sltiu t3, t5, 1
	or t1, t2, t4
	sltiu t2, t6, 1
	or t5, t3, t2
	or t4, t1, t5
	beq t4, zero, label339
	sh2add t1, a4, s1
	addiw a5, a5, -1
	addiw a4, a4, 2
	sw s0, 0(t1)
	sw t0, 4(t1)
	beq a5, zero, label352
	addi a3, a3, -4
	j label80
.p2align 2
label89:
	sh2add a4, t0, s5
.p2align 2
label90:
	lw t1, 0(a4)
	xori a6, t1, 94
	xori t5, t1, 37
	xori t4, t1, 47
	xori t2, t1, 42
	sltiu t6, t4, 1
	sltiu t3, t2, 1
	sltiu t4, t5, 1
	or t2, t3, t6
	sltiu t6, a6, 1
	or t3, t4, t6
	or t5, t2, t3
	beq t5, zero, label365
	sh2add t2, a5, s1
	addiw t0, t0, -1
	addiw a5, a5, 2
	sw s0, 0(t2)
	sw t1, 4(t2)
	bne t0, zero, label95
	addiw t1, t0, 1
	li t2, 42
	sh2add a4, t1, s5
	sw t2, 0(a4)
	beq a3, s2, label63
	mv t0, a5
	mv a5, t1
	beq a3, s3, label79
	mv a4, t1
	sh2add a3, t0, s1
	addiw t1, t0, 1
	addi a1, a1, 4
	sw s0, 0(a3)
	sh2add a5, t1, s1
	bgt a0, a2, label16
	j label101
.p2align 2
label52:
	addiw t0, t0, 1
	li t1, 45
	sh2add a4, t0, s5
	sw t1, 0(a4)
	li a4, 42
	beq a3, a4, label89
	mv t1, t0
	bne a3, s2, label736
.p2align 2
label63:
	sh2add a4, t1, s5
	mv t0, t1
.p2align 2
label64:
	lw t1, 0(a4)
	xori a6, t1, 94
	xori t6, t1, 37
	xori t3, t1, 47
	xori t2, t1, 42
	sltiu t5, t3, 1
	sltiu t4, t2, 1
	sltiu t3, t6, 1
	or t2, t4, t5
	sltiu t4, a6, 1
	or t6, t3, t4
	or t5, t2, t6
	bne t5, zero, label71
.p2align 2
label68:
	addiw a4, t0, 1
	mv t0, a5
	sh2add t1, a4, s5
	mv a5, a4
	sw s2, 0(t1)
	beq a3, s3, label79
	j label714
.p2align 2
label71:
	sh2add t2, a5, s1
	addiw t0, t0, -1
	addiw a5, a5, 2
	sw s0, 0(t2)
	sw t1, 4(t2)
	beq t0, zero, label68
	addi a4, a4, -4
	j label64
.p2align 2
label95:
	addi a4, a4, -4
	j label90
.p2align 2
label725:
	mv t0, a4
	bne a3, s8, label743
.p2align 2
label23:
	sh2add a4, t0, s5
	addiw a5, t0, -1
	lw t2, 0(a4)
	beq t2, s6, label201
	sh2add a4, t1, s1
	mv t0, t2
.p2align 2
label25:
	sw s0, 0(a4)
	sh2add t2, a5, s5
	addiw t1, t1, 2
	addiw a5, a5, -1
	sw t0, 4(a4)
	lw t0, 0(t2)
	beq t0, s6, label213
	addi a4, a4, 8
	j label25
.p2align 2
label100:
	addiw a4, a4, 1
	sh2add a5, a4, s5
	sw s6, 0(a5)
	beq a3, s4, label99
	mv t0, a4
	beq a3, s8, label23
	li a4, 43
	beq a3, a4, label34
	j label708
.p2align 2
label743:
	li a4, 43
	beq a3, a4, label34
.p2align 2
label708:
	mv a5, t1
	li a4, 45
	beq a3, a4, label47
.p2align 2
label726:
	li a4, 42
	beq a3, a4, label89
label733:
	mv t1, t0
.p2align 2
label60:
	beq a3, s2, label63
.p2align 2
label290:
	mv t0, a5
	mv a5, t1
	beq a3, s3, label79
.p2align 2
label713:
	mv a4, a5
	sh2add a3, t0, s1
	addiw t1, t0, 1
	addi a1, a1, 4
	sw s0, 0(a3)
	sh2add a5, t1, s1
	bgt a0, a2, label16
	j label101
.p2align 2
label711:
	mv t1, t0
	beq a3, s2, label63
	j label290
.p2align 2
label736:
	mv t0, a5
	mv a5, t1
	beq a3, s3, label79
	j label713
label727:
	li a4, 42
	beq a3, a4, label89
	j label733
label497:
	sh2add a0, a4, s5
label140:
	lw a1, 0(a0)
	sh2add a2, t1, s1
	addiw a4, a4, -1
	addiw t1, t1, 2
	sw s0, 0(a2)
	sw a1, 4(a2)
	ble a4, zero, label102
	addi a0, a0, -4
	j label140
label102:
	sh2add a0, t1, s1
	li a4, 64
	sw a4, 0(a0)
	lw a1, 4(s1)
	beq a1, a4, label104
	li a2, 1
	mv a0, zero
	j label105
label104:
	ld t1, 104(sp)
	lw a0, 4(t1)
	jal putint
	mv a0, zero
	ld ra, 0(sp)
	ld s9, 8(sp)
	ld s5, 16(sp)
	ld s0, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s7, 48(sp)
	ld s2, 56(sp)
	ld s3, 64(sp)
	ld s4, 72(sp)
	ld s8, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 112
	ret
.p2align 2
label105:
	sh2add a1, a2, s1
	lw a3, 0(a1)
	xori t6, a3, 37
	xori t1, a3, 42
	xori t2, a3, 45
	xori a4, a3, 43
	sltiu a5, t2, 1
	sltiu t0, a4, 1
	xori t2, a3, 47
	sltiu a4, t1, 1
	or a1, t0, a5
	sltiu t3, t2, 1
	sltiu t2, t6, 1
	or t4, a4, t3
	or t1, a1, t4
	xori a1, a3, 94
	sltiu t5, a1, 1
	addiw a1, a2, 1
	or t4, t2, t5
	or t3, t1, t4
	bne t3, zero, label118
	j label108
.p2align 2
label458:
	mv a2, a1
	j label105
.p2align 2
label721:
	bne a3, s4, label731
.p2align 2
label126:
	beq t1, zero, label485
	mv a3, t1
	li a4, 1
.p2align 2
label127:
	mulw a4, a2, a4
	addiw a3, a3, -1
	bne a3, zero, label127
	addiw a0, a0, -1
	ld t1, 104(sp)
	sh2add a2, a0, t1
	sw a4, 0(a2)
	li a4, 64
	sh2add a2, a1, s1
	lw a3, 0(a2)
	bne a3, a4, label458
	j label104
.p2align 2
label118:
	ld t1, 104(sp)
	sh2add t3, a0, t1
	lw t1, 0(t3)
	lw a2, -4(t3)
	addw t4, t1, a2
	mv t2, t4
	bne t0, zero, label687
	mv t2, zero
.p2align 2
label687:
	subw t3, a2, t1
	mv t0, t3
	bne a5, zero, label689
	mv t0, t2
.p2align 2
label689:
	mulw t3, t1, a2
	mv a5, t3
	bne a4, zero, label691
	mv a5, t0
.p2align 2
label691:
	bne a3, s2, label471
	divw a4, a2, t1
	beq a3, s3, label130
	beq a3, s4, label126
.p2align 2
label124:
	addiw a0, a0, -1
	ld t1, 104(sp)
	sh2add a2, a0, t1
	sw a4, 0(a2)
	li a4, 64
	sh2add a2, a1, s1
	lw a3, 0(a2)
	bne a3, a4, label458
	j label104
.p2align 2
label471:
	mv a4, a5
	bne a3, s3, label721
.p2align 2
label130:
	remw a4, a2, t1
	beq a3, s4, label126
	addiw a0, a0, -1
	ld t1, 104(sp)
	sh2add a2, a0, t1
	sw a4, 0(a2)
	li a4, 64
	sh2add a2, a1, s1
	lw a3, 0(a2)
	bne a3, a4, label458
	j label104
label108:
	bne a3, s0, label109
label115:
	sh2add a2, a1, s1
	li a4, 64
	lw a3, 0(a2)
	bne a3, a4, label458
	j label104
label109:
	addiw a0, a0, 1
	addiw a4, a3, -48
	ld t1, 104(sp)
	sh2add a5, a0, t1
	sh2add t1, a1, s1
	sw a4, 0(a5)
	lw t0, 0(t1)
	beq t0, s0, label431
	li a3, 1
.p2align 2
label112:
	addw t0, a2, a3
	sh2add t1, a4, a4
	sh2add t2, t0, s1
	slliw t0, t1, 1
	lw a5, 0(t2)
	ld t1, 104(sp)
	addi t2, t0, -48
	sh2add t3, a0, t1
	addw a4, a5, t2
	addw t2, a1, a3
	addiw a3, a3, 1
	sh2add t0, t2, s1
	sw a4, 0(t3)
	lw a5, 0(t0)
	bne a5, s0, label112
	addw a1, a2, a3
	j label115
label201:
	mv t0, a5
	li a4, 43
	beq a3, a4, label34
	mv a5, t1
	li a4, 45
	beq a3, a4, label47
	li a4, 42
	beq a3, a4, label89
	mv t1, t0
	beq a3, s2, label63
	j label290
.p2align 2
label352:
	mv a3, a4
	addi a1, a1, 4
	mv t0, a4
	addiw a4, a5, 1
	sh2add a3, a3, s1
	sh2add t1, a4, s5
	sw s3, 0(t1)
	addiw t1, t0, 1
	sw s0, 0(a3)
	sh2add a5, t1, s1
	bgt a0, a2, label16
	j label101
.p2align 2
label714:
	mv a4, a5
	sh2add a3, t0, s1
	addiw t1, t0, 1
	addi a1, a1, 4
	sw s0, 0(a3)
	sh2add a5, t1, s1
	bgt a0, a2, label16
	j label101
.p2align 2
label731:
	addiw a0, a0, -1
	ld t1, 104(sp)
	sh2add a2, a0, t1
	sw a4, 0(a2)
	li a4, 64
	sh2add a2, a1, s1
	lw a3, 0(a2)
	bne a3, a4, label458
	j label104
label339:
	mv a3, a4
	addiw a4, a5, 1
	mv t0, a3
	addi a1, a1, 4
	sh2add t1, a4, s5
	sh2add a3, a3, s1
	sw s3, 0(t1)
	addiw t1, t0, 1
	sw s0, 0(a3)
	sh2add a5, t1, s1
	bgt a0, a2, label16
	j label101
label365:
	addiw t1, t0, 1
	li t2, 42
	sh2add a4, t1, s5
	sw t2, 0(a4)
	j label60
label431:
	li a3, 1
	addw a1, a2, a3
	j label115
label157:
	mv a0, zero
	addi a5, s1, 4
	mv a1, s9
	mv a4, zero
	li t1, 1
	mv a2, zero
	j label10
label485:
	li a4, 1
	j label124
