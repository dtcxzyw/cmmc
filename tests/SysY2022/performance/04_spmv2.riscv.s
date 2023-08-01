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
	addi sp, sp, -72
pcrel511:
	auipc a1, %pcrel_hi(x)
	sd ra, 0(sp)
	sd s4, 8(sp)
	addi s4, a1, %pcrel_lo(pcrel511)
	sd s5, 16(sp)
	sd s0, 24(sp)
	sd s6, 32(sp)
	sd s1, 40(sp)
	sd s2, 48(sp)
	sd s3, 56(sp)
	sd s7, 64(sp)
	mv a0, s4
	jal getarray
pcrel512:
	auipc a1, %pcrel_hi(y)
	addiw s6, a0, -5
	addiw s5, a0, -1
	addi s2, a1, %pcrel_lo(pcrel512)
	mv a0, s2
	jal getarray
pcrel513:
	auipc a1, %pcrel_hi(v)
	addi s3, a1, %pcrel_lo(pcrel513)
	mv a0, s3
	jal getarray
pcrel514:
	auipc a1, %pcrel_hi(a)
	addi s0, a1, %pcrel_lo(pcrel514)
	mv a0, s0
	jal getarray
	li a0, 39
	jal _sysy_starttime
	li a0, 4
	mv a2, zero
pcrel515:
	auipc a1, %pcrel_hi(b)
	addi s1, a1, %pcrel_lo(pcrel515)
	li a1, 100
.p2align 2
label2:
	ble s5, zero, label63
	bgt s5, a0, label67
	j label66
label20:
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
	ld s6, 32(sp)
	ld s1, 40(sp)
	ld s2, 48(sp)
	ld s3, 56(sp)
	ld s7, 64(sp)
	addi sp, sp, 72
	ret
.p2align 2
label475:
	addiw a2, a2, 1
	blt a2, a1, label2
	j label20
.p2align 2
label67:
	mv a3, zero
	mv a4, s1
	li a3, 4
	sd zero, 0(s1)
	sd zero, 8(s1)
	bgt s6, a3, label7
	j label463
.p2align 2
label5:
	sh2add a4, a3, s1
	addiw a3, a3, 1
	sw zero, 0(a4)
	bgt s5, a3, label5
.p2align 2
label73:
	mv t0, zero
	bgt s5, zero, label33
	j label11
.p2align 2
label7:
	sh2add a4, a3, s1
	addiw a3, a3, 4
	sd zero, 0(a4)
	sd zero, 8(a4)
	bgt s6, a3, label7
	sh2add a4, a3, s1
	addiw a3, a3, 1
	sw zero, 0(a4)
	bgt s5, a3, label5
.p2align 2
label465:
	mv t0, zero
	bgt s5, zero, label33
label11:
	bgt s5, zero, label12
	j label90
.p2align 2
label33:
	addiw a3, t0, 1
	sh2add a5, t0, s4
	sh2add a4, a3, s4
	lw t1, 0(a5)
	addi t2, t1, 4
	lw a4, 0(a4)
	addi a5, a4, -4
	blt t1, a4, label40
	j label34
.p2align 2
label35:
	sh2add t4, t0, s0
	lw t3, 0(t4)
	addi t0, t3, -1
	bgt a4, t2, label38
.p2align 2
label36:
	sh2add t2, t1, s2
	lw t3, 0(t2)
	sh2add a5, t3, s1
	sh2add t3, t1, s3
	addiw t1, t1, 1
	lw t2, 0(a5)
	lw t4, 0(t3)
	mulw t5, t0, t4
	addw t2, t2, t5
	sw t2, 0(a5)
	bgt a4, t1, label36
	mv t0, a3
	bgt s5, a3, label33
	j label477
.p2align 2
label38:
	sh2add t2, t1, s2
	lw t3, 0(t2)
	sh2add t4, t3, s1
	sh2add t3, t1, s3
	addiw t1, t1, 4
	lw t5, 0(t4)
	lw t6, 0(t3)
	mulw a6, t0, t6
	addw t5, t5, a6
	sw t5, 0(t4)
	lw t6, 4(t2)
	sh2add t4, t6, s1
	lw t5, 0(t4)
	lw a6, 4(t3)
	mulw t6, t0, a6
	addw t5, t5, t6
	sw t5, 0(t4)
	lw t6, 8(t2)
	sh2add t4, t6, s1
	lw t5, 0(t4)
	lw a6, 8(t3)
	mulw t6, t0, a6
	addw t5, t5, t6
	sw t5, 0(t4)
	lw t6, 12(t2)
	sh2add t2, t6, s1
	lw t4, 0(t2)
	lw t5, 12(t3)
	mulw t6, t0, t5
	addw t3, t4, t6
	sw t3, 0(t2)
	bgt a5, t1, label38
	j label36
.p2align 2
label40:
	ble a4, t2, label345
	mv t3, t1
.p2align 2
label41:
	sh2add t4, t3, s2
	lw t5, 0(t4)
	sh2add t6, t5, s1
	sh2add t5, t3, s3
	addiw t3, t3, 4
	lw a6, 0(t6)
	lw a7, 0(t5)
	addw a6, a6, a7
	sw a6, 0(t6)
	lw a7, 4(t4)
	sh2add t6, a7, s1
	lw a6, 0(t6)
	lw a7, 4(t5)
	addw a6, a6, a7
	sw a6, 0(t6)
	lw a7, 8(t4)
	sh2add t6, a7, s1
	lw a6, 0(t6)
	lw s7, 8(t5)
	addw a7, a6, s7
	sw a7, 0(t6)
	lw a6, 12(t4)
	sh2add t4, a6, s1
	lw t6, 0(t4)
	lw t5, 12(t5)
	addw a6, t6, t5
	sw a6, 0(t4)
	bgt a5, t3, label41
.p2align 2
label43:
	sh2add t5, t3, s2
	sh2add a6, t3, s3
	lw t6, 0(t5)
	addiw t3, t3, 1
	sh2add t4, t6, s1
	lw t5, 0(t4)
	lw t6, 0(a6)
	addw t5, t5, t6
	sw t5, 0(t4)
	bgt a4, t3, label43
	blt t1, a4, label35
.p2align 2
label479:
	mv t0, a3
	bgt s5, a3, label33
	j label11
.p2align 2
label34:
	blt t1, a4, label35
	mv t0, a3
	bgt s5, a3, label33
	j label11
label90:
	mv t0, zero
	j label17
.p2align 2
label12:
	bgt s5, a0, label94
	j label93
label17:
	bgt s5, t0, label21
	j label19
.p2align 2
label477:
	bgt s5, zero, label12
	j label90
.p2align 2
label21:
	addiw a3, t0, 1
	sh2add a5, t0, s4
	sh2add a4, a3, s4
	lw t1, 0(a5)
	addi t2, t1, 4
	lw a4, 0(a4)
	addi a5, a4, -4
	bge t1, a4, label133
	ble a4, t2, label136
	mv t3, t1
	j label25
.p2align 2
label23:
	sh2add t5, t3, s2
	sh2add a6, t3, s3
	lw t6, 0(t5)
	addiw t3, t3, 1
	sh2add t4, t6, s0
	lw t5, 0(t4)
	lw t6, 0(a6)
	addw t5, t5, t6
	sw t5, 0(t4)
	bgt a4, t3, label23
	blt t1, a4, label28
	j label472
.p2align 2
label25:
	sh2add t4, t3, s2
	lw t5, 0(t4)
	sh2add t6, t5, s0
	sh2add t5, t3, s3
	addiw t3, t3, 4
	lw a6, 0(t6)
	lw a7, 0(t5)
	addw a6, a6, a7
	sw a6, 0(t6)
	lw a7, 4(t4)
	sh2add t6, a7, s0
	lw a6, 0(t6)
	lw a7, 4(t5)
	addw a6, a6, a7
	sw a6, 0(t6)
	lw a7, 8(t4)
	sh2add t6, a7, s0
	lw a6, 0(t6)
	lw a7, 8(t5)
	addw a6, a6, a7
	sw a6, 0(t6)
	lw a6, 12(t4)
	sh2add t4, a6, s0
	lw t6, 0(t4)
	lw t5, 12(t5)
	addw a6, t6, t5
	sw a6, 0(t4)
	bgt a5, t3, label25
	sh2add t5, t3, s2
	sh2add a6, t3, s3
	lw t6, 0(t5)
	addiw t3, t3, 1
	sh2add t4, t6, s0
	lw t5, 0(t4)
	lw t6, 0(a6)
	addw t5, t5, t6
	sw t5, 0(t4)
	bgt a4, t3, label23
	j label473
.p2align 2
label28:
	sh2add t3, t0, s1
	lw t4, 0(t3)
	addi t0, t4, -1
	bgt a4, t2, label31
.p2align 2
label29:
	sh2add t2, t1, s2
	sh2add t5, t1, s3
	lw t3, 0(t2)
	addiw t1, t1, 1
	sh2add a5, t3, s0
	lw t2, 0(a5)
	lw t4, 0(t5)
	mulw t3, t0, t4
	addw t2, t2, t3
	sw t2, 0(a5)
	bgt a4, t1, label29
	mv t0, a3
	bgt s5, a3, label21
	j label475
.p2align 2
label31:
	sh2add t2, t1, s2
	lw t3, 0(t2)
	sh2add t4, t3, s0
	sh2add t3, t1, s3
	addiw t1, t1, 4
	lw t5, 0(t4)
	lw t6, 0(t3)
	mulw a6, t0, t6
	addw t5, t5, a6
	sw t5, 0(t4)
	lw t6, 4(t2)
	sh2add t4, t6, s0
	lw t5, 0(t4)
	lw t6, 4(t3)
	mulw a6, t0, t6
	addw t5, t5, a6
	sw t5, 0(t4)
	lw t6, 8(t2)
	sh2add t4, t6, s0
	lw t5, 0(t4)
	lw a6, 8(t3)
	mulw t6, t0, a6
	addw a7, t5, t6
	sw a7, 0(t4)
	lw t5, 12(t2)
	sh2add t2, t5, s0
	lw t4, 0(t2)
	lw t5, 12(t3)
	mulw t3, t0, t5
	addw t4, t4, t3
	sw t4, 0(t2)
	bgt a5, t1, label31
	j label29
.p2align 2
label136:
	mv t3, t1
	sh2add t5, t1, s2
	sh2add a6, t1, s3
	lw t6, 0(t5)
	addiw t3, t1, 1
	sh2add t4, t6, s0
	lw t5, 0(t4)
	lw t6, 0(a6)
	addw t5, t5, t6
	sw t5, 0(t4)
	bgt a4, t3, label23
	blt t1, a4, label28
.p2align 2
label472:
	mv t0, a3
	bgt s5, a3, label21
	j label19
.p2align 2
label345:
	mv t3, t1
	sh2add t5, t1, s2
	sh2add a6, t1, s3
	lw t6, 0(t5)
	addiw t3, t1, 1
	sh2add t4, t6, s1
	lw t5, 0(t4)
	lw t6, 0(a6)
	addw t5, t5, t6
	sw t5, 0(t4)
	bgt a4, t3, label43
	blt t1, a4, label35
	j label479
.p2align 2
label94:
	mv a3, zero
	mv a4, s0
	li a3, 4
	sd zero, 0(s0)
	sd zero, 8(s0)
	bgt s6, a3, label15
	j label467
.p2align 2
label13:
	sh2add a4, a3, s0
	addiw a3, a3, 1
	sw zero, 0(a4)
	bgt s5, a3, label13
.p2align 2
label100:
	mv t0, zero
	bgt s5, zero, label21
	j label19
.p2align 2
label15:
	sh2add a4, a3, s0
	addiw a3, a3, 4
	sd zero, 0(a4)
	sd zero, 8(a4)
	bgt s6, a3, label15
	sh2add a4, a3, s0
	addiw a3, a3, 1
	sw zero, 0(a4)
	bgt s5, a3, label13
.p2align 2
label469:
	mv t0, zero
	bgt s5, zero, label21
	j label19
.p2align 2
label473:
	blt t1, a4, label28
	mv t0, a3
	bgt s5, a3, label21
	j label19
label63:
	mv t0, zero
	bgt s5, zero, label33
	j label11
.p2align 2
label133:
	blt t1, a4, label28
	mv t0, a3
	bgt s5, a3, label21
	j label19
.p2align 2
label93:
	mv a3, zero
	mv a4, s0
	li a3, 1
	sw zero, 0(s0)
	bgt s5, a3, label13
	j label100
.p2align 2
label66:
	mv a3, zero
	mv a4, s1
	li a3, 1
	sw zero, 0(s1)
	bgt s5, a3, label5
	j label73
.p2align 2
label467:
	sh2add a4, a3, s0
	addiw a3, a3, 1
	sw zero, 0(a4)
	bgt s5, a3, label13
	j label469
.p2align 2
label463:
	sh2add a4, a3, s1
	addiw a3, a3, 1
	sw zero, 0(a4)
	bgt s5, a3, label5
	j label465
label19:
	addiw a2, a2, 1
	blt a2, a1, label2
	j label20
