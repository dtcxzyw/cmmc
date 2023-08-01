.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
x:
	.zero	400040
.align 8
y:
	.zero	12000000
.align 8
v:
	.zero	12000000
.align 8
a:
	.zero	400040
.align 8
b:
	.zero	400040
.text
.p2align 2
.globl main
main:
	addi sp, sp, -80
pcrel578:
	auipc a1, %pcrel_hi(x)
	sd ra, 0(sp)
	sd s4, 8(sp)
	addi s4, a1, %pcrel_lo(pcrel578)
	sd s5, 16(sp)
	sd s0, 24(sp)
	sd s7, 32(sp)
	sd s6, 40(sp)
	sd s1, 48(sp)
	sd s2, 56(sp)
	sd s3, 64(sp)
	sd s8, 72(sp)
	mv a0, s4
	jal getarray
pcrel579:
	auipc a1, %pcrel_hi(y)
	addiw s6, a0, -21
	addiw s7, a0, -5
	addiw s5, a0, -1
	addi s2, a1, %pcrel_lo(pcrel579)
	mv a0, s2
	jal getarray
pcrel580:
	auipc a1, %pcrel_hi(v)
	addi s3, a1, %pcrel_lo(pcrel580)
	mv a0, s3
	jal getarray
pcrel581:
	auipc a1, %pcrel_hi(a)
	addi s0, a1, %pcrel_lo(pcrel581)
	mv a0, s0
	jal getarray
	li a0, 39
	jal _sysy_starttime
	li a0, 4
	li a2, 100
	mv a3, zero
pcrel582:
	auipc a1, %pcrel_hi(b)
	addi s1, a1, %pcrel_lo(pcrel582)
	li a1, 16
.p2align 2
label2:
	ble s5, zero, label71
	bgt s5, a0, label5
	j label74
label30:
	li a0, 47
	jal _sysy_stoptime
	mv a0, s5
	mv a1, s1
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s4, 8(sp)
	ld s5, 16(sp)
	ld s0, 24(sp)
	ld s7, 32(sp)
	ld s6, 40(sp)
	ld s1, 48(sp)
	ld s2, 56(sp)
	ld s3, 64(sp)
	ld s8, 72(sp)
	addi sp, sp, 80
	ret
.p2align 2
label539:
	addiw a3, a3, 1
	blt a3, a2, label2
	j label30
.p2align 2
label71:
	mv t1, zero
	j label12
.p2align 2
label5:
	ble s7, a1, label77
	mv a5, zero
	j label8
.p2align 2
label6:
	sh2add a4, a5, s1
	addiw a5, a5, 4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	bgt s7, a5, label6
.p2align 2
label87:
	mv a4, a5
	sh2add t0, a5, s1
	addiw a4, a5, 1
	sw zero, 0(t0)
	bgt s5, a4, label10
	j label531
.p2align 2
label8:
	sh2add a4, a5, s1
	addiw a5, a5, 16
	sd zero, 0(a4)
	sd zero, 8(a4)
	sd zero, 16(a4)
	sd zero, 24(a4)
	sd zero, 32(a4)
	sd zero, 40(a4)
	sd zero, 48(a4)
	sd zero, 56(a4)
	bgt s6, a5, label8
	sh2add a4, a5, s1
	addiw a5, a5, 4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	bgt s7, a5, label6
	mv a4, a5
	sh2add t0, a5, s1
	addiw a4, a5, 1
	sw zero, 0(t0)
	ble s5, a4, label546
.p2align 2
label10:
	sh2add t0, a4, s1
	addiw a4, a4, 1
	sw zero, 0(t0)
	bgt s5, a4, label10
	j label71
.p2align 2
label12:
	bgt s5, t1, label14
label120:
	bgt s5, zero, label43
	j label533
.p2align 2
label14:
	addiw a4, t1, 1
	sh2add t0, t1, s4
	sh2add a5, a4, s4
	lw t2, 0(t0)
	addi t3, t2, 4
	lw a5, 0(a5)
	addi t0, a5, -4
	blt t2, a5, label21
	j label15
.p2align 2
label16:
	sh2add t4, t1, s0
	lw t5, 0(t4)
	addi t1, t5, -1
	bgt a5, t3, label19
.p2align 2
label17:
	sh2add t3, t2, s2
	sh2add t6, t2, s3
	lw t4, 0(t3)
	addiw t2, t2, 1
	sh2add t0, t4, s1
	lw t3, 0(t0)
	lw t5, 0(t6)
	mulw t4, t1, t5
	addw t3, t3, t4
	sw t3, 0(t0)
	bgt a5, t2, label17
	mv t1, a4
	bgt s5, a4, label14
	j label535
.p2align 2
label19:
	sh2add t3, t2, s2
	lw t4, 0(t3)
	sh2add t5, t4, s1
	sh2add t4, t2, s3
	addiw t2, t2, 4
	lw t6, 0(t5)
	lw a6, 0(t4)
	mulw a7, t1, a6
	addw t6, t6, a7
	sw t6, 0(t5)
	lw a6, 4(t3)
	sh2add t5, a6, s1
	lw t6, 0(t5)
	lw a6, 4(t4)
	mulw a7, t1, a6
	addw t6, t6, a7
	sw t6, 0(t5)
	lw a6, 8(t3)
	sh2add t5, a6, s1
	lw t6, 0(t5)
	lw a6, 8(t4)
	mulw s8, t1, a6
	addw a7, t6, s8
	sw a7, 0(t5)
	lw t6, 12(t3)
	sh2add t3, t6, s1
	lw t5, 0(t3)
	lw t4, 12(t4)
	mulw t6, t1, t4
	addw t5, t5, t6
	sw t5, 0(t3)
	bgt t0, t2, label19
	j label17
.p2align 2
label21:
	ble a5, t3, label206
	mv t4, t2
.p2align 2
label22:
	sh2add t5, t4, s2
	lw t6, 0(t5)
	sh2add a6, t6, s1
	sh2add t6, t4, s3
	addiw t4, t4, 4
	lw a7, 0(a6)
	lw s8, 0(t6)
	addw a7, a7, s8
	sw a7, 0(a6)
	lw a7, 4(t5)
	sh2add a6, a7, s1
	lw a7, 0(a6)
	lw s8, 4(t6)
	addw a7, a7, s8
	sw a7, 0(a6)
	lw a7, 8(t5)
	sh2add a6, a7, s1
	lw a7, 0(a6)
	lw s8, 8(t6)
	addw a7, a7, s8
	sw a7, 0(a6)
	lw a7, 12(t5)
	sh2add t5, a7, s1
	lw a6, 0(t5)
	lw a7, 12(t6)
	addw t6, a6, a7
	sw t6, 0(t5)
	bgt t0, t4, label22
.p2align 2
label24:
	sh2add t6, t4, s2
	sh2add a7, t4, s3
	lw a6, 0(t6)
	addiw t4, t4, 1
	sh2add t5, a6, s1
	lw t6, 0(t5)
	lw a6, 0(a7)
	addw t6, t6, a6
	sw t6, 0(t5)
	bgt a5, t4, label24
	blt t2, a5, label16
.p2align 2
label537:
	mv t1, a4
	bgt s5, a4, label14
	j label120
.p2align 2
label15:
	blt t2, a5, label16
	mv t1, a4
	bgt s5, a4, label14
	j label120
.p2align 2
label535:
	ble s5, zero, label533
.p2align 2
label43:
	bgt s5, a0, label46
	j label415
.p2align 2
label44:
	sh2add a5, a4, s0
	addiw a4, a4, 1
	sw zero, 0(a5)
	bgt s5, a4, label44
	mv t1, zero
	bgt s5, zero, label31
	j label29
.p2align 2
label46:
	ble s7, a1, label425
	mv a5, zero
	j label49
.p2align 2
label47:
	sh2add a4, a5, s0
	addiw a5, a5, 4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	bgt s7, a5, label47
.p2align 2
label435:
	mv a4, a5
	sh2add a5, a5, s0
	addiw a4, a4, 1
	sw zero, 0(a5)
	bgt s5, a4, label44
	j label544
.p2align 2
label49:
	sh2add a4, a5, s0
	addiw a5, a5, 16
	sd zero, 0(a4)
	sd zero, 8(a4)
	sd zero, 16(a4)
	sd zero, 24(a4)
	sd zero, 32(a4)
	sd zero, 40(a4)
	sd zero, 48(a4)
	sd zero, 56(a4)
	bgt s6, a5, label49
	sh2add a4, a5, s0
	addiw a5, a5, 4
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	bgt s7, a5, label47
	mv a4, a5
	sh2add a5, a5, s0
	addiw a4, a4, 1
	sw zero, 0(a5)
	bgt s5, a4, label44
	mv t1, zero
	bgt s5, zero, label31
label29:
	addiw a3, a3, 1
	blt a3, a2, label2
	j label30
.p2align 2
label31:
	addiw a4, t1, 1
	sh2add t0, t1, s4
	sh2add a5, a4, s4
	lw t2, 0(t0)
	addi t3, t2, 4
	lw a5, 0(a5)
	addi t0, a5, -4
	blt t2, a5, label38
	j label32
.p2align 2
label33:
	sh2add t4, t1, s1
	lw t5, 0(t4)
	addi t1, t5, -1
	ble a5, t3, label36
.p2align 2
label34:
	sh2add t3, t2, s2
	lw t4, 0(t3)
	sh2add t5, t4, s0
	sh2add t4, t2, s3
	addiw t2, t2, 4
	lw t6, 0(t5)
	lw a7, 0(t4)
	mulw a6, t1, a7
	addw t6, t6, a6
	sw t6, 0(t5)
	lw a6, 4(t3)
	sh2add t5, a6, s0
	lw t6, 0(t5)
	lw a6, 4(t4)
	mulw a7, t1, a6
	addw t6, t6, a7
	sw t6, 0(t5)
	lw a6, 8(t3)
	sh2add t5, a6, s0
	lw t6, 0(t5)
	lw a7, 8(t4)
	mulw a6, t1, a7
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t6, 12(t3)
	sh2add t3, t6, s0
	lw t5, 0(t3)
	lw a6, 12(t4)
	mulw t6, t1, a6
	addw t4, t5, t6
	sw t4, 0(t3)
	bgt t0, t2, label34
.p2align 2
label36:
	sh2add t3, t2, s2
	sh2add t6, t2, s3
	lw t4, 0(t3)
	addiw t2, t2, 1
	sh2add t0, t4, s0
	lw t3, 0(t0)
	lw t5, 0(t6)
	mulw t4, t1, t5
	addw t3, t3, t4
	sw t3, 0(t0)
	bgt a5, t2, label36
	mv t1, a4
	bgt s5, a4, label31
	j label539
.p2align 2
label38:
	ble a5, t3, label358
	mv t4, t2
.p2align 2
label39:
	sh2add t5, t4, s2
	lw t6, 0(t5)
	sh2add a6, t6, s0
	sh2add t6, t4, s3
	addiw t4, t4, 4
	lw a7, 0(a6)
	lw s8, 0(t6)
	addw a7, a7, s8
	sw a7, 0(a6)
	lw a7, 4(t5)
	sh2add a6, a7, s0
	lw a7, 0(a6)
	lw s8, 4(t6)
	addw a7, a7, s8
	sw a7, 0(a6)
	lw a7, 8(t5)
	sh2add a6, a7, s0
	lw a7, 0(a6)
	lw s8, 8(t6)
	addw a7, a7, s8
	sw a7, 0(a6)
	lw a6, 12(t5)
	sh2add t5, a6, s0
	lw a6, 0(t5)
	lw a7, 12(t6)
	addw t6, a6, a7
	sw t6, 0(t5)
	bgt t0, t4, label39
.p2align 2
label41:
	sh2add t6, t4, s2
	lw a6, 0(t6)
	sh2add t5, a6, s0
	sh2add a6, t4, s3
	addiw t4, t4, 1
	lw t6, 0(t5)
	lw a7, 0(a6)
	addw t6, t6, a7
	sw t6, 0(t5)
	bgt a5, t4, label41
	blt t2, a5, label33
.p2align 2
label541:
	mv t1, a4
	bgt s5, a4, label31
	j label29
.p2align 2
label32:
	blt t2, a5, label33
	mv t1, a4
	bgt s5, a4, label31
	j label29
.p2align 2
label358:
	mv t4, t2
	sh2add t6, t2, s2
	lw a6, 0(t6)
	sh2add t5, a6, s0
	sh2add a6, t2, s3
	addiw t4, t2, 1
	lw t6, 0(t5)
	lw a7, 0(a6)
	addw t6, t6, a7
	sw t6, 0(t5)
	bgt a5, t4, label41
	blt t2, a5, label33
	j label541
.p2align 2
label206:
	mv t4, t2
	sh2add t6, t2, s2
	sh2add a7, t2, s3
	lw a6, 0(t6)
	addiw t4, t2, 1
	sh2add t5, a6, s1
	lw t6, 0(t5)
	lw a6, 0(a7)
	addw t6, t6, a6
	sw t6, 0(t5)
	bgt a5, t4, label24
	blt t2, a5, label16
	j label537
label533:
	mv t1, zero
	bgt s5, zero, label31
	j label29
.p2align 2
label74:
	mv a4, zero
	mv t0, s1
	li a4, 1
	sw zero, 0(s1)
	bgt s5, a4, label10
	j label71
.p2align 2
label77:
	mv a5, zero
	mv a4, s1
	li a5, 4
	sw zero, 0(s1)
	sw zero, 4(s1)
	sw zero, 8(s1)
	sw zero, 12(s1)
	bgt s7, a5, label6
	j label87
.p2align 2
label425:
	mv a5, zero
	mv a4, s0
	li a5, 4
	sw zero, 0(s0)
	sw zero, 4(s0)
	sw zero, 8(s0)
	sw zero, 12(s0)
	bgt s7, a5, label47
	j label435
.p2align 2
label531:
	mv t1, zero
	bgt s5, zero, label14
	j label120
.p2align 2
label544:
	mv t1, zero
	bgt s5, zero, label31
	j label29
.p2align 2
label546:
	mv t1, zero
	bgt s5, zero, label14
	j label120
.p2align 2
label415:
	mv a4, zero
	j label44
