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
.p2align 2
	addi sp, sp, -64
pcrel576:
	auipc a1, %pcrel_hi(x)
	sd s4, 56(sp)
	addi a0, a1, %pcrel_lo(pcrel576)
	sd s5, 48(sp)
	mv s4, a0
	sd s0, 40(sp)
	sd s6, 32(sp)
	sd s1, 24(sp)
	sd s2, 16(sp)
	sd s3, 8(sp)
	sd ra, 0(sp)
	jal getarray
pcrel577:
	auipc a1, %pcrel_hi(y)
	addiw s6, a0, -5
	addiw s5, a0, -1
	addi a0, a1, %pcrel_lo(pcrel577)
	mv s2, a0
	jal getarray
pcrel578:
	auipc a1, %pcrel_hi(v)
	addi a0, a1, %pcrel_lo(pcrel578)
	mv s3, a0
	jal getarray
pcrel579:
	auipc a1, %pcrel_hi(a)
	addi a0, a1, %pcrel_lo(pcrel579)
	mv s1, a0
	jal getarray
	li a0, 39
	jal _sysy_starttime
	mv a0, zero
pcrel580:
	auipc a1, %pcrel_hi(b)
	addi s0, a1, %pcrel_lo(pcrel580)
.p2align 2
label2:
	bgt s5, zero, label4
	mv a3, zero
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label32
.p2align 2
label25:
	sh2add a3, a1, s1
	addiw a1, a1, 1
	sw zero, 0(a3)
	bgt s5, a1, label25
	mv a3, zero
	bgt s5, zero, label33
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label32
.p2align 2
label33:
	addiw a1, a3, 1
	sh2add a5, a3, s4
	sh2add a2, a1, s4
	lw a4, 0(a5)
	lw a2, 0(a2)
	blt a4, a2, label34
	mv a3, a1
	bgt s5, a1, label33
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label32
.p2align 2
label34:
	addiw t0, a4, 4
	addiw a5, a2, -4
	bgt a2, t0, label280
	mv t1, a4
	sh2add t2, a4, s2
	lw t3, 0(t2)
	sh2add a5, t3, s1
	sh2add t3, a4, s3
	addiw t1, a4, 1
	lw t0, 0(a5)
	lw t2, 0(t3)
	addw t0, t0, t2
	sw t0, 0(a5)
	bgt a2, t1, label35
	blt a4, a2, label40
	mv a3, a1
	bgt s5, a1, label33
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label32
.p2align 2
label280:
	mv t0, a4
	j label37
.p2align 2
label35:
	sh2add t2, t1, s2
	lw t3, 0(t2)
	sh2add a5, t3, s1
	sh2add t3, t1, s3
	addiw t1, t1, 1
	lw t0, 0(a5)
	lw t2, 0(t3)
	addw t0, t0, t2
	sw t0, 0(a5)
	bgt a2, t1, label35
	blt a4, a2, label40
	mv a3, a1
	bgt s5, a1, label33
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label32
.p2align 2
label37:
	sh2add t1, t0, s2
	lw t2, 0(t1)
	sh2add t3, t2, s1
	sh2add t2, t0, s3
	lw t4, 0(t3)
	lw t5, 0(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t5, 4(t1)
	sh2add t3, t5, s1
	lw t4, 0(t3)
	lw t5, 4(t2)
	addw t6, t4, t5
	sw t6, 0(t3)
	lw t5, 8(t1)
	sh2add t3, t5, s1
	lw t4, 0(t3)
	lw t5, 8(t2)
	addw t6, t4, t5
	sw t6, 0(t3)
	lw t4, 12(t1)
	sh2add t1, t4, s1
	lw t3, 0(t1)
	lw t2, 12(t2)
	addw t4, t3, t2
	sw t4, 0(t1)
	addiw t1, t0, 4
	bgt a5, t1, label334
	sh2add t2, t1, s2
	lw t3, 0(t2)
	sh2add a5, t3, s1
	sh2add t3, t1, s3
	addiw t1, t1, 1
	lw t0, 0(a5)
	lw t2, 0(t3)
	addw t0, t0, t2
	sw t0, 0(a5)
	bgt a2, t1, label35
	blt a4, a2, label40
	mv a3, a1
	bgt s5, a1, label33
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label32
.p2align 2
label334:
	mv t0, t1
	j label37
.p2align 2
label40:
	addiw t0, a4, 4
	sh2add a5, a3, s0
	lw t1, 0(a5)
	addiw a5, a2, -4
	addi a3, t1, -1
	bgt a2, t0, label43
.p2align 2
label41:
	sh2add t0, a4, s2
	lw t1, 0(t0)
	sh2add a5, t1, s1
	sh2add t1, a4, s3
	addiw a4, a4, 1
	lw t0, 0(a5)
	lw t3, 0(t1)
	mulw t2, a3, t3
	addw t0, t0, t2
	sw t0, 0(a5)
	bgt a2, a4, label41
	mv a3, a1
	bgt s5, a1, label33
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label32
.p2align 2
label11:
	addiw a1, a3, 1
	sh2add a5, a3, s4
	sh2add a2, a1, s4
	lw a4, 0(a5)
	lw a2, 0(a2)
	blt a4, a2, label12
	mv a3, a1
	bgt s5, a1, label11
	bgt s5, zero, label24
	mv a3, zero
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label32
.p2align 2
label19:
	sh2add t0, a4, s2
	lw t1, 0(t0)
	sh2add t2, t1, s0
	sh2add t1, a4, s3
	addiw a4, a4, 4
	lw t3, 0(t2)
	lw t5, 0(t1)
	mulw t4, a3, t5
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t4, 4(t0)
	sh2add t2, t4, s0
	lw t3, 0(t2)
	lw t4, 4(t1)
	mulw t5, a3, t4
	addw t3, t3, t5
	sw t3, 0(t2)
	lw t4, 8(t0)
	sh2add t2, t4, s0
	lw t3, 0(t2)
	lw t5, 8(t1)
	mulw t4, a3, t5
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t4, 12(t0)
	sh2add t0, t4, s0
	lw t2, 0(t0)
	lw t1, 12(t1)
	mulw t3, a3, t1
	addw t2, t2, t3
	sw t2, 0(t0)
	bgt a5, a4, label19
.p2align 2
label21:
	sh2add t0, a4, s2
	sh2add t2, a4, s3
	lw t1, 0(t0)
	addiw a4, a4, 1
	sh2add a5, t1, s0
	lw t0, 0(a5)
	lw t1, 0(t2)
	mulw t3, a3, t1
	addw t0, t0, t3
	sw t0, 0(a5)
	bgt a2, a4, label21
	mv a3, a1
	bgt s5, a1, label11
	bgt s5, zero, label24
	mv a3, zero
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label32
.p2align 2
label12:
	addiw t0, a4, 4
	addiw a5, a2, -4
	bgt a2, t0, label105
	mv t1, a4
	sh2add t3, a4, s2
	lw t2, 0(t3)
	sh2add a5, t2, s0
	sh2add t2, a4, s3
	addiw t1, a4, 1
	lw t0, 0(a5)
	lw t3, 0(t2)
	addw t0, t0, t3
	sw t0, 0(a5)
	bgt a2, t1, label15
	blt a4, a2, label18
	mv a3, a1
	bgt s5, a1, label11
	bgt s5, zero, label24
	mv a3, zero
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label32
.p2align 2
label105:
	mv t0, a4
.p2align 2
label13:
	sh2add t1, t0, s2
	lw t2, 0(t1)
	sh2add t3, t2, s0
	sh2add t2, t0, s3
	lw t4, 0(t3)
	lw t5, 0(t2)
	addw t4, t4, t5
	sw t4, 0(t3)
	lw t5, 4(t1)
	sh2add t3, t5, s0
	lw t4, 0(t3)
	lw t5, 4(t2)
	addw t6, t4, t5
	sw t6, 0(t3)
	lw t5, 8(t1)
	sh2add t3, t5, s0
	lw t4, 0(t3)
	lw t5, 8(t2)
	addw t6, t4, t5
	sw t6, 0(t3)
	lw t4, 12(t1)
	sh2add t1, t4, s0
	lw t3, 0(t1)
	lw t4, 12(t2)
	addw t2, t3, t4
	sw t2, 0(t1)
	addiw t1, t0, 4
	bgt a5, t1, label144
	sh2add t3, t1, s2
	lw t2, 0(t3)
	sh2add a5, t2, s0
	sh2add t2, t1, s3
	addiw t1, t1, 1
	lw t0, 0(a5)
	lw t3, 0(t2)
	addw t0, t0, t3
	sw t0, 0(a5)
	bgt a2, t1, label15
	blt a4, a2, label18
	mv a3, a1
	bgt s5, a1, label11
	bgt s5, zero, label24
	mv a3, zero
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label32
.p2align 2
label144:
	mv t0, t1
	j label13
.p2align 2
label15:
	sh2add t3, t1, s2
	lw t2, 0(t3)
	sh2add a5, t2, s0
	sh2add t2, t1, s3
	addiw t1, t1, 1
	lw t0, 0(a5)
	lw t3, 0(t2)
	addw t0, t0, t3
	sw t0, 0(a5)
	bgt a2, t1, label15
	blt a4, a2, label18
	mv a3, a1
	bgt s5, a1, label11
	bgt s5, zero, label24
	mv a3, zero
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label32
.p2align 2
label18:
	addiw t0, a4, 4
	sh2add a5, a3, s1
	lw t1, 0(a5)
	addiw a5, a2, -4
	addi a3, t1, -1
	bgt a2, t0, label19
	j label21
.p2align 2
label43:
	sh2add t0, a4, s2
	lw t1, 0(t0)
	sh2add t2, t1, s1
	sh2add t1, a4, s3
	addiw a4, a4, 4
	lw t3, 0(t2)
	lw t4, 0(t1)
	mulw t5, a3, t4
	addw t3, t3, t5
	sw t3, 0(t2)
	lw t4, 4(t0)
	sh2add t2, t4, s1
	lw t3, 0(t2)
	lw t4, 4(t1)
	mulw t5, a3, t4
	addw t3, t3, t5
	sw t3, 0(t2)
	lw t4, 8(t0)
	sh2add t2, t4, s1
	lw t3, 0(t2)
	lw t6, 8(t1)
	mulw t5, a3, t6
	addw t4, t3, t5
	sw t4, 0(t2)
	lw t3, 12(t0)
	sh2add t0, t3, s1
	lw t2, 0(t0)
	lw t4, 12(t1)
	mulw t3, a3, t4
	addw t1, t2, t3
	sw t1, 0(t0)
	bgt a5, a4, label43
	j label41
.p2align 2
label24:
	li a2, 4
	bgt s5, a2, label237
	mv a1, zero
	mv a3, s1
	li a1, 1
	sw zero, 0(s1)
	bgt s5, a1, label25
	mv a3, zero
	bgt s5, zero, label33
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label32
.p2align 2
label237:
	mv a2, zero
	mv a3, s1
	li a1, 4
	sw zero, 0(s1)
	sw zero, 4(s1)
	sw zero, 8(s1)
	sw zero, 12(s1)
	bgt s6, a1, label254
	sh2add a3, a1, s1
	addiw a1, a1, 1
	sw zero, 0(a3)
	bgt s5, a1, label25
	mv a3, zero
	bgt s5, zero, label33
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
label32:
	li a0, 47
	jal _sysy_stoptime
	mv a0, s5
	mv a1, s0
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s3, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s0, 40(sp)
	ld s5, 48(sp)
	ld s4, 56(sp)
	addi sp, sp, 64
	ret
.p2align 2
label4:
	li a2, 4
	bgt s5, a2, label67
	mv a1, zero
	mv a3, s0
	li a1, 1
	sw zero, 0(s0)
	bgt s5, a1, label5
	mv a3, zero
	bgt s5, zero, label11
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label32
.p2align 2
label67:
	mv a2, zero
	mv a3, s0
	li a1, 4
	sw zero, 0(s0)
	sw zero, 4(s0)
	sw zero, 8(s0)
	sw zero, 12(s0)
	bgt s6, a1, label84
	sh2add a3, a1, s0
	addiw a1, a1, 1
	sw zero, 0(a3)
	bgt s5, a1, label5
	mv a3, zero
	bgt s5, zero, label11
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label32
.p2align 2
label5:
	sh2add a3, a1, s0
	addiw a1, a1, 1
	sw zero, 0(a3)
	bgt s5, a1, label5
	mv a3, zero
	bgt s5, zero, label11
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label32
.p2align 2
label7:
	sh2add a3, a2, s0
	addiw a1, a2, 4
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	bgt s6, a1, label84
	sh2add a3, a1, s0
	addiw a1, a1, 1
	sw zero, 0(a3)
	bgt s5, a1, label5
	mv a3, zero
	bgt s5, zero, label11
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label32
.p2align 2
label84:
	mv a2, a1
	j label7
.p2align 2
label27:
	sh2add a3, a2, s1
	addiw a1, a2, 4
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	bgt s6, a1, label254
	sh2add a3, a1, s1
	addiw a1, a1, 1
	sw zero, 0(a3)
	bgt s5, a1, label25
	mv a3, zero
	bgt s5, zero, label33
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label32
.p2align 2
label254:
	mv a2, a1
	j label27
