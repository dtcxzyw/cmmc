.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
a1:
	.zero	40000
.align 4
a2:
	.zero	40000
.align 4
a3:
	.zero	40000
.text
.globl main
main:
	addi sp, sp, -48
pcrel804:
	auipc a0, %pcrel_hi(a1)
	sd s0, 40(sp)
	addi s0, a0, %pcrel_lo(pcrel804)
	sd s1, 32(sp)
pcrel805:
	auipc a0, %pcrel_hi(a2)
	sd s2, 24(sp)
	addi s1, a0, %pcrel_lo(pcrel805)
	sd s4, 16(sp)
pcrel806:
	auipc a0, %pcrel_hi(a3)
	sd s3, 8(sp)
	addi s2, a0, %pcrel_lo(pcrel806)
	sd ra, 0(sp)
	mv a0, zero
label2:
	sh2add a1, a0, s0
	li a2, 1717986919
	mulw a4, a0, a0
	mul a3, a4, a2
	srli t1, a3, 63
	srai a5, a3, 34
	li a3, 10
	add t0, t1, a5
	mulw a5, t0, a3
	addiw t0, a0, 1
	subw a4, a4, a5
	sw a4, 0(a1)
	mulw a4, t0, t0
	mul a5, a4, a2
	srli t2, a5, 63
	srai t0, a5, 34
	add t1, t2, t0
	addiw t0, a0, 2
	mulw a5, t1, a3
	subw a4, a4, a5
	sw a4, 4(a1)
	mulw a4, t0, t0
	mul a5, a4, a2
	srli t2, a5, 63
	srai t0, a5, 34
	add t1, t2, t0
	addiw t0, a0, 3
	mulw a5, t1, a3
	subw a4, a4, a5
	sw a4, 8(a1)
	mulw a4, t0, t0
	mul a5, a4, a2
	srli t1, a5, 63
	srai t0, a5, 34
	add a5, t1, t0
	mulw t0, a5, a3
	subw a4, a4, t0
	addiw t0, a0, 4
	sw a4, 12(a1)
	mulw a4, t0, t0
	mul a5, a4, a2
	srli t1, a5, 63
	srai t0, a5, 34
	add a5, t1, t0
	mulw t0, a5, a3
	subw a4, a4, t0
	addiw t0, a0, 5
	sw a4, 16(a1)
	mulw a4, t0, t0
	mul a5, a4, a2
	srli t1, a5, 63
	srai t0, a5, 34
	add a5, t1, t0
	mulw t0, a5, a3
	subw a4, a4, t0
	addiw t0, a0, 6
	sw a4, 20(a1)
	mulw a4, t0, t0
	mul a5, a4, a2
	srli t1, a5, 63
	srai t0, a5, 34
	add a5, t1, t0
	mulw t0, a5, a3
	subw a4, a4, t0
	addiw t0, a0, 7
	sw a4, 24(a1)
	mulw a4, t0, t0
	mul a5, a4, a2
	srli t1, a5, 63
	srai t0, a5, 34
	add t2, t1, t0
	addiw t0, a0, 8
	mulw a5, t2, a3
	subw a4, a4, a5
	sw a4, 28(a1)
	mulw a4, t0, t0
	mul a5, a4, a2
	srli t1, a5, 63
	srai t0, a5, 34
	add a5, t1, t0
	mulw t0, a5, a3
	subw a4, a4, t0
	addiw t0, a0, 9
	sw a4, 32(a1)
	mulw a4, t0, t0
	mul a5, a4, a2
	srli t1, a5, 63
	srai t0, a5, 34
	add a5, t1, t0
	mulw t0, a5, a3
	subw a4, a4, t0
	addiw t0, a0, 10
	sw a4, 36(a1)
	mulw a4, t0, t0
	mul a5, a4, a2
	srli t1, a5, 63
	srai t0, a5, 34
	add a5, t1, t0
	mulw t0, a5, a3
	subw a4, a4, t0
	addiw t0, a0, 11
	sw a4, 40(a1)
	mulw a4, t0, t0
	mul a5, a4, a2
	srli t1, a5, 63
	srai t0, a5, 34
	add t2, t1, t0
	addiw t0, a0, 12
	mulw a5, t2, a3
	subw a4, a4, a5
	sw a4, 44(a1)
	mulw a4, t0, t0
	mul a5, a4, a2
	srli t1, a5, 63
	srai t0, a5, 34
	add a5, t1, t0
	mulw t0, a5, a3
	subw a4, a4, t0
	addiw t0, a0, 13
	sw a4, 48(a1)
	mulw a4, t0, t0
	mul a5, a4, a2
	srli t1, a5, 63
	srai t0, a5, 34
	add a5, t1, t0
	mulw t0, a5, a3
	subw a4, a4, t0
	addiw t0, a0, 14
	sw a4, 52(a1)
	mulw a4, t0, t0
	mul a5, a4, a2
	srli t1, a5, 63
	srai t0, a5, 34
	add a5, t1, t0
	mulw t0, a5, a3
	addiw a5, a0, 15
	subw a4, a4, t0
	addiw a0, a0, 16
	sw a4, 56(a1)
	mulw a4, a5, a5
	mul a2, a4, a2
	srli t0, a2, 63
	srai a5, a2, 34
	add a2, t0, a5
	mulw a3, a2, a3
	subw a4, a4, a3
	sw a4, 60(a1)
	li a1, 10000
	bge a0, a1, label102
	j label2
label102:
	mv a1, zero
label4:
	sh2add a0, a1, s0
	li a2, 1717986919
	lw a3, 0(a0)
	mulw a4, a3, a3
	mul a3, a4, a2
	srli t1, a3, 63
	srai a5, a3, 34
	li a3, 10
	add t0, t1, a5
	mulw t1, t0, a3
	subw a5, a4, t1
	sh2add a4, a1, s1
	addiw a1, a1, 16
	sw a5, 0(a4)
	lw t1, 4(a0)
	mulw a5, t1, t1
	mul t0, a5, a2
	srli t2, t0, 63
	srai t1, t0, 34
	add t0, t2, t1
	mulw t1, t0, a3
	subw a5, a5, t1
	sw a5, 4(a4)
	lw t1, 8(a0)
	mulw a5, t1, t1
	mul t0, a5, a2
	srli t3, t0, 63
	srai t1, t0, 34
	add t2, t3, t1
	mulw t0, t2, a3
	subw a5, a5, t0
	sw a5, 8(a4)
	lw t1, 12(a0)
	mulw a5, t1, t1
	mul t0, a5, a2
	srli t2, t0, 63
	srai t1, t0, 34
	add t0, t2, t1
	mulw t1, t0, a3
	subw a5, a5, t1
	sw a5, 12(a4)
	lw t1, 16(a0)
	mulw a5, t1, t1
	mul t0, a5, a2
	srli t2, t0, 63
	srai t1, t0, 34
	add t0, t2, t1
	mulw t1, t0, a3
	subw a5, a5, t1
	sw a5, 16(a4)
	lw t1, 20(a0)
	mulw a5, t1, t1
	mul t0, a5, a2
	srli t2, t0, 63
	srai t1, t0, 34
	add t3, t2, t1
	mulw t0, t3, a3
	subw a5, a5, t0
	sw a5, 20(a4)
	lw t1, 24(a0)
	mulw a5, t1, t1
	mul t0, a5, a2
	srli t2, t0, 63
	srai t1, t0, 34
	add t0, t2, t1
	mulw t1, t0, a3
	subw a5, a5, t1
	sw a5, 24(a4)
	lw t1, 28(a0)
	mulw a5, t1, t1
	mul t0, a5, a2
	srli t2, t0, 63
	srai t1, t0, 34
	add t3, t2, t1
	mulw t0, t3, a3
	subw a5, a5, t0
	sw a5, 28(a4)
	lw t1, 32(a0)
	mulw a5, t1, t1
	mul t0, a5, a2
	srli t2, t0, 63
	srai t1, t0, 34
	add t0, t2, t1
	mulw t1, t0, a3
	subw a5, a5, t1
	sw a5, 32(a4)
	lw t1, 36(a0)
	mulw a5, t1, t1
	mul t0, a5, a2
	srli t2, t0, 63
	srai t1, t0, 34
	add t3, t2, t1
	mulw t0, t3, a3
	subw a5, a5, t0
	sw a5, 36(a4)
	lw t1, 40(a0)
	mulw a5, t1, t1
	mul t0, a5, a2
	srli t2, t0, 63
	srai t1, t0, 34
	add t0, t2, t1
	mulw t1, t0, a3
	subw a5, a5, t1
	sw a5, 40(a4)
	lw t1, 44(a0)
	mulw a5, t1, t1
	mul t0, a5, a2
	srli t2, t0, 63
	srai t1, t0, 34
	add t3, t2, t1
	mulw t0, t3, a3
	subw a5, a5, t0
	sw a5, 44(a4)
	lw t1, 48(a0)
	mulw a5, t1, t1
	mul t0, a5, a2
	srli t2, t0, 63
	srai t1, t0, 34
	add t0, t2, t1
	mulw t1, t0, a3
	subw a5, a5, t1
	sw a5, 48(a4)
	lw t1, 52(a0)
	mulw a5, t1, t1
	mul t0, a5, a2
	srli t2, t0, 63
	srai t1, t0, 34
	add t3, t2, t1
	mulw t0, t3, a3
	subw a5, a5, t0
	sw a5, 52(a4)
	lw t1, 56(a0)
	mulw a5, t1, t1
	mul t0, a5, a2
	srli t2, t0, 63
	srai t1, t0, 34
	add t3, t2, t1
	mulw t0, t3, a3
	subw t1, a5, t0
	sw t1, 56(a4)
	lw a5, 60(a0)
	mulw a0, a5, a5
	mul a2, a0, a2
	srli t0, a2, 63
	srai a5, a2, 34
	add t1, t0, a5
	mulw a2, t1, a3
	subw a0, a0, a2
	sw a0, 60(a4)
	li a0, 10000
	bge a1, a0, label189
	j label4
label189:
	mv a0, zero
label6:
	sh2add a1, a0, s1
	li a2, 1374389535
	lw a3, 0(a1)
	mulw a4, a3, a3
	mul a3, a4, a2
	srli t1, a3, 63
	srai a5, a3, 37
	li a3, 100
	add t0, t1, a5
	mulw t1, t0, a3
	subw a5, a4, t1
	sh2add a4, a0, s0
	lw t1, 0(a4)
	addw t0, a5, t1
	sh2add a5, a0, s2
	addiw a0, a0, 4
	sw t0, 0(a5)
	lw t2, 4(a1)
	mulw t0, t2, t2
	mul t1, t0, a2
	srli t4, t1, 63
	srai t2, t1, 37
	add t1, t4, t2
	lw t2, 4(a4)
	mulw t3, t1, a3
	subw t0, t0, t3
	addw t1, t0, t2
	sw t1, 4(a5)
	lw t2, 8(a1)
	mulw t0, t2, t2
	mul t1, t0, a2
	srli t4, t1, 63
	srai t2, t1, 37
	add t3, t4, t2
	lw t2, 8(a4)
	mulw t1, t3, a3
	subw t0, t0, t1
	addw t1, t0, t2
	sw t1, 8(a5)
	lw t0, 12(a1)
	mulw a1, t0, t0
	mul a2, a1, a2
	srli t1, a2, 63
	srai t0, a2, 37
	add a2, t1, t0
	mulw a3, a2, a3
	lw a2, 12(a4)
	subw a1, a1, a3
	addw a3, a1, a2
	li a1, 10000
	sw a3, 12(a5)
	bge a0, a1, label229
	j label6
label229:
	mv s4, zero
	mv s3, zero
	li a0, 10000
	bge zero, a0, label11
	li a1, 10
	bge zero, a1, label13
	j label28
label11:
	mv a0, s4
	ld ra, 0(sp)
	ld s3, 8(sp)
	ld s4, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s0, 40(sp)
	addi sp, sp, 48
	ret
label13:
	li a0, 20
	bge s3, a0, label19
	j label240
label19:
	li a0, 30
	bge s3, a0, label20
	li a0, 5000
	li a1, 10000
	bge a0, a1, label24
	li a1, 2233
	ble a0, a1, label26
	sh2add a3, s3, s1
	lw a2, 0(a3)
	sh2add a3, a0, s0
	addw a1, s4, a2
	addiw a0, a0, 1
	lw a2, 0(a3)
	subw s4, a1, a2
	li a1, 10000
	bge a0, a1, label24
	li a1, 2233
	ble a0, a1, label26
	sh2add a3, s3, s1
	lw a2, 0(a3)
	sh2add a3, a0, s0
	addw a1, s4, a2
	addiw a0, a0, 1
	lw a2, 0(a3)
	subw s4, a1, a2
	li a1, 10000
	bge a0, a1, label24
	li a1, 2233
	ble a0, a1, label26
	sh2add a3, s3, s1
	lw a2, 0(a3)
	sh2add a3, a0, s0
	addw a1, s4, a2
	addiw a0, a0, 1
	lw a2, 0(a3)
	subw s4, a1, a2
	li a1, 10000
	bge a0, a1, label24
	li a1, 2233
	ble a0, a1, label26
	sh2add a3, s3, s1
	lw a2, 0(a3)
	sh2add a3, a0, s0
	addw a1, s4, a2
	addiw a0, a0, 1
	lw a2, 0(a3)
	subw s4, a1, a2
	li a1, 10000
	bge a0, a1, label24
	li a1, 2233
	ble a0, a1, label26
	j label786
label24:
	mv a0, s4
	jal putint
	addiw s3, s3, 1
	li a0, 10000
	bge s3, a0, label11
	li a1, 10
	bge s3, a1, label13
label28:
	sh2add a2, s3, s2
	li a3, 824839931
	lw a1, 0(a2)
	addw a0, s4, a1
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 40
	add a1, a3, a2
	li a2, 1333
	mulw a3, a1, a2
	subw s4, a0, a3
	mv a0, s4
	jal putint
	addiw s3, s3, 1
	li a0, 10000
	bge s3, a0, label11
	li a1, 10
	bge s3, a1, label13
	j label28
label786:
	sh2add a3, s3, s1
	lw a2, 0(a3)
	sh2add a3, a0, s0
	addw a1, s4, a2
	addiw a0, a0, 1
	lw a2, 0(a3)
	subw s4, a1, a2
	li a1, 10000
	bge a0, a1, label24
	li a1, 2233
	ble a0, a1, label26
	j label786
label26:
	sh2add a1, a0, s2
	sh2add a4, s3, s0
	addiw a0, a0, 2
	lw a3, 0(a4)
	li a4, 329861735
	addw a5, s4, a3
	lw a2, 0(a1)
	addw a1, a2, a5
	li a5, 13333
	mul a2, a1, a4
	srli a4, a2, 63
	srai a3, a2, 42
	add a2, a4, a3
	mulw a3, a2, a5
	subw s4, a1, a3
	li a1, 10000
	bge a0, a1, label24
	li a1, 2233
	ble a0, a1, label26
	sh2add a3, s3, s1
	lw a2, 0(a3)
	sh2add a3, a0, s0
	addw a1, s4, a2
	addiw a0, a0, 1
	lw a2, 0(a3)
	subw s4, a1, a2
	li a1, 10000
	bge a0, a1, label24
	li a1, 2233
	ble a0, a1, label26
	sh2add a3, s3, s1
	lw a2, 0(a3)
	sh2add a3, a0, s0
	addw a1, s4, a2
	addiw a0, a0, 1
	lw a2, 0(a3)
	subw s4, a1, a2
	li a1, 10000
	bge a0, a1, label24
	li a1, 2233
	ble a0, a1, label26
	sh2add a3, s3, s1
	lw a2, 0(a3)
	sh2add a3, a0, s0
	addw a1, s4, a2
	addiw a0, a0, 1
	lw a2, 0(a3)
	subw s4, a1, a2
	li a1, 10000
	bge a0, a1, label24
	li a1, 2233
	ble a0, a1, label26
	sh2add a3, s3, s1
	lw a2, 0(a3)
	sh2add a3, a0, s0
	addw a1, s4, a2
	addiw a0, a0, 1
	lw a2, 0(a3)
	subw s4, a1, a2
	li a1, 10000
	bge a0, a1, label24
	li a1, 2233
	ble a0, a1, label26
	j label786
label20:
	sh2add a0, s3, s2
	li a3, 1407543789
	addiw s3, s3, 1
	lw a1, 0(a0)
	sh3add a2, a1, a1
	addw a0, s4, a2
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 47
	add a1, a3, a2
	li a2, 99988
	mulw a3, a1, a2
	subw s4, a0, a3
	li a0, 10000
	bge s3, a0, label11
	li a1, 10
	bge s3, a1, label13
	j label28
label240:
	sh2add a2, s3, s2
	li a1, 5000
	mv a3, s4
	lw a0, 0(a2)
label15:
	sh2add a2, a1, s0
	addw a5, a0, a3
	addiw a1, a1, 16
	lw a4, 0(a2)
	subw t0, a5, a4
	lw a4, 4(a2)
	addw a3, a0, t0
	lw t0, 8(a2)
	subw a5, a3, a4
	addw a3, a0, a5
	subw a4, a3, t0
	lw t0, 12(a2)
	addw a3, a0, a4
	lw a4, 16(a2)
	subw a5, a3, t0
	addw a3, a0, a5
	subw a5, a3, a4
	lw a4, 20(a2)
	addw a3, a0, a5
	subw a5, a3, a4
	lw a4, 24(a2)
	addw a3, a0, a5
	subw a5, a3, a4
	lw a4, 28(a2)
	addw a3, a0, a5
	subw a5, a3, a4
	lw a4, 32(a2)
	addw a3, a0, a5
	lw t0, 36(a2)
	subw a5, a3, a4
	addw a3, a0, a5
	subw a4, a3, t0
	lw t0, 40(a2)
	addw a3, a0, a4
	lw a4, 44(a2)
	subw a5, a3, t0
	addw a3, a0, a5
	subw a5, a3, a4
	lw a4, 48(a2)
	addw a3, a0, a5
	lw a5, 52(a2)
	subw t0, a3, a4
	addw a3, a0, t0
	lw t0, 56(a2)
	subw a4, a3, a5
	addw a3, a0, a4
	lw a4, 60(a2)
	subw a5, a3, t0
	addw a3, a0, a5
	subw a2, a3, a4
	li a3, 9992
	bge a1, a3, label18
	mv a3, a2
	j label15
label18:
	sh2add a1, a1, s0
	addw a4, a0, a2
	lw a3, 0(a1)
	subw a5, a4, a3
	lw a3, 4(a1)
	addw a2, a0, a5
	subw a4, a2, a3
	lw a3, 8(a1)
	addw a2, a0, a4
	subw a4, a2, a3
	lw a3, 12(a1)
	addw a2, a0, a4
	subw a4, a2, a3
	lw a3, 16(a1)
	addw a2, a0, a4
	subw a4, a2, a3
	lw a3, 20(a1)
	addw a2, a0, a4
	subw a4, a2, a3
	lw a3, 24(a1)
	addw a2, a0, a4
	lw a1, 28(a1)
	subw a4, a2, a3
	addw a0, a0, a4
	subw s4, a0, a1
	mv a0, s4
	jal putint
	addiw s3, s3, 1
	li a0, 10000
	bge s3, a0, label11
	li a1, 10
	bge s3, a1, label13
	j label28
