.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
x:
	.zero	864000000
.text
.globl main
main:
.p2align 2
	addi sp, sp, -56
	sd ra, 0(sp)
	sd s2, 8(sp)
	sd s0, 16(sp)
	sd s5, 24(sp)
	sd s4, 32(sp)
	sd s1, 40(sp)
	sd s3, 48(sp)
	jal getint
	addiw s4, a0, -20
	addiw s5, a0, -4
	addiw s0, a0, -1
	mv s2, a0
	jal getint
	mv s1, a0
	li a0, 13
	jal _sysy_starttime
	mv a0, zero
pcrel251:
	auipc a1, %pcrel_hi(x)
	addi s3, a1, %pcrel_lo(pcrel251)
	li a2, 1440000
	mv a3, zero
	mv a1, s3
	bgt s2, zero, label41
	li s5, 1
	mv a3, s5
	li a0, 1440000
	sub a4, zero, a0
	mul a2, s5, a0
	add a1, s3, a2
	add a2, a1, a0
	add s4, a1, a4
	addiw a0, s5, 1
	bgt s0, s5, label106
	j label20
.p2align 2
label85:
	sh2add t0, a4, a3
	li a5, 1
	addiw a4, a4, 4
	sw a5, 0(t0)
	sw a5, 4(t0)
	sw a5, 8(t0)
	sw a5, 12(t0)
	bgt s5, a4, label14
	mv a5, a4
	sh2add a4, a4, a3
	li t0, 1
	addiw a5, a5, 1
	sw t0, 0(a4)
	bgt s2, a5, label9
	addiw a2, a2, 1
	bgt s2, a2, label7
	addiw a0, a0, 1
	li a2, 1440000
	mul a3, a0, a2
	add a1, s3, a3
	bgt s2, a0, label41
	li s5, 1
	mv a3, s5
	li a0, 1440000
	sub a4, zero, a0
	mul a2, s5, a0
	add a1, s3, a2
	add a2, a1, a0
	add s4, a1, a4
	addiw a0, s5, 1
	ble s0, s5, label20
label106:
	li t0, 1
	bgt s0, t0, label23
	mv s5, t0
	mv a3, a0
	li a0, 1440000
	sub a4, zero, a0
	mul a2, a3, a0
	add a1, s3, a2
	add a2, a1, a0
	add s4, a1, a4
	addiw a0, a3, 1
	bgt s0, a3, label106
	j label20
.p2align 2
label23:
	addiw a3, t0, 1
	li t1, 2400
	li t3, -4800
	mul t2, t0, t1
	mul a5, a3, t1
	add t0, a2, t2
	add t1, s4, t2
	add a4, a1, a5
	add t2, a1, t2
	add a5, a4, t3
	li t3, 1
	ble s0, t3, label130
.p2align 2
label24:
	sh2add t5, t3, t1
	sh2add t6, t3, t0
	lw t4, 0(t5)
	lw t5, 0(t6)
	sh2add t6, t3, a5
	addw t4, t4, t5
	lw t5, 0(t6)
	sh2add t6, t3, a4
	addw t4, t4, t5
	lw a6, 0(t6)
	addw t5, t4, a6
	sh2add t4, t3, t2
	addiw t3, t3, 1
	lw a6, -4(t4)
	lw t6, 4(t4)
	addw t5, t5, a6
	addw a6, t5, t6
	divw t5, a6, s1
	sw t5, 0(t4)
	bgt s0, t3, label24
	mv t0, a3
	bgt s0, a3, label23
	mv s5, a3
	mv a3, a0
	li a0, 1440000
	sub a4, zero, a0
	mul a2, a3, a0
	add a1, s3, a2
	add a2, a1, a0
	add s4, a1, a4
	addiw a0, a3, 1
	bgt s0, a3, label106
	j label20
.p2align 2
label63:
	mv a4, zero
	mv t0, a3
	li a5, 1
	li a4, 4
	sw a5, 0(a3)
	sw a5, 4(a3)
	sw a5, 8(a3)
	sw a5, 12(a3)
	ble s5, a4, label216
.p2align 2
label14:
	sh2add t0, a4, a3
	li a5, 1
	addiw a4, a4, 4
	sw a5, 0(t0)
	sw a5, 4(t0)
	sw a5, 8(t0)
	sw a5, 12(t0)
	bgt s5, a4, label14
	mv a5, a4
	sh2add a4, a4, a3
	li t0, 1
	addiw a5, a5, 1
	sw t0, 0(a4)
	bgt s2, a5, label9
	addiw a2, a2, 1
	bgt s2, a2, label7
	addiw a0, a0, 1
	li a2, 1440000
	mul a3, a0, a2
	add a1, s3, a3
	bgt s2, a0, label41
	li s5, 1
	mv a3, s5
	li a0, 1440000
	sub a4, zero, a0
	mul a2, s5, a0
	add a1, s3, a2
	add a2, a1, a0
	add s4, a1, a4
	addiw a0, s5, 1
	bgt s0, s5, label106
	j label20
.p2align 2
label7:
	bgt s2, zero, label8
	j label48
.p2align 2
label9:
	sh2add a4, a5, a3
	li t0, 1
	addiw a5, a5, 1
	sw t0, 0(a4)
	bgt s2, a5, label9
	j label60
.p2align 2
label216:
	mv a5, a4
	sh2add a4, a4, a3
	li t0, 1
	addiw a5, a5, 1
	sw t0, 0(a4)
	bgt s2, a5, label9
	addiw a2, a2, 1
	bgt s2, a2, label7
	addiw a0, a0, 1
	li a2, 1440000
	mul a3, a0, a2
	add a1, s3, a3
	bgt s2, a0, label41
	li s5, 1
	mv a3, s5
	li a0, 1440000
	sub a4, zero, a0
	mul a2, s5, a0
	add a1, s3, a2
	add a2, a1, a0
	add s4, a1, a4
	addiw a0, s5, 1
	bgt s0, s5, label106
	j label20
.p2align 2
label8:
	li a4, 2400
	mul a5, a2, a4
	li a4, 4
	add a3, a1, a5
	ble s2, a4, label53
	li t0, 16
	ble s5, t0, label63
	mv a5, zero
.p2align 2
label12:
	sh2add a4, a5, a3
	li t0, 1
	sw t0, 0(a4)
	sw t0, 4(a4)
	sw t0, 8(a4)
	sw t0, 12(a4)
	sw t0, 16(a4)
	sw t0, 20(a4)
	sw t0, 24(a4)
	sw t0, 28(a4)
	sw t0, 32(a4)
	sw t0, 36(a4)
	sw t0, 40(a4)
	sw t0, 44(a4)
	sw t0, 48(a4)
	sw t0, 52(a4)
	sw t0, 56(a4)
	sw t0, 60(a4)
	addiw a4, a5, 16
	ble s4, a4, label85
	mv a5, a4
	j label12
.p2align 2
label60:
	addiw a2, a2, 1
	bgt s2, a2, label7
	addiw a0, a0, 1
	li a2, 1440000
	mul a3, a0, a2
	add a1, s3, a3
	bgt s2, a0, label41
	li s5, 1
	mv a3, s5
	li a0, 1440000
	sub a4, zero, a0
	mul a2, s5, a0
	add a1, s3, a2
	add a2, a1, a0
	add s4, a1, a4
	addiw a0, s5, 1
	bgt s0, s5, label106
label20:
	li a0, 53
	jal _sysy_stoptime
	mv a0, s2
	mv a1, s3
	jal putarray
	li s0, 2400
	srliw a2, s2, 31
	add a1, s2, a2
	li a2, 1440000
	sraiw a0, a1, 1
	mul a3, a0, a2
	mul a2, a0, s0
	add a1, s3, a3
	mv a0, s2
	add a1, a1, a2
	jal putarray
	addiw a0, s5, -1
	mul a2, a0, s0
	mv a0, s2
	add a1, s4, a2
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s2, 8(sp)
	ld s0, 16(sp)
	ld s5, 24(sp)
	ld s4, 32(sp)
	ld s1, 40(sp)
	ld s3, 48(sp)
	addi sp, sp, 56
	ret
.p2align 2
label41:
	mv a2, zero
	j label4
.p2align 2
label48:
	addiw a2, a2, 1
	bgt s2, a2, label7
	addiw a0, a0, 1
	li a2, 1440000
	mul a3, a0, a2
	add a1, s3, a3
	bgt s2, a0, label41
	li s5, 1
	mv a3, s5
	li a0, 1440000
	sub a4, zero, a0
	mul a2, s5, a0
	add a1, s3, a2
	add a2, a1, a0
	add s4, a1, a4
	addiw a0, s5, 1
	bgt s0, s5, label106
	j label20
.p2align 2
label4:
	bgt s2, a2, label7
	addiw a0, a0, 1
	li a2, 1440000
	mul a3, a0, a2
	add a1, s3, a3
	bgt s2, a0, label41
	li s5, 1
	mv a3, s5
	li a0, 1440000
	sub a4, zero, a0
	mul a2, s5, a0
	add a1, s3, a2
	add a2, a1, a0
	add s4, a1, a4
	addiw a0, s5, 1
	bgt s0, s5, label106
	j label20
.p2align 2
label130:
	mv t0, a3
	bgt s0, a3, label23
	mv s5, a3
	mv a3, a0
	li a0, 1440000
	sub a4, zero, a0
	mul a2, a3, a0
	add a1, s3, a2
	add a2, a1, a0
	add s4, a1, a4
	addiw a0, a3, 1
	bgt s0, a3, label106
	j label20
.p2align 2
label53:
	mv a5, zero
	j label9
