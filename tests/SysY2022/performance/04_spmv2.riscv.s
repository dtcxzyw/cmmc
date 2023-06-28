.data
.section .rodata
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
	sd s1, 48(sp)
	sd s2, 40(sp)
	sd s3, 32(sp)
	sd s4, 24(sp)
	sd s5, 16(sp)
	sd s0, 8(sp)
	sd ra, 0(sp)
pcrel1647:
	auipc a0, %pcrel_hi(x)
	addi a0, a0, %pcrel_lo(pcrel1647)
	mv s1, a0
	jal getarray
	addiw s2, a0, -1
pcrel1648:
	auipc a0, %pcrel_hi(y)
	addi a0, a0, %pcrel_lo(pcrel1648)
	mv s3, a0
	jal getarray
pcrel1649:
	auipc a0, %pcrel_hi(v)
	addi a0, a0, %pcrel_lo(pcrel1649)
	mv s4, a0
	jal getarray
pcrel1650:
	auipc a0, %pcrel_hi(a)
	addi a0, a0, %pcrel_lo(pcrel1650)
	mv s5, a0
	jal getarray
	li a0, 39
	jal _sysy_starttime
pcrel1651:
	auipc a0, %pcrel_hi(b)
	addi s0, a0, %pcrel_lo(pcrel1651)
	mv a0, zero
	ble s2, zero, label96
	mv a1, zero
	addiw a2, zero, 16
	bge a2, s2, label7
	j label6
label96:
	mv a2, zero
	bge zero, s2, label17
	slliw a1, zero, 2
	add a3, s1, a1
	lw t1, 0(a3)
	lw a4, 4(a3)
	addiw a1, zero, 1
	bge t1, a4, label900
	slliw a4, a1, 2
	add a4, s1, a4
	lw a4, 0(a4)
	mv t2, t1
	addiw a5, t1, 16
	bge a5, a4, label61
	j label60
label7:
	addiw a2, a1, 16
	bge a2, s2, label10
	j label9
label900:
	mv a3, a4
	bge t1, a4, label1197
	slliw a2, a2, 2
	add a2, s5, a2
	lw a2, 0(a2)
	addiw a2, a2, -1
	slliw a3, a1, 2
	add a3, s1, a3
	lw a3, 0(a3)
	addiw a4, t1, 16
	bge a4, a3, label74
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
	bge a4, a3, label74
	j label73
label74:
	addiw a4, t1, 16
	bge a4, a3, label1360
	j label78
label1360:
	mv a4, t1
label76:
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
	bge a4, a3, label1376
	j label76
label1376:
	mv a2, a1
	bge a1, s2, label17
	slliw a1, a1, 2
	add a3, s1, a1
	lw t1, 0(a3)
	lw a4, 4(a3)
	addiw a1, a2, 1
	bge t1, a4, label900
	slliw a4, a1, 2
	add a4, s1, a4
	lw a4, 0(a4)
	mv t2, t1
	addiw a5, t1, 16
	bge a5, a4, label61
	j label60
label78:
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
	bge a4, a3, label1360
	j label78
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
	j label1641
label152:
	mv a2, zero
	bge zero, s2, label17
	slliw a1, zero, 2
	add a3, s1, a1
	lw t1, 0(a3)
	lw a4, 4(a3)
	addiw a1, zero, 1
	bge t1, a4, label900
	slliw a4, a1, 2
	add a4, s1, a4
	lw a4, 0(a4)
	mv t2, t1
	addiw a5, t1, 16
	bge a5, a4, label61
label60:
	slliw t1, t2, 2
	add t1, s3, t1
	lw t3, 0(t1)
	slliw t3, t3, 2
	add t3, s0, t3
	lw t4, 0(t3)
	slliw t2, t2, 2
	add t2, s4, t2
	lw t5, 0(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 4(t1)
	slliw t3, t3, 2
	add t3, s0, t3
	lw t4, 0(t3)
	lw t5, 4(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 8(t1)
	slliw t3, t3, 2
	add t3, s0, t3
	lw t4, 0(t3)
	lw t5, 8(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 12(t1)
	slliw t3, t3, 2
	add t3, s0, t3
	lw t4, 0(t3)
	lw t5, 12(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 16(t1)
	slliw t3, t3, 2
	add t3, s0, t3
	lw t4, 0(t3)
	lw t5, 16(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 20(t1)
	slliw t3, t3, 2
	add t3, s0, t3
	lw t4, 0(t3)
	lw t5, 20(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 24(t1)
	slliw t3, t3, 2
	add t3, s0, t3
	lw t4, 0(t3)
	lw t5, 24(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 28(t1)
	slliw t3, t3, 2
	add t3, s0, t3
	lw t4, 0(t3)
	lw t5, 28(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 32(t1)
	slliw t3, t3, 2
	add t3, s0, t3
	lw t4, 0(t3)
	lw t5, 32(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 36(t1)
	slliw t3, t3, 2
	add t3, s0, t3
	lw t4, 0(t3)
	lw t5, 36(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 40(t1)
	slliw t3, t3, 2
	add t3, s0, t3
	lw t4, 0(t3)
	lw t5, 40(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 44(t1)
	slliw t3, t3, 2
	add t3, s0, t3
	lw t4, 0(t3)
	lw t5, 44(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 48(t1)
	slliw t3, t3, 2
	add t3, s0, t3
	lw t4, 0(t3)
	lw t5, 48(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 52(t1)
	slliw t3, t3, 2
	add t3, s0, t3
	lw t4, 0(t3)
	lw t5, 52(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 56(t1)
	slliw t3, t3, 2
	add t3, s0, t3
	lw t4, 0(t3)
	lw t5, 56(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t1, 60(t1)
	slliw t1, t1, 2
	add t1, s0, t1
	lw t3, 0(t1)
	lw t2, 60(t2)
	addw t2, t3, t2
	sw t2, 0(t1)
	mv t2, a5
	addiw a5, a5, 16
	bge a5, a4, label61
	j label60
label61:
	addiw a5, t2, 16
	bge a5, a4, label1043
	j label63
label1043:
	mv a5, t2
label64:
	slliw t1, a5, 2
	add t1, s3, t1
	lw t1, 0(t1)
	slliw t1, t1, 2
	add t1, s0, t1
	lw t2, 0(t1)
	slliw t3, a5, 2
	add t3, s4, t3
	lw t3, 0(t3)
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw a5, a5, 1
	bge a5, a4, label66
	j label64
label63:
	slliw t1, t2, 2
	add t1, s3, t1
	lw t3, 0(t1)
	slliw t3, t3, 2
	add t3, s0, t3
	lw t4, 0(t3)
	slliw t2, t2, 2
	add t2, s4, t2
	lw t5, 0(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 4(t1)
	slliw t3, t3, 2
	add t3, s0, t3
	lw t4, 0(t3)
	lw t5, 4(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 8(t1)
	slliw t3, t3, 2
	add t3, s0, t3
	lw t4, 0(t3)
	lw t5, 8(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 12(t1)
	slliw t3, t3, 2
	add t3, s0, t3
	lw t4, 0(t3)
	lw t5, 12(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 16(t1)
	slliw t3, t3, 2
	add t3, s0, t3
	lw t4, 0(t3)
	lw t5, 16(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 20(t1)
	slliw t3, t3, 2
	add t3, s0, t3
	lw t4, 0(t3)
	lw t5, 20(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 24(t1)
	slliw t3, t3, 2
	add t3, s0, t3
	lw t4, 0(t3)
	lw t5, 24(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 28(t1)
	slliw t3, t3, 2
	add t3, s0, t3
	lw t4, 0(t3)
	lw t5, 28(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 32(t1)
	slliw t3, t3, 2
	add t3, s0, t3
	lw t4, 0(t3)
	lw t5, 32(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 36(t1)
	slliw t3, t3, 2
	add t3, s0, t3
	lw t4, 0(t3)
	lw t5, 36(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 40(t1)
	slliw t3, t3, 2
	add t3, s0, t3
	lw t4, 0(t3)
	lw t5, 40(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 44(t1)
	slliw t3, t3, 2
	add t3, s0, t3
	lw t4, 0(t3)
	lw t5, 44(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 48(t1)
	slliw t3, t3, 2
	add t3, s0, t3
	lw t4, 0(t3)
	lw t5, 48(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 52(t1)
	slliw t3, t3, 2
	add t3, s0, t3
	lw t4, 0(t3)
	lw t5, 52(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 56(t1)
	slliw t3, t3, 2
	add t3, s0, t3
	lw t4, 0(t3)
	lw t5, 56(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t1, 60(t1)
	slliw t1, t1, 2
	add t1, s0, t1
	lw t3, 0(t1)
	lw t2, 60(t2)
	addw t2, t3, t2
	sw t2, 0(t1)
	mv t2, a5
	addiw a5, a5, 16
	bge a5, a4, label1043
	j label63
label17:
	ble s2, zero, label176
	mv a1, zero
	addiw a2, zero, 16
	bge a2, s2, label21
	j label20
label176:
	mv a2, zero
	bge zero, s2, label31
	slliw a1, zero, 2
	add a3, s1, a1
	lw t1, 0(a3)
	lw a4, 4(a3)
	addiw a1, zero, 1
	bge t1, a4, label268
	slliw a4, a1, 2
	add a4, s1, a4
	lw a4, 0(a4)
	mv t2, t1
	addiw a5, t1, 16
	bge a5, a4, label50
	j label49
label21:
	addiw a2, a1, 16
	bge a2, s2, label23
	j label28
label31:
	addiw a0, a0, 1
	li a1, 100
	bge a0, a1, label32
	ble s2, zero, label96
	mv a1, zero
	addiw a2, zero, 16
	bge a2, s2, label7
	j label6
label268:
	mv a3, a4
	bge t1, a4, label272
	slliw a2, a2, 2
	add a2, s0, a2
	lw a2, 0(a2)
	addiw a2, a2, -1
	slliw a3, a1, 2
	add a3, s1, a3
	lw a3, 0(a3)
	addiw a4, t1, 16
	bge a4, a3, label41
	j label40
label272:
	mv a2, a1
	bge a1, s2, label31
	slliw a1, a1, 2
	add a3, s1, a1
	lw t1, 0(a3)
	lw a4, 4(a3)
	addiw a1, a2, 1
	bge t1, a4, label268
	slliw a4, a1, 2
	add a4, s1, a4
	lw a4, 0(a4)
	mv t2, t1
	addiw a5, t1, 16
	bge a5, a4, label50
label49:
	slliw t1, t2, 2
	add t1, s3, t1
	lw t3, 0(t1)
	slliw t3, t3, 2
	add t3, s5, t3
	lw t4, 0(t3)
	slliw t2, t2, 2
	add t2, s4, t2
	lw t5, 0(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 4(t1)
	slliw t3, t3, 2
	add t3, s5, t3
	lw t4, 0(t3)
	lw t5, 4(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 8(t1)
	slliw t3, t3, 2
	add t3, s5, t3
	lw t4, 0(t3)
	lw t5, 8(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 12(t1)
	slliw t3, t3, 2
	add t3, s5, t3
	lw t4, 0(t3)
	lw t5, 12(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 16(t1)
	slliw t3, t3, 2
	add t3, s5, t3
	lw t4, 0(t3)
	lw t5, 16(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 20(t1)
	slliw t3, t3, 2
	add t3, s5, t3
	lw t4, 0(t3)
	lw t5, 20(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 24(t1)
	slliw t3, t3, 2
	add t3, s5, t3
	lw t4, 0(t3)
	lw t5, 24(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 28(t1)
	slliw t3, t3, 2
	add t3, s5, t3
	lw t4, 0(t3)
	lw t5, 28(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 32(t1)
	slliw t3, t3, 2
	add t3, s5, t3
	lw t4, 0(t3)
	lw t5, 32(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 36(t1)
	slliw t3, t3, 2
	add t3, s5, t3
	lw t4, 0(t3)
	lw t5, 36(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 40(t1)
	slliw t3, t3, 2
	add t3, s5, t3
	lw t4, 0(t3)
	lw t5, 40(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 44(t1)
	slliw t3, t3, 2
	add t3, s5, t3
	lw t4, 0(t3)
	lw t5, 44(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 48(t1)
	slliw t3, t3, 2
	add t3, s5, t3
	lw t4, 0(t3)
	lw t5, 48(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 52(t1)
	slliw t3, t3, 2
	add t3, s5, t3
	lw t4, 0(t3)
	lw t5, 52(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 56(t1)
	slliw t3, t3, 2
	add t3, s5, t3
	lw t4, 0(t3)
	lw t5, 56(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t1, 60(t1)
	slliw t1, t1, 2
	add t1, s5, t1
	lw t3, 0(t1)
	lw t2, 60(t2)
	addw t2, t3, t2
	sw t2, 0(t1)
	mv t2, a5
	addiw a5, a5, 16
	bge a5, a4, label50
	j label49
label40:
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
	bge a4, a3, label41
	j label40
label41:
	addiw a4, t1, 16
	bge a4, a3, label435
	j label43
label435:
	mv a4, t1
	j label44
label43:
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
	bge a4, a3, label435
	j label43
label44:
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
	bge a4, a3, label597
	j label44
label597:
	mv a2, a1
	bge a1, s2, label31
	slliw a1, a1, 2
	add a3, s1, a1
	lw t1, 0(a3)
	lw a4, 4(a3)
	addiw a1, a2, 1
	bge t1, a4, label268
	slliw a4, a1, 2
	add a4, s1, a4
	lw a4, 0(a4)
	mv t2, t1
	addiw a5, t1, 16
	bge a5, a4, label50
	j label49
label50:
	addiw a5, t2, 16
	bge a5, a4, label740
	j label55
label740:
	mv a5, t2
label52:
	slliw t1, a5, 2
	add t1, s3, t1
	lw t1, 0(t1)
	slliw t1, t1, 2
	add t1, s5, t1
	lw t2, 0(t1)
	slliw t3, a5, 2
	add t3, s4, t3
	lw t3, 0(t3)
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw a5, a5, 1
	bge a5, a4, label54
	j label52
label55:
	slliw t1, t2, 2
	add t1, s3, t1
	lw t3, 0(t1)
	slliw t3, t3, 2
	add t3, s5, t3
	lw t4, 0(t3)
	slliw t2, t2, 2
	add t2, s4, t2
	lw t5, 0(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 4(t1)
	slliw t3, t3, 2
	add t3, s5, t3
	lw t4, 0(t3)
	lw t5, 4(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 8(t1)
	slliw t3, t3, 2
	add t3, s5, t3
	lw t4, 0(t3)
	lw t5, 8(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 12(t1)
	slliw t3, t3, 2
	add t3, s5, t3
	lw t4, 0(t3)
	lw t5, 12(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 16(t1)
	slliw t3, t3, 2
	add t3, s5, t3
	lw t4, 0(t3)
	lw t5, 16(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 20(t1)
	slliw t3, t3, 2
	add t3, s5, t3
	lw t4, 0(t3)
	lw t5, 20(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 24(t1)
	slliw t3, t3, 2
	add t3, s5, t3
	lw t4, 0(t3)
	lw t5, 24(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 28(t1)
	slliw t3, t3, 2
	add t3, s5, t3
	lw t4, 0(t3)
	lw t5, 28(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 32(t1)
	slliw t3, t3, 2
	add t3, s5, t3
	lw t4, 0(t3)
	lw t5, 32(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 36(t1)
	slliw t3, t3, 2
	add t3, s5, t3
	lw t4, 0(t3)
	lw t5, 36(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 40(t1)
	slliw t3, t3, 2
	add t3, s5, t3
	lw t4, 0(t3)
	lw t5, 40(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 44(t1)
	slliw t3, t3, 2
	add t3, s5, t3
	lw t4, 0(t3)
	lw t5, 44(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 48(t1)
	slliw t3, t3, 2
	add t3, s5, t3
	lw t4, 0(t3)
	lw t5, 48(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 52(t1)
	slliw t3, t3, 2
	add t3, s5, t3
	lw t4, 0(t3)
	lw t5, 52(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t3, 56(t1)
	slliw t3, t3, 2
	add t3, s5, t3
	lw t4, 0(t3)
	lw t5, 56(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t1, 60(t1)
	slliw t1, t1, 2
	add t1, s5, t1
	lw t3, 0(t1)
	lw t2, 60(t2)
	addw t2, t3, t2
	sw t2, 0(t1)
	mv t2, a5
	addiw a5, a5, 16
	bge a5, a4, label740
	j label55
label66:
	slliw a4, a2, 2
	add a4, s1, a4
	lw t1, 0(a4)
	lw a3, 4(a3)
	bge t1, a3, label1197
	slliw a2, a2, 2
	add a2, s5, a2
	lw a2, 0(a2)
	addiw a2, a2, -1
	slliw a3, a1, 2
	add a3, s1, a3
	lw a3, 0(a3)
	addiw a4, t1, 16
	bge a4, a3, label74
	j label73
label1197:
	mv a2, a1
	bge a1, s2, label17
	slliw a1, a1, 2
	add a3, s1, a1
	lw t1, 0(a3)
	lw a4, 4(a3)
	addiw a1, a2, 1
	bge t1, a4, label900
	slliw a4, a1, 2
	add a4, s1, a4
	lw a4, 0(a4)
	mv t2, t1
	addiw a5, t1, 16
	bge a5, a4, label61
	j label60
label1641:
	slliw a2, a1, 2
	add a2, s0, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label152
	j label1641
label54:
	slliw a4, a2, 2
	add a4, s1, a4
	lw t1, 0(a4)
	lw a3, 4(a3)
	bge t1, a3, label272
	slliw a2, a2, 2
	add a2, s0, a2
	lw a2, 0(a2)
	addiw a2, a2, -1
	slliw a3, a1, 2
	add a3, s1, a3
	lw a3, 0(a3)
	addiw a4, t1, 16
	bge a4, a3, label41
	j label40
label23:
	addiw a2, a1, 16
	bge a2, s2, label25
	j label27
label25:
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label215
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label215
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label215
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label215
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label215
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label215
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label215
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label215
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label215
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label215
	j label1642
label215:
	mv a2, zero
	bge zero, s2, label31
	slliw a1, zero, 2
	add a3, s1, a1
	lw t1, 0(a3)
	lw a4, 4(a3)
	addiw a1, zero, 1
	bge t1, a4, label268
	slliw a4, a1, 2
	add a4, s1, a4
	lw a4, 0(a4)
	mv t2, t1
	addiw a5, t1, 16
	bge a5, a4, label50
	j label49
label1642:
	slliw a2, a1, 2
	add a2, s5, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s2, label215
	j label1642
label27:
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
	bge a2, s2, label25
	j label27
label28:
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
	bge a2, s2, label23
	j label28
label20:
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
	bge a2, s2, label21
	j label20
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
label32:
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
