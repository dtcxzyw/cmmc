.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
a:
	.zero	120000040
.text
radixSort:
	addi sp, sp, -248
	addiw a4, a2, 1
	xori a5, a0, -1
	slt t0, a4, a3
	sd s0, 240(sp)
	sltiu a4, a5, 1
	mv s0, a1
	sd s5, 232(sp)
	xori a1, t0, 1
	sd s3, 224(sp)
	or a1, a1, a4
	addi s3, sp, 0
	sd s2, 216(sp)
	addi s2, sp, 64
	sd s1, 208(sp)
	addi s1, sp, 128
	sd s4, 200(sp)
	sd ra, 192(sp)
	sd zero, 128(sp)
	sd zero, 136(sp)
	sd zero, 144(sp)
	sd zero, 152(sp)
	sd zero, 160(sp)
	sd zero, 168(sp)
	sd zero, 176(sp)
	sd zero, 184(sp)
	sd zero, 64(sp)
	sd zero, 72(sp)
	sd zero, 80(sp)
	sd zero, 88(sp)
	sd zero, 96(sp)
	sd zero, 104(sp)
	sd zero, 112(sp)
	sd zero, 120(sp)
	sd zero, 0(sp)
	sd zero, 8(sp)
	sd zero, 16(sp)
	sd zero, 24(sp)
	sd zero, 32(sp)
	sd zero, 40(sp)
	sd zero, 48(sp)
	sd zero, 56(sp)
	beq a1, zero, label3
	j label2
label421:
	slli t1, a4, 1
	srli a5, t1, 48
	add t2, a4, a5
	mv a5, t0
	sraiw a4, t2, 16
	j label8
label3:
	addiw s4, a0, -1
	bge a2, a3, label111
	mv a1, a2
	sh2add a5, a2, s0
	lw a4, 0(a5)
	ble a0, zero, label6
	mv a5, zero
	li t0, 4
	ble a0, t0, label12
	slli t1, a4, 1
	srli a5, t1, 48
	add t2, a4, a5
	mv a5, t0
	sraiw a4, t2, 16
	addiw t0, t0, 4
	ble a0, t0, label12
	slli t1, a4, 1
	srli a5, t1, 48
	add t2, a4, a5
	mv a5, t0
	sraiw a4, t2, 16
	addiw t0, t0, 4
	ble a0, t0, label12
	slli t1, a4, 1
	srli a5, t1, 48
	add t2, a4, a5
	mv a5, t0
	sraiw a4, t2, 16
	addiw t0, t0, 4
	ble a0, t0, label12
	slli t1, a4, 1
	srli a5, t1, 48
	add t2, a4, a5
	mv a5, t0
	sraiw a4, t2, 16
	addiw t0, t0, 4
	ble a0, t0, label12
	j label421
label8:
	addiw t0, a5, 4
	ble a0, t0, label12
	j label421
label6:
	andi a5, a4, 15
	addiw a1, a1, 1
	sh2add a4, a5, s3
	lw t0, 0(a4)
	addiw a5, t0, 1
	sw a5, 0(a4)
	ble a3, a1, label111
	sh2add a5, a1, s0
	lw a4, 0(a5)
	ble a0, zero, label6
	mv a5, zero
	li t0, 4
	ble a0, t0, label12
	slli t1, a4, 1
	srli a5, t1, 48
	add t2, a4, a5
	mv a5, t0
	sraiw a4, t2, 16
	addiw t0, t0, 4
	ble a0, t0, label12
	slli t1, a4, 1
	srli a5, t1, 48
	add t2, a4, a5
	mv a5, t0
	sraiw a4, t2, 16
	addiw t0, t0, 4
	ble a0, t0, label12
	slli t1, a4, 1
	srli a5, t1, 48
	add t2, a4, a5
	mv a5, t0
	sraiw a4, t2, 16
	addiw t0, t0, 4
	ble a0, t0, label12
	slli t1, a4, 1
	srli a5, t1, 48
	add t2, a4, a5
	mv a5, t0
	sraiw a4, t2, 16
	addiw t0, t0, 4
	ble a0, t0, label12
	j label421
label12:
	addiw a5, a5, 1
	slli t0, a4, 1
	srli t1, t0, 60
	add t2, a4, t1
	sraiw a4, t2, 4
	ble a0, a5, label6
	j label12
label2:
	ld ra, 192(sp)
	ld s4, 200(sp)
	ld s1, 208(sp)
	ld s2, 216(sp)
	ld s3, 224(sp)
	ld s5, 232(sp)
	ld s0, 240(sp)
	addi sp, sp, 248
	ret
label111:
	sw a2, 128(sp)
	lw a1, 0(sp)
	addw a3, a2, a1
	li a1, 1
	sw a3, 64(sp)
label16:
	addiw a4, a1, -1
	sh2add t1, a1, s1
	sh2add t0, a1, s3
	sh2add a5, a4, s2
	sh2add a4, a1, s2
	lw a3, 0(a5)
	sw a3, 0(t1)
	lw a5, 0(t0)
	addw t3, a3, a5
	sw t3, 0(a4)
	sw t3, 4(t1)
	lw t2, 4(t0)
	addw a3, a3, t2
	addw t4, t3, t2
	sw t4, 4(a4)
	sw t4, 8(t1)
	lw t3, 8(t0)
	addw t4, t4, t3
	sw t4, 8(a4)
	sw t4, 12(t1)
	lw t1, 12(t0)
	addw t0, a3, t1
	addw a3, a5, t3
	addw a5, t0, a3
	addiw a3, a1, 4
	sw a5, 12(a4)
	li a4, 13
	bge a3, a4, label18
	mv a1, a3
	j label16
label18:
	addiw a5, a1, 3
	sh2add a1, a5, s2
	sh2add a5, a3, s1
	lw a4, 0(a1)
	sh2add a3, a3, s3
	sw a4, 0(a5)
	lw t0, 0(a3)
	addw t1, a4, t0
	sw t1, 4(a1)
	sw t1, 4(a5)
	lw t2, 4(a3)
	addw a4, a4, t2
	addw t1, t1, t2
	sw t1, 8(a1)
	sw t1, 8(a5)
	lw t1, 8(a3)
	addw a5, t0, t1
	addw a3, a4, a5
	sw a3, 12(a1)
	mv a1, zero
	li a3, 16
	bge zero, a3, label39
	mv a4, s1
	lw a3, 0(s1)
	mv a4, s2
	lw a5, 0(s2)
	bge a3, a5, label38
	sh2add a4, a3, s0
	lw a3, 0(a4)
	ble a0, zero, label219
	mv a5, zero
	mv a4, a3
	li t0, 4
	ble a0, t0, label34
	slli a5, a3, 1
	srli t2, a5, 48
	mv a5, t0
	add t1, a3, t2
	sraiw a4, t1, 16
	addiw t0, t0, 4
	ble a0, t0, label34
	slli a5, a4, 1
	srli t2, a5, 48
	mv a5, t0
	add t1, a4, t2
	sraiw a4, t1, 16
	addiw t0, t0, 4
	ble a0, t0, label34
	slli a5, a4, 1
	srli t2, a5, 48
	mv a5, t0
	add t1, a4, t2
	sraiw a4, t1, 16
	addiw t0, t0, 4
	ble a0, t0, label34
	j label427
label39:
	sw a2, 128(sp)
	mv s5, zero
	lw a1, 0(sp)
	addw a0, a2, a1
	sw a0, 64(sp)
	li a0, 16
	bge zero, a0, label2
	j label44
label427:
	slli a5, a4, 1
	srli t2, a5, 48
	mv a5, t0
	add t1, a4, t2
	sraiw a4, t1, 16
	addiw t0, t0, 4
	ble a0, t0, label34
	j label427
label219:
	mv a4, a3
label27:
	slli t1, a4, 1
	srli a5, t1, 60
	add t0, a4, a5
	andi t1, t0, -16
	subw a4, a4, t1
	beq a1, a4, label30
	sh2add a4, a4, s1
	lw a5, 0(a4)
	sh2add t1, a5, s0
	addiw a5, a5, 1
	lw t0, 0(t1)
	sw a3, 0(t1)
	mv a3, t0
	sw a5, 0(a4)
	ble a0, zero, label219
	mv a5, zero
	mv a4, t0
	li t0, 4
	ble a0, t0, label34
	slli a5, a4, 1
	srli t2, a5, 48
	mv a5, t0
	add t1, a4, t2
	sraiw a4, t1, 16
	addiw t0, t0, 4
	ble a0, t0, label34
	slli a5, a4, 1
	srli t2, a5, 48
	mv a5, t0
	add t1, a4, t2
	sraiw a4, t1, 16
	addiw t0, t0, 4
	ble a0, t0, label34
	slli a5, a4, 1
	srli t2, a5, 48
	mv a5, t0
	add t1, a4, t2
	sraiw a4, t1, 16
	addiw t0, t0, 4
	ble a0, t0, label34
	slli a5, a4, 1
	srli t2, a5, 48
	mv a5, t0
	add t1, a4, t2
	sraiw a4, t1, 16
	addiw t0, t0, 4
	ble a0, t0, label34
	j label427
label30:
	sh2add a4, a1, s1
	lw a5, 0(a4)
	sh2add t0, a5, s0
	sw a3, 0(t0)
	addiw a3, a5, 1
	sw a3, 0(a4)
	sh2add a4, a1, s2
	lw a5, 0(a4)
	bge a3, a5, label38
	sh2add a4, a3, s0
	lw a3, 0(a4)
	ble a0, zero, label219
	mv a5, zero
	mv a4, a3
	li t0, 4
	ble a0, t0, label34
	slli a5, a3, 1
	srli t2, a5, 48
	mv a5, t0
	add t1, a3, t2
	sraiw a4, t1, 16
	addiw t0, t0, 4
	ble a0, t0, label34
	slli a5, a4, 1
	srli t2, a5, 48
	mv a5, t0
	add t1, a4, t2
	sraiw a4, t1, 16
	addiw t0, t0, 4
	ble a0, t0, label34
	j label427
label38:
	addiw a1, a1, 1
	li a3, 16
	bge a1, a3, label39
	sh2add a4, a1, s1
	lw a3, 0(a4)
	sh2add a4, a1, s2
	lw a5, 0(a4)
	bge a3, a5, label38
	sh2add a4, a3, s0
	lw a3, 0(a4)
	ble a0, zero, label219
	mv a5, zero
	mv a4, a3
	li t0, 4
	ble a0, t0, label34
	slli a5, a3, 1
	srli t2, a5, 48
	mv a5, t0
	add t1, a3, t2
	sraiw a4, t1, 16
	addiw t0, t0, 4
	ble a0, t0, label34
	slli a5, a4, 1
	srli t2, a5, 48
	mv a5, t0
	add t1, a4, t2
	sraiw a4, t1, 16
	addiw t0, t0, 4
	ble a0, t0, label34
	slli a5, a4, 1
	srli t2, a5, 48
	mv a5, t0
	add t1, a4, t2
	sraiw a4, t1, 16
	addiw t0, t0, 4
	ble a0, t0, label34
	slli a5, a4, 1
	srli t2, a5, 48
	mv a5, t0
	add t1, a4, t2
	sraiw a4, t1, 16
	addiw t0, t0, 4
	ble a0, t0, label34
	j label427
label34:
	addiw a5, a5, 1
	slli t1, a4, 1
	srli t0, t1, 60
	add t2, a4, t0
	sraiw a4, t2, 4
	ble a0, a5, label27
	j label34
label43:
	addiw a1, s5, -1
	sh2add a3, s5, s3
	sh2add a2, a1, s2
	sh2add a1, s5, s1
	lw a0, 0(a2)
	sw a0, 0(a1)
	sh2add a1, s5, s2
	lw a2, 0(a3)
	addw a0, a0, a2
	sw a0, 0(a1)
label44:
	sh2add a0, s5, s1
	sh2add a1, s5, s2
	lw a2, 0(a0)
	lw a3, 0(a1)
	mv a0, s4
	mv a1, s0
	jal radixSort
	addiw s5, s5, 1
	li a0, 16
	bge s5, a0, label2
	ble s5, zero, label44
	j label43
.globl main
main:
	addi sp, sp, -32
pcrel520:
	auipc a0, %pcrel_hi(a)
	sd s2, 24(sp)
	addi s2, a0, %pcrel_lo(pcrel520)
	sd s1, 16(sp)
	mv s1, s2
	sd s0, 8(sp)
	sd ra, 0(sp)
	mv a0, s2
	jal getarray
	mv s0, a0
	li a0, 90
	jal _sysy_starttime
	mv a1, s2
	mv a2, zero
	li a0, 8
	mv a3, s0
	jal radixSort
	ble s0, zero, label455
	mv a2, zero
	mv a0, zero
	li a1, 4
	ble s0, a1, label445
	j label444
label455:
	mv s0, zero
	j label448
label444:
	sh2add a4, a0, s1
	addiw a5, a0, 3
	lw a3, 0(a4)
	lw t0, 4(a4)
	remw t1, t0, a5
	addiw t0, a0, 1
	mulw t2, t1, t0
	lw t0, 8(a4)
	addw a2, a2, t2
	lw a4, 12(a4)
	addiw t2, a0, 5
	remw t0, t0, a1
	remw t1, a4, t2
	mulw a4, a5, t1
	addiw a5, a0, 2
	addw a2, a2, a4
	remw a3, a3, a5
	mulw a4, t0, a5
	mulw a0, a0, a3
	addw a4, a4, a0
	mv a0, a1
	addw a2, a2, a4
	addiw a1, a1, 4
	ble s0, a1, label445
	j label444
label445:
	sh2add a3, a0, s1
	addiw a4, a0, 2
	lw a1, 0(a3)
	remw a3, a1, a4
	mulw a1, a0, a3
	addiw a0, a0, 1
	addw a2, a2, a1
	ble s0, a0, label497
	j label445
label497:
	mv s0, a2
label448:
	li a0, 102
	jal _sysy_stoptime
	subw a1, zero, s0
	max a0, a1, s0
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 32
	ret
