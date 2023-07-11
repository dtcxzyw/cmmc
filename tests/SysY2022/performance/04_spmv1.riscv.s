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
pcrel509:
	auipc a1, %pcrel_hi(x)
	sd s4, 48(sp)
	addi a0, a1, %pcrel_lo(pcrel509)
	sd s5, 40(sp)
	mv s4, a0
	sd s0, 32(sp)
	sd s2, 24(sp)
	sd s3, 16(sp)
	sd s1, 8(sp)
	sd ra, 0(sp)
	jal getarray
pcrel510:
	auipc a1, %pcrel_hi(y)
	addiw s5, a0, -1
	addi a0, a1, %pcrel_lo(pcrel510)
	mv s2, a0
	jal getarray
pcrel511:
	auipc a1, %pcrel_hi(v)
	addi a0, a1, %pcrel_lo(pcrel511)
	mv s3, a0
	jal getarray
pcrel512:
	auipc a1, %pcrel_hi(a)
	addi a0, a1, %pcrel_lo(pcrel512)
	mv s1, a0
	jal getarray
	li a0, 39
	jal _sysy_starttime
	mv a0, zero
pcrel513:
	auipc a1, %pcrel_hi(b)
	addi s0, a1, %pcrel_lo(pcrel513)
	ble s5, zero, label64
	mv a2, zero
	addiw a1, zero, 4
	ble s5, a1, label44
	sh2add a2, zero, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label44
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label44
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label44
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label44
	j label495
label64:
	mv a3, zero
	ble s5, zero, label6
	addiw a2, zero, 1
	sh2add a5, zero, s4
	sh2add a1, a2, s4
	lw a4, 0(a5)
	lw a1, 0(a1)
	bge a4, a1, label35
	mv t1, a4
	addiw a5, a4, 4
	ble a1, a5, label33
label32:
	sh2add t0, t1, s2
	sh2add t1, t1, s3
	lw t4, 0(t0)
	sh2add t2, t4, s0
	lw t3, 0(t2)
	lw t4, 0(t1)
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t4, 4(t0)
	sh2add t2, t4, s0
	lw t3, 0(t2)
	lw t4, 4(t1)
	addw t5, t3, t4
	sw t5, 0(t2)
	lw t4, 8(t0)
	sh2add t2, t4, s0
	lw t3, 0(t2)
	lw t4, 8(t1)
	addw t5, t3, t4
	sw t5, 0(t2)
	lw t3, 12(t0)
	sh2add t0, t3, s0
	lw t2, 0(t0)
	lw t1, 12(t1)
	addw t3, t2, t1
	mv t1, a5
	sw t3, 0(t0)
	addiw a5, a5, 4
	ble a1, a5, label33
	j label32
label6:
	ble s5, zero, label71
	mv a2, zero
	addiw a1, zero, 4
	ble s5, a1, label27
	sh2add a2, zero, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label27
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label27
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label27
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label27
	j label496
label71:
	mv a3, zero
	ble s5, zero, label22
	addiw a2, zero, 1
	sh2add a5, zero, s4
	sh2add a1, a2, s4
	lw a4, 0(a5)
	lw a1, 0(a1)
	bge a4, a1, label15
	mv t1, a4
	addiw a5, a4, 4
	ble a1, a5, label13
	j label12
label35:
	bge a4, a1, label296
	sh2add a5, a3, s1
	mv t0, a4
	lw t1, 0(a5)
	addiw a3, t1, -1
	addiw a4, a4, 4
	ble a1, a4, label39
	j label41
label296:
	mv a3, a2
	ble s5, a2, label6
	addiw a2, a2, 1
	sh2add a5, a3, s4
	sh2add a1, a2, s4
	lw a4, 0(a5)
	lw a1, 0(a1)
	bge a4, a1, label35
	mv t1, a4
	addiw a5, a4, 4
	ble a1, a5, label33
	j label32
label41:
	sh2add a5, t0, s2
	sh2add t0, t0, s3
	lw t3, 0(a5)
	sh2add t1, t3, s0
	lw t2, 0(t1)
	lw t3, 0(t0)
	mulw t4, a3, t3
	addw t2, t2, t4
	sw t2, 0(t1)
	lw t3, 4(a5)
	sh2add t1, t3, s0
	lw t2, 0(t1)
	lw t4, 4(t0)
	mulw t3, a3, t4
	addw t2, t2, t3
	sw t2, 0(t1)
	lw t3, 8(a5)
	sh2add t1, t3, s0
	lw t2, 0(t1)
	lw t4, 8(t0)
	mulw t3, a3, t4
	addw t5, t2, t3
	sw t5, 0(t1)
	lw t2, 12(a5)
	sh2add a5, t2, s0
	lw t1, 0(a5)
	lw t0, 12(t0)
	mulw t2, a3, t0
	mv t0, a4
	addw t1, t1, t2
	sw t1, 0(a5)
	addiw a4, a4, 4
	ble a1, a4, label39
	j label41
label44:
	sh2add a1, a2, s0
	addiw a2, a2, 1
	sw zero, 0(a1)
	ble s5, a2, label371
	j label44
label371:
	mv a3, zero
	ble s5, zero, label6
	addiw a2, zero, 1
	sh2add a5, zero, s4
	sh2add a1, a2, s4
	lw a4, 0(a5)
	lw a1, 0(a1)
	bge a4, a1, label35
	mv t1, a4
	addiw a5, a4, 4
	ble a1, a5, label33
	j label32
label39:
	sh2add a5, t0, s2
	sh2add t2, t0, s3
	lw t1, 0(a5)
	addiw t0, t0, 1
	sh2add a4, t1, s0
	lw a5, 0(a4)
	lw t3, 0(t2)
	mulw t1, a3, t3
	addw a5, a5, t1
	sw a5, 0(a4)
	ble a1, t0, label321
	j label39
label321:
	mv a3, a2
	ble s5, a2, label6
	addiw a2, a2, 1
	sh2add a5, a3, s4
	sh2add a1, a2, s4
	lw a4, 0(a5)
	lw a1, 0(a1)
	bge a4, a1, label35
	mv t1, a4
	addiw a5, a4, 4
	ble a1, a5, label33
	j label32
label12:
	sh2add t0, t1, s2
	sh2add t1, t1, s3
	lw t4, 0(t0)
	sh2add t2, t4, s1
	lw t3, 0(t2)
	lw t4, 0(t1)
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t4, 4(t0)
	sh2add t2, t4, s1
	lw t3, 0(t2)
	lw t4, 4(t1)
	addw t5, t3, t4
	sw t5, 0(t2)
	lw t4, 8(t0)
	sh2add t2, t4, s1
	lw t3, 0(t2)
	lw t5, 8(t1)
	addw t4, t3, t5
	sw t4, 0(t2)
	lw t3, 12(t0)
	sh2add t0, t3, s1
	lw t2, 0(t0)
	lw t1, 12(t1)
	addw t3, t2, t1
	mv t1, a5
	sw t3, 0(t0)
	addiw a5, a5, 4
	ble a1, a5, label13
	j label12
label15:
	bge a4, a1, label143
	sh2add t0, a3, s0
	lw a5, 0(t0)
	mv t0, a4
	addiw a3, a5, -1
	addiw a4, a4, 4
	ble a1, a4, label19
	j label21
label143:
	mv a3, a2
	ble s5, a2, label22
	addiw a2, a2, 1
	sh2add a5, a3, s4
	sh2add a1, a2, s4
	lw a4, 0(a5)
	lw a1, 0(a1)
	bge a4, a1, label15
	mv t1, a4
	addiw a5, a4, 4
	ble a1, a5, label13
	j label12
label21:
	sh2add a5, t0, s2
	sh2add t0, t0, s3
	lw t3, 0(a5)
	sh2add t1, t3, s1
	lw t2, 0(t1)
	lw t3, 0(t0)
	mulw t4, a3, t3
	addw t2, t2, t4
	sw t2, 0(t1)
	lw t3, 4(a5)
	sh2add t1, t3, s1
	lw t2, 0(t1)
	lw t3, 4(t0)
	mulw t4, a3, t3
	addw t2, t2, t4
	sw t2, 0(t1)
	lw t3, 8(a5)
	sh2add t1, t3, s1
	lw t2, 0(t1)
	lw t5, 8(t0)
	mulw t3, a3, t5
	addw t4, t2, t3
	sw t4, 0(t1)
	lw t2, 12(a5)
	sh2add a5, t2, s1
	lw t1, 0(a5)
	lw t0, 12(t0)
	mulw t2, a3, t0
	mv t0, a4
	addw t1, t1, t2
	sw t1, 0(a5)
	addiw a4, a4, 4
	ble a1, a4, label19
	j label21
label22:
	addiw a0, a0, 1
	li a1, 100
	bge a0, a1, label23
	ble s5, zero, label64
	mv a2, zero
	addiw a1, zero, 4
	ble s5, a1, label44
	sh2add a2, zero, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label44
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label44
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label44
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label44
	j label495
label19:
	sh2add a5, t0, s2
	sh2add t3, t0, s3
	lw t1, 0(a5)
	addiw t0, t0, 1
	sh2add a4, t1, s1
	lw a5, 0(a4)
	lw t2, 0(t3)
	mulw t1, a3, t2
	addw a5, a5, t1
	sw a5, 0(a4)
	ble a1, t0, label168
	j label19
label168:
	mv a3, a2
	ble s5, a2, label22
	addiw a2, a2, 1
	sh2add a5, a3, s4
	sh2add a1, a2, s4
	lw a4, 0(a5)
	lw a1, 0(a1)
	bge a4, a1, label15
	mv t1, a4
	addiw a5, a4, 4
	ble a1, a5, label13
	j label12
label33:
	sh2add t0, t1, s2
	sh2add t3, t1, s3
	lw t2, 0(t0)
	addiw t1, t1, 1
	sh2add a5, t2, s0
	lw t0, 0(a5)
	lw t2, 0(t3)
	addw t0, t0, t2
	sw t0, 0(a5)
	ble a1, t1, label35
	j label33
label13:
	sh2add t0, t1, s2
	sh2add t3, t1, s3
	lw t2, 0(t0)
	addiw t1, t1, 1
	sh2add a5, t2, s1
	lw t0, 0(a5)
	lw t2, 0(t3)
	addw t0, t0, t2
	sw t0, 0(a5)
	ble a1, t1, label15
	j label13
label495:
	sh2add a2, a2, s0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label44
	j label495
label496:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s5, a1, label27
	j label496
label27:
	sh2add a1, a2, s1
	addiw a2, a2, 1
	sw zero, 0(a1)
	ble s5, a2, label228
	j label27
label228:
	mv a3, zero
	ble s5, zero, label22
	addiw a2, zero, 1
	sh2add a5, zero, s4
	sh2add a1, a2, s4
	lw a4, 0(a5)
	lw a1, 0(a1)
	bge a4, a1, label15
	mv t1, a4
	addiw a5, a4, 4
	ble a1, a5, label13
	j label12
label23:
	li a0, 47
	jal _sysy_stoptime
	mv a0, s5
	mv a1, s0
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s0, 32(sp)
	ld s5, 40(sp)
	ld s4, 48(sp)
	addi sp, sp, 56
	ret
