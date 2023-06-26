.data
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
	sd s1, 48(sp)
	sd s2, 40(sp)
	sd s3, 32(sp)
	sd s4, 24(sp)
	sd s5, 16(sp)
	sd s0, 8(sp)
	sd ra, 0(sp)
pcrel1616:
	auipc a0, %pcrel_hi(x)
	addi a0, a0, %pcrel_lo(pcrel1616)
	mv s1, a0
	jal getarray
	addiw s2, a0, -1
pcrel1617:
	auipc a0, %pcrel_hi(y)
	addi a0, a0, %pcrel_lo(pcrel1617)
	mv s3, a0
	jal getarray
pcrel1618:
	auipc a0, %pcrel_hi(v)
	addi a0, a0, %pcrel_lo(pcrel1618)
	mv s4, a0
	jal getarray
pcrel1619:
	auipc a0, %pcrel_hi(a)
	addi a0, a0, %pcrel_lo(pcrel1619)
	mv s5, a0
	jal getarray
	li a0, 39
	jal _sysy_starttime
pcrel1620:
	auipc a0, %pcrel_hi(b)
	addi s0, a0, %pcrel_lo(pcrel1620)
	mv a0, zero
	ble s2, zero, label96
	mv a1, zero
	addiw a2, zero, 16
	bge a2, s2, label7
	j label6
label96:
	mv a4, zero
	bge zero, s2, label17
	j label56
label6:
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	sw zero, 16(a1)
	sw zero, 20(a1)
	sw zero, 24(a1)
	sw zero, 28(a1)
	sw zero, 32(a1)
	sw zero, 36(a1)
	sw zero, 40(a1)
	sw zero, 44(a1)
	sw zero, 48(a1)
	sw zero, 52(a1)
	sw zero, 56(a1)
	sw zero, 60(a1)
	mv a1, a2
	addiw a2, a2, 16
	bge a2, s2, label7
	j label6
label17:
	ble s2, zero, label176
	mv a1, zero
	addiw a2, zero, 16
	bge a2, s2, label47
	j label55
label176:
	mv a4, zero
	bge zero, s2, label20
	j label22
label20:
	addiw a0, a0, 1
	li a1, 100
	bge a0, a1, label21
	ble s2, zero, label96
	mv a1, zero
	addiw a2, zero, 16
	bge a2, s2, label7
	j label6
label22:
	slliw a1, a4, 2
	add a2, s0, a1
	addiw a1, a4, 1
	slliw a3, a1, 2
	add a3, s1, a3
	slliw a4, a4, 2
	add a4, s1, a4
	lw t4, 0(a4)
	addi a5, a4, 4
	lw t2, 4(a4)
	bge t4, t2, label199
	lw t1, 0(a3)
	addiw t2, t4, 16
	bge t2, t1, label39
	j label38
label199:
	mv t1, t4
	mv a4, t2
	bge t4, t2, label203
	lw a4, 0(a2)
	lw a2, 0(a3)
	addiw a3, a4, -1
	addiw a4, t4, 16
	bge a4, a2, label30
	j label29
label203:
	mv a4, a1
	bge a1, s2, label20
	j label22
label30:
	addiw a4, t1, 16
	bge a4, a2, label362
	j label32
label362:
	mv a4, t1
label33:
	slliw a5, a4, 2
	add a5, s3, a5
	lw a5, 0(a5)
	slliw a5, a5, 2
	add a5, s5, a5
	lw t1, 0(a5)
	slliw t2, a4, 2
	add t2, s4, t2
	lw t2, 0(t2)
	mulw t2, t2, a3
	addw t1, t1, t2
	sw t1, 0(a5)
	addiw a4, a4, 1
	bge a4, a2, label524
	j label33
label524:
	mv a4, a1
	bge a1, s2, label20
	j label22
label29:
	slliw a5, t1, 2
	add a5, s3, a5
	lw t2, 0(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	slliw t1, t1, 2
	add t1, s4, t1
	lw t4, 0(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 4(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 4(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 8(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 8(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 12(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 12(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 16(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 16(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 20(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 20(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 24(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 24(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 28(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 28(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 32(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 32(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 36(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 36(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 40(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 40(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 44(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 44(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 48(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 48(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 52(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 52(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 56(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 56(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw a5, 60(a5)
	slliw a5, a5, 2
	add a5, s5, a5
	lw t2, 0(a5)
	lw t1, 60(t1)
	mulw t1, t1, a3
	addw t1, t2, t1
	sw t1, 0(a5)
	mv t1, a4
	addiw a4, a4, 16
	bge a4, a2, label30
	j label29
label43:
	lw t1, 0(a4)
	lw a4, 0(a5)
	bge t1, a4, label203
	lw a4, 0(a2)
	lw a2, 0(a3)
	addiw a3, a4, -1
	addiw a4, t1, 16
	bge a4, a2, label30
	j label29
label32:
	slliw a5, t1, 2
	add a5, s3, a5
	lw t2, 0(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	slliw t1, t1, 2
	add t1, s4, t1
	lw t4, 0(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 4(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 4(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 8(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 8(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 12(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 12(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 16(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 16(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 20(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 20(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 24(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 24(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 28(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 28(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 32(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 32(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 36(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 36(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 40(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 40(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 44(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 44(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 48(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 48(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 52(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 52(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 56(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 56(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw a5, 60(a5)
	slliw a5, a5, 2
	add a5, s5, a5
	lw t2, 0(a5)
	lw t1, 60(t1)
	mulw t1, t1, a3
	addw t1, t2, t1
	sw t1, 0(a5)
	mv t1, a4
	addiw a4, a4, 16
	bge a4, a2, label362
	j label32
label38:
	slliw t3, t4, 2
	add t3, s3, t3
	lw t5, 0(t3)
	slliw t5, t5, 2
	add t5, s5, t5
	lw t6, 0(t5)
	slliw t4, t4, 2
	add t4, s4, t4
	lw a6, 0(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 4(t3)
	slliw t5, t5, 2
	add t5, s5, t5
	lw t6, 0(t5)
	lw a6, 4(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 8(t3)
	slliw t5, t5, 2
	add t5, s5, t5
	lw t6, 0(t5)
	lw a6, 8(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 12(t3)
	slliw t5, t5, 2
	add t5, s5, t5
	lw t6, 0(t5)
	lw a6, 12(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 16(t3)
	slliw t5, t5, 2
	add t5, s5, t5
	lw t6, 0(t5)
	lw a6, 16(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 20(t3)
	slliw t5, t5, 2
	add t5, s5, t5
	lw t6, 0(t5)
	lw a6, 20(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 24(t3)
	slliw t5, t5, 2
	add t5, s5, t5
	lw t6, 0(t5)
	lw a6, 24(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 28(t3)
	slliw t5, t5, 2
	add t5, s5, t5
	lw t6, 0(t5)
	lw a6, 28(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 32(t3)
	slliw t5, t5, 2
	add t5, s5, t5
	lw t6, 0(t5)
	lw a6, 32(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 36(t3)
	slliw t5, t5, 2
	add t5, s5, t5
	lw t6, 0(t5)
	lw a6, 36(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 40(t3)
	slliw t5, t5, 2
	add t5, s5, t5
	lw t6, 0(t5)
	lw a6, 40(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 44(t3)
	slliw t5, t5, 2
	add t5, s5, t5
	lw t6, 0(t5)
	lw a6, 44(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 48(t3)
	slliw t5, t5, 2
	add t5, s5, t5
	lw t6, 0(t5)
	lw a6, 48(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 52(t3)
	slliw t5, t5, 2
	add t5, s5, t5
	lw t6, 0(t5)
	lw a6, 52(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 56(t3)
	slliw t5, t5, 2
	add t5, s5, t5
	lw t6, 0(t5)
	lw a6, 56(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t3, 60(t3)
	slliw t3, t3, 2
	add t3, s5, t3
	lw t5, 0(t3)
	lw t4, 60(t4)
	addw t4, t5, t4
	sw t4, 0(t3)
	mv t4, t2
	addiw t2, t2, 16
	bge t2, t1, label39
	j label38
label39:
	addiw t2, t4, 16
	bge t2, t1, label665
	j label44
label665:
	mv t2, t4
	j label41
label44:
	slliw t3, t4, 2
	add t3, s3, t3
	lw t5, 0(t3)
	slliw t5, t5, 2
	add t5, s5, t5
	lw t6, 0(t5)
	slliw t4, t4, 2
	add t4, s4, t4
	lw a6, 0(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 4(t3)
	slliw t5, t5, 2
	add t5, s5, t5
	lw t6, 0(t5)
	lw a6, 4(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 8(t3)
	slliw t5, t5, 2
	add t5, s5, t5
	lw t6, 0(t5)
	lw a6, 8(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 12(t3)
	slliw t5, t5, 2
	add t5, s5, t5
	lw t6, 0(t5)
	lw a6, 12(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 16(t3)
	slliw t5, t5, 2
	add t5, s5, t5
	lw t6, 0(t5)
	lw a6, 16(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 20(t3)
	slliw t5, t5, 2
	add t5, s5, t5
	lw t6, 0(t5)
	lw a6, 20(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 24(t3)
	slliw t5, t5, 2
	add t5, s5, t5
	lw t6, 0(t5)
	lw a6, 24(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 28(t3)
	slliw t5, t5, 2
	add t5, s5, t5
	lw t6, 0(t5)
	lw a6, 28(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 32(t3)
	slliw t5, t5, 2
	add t5, s5, t5
	lw t6, 0(t5)
	lw a6, 32(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 36(t3)
	slliw t5, t5, 2
	add t5, s5, t5
	lw t6, 0(t5)
	lw a6, 36(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 40(t3)
	slliw t5, t5, 2
	add t5, s5, t5
	lw t6, 0(t5)
	lw a6, 40(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 44(t3)
	slliw t5, t5, 2
	add t5, s5, t5
	lw t6, 0(t5)
	lw a6, 44(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 48(t3)
	slliw t5, t5, 2
	add t5, s5, t5
	lw t6, 0(t5)
	lw a6, 48(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 52(t3)
	slliw t5, t5, 2
	add t5, s5, t5
	lw t6, 0(t5)
	lw a6, 52(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 56(t3)
	slliw t5, t5, 2
	add t5, s5, t5
	lw t6, 0(t5)
	lw a6, 56(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t3, 60(t3)
	slliw t3, t3, 2
	add t3, s5, t3
	lw t5, 0(t3)
	lw t4, 60(t4)
	addw t4, t5, t4
	sw t4, 0(t3)
	mv t4, t2
	addiw t2, t2, 16
	bge t2, t1, label665
	j label44
label41:
	slliw t3, t2, 2
	add t3, s3, t3
	lw t3, 0(t3)
	slliw t3, t3, 2
	add t3, s5, t3
	lw t4, 0(t3)
	slliw t5, t2, 2
	add t5, s4, t5
	lw t5, 0(t5)
	addw t4, t4, t5
	sw t4, 0(t3)
	addiw t2, t2, 1
	bge t2, t1, label43
	j label41
label56:
	slliw a1, a4, 2
	add a2, s5, a1
	addiw a1, a4, 1
	slliw a3, a1, 2
	add a3, s1, a3
	slliw a4, a4, 2
	add a4, s1, a4
	lw t4, 0(a4)
	addi a5, a4, 4
	lw t2, 4(a4)
	bge t4, t2, label899
	lw t1, 0(a3)
	addiw t2, t4, 16
	bge t2, t1, label61
	j label60
label899:
	mv t1, t4
	mv a4, t2
	bge t4, t2, label1191
	lw a4, 0(a2)
	lw a2, 0(a3)
	addiw a3, a4, -1
	addiw a4, t4, 16
	bge a4, a2, label74
	j label73
label66:
	lw t1, 0(a4)
	lw a4, 0(a5)
	bge t1, a4, label1191
	lw a4, 0(a2)
	lw a2, 0(a3)
	addiw a3, a4, -1
	addiw a4, t1, 16
	bge a4, a2, label74
	j label73
label1191:
	mv a4, a1
	bge a1, s2, label17
	j label56
label73:
	slliw a5, t1, 2
	add a5, s3, a5
	lw t2, 0(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	slliw t1, t1, 2
	add t1, s4, t1
	lw t4, 0(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 4(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 4(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 8(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 8(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 12(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 12(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 16(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 16(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 20(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 20(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 24(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 24(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 28(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 28(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 32(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 32(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 36(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 36(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 40(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 40(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 44(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 44(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 48(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 48(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 52(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 52(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 56(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 56(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw a5, 60(a5)
	slliw a5, a5, 2
	add a5, s0, a5
	lw t2, 0(a5)
	lw t1, 60(t1)
	mulw t1, t1, a3
	addw t1, t2, t1
	sw t1, 0(a5)
	mv t1, a4
	addiw a4, a4, 16
	bge a4, a2, label74
	j label73
label74:
	addiw a4, t1, 16
	bge a4, a2, label1350
label76:
	slliw a5, t1, 2
	add a5, s3, a5
	lw t2, 0(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	slliw t1, t1, 2
	add t1, s4, t1
	lw t4, 0(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 4(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 4(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 8(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 8(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 12(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 12(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 16(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 16(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 20(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 20(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 24(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 24(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 28(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 28(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 32(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 32(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 36(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 36(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 40(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 40(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 44(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 44(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 48(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 48(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 52(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 52(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 56(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 56(t1)
	mulw t4, t4, a3
	addw t3, t3, t4
	sw t3, 0(t2)
	lw a5, 60(a5)
	slliw a5, a5, 2
	add a5, s0, a5
	lw t2, 0(a5)
	lw t1, 60(t1)
	mulw t1, t1, a3
	addw t1, t2, t1
	sw t1, 0(a5)
	mv t1, a4
	addiw a4, a4, 16
	bge a4, a2, label1350
	j label76
label1350:
	mv a4, t1
label77:
	slliw a5, a4, 2
	add a5, s3, a5
	lw a5, 0(a5)
	slliw a5, a5, 2
	add a5, s0, a5
	lw t1, 0(a5)
	slliw t2, a4, 2
	add t2, s4, t2
	lw t2, 0(t2)
	mulw t2, t2, a3
	addw t1, t1, t2
	sw t1, 0(a5)
	addiw a4, a4, 1
	bge a4, a2, label1512
	j label77
label1512:
	mv a4, a1
	bge a1, s2, label17
	j label56
label61:
	addiw t2, t4, 16
	bge t2, t1, label1040
	j label63
label1040:
	mv t2, t4
label64:
	slliw t3, t2, 2
	add t3, s3, t3
	lw t3, 0(t3)
	slliw t3, t3, 2
	add t3, s0, t3
	lw t4, 0(t3)
	slliw t5, t2, 2
	add t5, s4, t5
	lw t5, 0(t5)
	addw t4, t4, t5
	sw t4, 0(t3)
	addiw t2, t2, 1
	bge t2, t1, label66
	j label64
label63:
	slliw t3, t4, 2
	add t3, s3, t3
	lw t5, 0(t3)
	slliw t5, t5, 2
	add t5, s0, t5
	lw t6, 0(t5)
	slliw t4, t4, 2
	add t4, s4, t4
	lw a6, 0(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 4(t3)
	slliw t5, t5, 2
	add t5, s0, t5
	lw t6, 0(t5)
	lw a6, 4(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 8(t3)
	slliw t5, t5, 2
	add t5, s0, t5
	lw t6, 0(t5)
	lw a6, 8(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 12(t3)
	slliw t5, t5, 2
	add t5, s0, t5
	lw t6, 0(t5)
	lw a6, 12(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 16(t3)
	slliw t5, t5, 2
	add t5, s0, t5
	lw t6, 0(t5)
	lw a6, 16(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 20(t3)
	slliw t5, t5, 2
	add t5, s0, t5
	lw t6, 0(t5)
	lw a6, 20(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 24(t3)
	slliw t5, t5, 2
	add t5, s0, t5
	lw t6, 0(t5)
	lw a6, 24(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 28(t3)
	slliw t5, t5, 2
	add t5, s0, t5
	lw t6, 0(t5)
	lw a6, 28(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 32(t3)
	slliw t5, t5, 2
	add t5, s0, t5
	lw t6, 0(t5)
	lw a6, 32(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 36(t3)
	slliw t5, t5, 2
	add t5, s0, t5
	lw t6, 0(t5)
	lw a6, 36(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 40(t3)
	slliw t5, t5, 2
	add t5, s0, t5
	lw t6, 0(t5)
	lw a6, 40(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 44(t3)
	slliw t5, t5, 2
	add t5, s0, t5
	lw t6, 0(t5)
	lw a6, 44(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 48(t3)
	slliw t5, t5, 2
	add t5, s0, t5
	lw t6, 0(t5)
	lw a6, 48(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 52(t3)
	slliw t5, t5, 2
	add t5, s0, t5
	lw t6, 0(t5)
	lw a6, 52(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 56(t3)
	slliw t5, t5, 2
	add t5, s0, t5
	lw t6, 0(t5)
	lw a6, 56(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t3, 60(t3)
	slliw t3, t3, 2
	add t3, s0, t3
	lw t5, 0(t3)
	lw t4, 60(t4)
	addw t4, t5, t4
	sw t4, 0(t3)
	mv t4, t2
	addiw t2, t2, 16
	bge t2, t1, label1040
	j label63
label60:
	slliw t3, t4, 2
	add t3, s3, t3
	lw t5, 0(t3)
	slliw t5, t5, 2
	add t5, s0, t5
	lw t6, 0(t5)
	slliw t4, t4, 2
	add t4, s4, t4
	lw a6, 0(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 4(t3)
	slliw t5, t5, 2
	add t5, s0, t5
	lw t6, 0(t5)
	lw a6, 4(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 8(t3)
	slliw t5, t5, 2
	add t5, s0, t5
	lw t6, 0(t5)
	lw a6, 8(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 12(t3)
	slliw t5, t5, 2
	add t5, s0, t5
	lw t6, 0(t5)
	lw a6, 12(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 16(t3)
	slliw t5, t5, 2
	add t5, s0, t5
	lw t6, 0(t5)
	lw a6, 16(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 20(t3)
	slliw t5, t5, 2
	add t5, s0, t5
	lw t6, 0(t5)
	lw a6, 20(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 24(t3)
	slliw t5, t5, 2
	add t5, s0, t5
	lw t6, 0(t5)
	lw a6, 24(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 28(t3)
	slliw t5, t5, 2
	add t5, s0, t5
	lw t6, 0(t5)
	lw a6, 28(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 32(t3)
	slliw t5, t5, 2
	add t5, s0, t5
	lw t6, 0(t5)
	lw a6, 32(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 36(t3)
	slliw t5, t5, 2
	add t5, s0, t5
	lw t6, 0(t5)
	lw a6, 36(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 40(t3)
	slliw t5, t5, 2
	add t5, s0, t5
	lw t6, 0(t5)
	lw a6, 40(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 44(t3)
	slliw t5, t5, 2
	add t5, s0, t5
	lw t6, 0(t5)
	lw a6, 44(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 48(t3)
	slliw t5, t5, 2
	add t5, s0, t5
	lw t6, 0(t5)
	lw a6, 48(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 52(t3)
	slliw t5, t5, 2
	add t5, s0, t5
	lw t6, 0(t5)
	lw a6, 52(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t5, 56(t3)
	slliw t5, t5, 2
	add t5, s0, t5
	lw t6, 0(t5)
	lw a6, 56(t4)
	addw t6, t6, a6
	sw t6, 0(t5)
	lw t3, 60(t3)
	slliw t3, t3, 2
	add t3, s0, t3
	lw t5, 0(t3)
	lw t4, 60(t4)
	addw t4, t5, t4
	sw t4, 0(t3)
	mv t4, t2
	addiw t2, t2, 16
	bge t2, t1, label61
	j label60
label47:
	addiw a2, a1, 16
	bge a2, s2, label50
label49:
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	sw zero, 16(a1)
	sw zero, 20(a1)
	sw zero, 24(a1)
	sw zero, 28(a1)
	sw zero, 32(a1)
	sw zero, 36(a1)
	sw zero, 40(a1)
	sw zero, 44(a1)
	sw zero, 48(a1)
	sw zero, 52(a1)
	sw zero, 56(a1)
	sw zero, 60(a1)
	mv a1, a2
	addiw a2, a2, 16
	bge a2, s2, label50
	j label49
label50:
	addiw a2, a1, 16
	bge a2, s2, label52
	j label54
label52:
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label851
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label851
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label851
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label851
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label851
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label851
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label851
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label851
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label851
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label851
	j label1611
label851:
	mv a4, zero
	bge zero, s2, label20
	j label22
label1611:
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label851
	j label1611
label55:
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	sw zero, 16(a1)
	sw zero, 20(a1)
	sw zero, 24(a1)
	sw zero, 28(a1)
	sw zero, 32(a1)
	sw zero, 36(a1)
	sw zero, 40(a1)
	sw zero, 44(a1)
	sw zero, 48(a1)
	sw zero, 52(a1)
	sw zero, 56(a1)
	sw zero, 60(a1)
	mv a1, a2
	addiw a2, a2, 16
	bge a2, s2, label47
	j label55
label54:
	slliw a1, a1, 2
	add a1, s5, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	sw zero, 16(a1)
	sw zero, 20(a1)
	sw zero, 24(a1)
	sw zero, 28(a1)
	sw zero, 32(a1)
	sw zero, 36(a1)
	sw zero, 40(a1)
	sw zero, 44(a1)
	sw zero, 48(a1)
	sw zero, 52(a1)
	sw zero, 56(a1)
	sw zero, 60(a1)
	mv a1, a2
	addiw a2, a2, 16
	bge a2, s2, label52
	j label54
label7:
	addiw a2, a1, 16
	bge a2, s2, label10
label9:
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	sw zero, 16(a1)
	sw zero, 20(a1)
	sw zero, 24(a1)
	sw zero, 28(a1)
	sw zero, 32(a1)
	sw zero, 36(a1)
	sw zero, 40(a1)
	sw zero, 44(a1)
	sw zero, 48(a1)
	sw zero, 52(a1)
	sw zero, 56(a1)
	sw zero, 60(a1)
	mv a1, a2
	addiw a2, a2, 16
	bge a2, s2, label10
	j label9
label10:
	addiw a2, a1, 16
	bge a2, s2, label12
	j label14
label12:
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label152
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label152
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label152
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label152
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label152
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label152
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label152
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label152
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label152
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label152
	j label1610
label152:
	mv a4, zero
	bge zero, s2, label17
	j label56
label1610:
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label152
	j label1610
label14:
	slliw a1, a1, 2
	add a1, s0, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	sw zero, 16(a1)
	sw zero, 20(a1)
	sw zero, 24(a1)
	sw zero, 28(a1)
	sw zero, 32(a1)
	sw zero, 36(a1)
	sw zero, 40(a1)
	sw zero, 44(a1)
	sw zero, 48(a1)
	sw zero, 52(a1)
	sw zero, 56(a1)
	sw zero, 60(a1)
	mv a1, a2
	addiw a2, a2, 16
	bge a2, s2, label12
	j label14
label21:
	li a0, 47
	jal _sysy_stoptime
	mv a0, s2
	mv a1, s0
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s4, 24(sp)
	ld s3, 32(sp)
	ld s2, 40(sp)
	ld s1, 48(sp)
	addi sp, sp, 56
	ret
