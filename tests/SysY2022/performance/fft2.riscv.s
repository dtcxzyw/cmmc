.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
temp:
	.zero	8388608
.align 8
a:
	.zero	8388608
.align 8
b:
	.zero	8388608
.text
.p2align 2
multiply:
	addi sp, sp, -48
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s1, 16(sp)
	mv s1, a1
	sd s2, 24(sp)
	sd s3, 32(sp)
	sd s4, 40(sp)
	beq a1, zero, label30
	li a1, 1
	beq s1, a1, label25
	addiw a1, s1, 1
	li a2, 3
	bgeu a1, a2, label9
	mv a0, zero
label6:
	slliw a1, a0, 1
	lui a4, 70493
	lui t0, 243712
	addiw a2, a4, -2031
	addiw a5, t0, 1
	mul a0, a1, a2
	srli a4, a0, 63
	srai a3, a0, 58
	add a2, a4, a3
	lui a4, 524288
	mulw a3, a2, a5
	addiw a2, a4, 1
	subw a0, a1, a3
	li a3, 1
	and a1, s1, a2
	beq a1, a3, label8
	j label2
label30:
	mv a0, zero
label2:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 48
	ret
label9:
	addiw a1, s1, -2
	srliw a0, s1, 31
	li a3, 2
	add a2, s1, a0
	sraiw s2, a2, 1
	bgeu a1, a3, label10
	lui a3, 70493
	lui a5, 243712
	addiw a1, a3, -2031
	addiw a4, a5, 1
	mul a0, s0, a1
	srli a3, a0, 63
	srai a2, a0, 58
	add a1, a3, a2
	mulw a2, a1, a4
	subw a0, s0, a2
	j label6
label10:
	addiw a1, s1, 3
	li a2, 7
	bltu a1, a2, label59
	addiw a1, s1, -4
	slli a3, s1, 1
	srli a2, a3, 62
	li a3, 4
	add a0, s1, a2
	sraiw s3, a0, 2
	bgeu a1, a3, label12
	lui a3, 70493
	lui a5, 243712
	addiw a1, a3, -2031
	addiw a3, a5, 1
	mul a0, s0, a1
	srli a4, a0, 63
	srai a2, a0, 58
	add a1, a4, a2
	mulw a2, a1, a3
	subw a0, s0, a2
	j label21
label59:
	mv a0, zero
label21:
	slliw a1, a0, 1
	lui a4, 70493
	lui t0, 243712
	addiw a2, a4, -2031
	addiw a5, t0, 1
	mul a0, a1, a2
	srli a4, a0, 63
	srai a3, a0, 58
	add a2, a4, a3
	lui a4, 524288
	mulw a3, a2, a5
	addiw a2, a4, 1
	subw a0, a1, a3
	li a3, 1
	and a1, s2, a2
	beq a1, a3, label23
	j label6
label12:
	addiw a1, s3, 1
	li a2, 3
	bltu a1, a2, label70
	addiw a1, s3, -2
	slli a3, s1, 1
	srli a2, a3, 61
	li a3, 2
	add a0, s1, a2
	sraiw s4, a0, 3
	bltu a1, a3, label16
	slli a0, s1, 1
	srli a2, a0, 60
	mv a0, s0
	add a3, s1, a2
	sraiw a1, a3, 4
	jal multiply
	slliw a1, a0, 1
	lui a4, 70493
	lui t0, 243712
	addiw a2, a4, -2031
	addiw a5, t0, 1
	mul a0, a1, a2
	srli a4, a0, 63
	srai a3, a0, 58
	add a2, a4, a3
	lui a4, 524288
	mulw a3, a2, a5
	addiw a2, a4, 1
	subw a0, a1, a3
	li a3, 1
	and a1, s4, a2
	beq a1, a3, label15
	j label17
label70:
	mv a0, zero
label17:
	slliw a1, a0, 1
	lui a4, 70493
	lui t0, 243712
	addiw a2, a4, -2031
	addiw a5, t0, 1
	mul a0, a1, a2
	srli a4, a0, 63
	srai a3, a0, 58
	add a2, a4, a3
	lui a4, 524288
	mulw a3, a2, a5
	addiw a2, a4, 1
	subw a0, a1, a3
	li a3, 1
	and a1, s3, a2
	beq a1, a3, label19
	j label21
label23:
	addw a1, s0, a0
	lui a4, 70493
	lui t0, 243712
	addiw a2, a4, -2031
	addiw a4, t0, 1
	mul a0, a1, a2
	srli a5, a0, 63
	srai a3, a0, 58
	add a2, a5, a3
	mulw a3, a2, a4
	subw a0, a1, a3
	j label6
label15:
	addw a1, s0, a0
	lui a4, 70493
	lui t0, 243712
	addiw a2, a4, -2031
	addiw a5, t0, 1
	mul a0, a1, a2
	srli a4, a0, 63
	srai a3, a0, 58
	add a2, a4, a3
	mulw a3, a2, a5
	subw a0, a1, a3
	j label17
label19:
	addw a1, s0, a0
	lui a4, 70493
	lui t0, 243712
	addiw a2, a4, -2031
	addiw a5, t0, 1
	mul a0, a1, a2
	srli a4, a0, 63
	srai a3, a0, 58
	add a2, a4, a3
	mulw a3, a2, a5
	subw a0, a1, a3
	j label21
label16:
	lui a3, 70493
	lui a5, 243712
	addiw a1, a3, -2031
	addiw a3, a5, 1
	mul a0, s0, a1
	srli a4, a0, 63
	srai a2, a0, 58
	add a1, a4, a2
	mulw a2, a1, a3
	subw a0, s0, a2
	j label17
label8:
	addw a1, s0, a0
	lui a4, 70493
	lui t0, 243712
	addiw a2, a4, -2031
	addiw a4, t0, 1
	mul a0, a1, a2
	srli a5, a0, 63
	srai a3, a0, 58
	add a2, a5, a3
	mulw a3, a2, a4
	subw a0, a1, a3
	j label2
label25:
	lui a3, 70493
	lui a5, 243712
	addiw a1, a3, -2031
	addiw a4, a5, 1
	mul a0, s0, a1
	srli a3, a0, 63
	srai a2, a0, 58
	add a1, a3, a2
	mulw a2, a1, a4
	subw a0, s0, a2
	j label2
.p2align 2
power:
	addi sp, sp, -24
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s1, 16(sp)
	mv s1, a1
	bne a1, zero, label610
	li a0, 1
label608:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	addi sp, sp, 24
	ret
label610:
	srliw a2, s1, 31
	mv a0, s0
	add a3, s1, a2
	sraiw a1, a3, 1
	jal power
	mv a1, a0
	jal multiply
	li a4, 1
	lui a3, 524288
	addiw a2, a3, 1
	and a1, s1, a2
	bne a1, a4, label608
	mv a1, s0
	jal multiply
	j label608
.p2align 2
fft:
	addi sp, sp, -80
	sd ra, 0(sp)
	sd s1, 8(sp)
	mv s1, a0
	sd s6, 16(sp)
	lui a0, 243712
	sd s2, 24(sp)
	mv s2, a1
	sd s0, 32(sp)
	lui a1, 70493
	mv s0, a3
	sd s5, 40(sp)
	addiw s5, a1, -2031
	sd s7, 48(sp)
	li s7, 1
	sd s4, 56(sp)
	addiw s4, a0, 1
	sd s3, 64(sp)
	sd s8, 72(sp)
	beq a2, s7, label280
	srliw a1, a2, 31
	add a0, a2, a1
	sraiw s3, a0, 1
	ble a2, zero, label282
	addiw a1, s2, 1
	addiw a3, s2, 2
	addiw a4, s2, 3
	addiw a5, a2, -4
pcrel606:
	auipc t0, %pcrel_hi(temp)
	li t1, 4
	addi a0, t0, %pcrel_lo(pcrel606)
	ble a2, t1, label364
	mv t0, zero
.p2align 2
label304:
	addw t1, s2, t0
	andi t2, t0, 1
	srliw t4, t0, 31
	add t5, t0, t4
	sraiw t3, t5, 1
	beq t2, zero, label317
	addw t6, s3, t3
	sh2add t2, t1, s1
	sh2add t4, t6, a0
	lw t5, 0(t2)
	sw t5, 0(t4)
	addw t1, a1, t0
	addiw t3, t0, 1
	srliw t5, t3, 31
	andi t2, t3, 1
	add t6, t3, t5
	sraiw t4, t6, 1
	beq t2, zero, label315
	j label307
label309:
	addw t2, s3, t4
	sh2add t5, t1, s1
	sh2add t3, t2, a0
	addw t1, a4, t0
	lw t6, 0(t5)
	sw t6, 0(t3)
	addiw t3, t0, 3
	srliw t6, t3, 31
	andi t2, t3, 1
	add t5, t3, t6
	sraiw t4, t5, 1
	bne t2, zero, label312
label313:
	sh2add t2, t4, a0
	sh2add t5, t1, s1
	lw t3, 0(t5)
	sw t3, 0(t2)
	addiw t0, t0, 4
	bgt a5, t0, label304
	j label287
label307:
	addw t3, s3, t4
	sh2add t5, t1, s1
	sh2add t2, t3, a0
	lw t4, 0(t5)
	sw t4, 0(t2)
	addw t1, a3, t0
	addiw t3, t0, 2
	srliw t5, t3, 31
	andi t2, t3, 1
	add t6, t3, t5
	sraiw t4, t6, 1
	bne t2, zero, label309
label310:
	sh2add t2, t4, a0
	sh2add t3, t1, s1
	lw t5, 0(t3)
	sw t5, 0(t2)
	addw t1, a4, t0
	addiw t3, t0, 3
	srliw t6, t3, 31
	andi t2, t3, 1
	add t5, t3, t6
	sraiw t4, t5, 1
	beq t2, zero, label313
label312:
	addw t6, s3, t4
	sh2add t2, t1, s1
	addiw t0, t0, 4
	sh2add t3, t6, a0
	lw t5, 0(t2)
	sw t5, 0(t3)
	bgt a5, t0, label304
	j label287
label315:
	sh2add t2, t4, a0
	sh2add t3, t1, s1
	addw t1, a3, t0
	lw t5, 0(t3)
	addiw t3, t0, 2
	sw t5, 0(t2)
	srliw t5, t3, 31
	andi t2, t3, 1
	add t6, t3, t5
	sraiw t4, t6, 1
	beq t2, zero, label310
	j label309
label317:
	sh2add t2, t3, a0
	sh2add t4, t1, s1
	addiw t3, t0, 1
	addw t1, a1, t0
	lw t5, 0(t4)
	sw t5, 0(t2)
	srliw t5, t3, 31
	andi t2, t3, 1
	add t6, t3, t5
	sraiw t4, t6, 1
	beq t2, zero, label315
	j label307
label287:
	addw t1, s2, t0
	andi t2, t0, 1
	srliw t4, t0, 31
	add t5, t0, t4
	sraiw t3, t5, 1
	beq t2, zero, label303
	j label371
label289:
	addiw t0, t0, 1
	bgt a2, t0, label287
	j label290
label303:
	sh2add t2, t3, a0
	sh2add t4, t1, s1
	lw t5, 0(t4)
	sw t5, 0(t2)
	j label289
label280:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s2, 24(sp)
	ld s0, 32(sp)
	ld s5, 40(sp)
	ld s7, 48(sp)
	ld s4, 56(sp)
	ld s3, 64(sp)
	ld s8, 72(sp)
	addi sp, sp, 80
	ret
label290:
	li t1, 4
	ble a2, t1, label379
	mv t0, a0
	mv t1, zero
.p2align 2
label292:
	addw t2, s2, t1
	addw t5, a1, t1
	lw t4, 0(t0)
	sh2add t3, t2, s1
	sw t4, 0(t3)
	sh2add t4, t5, s1
	lw t2, 4(t0)
	addw t5, a3, t1
	sw t2, 0(t4)
	sh2add t4, t5, s1
	lw t3, 8(t0)
	addw t5, a4, t1
	addiw t1, t1, 4
	sw t3, 0(t4)
	sh2add t3, t5, s1
	lw t2, 12(t0)
	sw t2, 0(t3)
	ble a5, t1, label295
	addi t0, t0, 16
	j label292
label295:
	sh2add a0, t1, a0
label297:
	addw a4, s2, t1
	lw a3, 0(a0)
	addiw t1, t1, 1
	sh2add a1, a4, s1
	sw a3, 0(a1)
	ble a2, t1, label282
	addi a0, a0, 4
	j label297
label282:
	mv a0, s0
	mv a1, s0
	jal multiply
	mv s8, a0
	mv a0, s1
	mv a1, s2
	mv a2, s3
	mv a3, s8
	jal fft
	mv a0, s1
	addw s6, s2, s3
	mv a1, s6
	mv a2, s3
	mv a3, s8
	jal fft
	ble s3, zero, label280
	mv t1, zero
	mv t2, s7
.p2align 2
label283:
	addw a0, s2, t1
	addw a2, s6, t1
	sh2add t4, a0, s1
	sh2add t3, a2, s1
	lw t5, 0(t4)
	lw a1, 0(t3)
	mv a0, t2
	jal multiply
	addw a1, t5, a0
	mul a2, a1, s5
	srli t0, a2, 63
	srai a3, a2, 58
	add a5, t0, a3
	subw a3, t5, a0
	mulw a4, a5, s4
	subw a2, a1, a4
	addw a1, a3, s4
	sw a2, 0(t4)
	mul a2, a1, s5
	srli a4, a2, 63
	srai a0, a2, 58
	add a5, a4, a0
	mulw a3, a5, s4
	subw a2, a1, a3
	sw a2, 0(t3)
	mv a0, t2
	mv a1, s0
	jal multiply
	addiw t1, t1, 1
	ble s3, t1, label280
	mv t2, a0
	j label283
label371:
	addw t2, s3, t3
	sh2add t6, t1, s1
	sh2add t4, t2, a0
	lw t5, 0(t6)
	sw t5, 0(t4)
	j label289
label364:
	mv t0, zero
	j label287
label379:
	mv t1, zero
	j label297
.p2align 2
.globl main
main:
	addi sp, sp, -48
pcrel723:
	auipc a1, %pcrel_hi(a)
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, a1, %pcrel_lo(pcrel723)
	sd s3, 16(sp)
	sd s2, 24(sp)
	sd s4, 32(sp)
	sd s1, 40(sp)
	mv a0, s0
	jal getarray
pcrel724:
	auipc a1, %pcrel_hi(b)
	mv s3, a0
	addi s2, a1, %pcrel_lo(pcrel724)
	mv a0, s2
	jal getarray
	mv s4, a0
	li a0, 60
	jal _sysy_starttime
	li a6, 1
	addiw a1, s3, -1
	addw s1, s4, a1
	bgt s1, a6, label653
label639:
	lui a2, 243712
	li a0, 3
	divw a7, a2, a6
	mv a1, a7
	jal power
	mv a1, zero
	mv s3, a0
	mv a0, s0
	mv a2, a6
	mv a3, s3
	jal fft
	mv a1, zero
	mv a0, s2
	mv a2, a6
	mv a3, s3
	jal fft
	bgt a6, zero, label641
	j label646
.p2align 2
label653:
	slliw a1, a6, 1
	mv a6, a1
	bgt s1, a1, label653
	j label639
label641:
	mv t1, s0
	mv t2, zero
.p2align 2
label642:
	lw a0, 0(t1)
	sh2add a2, t2, s2
	lw a1, 0(a2)
	jal multiply
	addiw t2, t2, 1
	sw a0, 0(t1)
	ble a6, t2, label646
	addi t1, t1, 4
	j label642
label646:
	lui a2, 243712
	li a0, 3
	subw a1, a2, a7
	jal power
	mv a1, zero
	mv a3, a0
	mv a0, s0
	mv a2, a6
	jal fft
	ble a6, zero, label652
	mv a0, a6
	lui a2, 243712
	addiw a1, a2, -1
	jal power
	mv t3, zero
	mv t2, s0
	mv t1, a0
.p2align 2
label648:
	lw a0, 0(t2)
	mv a1, t1
	jal multiply
	addiw t3, t3, 1
	sw a0, 0(t2)
	ble a6, t3, label652
	addi t2, t2, 4
	j label648
label652:
	li a0, 79
	jal _sysy_stoptime
	mv a0, s1
	mv a1, s0
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s4, 32(sp)
	ld s1, 40(sp)
	addi sp, sp, 48
	ret
