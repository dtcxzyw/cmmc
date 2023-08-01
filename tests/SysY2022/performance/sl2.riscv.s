.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
x:
	.zero	864000000
.text
.p2align 2
.globl main
main:
	addi sp, sp, -80
	sd ra, 0(sp)
	sd s2, 8(sp)
	sd s0, 16(sp)
	sd s5, 24(sp)
	sd s6, 32(sp)
	sd s1, 40(sp)
	sd s4, 48(sp)
	sd s3, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	jal getint
	addiw s6, a0, -4
	addiw s0, a0, -1
	mv s2, a0
	jal getint
	mv s1, a0
	li a0, 13
	jal _sysy_starttime
	li s3, 2400
	mv a5, zero
	li s5, 1440000
	li a3, 4
	li a0, 1
pcrel196:
	auipc a1, %pcrel_hi(x)
	sub a2, zero, s5
	addi s4, a1, %pcrel_lo(pcrel196)
	li a1, -4800
label2:
	mul t0, a5, s5
	add a4, s4, t0
	bgt s2, a5, label36
label35:
	mv s7, a0
	mv a3, a0
	j label4
.p2align 2
label36:
	mv t0, zero
	bgt s2, zero, label15
	j label178
label4:
	mul a4, a3, s5
	addiw t5, a3, 1
	add t3, s4, a4
	add t4, t3, s5
	add s6, t3, a2
	bgt s0, a3, label45
	j label12
.p2align 2
label15:
	ble s2, zero, label16
	mul t2, t0, s3
	add t1, a4, t2
	ble s2, a3, label111
	mv t2, zero
.p2align 2
label18:
	sh2add t3, t2, t1
	addiw t2, t2, 4
	sw a0, 0(t3)
	sw a0, 4(t3)
	sw a0, 8(t3)
	sw a0, 12(t3)
	bgt s6, t2, label18
.p2align 2
label20:
	sh2add t3, t2, t1
	addiw t2, t2, 1
	sw a0, 0(t3)
	bgt s2, t2, label20
	addiw t0, t0, 1
	bgt s2, t0, label15
.p2align 2
label184:
	addiw a5, a5, 1
	mul t0, a5, s5
	add a4, s4, t0
	bgt s2, a5, label36
	j label35
.p2align 2
label45:
	mv s7, a0
	bgt s0, a0, label9
label48:
	mv a3, t5
	mul a4, t5, s5
	addiw t5, t5, 1
	add t3, s4, a4
	add t4, t3, s5
	add s6, t3, a2
	bgt s0, a3, label45
	j label12
.p2align 2
label9:
	addiw t6, s7, 1
	mul t1, s7, s3
	mul a5, t6, s3
	add t0, s6, t1
	add a3, t3, a5
	add a5, t4, t1
	add a4, a3, a1
	add t1, t3, t1
	bgt s0, a0, label62
	mv s7, t6
	bgt s0, t6, label9
	j label48
.p2align 2
label62:
	mv t2, a0
.p2align 2
label10:
	sh2add a7, t2, t0
	sh2add s7, t2, a5
	lw a6, 0(a7)
	lw a7, 0(s7)
	sh2add s7, t2, a4
	addw a6, a6, a7
	lw a7, 0(s7)
	addw a6, a6, a7
	sh2add a7, t2, a3
	lw s7, 0(a7)
	addw a7, a6, s7
	sh2add a6, t2, t1
	addiw t2, t2, 1
	lw s7, -4(a6)
	lw s8, 4(a6)
	addw a7, a7, s7
	addw a7, a7, s8
	divw s7, a7, s1
	sw s7, 0(a6)
	bgt s0, t2, label10
	mv s7, t6
	bgt s0, t6, label9
	mv a3, t5
	mul a4, t5, s5
	addiw t5, t5, 1
	add t3, s4, a4
	add t4, t3, s5
	add s6, t3, a2
	bgt s0, a3, label45
label12:
	li a0, 53
	jal _sysy_stoptime
	mv a0, s2
	mv a1, s4
	jal putarray
	srliw a3, s2, 31
	add a2, s2, a3
	sraiw a0, a2, 1
	mul a3, a0, s3
	mul a1, a0, s5
	mv a0, s2
	add a2, s4, a1
	add a1, a2, a3
	jal putarray
	addiw a0, s7, -1
	mul a2, a0, s3
	mv a0, s2
	add a1, s6, a2
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s2, 8(sp)
	ld s0, 16(sp)
	ld s5, 24(sp)
	ld s6, 32(sp)
	ld s1, 40(sp)
	ld s4, 48(sp)
	ld s3, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	addi sp, sp, 80
	ret
label102:
	addiw a5, a5, 1
	mul t0, a5, s5
	add a4, s4, t0
	bgt s2, a5, label36
	j label35
.p2align 2
label16:
	addiw t0, t0, 1
	bgt s2, t0, label15
	j label102
.p2align 2
label111:
	mv t2, zero
	mv t3, t1
	li t2, 1
	sw a0, 0(t1)
	bgt s2, t2, label20
	addiw t0, t0, 1
	bgt s2, t0, label15
	j label184
label178:
	addiw a5, a5, 1
	j label2
