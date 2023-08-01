.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -72
	li a0, 4
	li a1, 3
	li a2, 9
	li a4, 7
	li a3, 8
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, sp, 32
	sd s1, 16(sp)
	li s1, 10
	sd s2, 24(sp)
	sw a0, 32(sp)
	li a0, 2
	sw a1, 36(sp)
	li a1, 1
	sw a2, 40(sp)
	sw a0, 44(sp)
	li a0, 6
	sw zero, 48(sp)
	sw a1, 52(sp)
	li a1, 5
	sw a0, 56(sp)
	sw a1, 60(sp)
	mv a1, zero
	sw a4, 64(sp)
	sw a3, 68(sp)
	blt zero, a2, label4
label28:
	mv s2, zero
	j label13
.p2align 2
label4:
	addiw a4, a1, 5
	addiw a3, a1, 1
	bge a4, s1, label34
	mv t0, a1
	mv a4, a3
	sh2add a5, a1, s0
	sh2add t3, a3, s0
	lw t1, 0(a5)
	mv a5, a3
	lw t2, 0(t3)
	bgt t1, t2, label139
	j label138
.p2align 2
label74:
	sh2add a5, t1, s0
	sh2add t3, a4, s0
	lw t0, 0(a5)
	mv a5, a4
	lw t2, 0(t3)
	bgt t0, t2, label147
.p2align 2
label153:
	mv a5, t1
	addiw a4, a4, 1
	blt a4, s1, label88
	beq a1, t1, label163
.p2align 2
label12:
	sh2add a4, a5, s0
	sh2add a1, a1, s0
	lw a5, 0(a4)
	lw t0, 0(a1)
	sw t0, 0(a4)
	sw a5, 0(a1)
	mv a1, a3
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
label138:
	mv a5, t0
.p2align 2
label139:
	sh2add t2, a5, s0
	addiw t0, a4, 1
	lw t1, 0(t2)
	sh2add t3, t0, s0
	lw t2, 0(t3)
	bgt t1, t2, label141
	mv t0, a5
.p2align 2
label141:
	sh2add t2, t0, s0
	addiw a5, a4, 2
	lw t1, 0(t2)
	sh2add t3, a5, s0
	lw t2, 0(t3)
	bgt t1, t2, label143
	mv a5, t0
.p2align 2
label143:
	sh2add t2, a5, s0
	addiw t1, a4, 3
	lw t0, 0(t2)
	sh2add t3, t1, s0
	lw t2, 0(t3)
	bgt t0, t2, label145
	mv t1, a5
.p2align 2
label145:
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
	bgt t1, t2, label139
	mv a5, t0
	sh2add t2, t0, s0
	addiw t0, a4, 1
	lw t1, 0(t2)
	sh2add t3, t0, s0
	lw t2, 0(t3)
	bgt t1, t2, label141
	mv t0, a5
	sh2add t2, a5, s0
	addiw a5, a4, 2
	lw t1, 0(t2)
	sh2add t3, a5, s0
	lw t2, 0(t3)
	bgt t1, t2, label143
	mv a5, t0
	sh2add t2, t0, s0
	addiw t1, a4, 3
	lw t0, 0(t2)
	sh2add t3, t1, s0
	lw t2, 0(t3)
	bgt t0, t2, label145
	mv t1, a5
	addiw a4, a4, 4
	blt a4, a0, label75
	sh2add a5, a5, s0
	sh2add t3, a4, s0
	lw t0, 0(a5)
	mv a5, a4
	lw t2, 0(t3)
	bgt t0, t2, label147
	j label153
label34:
	mv a4, a3
	mv t1, a1
	sh2add a5, a1, s0
	sh2add t3, a3, s0
	lw t0, 0(a5)
	mv a5, a3
	lw t2, 0(t3)
	bgt t0, t2, label147
	mv a5, a1
.p2align 2
label147:
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
	bgt t0, t2, label147
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
label163:
	mv a1, a3
	blt a3, a2, label4
	j label28
