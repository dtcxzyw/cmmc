.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
t:
	.zero	8040
.align 4
dp:
	.zero	140700
.text
.globl main
main:
	addi sp, sp, -56
	sd s3, 48(sp)
	sd s2, 40(sp)
	sd s1, 32(sp)
	sd s0, 24(sp)
	sd s5, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	jal getint
pcrel120:
	auipc a1, %pcrel_hi(dp)
	mv s3, a0
	addi a0, a1, %pcrel_lo(pcrel120)
	li a1, 140
	mv s2, a0
	mul a2, s3, a1
	add s1, a0, a2
	jal getint
	mv s0, a0
pcrel121:
	auipc a0, %pcrel_hi(t)
	addi s4, a0, %pcrel_lo(pcrel121)
	ble s3, zero, label27
	li s5, 1
	j label2
label27:
	li a0, 1
	j label4
label2:
	jal getint
	andi a1, a0, 1
	sh3add a0, s5, s4
	sh2add a2, a1, a0
	li a1, 1
	sw a1, 0(a2)
	li a2, 140
	mul a3, s5, a2
	addiw s5, s5, 1
	add a1, s2, a3
	lw a2, -140(a1)
	lw a3, 4(a0)
	addw a0, a2, a3
	sw a0, 0(a1)
	bge s3, s5, label2
	j label27
label4:
	addiw a1, a0, -1
	li a3, 140
	sh3add a2, a0, s4
	mul a4, a1, a3
	add a1, s2, a4
	mul a4, a0, a3
	add a3, s2, a4
	bge s3, a0, label57
label56:
	bge s0, zero, label86
	j label85
label57:
	li a4, 1
label6:
	bge s0, a4, label8
	addiw a0, a0, 1
	addiw a1, a0, -1
	li a3, 140
	sh3add a2, a0, s4
	mul a4, a1, a3
	add a1, s2, a4
	mul a4, a0, a3
	add a3, s2, a4
	bge s3, a0, label57
	j label56
label8:
	addiw a5, a4, 1
	sh2add t1, a4, a1
	andi t0, a5, 1
	sh2add t2, t0, a2
	lw t0, 0(t1)
	lw t2, 0(t2)
	addw t0, t0, t2
	lw t3, -4(t1)
	addw t1, t2, t3
	bge t1, t0, label10
	sh2add t1, a4, a3
	mv a4, a5
	sw t0, 0(t1)
	j label6
label10:
	sh2add t0, a4, a3
	mv a4, a5
	sw t1, 0(t0)
	j label6
label85:
	mv a1, zero
	j label16
label86:
	mv a0, zero
	mv a1, zero
	j label13
label16:
	mv a0, a1
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s5, 16(sp)
	ld s0, 24(sp)
	ld s1, 32(sp)
	ld s2, 40(sp)
	ld s3, 48(sp)
	addi sp, sp, 56
	ret
label13:
	sh2add a3, a0, s1
	addiw a0, a0, 1
	lw a2, 0(a3)
	max a1, a1, a2
	bge s0, a0, label13
	j label16
