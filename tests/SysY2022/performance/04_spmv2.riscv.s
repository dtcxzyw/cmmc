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
pcrel503:
	auipc a1, %pcrel_hi(x)
	sd s4, 48(sp)
	addi a0, a1, %pcrel_lo(pcrel503)
	sd s5, 40(sp)
	mv s4, a0
	sd s0, 32(sp)
	sd s2, 24(sp)
	sd s3, 16(sp)
	sd s1, 8(sp)
	sd ra, 0(sp)
	jal getarray
pcrel504:
	auipc a1, %pcrel_hi(y)
	addiw s5, a0, -1
	addi a0, a1, %pcrel_lo(pcrel504)
	mv s2, a0
	jal getarray
pcrel505:
	auipc a1, %pcrel_hi(v)
	addi a0, a1, %pcrel_lo(pcrel505)
	mv s3, a0
	jal getarray
pcrel506:
	auipc a1, %pcrel_hi(a)
	addi a0, a1, %pcrel_lo(pcrel506)
	mv s1, a0
	jal getarray
	li a0, 39
	jal _sysy_starttime
	mv a0, zero
pcrel507:
	auipc a1, %pcrel_hi(b)
	addi s0, a1, %pcrel_lo(pcrel507)
label2:
	bgt s5, zero, label64
	mv a3, zero
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label28
label64:
	mv a1, zero
label4:
	addiw a2, a1, 4
	bgt s5, a2, label8
	sh2add a2, a1, s0
	addiw a1, a1, 1
	sw zero, 0(a2)
	bgt s5, a1, label6
	mv a3, zero
	bgt s5, zero, label34
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label28
label8:
	sh2add a3, a1, s0
	mv a1, a2
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	j label4
label34:
	addiw a2, a3, 1
	sh2add a5, a3, s4
	sh2add a1, a2, s4
	lw a4, 0(a5)
	lw a1, 0(a1)
	blt a4, a1, label256
	mv a3, a2
	bgt s5, a2, label34
	bgt s5, zero, label88
	mv a3, zero
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label28
label256:
	mv t1, a4
	addiw a5, a4, 4
	bgt a1, a5, label46
	sh2add t0, a4, s2
	sh2add t3, a4, s3
	lw t2, 0(t0)
	addiw t1, a4, 1
	sh2add a5, t2, s0
	lw t0, 0(a5)
	lw t2, 0(t3)
	addw t0, t0, t2
	sw t0, 0(a5)
	bgt a1, t1, label44
	blt a4, a1, label36
	mv a3, a2
	bgt s5, a2, label34
	bgt s5, zero, label88
	mv a3, zero
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label28
label37:
	addiw a4, t0, 4
	bgt a1, a4, label41
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
	bgt a1, t0, label39
	mv a3, a2
	bgt s5, a2, label34
	bgt s5, zero, label88
	mv a3, zero
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label28
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
	lw t3, 4(t0)
	mulw t4, a3, t3
	addw t2, t2, t4
	sw t2, 0(t1)
	lw t3, 8(a5)
	sh2add t1, t3, s0
	lw t2, 0(t1)
	lw t5, 8(t0)
	mulw t3, a3, t5
	addw t4, t2, t3
	sw t4, 0(t1)
	lw t2, 12(a5)
	sh2add a5, t2, s0
	lw t1, 0(a5)
	lw t2, 12(t0)
	mulw t0, a3, t2
	addw t1, t1, t0
	mv t0, a4
	sw t1, 0(a5)
	j label37
label36:
	sh2add a5, a3, s1
	mv t0, a4
	lw t1, 0(a5)
	addi a3, t1, -1
	j label37
label14:
	addiw a2, a3, 1
	sh2add a5, a3, s4
	sh2add a1, a2, s4
	lw a4, 0(a5)
	lw a1, 0(a1)
	blt a4, a1, label103
	mv a3, a2
	bgt s5, a2, label14
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label28
label103:
	mv t1, a4
	addiw a5, a4, 4
	bgt a1, a5, label24
	sh2add t0, a4, s2
	lw t2, 0(t0)
	sh2add a5, t2, s1
	sh2add t2, a4, s3
	addiw t1, a4, 1
	lw t0, 0(a5)
	lw t3, 0(t2)
	addw t0, t0, t3
	sw t0, 0(a5)
	bgt a1, t1, label25
	blt a4, a1, label16
	mv a3, a2
	bgt s5, a2, label14
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label28
label16:
	sh2add a5, a3, s0
	mv t0, a4
	lw t1, 0(a5)
	addi a3, t1, -1
label17:
	addiw a4, t0, 4
	ble a1, a4, label20
	sh2add a5, t0, s2
	sh2add t0, t0, s3
	lw t3, 0(a5)
	sh2add t1, t3, s1
	lw t2, 0(t1)
	lw t4, 0(t0)
	mulw t3, a3, t4
	addw t2, t2, t3
	sw t2, 0(t1)
	lw t3, 4(a5)
	sh2add t1, t3, s1
	lw t2, 0(t1)
	lw t4, 4(t0)
	mulw t3, a3, t4
	addw t2, t2, t3
	sw t2, 0(t1)
	lw t3, 8(a5)
	sh2add t1, t3, s1
	lw t2, 0(t1)
	lw t3, 8(t0)
	mulw t4, a3, t3
	addw t2, t2, t4
	sw t2, 0(t1)
	lw t3, 12(a5)
	sh2add a5, t3, s1
	lw t1, 0(a5)
	lw t2, 12(t0)
	mulw t0, a3, t2
	addw t1, t1, t0
	mv t0, a4
	sw t1, 0(a5)
	j label17
label20:
	sh2add a5, t0, s2
	sh2add t2, t0, s3
	lw t1, 0(a5)
	addiw t0, t0, 1
	sh2add a4, t1, s1
	lw a5, 0(a4)
	lw t1, 0(t2)
	mulw t3, a3, t1
	addw a5, a5, t3
	sw a5, 0(a4)
	bgt a1, t0, label20
	mv a3, a2
	bgt s5, a2, label14
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label28
label25:
	sh2add t0, t1, s2
	lw t2, 0(t0)
	sh2add a5, t2, s1
	sh2add t2, t1, s3
	addiw t1, t1, 1
	lw t0, 0(a5)
	lw t3, 0(t2)
	addw t0, t0, t3
	sw t0, 0(a5)
	bgt a1, t1, label25
	blt a4, a1, label16
	mv a3, a2
	bgt s5, a2, label14
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label28
label88:
	mv a1, zero
	li a2, 4
	bgt s5, a2, label33
	mv a2, s1
	li a1, 1
	sw zero, 0(s1)
	bgt s5, a1, label31
	mv a3, zero
	bgt s5, zero, label14
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label28
label29:
	addiw a2, a1, 4
	bgt s5, a2, label33
	sh2add a2, a1, s1
	addiw a1, a1, 1
	sw zero, 0(a2)
	bgt s5, a1, label31
	mv a3, zero
	bgt s5, zero, label14
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label28
label33:
	sh2add a3, a1, s1
	mv a1, a2
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	j label29
label42:
	addiw a5, t1, 4
	bgt a1, a5, label46
	sh2add t0, t1, s2
	sh2add t3, t1, s3
	lw t2, 0(t0)
	addiw t1, t1, 1
	sh2add a5, t2, s0
	lw t0, 0(a5)
	lw t2, 0(t3)
	addw t0, t0, t2
	sw t0, 0(a5)
	bgt a1, t1, label44
	blt a4, a1, label36
	mv a3, a2
	bgt s5, a2, label34
	bgt s5, zero, label88
	mv a3, zero
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label28
label44:
	sh2add t0, t1, s2
	sh2add t3, t1, s3
	lw t2, 0(t0)
	addiw t1, t1, 1
	sh2add a5, t2, s0
	lw t0, 0(a5)
	lw t2, 0(t3)
	addw t0, t0, t2
	sw t0, 0(a5)
	bgt a1, t1, label44
	blt a4, a1, label36
	mv a3, a2
	bgt s5, a2, label34
	bgt s5, zero, label88
	mv a3, zero
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label28
label46:
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
	j label42
label22:
	addiw a5, t1, 4
	bgt a1, a5, label24
	sh2add t0, t1, s2
	lw t2, 0(t0)
	sh2add a5, t2, s1
	sh2add t2, t1, s3
	addiw t1, t1, 1
	lw t0, 0(a5)
	lw t3, 0(t2)
	addw t0, t0, t3
	sw t0, 0(a5)
	bgt a1, t1, label25
	blt a4, a1, label16
	mv a3, a2
	bgt s5, a2, label14
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label28
label24:
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
	j label22
label6:
	sh2add a2, a1, s0
	addiw a1, a1, 1
	sw zero, 0(a2)
	bgt s5, a1, label6
	mv a3, zero
	bgt s5, zero, label34
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
label28:
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
label31:
	sh2add a2, a1, s1
	addiw a1, a1, 1
	sw zero, 0(a2)
	bgt s5, a1, label31
	mv a3, zero
	bgt s5, zero, label14
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label28
