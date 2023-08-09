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
	addi sp, sp, -104
pcrel594:
	auipc a1, %pcrel_hi(x)
	sd ra, 0(sp)
	sd s5, 8(sp)
	addi s5, a1, %pcrel_lo(pcrel594)
	sd s0, 16(sp)
	sd s6, 24(sp)
	sd s1, 32(sp)
	sd s3, 40(sp)
	sd s4, 48(sp)
	sd s2, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s10, 80(sp)
	sd s9, 88(sp)
	sd s11, 96(sp)
	mv a0, s5
	jal getarray
pcrel595:
	auipc a1, %pcrel_hi(y)
	mv s6, a0
	addi s3, a1, %pcrel_lo(pcrel595)
	mv a0, s3
	jal getarray
pcrel596:
	auipc a1, %pcrel_hi(v)
	addi s0, a1, %pcrel_lo(pcrel596)
	mv a0, s0
	jal getarray
pcrel597:
	auipc a1, %pcrel_hi(a)
	addi s1, a1, %pcrel_lo(pcrel597)
	mv a0, s1
	jal getarray
	li a0, 39
	jal _sysy_starttime
	li t0, 20
	li a5, 16
	mv t1, zero
pcrel598:
	auipc a3, %pcrel_hi(b)
	li a4, 100
	addiw a1, s6, -17
	addiw a0, s6, -21
	addiw a2, s6, -5
	addiw s4, s6, -1
	addi s2, a3, %pcrel_lo(pcrel598)
	li a3, 4
	j label2
.p2align 2
label548:
	addiw t1, t1, 1
	bge t1, a4, label53
.p2align 2
label2:
	ble s4, zero, label113
	ble s4, a3, label74
	ble a2, a5, label391
	mv t2, s2
	mv t3, zero
.p2align 2
label82:
	sd zero, 0(t2)
	addiw t3, t3, 16
	sd zero, 8(t2)
	sd zero, 16(t2)
	sd zero, 24(t2)
	sd zero, 32(t2)
	sd zero, 40(t2)
	sd zero, 48(t2)
	sd zero, 56(t2)
	ble a0, t3, label411
	addi t2, t2, 64
	j label82
.p2align 2
label411:
	sh2add t2, t3, s2
	addiw t3, t3, 4
	sw zero, 0(t2)
	sw zero, 4(t2)
	sw zero, 8(t2)
	sw zero, 12(t2)
	ble a2, t3, label554
.p2align 2
label92:
	addi t2, t2, 16
	sw zero, 0(t2)
	addiw t3, t3, 4
	sw zero, 4(t2)
	sw zero, 8(t2)
	sw zero, 12(t2)
	bgt a2, t3, label92
.p2align 2
label91:
	sh2add t2, t3, s2
	addiw t3, t3, 1
	sw zero, 0(t2)
	ble s4, t3, label540
.p2align 2
label78:
	addi t2, t2, 4
.p2align 2
label75:
	sw zero, 0(t2)
	addiw t3, t3, 1
	bgt s4, t3, label78
	mv t3, s5
	mv t5, zero
	bgt s4, zero, label7
label117:
	bgt s4, zero, label54
	j label522
.p2align 2
label13:
	addi t3, t3, 4
	mv t5, t4
	ble s4, t4, label523
.p2align 2
label7:
	addiw t4, t5, 1
	lw a6, 0(t3)
	sh2add t6, t4, s5
	lw t2, 0(t6)
	bge a6, t2, label8
	addiw t6, a6, 4
	addiw a7, t2, -4
	ble t2, t6, label159
	sh2add t6, a6, s3
	mv s6, a6
	j label23
.p2align 2
label27:
	addi t6, t6, 16
.p2align 2
label23:
	lw s10, 0(t6)
	sh2add s7, s6, s0
	sh2add s8, s10, s2
	addiw s6, s6, 4
	lw s9, 0(s8)
	lw s10, 0(s7)
	addw s11, s9, s10
	sw s11, 0(s8)
	lw s11, 4(t6)
	sh2add s9, s11, s2
	lw s8, 0(s9)
	lw s10, 4(s7)
	addw s11, s8, s10
	sw s11, 0(s9)
	lw s10, 8(t6)
	sh2add s8, s10, s2
	lw s9, 0(s8)
	lw s11, 8(s7)
	addw s10, s9, s11
	sw s10, 0(s8)
	lw s11, 12(t6)
	sh2add s9, s11, s2
	lw s8, 0(s9)
	lw s11, 12(s7)
	addw s10, s8, s11
	sw s10, 0(s9)
	bgt a7, s6, label27
	sh2add t6, s6, s3
	sh2add s10, s6, s0
	lw s8, 0(t6)
	addiw s6, s6, 1
	sh2add a7, s8, s2
	lw s7, 0(a7)
	lw s8, 0(s10)
	addw s9, s7, s8
	sw s9, 0(a7)
	ble t2, s6, label527
.p2align 2
label20:
	addi t6, t6, 4
.p2align 2
label17:
	lw s8, 0(t6)
	sh2add s10, s6, s0
	sh2add a7, s8, s2
	addiw s6, s6, 1
	lw s7, 0(a7)
	lw s8, 0(s10)
	addw s9, s7, s8
	sw s9, 0(a7)
	bgt t2, s6, label20
	bge a6, t2, label525
.p2align 2
label9:
	sh2add a7, t5, s1
	sh2add t6, a6, s3
	lw s6, 0(a7)
	addi t5, s6, -1
.p2align 2
label10:
	lw s7, 0(t6)
	sh2add s8, a6, s0
	sh2add a7, s7, s2
	addiw a6, a6, 1
	lw s6, 0(a7)
	lw s10, 0(s8)
	mulw s9, t5, s10
	addw s7, s6, s9
	sw s7, 0(a7)
	ble t2, a6, label13
	addi t6, t6, 4
	j label10
.p2align 2
label523:
	ble s4, zero, label522
.p2align 2
label54:
	ble s4, a3, label331
	ble s4, t0, label341
	addi t2, s1, 16
	mv t5, zero
	mv t3, a3
.p2align 2
label66:
	sh2add t4, t5, s1
	addiw t5, t3, 12
	sw zero, 0(t4)
	sw zero, 4(t4)
	sw zero, 8(t4)
	sw zero, 12(t4)
	addiw t4, t3, 16
	sd zero, 0(t2)
	sd zero, 8(t2)
	sd zero, 16(t2)
	sd zero, 24(t2)
	sd zero, 32(t2)
	sd zero, 40(t2)
	ble a1, t4, label377
	addi t2, t2, 64
	mv t3, t4
	j label66
.p2align 2
label377:
	sh2add t2, t5, s1
	addiw t3, t4, 4
	sw zero, 0(t2)
	sw zero, 4(t2)
	sw zero, 8(t2)
	sw zero, 12(t2)
	ble s4, t3, label536
.p2align 2
label352:
	mv t5, t4
	mv t4, t3
.p2align 2
label61:
	sh2add t2, t5, s1
	addiw t3, t4, 4
	sw zero, 0(t2)
	sw zero, 4(t2)
	sw zero, 8(t2)
	sw zero, 12(t2)
	bgt s4, t3, label352
	sh2add t2, t4, s1
	addiw t3, t4, 1
	sw zero, 0(t2)
	ble s4, t3, label550
.p2align 2
label58:
	addi t2, t2, 4
.p2align 2
label55:
	sw zero, 0(t2)
	addiw t3, t3, 1
	bgt s4, t3, label58
	mv t3, s5
	mv t5, zero
	bgt s4, zero, label33
label224:
	addiw t1, t1, 1
	blt t1, a4, label2
	j label53
.p2align 2
label321:
	addi t3, t3, 4
	mv t5, t4
	ble s4, t4, label548
.p2align 2
label33:
	addiw t4, t5, 1
	lw a6, 0(t3)
	sh2add t6, t4, s5
	lw t2, 0(t6)
	bge a6, t2, label233
	addiw t6, a6, 4
	ble t2, t6, label238
	mv s7, a6
.p2align 2
label35:
	sh2add a7, s7, s3
	sh2add s6, s7, s0
	lw s10, 0(a7)
	sh2add s8, s10, s1
	lw s9, 0(s8)
	lw s11, 0(s6)
	addw s10, s9, s11
	sw s10, 0(s8)
	lw s11, 4(a7)
	sh2add s7, s11, s1
	lw s8, 0(s7)
	lw s10, 4(s6)
	addw s9, s8, s10
	sw s9, 0(s7)
	lw s11, 8(a7)
	sh2add s8, s11, s1
	lw s7, 0(s8)
	lw s10, 8(s6)
	addw s11, s7, s10
	sw s11, 0(s8)
	lw s9, 12(a7)
	sh2add s7, s9, s1
	lw a7, 0(s7)
	lw s8, 12(s6)
	addw s9, a7, s8
	addiw a7, t6, 4
	sw s9, 0(s7)
	ble t2, a7, label277
	mv s7, t6
	mv t6, a7
	j label35
.p2align 2
label277:
	sh2add a7, t6, s3
	sh2add s10, t6, s0
	lw s8, 0(a7)
	addiw t6, t6, 1
	sh2add s6, s8, s1
	lw s7, 0(s6)
	lw s8, 0(s10)
	addw s9, s7, s8
	sw s9, 0(s6)
	ble t2, t6, label546
.p2align 2
label43:
	addi a7, a7, 4
	lw s8, 0(a7)
	sh2add s10, t6, s0
	sh2add s6, s8, s1
	addiw t6, t6, 1
	lw s7, 0(s6)
	lw s8, 0(s10)
	addw s9, s7, s8
	sw s9, 0(s6)
	bgt t2, t6, label43
	bge a6, t2, label531
.p2align 2
label46:
	sh2add t6, t5, s2
	lw a7, 0(t6)
	sh2add t6, a6, s3
	addi t5, a7, -1
.p2align 2
label47:
	lw s7, 0(t6)
	sh2add s10, a6, s0
	sh2add a7, s7, s1
	addiw a6, a6, 1
	lw s6, 0(a7)
	lw s9, 0(s10)
	mulw s8, t5, s9
	addw s7, s6, s8
	sw s7, 0(a7)
	ble t2, a6, label321
	addi t6, t6, 4
	j label47
.p2align 2
label8:
	blt a6, t2, label9
	addi t3, t3, 4
	mv t5, t4
	bgt s4, t4, label7
	j label117
.p2align 2
label238:
	sh2add a7, a6, s3
	addiw t6, a6, 1
	sh2add s10, a6, s0
	lw s8, 0(a7)
	sh2add s6, s8, s1
	lw s7, 0(s6)
	lw s8, 0(s10)
	addw s9, s7, s8
	sw s9, 0(s6)
	bgt t2, t6, label43
	blt a6, t2, label46
.p2align 2
label531:
	addi t3, t3, 4
	mv t5, t4
	bgt s4, t4, label33
	j label224
.p2align 2
label546:
	blt a6, t2, label46
	addi t3, t3, 4
	mv t5, t4
	bgt s4, t4, label33
	j label224
.p2align 2
label527:
	blt a6, t2, label9
	addi t3, t3, 4
	mv t5, t4
	bgt s4, t4, label7
	j label117
.p2align 2
label74:
	mv t2, s2
	mv t3, zero
	j label75
.p2align 2
label554:
	sh2add t2, t3, s2
	addiw t3, t3, 1
	sw zero, 0(t2)
	bgt s4, t3, label78
	mv t3, s5
	mv t5, zero
	bgt s4, zero, label7
	j label117
.p2align 2
label536:
	sh2add t2, t4, s1
	addiw t3, t4, 1
	sw zero, 0(t2)
	bgt s4, t3, label58
	mv t3, s5
	mv t5, zero
	bgt s4, zero, label33
	j label224
label113:
	mv t3, s5
	mv t5, zero
	bgt s4, zero, label7
	j label117
label522:
	mv t3, s5
	mv t5, zero
	bgt s4, zero, label33
	j label224
.p2align 2
label233:
	blt a6, t2, label46
	addi t3, t3, 4
	mv t5, t4
	bgt s4, t4, label33
	j label224
.p2align 2
label391:
	mv t2, s2
	li t3, 4
	sw zero, 0(s2)
	sw zero, 4(s2)
	sw zero, 8(s2)
	sw zero, 12(s2)
	bgt a2, t3, label92
	j label91
.p2align 2
label525:
	addi t3, t3, 4
	mv t5, t4
	bgt s4, t4, label7
	j label117
label53:
	li a0, 47
	jal _sysy_stoptime
	mv a0, s4
	mv a1, s2
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s5, 8(sp)
	ld s0, 16(sp)
	ld s6, 24(sp)
	ld s1, 32(sp)
	ld s3, 40(sp)
	ld s4, 48(sp)
	ld s2, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s10, 80(sp)
	ld s9, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 104
	ret
.p2align 2
label540:
	mv t3, s5
	mv t5, zero
	bgt s4, zero, label7
	j label117
.p2align 2
label550:
	mv t3, s5
	mv t5, zero
	bgt s4, zero, label33
	j label224
.p2align 2
label331:
	mv t2, s1
	mv t3, zero
	j label55
.p2align 2
label159:
	sh2add t6, a6, s3
	mv s6, a6
	j label17
.p2align 2
label341:
	mv t4, a3
	mv t5, zero
	j label61
