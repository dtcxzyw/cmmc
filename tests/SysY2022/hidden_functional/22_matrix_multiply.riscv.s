.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
a:
	.zero	40000
.align 8
b:
	.zero	40000
.align 8
res:
	.zero	40000
.text
.globl main
main:
.p2align 2
	addi sp, sp, -96
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s4, 24(sp)
	sd s6, 32(sp)
	sd s1, 40(sp)
	sd s2, 48(sp)
	sd s7, 56(sp)
	sd s3, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	jal getint
	mv s0, a0
	jal getint
	mv s7, zero
	addiw s4, a0, -4
	mv s5, a0
pcrel234:
	auipc a0, %pcrel_hi(a)
	addi s6, a0, %pcrel_lo(pcrel234)
pcrel235:
	auipc a0, %pcrel_hi(b)
	addi s2, a0, %pcrel_lo(pcrel235)
pcrel236:
	auipc a0, %pcrel_hi(res)
	addi s1, a0, %pcrel_lo(pcrel236)
label2:
	ble s0, s7, label8
.p2align 2
label4:
	li a0, 400
	mul a1, s7, a0
	add s3, s6, a1
	ble s5, zero, label54
	mv s8, zero
.p2align 2
label5:
	jal getint
	sh2add a1, s8, s3
	addiw s8, s8, 1
	sw a0, 0(a1)
	bgt s5, s8, label5
	addiw s7, s7, 1
	bgt s0, s7, label4
label8:
	jal getint
	mv s8, a0
	jal getint
	mv s9, zero
	mv s3, a0
label9:
	bgt s8, s9, label33
label70:
	mv a3, zero
	li a1, 400
	mv a0, zero
	mv a1, s6
	mv a2, s1
	bgt s0, zero, label79
	j label78
.p2align 2
label33:
	li a0, 400
	mul a1, s9, a0
	add s7, s2, a1
	ble s3, zero, label172
	mv s10, zero
.p2align 2
label34:
	jal getint
	sh2add a1, s10, s7
	addiw s10, s10, 1
	sw a0, 0(a1)
	bgt s3, s10, label34
	addiw s9, s9, 1
	bgt s8, s9, label33
	j label70
label78:
	mv s2, zero
	j label13
.p2align 2
label79:
	mv a0, zero
	bgt s3, zero, label23
	j label22
label13:
	ble s0, s2, label15
.p2align 2
label16:
	li a1, 400
	mul a0, s2, a1
	add s4, s1, a0
	ble s3, zero, label17
	mv s5, zero
	j label18
.p2align 2
label17:
	li a0, 10
	jal putch
	addiw s2, s2, 1
	bgt s0, s2, label16
	j label15
.p2align 2
label18:
	sh2add a1, s5, s4
	lw a0, 0(a1)
	jal putint
	li a0, 32
	jal putch
	addiw s5, s5, 1
	bgt s3, s5, label18
	j label17
.p2align 2
label23:
	ble s5, zero, label24
	sh2add t0, a0, a2
	li a4, 4
	lw a5, 0(t0)
	ble s5, a4, label111
	mv a4, zero
.p2align 2
label26:
	li t1, 400
	mul t2, a4, t1
	sh2add t1, a4, a1
	add t0, s2, t2
	addiw a4, a4, 4
	addi t6, t0, 400
	lw t2, 0(t1)
	sh2add t3, a0, t0
	sh2add t5, a0, t6
	lw t3, 0(t3)
	lw t4, 4(t1)
	lw t6, 0(t5)
	mulw t3, t2, t3
	mulw t5, t4, t6
	addw t2, t5, t3
	lw t3, 8(t1)
	addi t5, t0, 800
	sh2add t4, a0, t5
	lw t5, 0(t4)
	addi t4, t0, 1200
	lw t0, 12(t1)
	mulw t6, t3, t5
	sh2add t3, a0, t4
	addw t2, t2, t6
	lw t1, 0(t3)
	mulw t3, t0, t1
	addw t0, t2, t3
	addw a5, a5, t0
	bgt s4, a4, label26
.p2align 2
label29:
	li t0, 400
	sh2add t2, a4, a1
	mul t1, a4, t0
	addiw a4, a4, 1
	add t3, s2, t1
	lw t1, 0(t2)
	sh2add t0, a0, t3
	lw t3, 0(t0)
	mulw t0, t1, t3
	addw a5, a5, t0
	bgt s5, a4, label29
	sh2add t0, a0, a2
	sw a5, 0(t0)
	addiw a0, a0, 1
	bgt s3, a0, label23
	addiw a3, a3, 1
	li a1, 400
	mul a0, a3, a1
	add a1, s6, a0
	add a2, s1, a0
	bgt s0, a3, label79
	j label78
.p2align 2
label24:
	addiw a0, a0, 1
	bgt s3, a0, label23
label22:
	addiw a3, a3, 1
	li a1, 400
	mul a0, a3, a1
	add a1, s6, a0
	add a2, s1, a0
	bgt s0, a3, label79
	j label78
label15:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s4, 24(sp)
	ld s6, 32(sp)
	ld s1, 40(sp)
	ld s2, 48(sp)
	ld s7, 56(sp)
	ld s3, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	addi sp, sp, 96
	ret
label172:
	addiw s9, s9, 1
	j label9
label54:
	addiw s7, s7, 1
	j label2
.p2align 2
label111:
	mv a4, zero
	j label29
