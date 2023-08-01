.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -64
	li a1, 4
	li a0, 3
	li a2, 7
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, sp, 24
	sd s1, 16(sp)
	sw a1, 24(sp)
	li a1, 9
	sw a0, 28(sp)
	li a0, 2
	sw a1, 32(sp)
	li a1, 6
	sw a0, 36(sp)
	li a0, 1
	sw zero, 40(sp)
	sw a0, 44(sp)
	li a0, 5
	sw a1, 48(sp)
	li a1, 8
	sw a0, 52(sp)
	mv a0, zero
	sw a2, 56(sp)
	sw a1, 60(sp)
	li a1, 9
	blt zero, a1, label4
label28:
	mv s1, zero
	j label13
.p2align 2
label4:
	addiw a2, a0, 9
	addiw a1, a0, 1
	li a3, 10
	blt a2, a3, label35
	mv a2, a1
	mv a3, a0
	sh2add a4, a0, s0
	sh2add t1, a1, s0
	lw a5, 0(a4)
	mv a4, a1
	lw t0, 0(t1)
	bgt a5, t0, label181
	mv a4, a0
	addiw a2, a1, 1
	li a3, 10
	blt a2, a3, label48
	j label47
.p2align 2
label35:
	mv a4, a0
	mv a2, a1
	sh2add a3, a0, s0
	sh2add t1, a1, s0
	lw a5, 0(a3)
	mv a3, a1
	lw t0, 0(t1)
	bgt a5, t0, label183
	j label202
.p2align 2
label47:
	beq a0, a4, label203
.p2align 2
label9:
	sh2add a2, a4, s0
	sh2add a0, a0, s0
	lw a3, 0(a2)
	lw a4, 0(a0)
	sw a4, 0(a2)
	sw a3, 0(a0)
	mv a0, a1
	li a1, 9
	blt a0, a1, label4
	j label28
.p2align 2
label13:
	sh2add a1, s1, s0
	lw a0, 0(a1)
	jal putint
	li a0, 10
	jal putch
	li a0, 10
	addiw s1, s1, 1
	blt s1, a0, label13
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	addi sp, sp, 64
	ret
.p2align 2
label222:
	mv a3, a4
	j label191
.p2align 2
label183:
	sh2add t0, a3, s0
	addiw a4, a2, 1
	lw a5, 0(t0)
	sh2add t1, a4, s0
	lw t0, 0(t1)
	bgt a5, t0, label185
	mv a4, a3
.p2align 2
label185:
	sh2add t0, a4, s0
	addiw a3, a2, 2
	lw a5, 0(t0)
	sh2add t1, a3, s0
	lw t0, 0(t1)
	bgt a5, t0, label187
	mv a3, a4
.p2align 2
label187:
	sh2add t0, a3, s0
	addiw a4, a2, 3
	lw a5, 0(t0)
	sh2add t1, a4, s0
	lw t0, 0(t1)
	bgt a5, t0, label189
	mv a4, a3
.p2align 2
label189:
	sh2add t0, a4, s0
	addiw a3, a2, 4
	lw a5, 0(t0)
	sh2add t1, a3, s0
	lw t0, 0(t1)
	bgt a5, t0, label191
	mv a3, a4
.p2align 2
label191:
	sh2add t0, a3, s0
	addiw a4, a2, 5
	lw a5, 0(t0)
	sh2add t1, a4, s0
	lw t0, 0(t1)
	bgt a5, t0, label193
	mv a4, a3
.p2align 2
label193:
	sh2add t0, a4, s0
	addiw a3, a2, 6
	lw a5, 0(t0)
	sh2add t1, a3, s0
	lw t0, 0(t1)
	bgt a5, t0, label195
	mv a3, a4
.p2align 2
label195:
	sh2add t0, a3, s0
	addiw a5, a2, 7
	lw a4, 0(t0)
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bgt a4, t0, label197
	mv a5, a3
.p2align 2
label197:
	addiw a2, a2, 8
	li a3, 2
	bge a2, a3, label133
	mv a4, a5
	sh2add a3, a5, s0
	sh2add t1, a2, s0
	lw a5, 0(a3)
	mv a3, a2
	lw t0, 0(t1)
	bgt a5, t0, label183
	mv a3, a4
	sh2add t0, a4, s0
	addiw a4, a2, 1
	lw a5, 0(t0)
	sh2add t1, a4, s0
	lw t0, 0(t1)
	bgt a5, t0, label185
	mv a4, a3
	sh2add t0, a3, s0
	addiw a3, a2, 2
	lw a5, 0(t0)
	sh2add t1, a3, s0
	lw t0, 0(t1)
	bgt a5, t0, label187
	mv a3, a4
	sh2add t0, a4, s0
	addiw a4, a2, 3
	lw a5, 0(t0)
	sh2add t1, a4, s0
	lw t0, 0(t1)
	bgt a5, t0, label189
	mv a4, a3
	sh2add t0, a3, s0
	addiw a3, a2, 4
	lw a5, 0(t0)
	sh2add t1, a3, s0
	lw t0, 0(t1)
	bgt a5, t0, label191
	j label222
.p2align 2
label181:
	addiw a2, a2, 1
	li a3, 10
	blt a2, a3, label48
	j label47
.p2align 2
label203:
	mv a0, a1
	li a1, 9
	blt a0, a1, label4
	j label28
.p2align 2
label48:
	mv a3, a4
	sh2add a4, a4, s0
	sh2add t1, a2, s0
	lw a5, 0(a4)
	mv a4, a2
	lw t0, 0(t1)
	bgt a5, t0, label181
	mv a4, a3
	addiw a2, a2, 1
	li a3, 10
	blt a2, a3, label48
	j label212
.p2align 2
label133:
	mv a3, a5
	sh2add a4, a5, s0
	sh2add t1, a2, s0
	lw a5, 0(a4)
	mv a4, a2
	lw t0, 0(t1)
	bgt a5, t0, label181
	mv a4, a3
	addiw a2, a2, 1
	li a3, 10
	blt a2, a3, label48
	bne a0, a4, label9
	j label203
.p2align 2
label202:
	mv a3, a4
	sh2add t0, a4, s0
	addiw a4, a2, 1
	lw a5, 0(t0)
	sh2add t1, a4, s0
	lw t0, 0(t1)
	bgt a5, t0, label185
	mv a4, a3
	sh2add t0, a3, s0
	addiw a3, a2, 2
	lw a5, 0(t0)
	sh2add t1, a3, s0
	lw t0, 0(t1)
	bgt a5, t0, label187
	mv a3, a4
	sh2add t0, a4, s0
	addiw a4, a2, 3
	lw a5, 0(t0)
	sh2add t1, a4, s0
	lw t0, 0(t1)
	bgt a5, t0, label189
	mv a4, a3
	sh2add t0, a3, s0
	addiw a3, a2, 4
	lw a5, 0(t0)
	sh2add t1, a3, s0
	lw t0, 0(t1)
	bgt a5, t0, label191
	j label222
.p2align 2
label212:
	bne a0, a4, label9
	mv a0, a1
	li a1, 9
	blt a0, a1, label4
	j label28
