.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -72
	li a0, 12884901892
	li a2, 9
	li a1, 4294967296
	li a3, 34359738375
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, sp, 32
	sd s1, 16(sp)
	li s1, 10
	sd s2, 24(sp)
	sd a0, 32(sp)
	li a0, 8589934601
	sd a0, 40(sp)
	li a0, 6
	sd a1, 48(sp)
	li a1, 21474836486
	sd a1, 56(sp)
	mv a1, zero
	sd a3, 64(sp)
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
	bgt t1, t2, label149
	j label148
.p2align 2
label74:
	sh2add a5, t1, s0
	sh2add t3, a4, s0
	lw t0, 0(a5)
	mv a5, a4
	lw t2, 0(t3)
	bgt t0, t2, label157
.p2align 2
label163:
	mv a5, t1
	addiw a4, a4, 1
	blt a4, s1, label88
	beq a1, t1, label173
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
label148:
	mv a5, t0
.p2align 2
label149:
	sh2add t2, a5, s0
	addiw t0, a4, 1
	lw t1, 0(t2)
	sh2add t3, t0, s0
	lw t2, 0(t3)
	bgt t1, t2, label151
	mv t0, a5
.p2align 2
label151:
	sh2add t2, t0, s0
	addiw a5, a4, 2
	lw t1, 0(t2)
	sh2add t3, a5, s0
	lw t2, 0(t3)
	bgt t1, t2, label153
	mv a5, t0
.p2align 2
label153:
	sh2add t2, a5, s0
	addiw t1, a4, 3
	lw t0, 0(t2)
	sh2add t3, t1, s0
	lw t2, 0(t3)
	bgt t0, t2, label155
	mv t1, a5
.p2align 2
label155:
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
	bgt t1, t2, label149
	mv a5, t0
	sh2add t2, t0, s0
	addiw t0, a4, 1
	lw t1, 0(t2)
	sh2add t3, t0, s0
	lw t2, 0(t3)
	bgt t1, t2, label151
	mv t0, a5
	sh2add t2, a5, s0
	addiw a5, a4, 2
	lw t1, 0(t2)
	sh2add t3, a5, s0
	lw t2, 0(t3)
	bgt t1, t2, label153
	mv a5, t0
	sh2add t2, t0, s0
	addiw t1, a4, 3
	lw t0, 0(t2)
	sh2add t3, t1, s0
	lw t2, 0(t3)
	bgt t0, t2, label155
	mv t1, a5
	addiw a4, a4, 4
	blt a4, a0, label75
	sh2add a5, a5, s0
	sh2add t3, a4, s0
	lw t0, 0(a5)
	mv a5, a4
	lw t2, 0(t3)
	bgt t0, t2, label157
	j label163
label34:
	mv a4, a3
	mv t1, a1
	sh2add a5, a1, s0
	sh2add t3, a3, s0
	lw t0, 0(a5)
	mv a5, a3
	lw t2, 0(t3)
	bgt t0, t2, label157
	mv a5, a1
.p2align 2
label157:
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
	bgt t0, t2, label157
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
label173:
	mv a1, a3
	blt a3, a2, label4
	j label28
