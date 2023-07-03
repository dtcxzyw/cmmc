.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
temp:
	.zero	8388608
.align 4
a:
	.zero	8388608
.align 4
b:
	.zero	8388608
.text
multiply:
	addi sp, sp, -24
	sd s0, 16(sp)
	sd s1, 8(sp)
	sd ra, 0(sp)
	mv s1, a1
	mv s0, a0
	bne a1, zero, label4
	mv a0, zero
label2:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s0, 16(sp)
	addi sp, sp, 24
	ret
label4:
	li a0, 1
	bne s1, a0, label6
	li a0, 288737297
	mul a0, s0, a0
	srai a1, a0, 58
	srli a0, a0, 63
	add a0, a0, a1
	li a1, 998244353
	mulw a0, a0, a1
	subw a0, s0, a0
	j label2
label6:
	srliw a0, s1, 31
	add a0, s1, a0
	sraiw a1, a0, 1
	mv a0, s0
	jal multiply
	li a1, 288737297
	slliw a0, a0, 1
	mul a1, a0, a1
	srai a2, a1, 58
	srli a1, a1, 63
	add a1, a1, a2
	li a2, 998244353
	mulw a1, a1, a2
	li a2, 1
	subw a0, a0, a1
	li a1, -2147483647
	and a1, s1, a1
	bne a1, a2, label2
	addw a0, s0, a0
	li a1, 288737297
	mul a1, a0, a1
	srai a2, a1, 58
	srli a1, a1, 63
	add a1, a1, a2
	li a2, 998244353
	mulw a1, a1, a2
	subw a0, a0, a1
	j label2
power:
	addi sp, sp, -24
	sd s0, 16(sp)
	sd s1, 8(sp)
	sd ra, 0(sp)
	mv s1, a1
	mv s0, a0
	bne a1, zero, label381
	li a0, 1
label379:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s0, 16(sp)
	addi sp, sp, 24
	ret
label381:
	srliw a0, s1, 31
	add a0, s1, a0
	sraiw a1, a0, 1
	mv a0, s0
	jal power
	mv a1, a0
	jal multiply
	li a2, 1
	li a1, -2147483647
	and a1, s1, a1
	bne a1, a2, label379
	mv a1, s0
	jal multiply
	j label379
fft:
	addi sp, sp, -48
	sd s1, 40(sp)
	sd s2, 32(sp)
	sd s0, 24(sp)
	sd s3, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	mv s0, a3
	mv s2, a1
	mv s1, a0
	li a0, 1
	bne a2, a0, label67
	j label66
label67:
	srliw a0, a2, 31
	mv a1, zero
	add a0, a2, a0
	sraiw s3, a0, 1
pcrel377:
	auipc a0, %pcrel_hi(temp)
	addi a0, a0, %pcrel_lo(pcrel377)
	ble a2, zero, label74
	andi a3, zero, 1
	bne a3, zero, label73
	addw a3, s2, zero
	sh2add a3, a3, s1
	lw a3, 0(a3)
	srliw a4, zero, 31
	add a4, zero, a4
	sraiw a4, a4, 1
	sh2add a4, a4, a0
	sw a3, 0(a4)
	addiw a1, zero, 1
	ble a2, a1, label74
	andi a3, a1, 1
	bne a3, zero, label73
	addw a3, s2, a1
	sh2add a3, a3, s1
	lw a3, 0(a3)
	srliw a4, a1, 31
	add a4, a1, a4
	sraiw a4, a4, 1
	sh2add a4, a4, a0
	sw a3, 0(a4)
	addiw a1, a1, 1
	ble a2, a1, label74
	andi a3, a1, 1
	bne a3, zero, label73
	addw a3, s2, a1
	sh2add a3, a3, s1
	lw a3, 0(a3)
	srliw a4, a1, 31
	add a4, a1, a4
	sraiw a4, a4, 1
	sh2add a4, a4, a0
	sw a3, 0(a4)
	addiw a1, a1, 1
	ble a2, a1, label74
	andi a3, a1, 1
	bne a3, zero, label73
	addw a3, s2, a1
	sh2add a3, a3, s1
	lw a3, 0(a3)
	srliw a4, a1, 31
	add a4, a1, a4
	sraiw a4, a4, 1
	sh2add a4, a4, a0
	sw a3, 0(a4)
	addiw a1, a1, 1
	ble a2, a1, label74
	j label360
label74:
	ble a2, zero, label75
	mv a1, zero
	addiw a3, zero, 4
	ble a2, a3, label83
	j label82
label83:
	addiw a3, a1, 4
	ble a2, a3, label86
	j label85
label86:
	addiw a3, a1, 4
	ble a2, a3, label89
	j label88
label360:
	andi a3, a1, 1
	bne a3, zero, label73
label355:
	addw a3, s2, a1
	sh2add a3, a3, s1
	lw a3, 0(a3)
	srliw a4, a1, 31
	add a4, a1, a4
	sraiw a4, a4, 1
	sh2add a4, a4, a0
	sw a3, 0(a4)
	addiw a1, a1, 1
	ble a2, a1, label74
	andi a3, a1, 1
	bne a3, zero, label73
	j label355
label75:
	mv a0, s0
	mv a1, s0
	jal multiply
	mv s4, a0
	mv a0, s1
	mv a1, s2
	mv a2, s3
	mv a3, s4
	jal fft
	mv a0, s1
	addw a1, s2, s3
	mv a2, s3
	mv a3, s4
	jal fft
	mv a3, zero
	li a4, 1
	ble s3, zero, label66
label79:
	addw a0, s3, a3
	addw a0, s2, a0
	sh2add a5, a0, s1
	addw a0, s2, a3
	sh2add t0, a0, s1
	lw t1, 0(t0)
	lw a1, 0(a5)
	mv a0, a4
	jal multiply
	li a1, 288737297
	addw t2, t1, a0
	mul a2, t2, a1
	srai t3, a2, 58
	srli a2, a2, 63
	add t3, a2, t3
	li a2, 998244353
	mulw t3, t3, a2
	subw t2, t2, t3
	sw t2, 0(t0)
	subw a0, t1, a0
	addw a0, a0, a2
	mul a1, a0, a1
	srai t0, a1, 58
	srli a1, a1, 63
	add a1, a1, t0
	mulw a1, a1, a2
	subw a0, a0, a1
	sw a0, 0(a5)
	mv a0, a4
	mv a1, s0
	jal multiply
	mv a4, a0
	addiw a3, a3, 1
	ble s3, a3, label66
	j label79
label89:
	addw a3, s2, a1
	sh2add a4, a1, a0
	sh2add a3, a3, s1
	lw a4, 0(a4)
	sw a4, 0(a3)
	addiw a1, a1, 1
	ble a2, a1, label75
	addw a3, s2, a1
	sh2add a4, a1, a0
	sh2add a3, a3, s1
	lw a4, 0(a4)
	sw a4, 0(a3)
	addiw a1, a1, 1
	ble a2, a1, label75
	addw a3, s2, a1
	sh2add a4, a1, a0
	sh2add a3, a3, s1
	lw a4, 0(a4)
	sw a4, 0(a3)
	addiw a1, a1, 1
	ble a2, a1, label75
	addw a3, s2, a1
	sh2add a4, a1, a0
	sh2add a3, a3, s1
	lw a4, 0(a4)
	sw a4, 0(a3)
	addiw a1, a1, 1
	ble a2, a1, label75
	addw a3, s2, a1
	sh2add a4, a1, a0
	sh2add a3, a3, s1
	lw a4, 0(a4)
	sw a4, 0(a3)
	addiw a1, a1, 1
	ble a2, a1, label75
	addw a3, s2, a1
	sh2add a4, a1, a0
	sh2add a3, a3, s1
	lw a4, 0(a4)
	sw a4, 0(a3)
	addiw a1, a1, 1
	ble a2, a1, label75
	addw a3, s2, a1
	sh2add a4, a1, a0
	sh2add a3, a3, s1
	lw a4, 0(a4)
	sw a4, 0(a3)
	addiw a1, a1, 1
	ble a2, a1, label75
	addw a3, s2, a1
	sh2add a4, a1, a0
	sh2add a3, a3, s1
	lw a4, 0(a4)
	sw a4, 0(a3)
	addiw a1, a1, 1
	ble a2, a1, label75
	addw a3, s2, a1
	sh2add a4, a1, a0
	sh2add a3, a3, s1
	lw a4, 0(a4)
	sw a4, 0(a3)
	addiw a1, a1, 1
	ble a2, a1, label75
	addw a3, s2, a1
	sh2add a4, a1, a0
	sh2add a3, a3, s1
	lw a4, 0(a4)
	sw a4, 0(a3)
	addiw a1, a1, 1
	ble a2, a1, label75
label366:
	addw a3, s2, a1
	sh2add a4, a1, a0
	sh2add a3, a3, s1
	lw a4, 0(a4)
	sw a4, 0(a3)
	addiw a1, a1, 1
	ble a2, a1, label75
	j label366
label73:
	srliw a3, a1, 31
	addw a4, s2, a1
	add a3, a1, a3
	sh2add a4, a4, s1
	sraiw a3, a3, 1
	lw a4, 0(a4)
	addw a3, s3, a3
	sh2add a3, a3, a0
	sw a4, 0(a3)
	addiw a1, a1, 1
	ble a2, a1, label74
	andi a3, a1, 1
	bne a3, zero, label73
	addw a3, s2, a1
	sh2add a3, a3, s1
	lw a3, 0(a3)
	srliw a4, a1, 31
	add a4, a1, a4
	sraiw a4, a4, 1
	sh2add a4, a4, a0
	sw a3, 0(a4)
	addiw a1, a1, 1
	ble a2, a1, label74
	andi a3, a1, 1
	bne a3, zero, label73
	addw a3, s2, a1
	sh2add a3, a3, s1
	lw a3, 0(a3)
	srliw a4, a1, 31
	add a4, a1, a4
	sraiw a4, a4, 1
	sh2add a4, a4, a0
	sw a3, 0(a4)
	addiw a1, a1, 1
	ble a2, a1, label74
	andi a3, a1, 1
	bne a3, zero, label73
	addw a3, s2, a1
	sh2add a3, a3, s1
	lw a3, 0(a3)
	srliw a4, a1, 31
	add a4, a1, a4
	sraiw a4, a4, 1
	sh2add a4, a4, a0
	sw a3, 0(a4)
	addiw a1, a1, 1
	ble a2, a1, label74
	andi a3, a1, 1
	bne a3, zero, label73
	addw a3, s2, a1
	sh2add a3, a3, s1
	lw a3, 0(a3)
	srliw a4, a1, 31
	add a4, a1, a4
	sraiw a4, a4, 1
	sh2add a4, a4, a0
	sw a3, 0(a4)
	addiw a1, a1, 1
	ble a2, a1, label74
	andi a3, a1, 1
	bne a3, zero, label73
	j label355
label82:
	addw a4, s2, a1
	sh2add a5, a4, s1
	sh2add a4, a1, a0
	lw t0, 0(a4)
	sw t0, 0(a5)
	lw t0, 4(a4)
	addiw a5, a1, 1
	addw a5, s2, a5
	sh2add a5, a5, s1
	sw t0, 0(a5)
	lw t0, 8(a4)
	addiw a5, a1, 2
	addw a5, s2, a5
	sh2add a5, a5, s1
	sw t0, 0(a5)
	lw a4, 12(a4)
	addiw a1, a1, 3
	addw a1, s2, a1
	sh2add a1, a1, s1
	sw a4, 0(a1)
	mv a1, a3
	addiw a3, a3, 4
	ble a2, a3, label83
	j label82
label85:
	addw a4, s2, a1
	sh2add a5, a4, s1
	sh2add a4, a1, a0
	lw t0, 0(a4)
	sw t0, 0(a5)
	lw t0, 4(a4)
	addiw a5, a1, 1
	addw a5, s2, a5
	sh2add a5, a5, s1
	sw t0, 0(a5)
	lw t0, 8(a4)
	addiw a5, a1, 2
	addw a5, s2, a5
	sh2add a5, a5, s1
	sw t0, 0(a5)
	lw a4, 12(a4)
	addiw a1, a1, 3
	addw a1, s2, a1
	sh2add a1, a1, s1
	sw a4, 0(a1)
	mv a1, a3
	addiw a3, a3, 4
	ble a2, a3, label86
	j label85
label88:
	addw a4, s2, a1
	sh2add a5, a4, s1
	sh2add a4, a1, a0
	lw t0, 0(a4)
	sw t0, 0(a5)
	lw t0, 4(a4)
	addiw a5, a1, 1
	addw a5, s2, a5
	sh2add a5, a5, s1
	sw t0, 0(a5)
	lw t0, 8(a4)
	addiw a5, a1, 2
	addw a5, s2, a5
	sh2add a5, a5, s1
	sw t0, 0(a5)
	lw a4, 12(a4)
	addiw a1, a1, 3
	addw a1, s2, a1
	sh2add a1, a1, s1
	sw a4, 0(a1)
	mv a1, a3
	addiw a3, a3, 4
	ble a2, a3, label89
	j label88
label66:
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s0, 24(sp)
	ld s2, 32(sp)
	ld s1, 40(sp)
	addi sp, sp, 48
	ret
.globl main
main:
	addi sp, sp, -32
	sd s0, 24(sp)
	sd s1, 16(sp)
	sd s2, 8(sp)
	sd ra, 0(sp)
pcrel549:
	auipc a0, %pcrel_hi(a)
	addi a0, a0, %pcrel_lo(pcrel549)
	mv s0, a0
	jal getarray
	addiw s1, a0, -1
pcrel550:
	auipc a0, %pcrel_hi(b)
	addi a0, a0, %pcrel_lo(pcrel550)
	mv s2, a0
	jal getarray
	addw s1, s1, a0
	li a0, 60
	jal _sysy_starttime
	li a0, 1
	ble s1, a0, label428
	slliw a0, a0, 1
	ble s1, a0, label433
	slliw a0, a0, 1
	ble s1, a0, label433
	slliw a0, a0, 1
	ble s1, a0, label433
	slliw a0, a0, 1
	ble s1, a0, label433
	slliw a0, a0, 1
	ble s1, a0, label433
	slliw a0, a0, 1
	ble s1, a0, label433
	slliw a0, a0, 1
	ble s1, a0, label433
	slliw a0, a0, 1
	ble s1, a0, label433
	slliw a0, a0, 1
	ble s1, a0, label433
	slliw a0, a0, 1
	ble s1, a0, label433
	j label535
label428:
	li t4, 1
	j label409
label535:
	slliw a0, a0, 1
	ble s1, a0, label433
	j label535
label409:
	li a0, 998244352
	divw t5, a0, t4
	li a0, 3
	mv a1, t5
	jal power
	mv t6, a0
	mv a0, s0
	mv a2, t4
	mv a1, zero
	mv a3, t6
	jal fft
	mv a0, s2
	mv a2, t4
	mv a1, zero
	mv a3, t6
	jal fft
	ble t4, zero, label413
	mv a3, zero
	sh2add a4, zero, s0
	lw a0, 0(a4)
	sh2add a1, zero, s2
	lw a1, 0(a1)
	jal multiply
	sw a0, 0(a4)
	addiw a3, a3, 1
	ble t4, a3, label413
	sh2add a4, a3, s0
	lw a0, 0(a4)
	sh2add a1, a3, s2
	lw a1, 0(a1)
	jal multiply
	sw a0, 0(a4)
	addiw a3, a3, 1
	ble t4, a3, label413
	sh2add a4, a3, s0
	lw a0, 0(a4)
	sh2add a1, a3, s2
	lw a1, 0(a1)
	jal multiply
	sw a0, 0(a4)
	addiw a3, a3, 1
	ble t4, a3, label413
	sh2add a4, a3, s0
	lw a0, 0(a4)
	sh2add a1, a3, s2
	lw a1, 0(a1)
	jal multiply
	sw a0, 0(a4)
	addiw a3, a3, 1
	ble t4, a3, label413
	sh2add a4, a3, s0
	lw a0, 0(a4)
	sh2add a1, a3, s2
	lw a1, 0(a1)
	jal multiply
	sw a0, 0(a4)
	addiw a3, a3, 1
	ble t4, a3, label413
	sh2add a4, a3, s0
	lw a0, 0(a4)
	sh2add a1, a3, s2
	lw a1, 0(a1)
	jal multiply
	sw a0, 0(a4)
	addiw a3, a3, 1
	ble t4, a3, label413
	sh2add a4, a3, s0
	lw a0, 0(a4)
	sh2add a1, a3, s2
	lw a1, 0(a1)
	jal multiply
	sw a0, 0(a4)
	addiw a3, a3, 1
	ble t4, a3, label413
	sh2add a4, a3, s0
	lw a0, 0(a4)
	sh2add a1, a3, s2
	lw a1, 0(a1)
	jal multiply
	sw a0, 0(a4)
	addiw a3, a3, 1
	ble t4, a3, label413
	sh2add a4, a3, s0
	lw a0, 0(a4)
	sh2add a1, a3, s2
	lw a1, 0(a1)
	jal multiply
	sw a0, 0(a4)
	addiw a3, a3, 1
	ble t4, a3, label413
	sh2add a4, a3, s0
	lw a0, 0(a4)
	sh2add a1, a3, s2
	lw a1, 0(a1)
	jal multiply
	sw a0, 0(a4)
	addiw a3, a3, 1
	ble t4, a3, label413
	j label538
label413:
	li a0, 998244352
	subw a1, a0, t5
	li a0, 3
	jal power
	mv a3, a0
	mv a0, s0
	mv a2, t4
	mv a1, zero
	jal fft
	ble t4, zero, label417
	mv a0, t4
	li a1, 998244351
	jal power
	mv a4, zero
	mv a3, a0
	sh2add a5, zero, s0
	lw a0, 0(a5)
	mv a1, a3
	jal multiply
	sw a0, 0(a5)
	addiw a4, a4, 1
	ble t4, a4, label417
	sh2add a5, a4, s0
	lw a0, 0(a5)
	mv a1, a3
	jal multiply
	sw a0, 0(a5)
	addiw a4, a4, 1
	ble t4, a4, label417
	sh2add a5, a4, s0
	lw a0, 0(a5)
	mv a1, a3
	jal multiply
	sw a0, 0(a5)
	addiw a4, a4, 1
	ble t4, a4, label417
	sh2add a5, a4, s0
	lw a0, 0(a5)
	mv a1, a3
	jal multiply
	sw a0, 0(a5)
	addiw a4, a4, 1
	ble t4, a4, label417
	sh2add a5, a4, s0
	lw a0, 0(a5)
	mv a1, a3
	jal multiply
	sw a0, 0(a5)
	addiw a4, a4, 1
	ble t4, a4, label417
	sh2add a5, a4, s0
	lw a0, 0(a5)
	mv a1, a3
	jal multiply
	sw a0, 0(a5)
	addiw a4, a4, 1
	ble t4, a4, label417
	sh2add a5, a4, s0
	lw a0, 0(a5)
	mv a1, a3
	jal multiply
	sw a0, 0(a5)
	addiw a4, a4, 1
	ble t4, a4, label417
	sh2add a5, a4, s0
	lw a0, 0(a5)
	mv a1, a3
	jal multiply
	sw a0, 0(a5)
	addiw a4, a4, 1
	ble t4, a4, label417
	sh2add a5, a4, s0
	lw a0, 0(a5)
	mv a1, a3
	jal multiply
	sw a0, 0(a5)
	addiw a4, a4, 1
	ble t4, a4, label417
	sh2add a5, a4, s0
	lw a0, 0(a5)
	mv a1, a3
	jal multiply
	sw a0, 0(a5)
	addiw a4, a4, 1
	ble t4, a4, label417
label540:
	sh2add a5, a4, s0
	lw a0, 0(a5)
	mv a1, a3
	jal multiply
	sw a0, 0(a5)
	addiw a4, a4, 1
	ble t4, a4, label417
	j label540
label538:
	sh2add a4, a3, s0
	lw a0, 0(a4)
	sh2add a1, a3, s2
	lw a1, 0(a1)
	jal multiply
	sw a0, 0(a4)
	addiw a3, a3, 1
	ble t4, a3, label413
	j label538
label433:
	mv t4, a0
	j label409
label417:
	li a0, 79
	jal _sysy_stoptime
	mv a0, s1
	mv a1, s0
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s2, 8(sp)
	ld s1, 16(sp)
	ld s0, 24(sp)
	addi sp, sp, 32
	ret