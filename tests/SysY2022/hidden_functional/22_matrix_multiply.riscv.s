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
	sd s0, 88(sp)
	sd s5, 80(sp)
	sd s4, 72(sp)
	sd s6, 64(sp)
	sd s1, 56(sp)
	sd s3, 48(sp)
	sd s2, 40(sp)
	sd s7, 32(sp)
	sd s8, 24(sp)
	sd s9, 16(sp)
	sd s10, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s0, a0
	jal getint
	mv s2, zero
	addiw s4, a0, -4
	mv s5, a0
pcrel261:
	auipc a0, %pcrel_hi(a)
	addi s6, a0, %pcrel_lo(pcrel261)
pcrel262:
	auipc a0, %pcrel_hi(b)
	addi s3, a0, %pcrel_lo(pcrel262)
pcrel263:
	auipc a0, %pcrel_hi(res)
	addi s1, a0, %pcrel_lo(pcrel263)
	bgt s0, zero, label4
label8:
	jal getint
	mv s7, a0
	jal getint
	mv s8, zero
	mv s2, a0
	bgt s7, zero, label33
	mv a2, zero
	li a1, 400
	mv a0, zero
	mv a1, s6
	mv a3, s1
	bgt s0, zero, label79
	mv s3, zero
	j label15
.p2align 2
label79:
	mv a0, zero
	bgt s2, zero, label23
	addiw a2, a2, 1
	li a1, 400
	mul a0, a2, a1
	add a1, s6, a0
	add a3, s1, a0
	bgt s0, a2, label79
	mv s3, zero
	bgt s0, zero, label16
	j label15
.p2align 2
label23:
	bgt s5, zero, label25
	addiw a0, a0, 1
	bgt s2, a0, label23
	addiw a2, a2, 1
	li a1, 400
	mul a0, a2, a1
	add a1, s6, a0
	add a3, s1, a0
	bgt s0, a2, label79
	mv s3, zero
	bgt s0, zero, label16
	j label15
.p2align 2
label224:
	mv a4, a5
	mv a5, zero
	j label29
.p2align 2
label25:
	sh2add a4, a0, a3
	li t0, 4
	lw a5, 0(a4)
	bgt s5, t0, label112
	j label224
.p2align 2
label29:
	li t0, 400
	sh2add t3, a5, a1
	mul t1, a5, t0
	addiw a5, a5, 1
	add t2, s3, t1
	lw t1, 0(t3)
	sh2add t0, a0, t2
	lw t2, 0(t0)
	mulw t0, t1, t2
	addw a4, a4, t0
	bgt s5, a5, label29
	sh2add t0, a0, a3
	sw a4, 0(t0)
	addiw a0, a0, 1
	bgt s2, a0, label23
	addiw a2, a2, 1
	li a1, 400
	mul a0, a2, a1
	add a1, s6, a0
	add a3, s1, a0
	bgt s0, a2, label79
	mv s3, zero
	bgt s0, zero, label16
	j label15
.p2align 2
label112:
	mv a4, zero
.p2align 2
label26:
	li t2, 400
	mul t1, a4, t2
	add t0, s3, t1
	addi t6, t0, 400
	sh2add t1, a4, a1
	sh2add t3, a0, t0
	lw t2, 0(t1)
	sh2add t4, a0, t6
	lw t3, 0(t3)
	lw t5, 4(t1)
	lw t6, 0(t4)
	mulw t3, t2, t3
	mulw t4, t5, t6
	addi t5, t0, 800
	addw t2, t4, t3
	lw t3, 8(t1)
	sh2add t4, a0, t5
	lw t5, 0(t4)
	lw t1, 12(t1)
	mulw t4, t3, t5
	addi t3, t0, 1200
	addw t2, t2, t4
	sh2add t0, a0, t3
	lw t3, 0(t0)
	mulw t0, t1, t3
	addw t1, t2, t0
	addiw t0, a4, 4
	addw a5, a5, t1
	bgt s4, t0, label151
	mv a4, a5
	mv a5, t0
	j label29
.p2align 2
label151:
	mv a4, t0
	j label26
.p2align 2
label16:
	li a1, 400
	mul a0, s3, a1
	add s4, s1, a0
	ble s2, zero, label17
	mv s5, zero
	j label18
.p2align 2
label17:
	li a0, 10
	jal putch
	addiw s3, s3, 1
	bgt s0, s3, label16
	j label15
.p2align 2
label18:
	sh2add a1, s5, s4
	lw a0, 0(a1)
	jal putint
	li a0, 32
	jal putch
	addiw s5, s5, 1
	bgt s2, s5, label18
	j label17
.p2align 2
label4:
	li a0, 400
	mul a1, s2, a0
	add s7, s6, a1
	bgt s5, zero, label55
	addiw s2, s2, 1
	bgt s0, s2, label4
	j label8
.p2align 2
label55:
	mv s8, zero
	j label5
.p2align 2
label33:
	li a0, 400
	mul a1, s8, a0
	add s9, s3, a1
	bgt s2, zero, label173
	addiw s8, s8, 1
	bgt s7, s8, label33
	mv a2, zero
	li a1, 400
	mv a0, zero
	mv a1, s6
	mv a3, s1
	bgt s0, zero, label79
	mv s3, zero
	j label15
.p2align 2
label5:
	jal getint
	sh2add a1, s8, s7
	addiw s8, s8, 1
	sw a0, 0(a1)
	bgt s5, s8, label5
	addiw s2, s2, 1
	bgt s0, s2, label4
	j label8
label15:
	mv a0, zero
	ld ra, 0(sp)
	ld s10, 8(sp)
	ld s9, 16(sp)
	ld s8, 24(sp)
	ld s7, 32(sp)
	ld s2, 40(sp)
	ld s3, 48(sp)
	ld s1, 56(sp)
	ld s6, 64(sp)
	ld s4, 72(sp)
	ld s5, 80(sp)
	ld s0, 88(sp)
	addi sp, sp, 96
	ret
.p2align 2
label173:
	mv s10, zero
.p2align 2
label34:
	jal getint
	sh2add a1, s10, s9
	addiw s10, s10, 1
	sw a0, 0(a1)
	bgt s2, s10, label34
	addiw s8, s8, 1
	bgt s7, s8, label33
	mv a2, zero
	li a1, 400
	mv a0, zero
	mv a1, s6
	mv a3, s1
	bgt s0, zero, label79
	mv s3, zero
	j label15
