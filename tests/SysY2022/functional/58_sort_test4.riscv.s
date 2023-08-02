.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -72
	li a2, 3
	li a4, 1
	li a5, 8
	sd ra, 0(sp)
	slli a1, a2, 32
	sd s0, 8(sp)
	li a2, 9
	addi a0, a1, 4
	addi s0, sp, 32
	sd s1, 16(sp)
	li a1, 2
	li s1, 10
	sd s2, 24(sp)
	sd a0, 32(sp)
	slli a0, a1, 32
	slli a1, a4, 32
	addi a3, a0, 9
	li a4, 5
	li a0, 6
	sd a3, 40(sp)
	sd a1, 48(sp)
	slli a1, a4, 32
	slli a4, a5, 32
	addi a3, a1, 6
	mv a1, zero
	sd a3, 56(sp)
	addi a3, a4, 7
	sd a3, 64(sp)
	blt zero, a2, label4
label28:
	mv s2, zero
	j label13
.p2align 2
label4:
	addiw a5, a1, 5
	addiw a3, a1, 1
	bge a5, s1, label34
	mv t0, a1
	mv a4, a3
	sh2add a5, a1, s0
	sh2add t3, a3, s0
	lw t1, 0(a5)
	mv a5, a3
	lw t2, 0(t3)
	bgt t1, t2, label158
	j label157
.p2align 2
label74:
	sh2add a5, t1, s0
	sh2add t3, a4, s0
	lw t0, 0(a5)
	mv a5, a4
	lw t2, 0(t3)
	bgt t0, t2, label166
.p2align 2
label172:
	mv a5, t1
	addiw a4, a4, 1
	blt a4, s1, label88
	beq a1, t1, label182
.p2align 2
label12:
	sh2add a4, a5, s0
	sh2add t1, a1, s0
	lw t0, 0(a4)
	mv a1, a3
	lw a5, 0(t1)
	sw a5, 0(a4)
	sw t0, 0(t1)
	blt a3, a2, label4
	j label28
.p2align 2
label13:
	sh2add a2, s2, s0
	lw a0, 0(a2)
	jal putint
	mv a0, s1
	jal putch
	addiw s2, s2, 1
	blt s2, s1, label13
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 72
	ret
.p2align 2
label157:
	mv a5, t0
.p2align 2
label158:
	sh2add t3, a5, s0
	addiw t2, a4, 1
	lw t1, 0(t3)
	mv t0, t2
	sh2add t4, t2, s0
	lw t3, 0(t4)
	bgt t1, t3, label160
	mv t0, a5
.p2align 2
label160:
	sh2add t3, t0, s0
	addiw t2, a4, 2
	lw t1, 0(t3)
	mv a5, t2
	sh2add t4, t2, s0
	lw t3, 0(t4)
	bgt t1, t3, label162
	mv a5, t0
.p2align 2
label162:
	sh2add t1, a5, s0
	addiw t2, a4, 3
	lw t0, 0(t1)
	sh2add t4, t2, s0
	mv t1, t2
	lw t3, 0(t4)
	bgt t0, t3, label164
	mv t1, a5
.p2align 2
label164:
	addiw a4, a4, 4
	bge a4, a0, label74
.p2align 2
label75:
	mv t0, t1
	sh2add a5, t1, s0
	sh2add t3, a4, s0
	lw t1, 0(a5)
	mv a5, a4
	lw t2, 0(t3)
	bgt t1, t2, label158
	mv a5, t0
	sh2add t3, t0, s0
	addiw t2, a4, 1
	lw t1, 0(t3)
	mv t0, t2
	sh2add t4, t2, s0
	lw t3, 0(t4)
	bgt t1, t3, label160
	mv t0, a5
	sh2add t3, a5, s0
	addiw t2, a4, 2
	lw t1, 0(t3)
	mv a5, t2
	sh2add t4, t2, s0
	lw t3, 0(t4)
	bgt t1, t3, label162
	mv a5, t0
	sh2add t1, t0, s0
	addiw t2, a4, 3
	lw t0, 0(t1)
	sh2add t4, t2, s0
	mv t1, t2
	lw t3, 0(t4)
	bgt t0, t3, label164
	mv t1, a5
	addiw a4, a4, 4
	blt a4, a0, label75
	sh2add a5, a5, s0
	sh2add t3, a4, s0
	lw t0, 0(a5)
	mv a5, a4
	lw t2, 0(t3)
	bgt t0, t2, label166
	j label172
label34:
	mv a4, a3
	mv t1, a1
	sh2add a5, a1, s0
	sh2add t3, a3, s0
	lw t0, 0(a5)
	mv a5, a3
	lw t2, 0(t3)
	bgt t0, t2, label166
	mv a5, a1
.p2align 2
label166:
	addiw a4, a4, 1
	bge a4, s1, label87
.p2align 2
label88:
	mv t1, a5
	sh2add a5, a5, s0
	sh2add t3, a4, s0
	lw t0, 0(a5)
	mv a5, a4
	lw t2, 0(t3)
	bgt t0, t2, label166
	mv a5, t1
	addiw a4, a4, 1
	blt a4, s1, label88
	bne a1, t1, label12
	mv a1, a3
	blt a3, a2, label4
	j label28
.p2align 2
label87:
	bne a1, a5, label12
	mv a1, a3
	blt a3, a2, label4
	j label28
label182:
	mv a1, a3
	blt a3, a2, label4
	j label28
