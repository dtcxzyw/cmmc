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
.p2align 2
.globl main
main:
	addi sp, sp, -112
	sd ra, 0(sp)
	sd s5, 8(sp)
	sd s0, 16(sp)
	sd s3, 24(sp)
	sd s7, 32(sp)
	sd s2, 40(sp)
	sd s1, 48(sp)
	sd s6, 56(sp)
	sd s8, 64(sp)
	sd s4, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
	sd a0, 104(sp)
	jal getint
	mv s8, zero
	li s0, 400
pcrel245:
	auipc a1, %pcrel_hi(a)
	addiw s3, a0, -4
	li s6, 4
	mv s5, a0
	addi s7, a1, %pcrel_lo(pcrel245)
pcrel246:
	auipc a0, %pcrel_hi(b)
pcrel247:
	auipc a1, %pcrel_hi(res)
	addi s2, a0, %pcrel_lo(pcrel246)
	addi s1, a1, %pcrel_lo(pcrel247)
label2:
	ld a0, 104(sp)
	ble a0, s8, label8
.p2align 2
label4:
	mul a0, s8, s0
	add s4, s7, a0
	ble s5, zero, label54
	mv s9, zero
.p2align 2
label5:
	jal getint
	sh2add a1, s9, s4
	addiw s9, s9, 1
	sw a0, 0(a1)
	bgt s5, s9, label5
	addiw s8, s8, 1
	ld a0, 104(sp)
	bgt a0, s8, label4
label8:
	jal getint
	mv s9, a0
	jal getint
	mv s10, zero
	mv s4, a0
label9:
	bgt s9, s10, label33
label70:
	mv a3, zero
	mv a0, zero
	mv a1, s7
	mv a2, s1
	ld a0, 104(sp)
	bgt a0, zero, label79
	j label78
.p2align 2
label33:
	mul a0, s10, s0
	add s8, s2, a0
	ble s4, zero, label172
	mv s11, zero
.p2align 2
label34:
	jal getint
	sh2add a1, s11, s8
	addiw s11, s11, 1
	sw a0, 0(a1)
	bgt s4, s11, label34
	addiw s10, s10, 1
	bgt s9, s10, label33
	j label70
label78:
	mv s3, zero
	j label13
.p2align 2
label79:
	mv a0, zero
	bgt s4, zero, label23
	j label22
label13:
	ld a0, 104(sp)
	bgt a0, s3, label16
	j label15
.p2align 2
label23:
	ble s5, zero, label24
	sh2add a4, a0, a2
	lw a5, 0(a4)
	ble s5, s6, label111
	mv a4, zero
.p2align 2
label26:
	mul t1, a4, s0
	add t0, s2, t1
	addi t6, t0, 400
	sh2add t1, a4, a1
	sh2add t3, a0, t0
	addiw a4, a4, 4
	lw t2, 0(t1)
	sh2add t4, a0, t6
	lw t3, 0(t3)
	lw t5, 4(t1)
	lw t6, 0(t4)
	mulw t3, t2, t3
	mulw t4, t5, t6
	addi t5, t0, 800
	addw t2, t4, t3
	lw t4, 8(t1)
	sh2add t3, a0, t5
	lw t5, 0(t3)
	lw t1, 12(t1)
	addi t3, t0, 1200
	sh2add t0, a0, t3
	mulw t6, t4, t5
	lw t4, 0(t0)
	addw t2, t2, t6
	mulw t3, t1, t4
	addw t0, t2, t3
	addw a5, a5, t0
	bgt s3, a4, label26
.p2align 2
label29:
	mul t2, a4, s0
	sh2add t3, a4, a1
	add t1, s2, t2
	addiw a4, a4, 1
	sh2add t0, a0, t1
	lw t1, 0(t3)
	lw t2, 0(t0)
	mulw t0, t1, t2
	addw a5, a5, t0
	bgt s5, a4, label29
	sh2add t0, a0, a2
	sw a5, 0(t0)
	addiw a0, a0, 1
	bgt s4, a0, label23
.p2align 2
label231:
	addiw a3, a3, 1
	mul a0, a3, s0
	add a1, s7, a0
	add a2, s1, a0
	ld a0, 104(sp)
	bgt a0, a3, label79
	j label78
.p2align 2
label24:
	addiw a0, a0, 1
	bgt s4, a0, label23
	j label22
.p2align 2
label16:
	mul a1, s3, s0
	add s2, s1, a1
	ble s4, zero, label17
	mv s5, zero
	j label18
.p2align 2
label17:
	li a0, 10
	jal putch
	addiw s3, s3, 1
	ld a0, 104(sp)
	bgt a0, s3, label16
	j label15
.p2align 2
label18:
	sh2add a1, s5, s2
	lw a0, 0(a1)
	jal putint
	li a0, 32
	jal putch
	addiw s5, s5, 1
	bgt s4, s5, label18
	j label17
.p2align 2
label111:
	mv a4, zero
	mv t2, zero
	mv t3, a1
	mv t1, s2
	li a4, 1
	sh2add t0, a0, s2
	lw t1, 0(a1)
	lw t2, 0(t0)
	mulw t0, t1, t2
	addw a5, a5, t0
	bgt s5, a4, label29
	sh2add t0, a0, a2
	sw a5, 0(t0)
	addiw a0, a0, 1
	bgt s4, a0, label23
	j label231
label22:
	addiw a3, a3, 1
	mul a0, a3, s0
	add a1, s7, a0
	add a2, s1, a0
	ld a0, 104(sp)
	bgt a0, a3, label79
	j label78
label15:
	mv a0, zero
	ld ra, 0(sp)
	ld s5, 8(sp)
	ld s0, 16(sp)
	ld s3, 24(sp)
	ld s7, 32(sp)
	ld s2, 40(sp)
	ld s1, 48(sp)
	ld s6, 56(sp)
	ld s8, 64(sp)
	ld s4, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 112
	ret
label172:
	addiw s10, s10, 1
	j label9
label54:
	addiw s8, s8, 1
	j label2
