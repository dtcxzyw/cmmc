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
	addi sp, sp, -32
	sd s0, 24(sp)
	mv s0, a0
	sd s1, 16(sp)
	mv s1, a1
	sd s2, 8(sp)
	sd ra, 0(sp)
	bne a1, zero, label4
	mv a0, zero
label2:
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s1, 16(sp)
	ld s0, 24(sp)
	addi sp, sp, 32
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
label123:
	mv a0, zero
	j label7
label6:
	srliw a0, s1, 31
	add a0, s1, a0
	sraiw s2, a0, 1
	bne s2, zero, label10
	j label123
label7:
	slliw a0, a0, 1
	li a1, 288737297
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
label10:
	li a0, 1
	bne s2, a0, label12
	li a0, 288737297
	mul a0, s0, a0
	srai a1, a0, 58
	srli a0, a0, 63
	add a0, a0, a1
	li a1, 998244353
	mulw a0, a0, a1
	subw a0, s0, a0
	j label7
label12:
	slli a0, s1, 1
	srli a0, a0, 62
	add a0, s1, a0
	sraiw a1, a0, 2
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
	and a1, s2, a1
	bne a1, a2, label7
	addw a0, s0, a0
	li a1, 288737297
	mul a1, a0, a1
	srai a2, a1, 58
	srli a1, a1, 63
	add a1, a1, a2
	li a2, 998244353
	mulw a1, a1, a2
	subw a0, a0, a1
	j label7
power:
	addi sp, sp, -24
	sd s0, 16(sp)
	mv s0, a0
	sd s1, 8(sp)
	mv s1, a1
	sd ra, 0(sp)
	bne a1, zero, label354
	li a0, 1
label352:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s0, 16(sp)
	addi sp, sp, 24
	ret
label354:
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
	bne a1, a2, label352
	mv a1, s0
	jal multiply
	j label352
fft:
	addi sp, sp, -56
	sd s1, 48(sp)
	mv s1, a0
	sd s2, 40(sp)
	srliw a0, a2, 31
	mv s2, a1
	add a0, a2, a0
	sd s0, 32(sp)
	li a1, 1
	mv s0, a3
	sd s5, 24(sp)
	sd s3, 16(sp)
	sraiw s3, a0, 1
	sd s4, 8(sp)
pcrel350:
	auipc a0, %pcrel_hi(temp)
	sd ra, 0(sp)
	addi a0, a0, %pcrel_lo(pcrel350)
	bne a2, a1, label151
	j label126
label151:
	mv a1, zero
	ble a2, zero, label132
	andi a3, zero, 1
	bne a3, zero, label131
	addw a3, s2, zero
	srliw a4, zero, 31
	sh2add a3, a3, s1
	add a4, zero, a4
	lw a3, 0(a3)
	addiw a1, zero, 1
	sraiw a4, a4, 1
	sh2add a4, a4, a0
	sw a3, 0(a4)
	ble a2, a1, label132
	andi a3, a1, 1
	bne a3, zero, label131
	addw a3, s2, a1
	srliw a4, a1, 31
	sh2add a3, a3, s1
	add a4, a1, a4
	lw a3, 0(a3)
	addiw a1, a1, 1
	sraiw a4, a4, 1
	sh2add a4, a4, a0
	sw a3, 0(a4)
	ble a2, a1, label132
	andi a3, a1, 1
	bne a3, zero, label131
	addw a3, s2, a1
	srliw a4, a1, 31
	sh2add a3, a3, s1
	add a4, a1, a4
	lw a3, 0(a3)
	addiw a1, a1, 1
	sraiw a4, a4, 1
	sh2add a4, a4, a0
	sw a3, 0(a4)
	ble a2, a1, label132
	andi a3, a1, 1
	bne a3, zero, label131
	addw a3, s2, a1
	srliw a4, a1, 31
	sh2add a3, a3, s1
	add a4, a1, a4
	lw a3, 0(a3)
	addiw a1, a1, 1
	sraiw a4, a4, 1
	sh2add a4, a4, a0
	sw a3, 0(a4)
	ble a2, a1, label132
	j label324
label126:
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s5, 24(sp)
	ld s0, 32(sp)
	ld s2, 40(sp)
	ld s1, 48(sp)
	addi sp, sp, 56
	ret
label324:
	andi a3, a1, 1
	bne a3, zero, label131
	j label330
label132:
	ble a2, zero, label138
	mv a1, zero
	addiw a3, zero, 4
	ble a2, a3, label136
	j label135
label136:
	addw a3, s2, a1
	sh2add a4, a1, a0
	sh2add a3, a3, s1
	addiw a1, a1, 1
	lw a4, 0(a4)
	sw a4, 0(a3)
	ble a2, a1, label138
	j label136
label138:
	mv a0, s0
	mv a1, s0
	jal multiply
	mv s5, a0
	mv a0, s1
	mv a1, s2
	mv a2, s3
	mv a3, s5
	jal fft
	mv a0, s1
	addw s4, s2, s3
	mv a1, s4
	mv a2, s3
	mv a3, s5
	jal fft
	ble s3, zero, label126
	mv a3, zero
	li a4, 1
label139:
	addw a0, s2, a3
	sh2add t0, a0, s1
	addw a0, s4, a3
	lw t1, 0(t0)
	sh2add a5, a0, s1
	lw a1, 0(a5)
	mv a0, a4
	jal multiply
	addw t2, t1, a0
	li a1, 288737297
	subw a0, t1, a0
	mul a2, t2, a1
	srai t3, a2, 58
	srli a2, a2, 63
	add t3, a2, t3
	li a2, 998244353
	addw a0, a0, a2
	mulw t3, t3, a2
	mul a1, a0, a1
	subw t2, t2, t3
	sw t2, 0(t0)
	srai t0, a1, 58
	srli a1, a1, 63
	add a1, a1, t0
	mulw a1, a1, a2
	subw a0, a0, a1
	sw a0, 0(a5)
	mv a0, a4
	mv a1, s0
	jal multiply
	addiw a3, a3, 1
	ble s3, a3, label126
	mv a4, a0
	j label139
label336:
	andi a3, a1, 1
	bne a3, zero, label131
	j label330
label131:
	srliw a3, a1, 31
	addw a4, s2, a1
	add a3, a1, a3
	sh2add a4, a4, s1
	addiw a1, a1, 1
	sraiw a3, a3, 1
	lw a4, 0(a4)
	addw a3, s3, a3
	sh2add a3, a3, a0
	sw a4, 0(a3)
	ble a2, a1, label132
	andi a3, a1, 1
	bne a3, zero, label131
	addw a3, s2, a1
	srliw a4, a1, 31
	sh2add a3, a3, s1
	add a4, a1, a4
	lw a3, 0(a3)
	addiw a1, a1, 1
	sraiw a4, a4, 1
	sh2add a4, a4, a0
	sw a3, 0(a4)
	ble a2, a1, label132
	andi a3, a1, 1
	bne a3, zero, label131
	addw a3, s2, a1
	srliw a4, a1, 31
	sh2add a3, a3, s1
	add a4, a1, a4
	lw a3, 0(a3)
	addiw a1, a1, 1
	sraiw a4, a4, 1
	sh2add a4, a4, a0
	sw a3, 0(a4)
	ble a2, a1, label132
	andi a3, a1, 1
	bne a3, zero, label131
	addw a3, s2, a1
	srliw a4, a1, 31
	sh2add a3, a3, s1
	add a4, a1, a4
	lw a3, 0(a3)
	addiw a1, a1, 1
	sraiw a4, a4, 1
	sh2add a4, a4, a0
	sw a3, 0(a4)
	ble a2, a1, label132
	andi a3, a1, 1
	bne a3, zero, label131
	addw a3, s2, a1
	srliw a4, a1, 31
	sh2add a3, a3, s1
	add a4, a1, a4
	lw a3, 0(a3)
	addiw a1, a1, 1
	sraiw a4, a4, 1
	sh2add a4, a4, a0
	sw a3, 0(a4)
	ble a2, a1, label132
	andi a3, a1, 1
	bne a3, zero, label131
label330:
	addw a3, s2, a1
	srliw a4, a1, 31
	sh2add a3, a3, s1
	add a4, a1, a4
	lw a3, 0(a3)
	addiw a1, a1, 1
	sraiw a4, a4, 1
	sh2add a4, a4, a0
	sw a3, 0(a4)
	ble a2, a1, label132
	j label336
label135:
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
	addiw a1, a1, 3
	addw a5, s2, a5
	addw a1, s2, a1
	sh2add a5, a5, s1
	sh2add a1, a1, s1
	sw t0, 0(a5)
	lw a4, 12(a4)
	sw a4, 0(a1)
	mv a1, a3
	addiw a3, a3, 4
	ble a2, a3, label136
	j label135
.globl main
main:
	addi sp, sp, -32
pcrel463:
	auipc a0, %pcrel_hi(a)
	sd s0, 24(sp)
	addi a0, a0, %pcrel_lo(pcrel463)
	sd s1, 16(sp)
	mv s0, a0
	sd s2, 8(sp)
	sd ra, 0(sp)
	jal getarray
	addiw s1, a0, -1
pcrel464:
	auipc a0, %pcrel_hi(b)
	addi a0, a0, %pcrel_lo(pcrel464)
	mv s2, a0
	jal getarray
	addw s1, s1, a0
	li a0, 60
	jal _sysy_starttime
	li a0, 1
	ble s1, a0, label401
	slliw a0, a0, 1
	ble s1, a0, label406
	slliw a0, a0, 1
	ble s1, a0, label406
	slliw a0, a0, 1
	ble s1, a0, label406
	slliw a0, a0, 1
	ble s1, a0, label406
	slliw a0, a0, 1
	ble s1, a0, label406
	slliw a0, a0, 1
	ble s1, a0, label406
	slliw a0, a0, 1
	ble s1, a0, label406
	slliw a0, a0, 1
	ble s1, a0, label406
	slliw a0, a0, 1
	ble s1, a0, label406
	slliw a0, a0, 1
	ble s1, a0, label406
	j label380
label401:
	li t4, 1
	j label382
label380:
	slliw a0, a0, 1
	ble s1, a0, label406
	j label380
label406:
	mv t4, a0
label382:
	lui a0, 243712
	divw t5, a0, t4
	li a0, 3
	mv a1, t5
	jal power
	mv a1, zero
	mv t6, a0
	mv a0, s0
	mv a2, t4
	mv a3, t6
	jal fft
	mv a1, zero
	mv a0, s2
	mv a2, t4
	mv a3, t6
	jal fft
	ble t4, zero, label386
	mv a3, zero
label384:
	sh2add a4, a3, s0
	sh2add a1, a3, s2
	lw a0, 0(a4)
	lw a1, 0(a1)
	jal multiply
	addiw a3, a3, 1
	sw a0, 0(a4)
	ble t4, a3, label386
	j label384
label386:
	lui a0, 243712
	subw a1, a0, t5
	li a0, 3
	jal power
	mv a1, zero
	mv a3, a0
	mv a0, s0
	mv a2, t4
	jal fft
	ble t4, zero, label390
	mv a0, t4
	li a1, 998244351
	jal power
	mv a4, zero
	mv a3, a0
label388:
	sh2add a5, a4, s0
	lw a0, 0(a5)
	mv a1, a3
	jal multiply
	addiw a4, a4, 1
	sw a0, 0(a5)
	ble t4, a4, label390
	j label388
label390:
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
