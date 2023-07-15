.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
	addi sp, sp, -64
	li a0, 4
	li a1, 3
	sd s0, 40(sp)
	addi s0, sp, 0
	sd s1, 56(sp)
	sd ra, 48(sp)
	sw a0, 0(sp)
	li a0, 9
	sw a1, 4(sp)
	li a1, 2
	sw a0, 8(sp)
	li a0, 6
	sw a1, 12(sp)
	li a1, 1
	sw zero, 16(sp)
	sw a1, 20(sp)
	li a1, 5
	sw a0, 24(sp)
	li a0, 7
	sw a1, 28(sp)
	li a1, 8
	sw a0, 32(sp)
	mv a0, zero
	sw a1, 36(sp)
	li a1, 9
	bge zero, a1, label30
	li a1, 1
	mv a4, zero
	mv a3, a1
	addiw a2, a1, 4
	li a5, 10
	bge a2, a5, label9
	mv a5, s0
	sh2add t2, a1, s0
	lw t0, 0(s0)
	mv a5, a1
	lw t1, 0(t2)
	bgt t0, t1, label123
	mv a5, zero
	mv t1, s0
	addiw t0, a1, 1
	lw a4, 0(s0)
	sh2add t2, t0, s0
	lw t1, 0(t2)
	bgt a4, t1, label125
	mv t0, zero
	mv t1, s0
	addiw a4, a1, 2
	lw a5, 0(s0)
	sh2add t2, a4, s0
	lw t1, 0(t2)
	bgt a5, t1, label127
	mv a4, zero
	mv t0, s0
	addiw a3, a1, 3
	lw a5, 0(s0)
	sh2add t2, a3, s0
	mv t0, a3
	lw t1, 0(t2)
	bgt a5, t1, label129
	mv t0, zero
	mv a3, a2
	addiw a2, a2, 4
	li a5, 10
	bge a2, a5, label9
	j label137
label123:
	sh2add t1, a5, s0
	addiw t0, a3, 1
	lw a4, 0(t1)
	sh2add t2, t0, s0
	lw t1, 0(t2)
	bgt a4, t1, label125
	mv t0, a5
label125:
	sh2add t1, t0, s0
	addiw a4, a3, 2
	lw a5, 0(t1)
	sh2add t2, a4, s0
	lw t1, 0(t2)
	bgt a5, t1, label127
	mv a4, t0
label127:
	sh2add t0, a4, s0
	addiw a3, a3, 3
	lw a5, 0(t0)
	sh2add t2, a3, s0
	mv t0, a3
	lw t1, 0(t2)
	bgt a5, t1, label129
	mv t0, a4
label129:
	mv a3, a2
	mv a4, t0
	addiw a2, a2, 4
	li a5, 10
	bge a2, a5, label9
label137:
	sh2add a5, a4, s0
	sh2add t2, a3, s0
	lw t0, 0(a5)
	mv a5, a3
	lw t1, 0(t2)
	bgt t0, t1, label123
label142:
	mv a5, a4
	sh2add t1, a4, s0
	addiw t0, a3, 1
	lw a4, 0(t1)
	sh2add t2, t0, s0
	lw t1, 0(t2)
	bgt a4, t1, label125
	mv t0, a5
	sh2add t1, a5, s0
	addiw a4, a3, 2
	lw a5, 0(t1)
	sh2add t2, a4, s0
	lw t1, 0(t2)
	bgt a5, t1, label127
	mv a4, t0
	sh2add t0, t0, s0
	addiw a3, a3, 3
	lw a5, 0(t0)
	sh2add t2, a3, s0
	mv t0, a3
	lw t1, 0(t2)
	bgt a5, t1, label129
	mv t0, a4
	mv a3, a2
	addiw a2, a2, 4
	li a5, 10
	bge a2, a5, label9
	sh2add a5, a4, s0
	sh2add t2, a3, s0
	lw t0, 0(a5)
	mv a5, a3
	lw t1, 0(t2)
	bgt t0, t1, label123
	j label142
label30:
	mv s1, zero
	j label14
label9:
	sh2add a2, a4, s0
	sh2add t1, a3, s0
	lw a5, 0(a2)
	mv a2, a3
	lw t0, 0(t1)
	bgt a5, t0, label131
	mv a2, a4
label131:
	addiw a3, a3, 1
	li a4, 10
	bge a3, a4, label12
	mv a4, a2
	sh2add a2, a2, s0
	sh2add t1, a3, s0
	lw a5, 0(a2)
	mv a2, a3
	lw t0, 0(t1)
	bgt a5, t0, label131
	mv a2, a4
	addiw a3, a3, 1
	li a4, 10
	bge a3, a4, label12
	mv a4, a2
	sh2add a2, a2, s0
	sh2add t1, a3, s0
	lw a5, 0(a2)
	mv a2, a3
	lw t0, 0(t1)
	bgt a5, t0, label131
	mv a2, a4
	addiw a3, a3, 1
	li a4, 10
	bge a3, a4, label12
	mv a4, a2
	sh2add a2, a2, s0
	sh2add t1, a3, s0
	lw a5, 0(a2)
	mv a2, a3
	lw t0, 0(t1)
	bgt a5, t0, label131
	mv a2, a4
	addiw a3, a3, 1
	li a4, 10
	bge a3, a4, label12
	mv a4, a2
	sh2add a2, a2, s0
	sh2add t1, a3, s0
	lw a5, 0(a2)
	mv a2, a3
	lw t0, 0(t1)
	bgt a5, t0, label131
label179:
	mv a2, a4
	addiw a3, a3, 1
	li a4, 10
	bge a3, a4, label12
	mv a4, a2
	sh2add a2, a2, s0
	sh2add t1, a3, s0
	lw a5, 0(a2)
	mv a2, a3
	lw t0, 0(t1)
	bgt a5, t0, label131
	j label179
label12:
	beq a0, a2, label88
	sh2add a2, a2, s0
	sh2add a0, a0, s0
	lw a3, 0(a2)
	lw a4, 0(a0)
	sw a4, 0(a2)
	sw a3, 0(a0)
	mv a0, a1
	li a1, 9
	bge a0, a1, label30
	addiw a1, a0, 1
	mv a4, a0
	mv a3, a1
	addiw a2, a1, 4
	li a5, 10
	bge a2, a5, label9
	sh2add a5, a0, s0
	sh2add t2, a1, s0
	lw t0, 0(a5)
	mv a5, a1
	lw t1, 0(t2)
	bgt t0, t1, label123
	mv a5, a0
	sh2add t1, a0, s0
	addiw t0, a1, 1
	lw a4, 0(t1)
	sh2add t2, t0, s0
	lw t1, 0(t2)
	bgt a4, t1, label125
	mv t0, a0
	sh2add t1, a0, s0
	addiw a4, a1, 2
	lw a5, 0(t1)
	sh2add t2, a4, s0
	lw t1, 0(t2)
	bgt a5, t1, label127
	mv a4, a0
	sh2add t0, a0, s0
	addiw a3, a1, 3
	lw a5, 0(t0)
	sh2add t2, a3, s0
	mv t0, a3
	lw t1, 0(t2)
	bgt a5, t1, label129
	mv t0, a0
	mv a3, a2
	addiw a2, a2, 4
	li a5, 10
	bge a2, a5, label9
	j label137
label88:
	mv a0, a1
	li a1, 9
	bge a0, a1, label30
	addiw a1, a0, 1
	mv a4, a0
	mv a3, a1
	addiw a2, a1, 4
	li a5, 10
	bge a2, a5, label9
	sh2add a5, a0, s0
	sh2add t2, a1, s0
	lw t0, 0(a5)
	mv a5, a1
	lw t1, 0(t2)
	bgt t0, t1, label123
	mv a5, a0
	sh2add t1, a0, s0
	addiw t0, a1, 1
	lw a4, 0(t1)
	sh2add t2, t0, s0
	lw t1, 0(t2)
	bgt a4, t1, label125
	mv t0, a0
	sh2add t1, a0, s0
	addiw a4, a1, 2
	lw a5, 0(t1)
	sh2add t2, a4, s0
	lw t1, 0(t2)
	bgt a5, t1, label127
	mv a4, a0
	sh2add t0, a0, s0
	addiw a3, a1, 3
	lw a5, 0(t0)
	sh2add t2, a3, s0
	mv t0, a3
	lw t1, 0(t2)
	bgt a5, t1, label129
	mv t0, a0
	mv a3, a2
	addiw a2, a2, 4
	li a5, 10
	bge a2, a5, label9
	sh2add a5, a0, s0
	sh2add t2, a3, s0
	lw t0, 0(a5)
	mv a5, a3
	lw t1, 0(t2)
	bgt t0, t1, label123
	j label142
label14:
	sh2add a1, s1, s0
	lw a0, 0(a1)
	jal putint
	li a0, 10
	jal putch
	li a0, 10
	addiw s1, s1, 1
	bge s1, a0, label16
	j label14
label16:
	mv a0, zero
	ld ra, 48(sp)
	ld s1, 56(sp)
	ld s0, 40(sp)
	addi sp, sp, 64
	ret
