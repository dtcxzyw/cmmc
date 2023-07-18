.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
A:
	.zero	16160400
.align 4
B:
	.zero	8040
.align 4
C:
	.zero	8040
.text
.globl main
main:
	addi sp, sp, -48
	sd s0, 40(sp)
	sd s2, 32(sp)
	sd s1, 24(sp)
	sd s3, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s1, zero
	mv s0, a0
pcrel402:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel402)
	ble s0, zero, label9
	j label209
label9:
	ble s0, zero, label10
	j label210
label10:
	li a0, 59
	jal _sysy_starttime
pcrel403:
	auipc a1, %pcrel_hi(B)
	addi a0, a1, %pcrel_lo(pcrel403)
pcrel404:
	auipc a1, %pcrel_hi(C)
	addi s1, a1, %pcrel_lo(pcrel404)
	mv a1, zero
	ble s0, zero, label75
	mv a4, zero
	li a3, 4
	ble s0, a3, label16
	mv a2, s1
	mv a4, a3
	sw zero, 0(s1)
	sw zero, 4(s1)
	sw zero, 8(s1)
	sw zero, 12(s1)
	addiw a3, a3, 4
	ble s0, a3, label16
	sh2add a2, a4, s1
	mv a4, a3
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	addiw a3, a3, 4
	ble s0, a3, label16
	sh2add a2, a4, s1
	mv a4, a3
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	addiw a3, a3, 4
	ble s0, a3, label16
	sh2add a2, a4, s1
	mv a4, a3
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	addiw a3, a3, 4
	ble s0, a3, label16
	j label370
label75:
	mv a2, zero
	li a4, 8040
	mv a5, zero
	mv a3, s2
	ble s0, zero, label20
	mv a4, zero
	mv t0, s2
	lw a5, 0(s2)
	bne a5, zero, label40
	li a4, 1
	ble s0, a4, label41
	sh2add t0, a4, s2
	lw a5, 0(t0)
	bne a5, zero, label40
	addiw a4, a4, 1
	ble s0, a4, label41
	sh2add t0, a4, s2
	lw a5, 0(t0)
	bne a5, zero, label40
	addiw a4, a4, 1
	ble s0, a4, label41
	sh2add t0, a4, s2
	lw a5, 0(t0)
	bne a5, zero, label40
	j label323
label92:
	mv a2, zero
	li a4, 8040
	mv a5, zero
	mv a3, s2
	ble s0, zero, label20
	mv a4, zero
	mv t0, s2
	lw a5, 0(s2)
	bne a5, zero, label40
	li a4, 1
	ble s0, a4, label41
	sh2add t0, a4, s2
	lw a5, 0(t0)
	bne a5, zero, label40
	addiw a4, a4, 1
	ble s0, a4, label41
	sh2add t0, a4, s2
	lw a5, 0(t0)
	bne a5, zero, label40
	addiw a4, a4, 1
	ble s0, a4, label41
	j label354
label20:
	ble s0, zero, label101
	mv a4, zero
	li a3, 4
	ble s0, a3, label24
	mv a2, a0
	mv a4, a3
	sw zero, 0(a0)
	sw zero, 4(a0)
	sw zero, 8(a0)
	sw zero, 12(a0)
	addiw a3, a3, 4
	ble s0, a3, label24
	sh2add a2, a4, a0
	mv a4, a3
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	addiw a3, a3, 4
	ble s0, a3, label24
	sh2add a2, a4, a0
	mv a4, a3
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	addiw a3, a3, 4
	ble s0, a3, label24
	sh2add a2, a4, a0
	mv a4, a3
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	addiw a3, a3, 4
	ble s0, a3, label24
	j label375
label101:
	mv a2, zero
	li a5, 8040
	mv a4, zero
	mv a3, s2
	ble s0, zero, label28
	mv t0, s2
	lw a5, 0(s2)
	bne a5, zero, label34
	li a4, 1
	ble s0, a4, label35
	sh2add t0, a4, s2
	lw a5, 0(t0)
	bne a5, zero, label34
	addiw a4, a4, 1
	ble s0, a4, label35
	sh2add t0, a4, s2
	lw a5, 0(t0)
	bne a5, zero, label34
	addiw a4, a4, 1
	ble s0, a4, label35
	sh2add t0, a4, s2
	lw a5, 0(t0)
	bne a5, zero, label34
	j label317
label40:
	sh2add t1, a4, a0
	sh2add t0, a2, s1
	lw t2, 0(t0)
	lw t1, 0(t1)
	mulw t3, a5, t1
	addw a5, t2, t3
	sw a5, 0(t0)
	addiw a4, a4, 1
	ble s0, a4, label41
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label40
	addiw a4, a4, 1
	ble s0, a4, label41
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label40
	addiw a4, a4, 1
	ble s0, a4, label41
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label40
	addiw a4, a4, 1
	ble s0, a4, label41
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label40
	addiw a4, a4, 1
	ble s0, a4, label41
	j label346
label354:
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label40
label323:
	addiw a4, a4, 1
	ble s0, a4, label41
label346:
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label40
	addiw a4, a4, 1
	ble s0, a4, label41
	j label346
label41:
	addiw a2, a2, 1
	li a4, 8040
	mulw a5, a2, a4
	add a3, s2, a5
	ble s0, a2, label20
	mv a4, zero
	ble s0, zero, label41
	mv t0, a3
	lw a5, 0(a3)
	bne a5, zero, label40
	li a4, 1
	ble s0, a4, label41
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label40
	addiw a4, a4, 1
	ble s0, a4, label41
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label40
	addiw a4, a4, 1
	ble s0, a4, label41
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label40
	j label323
label24:
	sh2add a2, a4, a0
	addiw a4, a4, 1
	sw zero, 0(a2)
	ble s0, a4, label118
	j label24
label118:
	mv a2, zero
	li a5, 8040
	mv a4, zero
	mv a3, s2
	ble s0, zero, label28
	mv t0, s2
	lw a5, 0(s2)
	bne a5, zero, label34
	li a4, 1
	ble s0, a4, label35
	sh2add t0, a4, s2
	lw a5, 0(t0)
	bne a5, zero, label34
	addiw a4, a4, 1
	ble s0, a4, label35
	sh2add t0, a4, s2
	lw a5, 0(t0)
	bne a5, zero, label34
	addiw a4, a4, 1
	ble s0, a4, label35
	sh2add t0, a4, s2
	lw a5, 0(t0)
	bne a5, zero, label34
label317:
	addiw a4, a4, 1
	ble s0, a4, label35
	j label340
label35:
	addiw a2, a2, 1
	li a5, 8040
	mulw a4, a2, a5
	add a3, s2, a4
	ble s0, a2, label28
	mv a4, zero
	ble s0, zero, label35
	mv t0, a3
	lw a5, 0(a3)
	bne a5, zero, label34
	li a4, 1
	ble s0, a4, label35
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label34
	addiw a4, a4, 1
	ble s0, a4, label35
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label34
	addiw a4, a4, 1
	ble s0, a4, label35
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label34
	j label317
label340:
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label34
	j label358
label34:
	sh2add t1, a4, s1
	sh2add t0, a2, a0
	lw t2, 0(t0)
	lw t3, 0(t1)
	mulw a5, a5, t3
	addw t1, t2, a5
	sw t1, 0(t0)
	addiw a4, a4, 1
	ble s0, a4, label35
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label34
	addiw a4, a4, 1
	ble s0, a4, label35
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label34
	addiw a4, a4, 1
	ble s0, a4, label35
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label34
	addiw a4, a4, 1
	ble s0, a4, label35
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label34
	addiw a4, a4, 1
	ble s0, a4, label35
	j label340
label358:
	addiw a4, a4, 1
	ble s0, a4, label35
	j label340
label375:
	sh2add a2, a4, a0
	mv a4, a3
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	addiw a3, a3, 4
	ble s0, a3, label24
	j label375
label370:
	sh2add a2, a4, s1
	mv a4, a3
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	addiw a3, a3, 4
	ble s0, a3, label16
	j label370
label28:
	addiw a1, a1, 1
	li a2, 50
	bge a1, a2, label29
	ble s0, zero, label75
	mv a4, zero
	li a3, 4
	ble s0, a3, label16
	mv a2, s1
	mv a4, a3
	sw zero, 0(s1)
	sw zero, 4(s1)
	sw zero, 8(s1)
	sw zero, 12(s1)
	addiw a3, a3, 4
	ble s0, a3, label16
	sh2add a2, a4, s1
	mv a4, a3
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	addiw a3, a3, 4
	ble s0, a3, label16
	sh2add a2, a4, s1
	mv a4, a3
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	addiw a3, a3, 4
	ble s0, a3, label16
	sh2add a2, a4, s1
	mv a4, a3
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	addiw a3, a3, 4
	ble s0, a3, label16
	j label370
label29:
	li a0, 67
	jal _sysy_stoptime
	mv a0, s0
	mv a1, s1
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s1, 24(sp)
	ld s2, 32(sp)
	ld s0, 40(sp)
	addi sp, sp, 48
	ret
label16:
	sh2add a2, a4, s1
	addiw a4, a4, 1
	sw zero, 0(a2)
	ble s0, a4, label92
	j label16
label5:
	addiw s1, s1, 1
	ble s0, s1, label9
	ble s0, zero, label5
label209:
	li a0, 8040
	mv s4, zero
	mul a1, s1, a0
	add s3, s2, a1
label7:
	jal getint
	sh2add a1, s4, s3
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s0, s4, label5
	j label7
label210:
	auipc a0, %pcrel_hi(B)
	mv s3, zero
	addi s1, a0, %pcrel_lo(label210)
label43:
	jal getint
	sh2add a1, s3, s1
	addiw s3, s3, 1
	sw a0, 0(a1)
	ble s0, s3, label10
	j label43
