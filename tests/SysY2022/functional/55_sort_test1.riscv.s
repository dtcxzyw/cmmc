.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -72
	li a1, 4
	li a2, 3
	li a5, 2
	li t0, 5
	addi a0, sp, 32
	sd ra, 0(sp)
	slli a3, a2, 32
	sd s0, 8(sp)
	li a2, 9
	addi a4, a3, 4
	li s0, 10
	sd s1, 16(sp)
	slli a3, a5, 32
	sd s2, 24(sp)
	li a5, 1
	sd a4, 32(sp)
	addi a4, a3, 9
	slli a3, a5, 32
	sd a4, 40(sp)
	slli a4, t0, 32
	sd a3, 48(sp)
	li t0, 8
	addi a3, a4, 6
	slli a4, t0, 32
	sd a3, 56(sp)
	addi a5, a4, 7
	mv a3, zero
	sd a5, 64(sp)
	blt zero, a2, label4
label45:
	mv s1, a0
	mv s2, zero
	j label28
.p2align 2
label4:
	subw t0, s0, a3
	addi a5, t0, -5
	addiw a4, t0, -1
	ble a4, a1, label52
	mv t0, a0
	mv t1, zero
	lw t2, 0(a0)
	lw t3, 4(a0)
	bgt t2, t3, label18
	j label9
.p2align 2
label24:
	addi a5, a5, 4
	lw t1, 0(a5)
	lw t2, 4(a5)
	bgt t1, t2, label25
	addiw t0, t0, 1
	bgt a4, t0, label24
	j label195
.p2align 2
label25:
	sw t1, 4(a5)
	addiw t0, t0, 1
	sw t2, 0(a5)
	bgt a4, t0, label24
	addiw a3, a3, 1
	blt a3, a2, label4
	j label45
label198:
	addiw t0, t0, 1
	bgt a4, t0, label24
	j label190
.p2align 2
label11:
	sh2add t5, t2, a0
	sw t3, 4(t5)
	sw t4, 0(t5)
	addiw t2, t1, 3
	sh2add t5, t2, a0
	lw t3, 0(t5)
	lw t4, 4(t5)
	bgt t3, t4, label16
	j label13
.p2align 2
label15:
	addi t0, t0, 16
	lw t2, 0(t0)
	lw t3, 4(t0)
	bgt t2, t3, label18
	j label180
.p2align 2
label16:
	sh2add t5, t2, a0
	addiw t1, t1, 4
	sw t3, 4(t5)
	sw t4, 0(t5)
	bgt a5, t1, label15
	sh2add a5, t1, a0
	mv t0, t1
	lw t1, 0(a5)
	lw t2, 4(a5)
	bgt t1, t2, label25
	j label192
.p2align 2
label17:
	sh2add t6, t2, a0
	addiw t2, t1, 2
	sw t3, 4(t6)
	sh2add t5, t2, a0
	sw t4, 0(t6)
	lw t3, 0(t5)
	lw t4, 4(t5)
	bgt t3, t4, label11
	j label182
.p2align 2
label18:
	sw t2, 4(t0)
	addiw t2, t1, 1
	sw t3, 0(t0)
	sh2add t5, t2, a0
	lw t3, 0(t5)
	lw t4, 4(t5)
	bgt t3, t4, label17
	addiw t2, t1, 2
	sh2add t5, t2, a0
	lw t3, 0(t5)
	lw t4, 4(t5)
	bgt t3, t4, label11
	addiw t2, t1, 3
	sh2add t5, t2, a0
	lw t3, 0(t5)
	lw t4, 4(t5)
	bgt t3, t4, label16
	addiw t1, t1, 4
	bgt a5, t1, label15
	sh2add a5, t1, a0
	mv t0, t1
	lw t1, 0(a5)
	lw t2, 4(a5)
	bgt t1, t2, label25
	j label198
.p2align 2
label13:
	addiw t1, t1, 4
	bgt a5, t1, label15
	sh2add a5, t1, a0
	mv t0, t1
	lw t1, 0(a5)
	lw t2, 4(a5)
	bgt t1, t2, label25
	addiw t0, t0, 1
	bgt a4, t0, label24
label190:
	addiw a3, a3, 1
	blt a3, a2, label4
	j label45
label189:
	sh2add a5, t1, a0
	mv t0, t1
	lw t1, 0(a5)
	lw t2, 4(a5)
	bgt t1, t2, label25
	j label198
.p2align 2
label180:
	addiw t2, t1, 1
	sh2add t5, t2, a0
	lw t3, 0(t5)
	lw t4, 4(t5)
	bgt t3, t4, label17
	addiw t2, t1, 2
	sh2add t5, t2, a0
	lw t3, 0(t5)
	lw t4, 4(t5)
	bgt t3, t4, label11
	addiw t2, t1, 3
	sh2add t5, t2, a0
	lw t3, 0(t5)
	lw t4, 4(t5)
	bgt t3, t4, label16
	addiw t1, t1, 4
	bgt a5, t1, label15
	j label189
.p2align 2
label9:
	addiw t2, t1, 1
	sh2add t5, t2, a0
	lw t3, 0(t5)
	lw t4, 4(t5)
	bgt t3, t4, label17
	addiw t2, t1, 2
	sh2add t5, t2, a0
	lw t3, 0(t5)
	lw t4, 4(t5)
	bgt t3, t4, label11
	addiw t2, t1, 3
	sh2add t5, t2, a0
	lw t3, 0(t5)
	lw t4, 4(t5)
	bgt t3, t4, label16
	addiw t1, t1, 4
	bgt a5, t1, label15
	j label189
.p2align 2
label182:
	addiw t2, t1, 3
	sh2add t5, t2, a0
	lw t3, 0(t5)
	lw t4, 4(t5)
	bgt t3, t4, label16
	addiw t1, t1, 4
	bgt a5, t1, label15
	sh2add a5, t1, a0
	mv t0, t1
	lw t1, 0(a5)
	lw t2, 4(a5)
	bgt t1, t2, label25
	addiw t0, t0, 1
	bgt a4, t0, label24
	j label190
.p2align 2
label52:
	mv a5, a0
	mv t0, zero
	lw t1, 0(a0)
	lw t2, 4(a0)
	bgt t1, t2, label25
	li t0, 1
	bgt a4, t0, label24
	addiw a3, a3, 1
	blt a3, a2, label4
	j label45
.p2align 2
label28:
	lw a0, 0(s1)
	jal putint
	mv a0, s0
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label31
	addi s1, s1, 4
	j label28
.p2align 2
label192:
	addiw t0, t0, 1
	bgt a4, t0, label24
	addiw a3, a3, 1
	blt a3, a2, label4
	j label45
label31:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 72
	ret
.p2align 2
label195:
	addiw a3, a3, 1
	blt a3, a2, label4
	j label45
