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
	addiw s4, a0, -8
	addiw s0, a0, -1
	mv s2, a0
	jal getint
	mv s1, a0
	li a0, 13
	jal _sysy_starttime
pcrel191:
	auipc a1, %pcrel_hi(x)
	addi s3, a1, %pcrel_lo(pcrel191)
	mv a1, zero
label2:
	li a3, 1440000
	mul a2, a1, a3
	add a0, s3, a2
	bgt s2, a1, label36
label35:
	li s5, 1
	mv a0, s5
	j label4
.p2align 2
label36:
	mv a2, zero
	bgt s2, zero, label15
	j label173
label4:
	li a1, 1440000
	addiw t2, a0, 1
	sub a2, zero, a1
	mul a3, a0, a1
	add t0, s3, a3
	add t1, t0, a1
	add s4, t0, a2
	bgt s0, a0, label45
	j label12
.p2align 2
label15:
	ble s2, zero, label16
	li a5, 2400
	mul a4, a2, a5
	li a5, 8
	add a3, a0, a4
	ble s2, a5, label111
	mv a4, zero
.p2align 2
label18:
	sh2add a5, a4, a3
	li t0, 1
	addiw a4, a4, 8
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	sw t0, 16(a5)
	sw t0, 20(a5)
	sw t0, 24(a5)
	sw t0, 28(a5)
	bgt s4, a4, label18
.p2align 2
label20:
	sh2add a5, a4, a3
	li t0, 1
	addiw a4, a4, 1
	sw t0, 0(a5)
	bgt s2, a4, label20
	addiw a2, a2, 1
	bgt s2, a2, label15
.p2align 2
label179:
	addiw a1, a1, 1
	li a3, 1440000
	mul a2, a1, a3
	add a0, s3, a2
	bgt s2, a1, label36
	j label35
.p2align 2
label45:
	li a2, 1
	bgt s0, a2, label9
label48:
	mv s5, a2
	mv a0, t2
	li a1, 1440000
	addiw t2, t2, 1
	sub a2, zero, a1
	mul a3, a0, a1
	add t0, s3, a3
	add t1, t0, a1
	add s4, t0, a2
	bgt s0, a0, label45
	j label12
.p2align 2
label9:
	addiw t3, a2, 1
	li a3, 2400
	li a5, -4800
	mul a4, a2, a3
	mul a1, t3, a3
	add a2, t1, a4
	add a3, s4, a4
	add a0, t0, a1
	add a4, t0, a4
	add a1, a0, a5
	li a5, 1
	bgt s0, a5, label62
	mv a2, t3
	bgt s0, t3, label9
	j label48
.p2align 2
label62:
	li a5, 1
.p2align 2
label10:
	sh2add t6, a5, a3
	sh2add t5, a5, a2
	lw t4, 0(t6)
	sh2add a6, a5, a0
	lw t6, 0(t5)
	sh2add t5, a5, a1
	addw t4, t4, t6
	lw t6, 0(t5)
	addw t4, t4, t6
	lw t6, 0(a6)
	addw t5, t4, t6
	sh2add t4, a5, a4
	addiw a5, a5, 1
	lw t6, -4(t4)
	lw a6, 4(t4)
	addw t5, t5, t6
	addw t6, t5, a6
	divw t5, t6, s1
	sw t5, 0(t4)
	bgt s0, a5, label10
	mv a2, t3
	bgt s0, t3, label9
	mv s5, t3
	mv a0, t2
	li a1, 1440000
	addiw t2, t2, 1
	sub a2, zero, a1
	mul a3, a0, a1
	add t0, s3, a3
	add t1, t0, a1
	add s4, t0, a2
	bgt s0, a0, label45
label12:
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
label102:
	addiw a1, a1, 1
	li a3, 1440000
	mul a2, a1, a3
	add a0, s3, a2
	bgt s2, a1, label36
	j label35
.p2align 2
label16:
	addiw a2, a2, 1
	bgt s2, a2, label15
	j label102
.p2align 2
label111:
	mv a4, zero
	mv a5, a3
	li t0, 1
	li a4, 1
	sw t0, 0(a3)
	bgt s2, a4, label20
	addiw a2, a2, 1
	bgt s2, a2, label15
	j label179
label173:
	addiw a1, a1, 1
	j label2
