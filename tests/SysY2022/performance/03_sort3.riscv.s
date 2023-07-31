.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
a:
	.zero	120000040
.text
radixSort:
.p2align 2
	addi sp, sp, -248
	mv a4, a0
	mv t3, a2
	mv t2, a3
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a1
	sd s5, 16(sp)
	addiw a1, a2, 1
	sd s3, 24(sp)
	slt a2, a1, a3
	addi s3, sp, 184
	xori a1, a0, -1
	xori a0, a2, 1
	sd s2, 32(sp)
	sltiu a2, a1, 1
	addi s2, sp, 120
	or a0, a0, a2
	sd s1, 40(sp)
	addi s1, sp, 56
	sd s4, 48(sp)
	sd zero, 56(sp)
	sd zero, 64(sp)
	sd zero, 72(sp)
	sd zero, 80(sp)
	sd zero, 88(sp)
	sd zero, 96(sp)
	sd zero, 104(sp)
	sd zero, 112(sp)
	sd zero, 120(sp)
	sd zero, 128(sp)
	sd zero, 136(sp)
	sd zero, 144(sp)
	sd zero, 152(sp)
	sd zero, 160(sp)
	sd zero, 168(sp)
	sd zero, 176(sp)
	sd zero, 184(sp)
	sd zero, 192(sp)
	sd zero, 200(sp)
	sd zero, 208(sp)
	sd zero, 216(sp)
	sd zero, 224(sp)
	sd zero, 232(sp)
	sd zero, 240(sp)
	bne a0, zero, label90
	li a1, -21844
	li a2, -5460
	addiw t0, a4, -1364
	addiw a5, a4, -340
	addiw a3, a4, -84
	addiw s4, a4, -1
	addw a0, a4, a1
	addw t1, a4, a2
	addiw a1, a4, -4
	addiw a2, a4, -20
	bge t3, t2, label3
	mv t4, t3
	j label56
.p2align 2
label346:
	mv t5, t6
	addiw t5, t6, 256
	ble a5, t5, label587
.p2align 2
label45:
	addiw t5, t5, 256
	bgt a5, t5, label45
	mv t6, t5
	addiw t6, t5, 64
	bgt a3, t6, label29
	mv t5, t6
	addiw t6, t6, 16
	bgt a2, t6, label384
	mv t5, zero
	addiw t6, t6, 4
	mv a6, zero
	mv a7, zero
	bgt a1, t6, label390
	mv t5, t6
	mv t6, zero
	addiw t5, t5, 1
	mv s5, zero
	bgt a4, t5, label52
	mv t5, zero
	bne t2, zero, label24
	sh2add t5, t2, s1
	lw t6, 0(t5)
	sh2add a6, t6, s0
	sw t4, 0(a6)
	addiw t4, t6, 1
	sw t4, 0(t5)
	sh2add t6, t2, s2
	lw t5, 0(t6)
	blt t4, t5, label18
	addiw t2, t2, 1
	li t4, 16
	blt t2, t4, label15
	sw t3, 56(sp)
	lw a1, 184(sp)
	addw a0, t3, a1
	sw a0, 120(sp)
	li a0, 16
	blt zero, a0, label9
label90:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s3, 24(sp)
	ld s2, 32(sp)
	ld s1, 40(sp)
	ld s4, 48(sp)
	addi sp, sp, 248
	ret
.p2align 2
label338:
	mv t5, zero
	li t5, 256
	bgt a5, t5, label45
	mv t6, t5
	addiw t6, t5, 64
	bgt a3, t6, label29
	mv t5, t6
	addiw t6, t6, 16
	bgt a2, t6, label384
	mv t5, zero
	addiw t6, t6, 4
	mv a6, zero
	mv a7, zero
	bgt a1, t6, label390
	j label672
.p2align 2
label49:
	addiw t6, t6, 4
	slli a6, t5, 1
	srli a7, a6, 48
	add t5, t5, a7
	sraiw a6, t5, 16
	ble a1, t6, label389
.p2align 2
label390:
	mv t5, a6
	j label49
.p2align 2
label24:
	sh2add t5, t5, s1
	lw t6, 0(t5)
	sh2add a7, t6, s0
	addi t6, t6, 1
	lw a6, 0(a7)
	sw t4, 0(a7)
	mv t4, a6
	sw t6, 0(t5)
	bgt a4, zero, label25
	j label581
.p2align 2
label389:
	mv t5, t6
	mv t6, a6
	addiw t5, t5, 1
	slli a7, a6, 1
	srli s5, a7, 60
	add a6, a6, s5
	sraiw t6, a6, 4
	bgt a4, t5, label52
	slli t5, t6, 1
	srli a7, t5, 60
	add a6, t6, a7
	andi a7, a6, -16
	subw t5, t6, a7
	bne t2, t5, label24
	sh2add t5, t2, s1
	lw t6, 0(t5)
	sh2add a6, t6, s0
	sw t4, 0(a6)
	addiw t4, t6, 1
	sw t4, 0(t5)
	sh2add t6, t2, s2
	lw t5, 0(t6)
	blt t4, t5, label18
	addiw t2, t2, 1
	li t4, 16
	blt t2, t4, label15
	sw t3, 56(sp)
	mv s5, zero
	lw a1, 184(sp)
	addw a0, t3, a1
	sw a0, 120(sp)
	li a0, 16
	blt zero, a0, label9
	j label90
.p2align 2
label357:
	mv t5, zero
	lui a6, 16
	sext.w t6, a6
	bgt a0, t6, label363
	lui t6, 4
	sext.w t5, t6
	bgt a0, t5, label41
	lui t6, 1
	addw t5, t5, t6
	bgt t1, t5, label36
	mv t6, t5
	addiw t6, t5, 1024
	bgt t0, t6, label33
	mv t5, t6
	addiw t5, t6, 256
	bgt a5, t5, label45
	mv t6, t5
	addiw t6, t5, 64
	bgt a3, t6, label29
	mv t5, t6
	addiw t6, t6, 16
	bgt a2, t6, label384
	j label733
.p2align 2
label47:
	addiw t6, t5, 16
	ble a2, t6, label383
.p2align 2
label384:
	mv t5, t6
	j label47
.p2align 2
label33:
	addiw t6, t6, 1024
	bgt t0, t6, label33
	j label346
.p2align 2
label590:
	mv t5, t6
	lui a6, 16
	addw t6, t6, a6
	bgt a0, t6, label363
	lui t6, 4
	addw t5, t5, t6
	bgt a0, t5, label41
	lui t6, 1
	addw t5, t5, t6
	bgt t1, t5, label36
	mv t6, t5
	addiw t6, t5, 1024
	bgt t0, t6, label33
	mv t5, t6
	addiw t5, t6, 256
	bgt a5, t5, label45
	mv t6, t5
	addiw t6, t5, 64
	bgt a3, t6, label29
	mv t5, t6
	addiw t6, t6, 16
	bgt a2, t6, label384
	mv t5, zero
	addiw t6, t6, 4
	mv a6, zero
	mv a7, zero
	bgt a1, t6, label390
	mv t5, t6
	mv t6, zero
	addiw t5, t5, 1
	mv s5, zero
	bgt a4, t5, label52
	j label762
.p2align 2
label760:
	sh2add t5, t2, s1
	lw t6, 0(t5)
	sh2add a6, t6, s0
	sw t4, 0(a6)
	addiw t4, t6, 1
	sw t4, 0(t5)
	sh2add t6, t2, s2
	lw t5, 0(t6)
	blt t4, t5, label18
	j label761
.p2align 2
label762:
	slli t5, t6, 1
	srli a7, t5, 60
	add a6, t6, a7
	andi a7, a6, -16
	subw t5, t6, a7
	bne t2, t5, label24
	j label760
.p2align 2
label15:
	sh2add t5, t2, s1
	lw t4, 0(t5)
	j label16
.p2align 2
label327:
	mv t5, zero
	li t6, 16
	bgt a2, t6, label384
	addiw t6, t6, 4
	mv a6, zero
	mv a7, zero
	bgt a1, t6, label390
	mv t5, t6
	mv t6, zero
	addiw t5, t5, 1
	mv s5, zero
	ble a4, t5, label642
.p2align 2
label52:
	addiw t5, t5, 1
	slli a7, t6, 1
	srli s5, a7, 60
	add a6, t6, s5
	sraiw t6, a6, 4
	bgt a4, t5, label52
	slli t5, t6, 1
	srli a7, t5, 60
	add a6, t6, a7
	andi a7, a6, -16
	subw t5, t6, a7
	bne t2, t5, label24
	sh2add t5, t2, s1
	lw t6, 0(t5)
	sh2add a6, t6, s0
	sw t4, 0(a6)
	addiw t4, t6, 1
	sw t4, 0(t5)
	sh2add t6, t2, s2
	lw t5, 0(t6)
	blt t4, t5, label18
	addiw t2, t2, 1
	li t4, 16
	blt t2, t4, label15
	sw t3, 56(sp)
	mv s5, zero
	lw a1, 184(sp)
	addw a0, t3, a1
	sw a0, 120(sp)
	li a0, 16
	blt zero, a0, label9
	j label90
.p2align 2
label19:
	ble a4, zero, label300
.p2align 2
label25:
	li t6, 4
	ble a4, t6, label321
	li t6, 16
	ble a1, t6, label324
	li t6, 64
	ble a2, t6, label327
	li t5, 256
	bgt a3, t5, label31
	j label330
.p2align 2
label29:
	addiw t6, t6, 64
	bgt a3, t6, label29
	j label335
.p2align 2
label31:
	li a6, 1024
	ble a5, a6, label338
	lui t5, 1
	ble t0, t5, label341
	lui a6, 4
	ble t1, a6, label349
	lui t6, 64
	ble a0, t6, label357
	mv t6, zero
	lui a6, 128
	lui a7, 64
	sext.w t5, a6
	sext.w t6, a7
	bgt a0, t5, label43
	j label590
.p2align 2
label363:
	mv t5, t6
	j label39
.p2align 2
label41:
	lui t6, 4
	addw t5, t5, t6
	bgt a0, t5, label41
	j label367
.p2align 2
label43:
	lui a6, 128
	lui a7, 64
	addw t5, t6, a6
	addw t6, t6, a7
	bgt a0, t5, label43
	mv t5, t6
	lui a6, 16
	addw t6, t6, a6
	bgt a0, t6, label363
	lui t6, 4
	addw t5, t5, t6
	bgt a0, t5, label41
	lui t6, 1
	addw t5, t5, t6
	bgt t1, t5, label36
	mv t6, t5
	addiw t6, t5, 1024
	bgt t0, t6, label33
	mv t5, t6
	addiw t5, t6, 256
	bgt a5, t5, label45
	mv t6, t5
	addiw t6, t5, 64
	bgt a3, t6, label29
	mv t5, t6
	addiw t6, t6, 16
	bgt a2, t6, label384
	mv t5, zero
	addiw t6, t6, 4
	mv a6, zero
	mv a7, zero
	bgt a1, t6, label390
	mv t5, t6
	mv t6, zero
	addiw t5, t5, 1
	mv s5, zero
	bgt a4, t5, label52
	j label762
.p2align 2
label36:
	lui t6, 1
	addw t5, t5, t6
	bgt t1, t5, label36
	j label354
.p2align 2
label39:
	lui a6, 16
	addw t6, t5, a6
	bgt a0, t6, label363
	lui t6, 4
	addw t5, t5, t6
	bgt a0, t5, label41
	lui t6, 1
	addw t5, t5, t6
	bgt t1, t5, label36
	mv t6, t5
	addiw t6, t5, 1024
	bgt t0, t6, label33
	mv t5, t6
	addiw t5, t6, 256
	bgt a5, t5, label45
	mv t6, t5
	addiw t6, t5, 64
	bgt a3, t6, label29
	mv t5, t6
	addiw t6, t6, 16
	bgt a2, t6, label384
	mv t5, zero
	addiw t6, t6, 4
	mv a6, zero
	mv a7, zero
	bgt a1, t6, label390
	mv t5, t6
	mv t6, zero
	addiw t5, t5, 1
	mv s5, zero
	bgt a4, t5, label52
	mv t5, zero
	bne t2, zero, label24
	j label760
.p2align 2
label300:
	mv t6, t4
	slli t5, t4, 1
	srli a7, t5, 60
	add a6, t4, a7
	andi a7, a6, -16
	subw t5, t4, a7
	bne t2, t5, label24
	sh2add t5, t2, s1
	lw t6, 0(t5)
	sh2add a6, t6, s0
	sw t4, 0(a6)
	addiw t4, t6, 1
	sw t4, 0(t5)
	sh2add t6, t2, s2
	lw t5, 0(t6)
	blt t4, t5, label18
	addiw t2, t2, 1
	li t4, 16
	blt t2, t4, label15
	sw t3, 56(sp)
	mv s5, zero
	lw a1, 184(sp)
	addw a0, t3, a1
	sw a0, 120(sp)
	li a0, 16
	blt zero, a0, label9
	j label90
.p2align 2
label18:
	sh2add t4, t2, s1
	lw t6, 0(t4)
	sh2add t5, t6, s0
	lw t4, 0(t5)
	j label19
.p2align 2
label383:
	mv t5, zero
	addiw t6, t6, 4
	mv a6, zero
	mv a7, zero
	bgt a1, t6, label390
	mv t5, t6
	mv t6, zero
	addiw t5, t5, 1
	mv s5, zero
	bgt a4, t5, label52
	mv t5, zero
	bne t2, zero, label24
	sh2add t5, t2, s1
	lw t6, 0(t5)
	sh2add a6, t6, s0
	sw t4, 0(a6)
	addiw t4, t6, 1
	sw t4, 0(t5)
	sh2add t6, t2, s2
	lw t5, 0(t6)
	blt t4, t5, label18
	addiw t2, t2, 1
	li t4, 16
	blt t2, t4, label15
	sw t3, 56(sp)
	lw a1, 184(sp)
	addw a0, t3, a1
	sw a0, 120(sp)
	li a0, 16
	blt zero, a0, label9
	j label90
.p2align 2
label587:
	mv t6, t5
	addiw t6, t5, 64
	bgt a3, t6, label29
	mv t5, t6
	addiw t6, t6, 16
	bgt a2, t6, label384
	mv t5, zero
	addiw t6, t6, 4
	mv a6, zero
	mv a7, zero
	bgt a1, t6, label390
	mv t5, t6
	mv t6, zero
	addiw t5, t5, 1
	mv s5, zero
	bgt a4, t5, label52
	mv t5, zero
	bne t2, zero, label24
	sh2add t5, t2, s1
	lw t6, 0(t5)
	sh2add a6, t6, s0
	sw t4, 0(a6)
	addiw t4, t6, 1
	sw t4, 0(t5)
	sh2add t6, t2, s2
	lw t5, 0(t6)
	blt t4, t5, label18
	addiw t2, t2, 1
	li t4, 16
	blt t2, t4, label15
	sw t3, 56(sp)
	lw a1, 184(sp)
	addw a0, t3, a1
	sw a0, 120(sp)
	li a0, 16
	blt zero, a0, label9
	j label90
.p2align 2
label324:
	mv t5, t4
	mv t6, zero
	li t6, 4
	slli a6, t4, 1
	srli a7, a6, 48
	add t5, t4, a7
	sraiw a6, t5, 16
	bgt a1, t6, label390
	mv t5, t6
	mv t6, a6
	addiw t5, t5, 1
	slli a7, a6, 1
	srli s5, a7, 60
	add a6, a6, s5
	sraiw t6, a6, 4
	bgt a4, t5, label52
	slli t5, t6, 1
	srli a7, t5, 60
	add a6, t6, a7
	andi a7, a6, -16
	subw t5, t6, a7
	bne t2, t5, label24
	sh2add t5, t2, s1
	lw t6, 0(t5)
	sh2add a6, t6, s0
	sw t4, 0(a6)
	addiw t4, t6, 1
	sw t4, 0(t5)
	sh2add t6, t2, s2
	lw t5, 0(t6)
	blt t4, t5, label18
	addiw t2, t2, 1
	li t4, 16
	blt t2, t4, label15
	sw t3, 56(sp)
	mv s5, zero
	lw a1, 184(sp)
	addw a0, t3, a1
	sw a0, 120(sp)
	li a0, 16
	blt zero, a0, label9
	j label90
.p2align 2
label354:
	mv t6, t5
	addiw t6, t5, 1024
	bgt t0, t6, label33
	mv t5, t6
	addiw t5, t6, 256
	bgt a5, t5, label45
	mv t6, t5
	addiw t6, t5, 64
	bgt a3, t6, label29
	mv t5, t6
	addiw t6, t6, 16
	bgt a2, t6, label384
	mv t5, zero
	addiw t6, t6, 4
	mv a6, zero
	mv a7, zero
	bgt a1, t6, label390
	mv t5, t6
	mv t6, zero
	addiw t5, t5, 1
	mv s5, zero
	bgt a4, t5, label52
	mv t5, zero
	bne t2, zero, label24
	sh2add t5, t2, s1
	lw t6, 0(t5)
	sh2add a6, t6, s0
	sw t4, 0(a6)
	addiw t4, t6, 1
	sw t4, 0(t5)
	sh2add t6, t2, s2
	lw t5, 0(t6)
	blt t4, t5, label18
	addiw t2, t2, 1
	li t4, 16
	blt t2, t4, label15
	j label757
.p2align 2
label367:
	lui t6, 1
	addw t5, t5, t6
	bgt t1, t5, label36
	mv t6, t5
	addiw t6, t5, 1024
	bgt t0, t6, label33
	mv t5, t6
	addiw t5, t6, 256
	bgt a5, t5, label45
	mv t6, t5
	addiw t6, t5, 64
	bgt a3, t6, label29
	mv t5, t6
	addiw t6, t6, 16
	bgt a2, t6, label384
	mv t5, zero
	addiw t6, t6, 4
	mv a6, zero
	mv a7, zero
	bgt a1, t6, label390
	mv t5, t6
	mv t6, zero
	addiw t5, t5, 1
	mv s5, zero
	bgt a4, t5, label52
	mv t5, zero
	bne t2, zero, label24
	sh2add t5, t2, s1
	lw t6, 0(t5)
	sh2add a6, t6, s0
	sw t4, 0(a6)
	addiw t4, t6, 1
	sw t4, 0(t5)
	sh2add t6, t2, s2
	lw t5, 0(t6)
	blt t4, t5, label18
	j label761
.p2align 2
label672:
	mv t5, t6
	mv t6, a6
	addiw t5, t5, 1
	slli a7, a6, 1
	srli s5, a7, 60
	add a6, a6, s5
	sraiw t6, a6, 4
	bgt a4, t5, label52
	slli t5, t6, 1
	srli a7, t5, 60
	add a6, t6, a7
	andi a7, a6, -16
	subw t5, t6, a7
	bne t2, t5, label24
	sh2add t5, t2, s1
	lw t6, 0(t5)
	sh2add a6, t6, s0
	sw t4, 0(a6)
	addiw t4, t6, 1
	sw t4, 0(t5)
	sh2add t6, t2, s2
	lw t5, 0(t6)
	blt t4, t5, label18
	addiw t2, t2, 1
	li t4, 16
	blt t2, t4, label15
	sw t3, 56(sp)
	mv s5, zero
	lw a1, 184(sp)
	addw a0, t3, a1
	sw a0, 120(sp)
	li a0, 16
	blt zero, a0, label9
	j label90
.p2align 2
label335:
	mv t5, t6
	addiw t6, t6, 16
	bgt a2, t6, label384
	mv t5, zero
	addiw t6, t6, 4
	mv a6, zero
	mv a7, zero
	bgt a1, t6, label390
	mv t5, t6
	mv t6, zero
	addiw t5, t5, 1
	mv s5, zero
	bgt a4, t5, label52
	mv t5, zero
	bne t2, zero, label24
	sh2add t5, t2, s1
	lw t6, 0(t5)
	sh2add a6, t6, s0
	sw t4, 0(a6)
	addiw t4, t6, 1
	sw t4, 0(t5)
	sh2add t6, t2, s2
	lw t5, 0(t6)
	blt t4, t5, label18
	addiw t2, t2, 1
	li t4, 16
	blt t2, t4, label15
	sw t3, 56(sp)
	lw a1, 184(sp)
	addw a0, t3, a1
	sw a0, 120(sp)
	li a0, 16
	blt zero, a0, label9
	j label90
.p2align 2
label733:
	mv t5, zero
	addiw t6, t6, 4
	mv a6, zero
	mv a7, zero
	bgt a1, t6, label390
	mv t5, t6
	mv t6, zero
	addiw t5, t5, 1
	mv s5, zero
	bgt a4, t5, label52
	mv t5, zero
	bne t2, zero, label24
	j label760
.p2align 2
label321:
	mv t5, zero
	mv t6, t4
	li t5, 1
	slli a7, t4, 1
	srli s5, a7, 60
	add a6, t4, s5
	sraiw t6, a6, 4
	bgt a4, t5, label52
	slli t5, t6, 1
	srli a7, t5, 60
	add a6, t6, a7
	andi a7, a6, -16
	subw t5, t6, a7
	bne t2, t5, label24
	sh2add t5, t2, s1
	lw t6, 0(t5)
	sh2add a6, t6, s0
	sw t4, 0(a6)
	addiw t4, t6, 1
	sw t4, 0(t5)
	sh2add t6, t2, s2
	lw t5, 0(t6)
	blt t4, t5, label18
	addiw t2, t2, 1
	li t4, 16
	blt t2, t4, label15
	sw t3, 56(sp)
	mv s5, zero
	lw a1, 184(sp)
	addw a0, t3, a1
	sw a0, 120(sp)
	li a0, 16
	blt zero, a0, label9
	j label90
.p2align 2
label642:
	slli t5, t6, 1
	srli a7, t5, 60
	add a6, t6, a7
	andi a7, a6, -16
	subw t5, t6, a7
	bne t2, t5, label24
	sh2add t5, t2, s1
	lw t6, 0(t5)
	sh2add a6, t6, s0
	sw t4, 0(a6)
	addiw t4, t6, 1
	sw t4, 0(t5)
	sh2add t6, t2, s2
	lw t5, 0(t6)
	blt t4, t5, label18
	addiw t2, t2, 1
	li t4, 16
	blt t2, t4, label15
	sw t3, 56(sp)
	mv s5, zero
	lw a1, 184(sp)
	addw a0, t3, a1
	sw a0, 120(sp)
	li a0, 16
	blt zero, a0, label9
	j label90
.p2align 2
label757:
	sw t3, 56(sp)
	mv s5, zero
	lw a1, 184(sp)
	addw a0, t3, a1
	sw a0, 120(sp)
	li a0, 16
	blt zero, a0, label9
	j label90
.p2align 2
label761:
	addiw t2, t2, 1
	li t4, 16
	blt t2, t4, label15
	j label757
.p2align 2
label581:
	mv t6, t4
	slli t5, t4, 1
	srli a7, t5, 60
	add a6, t4, a7
	andi a7, a6, -16
	subw t5, t4, a7
	bne t2, t5, label24
	sh2add t5, t2, s1
	lw t6, 0(t5)
	sh2add a6, t6, s0
	sw t4, 0(a6)
	addiw t4, t6, 1
	sw t4, 0(t5)
	sh2add t6, t2, s2
	lw t5, 0(t6)
	blt t4, t5, label18
	addiw t2, t2, 1
	li t4, 16
	blt t2, t4, label15
	sw t3, 56(sp)
	mv s5, zero
	lw a1, 184(sp)
	addw a0, t3, a1
	sw a0, 120(sp)
	li a0, 16
	blt zero, a0, label9
	j label90
.p2align 2
label56:
	sh2add t5, t4, s0
	lw t6, 0(t5)
	bgt a4, zero, label58
	j label402
.p2align 2
label417:
	mv t5, zero
	li t5, 256
	bgt a5, t5, label76
	mv a6, t5
	addiw a6, t5, 64
	bgt a3, a6, label78
	mv t5, a6
	addiw t6, a6, 16
	bgt a2, t6, label468
	mv t5, zero
	addiw t6, t6, 4
	mv a6, zero
	mv a7, zero
	bgt a1, t6, label474
	mv t5, t6
	mv t6, zero
	addiw t5, t5, 1
	bgt a4, t5, label85
	addiw t4, t4, 1
	mv t5, s3
	lw a7, 0(s3)
	addi t6, a7, 1
	sw t6, 0(s3)
	bgt t2, t4, label56
	j label3
.p2align 2
label411:
	mv t5, zero
	li t6, 16
	bgt a2, t6, label468
	addiw t6, t6, 4
	mv a6, zero
	mv a7, zero
	bgt a1, t6, label474
	mv t5, t6
	mv t6, zero
	addiw t5, t5, 1
	ble a4, t5, label657
.p2align 2
label85:
	addiw t5, t5, 1
	slli a7, t6, 1
	srli a6, a7, 60
	add a7, t6, a6
	sraiw t6, a7, 4
	bgt a4, t5, label85
	andi a6, t6, 15
	addiw t4, t4, 1
	sh2add t5, a6, s3
	lw a7, 0(t5)
	addi t6, a7, 1
	sw t6, 0(t5)
	bgt t2, t4, label56
	j label3
.p2align 2
label414:
	mv a6, zero
	li a6, 64
	bgt a3, a6, label78
	mv t5, a6
	addiw t6, a6, 16
	bgt a2, t6, label468
	mv t5, zero
	addiw t6, t6, 4
	mv a6, zero
	mv a7, zero
	bgt a1, t6, label474
	j label685
.p2align 2
label82:
	addiw t6, t6, 4
	slli a6, t5, 1
	srli a7, a6, 48
	add t5, t5, a7
	sraiw a6, t5, 16
	ble a1, t6, label473
.p2align 2
label474:
	mv t5, a6
	j label82
.p2align 2
label66:
	lui a6, 16
	addw t6, t5, a6
	bgt a0, t6, label432
	lui t6, 4
	addw t5, t5, t6
	bgt a0, t5, label68
	lui a6, 1
	addw t5, t5, a6
	bgt t1, t5, label72
	mv t6, t5
	addiw t6, t5, 1024
	bgt t0, t6, label74
	mv t5, t6
	addiw t5, t6, 256
	bgt a5, t5, label76
	mv a6, t5
	addiw a6, t5, 64
	bgt a3, a6, label78
	mv t5, a6
	addiw t6, a6, 16
	bgt a2, t6, label468
	j label467
.p2align 2
label80:
	addiw t6, t5, 16
	ble a2, t6, label467
.p2align 2
label468:
	mv t5, t6
	j label80
.p2align 2
label426:
	mv t5, zero
	lui a6, 16
	sext.w t6, a6
	bgt a0, t6, label432
	lui t6, 4
	sext.w t5, t6
	ble a0, t5, label633
.p2align 2
label68:
	lui t6, 4
	addw t5, t5, t6
	bgt a0, t5, label68
	lui a6, 1
	addw t5, t5, a6
	bgt t1, t5, label72
	mv t6, t5
	addiw t6, t5, 1024
	bgt t0, t6, label74
	mv t5, t6
	addiw t5, t6, 256
	bgt a5, t5, label76
	mv a6, t5
	addiw a6, t5, 64
	bgt a3, a6, label78
	mv t5, a6
	addiw t6, a6, 16
	bgt a2, t6, label468
	mv t5, zero
	addiw t6, t6, 4
	mv a6, zero
	mv a7, zero
	bgt a1, t6, label474
.p2align 2
label610:
	mv t5, t6
	mv t6, a6
	addiw t5, t5, 1
	slli a7, a6, 1
	srli a6, a7, 60
	add a7, t6, a6
	sraiw t6, a7, 4
	bgt a4, t5, label85
	andi a6, t6, 15
	addiw t4, t4, 1
	sh2add t5, a6, s3
	lw a7, 0(t5)
	addi t6, a7, 1
	sw t6, 0(t5)
	bgt t2, t4, label56
	j label3
.p2align 2
label467:
	mv t5, zero
	addiw t6, t6, 4
	mv a6, zero
	mv a7, zero
	bgt a1, t6, label474
	j label610
.p2align 2
label633:
	lui a6, 1
	addw t5, t5, a6
	bgt t1, t5, label72
	j label660
.p2align 2
label763:
	mv t5, a6
	j label80
.p2align 2
label72:
	lui a6, 1
	addw t5, t5, a6
	bgt t1, t5, label72
	mv t6, t5
.p2align 2
label74:
	addiw t6, t6, 1024
	bgt t0, t6, label74
	mv t5, t6
.p2align 2
label76:
	addiw t5, t5, 256
	bgt a5, t5, label76
	mv a6, t5
.p2align 2
label78:
	addiw a6, a6, 64
	bgt a3, a6, label78
	j label763
.p2align 2
label58:
	li a6, 4
	ble a4, a6, label405
	li a6, 16
	ble a1, a6, label408
	li t6, 64
	ble a2, t6, label411
	li t5, 256
	ble a3, t5, label414
	li t6, 1024
	ble a5, t6, label417
	lui t5, 1
	ble t0, t5, label420
	lui t6, 4
	ble t1, t6, label423
	lui t6, 64
	ble a0, t6, label426
	mv t6, zero
	lui a7, 128
	lui a6, 64
	sext.w t5, a7
	sext.w t6, a6
	bgt a0, t5, label70
	j label606
.p2align 2
label432:
	mv t5, t6
	j label66
.p2align 2
label70:
	lui a7, 128
	lui a6, 64
	addw t5, t6, a7
	addw t6, t6, a6
	bgt a0, t5, label70
	mv t5, t6
	lui a6, 16
	addw t6, t6, a6
	bgt a0, t6, label432
	lui t6, 4
	addw t5, t5, t6
	bgt a0, t5, label68
	lui a6, 1
	addw t5, t5, a6
	bgt t1, t5, label72
	mv t6, t5
	addiw t6, t5, 1024
	bgt t0, t6, label74
	mv t5, t6
	addiw t5, t6, 256
	bgt a5, t5, label76
	mv a6, t5
	addiw a6, t5, 64
	bgt a3, a6, label78
	mv t5, a6
	addiw t6, a6, 16
	bgt a2, t6, label468
	j label467
label3:
	sw t3, 56(sp)
	lw t4, 184(sp)
	addw t2, t3, t4
	sw t2, 120(sp)
	sw t2, 60(sp)
	lw t4, 188(sp)
	addw t2, t2, t4
	sw t2, 124(sp)
	sw t2, 64(sp)
	lw t4, 192(sp)
	addw t2, t2, t4
	sw t2, 128(sp)
	sw t2, 68(sp)
	lw t4, 196(sp)
	addw t2, t2, t4
	sw t2, 132(sp)
	sw t2, 72(sp)
	lw t4, 200(sp)
	addw t2, t2, t4
	sw t2, 136(sp)
	sw t2, 76(sp)
	lw t4, 204(sp)
	addw t2, t2, t4
	sw t2, 140(sp)
	sw t2, 80(sp)
	lw t4, 208(sp)
	addw t2, t2, t4
	sw t2, 144(sp)
	sw t2, 84(sp)
	lw t4, 212(sp)
	addw t2, t2, t4
	sw t2, 148(sp)
	sw t2, 88(sp)
	lw t4, 216(sp)
	addw t2, t2, t4
	sw t2, 152(sp)
	sw t2, 92(sp)
	lw t4, 220(sp)
	addw t2, t2, t4
	sw t2, 156(sp)
	sw t2, 96(sp)
	lw t4, 224(sp)
	addw t2, t2, t4
	sw t2, 160(sp)
	sw t2, 100(sp)
	lw t4, 228(sp)
	addw t2, t2, t4
	sw t2, 164(sp)
	sw t2, 104(sp)
	lw t4, 232(sp)
	addw t2, t2, t4
	sw t2, 168(sp)
	sw t2, 108(sp)
	lw t4, 236(sp)
	addw t2, t2, t4
	sw t2, 172(sp)
	sw t2, 112(sp)
	lw t4, 240(sp)
	addw t2, t2, t4
	sw t2, 176(sp)
	sw t2, 116(sp)
	lw t4, 244(sp)
	addw t5, t2, t4
	mv t2, zero
	sw t5, 180(sp)
	j label4
.p2align 2
label405:
	mv t5, zero
	li t5, 1
	slli a7, t6, 1
	srli a6, a7, 60
	add a7, t6, a6
	sraiw t6, a7, 4
	bgt a4, t5, label85
	andi a6, t6, 15
	addiw t4, t4, 1
	sh2add t5, a6, s3
	lw a7, 0(t5)
	addi t6, a7, 1
	sw t6, 0(t5)
	bgt t2, t4, label56
	j label3
.p2align 2
label4:
	li t4, 16
	blt t2, t4, label15
	sw t3, 56(sp)
	mv s5, zero
	lw a1, 184(sp)
	addw a0, t3, a1
	sw a0, 120(sp)
	li a0, 16
	bge zero, a0, label90
.p2align 2
label9:
	ble s5, zero, label262
	addiw a0, s5, -1
	sh2add a3, s5, s1
	sh2add a1, a0, s2
	sh2add a0, s5, s3
	lw a2, 0(a1)
	sw a2, 0(a3)
	lw a1, 0(a0)
	sh2add a0, s5, s2
	addw a3, a2, a1
	sw a3, 0(a0)
	j label11
.p2align 2
label16:
	sh2add t6, t2, s2
	lw t5, 0(t6)
	blt t4, t5, label18
	addiw t2, t2, 1
	li t4, 16
	blt t2, t4, label15
	sw t3, 56(sp)
	mv s5, zero
	lw a1, 184(sp)
	addw a0, t3, a1
	sw a0, 120(sp)
	li a0, 16
	blt zero, a0, label9
	j label90
.p2align 2
label473:
	mv t5, t6
	mv t6, a6
	addiw t5, t5, 1
	slli a7, a6, 1
	srli a6, a7, 60
	add a7, t6, a6
	sraiw t6, a7, 4
	bgt a4, t5, label85
	andi a6, t6, 15
	addiw t4, t4, 1
	sh2add t5, a6, s3
	lw a7, 0(t5)
	addi t6, a7, 1
	sw t6, 0(t5)
	bgt t2, t4, label56
	j label3
.p2align 2
label408:
	mv t5, t6
	mv t6, zero
	li t6, 4
	slli a6, t5, 1
	srli a7, a6, 48
	add t5, t5, a7
	sraiw a6, t5, 16
	bgt a1, t6, label474
	mv t5, t6
	mv t6, a6
	addiw t5, t5, 1
	slli a7, a6, 1
	srli a6, a7, 60
	add a7, t6, a6
	sraiw t6, a7, 4
	bgt a4, t5, label85
	andi a6, t6, 15
	addiw t4, t4, 1
	sh2add t5, a6, s3
	lw a7, 0(t5)
	addi t6, a7, 1
	sw t6, 0(t5)
	bgt t2, t4, label56
	j label3
.p2align 2
label685:
	mv t5, t6
	mv t6, a6
	addiw t5, t5, 1
	slli a7, a6, 1
	srli a6, a7, 60
	add a7, t6, a6
	sraiw t6, a7, 4
	bgt a4, t5, label85
	andi a6, t6, 15
	addiw t4, t4, 1
	sh2add t5, a6, s3
	lw a7, 0(t5)
	addi t6, a7, 1
	sw t6, 0(t5)
	bgt t2, t4, label56
	j label3
.p2align 2
label606:
	mv t5, t6
	lui a6, 16
	addw t6, t6, a6
	bgt a0, t6, label432
	lui t6, 4
	addw t5, t5, t6
	bgt a0, t5, label68
	lui a6, 1
	addw t5, t5, a6
	bgt t1, t5, label72
	mv t6, t5
	addiw t6, t5, 1024
	bgt t0, t6, label74
	mv t5, t6
	addiw t5, t6, 256
	bgt a5, t5, label76
	mv a6, t5
	addiw a6, t5, 64
	bgt a3, a6, label78
	j label763
.p2align 2
label660:
	mv t6, t5
	addiw t6, t5, 1024
	bgt t0, t6, label74
	mv t5, t6
	addiw t5, t6, 256
	bgt a5, t5, label76
	mv a6, t5
	addiw a6, t5, 64
	bgt a3, a6, label78
	j label763
label262:
	sh2add a0, s5, s1
	sh2add a1, s5, s2
	lw a2, 0(a0)
	lw a3, 0(a1)
.p2align 2
label11:
	mv a0, s4
	mv a1, s0
	jal radixSort
	addiw s5, s5, 1
	li a0, 16
	blt s5, a0, label9
	j label90
.p2align 2
label657:
	andi a6, t6, 15
	addiw t4, t4, 1
	sh2add t5, a6, s3
	lw a7, 0(t5)
	addi t6, a7, 1
	sw t6, 0(t5)
	bgt t2, t4, label56
	j label3
.p2align 2
label402:
	andi a6, t6, 15
	addiw t4, t4, 1
	sh2add t5, a6, s3
	lw a7, 0(t5)
	addi t6, a7, 1
	sw t6, 0(t5)
	bgt t2, t4, label56
	j label3
.p2align 2
label349:
	mv t5, zero
	j label36
label423:
	mv t5, zero
	j label72
.p2align 2
label341:
	mv t6, zero
	j label33
label420:
	mv t6, zero
	j label74
.p2align 2
label330:
	mv t6, zero
	j label29
.globl main
main:
.p2align 2
	addi sp, sp, -32
pcrel902:
	auipc a0, %pcrel_hi(a)
	sd ra, 0(sp)
	sd s2, 8(sp)
	addi s2, a0, %pcrel_lo(pcrel902)
	sd s1, 16(sp)
	mv s1, s2
	sd s0, 24(sp)
	mv a0, s2
	jal getarray
	mv s0, a0
	li a0, 90
	jal _sysy_starttime
	mv a2, zero
	mv a1, s2
	li a0, 8
	mv a3, s0
	jal radixSort
	ble s0, zero, label838
	addiw a2, s0, -4
	li a1, 4
	ble s0, a1, label843
	mv a1, zero
	mv a0, zero
label826:
	sh2add a4, a1, s1
	addiw a5, a1, 3
	addiw t2, a1, 1
	lw a3, 0(a4)
	lw t1, 4(a4)
	remw t0, t1, a5
	mulw t1, t0, t2
	lw t2, 8(a4)
	addiw t0, a1, 2
	lw a4, 12(a4)
	remw a3, a3, t0
	mulw t3, a1, a3
	addiw a3, a1, 4
	addw t1, t1, t3
	addiw a1, a1, 5
	remw t3, t2, a3
	mulw t2, t0, t3
	addw t0, t1, t2
	remw t1, a4, a1
	mulw a4, a5, t1
	addw a1, t0, a4
	addw a0, a0, a1
	ble a2, a3, label829
	mv a1, a3
	j label826
label843:
	mv a0, zero
	mv a3, zero
label829:
	sh2add a2, a3, s1
	addiw a4, a3, 2
	lw a1, 0(a2)
	remw a2, a1, a4
	mulw a1, a3, a2
	addiw a3, a3, 1
	addw a0, a0, a1
	bgt s0, a3, label829
	mv s0, a0
label832:
	li a0, 102
	jal _sysy_stoptime
	subw a1, zero, s0
	max a0, a1, s0
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s2, 8(sp)
	ld s1, 16(sp)
	ld s0, 24(sp)
	addi sp, sp, 32
	ret
label838:
	mv s0, zero
	j label832
