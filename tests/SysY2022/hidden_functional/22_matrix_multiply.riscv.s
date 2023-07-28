.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
a:
	.zero	40000
.align 4
b:
	.zero	40000
.align 4
res:
	.zero	40000
.text
.globl main
main:
.p2align 2
	addi sp, sp, -88
	sd s0, 80(sp)
	sd s5, 72(sp)
	sd s3, 64(sp)
	sd s4, 56(sp)
	sd s1, 48(sp)
	sd s6, 40(sp)
	sd s2, 32(sp)
	sd s7, 24(sp)
	sd s8, 16(sp)
	sd s9, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s0, a0
	jal getint
	mv s2, zero
	mv s3, a0
pcrel242:
	auipc a0, %pcrel_hi(a)
	addi s5, a0, %pcrel_lo(pcrel242)
pcrel243:
	auipc a0, %pcrel_hi(b)
	addi s4, a0, %pcrel_lo(pcrel243)
pcrel244:
	auipc a0, %pcrel_hi(res)
	addi s1, a0, %pcrel_lo(pcrel244)
	bgt s0, zero, label4
label8:
	jal getint
	mv s6, a0
	jal getint
	mv s7, zero
	mv s2, a0
	bgt s6, zero, label11
	mv a2, zero
	li a1, 400
	mv a0, zero
	mv a1, s5
	mv a3, s1
	bgt s0, zero, label92
	mv s3, zero
	j label33
.p2align 2
label19:
	bgt s3, zero, label21
	addiw a0, a0, 1
	bgt s2, a0, label19
	addiw a2, a2, 1
	li a1, 400
	mul a0, a2, a1
	add a1, s5, a0
	add a3, s1, a0
	bgt s0, a2, label92
	mv s3, zero
	bgt s0, zero, label34
	j label33
.p2align 2
label21:
	sh2add a4, a0, a3
	mv a5, zero
	lw t1, 0(a4)
.p2align 2
label22:
	addiw a4, a5, 4
	ble s3, a4, label26
	li t3, 400
	mul t2, a5, t3
	sh2add a5, a5, a1
	add t0, s4, t2
	addi t6, t0, 400
	sh2add t3, a0, t0
	lw t2, 0(a5)
	sh2add t4, a0, t6
	lw t3, 0(t3)
	lw t5, 4(a5)
	lw t6, 0(t4)
	mulw t3, t2, t3
	addw t2, t1, t3
	mulw t4, t5, t6
	addw t1, t4, t2
	lw t2, 8(a5)
	addi t4, t0, 800
	sh2add t3, a0, t4
	lw t4, 0(t3)
	lw a5, 12(a5)
	mulw t3, t2, t4
	addi t2, t0, 1200
	addw t1, t1, t3
	sh2add t0, a0, t2
	lw t2, 0(t0)
	mulw t0, a5, t2
	mv a5, a4
	addw t1, t1, t0
	j label22
.p2align 2
label26:
	li a4, 400
	sh2add t2, a5, a1
	mul t0, a5, a4
	addiw a5, a5, 1
	add t3, s4, t0
	lw t0, 0(t2)
	sh2add a4, a0, t3
	lw a4, 0(a4)
	mulw t2, t0, a4
	addw t1, t1, t2
	bgt s3, a5, label26
	sh2add a4, a0, a3
	sw t1, 0(a4)
	addiw a0, a0, 1
	bgt s2, a0, label19
	addiw a2, a2, 1
	li a1, 400
	mul a0, a2, a1
	add a1, s5, a0
	add a3, s1, a0
	bgt s0, a2, label92
	mv s3, zero
	bgt s0, zero, label34
label33:
	mv a0, zero
	ld ra, 0(sp)
	ld s9, 8(sp)
	ld s8, 16(sp)
	ld s7, 24(sp)
	ld s2, 32(sp)
	ld s6, 40(sp)
	ld s1, 48(sp)
	ld s4, 56(sp)
	ld s3, 64(sp)
	ld s5, 72(sp)
	ld s0, 80(sp)
	addi sp, sp, 88
	ret
.p2align 2
label34:
	li a1, 400
	mul a0, s3, a1
	add s4, s1, a0
	ble s2, zero, label37
	mv s5, zero
.p2align 2
label35:
	sh2add a1, s5, s4
	lw a0, 0(a1)
	jal putint
	li a0, 32
	jal putch
	addiw s5, s5, 1
	bgt s2, s5, label35
.p2align 2
label37:
	li a0, 10
	jal putch
	addiw s3, s3, 1
	bgt s0, s3, label34
	j label33
.p2align 2
label4:
	li a1, 400
	mul a0, s2, a1
	add s6, s5, a0
	bgt s3, zero, label54
	addiw s2, s2, 1
	bgt s0, s2, label4
	j label8
.p2align 2
label54:
	mv s7, zero
.p2align 2
label5:
	jal getint
	sh2add a1, s7, s6
	addiw s7, s7, 1
	sw a0, 0(a1)
	bgt s3, s7, label5
	addiw s2, s2, 1
	bgt s0, s2, label4
	j label8
.p2align 2
label11:
	li a1, 400
	mul a0, s7, a1
	add s8, s4, a0
	bgt s2, zero, label75
	addiw s7, s7, 1
	bgt s6, s7, label11
	mv a2, zero
	mv a0, zero
	mv a1, s5
	mv a3, s1
	bgt s0, zero, label92
	mv s3, zero
	j label33
.p2align 2
label75:
	mv s9, zero
.p2align 2
label12:
	jal getint
	sh2add a1, s9, s8
	addiw s9, s9, 1
	sw a0, 0(a1)
	bgt s2, s9, label12
	addiw s7, s7, 1
	bgt s6, s7, label11
	mv a2, zero
	li a1, 400
	mv a0, zero
	mv a1, s5
	mv a3, s1
	bgt s0, zero, label92
	mv s3, zero
	j label33
.p2align 2
label92:
	mv a0, zero
	bgt s2, zero, label19
	addiw a2, a2, 1
	li a1, 400
	mul a0, a2, a1
	add a1, s5, a0
	add a3, s1, a0
	bgt s0, a2, label92
	mv s3, zero
	bgt s0, zero, label34
	j label33
