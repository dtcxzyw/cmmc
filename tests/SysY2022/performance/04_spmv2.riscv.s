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
pcrel1628:
	auipc a0, %pcrel_hi(x)
	addi a0, a0, %pcrel_lo(pcrel1628)
	mv s1, a0
	jal getarray
	addiw s2, a0, -1
pcrel1629:
	auipc a0, %pcrel_hi(y)
	addi a0, a0, %pcrel_lo(pcrel1629)
	mv s3, a0
	jal getarray
pcrel1630:
	auipc a0, %pcrel_hi(v)
	addi a0, a0, %pcrel_lo(pcrel1630)
	mv s4, a0
	jal getarray
pcrel1631:
	auipc a0, %pcrel_hi(a)
	addi a0, a0, %pcrel_lo(pcrel1631)
	mv s5, a0
	jal getarray
	li a0, 39
	jal _sysy_starttime
pcrel1632:
	auipc a0, %pcrel_hi(b)
	addi s0, a0, %pcrel_lo(pcrel1632)
	mv a0, zero
	ble s2, zero, label96
	mv a1, zero
	addiw a2, zero, 16
	bge a2, s2, label7
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
label96:
	mv a4, zero
	bge zero, s2, label40
label17:
	slliw a1, a4, 2
	add a2, s1, a1
	lw t4, 0(a2)
	addi a5, a2, 4
	lw t2, 4(a2)
	addiw a1, a4, 1
	slliw a3, a1, 2
	add a3, s1, a3
	slliw a4, a4, 2
	add a4, s5, a4
	bge t4, t2, label187
	lw t1, 0(a3)
	addiw t2, t4, 16
	bge t2, t1, label21
	j label27
label187:
	mv t1, t4
	mv a2, t2
	bge t4, t2, label479
	lw a2, 0(a4)
	addiw a2, a2, -1
	lw a3, 0(a3)
	addiw a4, t4, 16
	bge a4, a3, label35
	j label34
label479:
	mv a4, a1
	bge a1, s2, label40
	j label17
label43:
	addiw a0, a0, 1
	li a1, 100
	bge a0, a1, label44
	ble s2, zero, label96
	mv a1, zero
	addiw a2, zero, 16
	bge a2, s2, label7
	j label6
label45:
	slliw a1, a4, 2
	add a2, s1, a1
	lw t4, 0(a2)
	addi a5, a2, 4
	lw t2, 4(a2)
	addiw a1, a4, 1
	slliw a3, a1, 2
	add a3, s1, a3
	slliw a4, a4, 2
	add a4, s0, a4
	bge t4, t2, label826
	lw t1, 0(a3)
	addiw t2, t4, 16
	bge t2, t1, label62
	j label61
label826:
	mv t1, t4
	mv a2, t2
	bge t4, t2, label830
	lw a2, 0(a4)
	addiw a2, a2, -1
	lw a3, 0(a3)
	addiw a4, t4, 16
	bge a4, a3, label53
	j label52
label830:
	mv a4, a1
	bge a1, s2, label43
	j label45
label55:
	slliw a5, a4, 2
	add a5, s3, a5
	lw a5, 0(a5)
	slliw a5, a5, 2
	add a5, s5, a5
	lw t1, 0(a5)
	slliw t2, a4, 2
	add t2, s4, t2
	lw t2, 0(t2)
	mulw t2, a2, t2
	addw t1, t2, t1
	sw t1, 0(a5)
	addiw a4, a4, 1
	bge a4, a3, label1005
	j label55
label1005:
	mv a4, a1
	bge a1, s2, label43
	j label45
label62:
	addiw t2, t4, 16
	bge t2, t1, label1292
	j label67
label1292:
	mv t2, t4
label64:
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
	bge t2, t1, label66
	j label64
label67:
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
	bge t2, t1, label1292
	j label67
label21:
	addiw t2, t4, 16
	bge t2, t1, label198
	j label23
label198:
	mv t2, t4
label24:
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
	bge t2, t1, label26
	j label24
label53:
	addiw a4, t1, 16
	bge a4, a3, label989
	j label57
label989:
	mv a4, t1
	j label55
label52:
	slliw a5, t1, 2
	add a5, s3, a5
	lw t2, 0(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	slliw t1, t1, 2
	add t1, s4, t1
	lw t4, 0(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 4(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 4(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 8(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 8(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 12(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 12(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 16(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 16(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 20(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 20(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 24(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 24(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 28(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 28(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 32(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 32(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 36(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 36(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 40(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 40(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 44(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 44(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 48(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 48(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 52(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 52(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 56(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 56(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw a5, 60(a5)
	slliw a5, a5, 2
	add a5, s5, a5
	lw t2, 0(a5)
	lw t1, 60(t1)
	mulw t1, a2, t1
	addw t1, t1, t2
	sw t1, 0(a5)
	mv t1, a4
	addiw a4, a4, 16
	bge a4, a3, label53
	j label52
label66:
	lw t1, 0(a2)
	lw a2, 0(a5)
	bge t1, a2, label830
	lw a2, 0(a4)
	addiw a2, a2, -1
	lw a3, 0(a3)
	addiw a4, t1, 16
	bge a4, a3, label53
	j label52
label57:
	slliw a5, t1, 2
	add a5, s3, a5
	lw t2, 0(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	slliw t1, t1, 2
	add t1, s4, t1
	lw t4, 0(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 4(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 4(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 8(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 8(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 12(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 12(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 16(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 16(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 20(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 20(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 24(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 24(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 28(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 28(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 32(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 32(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 36(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 36(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 40(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 40(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 44(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 44(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 48(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 48(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 52(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 52(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 56(a5)
	slliw t2, t2, 2
	add t2, s5, t2
	lw t3, 0(t2)
	lw t4, 56(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw a5, 60(a5)
	slliw a5, a5, 2
	add a5, s5, a5
	lw t2, 0(a5)
	lw t1, 60(t1)
	mulw t1, a2, t1
	addw t1, t1, t2
	sw t1, 0(a5)
	mv t1, a4
	addiw a4, a4, 16
	bge a4, a3, label989
	j label57
label61:
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
	bge t2, t1, label62
	j label61
label35:
	addiw a4, t1, 16
	bge a4, a3, label638
	j label39
label638:
	mv a4, t1
label37:
	slliw a5, a4, 2
	add a5, s3, a5
	lw a5, 0(a5)
	slliw a5, a5, 2
	add a5, s0, a5
	lw t1, 0(a5)
	slliw t2, a4, 2
	add t2, s4, t2
	lw t2, 0(t2)
	mulw t2, a2, t2
	addw t1, t2, t1
	sw t1, 0(a5)
	addiw a4, a4, 1
	bge a4, a3, label654
	j label37
label654:
	mv a4, a1
	bge a1, s2, label40
	j label17
label39:
	slliw a5, t1, 2
	add a5, s3, a5
	lw t2, 0(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	slliw t1, t1, 2
	add t1, s4, t1
	lw t4, 0(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 4(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 4(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 8(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 8(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 12(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 12(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 16(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 16(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 20(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 20(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 24(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 24(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 28(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 28(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 32(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 32(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 36(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 36(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 40(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 40(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 44(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 44(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 48(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 48(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 52(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 52(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 56(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 56(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw a5, 60(a5)
	slliw a5, a5, 2
	add a5, s0, a5
	lw t2, 0(a5)
	lw t1, 60(t1)
	mulw t1, a2, t1
	addw t1, t1, t2
	sw t1, 0(a5)
	mv t1, a4
	addiw a4, a4, 16
	bge a4, a3, label638
	j label39
label26:
	lw t1, 0(a2)
	lw a2, 0(a5)
	bge t1, a2, label479
	lw a2, 0(a4)
	addiw a2, a2, -1
	lw a3, 0(a3)
	addiw a4, t1, 16
	bge a4, a3, label35
label34:
	slliw a5, t1, 2
	add a5, s3, a5
	lw t2, 0(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	slliw t1, t1, 2
	add t1, s4, t1
	lw t4, 0(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 4(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 4(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 8(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 8(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 12(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 12(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 16(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 16(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 20(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 20(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 24(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 24(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 28(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 28(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 32(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 32(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 36(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 36(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 40(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 40(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 44(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 44(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 48(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 48(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 52(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 52(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw t2, 56(a5)
	slliw t2, t2, 2
	add t2, s0, t2
	lw t3, 0(t2)
	lw t4, 56(t1)
	mulw t4, a2, t4
	addw t3, t4, t3
	sw t3, 0(t2)
	lw a5, 60(a5)
	slliw a5, a5, 2
	add a5, s0, a5
	lw t2, 0(a5)
	lw t1, 60(t1)
	mulw t1, a2, t1
	addw t1, t1, t2
	sw t1, 0(a5)
	mv t1, a4
	addiw a4, a4, 16
	bge a4, a3, label35
	j label34
label27:
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
	bge t2, t1, label21
	j label27
label23:
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
	bge t2, t1, label198
	j label23
label169:
	mv a4, zero
	bge zero, s2, label40
	j label17
label40:
	ble s2, zero, label803
	mv a1, zero
	addiw a2, zero, 16
	bge a2, s2, label70
	j label78
label803:
	mv a4, zero
	bge zero, s2, label43
	j label45
label1621:
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label169
	j label1621
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
	bge a2, s2, label13
	j label12
label13:
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label169
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label169
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label169
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label169
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label169
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label169
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label169
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label169
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label169
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label169
	j label1621
label70:
	addiw a2, a1, 16
	bge a2, s2, label73
label72:
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
	bge a2, s2, label73
	j label72
label73:
	addiw a2, a1, 16
	bge a2, s2, label75
	j label77
label75:
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label1478
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label1478
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label1478
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label1478
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label1478
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label1478
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label1478
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label1478
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label1478
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label1478
	j label1622
label1478:
	mv a4, zero
	bge zero, s2, label43
	j label45
label1622:
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label1478
	j label1622
label78:
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
	bge a2, s2, label70
	j label78
label77:
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
	bge a2, s2, label75
	j label77
label12:
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
	bge a2, s2, label13
	j label12
label44:
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
