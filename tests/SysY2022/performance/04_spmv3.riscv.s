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
	addi sp, sp, -88
pcrel597:
	auipc a1, %pcrel_hi(x)
	sd ra, 0(sp)
	sd s4, 8(sp)
	addi s4, a1, %pcrel_lo(pcrel597)
	sd s1, 16(sp)
	sd s6, 24(sp)
	sd s2, 32(sp)
	sd s3, 40(sp)
	sd s0, 48(sp)
	sd s5, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	mv a0, s4
	jal getarray
pcrel598:
	auipc a1, %pcrel_hi(y)
	mv s1, a0
	addi s2, a1, %pcrel_lo(pcrel598)
	mv a0, s2
	jal getarray
pcrel599:
	auipc a1, %pcrel_hi(v)
	addi s3, a1, %pcrel_lo(pcrel599)
	mv a0, s3
	jal getarray
pcrel600:
	auipc a1, %pcrel_hi(a)
	addi s0, a1, %pcrel_lo(pcrel600)
	mv a0, s0
	jal getarray
	li a0, 39
	jal _sysy_starttime
	li a3, 16
	li a4, 100
pcrel601:
	auipc a2, %pcrel_hi(b)
	addiw a0, s1, -21
	addiw a1, s1, -5
	mv a5, zero
	addiw s5, s1, -1
	addi s1, a2, %pcrel_lo(pcrel601)
	li a2, 4
.p2align 2
label2:
	bgt s5, zero, label41
	j label69
.p2align 2
label9:
	addiw t0, t3, 1
	sh2add t2, t3, s4
	sh2add t1, t0, s4
	lw t4, 0(t2)
	lw t1, 0(t1)
	bge t4, t1, label91
	addiw t5, t4, 4
	addiw t2, t1, -4
	ble t1, t5, label97
	mv t6, t4
.p2align 2
label11:
	sh2add a6, t6, s2
	lw a7, 0(a6)
	sh2add s6, a7, s0
	sh2add a7, t6, s3
	addiw t6, t6, 4
	lw s7, 0(s6)
	lw s8, 0(a7)
	addw s7, s7, s8
	sw s7, 0(s6)
	lw s8, 4(a6)
	sh2add s6, s8, s0
	lw s7, 0(s6)
	lw s9, 4(a7)
	addw s8, s7, s9
	sw s8, 0(s6)
	lw s9, 8(a6)
	sh2add s6, s9, s0
	lw s7, 0(s6)
	lw s9, 8(a7)
	addw s8, s7, s9
	sw s8, 0(s6)
	lw s7, 12(a6)
	sh2add a6, s7, s0
	lw s6, 0(a6)
	lw s7, 12(a7)
	addw a7, s6, s7
	sw a7, 0(a6)
	bgt t2, t6, label11
.p2align 2
label13:
	sh2add a6, t6, s2
	sh2add s7, t6, s3
	lw a7, 0(a6)
	addiw t6, t6, 1
	sh2add a6, a7, s0
	lw a7, 0(a6)
	lw s6, 0(s7)
	addw a7, a7, s6
	sw a7, 0(a6)
	bgt t1, t6, label13
	sh2add a6, t3, s1
	lw t6, 0(a6)
	addi t3, t6, -1
	ble t1, t5, label18
.p2align 2
label16:
	sh2add t5, t4, s2
	lw t6, 0(t5)
	sh2add a6, t6, s0
	sh2add t6, t4, s3
	addiw t4, t4, 4
	lw a7, 0(a6)
	lw s7, 0(t6)
	mulw s6, t3, s7
	addw a7, a7, s6
	sw a7, 0(a6)
	lw a7, 4(t5)
	sh2add a6, a7, s0
	lw a7, 0(a6)
	lw s7, 4(t6)
	mulw s6, t3, s7
	addw a7, a7, s6
	sw a7, 0(a6)
	lw a7, 8(t5)
	sh2add a6, a7, s0
	lw a7, 0(a6)
	lw s6, 8(t6)
	mulw s7, t3, s6
	addw a7, a7, s7
	sw a7, 0(a6)
	lw a6, 12(t5)
	sh2add t5, a6, s0
	lw a6, 0(t5)
	lw a7, 12(t6)
	mulw t6, t3, a7
	addw a6, a6, t6
	sw a6, 0(t5)
	bgt t2, t4, label16
.p2align 2
label18:
	sh2add t5, t4, s2
	sh2add a6, t4, s3
	lw t6, 0(t5)
	addiw t4, t4, 1
	sh2add t2, t6, s0
	lw t5, 0(t2)
	lw a7, 0(a6)
	mulw t6, t3, a7
	addw t5, t5, t6
	sw t5, 0(t2)
	bgt t1, t4, label18
	mv t3, t0
	bgt s5, t0, label9
	addiw a5, a5, 1
	blt a5, a4, label2
	j label21
.p2align 2
label41:
	ble s5, a2, label407
	ble a1, a3, label410
	mv t0, zero
	j label45
.p2align 2
label43:
	sh2add t1, t0, s1
	addiw t0, t0, 4
	sw zero, 0(t1)
	sw zero, 4(t1)
	sw zero, 8(t1)
	sw zero, 12(t1)
	bgt a1, t0, label43
.p2align 2
label420:
	sh2add t1, t0, s1
	addiw t0, t0, 1
	sw zero, 0(t1)
	bgt s5, t0, label47
	j label567
.p2align 2
label45:
	sh2add t1, t0, s1
	addiw t0, t0, 16
	sd zero, 0(t1)
	sd zero, 8(t1)
	sd zero, 16(t1)
	sd zero, 24(t1)
	sd zero, 32(t1)
	sd zero, 40(t1)
	sd zero, 48(t1)
	sd zero, 56(t1)
	bgt a0, t0, label45
	sh2add t1, t0, s1
	addiw t0, t0, 4
	sw zero, 0(t1)
	sw zero, 4(t1)
	sw zero, 8(t1)
	sw zero, 12(t1)
	bgt a1, t0, label43
	sh2add t1, t0, s1
	addiw t0, t0, 1
	sw zero, 0(t1)
	ble s5, t0, label576
.p2align 2
label47:
	sh2add t1, t0, s1
	addiw t0, t0, 1
	sw zero, 0(t1)
	bgt s5, t0, label47
.p2align 2
label449:
	mv t3, zero
	ble s5, zero, label6
.p2align 2
label30:
	addiw t0, t3, 1
	sh2add t2, t3, s4
	sh2add t1, t0, s4
	lw t4, 0(t2)
	lw t1, 0(t1)
	bge t4, t1, label278
	addiw t5, t4, 4
	addiw t2, t1, -4
	ble t1, t5, label284
	mv t6, t4
	j label39
.p2align 2
label32:
	sh2add a7, t6, s2
	lw s6, 0(a7)
	sh2add a6, s6, s1
	sh2add s6, t6, s3
	addiw t6, t6, 1
	lw a7, 0(a6)
	lw s7, 0(s6)
	addw a7, a7, s7
	sw a7, 0(a6)
	bgt t1, t6, label32
	sh2add a6, t3, s0
	lw t6, 0(a6)
	addi t3, t6, -1
	bgt t1, t5, label37
.p2align 2
label35:
	sh2add t5, t4, s2
	sh2add a6, t4, s3
	lw t6, 0(t5)
	addiw t4, t4, 1
	sh2add t2, t6, s1
	lw t5, 0(t2)
	lw a7, 0(a6)
	mulw t6, t3, a7
	addw t5, t5, t6
	sw t5, 0(t2)
	bgt t1, t4, label35
	mv t3, t0
	bgt s5, t0, label30
	j label563
.p2align 2
label37:
	sh2add t5, t4, s2
	lw t6, 0(t5)
	sh2add a6, t6, s1
	sh2add t6, t4, s3
	addiw t4, t4, 4
	lw a7, 0(a6)
	lw s7, 0(t6)
	mulw s6, t3, s7
	addw a7, a7, s6
	sw a7, 0(a6)
	lw a7, 4(t5)
	sh2add a6, a7, s1
	lw a7, 0(a6)
	lw s6, 4(t6)
	mulw s7, t3, s6
	addw a7, a7, s7
	sw a7, 0(a6)
	lw a7, 8(t5)
	sh2add a6, a7, s1
	lw a7, 0(a6)
	lw s7, 8(t6)
	mulw s6, t3, s7
	addw a7, a7, s6
	sw a7, 0(a6)
	lw a6, 12(t5)
	sh2add t5, a6, s1
	lw a6, 0(t5)
	lw a7, 12(t6)
	mulw t6, t3, a7
	addw a6, a6, t6
	sw a6, 0(t5)
	bgt t2, t4, label37
	j label35
.p2align 2
label39:
	sh2add a6, t6, s2
	lw a7, 0(a6)
	sh2add s6, a7, s1
	sh2add a7, t6, s3
	addiw t6, t6, 4
	lw s7, 0(s6)
	lw s8, 0(a7)
	addw s7, s7, s8
	sw s7, 0(s6)
	lw s8, 4(a6)
	sh2add s6, s8, s1
	lw s7, 0(s6)
	lw s9, 4(a7)
	addw s8, s7, s9
	sw s8, 0(s6)
	lw s9, 8(a6)
	sh2add s6, s9, s1
	lw s7, 0(s6)
	lw s9, 8(a7)
	addw s8, s7, s9
	sw s8, 0(s6)
	lw s7, 12(a6)
	sh2add a6, s7, s1
	lw s6, 0(a6)
	lw s7, 12(a7)
	addw a7, s6, s7
	sw a7, 0(a6)
	bgt t2, t6, label39
	sh2add a7, t6, s2
	lw s6, 0(a7)
	sh2add a6, s6, s1
	sh2add s6, t6, s3
	addiw t6, t6, 1
	lw a7, 0(a6)
	lw s7, 0(s6)
	addw a7, a7, s7
	sw a7, 0(a6)
	bgt t1, t6, label32
	sh2add a6, t3, s0
	lw t6, 0(a6)
	addi t3, t6, -1
	bgt t1, t5, label37
	j label35
label76:
	mv t3, zero
	bgt s5, zero, label9
	j label80
.p2align 2
label22:
	bgt s5, a2, label23
	j label225
.p2align 2
label563:
	bgt s5, zero, label22
	j label76
.p2align 2
label23:
	bgt a1, a3, label229
	j label228
.p2align 2
label559:
	mv t1, t0
	j label28
.p2align 2
label229:
	mv t0, zero
.p2align 2
label24:
	sh2add t1, t0, s0
	addiw t0, t0, 16
	sd zero, 0(t1)
	sd zero, 8(t1)
	sd zero, 16(t1)
	sd zero, 24(t1)
	sd zero, 32(t1)
	sd zero, 40(t1)
	sd zero, 48(t1)
	sd zero, 56(t1)
	bgt a0, t0, label24
.p2align 2
label26:
	sh2add t1, t0, s0
	addiw t0, t0, 4
	sw zero, 0(t1)
	sw zero, 4(t1)
	sw zero, 8(t1)
	sw zero, 12(t1)
	bgt a1, t0, label26
	j label559
.p2align 2
label28:
	sh2add t2, t1, s0
	addiw t1, t1, 1
	sw zero, 0(t2)
	bgt s5, t1, label28
.p2align 2
label267:
	mv t3, zero
	bgt s5, zero, label9
	j label80
.p2align 2
label97:
	mv t6, t4
	sh2add a6, t4, s2
	sh2add s7, t4, s3
	lw a7, 0(a6)
	addiw t6, t4, 1
	sh2add a6, a7, s0
	lw a7, 0(a6)
	lw s6, 0(s7)
	addw a7, a7, s6
	sw a7, 0(a6)
	bgt t1, t6, label13
	sh2add a6, t3, s1
	lw t6, 0(a6)
	addi t3, t6, -1
	bgt t1, t5, label16
	j label18
.p2align 2
label284:
	mv t6, t4
	sh2add a7, t4, s2
	lw s6, 0(a7)
	sh2add a6, s6, s1
	sh2add s6, t4, s3
	addiw t6, t4, 1
	lw a7, 0(a6)
	lw s7, 0(s6)
	addw a7, a7, s7
	sw a7, 0(a6)
	bgt t1, t6, label32
	sh2add a6, t3, s0
	lw t6, 0(a6)
	addi t3, t6, -1
	bgt t1, t5, label37
	j label35
label69:
	mv t3, zero
	bgt s5, zero, label30
	j label6
label80:
	addiw a5, a5, 1
	blt a5, a4, label2
	j label21
.p2align 2
label91:
	mv t3, t0
	bgt s5, t0, label9
	j label80
label6:
	bgt s5, zero, label22
	j label76
.p2align 2
label278:
	mv t3, t0
	bgt s5, t0, label30
	j label6
.p2align 2
label225:
	mv t1, zero
	mv t2, s0
	li t1, 1
	sw zero, 0(s0)
	bgt s5, t1, label28
	j label267
.p2align 2
label407:
	mv t0, zero
	mv t1, s1
	li t0, 1
	sw zero, 0(s1)
	bgt s5, t0, label47
	j label449
.p2align 2
label410:
	mv t0, zero
	mv t1, s1
	li t0, 4
	sw zero, 0(s1)
	sw zero, 4(s1)
	sw zero, 8(s1)
	sw zero, 12(s1)
	bgt a1, t0, label43
	j label420
label21:
	li a0, 47
	jal _sysy_stoptime
	mv a0, s5
	mv a1, s1
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s4, 8(sp)
	ld s1, 16(sp)
	ld s6, 24(sp)
	ld s2, 32(sp)
	ld s3, 40(sp)
	ld s0, 48(sp)
	ld s5, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	addi sp, sp, 88
	ret
.p2align 2
label567:
	mv t3, zero
	bgt s5, zero, label30
	j label6
.p2align 2
label576:
	mv t3, zero
	bgt s5, zero, label30
	j label6
.p2align 2
label228:
	mv t0, zero
	mv t1, s0
	li t0, 4
	sw zero, 0(s0)
	sw zero, 4(s0)
	sw zero, 8(s0)
	sw zero, 12(s0)
	bgt a1, t0, label26
	j label559
