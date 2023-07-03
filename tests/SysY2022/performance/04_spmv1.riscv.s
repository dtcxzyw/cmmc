.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
x:
	.zero	400040
.align 4
y:
	.zero	12000000
.align 4
v:
	.zero	12000000
.align 4
a:
	.zero	400040
.align 4
b:
	.zero	400040
.text
.globl main
main:
	addi sp, sp, -56
	sd s4, 48(sp)
	sd s5, 40(sp)
	sd s0, 32(sp)
	sd s2, 24(sp)
	sd s3, 16(sp)
	sd s1, 8(sp)
	sd ra, 0(sp)
pcrel677:
	auipc a0, %pcrel_hi(x)
	addi a0, a0, %pcrel_lo(pcrel677)
	mv s4, a0
	jal getarray
	addiw s5, a0, -1
pcrel678:
	auipc a0, %pcrel_hi(y)
	addi a0, a0, %pcrel_lo(pcrel678)
	mv s2, a0
	jal getarray
pcrel679:
	auipc a0, %pcrel_hi(v)
	addi a0, a0, %pcrel_lo(pcrel679)
	mv s3, a0
	jal getarray
pcrel680:
	auipc a0, %pcrel_hi(a)
	addi a0, a0, %pcrel_lo(pcrel680)
	mv s1, a0
	jal getarray
	li a0, 39
	jal _sysy_starttime
pcrel681:
	auipc a0, %pcrel_hi(b)
	addi s0, a0, %pcrel_lo(pcrel681)
	mv a0, zero
label2:
	ble s5, zero, label96
	mv a2, zero
label4:
	addiw a1, a2, 4
	ble s5, a1, label7
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	j label4
label41:
	ble s5, a2, label43
	j label45
label43:
	addiw a0, a0, 1
	li a1, 100
	bge a0, a1, label44
	j label2
label45:
	sh2add a4, a2, s4
	lw t0, 0(a4)
	lw a3, 4(a4)
	addiw a1, a2, 1
	bge t0, a3, label46
	j label382
label387:
	mv a2, a1
	j label41
label96:
	mv a2, zero
label15:
	ble s5, a2, label40
	sh2add a4, a2, s4
	lw t0, 0(a4)
	lw a3, 4(a4)
	addiw a1, a2, 1
	bge t0, a3, label28
	sh2add a3, a1, s4
	lw a3, 0(a3)
	mv t1, t0
label19:
	addiw a5, t1, 4
	ble a3, a5, label21
	sh2add t0, t1, s2
	lw t2, 0(t0)
	sh2add t2, t2, s0
	lw t3, 0(t2)
	sh2add t1, t1, s3
	lw t4, 0(t1)
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 4(t0)
	sh2add t2, t2, s0
	lw t3, 0(t2)
	lw t4, 4(t1)
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 8(t0)
	sh2add t2, t2, s0
	lw t3, 0(t2)
	lw t4, 8(t1)
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t0, 12(t0)
	sh2add t0, t0, s0
	lw t2, 0(t0)
	lw t1, 12(t1)
	addw t1, t2, t1
	sw t1, 0(t0)
	mv t1, a5
	j label19
label21:
	addiw a5, t1, 4
	ble a3, a5, label160
	j label26
label160:
	mv a5, t1
label23:
	sh2add t0, a5, s2
	lw t0, 0(t0)
	sh2add t0, t0, s0
	lw t1, 0(t0)
	sh2add t2, a5, s3
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	addiw a5, a5, 1
	ble a3, a5, label25
	j label23
label26:
	sh2add t0, t1, s2
	lw t2, 0(t0)
	sh2add t2, t2, s0
	lw t3, 0(t2)
	sh2add t1, t1, s3
	lw t4, 0(t1)
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 4(t0)
	sh2add t2, t2, s0
	lw t3, 0(t2)
	lw t4, 4(t1)
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 8(t0)
	sh2add t2, t2, s0
	lw t3, 0(t2)
	lw t4, 8(t1)
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t0, 12(t0)
	sh2add t0, t0, s0
	lw t2, 0(t0)
	lw t1, 12(t1)
	addw t1, t2, t1
	sw t1, 0(t0)
	mv t1, a5
	j label21
label46:
	bge t0, a3, label387
	sh2add a2, a2, s0
	lw a2, 0(a2)
	addiw a2, a2, -1
	sh2add a3, a1, s4
	lw a3, 0(a3)
label50:
	addiw a4, t0, 4
	ble a3, a4, label53
	sh2add a5, t0, s2
	lw t1, 0(a5)
	sh2add t1, t1, s1
	lw t2, 0(t1)
	sh2add t0, t0, s3
	lw t3, 0(t0)
	mulw t3, a2, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	lw t1, 4(a5)
	sh2add t1, t1, s1
	lw t2, 0(t1)
	lw t3, 4(t0)
	mulw t3, a2, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	lw t1, 8(a5)
	sh2add t1, t1, s1
	lw t2, 0(t1)
	lw t3, 8(t0)
	mulw t3, a2, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	lw a5, 12(a5)
	sh2add a5, a5, s1
	lw t1, 0(a5)
	lw t0, 12(t0)
	mulw t0, a2, t0
	addw t0, t1, t0
	sw t0, 0(a5)
	mv t0, a4
	j label50
label53:
	addiw a4, t0, 4
	ble a3, a4, label442
	j label57
label442:
	mv a4, t0
	j label55
label57:
	sh2add a5, t0, s2
	lw t1, 0(a5)
	sh2add t1, t1, s1
	lw t2, 0(t1)
	sh2add t0, t0, s3
	lw t3, 0(t0)
	mulw t3, a2, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	lw t1, 4(a5)
	sh2add t1, t1, s1
	lw t2, 0(t1)
	lw t3, 4(t0)
	mulw t3, a2, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	lw t1, 8(a5)
	sh2add t1, t1, s1
	lw t2, 0(t1)
	lw t3, 8(t0)
	mulw t3, a2, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	lw a5, 12(a5)
	sh2add a5, a5, s1
	lw t1, 0(a5)
	lw t0, 12(t0)
	mulw t0, a2, t0
	addw t0, t1, t0
	sw t0, 0(a5)
	mv t0, a4
	j label53
label55:
	sh2add a5, a4, s2
	lw a5, 0(a5)
	sh2add a5, a5, s1
	lw t0, 0(a5)
	sh2add t1, a4, s3
	lw t1, 0(t1)
	mulw t1, a2, t1
	addw t0, t0, t1
	sw t0, 0(a5)
	addiw a4, a4, 1
	ble a3, a4, label387
	j label55
label28:
	bge t0, a3, label252
	sh2add a2, a2, s1
	lw a2, 0(a2)
	addiw a2, a2, -1
	sh2add a3, a1, s4
	lw a3, 0(a3)
label32:
	addiw a4, t0, 4
	ble a3, a4, label35
	sh2add a5, t0, s2
	lw t1, 0(a5)
	sh2add t1, t1, s0
	lw t2, 0(t1)
	sh2add t0, t0, s3
	lw t3, 0(t0)
	mulw t3, a2, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	lw t1, 4(a5)
	sh2add t1, t1, s0
	lw t2, 0(t1)
	lw t3, 4(t0)
	mulw t3, a2, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	lw t1, 8(a5)
	sh2add t1, t1, s0
	lw t2, 0(t1)
	lw t3, 8(t0)
	mulw t3, a2, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	lw a5, 12(a5)
	sh2add a5, a5, s0
	lw t1, 0(a5)
	lw t0, 12(t0)
	mulw t0, a2, t0
	addw t0, t1, t0
	sw t0, 0(a5)
	mv t0, a4
	j label32
label35:
	addiw a4, t0, 4
	ble a3, a4, label307
	j label39
label307:
	mv a4, t0
	j label37
label39:
	sh2add a5, t0, s2
	lw t1, 0(a5)
	sh2add t1, t1, s0
	lw t2, 0(t1)
	sh2add t0, t0, s3
	lw t3, 0(t0)
	mulw t3, a2, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	lw t1, 4(a5)
	sh2add t1, t1, s0
	lw t2, 0(t1)
	lw t3, 4(t0)
	mulw t3, a2, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	lw t1, 8(a5)
	sh2add t1, t1, s0
	lw t2, 0(t1)
	lw t3, 8(t0)
	mulw t3, a2, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	lw a5, 12(a5)
	sh2add a5, a5, s0
	lw t1, 0(a5)
	lw t0, 12(t0)
	mulw t0, a2, t0
	addw t0, t1, t0
	sw t0, 0(a5)
	mv t0, a4
	j label35
label37:
	sh2add a5, a4, s2
	lw a5, 0(a5)
	sh2add a5, a5, s0
	lw t0, 0(a5)
	sh2add t1, a4, s3
	lw t1, 0(t1)
	mulw t1, a2, t1
	addw t0, t0, t1
	sw t0, 0(a5)
	addiw a4, a4, 1
	ble a3, a4, label252
	j label37
label252:
	mv a2, a1
	j label15
label382:
	sh2add a3, a1, s4
	lw a3, 0(a3)
	mv t1, t0
label59:
	addiw a5, t1, 4
	ble a3, a5, label62
	sh2add t0, t1, s2
	lw t2, 0(t0)
	sh2add t2, t2, s1
	lw t3, 0(t2)
	sh2add t1, t1, s3
	lw t4, 0(t1)
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 4(t0)
	sh2add t2, t2, s1
	lw t3, 0(t2)
	lw t4, 4(t1)
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 8(t0)
	sh2add t2, t2, s1
	lw t3, 0(t2)
	lw t4, 8(t1)
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t0, 12(t0)
	sh2add t0, t0, s1
	lw t2, 0(t0)
	lw t1, 12(t1)
	addw t1, t2, t1
	sw t1, 0(t0)
	mv t1, a5
	j label59
label62:
	addiw a5, t1, 4
	ble a3, a5, label543
	j label67
label543:
	mv a5, t1
	j label64
label67:
	sh2add t0, t1, s2
	lw t2, 0(t0)
	sh2add t2, t2, s1
	lw t3, 0(t2)
	sh2add t1, t1, s3
	lw t4, 0(t1)
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 4(t0)
	sh2add t2, t2, s1
	lw t3, 0(t2)
	lw t4, 4(t1)
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 8(t0)
	sh2add t2, t2, s1
	lw t3, 0(t2)
	lw t4, 8(t1)
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t0, 12(t0)
	sh2add t0, t0, s1
	lw t2, 0(t0)
	lw t1, 12(t1)
	addw t1, t2, t1
	sw t1, 0(t0)
	mv t1, a5
	j label62
label64:
	sh2add t0, a5, s2
	lw t0, 0(t0)
	sh2add t0, t0, s1
	lw t1, 0(t0)
	sh2add t2, a5, s3
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	addiw a5, a5, 1
	ble a3, a5, label66
	j label64
label66:
	sh2add a3, a2, s4
	lw t0, 0(a3)
	lw a3, 4(a4)
	j label46
label25:
	sh2add a3, a2, s4
	lw t0, 0(a3)
	lw a3, 4(a4)
	j label28
label40:
	ble s5, zero, label364
	mv a2, zero
label68:
	addiw a1, a2, 4
	ble s5, a1, label71
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	j label68
label364:
	mv a2, zero
	j label41
label71:
	addiw a1, a2, 4
	ble s5, a1, label612
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	j label71
label612:
	mv a1, a2
label73:
	addiw a2, a1, 4
	ble s5, a2, label76
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	j label73
label76:
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s5, a1, label364
	j label76
label7:
	addiw a1, a2, 4
	ble s5, a1, label111
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	j label7
label111:
	mv a1, a2
label9:
	addiw a2, a1, 4
	ble s5, a2, label12
	sh2add a1, a1, s0
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	j label9
label12:
	sh2add a2, a1, s0
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s5, a1, label96
	j label12
label44:
	li a0, 47
	jal _sysy_stoptime
	mv a0, s5
	mv a1, s0
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s0, 32(sp)
	ld s5, 40(sp)
	ld s4, 48(sp)
	addi sp, sp, 56
	ret
