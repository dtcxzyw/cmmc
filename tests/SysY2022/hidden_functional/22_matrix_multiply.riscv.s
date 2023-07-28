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
pcrel251:
	auipc a0, %pcrel_hi(a)
	addi s5, a0, %pcrel_lo(pcrel251)
pcrel252:
	auipc a0, %pcrel_hi(b)
	addi s4, a0, %pcrel_lo(pcrel252)
pcrel253:
	auipc a0, %pcrel_hi(res)
	addi s1, a0, %pcrel_lo(pcrel253)
	ble s0, zero, label8
.p2align 2
label4:
	li a0, 400
	mul a1, s2, a0
	add s6, s5, a1
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
	ble s0, zero, label19
.p2align 2
label20:
	li a1, 400
	mul a0, s3, a1
	add s4, s1, a0
	ble s2, zero, label23
	mv s5, zero
	j label21
.p2align 2
label27:
	bgt s3, zero, label28
	addiw a0, a0, 1
	bgt s2, a0, label27
	addiw a2, a2, 1
	li a1, 400
	mul a0, a2, a1
	add a1, s5, a0
	add a3, s1, a0
	bgt s0, a2, label92
	mv s3, zero
	bgt s0, zero, label20
	j label19
.p2align 2
label28:
	sh2add a4, a0, a3
	li t0, 4
	lw a5, 0(a4)
	bgt s3, t0, label124
	mv a4, a5
	mv a5, zero
	j label32
.p2align 2
label124:
	mv a4, zero
.p2align 2
label29:
	li t2, 400
	mul t0, a4, t2
	add t1, s4, t0
	addi t6, t1, 400
	sh2add t0, a4, a1
	sh2add t3, a0, t1
	lw t2, 0(t0)
	sh2add t4, a0, t6
	lw t3, 0(t3)
	lw t5, 4(t0)
	lw t6, 0(t4)
	mulw t3, t2, t3
	mulw t4, t5, t6
	addi t5, t1, 800
	addw t2, t4, t3
	lw t3, 8(t0)
	sh2add t4, a0, t5
	lw t5, 0(t4)
	lw t0, 12(t0)
	mulw t4, t3, t5
	addi t3, t1, 1200
	addw t2, t2, t4
	sh2add t1, a0, t3
	lw t3, 0(t1)
	mulw t1, t0, t3
	addw t0, t2, t1
	addiw t1, a4, 8
	addw a5, a5, t0
	addiw t0, a4, 4
	bgt s3, t1, label164
	mv a4, a5
	mv a5, t0
	j label32
.p2align 2
label164:
	mv a4, t0
	j label29
.p2align 2
label32:
	li t0, 400
	mul t2, a5, t0
	add t1, s4, t2
	sh2add t2, a5, a1
	sh2add t0, a0, t1
	addiw a5, a5, 1
	lw t1, 0(t2)
	lw t3, 0(t0)
	mulw t0, t1, t3
	addw a4, a4, t0
	bgt s3, a5, label32
	sh2add t0, a0, a3
	sw a4, 0(t0)
	addiw a0, a0, 1
	bgt s2, a0, label27
	addiw a2, a2, 1
	li a1, 400
	mul a0, a2, a1
	add a1, s5, a0
	add a3, s1, a0
	bgt s0, a2, label92
	mv s3, zero
	bgt s0, zero, label20
	j label19
.p2align 2
label21:
	sh2add a1, s5, s4
	lw a0, 0(a1)
	jal putint
	li a0, 32
	jal putch
	addiw s5, s5, 1
	bgt s2, s5, label21
.p2align 2
label23:
	li a0, 10
	jal putch
	addiw s3, s3, 1
	bgt s0, s3, label20
	j label19
.p2align 2
label11:
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
	j label19
.p2align 2
label75:
	mv s9, zero
	j label12
.p2align 2
label92:
	mv a0, zero
	bgt s2, zero, label27
	addiw a2, a2, 1
	li a1, 400
	mul a0, a2, a1
	add a1, s5, a0
	add a3, s1, a0
	bgt s0, a2, label92
	mv s3, zero
	bgt s0, zero, label20
	j label19
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
label19:
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
