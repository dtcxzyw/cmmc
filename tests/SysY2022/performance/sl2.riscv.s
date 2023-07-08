.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
x:
	.zero	864000000
.text
.globl main
main:
	addi sp, sp, -64
	sd s1, 56(sp)
	sd s6, 48(sp)
	sd s2, 40(sp)
	sd s0, 32(sp)
	sd s5, 24(sp)
	sd s3, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	jal getint
	addiw s2, a0, -1
	mv s1, a0
	jal getint
	mv s0, a0
	li a0, 13
	jal _sysy_starttime
	mv a2, zero
pcrel296:
	auipc a0, %pcrel_hi(x)
	addi s3, a0, %pcrel_lo(pcrel296)
	li a0, 1440000
	mul a0, zero, a0
	add a1, s3, a0
	ble s1, zero, label38
	mv a3, zero
	ble s1, zero, label18
	ble s1, zero, label20
	li a0, 2400
	mv a5, zero
	mul a0, zero, a0
	add a0, a1, a0
	addiw a4, zero, 4
	ble s1, a4, label197
	sh2add a5, zero, a0
	li t0, 1
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label197
	sh2add a5, a5, a0
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label197
	sh2add a5, a5, a0
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label197
	j label289
label38:
	li s5, 1
	mv a0, s5
	li a2, 1440000
	sub a3, zero, a2
	mul a1, s5, a2
	add a1, s3, a1
	add a2, a1, a2
	add s4, a1, a3
	addiw a3, s5, 1
	ble s2, s5, label7
	li t2, 1
	ble s2, t2, label59
	j label10
label289:
	sh2add a5, a5, a0
	li t0, 1
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label197
	j label289
label197:
	mv a4, a5
label24:
	sh2add a5, a4, a0
	li t0, 1
	addiw a4, a4, 1
	sw t0, 0(a5)
	ble s1, a4, label20
	j label24
label59:
	mv s5, t2
	mv a0, a3
	li a2, 1440000
	sub a3, zero, a2
	mul a1, a0, a2
	add a1, s3, a1
	add a2, a1, a2
	add s4, a1, a3
	addiw a3, a0, 1
	ble s2, a0, label7
	li t2, 1
	ble s2, t2, label59
	j label10
label13:
	sh2add t4, t3, t1
	sh2add t5, t3, a5
	lw t4, 0(t4)
	lw t5, 0(t5)
	addw t4, t4, t5
	sh2add t5, t3, a4
	lw t5, 0(t5)
	addw t4, t4, t5
	sh2add t5, t3, a0
	lw t5, 0(t5)
	addw t5, t4, t5
	sh2add t4, t3, t2
	addiw t3, t3, 1
	lw t6, -4(t4)
	addw t5, t5, t6
	lw t6, 4(t4)
	addw t5, t5, t6
	divw t5, t5, s0
	sw t5, 0(t4)
	ble s2, t3, label106
	j label13
label106:
	mv t2, t0
	ble s2, t0, label59
label10:
	addiw t0, t2, 1
	li t3, 2400
	li a4, -4800
	mul t1, t2, t3
	mul a5, t2, t3
	add t1, s4, t1
	mul a0, t0, t3
	add a5, a2, a5
	mul t2, t2, t3
	add a0, a1, a0
	li t3, 1
	add t2, a1, t2
	add a4, a0, a4
	ble s2, t3, label72
	li t4, 1
	addiw t3, t4, 4
	ble s2, t3, label77
	j label15
label72:
	mv t2, t0
	ble s2, t0, label59
	j label10
label77:
	mv t3, t4
	j label13
label15:
	sh2add t5, t4, t1
	sh2add t6, t4, a5
	lw a6, 0(t5)
	lw a7, 0(t6)
	addw a7, a6, a7
	sh2add a6, t4, a4
	lw s5, 0(a6)
	addw s5, a7, s5
	sh2add a7, t4, a0
	sh2add t4, t4, t2
	lw s6, 0(a7)
	addw s5, s5, s6
	lw s6, -4(t4)
	addw s5, s5, s6
	lw s6, 4(t4)
	addw s5, s5, s6
	divw s5, s5, s0
	sw s5, 0(t4)
	lw s5, 4(t5)
	lw s6, 4(t6)
	addw s5, s5, s6
	lw s6, 4(a6)
	addw s5, s5, s6
	lw s6, 4(a7)
	addw s5, s5, s6
	lw s6, 0(t4)
	addw s5, s5, s6
	lw s6, 8(t4)
	addw s5, s5, s6
	divw s5, s5, s0
	sw s5, 4(t4)
	lw s5, 8(t5)
	lw s6, 8(t6)
	addw s5, s5, s6
	lw s6, 8(a6)
	addw s5, s5, s6
	lw s6, 8(a7)
	addw s5, s5, s6
	lw s6, 4(t4)
	addw s5, s5, s6
	lw s6, 12(t4)
	addw s5, s5, s6
	divw s5, s5, s0
	sw s5, 8(t4)
	lw t5, 12(t5)
	lw t6, 12(t6)
	addw t5, t5, t6
	lw t6, 12(a6)
	addw t5, t5, t6
	lw t6, 12(a7)
	addw t5, t5, t6
	lw t6, 8(t4)
	addw t5, t5, t6
	lw t6, 16(t4)
	addw t5, t5, t6
	divw t5, t5, s0
	sw t5, 12(t4)
	mv t4, t3
	addiw t3, t3, 4
	ble s2, t3, label77
	j label15
label20:
	addiw a3, a3, 1
	ble s1, a3, label18
	ble s1, zero, label20
	li a0, 2400
	mv a5, zero
	mul a0, a3, a0
	add a0, a1, a0
	addiw a4, zero, 4
	ble s1, a4, label197
	sh2add a5, zero, a0
	li t0, 1
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label197
	sh2add a5, a5, a0
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label197
	sh2add a5, a5, a0
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label197
	j label289
label18:
	addiw a2, a2, 1
	li a0, 1440000
	mul a0, a2, a0
	add a1, s3, a0
	ble s1, a2, label38
	mv a3, zero
	ble s1, zero, label18
	ble s1, zero, label20
	li a0, 2400
	mv a5, zero
	mul a0, zero, a0
	add a0, a1, a0
	addiw a4, zero, 4
	ble s1, a4, label197
	sh2add a5, zero, a0
	li t0, 1
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label197
	sh2add a5, a5, a0
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label197
	sh2add a5, a5, a0
	sw t0, 0(a5)
	sw t0, 4(a5)
	sw t0, 8(a5)
	sw t0, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s1, a4, label197
	j label289
label7:
	li a0, 53
	jal _sysy_stoptime
	mv a0, s1
	mv a1, s3
	jal putarray
	li s0, 2400
	li a1, 1440000
	srliw a0, s1, 31
	add a0, s1, a0
	sraiw a0, a0, 1
	mul a1, a0, a1
	mul a0, a0, s0
	add a1, s3, a1
	add a1, a1, a0
	mv a0, s1
	jal putarray
	addiw a0, s5, -1
	mul a0, a0, s0
	add a1, s4, a0
	mv a0, s1
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s5, 24(sp)
	ld s0, 32(sp)
	ld s2, 40(sp)
	ld s6, 48(sp)
	ld s1, 56(sp)
	addi sp, sp, 64
	ret
