.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -72
	li a3, 3
	li a4, 2
	li a5, 5
	li t0, 8
	addi a0, sp, 32
	sd ra, 0(sp)
	slli a1, a3, 32
	sd s0, 8(sp)
	li a3, 9
	addi a2, a1, 4
	li s0, 10
	sd s1, 16(sp)
	sd s2, 24(sp)
	sd a2, 32(sp)
	slli a2, a4, 32
	li a4, 1
	addi a1, a2, 9
	slli a2, a4, 32
	sd a1, 40(sp)
	slli a4, a5, 32
	li a1, 6
	slli a5, t0, 32
	sd a2, 48(sp)
	addi a2, a4, 6
	addi a4, a5, 7
	sd a2, 56(sp)
	mv a5, zero
	mv a2, a0
	sd a4, 64(sp)
	blt zero, a3, label5
	j label40
.p2align 2
label188:
	mv t3, t2
	sh2add t6, t2, a0
	addiw t5, t1, 1
	lw t4, 0(t6)
	mv t2, t5
	sh2add a6, t5, a0
	lw t6, 0(a6)
	bgt t4, t6, label176
	mv t2, t3
	sh2add t6, t3, a0
	addiw t5, t1, 2
	lw t4, 0(t6)
	mv t3, t5
	sh2add a6, t5, a0
	lw t6, 0(a6)
	bgt t4, t6, label178
	mv t3, t2
	sh2add t6, t2, a0
	addiw t5, t1, 3
	lw t4, 0(t6)
	mv t2, t5
	sh2add a6, t5, a0
	lw t6, 0(a6)
	bgt t4, t6, label180
	mv t2, t3
	addiw t1, t1, 4
	blt t1, a1, label20
	sh2add t0, t1, a0
	sh2add t6, t3, a0
	mv t2, t1
	lw t4, 0(t6)
	lw t5, 0(t0)
	bgt t4, t5, label172
.p2align 2
label190:
	mv t2, t3
	addiw t1, t1, 1
	blt t1, s0, label14
	bne a5, t3, label196
.p2align 2
label13:
	addi a2, a2, 4
	mv a5, a4
	bge a4, a3, label40
.p2align 2
label5:
	addiw t0, a5, 5
	addiw a4, a5, 1
	bge t0, s0, label6
	sh2add t0, a4, a0
	mv t2, a5
	mv t1, a4
	sh2add t6, a5, a0
	mv t3, a4
	lw t4, 0(t6)
	lw t5, 0(t0)
	bgt t4, t5, label174
	mv t3, a5
	j label174
.p2align 2
label176:
	sh2add t6, t2, a0
	addiw t5, t1, 2
	lw t4, 0(t6)
	mv t3, t5
	sh2add a6, t5, a0
	lw t6, 0(a6)
	bgt t4, t6, label178
	mv t3, t2
.p2align 2
label178:
	sh2add t6, t3, a0
	addiw t5, t1, 3
	lw t4, 0(t6)
	mv t2, t5
	sh2add a6, t5, a0
	lw t6, 0(a6)
	bgt t4, t6, label180
	mv t2, t3
.p2align 2
label180:
	addiw t1, t1, 4
	bge t1, a1, label110
.p2align 2
label20:
	addi t0, t0, 16
	sh2add t6, t2, a0
	mv t3, t1
	lw t4, 0(t6)
	lw t5, 0(t0)
	ble t4, t5, label188
.p2align 2
label174:
	sh2add t6, t3, a0
	addiw t5, t1, 1
	lw t4, 0(t6)
	mv t2, t5
	sh2add a6, t5, a0
	lw t6, 0(a6)
	bgt t4, t6, label176
	mv t2, t3
	j label176
.p2align 2
label110:
	sh2add t0, t1, a0
	mv t3, t2
	sh2add t6, t2, a0
	mv t2, t1
	lw t4, 0(t6)
	lw t5, 0(t0)
	ble t4, t5, label190
.p2align 2
label172:
	addiw t1, t1, 1
	bge t1, s0, label11
.p2align 2
label14:
	addi t0, t0, 4
	mv t3, t2
	sh2add t6, t2, a0
	mv t2, t1
	lw t4, 0(t6)
	lw t5, 0(t0)
	bgt t4, t5, label172
	mv t2, t3
	addiw t1, t1, 1
	blt t1, s0, label14
	beq a5, t3, label13
	sh2add a5, t3, a0
	lw t0, 0(a5)
	lw t1, 0(a2)
	sw t1, 0(a5)
	mv a5, a4
	sw t0, 0(a2)
	addi a2, a2, 4
	blt a4, a3, label5
	j label40
.p2align 2
label11:
	beq a5, t2, label13
	sh2add a5, t2, a0
	lw t0, 0(a5)
	lw t1, 0(a2)
	sw t1, 0(a5)
	mv a5, a4
	sw t0, 0(a2)
	addi a2, a2, 4
	blt a4, a3, label5
	j label40
label6:
	sh2add t0, a4, a0
	mv t1, a4
	mv t3, a5
	sh2add t6, a5, a0
	mv t2, a4
	lw t4, 0(t6)
	lw t5, 0(t0)
	bgt t4, t5, label172
	mv t2, a5
	j label172
label40:
	mv s1, a0
	mv s2, zero
	j label23
.p2align 2
label26:
	addi s1, s1, 4
.p2align 2
label23:
	lw a0, 0(s1)
	jal putint
	mv a0, s0
	jal putch
	addiw s2, s2, 1
	blt s2, s0, label26
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 72
	ret
label196:
	sh2add a5, t2, a0
	lw t0, 0(a5)
	lw t1, 0(a2)
	sw t1, 0(a5)
	mv a5, a4
	sw t0, 0(a2)
	addi a2, a2, 4
	blt a4, a3, label5
	j label40
