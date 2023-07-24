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
pcrel233:
	auipc a0, %pcrel_hi(a)
	addi s5, a0, %pcrel_lo(pcrel233)
pcrel234:
	auipc a0, %pcrel_hi(b)
	addi s4, a0, %pcrel_lo(pcrel234)
pcrel235:
	auipc a0, %pcrel_hi(res)
	addi s1, a0, %pcrel_lo(pcrel235)
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
label19:
.p2align 2
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
label21:
.p2align 2
	sh2add a4, a0, a3
	mv t0, zero
	lw t1, 0(a4)
label22:
.p2align 2
	addiw a4, t0, 4
	ble s3, a4, label26
	li t2, 400
	mul t4, t0, t2
	sh2add t0, t0, a1
	add a5, s4, t4
	lw t2, 0(t0)
	addi t6, a5, 400
	sh2add t3, a0, a5
	sh2add t4, a0, t6
	lw t3, 0(t3)
	lw t5, 4(t0)
	lw t6, 0(t4)
	mulw t2, t2, t3
	addw t3, t1, t2
	mulw t4, t5, t6
	addw t1, t4, t3
	lw t3, 8(t0)
	addi t4, a5, 800
	sh2add t2, a0, t4
	lw t4, 0(t2)
	mulw t2, t3, t4
	addi t3, a5, 1200
	addw t1, t1, t2
	lw a5, 12(t0)
	sh2add t2, a0, t3
	lw t3, 0(t2)
	mulw t0, a5, t3
	addw t1, t1, t0
	mv t0, a4
	j label22
label26:
.p2align 2
	li a4, 400
	sh2add t3, t0, a1
	mul a5, t0, a4
	addiw t0, t0, 1
	add t2, s4, a5
	lw a5, 0(t3)
	sh2add a4, a0, t2
	lw t2, 0(a4)
	mulw a4, a5, t2
	addw t1, t1, a4
	bgt s3, t0, label26
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
label34:
.p2align 2
	li a1, 400
	mul a0, s3, a1
	add s4, s1, a0
	ble s2, zero, label37
	mv s5, zero
label35:
.p2align 2
	sh2add a1, s5, s4
	lw a0, 0(a1)
	jal putint
	li a0, 32
	jal putch
	addiw s5, s5, 1
	bgt s2, s5, label35
label37:
.p2align 2
	li a0, 10
	jal putch
	addiw s3, s3, 1
	bgt s0, s3, label34
	j label33
label4:
.p2align 2
	li a0, 400
	mul a1, s2, a0
	add s6, s5, a1
	bgt s3, zero, label54
	addiw s2, s2, 1
	bgt s0, s2, label4
	j label8
label54:
.p2align 2
	mv s7, zero
label5:
.p2align 2
	jal getint
	sh2add a1, s7, s6
	addiw s7, s7, 1
	sw a0, 0(a1)
	bgt s3, s7, label5
	addiw s2, s2, 1
	bgt s0, s2, label4
	j label8
label11:
.p2align 2
	li a0, 400
	mul a1, s7, a0
	add s8, s4, a1
	bgt s2, zero, label75
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
label75:
.p2align 2
	mv s9, zero
label12:
.p2align 2
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
label92:
.p2align 2
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
