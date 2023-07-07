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
pcrel596:
	auipc a0, %pcrel_hi(x)
	sd s5, 48(sp)
	addi a0, a0, %pcrel_lo(pcrel596)
	sd s0, 40(sp)
	mv s5, a0
	sd s4, 32(sp)
	sd s1, 24(sp)
	sd s3, 16(sp)
	sd s2, 8(sp)
	sd ra, 0(sp)
	jal getarray
	addiw s4, a0, -1
pcrel597:
	auipc a0, %pcrel_hi(y)
	addi a0, a0, %pcrel_lo(pcrel597)
	mv s0, a0
	jal getarray
pcrel598:
	auipc a0, %pcrel_hi(v)
	addi a0, a0, %pcrel_lo(pcrel598)
	mv s1, a0
	jal getarray
pcrel599:
	auipc a0, %pcrel_hi(a)
	addi a0, a0, %pcrel_lo(pcrel599)
	mv s3, a0
	jal getarray
	li a0, 39
	jal _sysy_starttime
pcrel600:
	auipc a0, %pcrel_hi(b)
	addi s2, a0, %pcrel_lo(pcrel600)
	mv a0, zero
	ble s4, zero, label64
	mv a1, zero
	addiw a2, zero, 4
	ble s4, a2, label45
	sh2add a1, zero, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s4, a2, label45
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s4, a2, label45
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s4, a2, label45
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s4, a2, label45
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s4, a2, label45
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s4, a2, label45
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s4, a2, label45
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s4, a2, label45
	j label556
label64:
	mv a3, zero
	ble s4, zero, label6
	addiw a2, zero, 1
	sh2add a4, zero, s5
	sh2add a1, a2, s5
	lw a4, 0(a4)
	lw a1, 0(a1)
	bge a4, a1, label30
	mv t1, a4
	addiw a5, a4, 4
	ble a1, a5, label310
	j label41
label34:
	sh2add a5, a4, s0
	sh2add t1, a4, s1
	lw a5, 0(a5)
	addiw a4, a4, 1
	sh2add a5, a5, s2
	lw t0, 0(a5)
	lw t1, 0(t1)
	mulw t1, a3, t1
	addw t0, t0, t1
	sw t0, 0(a5)
	ble a1, a4, label267
	j label34
label267:
	mv a3, a2
	ble s4, a2, label6
	addiw a2, a2, 1
	sh2add a4, a3, s5
	sh2add a1, a2, s5
	lw a4, 0(a4)
	lw a1, 0(a1)
	bge a4, a1, label30
	mv t1, a4
	addiw a5, a4, 4
	ble a1, a5, label310
	j label41
label310:
	mv a5, t1
	sh2add t0, t1, s0
	sh2add t2, t1, s1
	lw t0, 0(t0)
	addiw a5, t1, 1
	sh2add t0, t0, s2
	lw t1, 0(t0)
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	ble a1, a5, label30
	sh2add t0, a5, s0
	sh2add t2, a5, s1
	lw t0, 0(t0)
	addiw a5, a5, 1
	sh2add t0, t0, s2
	lw t1, 0(t0)
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	ble a1, a5, label30
	sh2add t0, a5, s0
	sh2add t2, a5, s1
	lw t0, 0(t0)
	addiw a5, a5, 1
	sh2add t0, t0, s2
	lw t1, 0(t0)
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	ble a1, a5, label30
	sh2add t0, a5, s0
	sh2add t2, a5, s1
	lw t0, 0(t0)
	addiw a5, a5, 1
	sh2add t0, t0, s2
	lw t1, 0(t0)
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	ble a1, a5, label30
	sh2add t0, a5, s0
	sh2add t2, a5, s1
	lw t0, 0(t0)
	addiw a5, a5, 1
	sh2add t0, t0, s2
	lw t1, 0(t0)
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	ble a1, a5, label30
	sh2add t0, a5, s0
	sh2add t2, a5, s1
	lw t0, 0(t0)
	addiw a5, a5, 1
	sh2add t0, t0, s2
	lw t1, 0(t0)
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	ble a1, a5, label30
	sh2add t0, a5, s0
	sh2add t2, a5, s1
	lw t0, 0(t0)
	addiw a5, a5, 1
	sh2add t0, t0, s2
	lw t1, 0(t0)
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	ble a1, a5, label30
	sh2add t0, a5, s0
	sh2add t2, a5, s1
	lw t0, 0(t0)
	addiw a5, a5, 1
	sh2add t0, t0, s2
	lw t1, 0(t0)
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	ble a1, a5, label30
	sh2add t0, a5, s0
	sh2add t2, a5, s1
	lw t0, 0(t0)
	addiw a5, a5, 1
	sh2add t0, t0, s2
	lw t1, 0(t0)
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	ble a1, a5, label30
	sh2add t0, a5, s0
	sh2add t2, a5, s1
	lw t0, 0(t0)
	addiw a5, a5, 1
	sh2add t0, t0, s2
	lw t1, 0(t0)
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	ble a1, a5, label30
label570:
	sh2add t0, a5, s0
	sh2add t2, a5, s1
	lw t0, 0(t0)
	addiw a5, a5, 1
	sh2add t0, t0, s2
	lw t1, 0(t0)
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	ble a1, a5, label30
	j label570
label6:
	ble s4, zero, label71
	mv a1, zero
	addiw a2, zero, 4
	ble s4, a2, label27
	sh2add a1, zero, s3
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s4, a2, label27
	sh2add a1, a1, s3
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s4, a2, label27
	sh2add a1, a1, s3
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s4, a2, label27
	sh2add a1, a1, s3
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s4, a2, label27
	sh2add a1, a1, s3
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s4, a2, label27
	sh2add a1, a1, s3
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s4, a2, label27
	sh2add a1, a1, s3
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s4, a2, label27
	sh2add a1, a1, s3
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s4, a2, label27
	j label551
label71:
	mv a3, zero
	ble s4, zero, label22
	addiw a2, zero, 1
	sh2add a4, zero, s5
	sh2add a1, a2, s5
	lw a4, 0(a4)
	lw a1, 0(a1)
	bge a4, a1, label10
	mv t1, a4
	addiw a5, a4, 4
	ble a1, a5, label157
	j label19
label551:
	sh2add a1, a1, s3
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s4, a2, label27
	j label566
label14:
	sh2add a5, a4, s0
	sh2add t1, a4, s1
	lw a5, 0(a5)
	addiw a4, a4, 1
	sh2add a5, a5, s3
	lw t0, 0(a5)
	lw t1, 0(t1)
	mulw t1, a3, t1
	addw t0, t0, t1
	sw t0, 0(a5)
	ble a1, a4, label114
	j label14
label114:
	mv a3, a2
	ble s4, a2, label22
	addiw a2, a2, 1
	sh2add a4, a3, s5
	sh2add a1, a2, s5
	lw a4, 0(a4)
	lw a1, 0(a1)
	bge a4, a1, label10
	mv t1, a4
	addiw a5, a4, 4
	ble a1, a5, label157
	j label19
label157:
	mv a5, t1
	sh2add t0, t1, s0
	sh2add t2, t1, s1
	lw t0, 0(t0)
	addiw a5, t1, 1
	sh2add t0, t0, s3
	lw t1, 0(t0)
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	ble a1, a5, label10
	sh2add t0, a5, s0
	sh2add t2, a5, s1
	lw t0, 0(t0)
	addiw a5, a5, 1
	sh2add t0, t0, s3
	lw t1, 0(t0)
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	ble a1, a5, label10
	sh2add t0, a5, s0
	sh2add t2, a5, s1
	lw t0, 0(t0)
	addiw a5, a5, 1
	sh2add t0, t0, s3
	lw t1, 0(t0)
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	ble a1, a5, label10
	sh2add t0, a5, s0
	sh2add t2, a5, s1
	lw t0, 0(t0)
	addiw a5, a5, 1
	sh2add t0, t0, s3
	lw t1, 0(t0)
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	ble a1, a5, label10
	sh2add t0, a5, s0
	sh2add t2, a5, s1
	lw t0, 0(t0)
	addiw a5, a5, 1
	sh2add t0, t0, s3
	lw t1, 0(t0)
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	ble a1, a5, label10
	sh2add t0, a5, s0
	sh2add t2, a5, s1
	lw t0, 0(t0)
	addiw a5, a5, 1
	sh2add t0, t0, s3
	lw t1, 0(t0)
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	ble a1, a5, label10
	sh2add t0, a5, s0
	sh2add t2, a5, s1
	lw t0, 0(t0)
	addiw a5, a5, 1
	sh2add t0, t0, s3
	lw t1, 0(t0)
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	ble a1, a5, label10
	sh2add t0, a5, s0
	sh2add t2, a5, s1
	lw t0, 0(t0)
	addiw a5, a5, 1
	sh2add t0, t0, s3
	lw t1, 0(t0)
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	ble a1, a5, label10
	sh2add t0, a5, s0
	sh2add t2, a5, s1
	lw t0, 0(t0)
	addiw a5, a5, 1
	sh2add t0, t0, s3
	lw t1, 0(t0)
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	ble a1, a5, label10
	sh2add t0, a5, s0
	sh2add t2, a5, s1
	lw t0, 0(t0)
	addiw a5, a5, 1
	sh2add t0, t0, s3
	lw t1, 0(t0)
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	ble a1, a5, label10
label564:
	sh2add t0, a5, s0
	sh2add t2, a5, s1
	lw t0, 0(t0)
	addiw a5, a5, 1
	sh2add t0, t0, s3
	lw t1, 0(t0)
	lw t2, 0(t2)
	addw t1, t1, t2
	sw t1, 0(t0)
	ble a1, a5, label10
	j label564
label10:
	bge a4, a1, label89
	sh2add a3, a3, s2
	mv t0, a4
	lw a3, 0(a3)
	addiw a3, a3, -1
	addiw a4, a4, 4
	ble a1, a4, label98
	j label16
label89:
	mv a3, a2
	ble s4, a2, label22
	addiw a2, a2, 1
	sh2add a4, a3, s5
	sh2add a1, a2, s5
	lw a4, 0(a4)
	lw a1, 0(a1)
	bge a4, a1, label10
	mv t1, a4
	addiw a5, a4, 4
	ble a1, a5, label157
	j label19
label16:
	sh2add a5, t0, s0
	sh2add t0, t0, s1
	lw t1, 0(a5)
	sh2add t1, t1, s3
	lw t2, 0(t1)
	lw t3, 0(t0)
	mulw t3, a3, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	lw t1, 4(a5)
	sh2add t1, t1, s3
	lw t2, 0(t1)
	lw t3, 4(t0)
	mulw t3, a3, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	lw t1, 8(a5)
	sh2add t1, t1, s3
	lw t2, 0(t1)
	lw t3, 8(t0)
	mulw t3, a3, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	lw a5, 12(a5)
	sh2add a5, a5, s3
	lw t1, 0(a5)
	lw t0, 12(t0)
	mulw t0, a3, t0
	addw t0, t1, t0
	sw t0, 0(a5)
	mv t0, a4
	addiw a4, a4, 4
	ble a1, a4, label98
	j label16
label98:
	mv a4, t0
	j label14
label22:
	addiw a0, a0, 1
	li a1, 100
	bge a0, a1, label23
	ble s4, zero, label64
	mv a1, zero
	addiw a2, zero, 4
	ble s4, a2, label45
	sh2add a1, zero, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s4, a2, label45
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s4, a2, label45
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s4, a2, label45
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s4, a2, label45
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s4, a2, label45
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s4, a2, label45
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s4, a2, label45
	j label565
label27:
	sh2add a2, a1, s3
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s4, a1, label228
	sh2add a2, a1, s3
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s4, a1, label228
	sh2add a2, a1, s3
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s4, a1, label228
	sh2add a2, a1, s3
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s4, a1, label228
	sh2add a2, a1, s3
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s4, a1, label228
	sh2add a2, a1, s3
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s4, a1, label228
	sh2add a2, a1, s3
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s4, a1, label228
	sh2add a2, a1, s3
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s4, a1, label228
	sh2add a2, a1, s3
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s4, a1, label228
	sh2add a2, a1, s3
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s4, a1, label228
	j label569
label228:
	mv a3, zero
	ble s4, zero, label22
	addiw a2, zero, 1
	sh2add a4, zero, s5
	sh2add a1, a2, s5
	lw a4, 0(a4)
	lw a1, 0(a1)
	bge a4, a1, label10
	mv t1, a4
	addiw a5, a4, 4
	ble a1, a5, label157
label19:
	sh2add t0, t1, s0
	sh2add t1, t1, s1
	lw t2, 0(t0)
	sh2add t2, t2, s3
	lw t3, 0(t2)
	lw t4, 0(t1)
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 4(t0)
	sh2add t2, t2, s3
	lw t3, 0(t2)
	lw t4, 4(t1)
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 8(t0)
	sh2add t2, t2, s3
	lw t3, 0(t2)
	lw t4, 8(t1)
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t0, 12(t0)
	sh2add t0, t0, s3
	lw t2, 0(t0)
	lw t1, 12(t1)
	addw t1, t2, t1
	sw t1, 0(t0)
	mv t1, a5
	addiw a5, a5, 4
	ble a1, a5, label157
	j label19
label41:
	sh2add t0, t1, s0
	sh2add t1, t1, s1
	lw t2, 0(t0)
	sh2add t2, t2, s2
	lw t3, 0(t2)
	lw t4, 0(t1)
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 4(t0)
	sh2add t2, t2, s2
	lw t3, 0(t2)
	lw t4, 4(t1)
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t2, 8(t0)
	sh2add t2, t2, s2
	lw t3, 0(t2)
	lw t4, 8(t1)
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t0, 12(t0)
	sh2add t0, t0, s2
	lw t2, 0(t0)
	lw t1, 12(t1)
	addw t1, t2, t1
	sw t1, 0(t0)
	mv t1, a5
	addiw a5, a5, 4
	ble a1, a5, label310
	j label41
label574:
	sh2add a2, a1, s2
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s4, a1, label376
	j label574
label376:
	mv a3, zero
	ble s4, zero, label6
	addiw a2, zero, 1
	sh2add a4, zero, s5
	sh2add a1, a2, s5
	lw a4, 0(a4)
	lw a1, 0(a1)
	bge a4, a1, label30
	mv t1, a4
	addiw a5, a4, 4
	ble a1, a5, label310
	j label41
label30:
	bge a4, a1, label242
	sh2add a3, a3, s3
	mv t0, a4
	lw a3, 0(a3)
	addiw a3, a3, -1
	addiw a4, a4, 4
	ble a1, a4, label251
	j label36
label242:
	mv a3, a2
	ble s4, a2, label6
	addiw a2, a2, 1
	sh2add a4, a3, s5
	sh2add a1, a2, s5
	lw a4, 0(a4)
	lw a1, 0(a1)
	bge a4, a1, label30
	mv t1, a4
	addiw a5, a4, 4
	ble a1, a5, label310
	j label41
label36:
	sh2add a5, t0, s0
	sh2add t0, t0, s1
	lw t1, 0(a5)
	sh2add t1, t1, s2
	lw t2, 0(t1)
	lw t3, 0(t0)
	mulw t3, a3, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	lw t1, 4(a5)
	sh2add t1, t1, s2
	lw t2, 0(t1)
	lw t3, 4(t0)
	mulw t3, a3, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	lw t1, 8(a5)
	sh2add t1, t1, s2
	lw t2, 0(t1)
	lw t3, 8(t0)
	mulw t3, a3, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	lw a5, 12(a5)
	sh2add a5, a5, s2
	lw t1, 0(a5)
	lw t0, 12(t0)
	mulw t0, a3, t0
	addw t0, t1, t0
	sw t0, 0(a5)
	mv t0, a4
	addiw a4, a4, 4
	ble a1, a4, label251
	j label36
label251:
	mv a4, t0
	j label34
label569:
	sh2add a2, a1, s3
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s4, a1, label228
	j label569
label565:
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s4, a2, label45
label556:
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s4, a2, label45
	j label571
label45:
	sh2add a2, a1, s2
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s4, a1, label376
	sh2add a2, a1, s2
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s4, a1, label376
	sh2add a2, a1, s2
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s4, a1, label376
	sh2add a2, a1, s2
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s4, a1, label376
	sh2add a2, a1, s2
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s4, a1, label376
	sh2add a2, a1, s2
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s4, a1, label376
	sh2add a2, a1, s2
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s4, a1, label376
	sh2add a2, a1, s2
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s4, a1, label376
	sh2add a2, a1, s2
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s4, a1, label376
	sh2add a2, a1, s2
	addiw a1, a1, 1
	sw zero, 0(a2)
	ble s4, a1, label376
	j label574
label566:
	sh2add a1, a1, s3
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s4, a2, label27
	j label566
label571:
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s4, a2, label45
	j label571
label23:
	li a0, 47
	jal _sysy_stoptime
	mv a0, s4
	mv a1, s2
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s2, 8(sp)
	ld s3, 16(sp)
	ld s1, 24(sp)
	ld s4, 32(sp)
	ld s0, 40(sp)
	ld s5, 48(sp)
	addi sp, sp, 56
	ret
